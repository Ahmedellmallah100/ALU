module Bcd_Conventer (binary, bcd);
  input  [7:0]  binary;
  output [11:0] bcd;
  
  reg [3:0] ones, tens, hundred;
  reg [7:0] temp;

  always @(*) begin
    hundred = binary / 100;
    temp    = binary % 100;
    tens    = temp / 10;
    ones    = temp % 10;
  end

  assign bcd = {hundred, tens, ones};
  
endmodule
