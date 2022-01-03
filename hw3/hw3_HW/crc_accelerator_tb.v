`timescale 1 ns/10 ps
module crc_accelerator_tb;

  reg clk;
  reg [31:0]writedata;
  reg reset;
  reg write;
  reg read;
  wire [31:0]readdata;

  localparam period = 20;
  crc_accelerator CRC (.clk(clk),.writedata(writedata),.reset(reset),.write(write),.read(read),.readdata(readdata));

  always 
  begin
    clk = 1'b1; 
    #10; // high for 20 * timescale = 20 ns

    clk = 1'b0;
    #10; // low for 20 * timescale = 20 ns
  end

  initial
  begin
	#20
		reset=1;
	#20
		reset=0;
		read=0;
		write=1;
		writedata=8'h01;
	#20
		write=1;
		writedata=8'h02;
	#20
		write=1;
		writedata=8'h03;
	#20
		write=1;
		writedata=8'h04;
	#20
		write=1;
		writedata=8'h05;
	#20
		write=1;
		writedata=8'h06;
	#20
		write=1;
		writedata=8'h07;
	#20
		write=1;
		writedata=8'h08;
	#20
		write=0;
	#20
	#20
		read=1;
	#20
		read =0;
	#20
	#20
		write=1;
		writedata=8'h01;
	#20
		write=1;
		writedata=8'h02;
	#20
		write=1;
		writedata=8'h03;
	#20
		write=1;
		writedata=8'h04;
	#20
		write=1;
		writedata=8'h05;
	#20
		write=1;
		writedata=8'h06;
	#20
		write=1;
		writedata=8'h07;
	#20
		write=1;
		writedata=8'h08;
	#20
		write=0;
		read=1;
	#20
		read =0;

  end

endmodule
