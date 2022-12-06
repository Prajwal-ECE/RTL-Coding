`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Author: Prajwal N
// Create Date:   23:44:22 12/04/2022
// Design Name:   sr_ff
// Module Name:   P:/xilin programs/verilog/sr_flipflop/sr_ff_tb.v
// Project Name:  sr_flipflop 
// Tool versions:  ISE Design Suit 14.7
// Verilog Test Fixture created by ISE for module: sr_ff
// Revision 0.01 - File Created
////////////////////////////////////////////////////////////////////////////////

module sr_ff_tb;

	reg clk;
	reg rst;
	reg s;
	reg r;

	wire q;
	wire qbar;

	sr_ff uut (.clk(clk),.rst(rst),.s(s),.r(r),.q(q),.qbar(qbar));
	
	initial 
	begin
	/* we can also use $random function
	initial begin
	{s,r}=$random;
	#10;
	end
	instead of giving all inputs*/
	clk = 0;
	rst = 0;
	#10 rst=1;
	s=0;r=0;
	#10 $display($time,"    s=%b    r=%b    q=%b    qbar=%d",s,r,q,qbar);
	s=0;r=1;
	#10 $display($time,"    s=%b    r=%b    q=%b    qbar=%d",s,r,q,qbar);
	s=1;r=0;
	#10 $display($time,"    s=%b    r=%b    q=%b    qbar=%d",s,r,q,qbar);
	s=1;r=1;
	#10 $display($time,"    s=%b    r=%b    q=%b    qbar=%d",s,r,q,qbar);
	#10 $finish;
	end
	always
	#5 clk=~clk;
      
endmodule

