//-----------------------------------------------------------------------------
//
// Title       : tb_full_adder
// Design      : project2
// Author      : blaktnt@hotmail.com
// Company     : Company
//
//-----------------------------------------------------------------------------
//
// File        : C:/My_Designs/project2/project2/src/tb_full_adder.v
// Generated   : Fri Apr 18 22:57:49 2025
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
//{module {tb_full_adder}}

module tb_full_adder ();

//}} End of automatically maintained section

// Enter your statements here //
reg a, b, c_i;
wire c_o, s;
full_adder_1 fullAdder(a, b, c_i, c_o, s);

initial begin
	a = 0; b = 0; c_i = 0;
	#10 a = 0; b = 0; c_i = 1;
	#10 a = 0; b = 1; c_i = 0;
	#10 a = 0; b = 1; c_i = 1;
	#10 a = 1; b = 0; c_i = 0;
	#10 a = 1; b = 0; c_i = 1;
	#10 a = 1; b = 1; c_i = 0;
	#10 a = 1; b = 1; c_i = 1;
	end
endmodule
