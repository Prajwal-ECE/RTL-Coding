`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company:Author Prajwal N
// Engineer:
// 
// Create Date:    18:47:17 11/30/2022 
// Design Name: 	8:3 encoder
// Module Name:    encoder  
// Tool versions: ISE Design Suit 14.7
//
// Revision: 
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
case (din)
8'd1:dout=3'b000;
8'd2:dout=3'b001;
8'd4:dout=3'b010;
8'd8:dout=3'b011;
8'd16:dout=3'b100;
8'd32:dout=3'b101;
8'd64:dout=3'b110;
8'd128:dout=3'b111;
default:dout=3'b000;
endcase
end
end
endmodule
