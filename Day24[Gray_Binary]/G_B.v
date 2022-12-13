`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Author: Prajwal N
// Create Date:    22:29:13 12/13/2022 
// Design Name: Gray to Binary
// Module Name:    G_B 
// Project Name: Gray to Binary code converter 
// Tool versions: Xilinx ISE Design Suit 14.7
// Revision 0.01 - File Created
//////////////////////////////////////////////////////////////////////////////////
module G_B(G,B);
input [3:0]G;
output [3:0]B;
assign B[3]=G[3];
assign B[2]=G[3]^G[2];
assign B[1]=G[3]^G[2]^G[1];
assign B[0]=G[3]^G[2]^G[1]^G[0];
endmodule
