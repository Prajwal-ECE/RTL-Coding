`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Author: Prajwal N 
// Create Date:   23:54:23 12/14/2022
// Design Name:   n_bit_adder
// Module Name:   P:/xilin programs/verilog/n_bit_adder/n_bit_adder_tb.v
// Project Name:  n_bit_adder  
// Tool versions:  Xilinx ISE Design Suit 14.7
// Verilog Test Fixture created by ISE for module: n_bit_adder
// Revision 0.01 - File Created
////////////////////////////////////////////////////////////////////////////////

module n_bit_adder_tb;

	// Inputs
	reg [31:0] a;
	reg [31:0] b;

	// Outputs
	wire [31:0] y;

	n_bit_adder uut (.a(a),.b(b),.y(y));
	initial begin
 $monitor($time,"  a=%d      b=%d      sum=%d  ",a,b,y);
 end

	initial begin
		a = 3;b = 4;
		#100 a=10;b=15;
		#100 a=200;b=150;
		#100 a=22332;b=13342;
		#100 a=112234;b=1122;
		#100 $finish;
       

	end
      
endmodule

