`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    17:20:43 08/08/2023 
// Design Name: 
// Module Name:    fullsubractor 
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
module fullsubractor(
    input a,b,bi,
    output d,bo
    );
	 wire w=~a;
	 assign d=a^b^bi;
	 assign bo=w&b|w&bi|b&bi;


endmodule
