`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    23:55:57 11/24/2022 
// Design Name: 
// Module Name:    Carry_s_adder 
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
module Carry_s_adder(a,b,cin,sum,cout);
input [3:0]a,b;
input cin;
output [3:0]sum;
output cout;
wire w1,c1,w2,c2,w3,c3,w4,c4,w11,c11,w22,c22,w33,c33,w44,c44;
//assume carry is 0
fa fa0(a[0],b[0],0,w1,c1);
fa fa1(a[1],b[1],c1,w2,c2);
fa fa2(a[2],b[2],c2,w3,c3);
fa fa3(a[3],b[3],c3,w4,c4);
//assume carry is 1
fa fa4(a[0],b[0],1,w11,c11);
fa fa5(a[1],b[1],c11,w22,c22);
fa fa6(a[2],b[2],c22,w33,c33);
fa fa7(a[3],b[3],c33,w44,c44);
//selecting sum
mux m1(w1,w11,cin,sum[0]);
mux m2(w2,w22,cin,sum[1]);
mux m3(w3,w33,cin,sum[2]);
mux m4(w4,w44,cin,sum[3]);
//selecting cout
mux M(c4,c44,cin,cout);
endmodule