`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/27/2024 02:30:11 PM
// Design Name: 
// Module Name: half_adder
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


module half_adder(
    input a,b, // khai bao 2 bien dau vao a,b
    output c, // khai bao bien dau ra c
    output s // khai bao bien dau ra s
    );
    
    assign s = a ^ b; // gan s la dau ra ham xor cua hai dau vao a,b
    assign c = a & b; // gan c la dau ra ham and cua hai dau vao a,b
    
endmodule
