`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   21:31:48 11/21/2022
// Design Name:   Ripple_carry_adder
// Module Name:   P:/xilin programs/verilog/Ripple_carry_adder/Ripple_carry_adder_tb.v
// Project Name:  Ripple_carry_adder
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: Ripple_carry_adder
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module Ripple_carry_adder_tb;

	// Inputs
	reg [3:0] a;
	reg [3:0] b;
	reg c;

	// Outputs
	wire [3:0] sum;
	wire cout;

	// Instantiate the Unit Under Test (UUT)
	Ripple_carry_adder uut (
		.a(a), 
		.b(b), 
		.c(c), 
		.sum(sum), 
		.cout(cout)
	);
	initial 
	begin
	$monitor($time," a=%d ,b=%d ,c=%d ,sum=%d ,cout=%d ",a,b,c,sum,cout);
	end
	initial 
	begin
		a=4'b0000;b=4'b0000;c=0;
		#100 a=4'b0010;b=4'b0100;c=1;
		#100 a=4'b0111;b=4'b0110;c=0;
		#100 a=4'b0000;b=4'b0000;c=0;

	end
      
endmodule

