`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Author: Prajwal N
// Create Date:   23:18:06 12/11/2022
// Design Name:   jhonsoncounter
// Module Name:   P:/xilin programs/verilog/JhonsonCounter/jhonson_tb.v
// Project Name:  JhonsonCounter 
// Tool versions:  Xilinx ISE Design 14.7
// Verilog Test Fixture created by ISE for module: jhonsoncounter
// Revision 0.01 - File Created
////////////////////////////////////////////////////////////////////////////////

module jhonson_tb;

	// Inputs
	reg clk;
	reg rst;

	// Outputs
	wire [3:0] dout;

	jhonsoncounter uut (.dout(dout),.clk(clk),.rst(rst));
	initial
	begin
	$monitor($time,"    dout=%b",dout);
	end
	initial begin

		clk = 0;
		rst = 0;
		#50 rst=1;
	end
	always
	#10 clk=~clk;
      
endmodule

