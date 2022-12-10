`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Author: Prajwal N
// Create Date:   23:42:32 12/09/2022
// Design Name:   ringcounter
// Module Name:   P:/xilin programs/verilog/Ringcounter/ringcounter_tb.v
// Project Name:  Ringcounter 
// Tool versions: Xilinx ISE Design Suit 14.7 
// Verilog Test Fixture created by ISE for module: ringcounter
// Revision 0.01 - File Created 
////////////////////////////////////////////////////////////////////////////////

module ringcounter_tb;

	reg clk;
	reg rst;

	wire [3:0] dout;

	ringcounter uut (.dout(dout),.clk(clk),.rst(rst));
	initial 
	begin
	$monitor($time,"  dout=%b ",dout);
	end

	initial 
	begin
	clk=0;
	rst=0;
	#50 rst=1;
	end
	always
	#10 clk=~clk;
      
endmodule

