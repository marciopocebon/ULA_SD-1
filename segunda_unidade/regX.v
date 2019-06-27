module regX(barramento, Tx, a, clock)

    input wire [3:0] barramento;
    input wire [1:0] Tx;
    input wire clock;

    output reg [3:0] a;

     parameter
        CLEAR = 3'd0;
        LOAD = 3'd1;
        HOLD = 3'd2;
    
    always @(posedge clock)
    begin
        case(Tx)
            CLEAR: a <= 3'd0;
            LOAD: a <= barramento;
            HOLD: a <= a;
        endcase
    end

endmodule