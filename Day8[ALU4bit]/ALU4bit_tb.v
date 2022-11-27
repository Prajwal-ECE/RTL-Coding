`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   21:42:07 11/27/2022
// Design Name:   ALU4bit
// Module Name:   P:/xilin programs/verilog/ALU4bit/ALU4bit_tb.v
// Project Name:  ALU4bit
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: ALU4bit
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module ALU4bit_tb;

	reg [3:0] a;
	reg [3:0] b;
	reg [3:0] sel;
	reg en;

	wire [3:0] result;

	ALU4bit uut (.a(a),.b(b),.sel(sel),.en(en),.result(result));
	initial
	begin
	$monitor($time,"  a=%b ,   b=%b ,   sel=%b ,   result=%b ",a,b,sel,result);
	end
	
	
	initial 
	begin
	a=4'b0010;b=4'b0100;
	en=0;
	#50 en=1;
 sel=4'b0000;
	#50 sel=4'b0001;
	#50 sel=4'b0010;
	#50 sel=4'b0011;
	#50 sel=4'b0100;
	#50 sel=4'b0101;
	#50 sel=4'b0110;
	#50 sel=4'b0111;
	#50 sel=4'b1000;
	#50 sel=4'b1001;
	#50 sel=4'b1010;
	#50 sel=4'b1011;
	#50 sel=4'b1100;
	#50 sel=4'b1101;
	#50 sel=4'b1110;
	#50 sel=4'b1111;

	end
      
endmodule

