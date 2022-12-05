`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Author  : Prajwal N
// Create Date:    22:29:52 12/04/2022 
// Design Name: 	 Up Down Counter
// Module Name:    up_down_counter   
// Tool versions: ISE Design Suit 14.7
// Revision 0.01 - File Created
//////////////////////////////////////////////////////////////////////////////////
module up_down_counter(clk,rst,mode,count);
input clk,rst,mode;
output [3:0]count;
reg [3:0]count;
always@(posedge clk)
if(mode==0)
begin                  //work as up counter
	if(rst==0)
	count<=4'b0000;
	else
	count<=count+1;
end
else  
begin                 //work as down counter
	if(rst==0)
	count<=4'b1111;
	else
	count<=count-1;
end
endmodule
