`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Author: Prajwal N
// Create Date:   00:24:29 12/8/2022
// Design Name:   D flipflop
// Module Name:   P:/xilin programs/verilog/dff/dff_tb.v
// Project Name:  D Flipflop 
// Tool versions:  Xilinx ISE Design Suit 14.7
// Verilog Test Fixture created by ISE for module: clockdivider
// Revision 0.01 - File Created
////////////////////////////////////////////////////////////////////////////////
module DFF_tb;

 // Inputs

 reg D;

 reg Clk;

 reg Reset;

 // Outputs

 wire Q;

 wire Qbar;

 DFF uut (.Q(Q),.Qbar(Qbar),.D(D),.Clk(Clk),.Reset(Reset));

 initial begin
 $monitor( " D=%b  Q=%b  Qbar=%b",D,Q,Qbar);
 end
 initial begin

  D  = 1'b0;

  Clk  = 1'b0;

  Reset   = 1'b1;

  #100;

  Reset = 1'b0;

  #20;

  forever #40 D = ~ D;

 end

   always #10 Clk = ~Clk;  

endmodule
