`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    17:15:55 08/08/2023 
// Design Name: 
// Module Name:    halfsubractor 
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
module halfsubractor(
    input a,b,
    output d,bo
    );
	 wire w =~a;
	 assign d = a^b;
	 assign bo = w&b;
	 
	 


endmodule
