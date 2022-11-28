`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   21:32:15 11/28/2022
// Design Name:   and_gate
// Module Name:   P:/xilin programs/verilog/and_gate_using_2-1mux/and_gate_tb.v
// Project Name:  and_gate_using_2-1mux
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: and_gate
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module and_gate_tb;
reg a,b;
wire out;
and_gate uut(.a(a),.b(b),.out(out));
initial
begin
$monitor($time," a=%d    b=%d    out=%d   ",a,b,out);
end
initial 
begin
/* declaring all the a and b values:
a=0,b=0;
#100 a=0;b=1;
#100 a=1;b=0;
#100 a=1;b=1;
or use of $random function
*/
repeat(5)
begin
{a,b}=$random;
#100;
end
end
endmodule
