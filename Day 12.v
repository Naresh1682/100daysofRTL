`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:34:59 08/08/2023 
// Design Name: 
// Module Name:    multiplier_4x4 
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
module multiplier_4x4(
    input [3:0] A,B,
    input [7:0] p
    );
	 wire [15:1] w;
	 wire [10:0] c;
	 wire [5:0] s;
	 and a1(p[0],A[0],B[0]);
	 and a2(w[1],A[1],B[0]);
	 and a3(w[2],A[2],B[0]);
	 and a4(w[3],A[3],B[0]);
	 
	 and a5(w[4],A[0],B[1]);
	 and a6(w[5],A[1],B[1]);
	 and a7(w[6],A[2],B[1]);
	 and a8(w[7],A[3],B[1]);
	 
	 and a9(w[8],A[0],B[2]);
	 and a10(w[9],A[1],B[2]);
	 and a11(w[10],A[2],B[2]);
	 and a12(w[11],A[3],B[2]);
	 
	 and a13(w[12],A[0],B[3]);
	 and a14(w[13],A[1],B[3]);
	 and a15(w[14],A[2],B[3]);
	 and a16(w[15],A[3],B[3]);
	 
	 halfadder (w[1],w[4],p[1],c[0]);
	 halfadder (w[7],c[2],s[2],c[3]);
	 halfadder (w[8],s[0],p[2],c[4]);
	 halfadder (w[12],s[3],p[3],c[8]);
	 
	 fulladder(w[2],w[5],c[0],s[0],c[1]);
	 fulladder(w[3],w[6],c[1],s[1],c[2]);
	 fulladder(w[9],s[1],c[4],s[3],c[5]);
	 fulladder(w[10],s[2],c[5],s[4],c[6]);
	 fulladder(w[11],c[3],c[6],s[5],c[7]);
	 fulladder(w[13],s[4],c[8],p[4],c[9]);
	 fulladder(w[14],s[5],c[9],p[5],c[10]);
	 fulladder(w[15],c[7],c[10],p[6],p[7]);
	 
	 
	 
	 


endmodule
