`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
//Author : Prajwal N
// Create Date:   21:06:22 12/03/2022
// Design Name:   up_counter
// Module Name:   P:/xilin programs/verilog/up_counter/up_counter_tb.v
// Project Name:  up_counter 
// Tool versions:   ISE Design Suit 14.7
// Verilog Test Fixture created by ISE for module: up_counter
// Revision 0.01 - File Created
////////////////////////////////////////////////////////////////////////////////

module up_counter_tb;

	
	reg clk;
	reg rst;

	wire [3:0] count;

	up_counter uut (.clk(clk),.rst(rst),.count(count));
	
	initial 
	begin
	$monitor($time,"      rst=%b    count=%d  ",rst,count);
	end

	initial 
	begin
		clk = 0;
		rst = 0;
		#50 rst=1;
	end
	
	always
	#20 clk=~clk;
      
endmodule

