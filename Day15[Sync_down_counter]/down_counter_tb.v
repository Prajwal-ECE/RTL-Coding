`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   21:25:58 12/04/2022
// Design Name:   down_counter
// Module Name:   P:/xilin programs/verilog/sync_down_counter/down_counter_tb.v
// Project Name:  sync_down_counter
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: down_counter
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module down_counter_tb;

	reg clk;
	reg rst;

	wire [3:0] count;
	
	down_counter uut (.clk(clk),.rst(rst),.count(count));
	initial
	begin
	$monitor($time,"  rst=%d    count=%b   ",rst,count);
	end
	
	initial 
	begin
		clk = 0;
		rst = 0;
		#100 rst=1;
	end
	
	always
	#50 clk=~clk;
      
endmodule

