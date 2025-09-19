module Debounce (pb, pb_db, clk_hz, rstn);
  input  pb, clk_hz, rstn;
  output pb_db;

  wire slow_clk;
  wire q1, q2;

  clk_divider c1 (.clk(clk_hz), .rstn(rstn), .clk_hz(slow_clk));
  D_flipflop f1 (.Q(pb), .D(q1), .clk(slow_clk), .rstn(rstn));
  D_flipflop f2 (.Q(q1), .D(q2), .clk(slow_clk), .rstn(rstn));

  assign pb_db = q1 & ~q2;

endmodule // Debounce
