module regY(saidaULA,b,clock,Ty)
    input wire [3:0] saidaULA;
    input wire [1:0] Ty;
    input wire clock;

    output reg [3:0] b;

    parameter
        CLEAR = 3'd0;
        LOAD = 3'd1;
        HOLD = 3'd2;
        DIV = 3'd3;

    always @(posedge clock)
    begin
        case(Ty)
            CLEAR: b <= 3'd0;
            LOAD: b <= saidaULA;
            HOLD: b <= b;
            DIV: b <= saidaULA << 1;
        endcase
    end
endmodule