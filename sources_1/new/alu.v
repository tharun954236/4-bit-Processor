`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05.06.2026 16:03:55
// Design Name: 
// Module Name: alu
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


module alu(
    input [3:0] A, B,
    input [1:0] op,
    output reg [3:0] Y
);

always @(*) begin
    case(op)
        2'b00: Y = A + B;
        2'b01: Y = A - B;
        2'b10: Y = A & B;
        2'b11: Y = A | B;
    endcase
end
endmodule
