`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Author : Prajwal N
// Create Date:    20:59:27 12/03/2022 
// Design Name: UP COUNTER
// Module Name:    up_counter 
// Project Name: up_counter
// Tool versions: ISE Design Suit 14.7
// Revision 0.01 - File Created
//////////////////////////////////////////////////////////////////////////////////
module up_counter(clk,rst,count);
input clk,rst;
output [3:0] count;
reg [3:0]count;
always@(posedge clk)
begin
if(rst==0)
count=4'b0000;
else
count=count+1;
end
endmodule
