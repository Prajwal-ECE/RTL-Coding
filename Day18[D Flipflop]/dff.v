`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Author: Prajwal N
// Create Date:    00:16:09 12/8/2022  
// Module Name:    dff 
// Project Name: D flipflop
// Tool versions: Xilinx ISE Design Suit 14.7 
// Revision 0.01 - File Created
//////////////////////////////////////////////////////////////////////////////////
module DFF(Q,Qbar,D,Clk,Reset);

output  reg  Q; 

output   Qbar; 

input   D,Clk,Reset; 

assign Qbar = ~Q; 

always @(posedge Clk) 

begin 

 if (Reset == 1'b1) //If not at reset 

  Q = 1'b0;

 else 

  Q = D;

end 

endmodule
