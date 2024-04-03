`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/03/2024 02:47:39 PM
// Design Name: 
// Module Name: D_Flipflop_UDP
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

primitive d_flipflop(
   output reg q,
   input clk,d,reset 
);
table
   // clk  d  reset  :  q  :   q+
      (01) 1   0     :  ?  :   1;  // (01) flipflop active o suon duong
      (01) 0   0     :  ?  :   0;  // ? don't care condition
       ?   ?   1     :  ?  :   0; 
      (0?) ?   0     :  ?  :   -;  // - no change
       ?   ?   x     :  ?  :   -;
endtable
endprimitive

module D_Flipflop_UDP(
    output wire result,
    input wire clk, d,reset 
);

d_fliplop (result,clk,d,reset);

endmodule
