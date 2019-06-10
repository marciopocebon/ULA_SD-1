module controle(Tx,Ty,Tz, Tula, clock)
    input wire clock;

    output reg [3:0] Tx;
    output reg [3:0] Ty;
    output reg [3:0] Tz;
    output reg [3:0] Tula;

    parameter
        CLEAR = 3'd0;
        LOAD = 3'd1;
        HOLD = 3'd2;
        DIV = 3'd3;
    
    
    initial begin
        Q <= 4'd0;
    end

    always @ (posedge clock) begin
        case(Q)
            4'd0: begin
                Q <= 4'd1;
                Tx <= LOAD;
                Ty <= CLEAR;
                Tz <= CLEAR;
            end

             4'd1: begin
                Q <= 4'd2;
                Tx <= LOAD;
                Ty <= LOAD;
                Tz <= CLEAR;
            end

             4'd2: begin
                Q <= 4'd3;
                Tx <= CLEAR;
                Ty <= LOAD;
                Tz <= CLEAR;
            end

            4'd3: begin
                Q <= 4'd4;
                Tx <= CLEAR;
                Ty <= DIV;
                Tz <= CLEAR;
            end

            4'd4: begin
                Q <= 4'd5;
                Tx <= CLEAR;
                Ty <= CLEAR;
                Tz <= LOAD;
            end

            4'd5: begin
                Q <= 4'd1;
                Tx <= LOAD;
                Ty <= LOAD;
                Tz <= CLEAR;
            end
        endcase

        Tula <= 4'd0;
    end

endmodule