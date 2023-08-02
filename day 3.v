`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    21:25:02 08/01/2023 
// Design Name: 
// Module Name:    demux1x4 
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
module demux1x4(
    input y,
    input [1:0] s,
    output a,
    output b,
    output c,
    output d
    );
	 
	 assign a=(s==2'b00)?y:1'b0;
	 assign b=(s==2'b01)?y:1'b0;
	 assign c=(s==2'b10)?y:1'b0;
	 assign d=(s==2'b11)?y:1'b0;
	 


endmodule
