module regY(saidaULA,acumulador,clock,controle)
    input wire [3:0] saidaULA;
    input wire [1:0] controle;
    input wire clock;

    output reg [3:0] acumulador;

    parameter
        CLEAR = 3'd0;
        LOAD = 3'd1;
        HOLD = 3'd2;
        DIV = 3'd3;

    always @(posedge clock)
    begin
        case(controle)
            CLEAR: acumulador <= 3'd0;
            LOAD: acumulador <= saidaULA;
            HOLD: acumulador <= acumulador;
            DIV: acumulador <= saidaULA << 1;
        endcase
    end
endmodule