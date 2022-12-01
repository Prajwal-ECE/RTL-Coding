`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Author: Prajwal N
// Create Date:   19:08:49 12/01/2022
// Design Name:   mux
// Module Name:   P:/xilin programs/verilog/mux81/mux_tb.v
// Project Name:  mux81 
// Tool versions:  ISE Design Suit 14.7
// Revision 0.01 - File Created 
////////////////////////////////////////////////////////////////////////////////

module mux_tb;
reg [7:0]in;
reg[2:0]sel;
wire out;
mux uut(.in(in),.out(out),.sel(sel));
initial 
begin
$monitor($time," sel=%d   in=%b    out=%d   ",sel,in,out);
end
initial
begin
in=8'b01011010;
sel=3'b000;
repeat(7)
begin
#10 sel=sel+1;
end
#10 $finish; 
end    
endmodule

