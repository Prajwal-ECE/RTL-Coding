`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Author: Prajwal N
// Create Date:    21:53:07 12/12/2022  
// Module Name:    Binary-Gray 
// Project Name: Binary To Gray
// Tool versions: Xilinx ISE Design Suit 14.7
// Revision 0.01 - File Created
//////////////////////////////////////////////////////////////////////////////////
module Binary_Gray(B,G);
input[3:0] B;
output [3:0]G;
assign G[3]=B[3];
assign G[2]=B[3]^B[2];
assign G[1]=B[2]^B[1];
assign G[0]=B[1]^B[0];
endmodule
