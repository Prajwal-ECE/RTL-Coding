`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    21:20:09 11/21/2022 
// Design Name: 
// Module Name:    Ripple_carry_adder 
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
module Ripple_carry_adder(a,b,c,sum,cout);
input [3:0] a,b;
input c;
output [3:0]sum;
output cout;
wire c1,c2,c3;
Full_adder fa0(a[0],b[0],c,sum[0],c1);
Full_adder fa1(a[1],b[1],c1,sum[1],c2);
Full_adder fa2(a[2],b[2],c2,sum[2],c3);
Full_adder fa3(a[3],b[3],c3,sum[3],cout);
endmodule
