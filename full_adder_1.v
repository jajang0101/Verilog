//-----------------------------------------------------------------------------
//
// Title       : full_adder_1
// Design      : project2
// Author      : blaktnt@hotmail.com
// Company     : Company
//
//-----------------------------------------------------------------------------
//
// File        : C:/My_Designs/project2/project2/src/full_adder_1.v
// Generated   : Fri Apr 18 22:50:45 2025
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
//{module {full_adder_1}}

module full_adder_1 (a, b, c_i, c_o, s);
	input a, b, c_i;
	output s, c_o;
	
	wire s1, c1, c2;
	
	xor (s1, a, b);
	and (c1, a, b);
	and G3 (c2, s1, c_i);
	xor G4 (s ,s1, c_i);
	xor G5 (c_o, c1, c2);

//}} End of automatically maintained section

// Enter your statements here //

endmodule
