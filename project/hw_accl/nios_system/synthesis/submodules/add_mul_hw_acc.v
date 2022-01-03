module mulacc_hal ( clk,
reset,
address,
writedata,
write,
read,
readdata);
   input clk;
   input reset;
   input [1:0] address;
   input [31:0] writedata;
   input write;
   input read;
   output reg [31:0] readdata;

   reg [31:0]     register_bank[3:0];

   integer     loop_index;

   wire [31:0]     a,b,c,result;

   fp32_mulacc fp32_mulacc_inst(a, b, c, result);
   assign a = register_bank[0];
   assign b = register_bank[1];
   assign c = register_bank[2];

   //Write logic

   always @ (posedge clk)
     begin
if(reset == 1'b1)
 begin
    for(loop_index=0; loop_index <4; loop_index = loop_index + 1)
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
     end // always @ (posedge clk)

   // Read logic
   always @ (posedge clk)
     begin
if(reset == 1'b1)
 begin
    readdata <= 32'd0;
 end
else if(read == 1'b1)
 begin
    readdata <= result;
 end
else
 begin
    readdata <= readdata;
 end
     end // always @ (posedge clk)
endmodule // mac_hal


module fp32_mulacc (dataa,
   datab,
   datac,
   result);
   input [31:0] dataa;
   input [31:0] datab;
   input [31:0] datac;
   output [31:0] result;

   wire [31:0] a_in, b_in;

   reg result_s;
   reg [7:0] result_e;
   reg [22:0] result_m;

   reg is_normalized, is_zero;
   reg round;
   reg [22:0] res_m;
   reg [23:0] a_m, b_m;
   reg [8:0] exponent_calc, sum_of_exponents;
   reg [47:0] product;
   reg [47:0] normalized_product;
   reg flag;
   reg is_overflow, is_underflow;
   reg [31:0] z;

   
   wire [31:0] add_a_in, add_b_in;
   
   reg add_result_s;
   reg [7:0] add_result_e;
   reg [22:0] add_result_m;
   
   reg [7:0] add_a_e, add_b_e, add_out_e, add_n1_e, add_n2_e;
   reg [7:0] add_diff;
   reg [23:0] add_a_m, add_b_m;
   reg [23:0] add_temp_m;
   reg [24:0] add_n1_m, add_n2_m, add_out_m;//1 extra hidden bit
   reg add_a_s, add_b_s, add_out_s;

   //Establishing the wire connections to continuously drive inputs and outputs
   assign result = { add_result_s, add_result_e, add_result_m};
   assign add_a_in = z;
   assign add_b_in = datac;

   always @(*) begin
      result_s = dataa[31] ^ datab[31];
      flag = (&dataa[30:23]) | (&datab[30:23]);
      //Assigning the mantissa (with the appropriate hidden bit)
      a_m = (|dataa[30:23] == 1) ? {1'b1, dataa[22:0]} : {1'b0, dataa[22:0]};
      b_m = (|datab[30:23] == 1) ? {1'b1, datab[22:0]} : {1'b0, datab[22:0]};

      product = a_m * b_m;
      is_normalized = product[47] ? 1'b1 : 1'b0;
      normalized_product = is_normalized ? product : product << 1;
      round = |normalized_product[22:0];
      res_m = normalized_product[46:24] + (normalized_product[23] & round);
      sum_of_exponents = dataa[30:23] + datab[30:23];
      is_zero = flag ? 1'b0 : (res_m == 23'd0) ? 1'b1 : 1'b0;
      exponent_calc = sum_of_exponents + is_normalized - 8'd127;
      is_overflow = ((exponent_calc[8] & !exponent_calc[7]) & !is_zero);
      is_underflow = ((exponent_calc[8] & exponent_calc[7]) & !is_zero) ? 1'b1 : 1'b0;
      z = flag ? 32'd0 : is_zero ? {result_s, 31'd0} : is_overflow ? { result_s, 8'hFF, 23'd0} : is_underflow ? {result_s, 31'd0} : {result_s, exponent_calc[7:0], res_m};

     //Starting add part
 
//Assigning sign, exponent and mantessa of A
//A sign
add_a_s = add_a_in[31];
//A exponent
if ( add_a_in[30:23] == 0 ) //Pranvi Check
 add_a_e = 255;
else
 add_a_e = add_a_in[30:23];
//A mantessa
if( add_a_in[30:23] == 0)
 add_a_m = {1'b0,add_a_in[22:0]};
else
 add_a_m = {1'b1,add_a_in[22:0]};
//Assigning sign, exponent and mantessa of B
//B sign
add_b_s = add_b_in[31];

//B exponent
if ( add_b_in[30:23] == 0 ) //Pranvi Check
 add_b_e = 255;
else
 add_b_e = add_b_in[30:23];
//B mantessa
if( add_b_in[30:23] == 0)
 add_b_m = {1'b0,add_b_in[22:0]};
else
 add_b_m = {1'b1,add_b_in[22:0]};
//Case in which exponents are same - No shift needed
if(add_a_e == add_b_e)
 begin
    //Assign the same exponent to out
    add_out_e = add_a_e;
    // IF both signs are equal, add
    if (add_a_s == add_b_s)
      begin
 add_out_s = add_a_s;
 add_out_m = add_a_m + add_b_m;
 add_out_m[24] = 1;
      end
    //In case of different signs, sub
    else
      begin
 //If A mantessa is greater
 if (add_a_m > add_b_m)
   begin
      add_out_m = add_a_m - add_b_m;
      add_out_s = add_a_s; //Pranvi, check sign
   end
 
 //If B mantessa is greater or A and B mantessas are equal
 else
   begin
      add_out_m = add_b_m - add_a_m;
      add_out_s = add_b_s; //Pranvi, check sign
   end
      end
 end
//In case of exp of A being bigger, assign A sign to output and compute the output mantessa
else if (add_a_e > add_b_e)
 begin
    add_out_e = add_a_e;
    add_out_s = add_a_s;
    //Find the diff in exponent
    add_diff = add_a_e - add_b_e;
    //Shift the mantessa to make the exponents equal
    add_temp_m = add_b_m>>add_diff;
    //Now, with the changed mantessa, if signs are equal, add
    if (add_a_s == add_b_s)
      add_out_m = add_a_m + add_temp_m;
    //Now with the changed mantessa, if signs are unequal, subtract
    else
      add_out_m = add_a_m - add_temp_m;
 end
//In case of exp of B being bigger, assign B sign to output and compute the output mantessa
else
 begin
    add_out_e = add_b_e;
    add_out_s = add_b_s;
    //Find the diff in exponent
    add_diff = add_b_e - add_a_e;
    //Shift the mantessa to make the exponents equal
    add_temp_m = add_a_m>>add_diff;
    //Now, with the changed mantessa, if signs are equal, add
    if (add_a_s == add_b_s)
      add_out_m = add_b_m + add_temp_m;
    //Now, with the changed mantessa, if signs are unequal, subtract
    else
      add_out_m = add_b_m - add_temp_m;
 end
add_n1_m = add_out_m;
add_n1_e = add_out_e;
if(add_n1_m[23:3] == 21'h1)
 begin
    add_n2_e = add_n1_e - 20;
    add_n2_m = add_n1_m << 20;
          end
if(add_n1_m[23:4] == 20'h1)
 begin
    add_n2_e = add_n1_e - 19;
    add_n2_m = add_n1_m << 19;
          end
if(add_n1_m[23:5] == 19'h1)
 begin
    add_n2_e = add_n1_e - 18;
    add_n2_m = add_n1_m << 18;
          end
if(add_n1_m[23:6] == 18'h1)
 begin
    add_n2_e = add_n1_e - 17;
    add_n2_m = add_n1_m << 17;
          end
if(add_n1_m[23:7] == 17'h1)
 begin
    add_n2_e = add_n1_e - 16;
    add_n2_m = add_n1_m << 16;
          end
if(add_n1_m[23:8] == 16'h1)
 begin
    add_n2_e = add_n1_e - 15;
    add_n2_m = add_n1_m << 15;
          end
if(add_n1_m[23:9] == 15'h1)
 begin
    add_n2_e = add_n1_e - 14;
    add_n2_m = add_n1_m << 14;
          end
if(add_n1_m[23:10] == 14'h1)
 begin
    add_n2_e = add_n1_e - 13;
    add_n2_m = add_n1_m << 13;
          end
if(add_n1_m[23:11] == 13'h1)
 begin
    add_n2_e = add_n1_e - 12;
    add_n2_m = add_n1_m << 12;
          end
if(add_n1_m[23:12] == 12'h1)
 begin
    add_n2_e = add_n1_e - 11;
    add_n2_m = add_n1_m << 11;
          end
if(add_n1_m[23:13] == 11'h1)
 begin
    add_n2_e = add_n1_e - 10;
    add_n2_m = add_n1_m << 10;
          end
if(add_n1_m[23:14] == 10'h1)
 begin
    add_n2_e = add_n1_e - 9;
    add_n2_m = add_n1_m << 9;
          end
if(add_n1_m[23:15] == 9'h1)
 begin
    add_n2_e = add_n1_e - 8;
    add_n2_m = add_n1_m << 8;
          end
if(add_n1_m[23:16] == 8'h1)
 begin
    add_n2_e = add_n1_e - 7;
    add_n2_m = add_n1_m << 7;
          end
if(add_n1_m[23:17] == 7'h1)
 begin
    add_n2_e = add_n1_e - 6;
    add_n2_m = add_n1_m << 6;
          end
if(add_n1_m[23:18] == 6'h1)
 begin
    add_n2_e = add_n1_e - 5;
    add_n2_m = add_n1_m << 5;
          end
if(add_n1_m[23:19] == 5'h1)
 begin
    add_n2_e = add_n1_e - 4;
    add_n2_m = add_n1_m << 4;
          end
if(add_n1_m[23:20] == 4'h1)
 begin
    add_n2_e = add_n1_e - 3;
    add_n2_m = add_n1_m << 3;
          end
if(add_n1_m[23:21] == 3'h1)
 begin
    add_n2_e = add_n1_e - 2;
    add_n2_m = add_n1_m << 2;
          end

if(add_n1_m[23:22] == 2'h1)
 begin
    add_n2_e = add_n1_e - 1;
    add_n2_m = add_n1_m << 1;
          end
if (add_out_m[24] == 1)
 begin
    add_out_m = add_out_m >> 1;
    add_out_e = add_out_e + 1;
 end
else if (!add_out_m[23] && add_out_e != 0)
 begin
    add_out_m = add_n2_m;
    add_out_e = add_n2_e;
 end
if((z[30:23] == 8'hFF && z[22:0] != 0) || (datac[30:0] == 0))
 begin
    add_result_s = z[31];
    add_result_e = z[30:23];
    add_result_m = z[22:0];
 end
else if((datac[30:23] == 8'hFF && datac[22:0] != 0) || (z[30:0] == 0))
 begin
    add_result_s = datac[31];
    add_result_e = datac[30:23];
    add_result_m = datac[22:0];
 end
else if((z[30:23] == 8'hFF && z[22:0] == 0) || (datac[30:23] == 8'hFF && datac[22:0] == 0))
 begin
    add_result_s = z[31] ^ datac[31];
    add_result_e = 255;
    add_result_m = 0;
 end
else
 begin
    add_result_s = add_out_s;
    add_result_e = add_out_e;
    add_result_m = add_out_m[22:0];
 end
     
   end // always @ (*)
endmodule // fp32_mulacc
