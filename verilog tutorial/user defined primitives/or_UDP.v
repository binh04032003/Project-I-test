`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/03/2024 01:47:58 PM
// Design Name: 
// Module Name: or_UDP
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

primitive or_gate(   // khoi tao moi truong user defined primitive
   output c,
   input a,b
);
   table  // khoi tao ham table de thuc hien trute table trong UDP
   // a  b  :  c
      0  0  :  0;   // 0 + 0 = 0
      0  1  :  1;   // 0 + 1 = 1
      1  0  :  1;   // 1 + 0 = 1
      1  1  :  1;   // 1 + 1 = 1
   endtable
endprimitive
module or_UDP(
    output wire result,
    input wire a,b
    
    );
    
or_gate (result,a,b); // khoi tao UDP
endmodule
