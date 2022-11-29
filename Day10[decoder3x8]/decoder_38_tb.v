`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   22:37:28 11/29/2022
// Design Name:   decoder
// Module Name:   P:/xilin programs/verilog/decored3_8/decoder_38_tb.v
// Project Name:  decored3_8
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: decoder
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module decoder_38_tb;

wire [7:0] out;
reg en;
reg [2:0] in;
integer i;

decoder_38 uut(in,out,en);

initial begin  
 $monitor( "en=%b, in=%d, out=%b ", en, in, out);
   for ( i=0; i<16; i=i+1) 
        begin
           {en,in}  = i;
            #1;
        end
end
endmodule