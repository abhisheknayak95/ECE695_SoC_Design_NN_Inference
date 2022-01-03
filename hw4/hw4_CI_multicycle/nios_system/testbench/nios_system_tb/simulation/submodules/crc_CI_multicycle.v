module crc_CI_multicycle(clk, clk_en, reset, start, done, dataa, datab, n, result);

input clk;
input clk_en;
input reset;

input start;
output reg done;

input [31:0] dataa;
input [31:0] datab;

// n can take the following values
// 0 - (Wait : 1 cycle) Load 32-bit CRC value from dataa
// 1 - (Wait : 1 cycle) Compute CRC on Lower 8 bits of dataa
// 2 - (Wait : 2 cycle) Compute CRC on Lower 16 bits of dataa
// 3 - (Wait : 3 cycle) Compute CRC on Lower 24 bits of dataa
// 4 - (Wait : 4 cycle) Compute CRC on all 32 bits of dataa
// 5 - (Wait : 8 cycle) Compute CRC on all 32 bits of dataa, followed by all 32 bits of datab
// 6 - (Wait : 1 cycle) Read out 32-bit CRC value through result
// 7 - Reserved
input [2:0] n;

output [31:0] result;


//Internal Signalling
reg [31:0] crc;

wire load;
reg [4:0] enable;

//for crc_ci
wire [31:0] crc_mem[0:255]; //CRC TABLE
reg [31:0] crc_o_next;

reg [7:0] bytedata;
reg evaluate;

reg [2:0] counter;
reg [2:0] counter_next;

wire [63:0] i_data;
assign i_data = {datab,dataa};

