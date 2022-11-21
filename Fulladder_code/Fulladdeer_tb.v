`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   19:59:36 11/20/2022
// Design Name:   Fulladder
// Module Name:   P:/xilin programs/verilog/Fulladder_code/Fulladdeer_tb.v
// Project Name:  Fulladder_code
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: Fulladder
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module Fulladdeer_tb;

	// Inputs
	reg a;
	reg b;
	reg c;

	// Outputs
	wire sum;
	wire carry;

	// Instantiate the Unit Under Test (UUT)
	Fulladder uut (
		.a(a), 
		.b(b), 
		.c(c), 
		.sum(sum), 
		.carry(carry)
	);
	initial
	begin
	$monitor($time," a=%d , b=%d , c=%d , sum=%d , carry=%d ",a,b,c,sum,carry);
	end

	initial 
	begin
	a=0;b=0;c=0;
	#100 a=0;b=0;c=1;
	#100 a=0;b=1;c=0;
	#100 a=0;b=1;c=1;
	#100 a=1;b=0;c=0;
	#100 a=1;b=0;c=1;
	#100 a=1;b=1;c=0;
	#100 a=1;b=1;c=1;
	end
      
endmodule

