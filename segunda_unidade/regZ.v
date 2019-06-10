module regZ(saida,acumulador,tz,clock);
    input wire clock;
    input wire [3:0] acumulador, tz;
    output red [3:0] saida;

    parameter CLEAR = 4'd0;
    parameter LOAD = 4'd1;
    parameter HOLD = 4'd2;


    always @(posedge clock) 
    begin
        case(tz)
            CLEAR: saida <= 4'd0;
            LOAD: saida <= acumulador;
            HOLD: acumulador = acumulador;
        endcase
    end
endmodule
