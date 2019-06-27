module memoria(barramento, clock)
    input wire clock;

    output reg [3:0] barramento;

    always(posedge clock) begin
        barramento <= $random % 4;
    end
endmodule