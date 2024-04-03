`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/03/2024 02:34:41 PM
// Design Name: 
// Module Name: mux_UDP
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

primitive mux(
   output y,
   input a,b,s 
);
  table
   // s  a  b  :  y
      0  0  0  :  0;
      0  0  1  :  0;
      0  1  0  :  1;
      0  1  1  :  1;
      1  0  0  :  0;
      1  0  1  :  1;
      1  1  0  :  0;
      1  1  1  :  1;
  endtable
endprimitive

module mux_UDP(
    output wire result,
    input wire a,b,s
    );

mux (result,a,b,s);

endmodule
