`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company:Author Prajwal N
// Create Date:    18:47:17 11/30/2022 
// Design Name: 	8:3 encoder
// Module Name:    encoder  
// Tool versions: ISE Design Suit 14.7 
// Revision 0.01 - File Created
//
//////////////////////////////////////////////////////////////////////////////////
module encoder(en,din,dout);
input en;
input [7:0]din;
output [2:0]dout;
wire[7:0]count;
reg [2:0] dout;
always @(en,din)
begin
if (en==0)
dout=3'b000;
else
begin
dout=3'b000;
casex (din)
8'b00000001:dout=3'b000;
8'b0000001x:dout=3'b001;
8'b000001xx:dout=3'b010;
8'b00001xxx:dout=3'b011;
8'b0001xxxx:dout=3'b100;
8'b001xxxxx:dout=3'b101;
8'b01xxxxxx:dout=3'b110;
8'b1xxxxxxx:dout=3'b111;
default:dout=3'b000;
endcase
end
end
endmodule
