`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    22:46:27 11/26/2022 
// Design Name: 
// Module Name:    Full_subtractor 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module Full_subtractor(a,b,c,diff,borrow);
input a,b,c;
output diff,borrow;
assign diff=a^b^c;
assign borrow=(~a&(b^c))|(b&c);
endmodule
