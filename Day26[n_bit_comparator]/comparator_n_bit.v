`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Author: Prajwal N
// Create Date:    22:16:58 12/15/2022 
// Module Name:    comparator_n_bit 
// Tool versions: Xilinx ISE Design Suit 14.7
// Revision 0.01 - File Created
//////////////////////////////////////////////////////////////////////////////////
module comparator_n_bit(a,b,L,G,E);
parameter n=32;
input [n-1:0]a,b;
output L,G,E;
reg L=0,G=0,E=0;
always @ (a,b)
begin
if(a>b)
begin
L=0;E=0;G=1;
end
else if (a<b)
begin
L=1;E=0;G=0;
end
else
begin
L=0;E=1;G=0;
end
end
endmodule