assign crc_mem[0] = 32'h0 ;
assign crc_mem[1] = 32'h4c11db7 ;
assign crc_mem[2] = 32'h9823b6e ;
assign crc_mem[3] = 32'hd4326d9 ;
assign crc_mem[4] = 32'h130476dc ;
assign crc_mem[5] = 32'h17c56b6b ;
assign crc_mem[6] = 32'h1a864db2 ;
assign crc_mem[7] = 32'h1e475005 ;
assign crc_mem[8] = 32'h2608edb8 ;
assign crc_mem[9] = 32'h22c9f00f ;
assign crc_mem[10] = 32'h2f8ad6d6 ;
assign crc_mem[11] = 32'h2b4bcb61 ;
assign crc_mem[12] = 32'h350c9b64 ;
assign crc_mem[13] = 32'h31cd86d3 ;
assign crc_mem[14] = 32'h3c8ea00a ;
assign crc_mem[15] = 32'h384fbdbd ;
assign crc_mem[16] = 32'h4c11db70 ;
assign crc_mem[17] = 32'h48d0c6c7 ;
assign crc_mem[18] = 32'h4593e01e ;
assign crc_mem[19] = 32'h4152fda9 ;
assign crc_mem[20] = 32'h5f15adac ;
assign crc_mem[21] = 32'h5bd4b01b ;
assign crc_mem[22] = 32'h569796c2 ;
assign crc_mem[23] = 32'h52568b75 ;
assign crc_mem[24] = 32'h6a1936c8 ;
assign crc_mem[25] = 32'h6ed82b7f ;
assign crc_mem[26] = 32'h639b0da6 ;
assign crc_mem[27] = 32'h675a1011 ;
assign crc_mem[28] = 32'h791d4014 ;
assign crc_mem[29] = 32'h7ddc5da3 ;
assign crc_mem[30] = 32'h709f7b7a ;
assign crc_mem[31] = 32'h745e66cd ;
assign crc_mem[32] = 32'h9823b6e0 ;
assign crc_mem[33] = 32'h9ce2ab57 ;
assign crc_mem[34] = 32'h91a18d8e ;
assign crc_mem[35] = 32'h95609039 ;
assign crc_mem[36] = 32'h8b27c03c ;
assign crc_mem[37] = 32'h8fe6dd8b ;
assign crc_mem[38] = 32'h82a5fb52 ;
assign crc_mem[39] = 32'h8664e6e5 ;
assign crc_mem[40] = 32'hbe2b5b58 ;
assign crc_mem[41] = 32'hbaea46ef ;
assign crc_mem[42] = 32'hb7a96036 ;
assign crc_mem[43] = 32'hb3687d81 ;
assign crc_mem[44] = 32'had2f2d84 ;
assign crc_mem[45] = 32'ha9ee3033 ;
assign crc_mem[46] = 32'ha4ad16ea ;
assign crc_mem[47] = 32'ha06c0b5d ;
assign crc_mem[48] = 32'hd4326d90 ;
assign crc_mem[49] = 32'hd0f37027 ;
assign crc_mem[50] = 32'hddb056fe ;
assign crc_mem[51] = 32'hd9714b49 ;
assign crc_mem[52] = 32'hc7361b4c ;
assign crc_mem[53] = 32'hc3f706fb ;
assign crc_mem[54] = 32'hceb42022 ;
assign crc_mem[55] = 32'hca753d95 ;
assign crc_mem[56] = 32'hf23a8028 ;
assign crc_mem[57] = 32'hf6fb9d9f ;
assign crc_mem[58] = 32'hfbb8bb46 ;
assign crc_mem[59] = 32'hff79a6f1 ;
assign crc_mem[60] = 32'he13ef6f4 ;
assign crc_mem[61] = 32'he5ffeb43 ;
assign crc_mem[62] = 32'he8bccd9a ;
assign crc_mem[63] = 32'hec7dd02d ;
assign crc_mem[64] = 32'h34867077 ;
assign crc_mem[65] = 32'h30476dc0 ;
assign crc_mem[66] = 32'h3d044b19 ;
assign crc_mem[67] = 32'h39c556ae ;
assign crc_mem[68] = 32'h278206ab ;
assign crc_mem[69] = 32'h23431b1c ;
assign crc_mem[70] = 32'h2e003dc5 ;
assign crc_mem[71] = 32'h2ac12072 ;
assign crc_mem[72] = 32'h128e9dcf ;
assign crc_mem[73] = 32'h164f8078 ;
assign crc_mem[74] = 32'h1b0ca6a1 ;
assign crc_mem[75] = 32'h1fcdbb16 ;
assign crc_mem[76] = 32'h18aeb13 ;
assign crc_mem[77] = 32'h54bf6a4 ;
assign crc_mem[78] = 32'h808d07d ;
assign crc_mem[79] = 32'hcc9cdca ;
assign crc_mem[80] = 32'h7897ab07 ;
assign crc_mem[81] = 32'h7c56b6b0 ;
assign crc_mem[82] = 32'h71159069 ;
assign crc_mem[83] = 32'h75d48dde ;
assign crc_mem[84] = 32'h6b93dddb ;
assign crc_mem[85] = 32'h6f52c06c ;
assign crc_mem[86] = 32'h6211e6b5 ;
assign crc_mem[87] = 32'h66d0fb02 ;
assign crc_mem[88] = 32'h5e9f46bf ;
assign crc_mem[89] = 32'h5a5e5b08 ;
assign crc_mem[90] = 32'h571d7dd1 ;
assign crc_mem[91] = 32'h53dc6066 ;
assign crc_mem[92] = 32'h4d9b3063 ;
assign crc_mem[93] = 32'h495a2dd4 ;
assign crc_mem[94] = 32'h44190b0d ;
assign crc_mem[95] = 32'h40d816ba ;
assign crc_mem[96] = 32'haca5c697 ;
assign crc_mem[97] = 32'ha864db20 ;
assign crc_mem[98] = 32'ha527fdf9 ;
assign crc_mem[99] = 32'ha1e6e04e ;
assign crc_mem[100] = 32'hbfa1b04b ;
assign crc_mem[101] = 32'hbb60adfc ;
assign crc_mem[102] = 32'hb6238b25 ;
assign crc_mem[103] = 32'hb2e29692 ;
assign crc_mem[104] = 32'h8aad2b2f ;
assign crc_mem[105] = 32'h8e6c3698 ;
assign crc_mem[106] = 32'h832f1041 ;
assign crc_mem[107] = 32'h87ee0df6 ;
assign crc_mem[108] = 32'h99a95df3 ;
assign crc_mem[109] = 32'h9d684044 ;
assign crc_mem[110] = 32'h902b669d ;
assign crc_mem[111] = 32'h94ea7b2a ;
assign crc_mem[112] = 32'he0b41de7 ;
assign crc_mem[113] = 32'he4750050 ;
assign crc_mem[114] = 32'he9362689 ;
assign crc_mem[115] = 32'hedf73b3e ;
assign crc_mem[116] = 32'hf3b06b3b ;
assign crc_mem[117] = 32'hf771768c ;
assign crc_mem[118] = 32'hfa325055 ;
assign crc_mem[119] = 32'hfef34de2 ;
assign crc_mem[120] = 32'hc6bcf05f ;
assign crc_mem[121] = 32'hc27dede8 ;
assign crc_mem[122] = 32'hcf3ecb31 ;
assign crc_mem[123] = 32'hcbffd686 ;
assign crc_mem[124] = 32'hd5b88683 ;
assign crc_mem[125] = 32'hd1799b34 ;
assign crc_mem[126] = 32'hdc3abded ;
assign crc_mem[127] = 32'hd8fba05a ;
assign crc_mem[128] = 32'h690ce0ee ;
assign crc_mem[129] = 32'h6dcdfd59 ;
assign crc_mem[130] = 32'h608edb80 ;
assign crc_mem[131] = 32'h644fc637 ;
assign crc_mem[132] = 32'h7a089632 ;
assign crc_mem[133] = 32'h7ec98b85 ;
assign crc_mem[134] = 32'h738aad5c ;
assign crc_mem[135] = 32'h774bb0eb ;
assign crc_mem[136] = 32'h4f040d56 ;
assign crc_mem[137] = 32'h4bc510e1 ;
assign crc_mem[138] = 32'h46863638 ;
assign crc_mem[139] = 32'h42472b8f ;
assign crc_mem[140] = 32'h5c007b8a ;
assign crc_mem[141] = 32'h58c1663d ;
assign crc_mem[142] = 32'h558240e4 ;
assign crc_mem[143] = 32'h51435d53 ;
assign crc_mem[144] = 32'h251d3b9e ;
assign crc_mem[145] = 32'h21dc2629 ;
assign crc_mem[146] = 32'h2c9f00f0 ;
assign crc_mem[147] = 32'h285e1d47 ;
assign crc_mem[148] = 32'h36194d42 ;
assign crc_mem[149] = 32'h32d850f5 ;
assign crc_mem[150] = 32'h3f9b762c ;
assign crc_mem[151] = 32'h3b5a6b9b ;
assign crc_mem[152] = 32'h315d626 ;
assign crc_mem[153] = 32'h7d4cb91 ;
assign crc_mem[154] = 32'ha97ed48 ;
assign crc_mem[155] = 32'he56f0ff ;
assign crc_mem[156] = 32'h1011a0fa ;
assign crc_mem[157] = 32'h14d0bd4d ;
assign crc_mem[158] = 32'h19939b94 ;
assign crc_mem[159] = 32'h1d528623 ;
assign crc_mem[160] = 32'hf12f560e ;
assign crc_mem[161] = 32'hf5ee4bb9 ;
assign crc_mem[162] = 32'hf8ad6d60 ;
assign crc_mem[163] = 32'hfc6c70d7 ;
assign crc_mem[164] = 32'he22b20d2 ;
assign crc_mem[165] = 32'he6ea3d65 ;
assign crc_mem[166] = 32'heba91bbc ;
assign crc_mem[167] = 32'hef68060b ;
assign crc_mem[168] = 32'hd727bbb6 ;
assign crc_mem[169] = 32'hd3e6a601 ;
assign crc_mem[170] = 32'hdea580d8 ;
assign crc_mem[171] = 32'hda649d6f ;
assign crc_mem[172] = 32'hc423cd6a ;
assign crc_mem[173] = 32'hc0e2d0dd ;
assign crc_mem[174] = 32'hcda1f604 ;
assign crc_mem[175] = 32'hc960ebb3 ;
assign crc_mem[176] = 32'hbd3e8d7e ;
assign crc_mem[177] = 32'hb9ff90c9 ;
assign crc_mem[178] = 32'hb4bcb610 ;
assign crc_mem[179] = 32'hb07daba7 ;
assign crc_mem[180] = 32'hae3afba2 ;
assign crc_mem[181] = 32'haafbe615 ;
assign crc_mem[182] = 32'ha7b8c0cc ;
assign crc_mem[183] = 32'ha379dd7b ;
assign crc_mem[184] = 32'h9b3660c6 ;
assign crc_mem[185] = 32'h9ff77d71 ;
assign crc_mem[186] = 32'h92b45ba8 ;
assign crc_mem[187] = 32'h9675461f ;
assign crc_mem[188] = 32'h8832161a ;
assign crc_mem[189] = 32'h8cf30bad ;
assign crc_mem[190] = 32'h81b02d74 ;
assign crc_mem[191] = 32'h857130c3 ;
assign crc_mem[192] = 32'h5d8a9099 ;
assign crc_mem[193] = 32'h594b8d2e ;
assign crc_mem[194] = 32'h5408abf7 ;
assign crc_mem[195] = 32'h50c9b640 ;
assign crc_mem[196] = 32'h4e8ee645 ;
assign crc_mem[197] = 32'h4a4ffbf2 ;
assign crc_mem[198] = 32'h470cdd2b ;
assign crc_mem[199] = 32'h43cdc09c ;
assign crc_mem[200] = 32'h7b827d21 ;
assign crc_mem[201] = 32'h7f436096 ;
assign crc_mem[202] = 32'h7200464f ;
assign crc_mem[203] = 32'h76c15bf8 ;
assign crc_mem[204] = 32'h68860bfd ;
assign crc_mem[205] = 32'h6c47164a ;
assign crc_mem[206] = 32'h61043093 ;
assign crc_mem[207] = 32'h65c52d24 ;
assign crc_mem[208] = 32'h119b4be9 ;
assign crc_mem[209] = 32'h155a565e ;
assign crc_mem[210] = 32'h18197087 ;
assign crc_mem[211] = 32'h1cd86d30 ;
assign crc_mem[212] = 32'h29f3d35 ;
assign crc_mem[213] = 32'h65e2082 ;
assign crc_mem[214] = 32'hb1d065b ;
assign crc_mem[215] = 32'hfdc1bec ;
assign crc_mem[216] = 32'h3793a651 ;
assign crc_mem[217] = 32'h3352bbe6 ;
assign crc_mem[218] = 32'h3e119d3f ;
assign crc_mem[219] = 32'h3ad08088 ;
assign crc_mem[220] = 32'h2497d08d ;
assign crc_mem[221] = 32'h2056cd3a ;
assign crc_mem[222] = 32'h2d15ebe3 ;
assign crc_mem[223] = 32'h29d4f654 ;
assign crc_mem[224] = 32'hc5a92679 ;
assign crc_mem[225] = 32'hc1683bce ;
assign crc_mem[226] = 32'hcc2b1d17 ;
assign crc_mem[227] = 32'hc8ea00a0 ;
assign crc_mem[228] = 32'hd6ad50a5 ;
assign crc_mem[229] = 32'hd26c4d12 ;
assign crc_mem[230] = 32'hdf2f6bcb ;
assign crc_mem[231] = 32'hdbee767c ;
assign crc_mem[232] = 32'he3a1cbc1 ;
assign crc_mem[233] = 32'he760d676 ;
assign crc_mem[234] = 32'hea23f0af ;
assign crc_mem[235] = 32'heee2ed18 ;
assign crc_mem[236] = 32'hf0a5bd1d ;
assign crc_mem[237] = 32'hf464a0aa ;
assign crc_mem[238] = 32'hf9278673 ;
assign crc_mem[239] = 32'hfde69bc4 ;
assign crc_mem[240] = 32'h89b8fd09 ;
assign crc_mem[241] = 32'h8d79e0be ;
assign crc_mem[242] = 32'h803ac667 ;
assign crc_mem[243] = 32'h84fbdbd0 ;
assign crc_mem[244] = 32'h9abc8bd5 ;
assign crc_mem[245] = 32'h9e7d9662 ;
assign crc_mem[246] = 32'h933eb0bb ;
assign crc_mem[247] = 32'h97ffad0c ;
assign crc_mem[248] = 32'hafb010b1 ;
assign crc_mem[249] = 32'hab710d06 ;
assign crc_mem[250] = 32'ha6322bdf ;
assign crc_mem[251] = 32'ha2f33668 ;
assign crc_mem[252] = 32'hbcb4666d ;
assign crc_mem[253] = 32'hb8757bda ;
assign crc_mem[254] = 32'hb5365d03 ;
assign crc_mem[255] = 32'hb1f740b4 ;

