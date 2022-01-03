`timescale 1 ns/10 ps
module crc_CI_multicycle_tb;

  reg clk;
  reg clk_en;
  reg [31:0]dataa;
  reg [31:0]datab;
  reg reset;
  reg start;
  wire done;
  reg [2:0] n;
  wire [31:0] result;

  localparam period = 20;
  crc_CI_multicycle CRC (.clk(clk),.dataa(dataa),.datab(datab),.reset(reset),.start(start),.done(done),.result(result),.clk_en(clk_en),.n(n));

  always 
  begin
    clk = 1'b1; 
    #10; // high for 10 * timescale = 10 ns

    clk = 1'b0;
    #10; // low for 10 * timescale = 10 ns
  end

  initial
  begin
	#30
		reset=1;
	#40
		reset=0;
                n=3'h1;
                dataa=32'h4e08bfb4;
                datab=32'h0;
                clk_en = 1;
		start=1;
	#40
                start=0;
                n=3'h2;
        #40
                n=3'h0;
                clk_en=0;
  end

endmodule

