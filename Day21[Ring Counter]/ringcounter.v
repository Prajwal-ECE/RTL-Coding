`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Author: Prajwal N
// Create Date:    23:34:29 12/09/2022  
// Module Name:    ringcounter 
// Project Name: Ring Counter 
// Tool versions: Xilinx ISE Desing 14.7
// Revision 0.01 - File Created
//////////////////////////////////////////////////////////////////////////////////
module ringcounter(dout,clk,rst);
input clk,rst;
output [3:0]dout;
reg [3:0] dout;
always @ (posedge clk)
begin
if(rst==0)
dout=4'b0001;
else
dout={dout[0],dout[3:1]};
end
endmodule
