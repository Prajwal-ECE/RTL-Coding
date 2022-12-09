`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Author: Prajwal N
// Create Date:   00:24:29 12/10/2022
// Design Name:   clockdivider
// Module Name:   P:/xilin programs/verilog/clockdivider/clkdivider_tb.v
// Project Name:  clockdivider 
// Tool versions:  Xilinx ISE Design Suit 14.7
// Verilog Test Fixture created by ISE for module: clockdivider
// Revision 0.01 - File Created
////////////////////////////////////////////////////////////////////////////////

module clkdivider_tb;

	// Inputs
	reg clk;
	reg rst;

	// Outputs
	wire clk2;
	wire clk4;
	wire clk8;

	// Instantiate the Unit Under Test (UUT)
	clockdivider uut (
		.clk(clk), 
		.clk2(clk2), 
		.clk4(clk4), 
		.clk8(clk8), 
		.rst(rst)
	);

	initial begin
		// Initialize Inputs
		clk = 0;
		rst = 0;
		#50 rst=1;
        
		// Add stimulus here

	end
	always
	#10 clk=~clk;
      
endmodule

