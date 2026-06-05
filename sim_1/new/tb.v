`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05.06.2026 16:06:54
// Design Name: 
// Module Name: tb
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


module tb;
reg clk=0, reset=0;
reg [3:0] A=5, B=3;
reg [1:0] opcode;
wire [3:0] result;

cpu_top uut(clk, reset, A, B, opcode, result);

always #5 clk = ~clk;

initial begin
    opcode=0; #10;
    opcode=1; #10;
    opcode=2; #10;
    opcode=3; #10;
    $stop;
end
endmodule
