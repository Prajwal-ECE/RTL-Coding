`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   22:49:36 11/22/2022
// Design Name:   Carry_look_ahead_adder
// Module Name:   P:/xilin programs/verilog/Carry_look_ahead_adder/Carry_look_ahead_adder_tb.v
// Project Name:  Carry_look_ahead_adder
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: Carry_look_ahead_adder
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module Carry_look_ahead_adder_tb;

	reg [3:0] a;
	reg [3:0] b;
	reg cin;

	wire [3:0] sum;
	wire Cout;
	Carry_look_ahead_adder uut (
		.a(a), 
		.b(b), 
		.cin(cin), 
		.sum(sum), 
		.Cout(Cout)
	);
	initial
	begin
	$monitor($time," a=%d ,b=%d ,cin=%d ,sum=%d ,Cout=%d ",a,b,cin,sum,Cout);
	end
	initial 
	begin
		a =4'b0000;b =4'b0000;cin = 0;
		#100 a=4'b0010;b=4'b0110;cin=1;
		#100 a=4'b1111;b=4'b1101;cin=0;   // random values
		#100 a=4'b1010;b=4'b0101;cin=0;
		#100 a=4'b0011;b=4'b1100;cin=1;
	end
      
endmodule

