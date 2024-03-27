`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/27/2024 11:24:33 AM
// Design Name: 
// Module Name: mux_4to1_using_gates
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


module mux_4to1_using_gates(
    input wire [3:0] in,    // 4-bit input
    input wire [1:0] sel,   // 2-bit selection input
    output wire out         // 1-bit output
);

// Khai bao data types cho cac cong and va 1 cong or
wire and0, and1, and2, and3, or_out;

// Thuc hien ham and
and (and0, in[0], ~sel[1], ~sel[0]); // sel = 00
and (and1, in[1], ~sel[1],  sel[0]); // sel = 01
and (and2, in[2],  sel[1], ~sel[0]); // sel = 10
and (and3, in[3],  sel[1],  sel[0]); // sel = 11
                                     // ~ la ky hieu cho phep toan not thuc hien tren tung bit cua sel
// Thuc hien ham or
or (or_out, and0, and1, and2, and3);

// Gan ket qua cua cong OR voi dau ra
assign out = or_out;


   
endmodule
