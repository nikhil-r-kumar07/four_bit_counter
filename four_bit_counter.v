module four_bit_counter (
    input clk,
    input areset,
    input direction,
    input load_enable,
    input [3:0] load,
    output [3:0] curr,
    output flowtype
);
    reg [3:0] count;
    reg flowtype_reg;

    always @(posedge clk or posedge areset) begin
        if (areset)
            count <= 0;
        else if (load_enable)
            count <= load;
        else begin
            count <= direction ? count + 1 : count - 1;
            flowtype_reg <= (count == 4'b1111 && direction) || (count == 4'b0000 && !direction);
        end
    end

    assign curr = count;
    assign flowtype = flowtype_reg;

endmodule