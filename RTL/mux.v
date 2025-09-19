module mux ( sel ,ones,tens,hundred,digtial);
  input wire [1:0] sel;
  input wire [3:0] ones,tens,hundred;
  output reg [3:0] digtial;
  
  
  always @(*) begin
    case (sel)
      2'd0 : digtial =ones;
      2'd1 : digtial = tens ;
      2'd2 : digtial = hundred;
      2'd3 : digtial = 4'd0;
        default : digtial = 4'd0;
    endcase
  end
endmodule