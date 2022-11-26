`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   23:15:38 11/26/2022
// Design Name:   Full_subtractor
// Module Name:   P:/xilin programs/verilog/Full_subtractor/Full_subtractor_tb.v
// Project Name:  Full_subtractor
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: Full_subtractor
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module Full_subtractor_tb;

	// Inputs
	reg a;
	reg b;
	reg c;

	// Outputs
	wire diff;
	wire borrow;

	Full_subtractor uut(.a(a),.b(b),.c(c),.diff(diff),.borrow(borrow));

	initial
	begin
	$monitor($time," a=%d, b=%d, c=%d, difference=%d, borrow=%d ",a,b,c,diff,borrow);
	end
	initial begin
		a = 0;b=0;c=0;
		#50 a=0;b=0;c=1;
		#50 a=0;b=1;c=0;
		#50 a=0;b=1;c=1;
		#50 a=1;b=0;c=0;
		#50 a=1;b=0;c=1;
		#50 a=1;b=1;c=0;
		#50 a=1;b=1;c=1;
	end     
endmodule

