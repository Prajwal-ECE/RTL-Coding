`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Author   : Prajwal N
// Create Date:    21:23:29 12/04/2022 
// Design Name:    Sync_down_counter
// Module Name:    down_counter 
// Tool versions: ISE Design Suit 14.7
// Revision 0.01 - File Created
//////////////////////////////////////////////////////////////////////////////////
module down_counter(clk,rst,count);
input clk,rst;
output [3:0]count;
reg [3:0] count;
always@(posedge clk)
begin
if(rst==0)
count=4'b1111;
else
count=count-1;
end
endmodule
