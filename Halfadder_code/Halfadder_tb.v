`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   19:46:04 11/20/2022
// Design Name:   halfadder
// Module Name:   P:/xilin programs/verilog/Halfadder/Halfadder_tb.v
// Project Name:  Halfadder
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: halfadder
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module Halfadder_tb;

	// Inputs
	reg a;
	reg b;

	// Outputs
	wire sum;
	wire carry;

	// Instantiate the Unit Under Test (UUT)
	halfadder uut (
		.a(a), 
		.b(b), 
		.sum(sum), 
		.carry(carry)
	);
	initial 
	begin
	$monitor($time," a=%d ,b=%d ,sum=%d ,carry=%d ",a,b,sum,carry);
	end
	initial 
	begin
	a=0;b=0;
	#100 a=0;b=1;
	#100 a=1;b=0;
	#100 a=1;b=1;
	end
      
endmodule

