`timescale 1ns / 1ns
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/12/2025 11:23:45 PM
// Design Name: 
// Module Name: tb_1
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


module tb_1();
reg clk, rstn;
reg [1:0] coin;
wire newspaper;


VendingMachine m0(clk, rstn, coin, newspaper);cfr5

initial begin
    clk = 1'b0;
    forever #5 clk = ~clk;
end

initial begin
    rstn = 1'b1;
    //5won *3
    coin = 2'b01;
    
    //5won*1, 10won*1
    #30 coin = 2'b01;
    #10 coin = 2'b10;
    
    //10won*2
    #10 coin = 2'b10;
    
    #20 coin = 2'b00;
end

endmodule
