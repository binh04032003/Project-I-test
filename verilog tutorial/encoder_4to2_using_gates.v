`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/27/2024 10:52:46 AM
// Design Name: 
// Module Name: encoder_4to2_using_gates
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


module encoder_4to2_using_gates(
 
    input wire [3:0] in,  // 4-bit input
    output wire [1:0] out // 2-bit output
);

// Khai bao data types cho cong OR
wire or0, or1; 

// Thuc hien ham OR 
or (or0, in[1], in[3]); 
or (or1, in[2], in[3]); 

// Gan ket qua cua cong OR cho dau ra
assign out[0] = or0;
assign out[1] = or1;



endmodule
