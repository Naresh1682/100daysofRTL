`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    19:27:28 09/17/2023 
// Design Name: 
// Module Name:    PRBS_gene 
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
module PRBS_gene(
    input d,clk,rst,
    output q,
    output [3:0] qb
    );
	 wire q1,q2,q3,r;
	 
	 dff d1(r,clk,rst,q1,qb[0]);
	 dff d2(q1,clk,rst,q2,qb[1]);
	 dff d3(q2,clk,rst,q3,qb[2]);
	 dff d4(q3,clk,rst,q,qb[3]);
	 
	 xor x1(r,q,q3);


endmodule
