`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    20:08:07 11/20/2022 
// Design Name: 
// Module Name:    Fulladder_gateflow 
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
module Fulladder_gateflow(a,b,c,sum,carry);
input a,b,c;
output sum,carry;
wire w1,w2,w3;
xor X1(sum,a,b,c);
and A1(w1,a,b);
and A2(w2,b,c);
and A3(w3,a,cin);
or O1(carry,w1,w2,w3);
endmodule
