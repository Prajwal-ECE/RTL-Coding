`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Author : Prajwal N
// Create Date:   23:53:28 12/16/2022
// Design Name:   digital_clock
// Module Name:   P:/xilin programs/verilog/Digital_clock/digital_clock_tb.v
// Project Name:  Digital_clock 
// Tool versions:  Xilinx ISE Design Suit 14.7
// Verilog Test Fixture created by ISE for module: digital_clock
// Revision 0.01 - File Created
////////////////////////////////////////////////////////////////////////////////

module digital_clock_tb;

	// Inputs
	reg clk;
	reg rst;

	// Outputs
	wire [6:0] sec;
	wire [6:0] min;
	wire [4:0] hr;

	// Instantiate the Unit Under Test (UUT)
	digital_clock uut (
		.clk(clk), 
		.rst(rst), 
		.sec(sec), 
		.min(min), 
		.hr(hr)
	);
initial
begin
$monitor($time,"  sec=%d    min=%d   hour=%d  ",sec,min,hr);
end
	initial begin
		// Initialize Inputs
		clk = 0;
		rst = 1;
		#3 rst=0;
        
		// Add stimulus here

	end
      always
		#1 clk=~clk;
endmodule