//initial begin
//	$readmemh("crc_table.hex", crc_mem);
//end

assign load = clk_en & start & (n == 3'h0);

always @(clk_en or n) begin
	enable = 5'b00000;

	if(clk_en) begin
		if(n == 3'h1)      enable = 5'b00001;
		else if(n == 3'h2) enable = 5'b00011;
		else if(n == 3'h3) enable = 5'b00111;
		else if(n == 3'h4) enable = 5'b01111;
		else if(n == 3'h5) enable = 5'b11111;
		else               enable = 5'b00000; 
	end
end

always @(posedge clk) begin
	if(reset) begin
		crc <= 32'h4E08BFB4;
	end
	else begin
		crc <= crc_o_next;
	end
end

always @(crc or load or evaluate or i_data or bytedata) begin
	crc_o_next = crc;

	if(load) begin
		crc_o_next = i_data;
	end
	else if(evaluate) begin
		crc_o_next = ( { crc[23:0], 8'h0 } ^ crc_mem[ crc[31:24] ^ bytedata ] );
	end
end


always @(posedge clk) begin
	if(reset) begin
		counter <= 3'b000;
	end
	else begin
		counter <= counter_next;
	end
end


always @(counter or enable or i_data) begin
	counter_next = 3'b000;
	bytedata = 8'h0;
	evaluate  = 1'b0;
	done = 1'b1;

	case(counter)
		3'b000 : begin
						if(enable[0]) begin
						   bytedata = i_data[7:0];
						   evaluate = 1'b1;
						   if(enable[1]) begin
						  	 counter_next = 3'b001;
						  	 done = 1'b0;
						   end
						   else begin
						  	 done = 1'b1;
						   end
				   	end
				  end
		3'b001 : begin
				  		if(enable[1]) begin
							 bytedata = i_data[15:8];
							 evaluate = 1'b1;
							 if(enable[2]) begin
								 counter_next = 3'b010;
								 done = 1'b0;
							 end
							 else begin
								 done = 1'b1;
							 end
				   	end
				  end
		3'b010 : begin
				  		if(enable[2]) begin
							 bytedata = i_data[23:16];
							 evaluate = 1'b1;
							 if(enable[3]) begin
								 counter_next = 3'b011;
								 done = 1'b0;
							 end
							 else begin
								 done = 1'b1;
							 end
				   	end
				  end
		3'b011 : begin
				  		if(enable[3]) begin
							 bytedata = i_data[31:24];
							 evaluate = 1'b1;
							 if(enable[4]) begin
								 counter_next = 3'b100;
								 done =1'b0;
							 end
							 else begin
								 done = 1'b1;
							 end
				   	end
				  end
		3'b100 : begin
				  		if(enable[4]) begin
							 bytedata = i_data[39:32];
							 evaluate = 1'b1;
							 counter_next = 3'b101;
							 done =1'b0;
				   	end
				  end
		3'b101 : begin
				  		if(enable[4]) begin
							 bytedata = i_data[47:40];
							 evaluate = 1'b1;
							 counter_next = 3'b110;
							 done =1'b0;
				   	end
				  end
		3'b110 : begin
				  		if(enable[4]) begin
							 bytedata = i_data[55:48];
							 evaluate = 1'b1;
							 counter_next = 3'b111;
							 done =1'b0;
				   	end
				  end
		3'b111 : begin
				  		if(enable[4]) begin
							 bytedata = i_data[63:56];
							 evaluate = 1'b1;
							 counter_next = 3'b000;
							 done = 1'b1;
				   	end
				  end
	endcase
end

assign result = (clk_en & done) ? crc : 32'hA5A5C3C3; //Output the CRC value for all accesses to this custom instruction. Helps in Software Debug purposes.

endmodule
