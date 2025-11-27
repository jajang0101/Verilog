`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/22/2025 05:52:42 PM
// Design Name: 
// Module Name: tb1
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

module tb1 ();

reg count, mode, rstn, clk;
wire tc2;
wire [3:0] Q0;
wire [3:0] Q1;

BcdCounter_2digit counter1(count, mode, rstn, clk, Q0, Q1, tc2);

initial begin
    clk = 1'b0;
    forever #5 clk = ~clk;
end

initial begin
    count = 1'b1;
    mode = 1'b0;
    rstn = 1'b0;
    
    #15 rstn = 1'b1;
    #30 mode = 1'b1;
end

endmodule
