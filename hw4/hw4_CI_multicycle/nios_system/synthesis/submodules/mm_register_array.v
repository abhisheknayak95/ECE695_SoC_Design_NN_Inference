// This is a simple component that contains 8 32-bit registers
// 8 registers are accessible through 3-bit internal address like an array

module mm_register_array(
				clk,
				reset,
				address,
				writedata,
				write,
				read,
				readdata);

///////// AVALON-MM Interface signals

input clk;				// clock coming in from the Avalon bus
input reset;			// reset from the Avalon bus
input [2:0] address;  	// 3-bit address coming from the Avalon bus (need only 3 bits to address 8 memory-mapped registers)
input [31:0] writedata;	// 32-bit write data line
input write;			// write request from the Avalon bus
input read;				// read request from the Avalon bus
output reg [31:0] readdata;	// 32-bit data line read by the Avalon bus


// 8 32-bit registers accessible with an internal address
reg [31:0] register_bank [7:0];

integer loop_index; // variable for all the loops


/////////////////////////////////////////////////////////////////////////////////////////////////
/////////////////////////////////////// WRITE Logic /////////////////////////////////////////////
/////////////////////////////////////////////////////////////////////////////////////////////////

always @ (posedge clk)
begin
	if (reset == 1'b1)
	begin 
		// note that the loop doesn't execute in a sequential manner as in C
		// in this case, all the registers get updated in parallel
		for (loop_index = 0; loop_index < 8; loop_index = loop_index + 1)
		begin 
			register_bank[loop_index] <= 32'd0;  
		end
	end
	else
	begin 
		if(write == 1'b1)
		begin
			register_bank[address] <= writedata;
		end
	end
end

/////////////////////////////////////////////////////////////////////////////////////////////////
/////////////////////////////////////// READ Logic ///////////////////////////////////////
/////////////////////////////////////////////////////////////////////////////////////////////////

always @ (posedge clk) 
begin
	if (reset == 1'b1)
	begin
		readdata <= 32'd0;
	end
	else if (read == 1'b1)
	begin
		readdata <= register_bank[address];
	end
	else
	begin
		readdata <= readdata;	
	end
end

endmodule
