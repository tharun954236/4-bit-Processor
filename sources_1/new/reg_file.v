`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05.06.2026 16:04:49
// Design Name: 
// Module Name: reg_file
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


module reg_file(
    input clk,
    input [1:0] addr,
    input [3:0] data_in,
    input we,
    output [3:0] data_out
);

reg [3:0] reg_array [3:0];

always @(posedge clk)
    if (we)
        reg_array[addr] <= data_in;

assign data_out = reg_array[addr];

endmodule
