`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    00:03:09 08/03/2023 
// Design Name: 
// Module Name:    decoder1x8 
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
module decoder1x8(
    input [2:0] a,
    output [7:0] d
    );
	 wire c,f,e;
	 assign c=~a[0];
	 assign d=~a[1];
	 assign e=~a[2];
	 
	 assign d[0]=c&f&e;
	 assign d[1]=c&f&a[0];
	 assign d[2]=c&a[1]&e;
	 assign d[3]=c&a[1]&a[0];
	 assign d[4]=a[2]&f&e;
	 assign d[5]=a[2]&f&a[0];
	 assign d[6]=a[2]&a[1]&e;
	 assign d[7]=a[2]&a[1]&a[0];
	 


endmodule
