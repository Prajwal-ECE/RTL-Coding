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
	encoder uut (
		.en(en), 
		.din(din), 
		.dout(dout)
	);

	initial begin
	$monitor($time," en=%d     din=%b     dout=%b  ",en,din,dout);
	end
	
	initial 
	begin
	en=0;
	din=8'b00000001;
	#10 din=8'b0000001x;
	#10 din=8'b000001xx;
	#10 din=8'b00001xxx;
	#10 din=8'b0001xxxx;
	#10 din=8'b001xxxxx;
	#10 din=8'b01xxxxxx;
	#10 din=8'b1xxxxxxx;
	#10 en=1;
	din=8'b00000001;
	#10 din=8'b0000001x;
	#10 din=8'b000001xx;
	#10 din=8'b00001xxx;
	#10 din=8'b0001xxxx;
	#10 din=8'b001xxxxx;
	#10 din=8'b01xxxxxx;
	#10 din=8'b1xxxxxxx;
	#10 $finish;
	end    
endmodule

