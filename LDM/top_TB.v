//-----------------------------------------------------------------------------
//
// Title       : top_TB
// Design      : ldm
// Author      : csie
// Company     : CUK
//
//-----------------------------------------------------------------------------
//
// File        : c:/My_Designs/ldm_1/ldm/src/top_TB.v
// Generated   : Fri Jun 20 18:19:59 2025
// From        : Interface description file
// By          : ItfToHdl ver. 1.0
//
//-----------------------------------------------------------------------------
//
// Description : 
//
//-----------------------------------------------------------------------------

`timescale 1ps / 1ps

//{{ Section below this comment is automatically maintained
//    and may be overwritten
//{module {top_TB}}

module top_TB ();

reg clk, rstn;
reg [0:255] PIXEL_DATA_256;
reg PIXEL_DATA_EN;
wire [3:0] LDM_ADDR;
wire LDM_CLK, LDM_ADDR_EN;
wire [0:15] LDM_LINE_DATA;

top u0 (clk, rstn, PIXEL_DATA_256, PIXEL_DATA_EN, LDM_CLK, LDM_ADDR_EN, LDM_ADDR, LDM_LINE_DATA);

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
	#10 PIXEL_DATA_EN = 1'b0;
end
//}} End of automatically maintained section

// Enter your statements here //

endmodule
