`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   22:34:42 11/25/2022
// Design Name:   Half_subtractor
// Module Name:   P:/xilin programs/verilog/Half_subtractor/Half_subtractor_tb.v
// Project Name:  Half_subtractor
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: Half_subtractor
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module Half_subtractor_tb;

	// Inputs
	reg a;
	reg b;

	// Outputs
	wire diff;
	wire borrow;

	Half_subtractor uut (.a(a), .b(b), .diff(diff), .borrow(borrow));
	
	initial 
	begin
	$monitor($time, " a=%d , b=%d ,difference=%d ,borrow=%d ",a,b,diff,borrow);
	end

	initial 
	begin
	a=0;b=0;
	#100 a=0;b=1;
	#100 a=1;b=0;
	#100 a=1;b=1;
	end
      
endmodule

