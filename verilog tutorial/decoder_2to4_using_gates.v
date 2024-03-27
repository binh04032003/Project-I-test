`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/26/2024 10:01:05 PM
// Design Name: 
// Module Name: decoder_2to4_using_gates
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


module decoder_2to4_using_gates(
   
    input wire [1:0] in,  // 2-bit input
    output wire [3:0] out // 4-bit output
);

// Declare internal nets for the inverted inputs
wire not_in0, not_in1;

// Generate inverted inputs
not (not_in0, in[0]);
not (not_in1, in[1]);

// Generate outputs using AND gates
and (out[0], not_in1, not_in0); // when in = 00
and (out[1], not_in1, in[0]);   // when in = 01
and (out[2], in[1], not_in0);   // when in = 10
and (out[3], in[1], in[0]);     // when in = 11


    
endmodule
