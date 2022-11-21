`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    20:13:30 11/20/2022 
// Design Name: 
// Module Name:    Fulladder_behavioural 
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
module Fulladder_behavioural(a,b,c,sum,carry);
input a,b,c;
output sum,carry;
reg sum,carry;
always@(a,b,c)
begin
sum=a^b^c;
carry=(a&b)|(b&c)|(c&a);
end
endmodule
