module clk_divider (clk ,rstn ,clk_hz);
input clk , rstn;
output reg clk_hz;
reg [17:0] count;

always @(posedge clk or posedge rstn) begin
    if (rstn) begin
        count <= 17'd0;
    end
    else if (count < 250000) begin
        count <= count+1;
    end
    else
        clk_hz <= ~clk_hz;
        count <= 17'd0;
end
endmodule //clk_divider
