//-----------------------------------------------------------------------------
//
// Title       : top
// Design      : ldm
// Author      : csie
// Company     : CUK
//
//-----------------------------------------------------------------------------
//
// File        : c:/My_Designs/ldm_1/ldm/src/top.v
// Generated   : Fri Jun 20 18:15:54 2025
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
//{module {top}}

module top (input reg clk, input reg rstn, input reg [0:255] PIXEL_DATA_256, input reg PIXEL_DATA_EN, output LDM_CLK, output LDM_ADDR_EN, output [0:3] LDM_ADDR, output [0:15] LDM_LINE_DATA);

fsm u0 (clk, rstn, LDM_CLK, LDM_ADDR_EN, LDM_ADDR);
p2s u1 (clk, rstn, PIXEL_DATA_256, PIXEL_DATA_EN, LDM_ADDR, LDM_LINE_DATA);
//}} End of automatically maintained section

// Enter your statements here //

endmodule
