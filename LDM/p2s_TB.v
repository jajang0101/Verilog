`timescale 1ns / 1ps

module p2s_TB ();
reg clk, rstn;
reg [0:255] PIXEL_DATA_256;
reg PIXEL_DATA_EN;
reg [3:0] LDM_ADDR;
wire LDM_CLK;
wire [0:15] LDM_LINE_DATA;

fsm U0 (clk, rstn, LDM_CLK, LDM_ADDR_EN, LDM_ADDR);
p2s U1 (clk, rstn, PIXEL_DATA_256, PIXEL_DATA_EN, LDM_ADDR, LDM_LINE_DATA);

initial begin
	clk = 1'b0;
	forever #10 clk = ~clk;	
end
initial begin
	rstn = 1'b0;
	PIXEL_DATA_256 = 256'hffff_7fff_3fff_1fff_0fff_07ff_03ff_01ff_00ff_007f_003f_001f_000f_0007_0003_0001;
	PIXEL_DATA_EN = 1'b0;
	#10 rstn = 1'b1;
	#10 PIXEL_DATA_EN = 1'b1;
	#20 PIXEL_DATA_EN = 1'b0;
end

endmodule
