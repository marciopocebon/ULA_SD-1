module regZ(saida,b,Tz,clock);
    input wire clock;
    input wire [3:0] b, Tz;
    output reg [3:0] saida;

    parameter CLEAR = 4'd0;
    parameter LOAD = 4'd1;
    parameter HOLD = 4'd2;


    always @(posedge clock) 
    begin
        case(Tz)
            CLEAR: saida <= 4'd0;
            LOAD: saida <= b;
            HOLD: b = b;
        endcase
    end
endmodule
