`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   22:39:33 11/23/2022
// Design Name:   Fulladder_u_halfadder
// Module Name:   P:/xilin programs/verilog/Fulladder_u_halfadder/Fulladder_u_halfadder_tb.v
// Project Name:  Fulladder_u_halfadder
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: Fulladder_u_halfadder
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module Fulladder_u_halfadder_tb;

	// Inputs
	reg a;
	reg b;
	reg cin;

	// Outputs
	wire sum;
	wire carry;
	Fulladder_u_halfadder uut (
		.a(a), 
		.b(b), 
		.cin(cin), 
		.sum(sum), 
		.carry(carry)
	);
	initial 
	begin
	$monitor($time,"a=%d ,b=%d ,cin=%d ,sum=%d ,carry=%d ",a,b,cin,sum,carry);
	end
	
	initial 
	begin
	repeat(8)
	begin
	{a,b,cin}=$random;
	#100;
	end
	end
endmodule

