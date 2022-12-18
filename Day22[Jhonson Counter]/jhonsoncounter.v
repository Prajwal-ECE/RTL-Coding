`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Author: Prajwal N
// Create Date:    23:05:07 12/11/2022 
// Module Name:    jhonsoncounter 
// Project Name: Jhonson Counter
// Tool versions: Xilinx ISE Design 14.7 
// Revision 0.01 - File Created
//////////////////////////////////////////////////////////////////////////////////
module jhonsoncounter(dout,clk,rst);
input clk,rst;
output [3:0]dout;
reg [3:0] dout;
always @(posedge clk)
begin
if (rst==0)
dout=4'b0001;
else
dout={~dout[0],dout[3:1]};
end
endmodule
