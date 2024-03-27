`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/25/2024 10:58:38 PM
// Design Name: 
// Module Name: D_Flipflop
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module DFlipflop(
   
    );
    
    wire q,q_bar;
    reg d, clk;
    
    nand N1(d,clk,x);
    nand N2(clk,x,y);
    nand N3(x,q_bar,q);
    nand N4(y,q,q_bar);
    
endmodule
