`timescale 1ns / 1ps
//parity generator 
// two types
//1. Even Parity
//2. Odd Parity

module parity_gen(
    input a,b,c,
    inout e,
	 output o 
    );
	 
	assign e =a^b^c;
	assign o = ~e;
	
endmodule
