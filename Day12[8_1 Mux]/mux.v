`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Author: PRajwal N 
// Create Date:    18:25:39 12/01/2022 
// Design Name: 	8:1 Mux
// Module Name:    mux 
// Project Name: 	8:1 Mux
// Target Devices: 
// Tool versions: ISE Design Suit 14.7
// Revision 0.01 - File Created
//////////////////////////////////////////////////////////////////////////////////
module mux(in,out,sel);
input[7:0]in;
input[2:0]sel;
output out;
reg out;
always @(in,sel)
begin
case(sel)
3'b000:out=in[0];
3'b001:out=in[1];
3'b010:out=in[2];
3'b011:out=in[3];
3'b100:out=in[4];
3'b101:out=in[5];
3'b110:out=in[6];
3'b111:out=in[7];
default:out=1'b0;
endcase 
end 
endmodule
