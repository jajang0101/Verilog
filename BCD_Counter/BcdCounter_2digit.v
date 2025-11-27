`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/16/2025 02:20:29 PM
// Design Name: 
// Module Name: BcdCounter_2digit
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


module BcdCounter_2digit(input count, input mode, input rstn, input clk, output [3:0] Q0, output [3:0] Q1, output tc2);

BcdCounter_cas counter0 (count, mode, rstn, clk, Q0, tc1);
BcdCounter_cas counter1 (tc1, mode, rstn, clk, Q1, tc2);

endmodule
