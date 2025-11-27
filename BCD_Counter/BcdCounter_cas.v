`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/16/2025 12:32:20 AM
// Design Name: 
// Module Name: BcdCounter_cas
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


module BcdCounter_cas(
        input wire count, input mode, input rstn, input clk, output reg [3:0] Q, output reg tc
    );
    always @(posedge clk) begin
        if (!rstn) begin
            Q <= 4'd0;
            tc <= 1'b0;
            
        end else if (count) begin
            tc <= 1'b0;  // default

            if (mode) begin
                if (Q == 4'd9) begin
                    Q <= 4'd0;
                    tc <= 1'b1;
                end else Q <= Q + 1;
                
            end else begin
                if (Q == 4'd0) begin
                    Q <= 4'd9;
                    tc <= 1'b1;
                end else Q <= Q - 1;
            end
        end
    end
endmodule
