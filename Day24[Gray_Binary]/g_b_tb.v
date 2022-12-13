`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Author: Prajwal N
// Create Date:   22:33:15 12/13/2022
// Design Name:   G_B
// Module Name:   P:/xilin programs/verilog/Grat_Binary/g_b_tb.v
// Project Name:  Grat_Binary
// Tool versions:  Xilinx ISE Design Suit 14.7
// Verilog Test Fixture created by ISE for module: G_B
// Revision 0.01 - File Created 
////////////////////////////////////////////////////////////////////////////////

module g_b_tb;

	reg [3:0] G;

	wire [3:0] B;
	integer i;

	G_B uut (.G(G),.B(B));
	initial 
	begin
	$monitor($time,"    Gray=%b > %d    Binary=%b > %d",G,G,B,B);
end	

	initial begin
		G = 0;
		for(i=0;i<16;i=i+1)
		begin
		G=i;
		#10;
		end
		$finish;
	end
      
endmodule

