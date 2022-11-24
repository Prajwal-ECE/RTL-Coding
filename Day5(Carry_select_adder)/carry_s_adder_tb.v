`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   00:05:25 11/25/2022
// Design Name:   Carry_s_adder
// Module Name:   P:/xilin programs/verilog/Carry_s_adder/carry_s_adder_tb.v
// Project Name:  Carry_s_adder
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: Carry_s_adder
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module carry_s_adder_tb;

	// Inputs
	reg [3:0] a;
	reg [3:0] b;
	reg cin;

	// Outputs
	wire [3:0] sum;
	wire cout;

	Carry_s_adder uut (
		.a(a), 
		.b(b), 
		.cin(cin), 
		.sum(sum), 
		.cout(cout)
	);
	initial
	begin
	$monitor($time," a=%d ,b=%d ,cin=%d ,sum=%d ,cout=%d ",a,b,cin,sum,cout);
	end

	initial begin
		// Initialize Inputs
		a = 4'b0000;b=4'b0000;cin=0;
		#100 a=4'b0001;b=4'b0100;cin=1;
		#100 a=4'b1010;b=4'b0010;cin=0;
		#100 a=4'b0101;b=4'b1001;cin=1;
		#100 a=4'b1101;b=4'b0100;cin=0;
	end
      
endmodule

