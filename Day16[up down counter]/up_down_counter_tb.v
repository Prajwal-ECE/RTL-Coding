`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Author : Prajwal N
// Create Date:   22:45:09 12/04/2022
// Design Name:   up_down_counter
// Module Name:   P:/xilin programs/verilog/up_down_counter/up_down_counter_tb.v
// Project Name:  up_down_counter 
// Tool versions:  ISE Design Suit 14.7
// Verilog Test Fixture created by ISE for module: up_down_counter
// Revision 0.01 - File Created 
////////////////////////////////////////////////////////////////////////////////

module up_down_counter_tb;

	reg clk;
	reg rst;
	reg mode;

	wire [3:0] count;

	up_down_counter uut (.clk(clk),.rst(rst),.mode(mode),.count(count));
	initial
	begin
	$monitor($time,"    mode=%d    rst=%d    count=%b => %d  ",mode,rst,count,count);
	end
	initial begin
		clk = 0;
		mode=0;
		rst = 0;
		#10 rst=1;
		#160 mode=1;
		rst=0;
		#10 rst=1;
   end
	always
	#5 clk=~clk;
      
endmodule

