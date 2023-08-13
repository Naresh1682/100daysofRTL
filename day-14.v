`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:13:52 08/13/2023 
// Design Name: 
// Module Name:    comparator_4 
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
module comparator_4(
    input [3:0] a,b,
    output [2:0] y
    );
	 
	 assign y[0]=a>b;
	 assign y[1]=(a==b);
	 assign y[2]=a<b;
	 
endmodule
	 
	 
	 



