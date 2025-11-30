//-----------------------------------------------------------------------------
//
// Title       : top
// Design      : ldm
// Author      : csie
// Company     : CUK
//
//-----------------------------------------------------------------------------
//

module top (input clk, input rstn, input [0:255] PIXEL_DATA_256, input PIXEL_DATA_EN, output LDM_CLK, output LDM_ADDR_EN, output [0:3] LDM_ADDR, output [0:15] LDM_LINE_DATA);

fsm u0 (clk, rstn, LDM_CLK, LDM_ADDR_EN, LDM_ADDR);
p2s u1 (clk, rstn, PIXEL_DATA_256, PIXEL_DATA_EN, LDM_ADDR, LDM_LINE_DATA);

endmodule
