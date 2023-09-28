`timescale 1ns / 1ps

module cla_adder(
    input [3:0] a,b,
    input cin,
    output [3:0] s,
    inout [2:0] c,
    output cout
    );
	 wire [3:0] P,G,g,h;
	 and a1(G[0],a[0],b[0]);
	 and a2(G[1],a[1],b[1]);
	 and a3(G[2],a[2],b[2]);
	 and a4(G[3],a[3],b[3]);
	 xor a5(P[0],a[0],b[0]);
	 xor a6(P[1],a[1],b[1]);
	 xor a7(P[2],a[2],b[2]);
	 xor a8(P[3],a[3],b[3]);
	 
	 and e1(h[0],P[0],cin);
	 and e2(h[1],P[1],c[0]);
	 and e3(h[2],P[2],c[1]);
	 and e4(h[3],P[3],c[2]);
	 
	 or r1(c[0],G[0],h[0]);
	 or r2(c[1],G[1],h[1]);
	 or r3(c[2],G[2],h[2]);
	 or r4(cout,G[3],h[3]);
	 
	 xor o1(s[0],P[0],cin);
	 xor o2(s[1],P[1],c[0]);
	 xor o3(s[2],P[2],c[1]);
	 xor o4(s[3],P[3],c[2]);
   

endmodule
