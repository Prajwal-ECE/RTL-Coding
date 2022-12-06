`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Author:   Prajwal N
// Create Date:    23:39:29 12/04/2022 
// Design Name: SR FlipFlop
// Module Name:    sr_ff 
// Tool versions: ISE Design Suit 14.7
// Revision 0.01 - File Created
//////////////////////////////////////////////////////////////////////////////////
module sr_ff(clk,rst,s,r,q,qbar);
input clk,rst,s,r;
output q,qbar;
reg q,qbar;
always@(posedge clk)
begin
if(rst==0)
q=0;
else
case({s,r})
2'b00:begin
q=q;
qbar=~q;
end
2'b01:begin
q=0;
qbar=~q;
end
2'b10:begin
q=1;
qbar=~q;
end
2'b11:begin
q=1'bz;
qbar=~q;
end
endcase
end
endmodule
