`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    22:28:11 07/30/2023 
// Design Name: 
// Module Name:    logicgate 
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
module logicgate(
    input a,b,
    output [6:0]z
    );
	 assign z[0]=a&b;      //AND
	 assign z[1]=a|b;      //OR
	 assign z[2]=~a;       //NOT
	 assign z[3]=~(a&b);   //NAND
	 assign z[4]=~(a|b);   //NOR
	 assign z[5]=a^b;      //Ex-OR
	 assign z[6]=(a^b);    //Ex-NOR
	 


endmodule
