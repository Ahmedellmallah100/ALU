module D_flipflop (Q ,D, clk ,rstn);

input D, clk, rstn;
output reg Q;

always @(posedge clk or posedge rstn) begin
    if (rstn) begin
        Q <= 0;
    end
    else
        Q <= D;
end

endmodule //D_flipflop
