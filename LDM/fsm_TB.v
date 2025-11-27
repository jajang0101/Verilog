//-----------------------------------------------------------------------------
//
// Title       : fsm_TB
// Design      : ldm
// Author      : csie
// Company     : CUK
//
//-----------------------------------------------------------------------------
//
// File        : c:/My_Designs/ldm_1/ldm/src/fsm_TB.v
// Generated   : Fri Jun 20 16:16:27 2025
// From        : Interface description file
// By          : ItfToHdl ver. 1.0
//
//-----------------------------------------------------------------------------
//
// Description : 
//
//-----------------------------------------------------------------------------

`timescale 1ns / 1ps

//{{ Section below this comment is automatically maintained
//    and may be overwritten
//{module {fsm_TB}}

module fsm_TB ();
reg clk, rstn;
wire LDM_CLK, LDM_ADDR_EN;
wire [3:0] LDM_ADDR;

fsm U1 (clk, rstn, LDM_CLK, LDM_ADDR_EN, LDM_ADDR);

initial begin
	clk = 1'b0;
	forever #10 clk = ~clk;	
end
initial begin
	rstn = 1'b0;
	#10 rstn = 1'b1;
end

endmodule
