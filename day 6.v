`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    23:50:42 08/02/2023 
// Design Name: 
// Module Name:    encoder8x1 
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
module encoder8x1(
    input [7:0] d,
    output [2:0] a
    );
	 
	 assign a[0]=d[1]|d[3]|d[5]|d[7];
	 assign a[1]=d[2]|d[3]|d[6]|d[7];
	 assign a[2]=d[4]|d[5]|d[6]|d[7];


endmodule
