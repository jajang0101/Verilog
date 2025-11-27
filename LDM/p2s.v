`timescale 1ns / 1ps

module p2s (input reg clk, input reg rstn, input reg [0:255] PIXEL_DATA_256, input reg PIXEL_DATA_EN, input reg [0:3] LDM_ADDR, output [0:15] LDM_LINE_DATA);
reg [255:0] array;
wire [255:0] line_16[0:15];

always @(posedge clk or negedge rstn) begin;
	if(!rstn)								  
		array <= 0;
	else if (PIXEL_DATA_EN)
		array <= PIXEL_DATA_256;
end

assign {line_16[15], line_16[14], line_16[13], line_16[12], line_16[11], line_16[10], line_16[9], line_16[8], line_16[7] ,line_16[6], line_16[5], line_16[4], line_16[3], line_16[2], line_16[1], line_16[0]} = array;
assign LDM_LINE_DATA = line_16[LDM_ADDR];

endmodule



