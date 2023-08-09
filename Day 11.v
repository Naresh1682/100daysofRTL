`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:58:35 08/08/2023 
// Design Name: 
// Module Name:    Multiplier2x2 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module Multiplier2x2(
    input [1:0] A,B,
    output [3:0] p
    );
	 wire w1,w2,w3,c1;
	 
	 and n1(p[0],A[0],B[0]);
	 and n2(w1,A[0],B[1]);
	 
	 and n3(w2,A[1],B[0]);
	 and n4(w3,A[1],B[1]);
	 
	 halfadder a1(w1,w2,p[1],c1);
	 halfadder a2(c1,w3,p[2],p[3]);
	  


endmodule
