`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    23:18:56 09/07/2023 
// Design Name: 
// Module Name:    srff 
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
module srff(
    input s,r,
    input clk,rst,
    output reg q,qb
    );
	
	 always@(posedge clk)
	  begin
	   if(rst ==1)
	    begin
		  q=1'b0;qb=1'b1;
		 end
		else if(s==0 && r==0)
		 begin
		  q=q;qb=qb;
		 end
		else if(s==0 && r==1)
		 begin
		  q=1'b0;qb=1'b1;
		 end
		else if(s==1 && r==0)
		 begin
		  q=1'b1;qb=1'b0;
		 end
		else if(s==1 && r==1)
		 begin
		  q=1'bx;qb=1'bx;
		 end
		
	 end


endmodule
