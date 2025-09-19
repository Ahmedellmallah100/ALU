module top_module_tb ();
  reg       pb1, pb2, pb3;
  reg       clk_50M, rst;
  reg [7:0] sw;
  wire [7:0] led;
  wire [7:0] out_seg;
  wire [3:0] an;

  //================ Instantiate DUT =================
  top_module dut (.*);

  //================ Clock Generation ================
  initial begin
    clk = 0;
    forever  #10 clk = ~clk;   
  end



  //================ Stimulus Process ================
  initial begin
    // Initialize inputs
    rst = 1;
    sw  = 0;
    pb1 = 0; 
    pb2 = 0; 
    pb3 = 0;

    // Hold reset for some cycles
    repeat (5) @(negedge clk);
    rst = 0;


    // Load A Test
     pb1 = 1;
    sw  = 8'd255;
    $display("%t Load A = %d", $time, sw);
    @(negedge clk);
    pb1 = 0;

    // Load B Test 
        pb2 = 1;
    sw  = 8'd15;
    $display("%t Load B = %d", $time, sw);
    @(negedge clk);
    pb2 = 0;

    // Add Operation 
        pb3 = 1;
    sw  = 8'b0000_0001;
    $display("%t Perform ADD", $time);
    @(negedge clk);
    pb3 = 0;

    // Sub Operation 7
        pb3 = 1;
    sw  = 8'b0000_0010;
    $display("%t Perform SUB", $time);
    @(negedge clk);
    pb3 = 0;

    // Negative of A
        pb3 = 1;
    sw  = 8'b0000_0011;
    $display("%t Perform NEG(A)", $time);
    @(negedge clk);
    pb3 = 0;

    //------ AND --------
        pb3 = 1;
    sw  = 8'b0000_0100;
    $display("%t Perform AND", $time);
    @(negedge clk);
    pb3 = 0;

    //------ OR --------
        pb3 = 1;
    sw  = 8'b0000_0101;
    $display("%t Perform OR", $time);
    @(negedge clk);
    pb3 = 0;

    //------ XOR --------
        pb3 = 1;
    sw  = 8'b0000_0110;
    $display("%t Perform XOR", $time);
    @(negedge clk);
    pb3 = 0;

    //------ End Simulation -------
    $display("%t Simulation Finished", $time);
    #100;
    $stop;
  end

endmodule // top_module_tb
what the error answer by arabic