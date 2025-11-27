//-----------------------------------------------------------------------------
//
// Title       : tb1
// Design      : project2
// Author      : user
// Company     : cat
//
//-----------------------------------------------------------------------------
//
// File        : C:/Users/user/Desktop/project2/project2/src/tb1.v
// Generated   : Fri Apr 18 15:05:33 2025
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
//{module {tb1}}

module tb1 ();

//}} End of automatically maintained section

// Enter your statements here //

reg [3:0] a;
reg enable;
wire [1:0] y;
encoder3 encoder(a, enable, y, valid); 

initial begin
		a = 4'b0001; enable = 1;
		#10 a = 4'b0010; enable = 1;
		#10 a = 4'b0100; enable = 1;
		#10 a = 4'b1000; enable = 1;
		#10 a = 4'b0000; enable = 1; 
		#10 a = 4'b0001; enable = 0;
		#10 a = 4'b0010; enable = 0;
		#10 a = 4'b0100; enable = 0;
		#10 a = 4'b1000; enable = 0; 
		#10 a = 4'b1111; enable = 0;
	end
endmodule
