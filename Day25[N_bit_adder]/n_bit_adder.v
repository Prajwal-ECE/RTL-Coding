`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Author: Prajwal N 
// Create Date:    23:52:46 12/14/2022  
// Module Name:    n_bit_adder 
// Project Name: N Bit adder
// Tool versions: Xilinx ISE Design Suit 14.7
// Revision 0.01 - File Created
//////////////////////////////////////////////////////////////////////////////////
module n_bit_adder(a,b,y);
parameter N=32;
input [N-1:0] a,b;
   output [N-1:0] y;
   wire  carry_out;
  wire [N-1:0] carry;
   genvar i;
   generate 
   for(i=0;i<N;i=i+1)
     begin: generate_N_bit_Adder
	  if(i==0) 
  half_adder f(a[0],b[0],y[0],carry[0]);
   else
  full_adder f(a[i],b[i],carry[i-1],y[i],carry[i]);
     end
  assign carry_out = carry[N-1];
   endgenerate
endmodule 

