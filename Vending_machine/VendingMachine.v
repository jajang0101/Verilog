`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/12/2025 10:47:54 PM
// Design Name: 
// Module Name: VendingMachine
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


module VendingMachine(input clk, input rstn, input coin, output reg newspaper);

parameter MEM_0 = 2'b00, MEM_5 = 2'b01, MEM_10 = 2'b10, MEM_15 = 2'b11;
reg [1:0] state, next;

always @(posedge clk or negedge rstn) begin
    if (!rstn) state = MEM_0;
    else state = next;
    if (next == MEM_15) begin
        newspaper = 1'b1;
        next = MEM_0;
    end
    else newspaper = 1'b0;
end    
always @(state) begin
    case(state)
        MEM_0: begin
            case(coin)
                2'b01: next = MEM_5;
                2'b10: next = MEM_10;
                default: next = state;
            endcase
        end
        MEM_5: begin
            case(coin)
                2'b01: next = MEM_10;
                2'b10: next = MEM_15;
                default: next = state;
            endcase
        end
        MEM_10: begin
            case(coin)
                2'b01: next = MEM_15;
                2'b10: next = MEM_15;
                default: next = state;
            endcase
        end
        
    endcase
        
end
endmodule
