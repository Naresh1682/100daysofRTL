`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////

module seq_det(
    input d,clk,rst,
    input [3:0] i,
    output q,
	 output[3:0] qb,
    output s
    );
	 wire q1,q2,q3;
	 wire[3:0] y;
	 
	 dff d1(d,clk,rst,q1,qb[0]);
	 dff d2(q1,clk,rst,q2,qb[1]);
	 dff d3(q2,clk,rst,q3,qb[2]);
	 dff d4(q3,clk,rst,q,qb[3]);
	 
	 xor x1(y[0],q,i[0]);
	 xor x2(y[1],q3,i[1]);
	 xor x3(y[2],q2,i[2]);
	 xor x4(y[3],q1,i[3]);
	 
	 and a1(s,y[0],y[1],y[2],y[3]);
	 
	 
endmodule
