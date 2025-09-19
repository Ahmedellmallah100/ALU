module An_sel ( clk ,sel ,an );
  input clk ;
  output reg [1:0] sel=2'b00;
  output reg [3:0] an;
  
  
  always @(posedge clk) begin
    sel <= sel+1;
  end

  always @(*) begin
    case (sel)
      2'd0 : an =4'b1110;
      2'd1 : an =4'b1101;
      2'd2 : an =4'b1011;
      2'd3 : an =4'b0111;
      
      default : an=4'b1111;
      endcase 
    
  end  
  
        endmodule