`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: Author Prajwal N
//
// Create Date:   19:04:22 11/30/2022
// Design Name:   encoder
// Module Name:   P:/xilin programs/verilog/encoder8x3/encoder_tb.v
// Project Name:  encoder8x3
// Target Device:  
// Tool versions:  ISE Design Suit 14.7 
//
// Verilog Test Fixture created by ISE for module: encoder
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// 
////////////////////////////////////////////////////////////////////////////////

module encoder_tb;

	// Inputs
	reg en;
	reg [7:0] din;

	// Outputs
	wire [2:0] dout;
	integer i;
	encoder uut (
		.en(en), 
		.din(din), 
		.dout(dout)
	);

	initial begin
	$monitor($time," en=%d     din=%d     dout=%d  ",en,din,dout);
	end
	
	initial 
	begin
	en=0;
	i=0;
	for (i=0;i<8;i=i+1)
	begin
	din=2**i;
	#10;
	end
	#10 en=1;
	for (i=0;i<8;i=i+1)
	begin
	din=2**i;
	#10;
	end
	end

      
endmodule

