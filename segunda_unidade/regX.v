module regX(in, out, fun);

    input wire [1:0] in;
    input wire [3:0] fun;
    output reg [1:0] out;

    parameter ZERO = 3'b0;
    parameter HOLD = 3'b0;
    parameter RESET = 3'b1;
    parameter PASS = 3'b2;

    always @(fun or in)
    begin
        case(fun)
            HOLD : out = out;  
            RESET : out = ZERO;
            PASS : out = in;
        endcase
    end
endmodule