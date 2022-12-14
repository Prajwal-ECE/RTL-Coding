`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Author: Prajwal N 
// Create Date:    23:13:43 12/14/2022  
// Module Name:    full_adder 
// Project Name: Full Adder
// Tool versions: Xilinx ISE Design Suit 14.7
// Revision 0.01 - File Created
//////////////////////////////////////////////////////////////////////////////////
module full_adder(a,b,cin,s,carry);
input a,b,cin;
output s,carry;
assign s=a^b^cin;
assign carry=(a&b)|(b&cin)|(cin&a);
endmodule
