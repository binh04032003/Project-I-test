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
    input [1:0] w,
    input enb,
    output reg [3:0] y

    );
    
    always @ (enb or w)
    begin
    y = 0;
    if (enb) begin
        case (w)
           2'b00 : y = 4'b1000;
           2'b01 : y = 4'b0100;
           2'b10 : y = 4'b0010;
           2'b11 : y = 4'b0001;
        endcase
      end
    end
endmodule
