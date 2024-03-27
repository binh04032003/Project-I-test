`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/26/2024 09:37:27 PM
// Design Name: 
// Module Name: decoder_2to4
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


module decoder_2to4(
    input [1:0] w, // 2-bit input
    input enb,     // tin hieu enable
    output reg [3:0] y  // 4-bit output

    );
    
    always @ (enb or w) // luon luon thuc hien chuong trinh khi co tin hieu enable hoac dau vao
    begin
    y = 0; // khoi tao voi y ban dau bang 0000
    if (enb) begin // voi enable o muc high thi thuc hien ham case
        case (w)
           2'b00 : y = 4'b1000; // dau vao = 00 thi dau ra la 1000
           2'b01 : y = 4'b0100; // dau vao = 01 thi dau ra la 0100
           2'b10 : y = 4'b0010; // dau vao = 00 thi dau ra la 0010
           2'b11 : y = 4'b0001; // dau vao = 00 thi dau ra la 0001
        endcase
      end
    end
endmodule
