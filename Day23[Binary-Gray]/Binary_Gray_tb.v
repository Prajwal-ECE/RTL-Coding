`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Author: Prajwal N
// Create Date:   21:57:42 12/12/2022
// Design Name:   Binary_Gray
// Module Name:   P:/xilin programs/verilog/Binary_Gray/Binary_Gray_tb.v
// Project Name:  Binary_Gray  
// Tool versions: Xilinx ISE Design Suit 14.7 
// Verilog Test Fixture created by ISE for module: Binary_Gray
// Revision 0.01 - File Created 
////////////////////////////////////////////////////////////////////////////////

module Binary_Gray_tb;

	reg [3:0] B;

	wire [3:0] G;
	
	integer i;

	Binary_Gray uut (.B(B),.G(G));
	initial
	begin
	$monitor($time,"    Binary=%b > %d     Gray=%b  >%d",B,B,G,G);
	end

	initial 
	begin
		for(i=0;i<16;i=i+1)
		begin
		B=i;
		#10;
		end
		$finish;
	end
      
endmodule

