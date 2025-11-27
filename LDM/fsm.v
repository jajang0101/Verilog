`timescale 1ns / 1ps

module fsm (input reg clk, input reg rstn, output reg LDM_CLK, output reg LDM_ADDR_EN, output reg  [3:0] LDM_ADDR);	
	
parameter S_I = 3'b000;
parameter S_1 = 3'b001;
parameter S_2 = 3'b010;
parameter S_3 = 3'b011;
parameter S_4 = 3'b100;
parameter S_5 = 3'b101;
parameter S_6 = 3'b110;

reg [2:0] state, next;

always @(posedge clk or negedge rstn) begin;
	if(!rstn)								  
		state <= S_I;
	else 
		state <= next;
end		
always @(posedge clk) begin
	next = 2'bx;
	case(state)
		S_I: begin
			next = S_1;
			LDM_ADDR = 0;
			LDM_ADDR_EN = 0;
			LDM_CLK = 0;
		end
		S_1: begin
			next = S_2;
			LDM_ADDR_EN = 1;
		end
		S_2: begin
			next = S_3;
			LDM_ADDR_EN = 0;
		end
		S_3: begin
			next = S_4;
			LDM_CLK = 1;
		end
		S_4: begin
			next = S_5;
			LDM_CLK = 0;
		end
		S_5: begin
			next = S_6;
			LDM_ADDR += 1;
		end
		S_6: begin
			next = S_1;
		end
		//default: next = S_I;
	endcase
end

endmodule