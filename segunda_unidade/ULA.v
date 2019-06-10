module ULA(a,b,out,S);
    input wire [3:0] a;
    input wire [3:0] b;
    input wire [2:0] S;
    
    output reg [3:0] out;

    parameter
    ADD = 3'd0;

    always @(S or a or b)
    begin
        case(S)
           ADD : out = a+b;
        endcase
    end
endmodule