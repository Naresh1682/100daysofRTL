`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    23:29:46 09/07/2023 
// Design Name: 
// Module Name:    jkff 
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
module jkff(
    input j,k,clk,rst,
    output reg q,qb
    );
	 always@(posedge clk)
	 begin
	  if(rst ==1)
	   begin
		 q=1'b0;qb=1'b1;
		end
	  else if(j==0 && k==0)
	   begin
		 q=q;qb=qb;
		 end
	  else if(j==0 && k==1)
	   begin
		 q=1'b0;qb=1'b1;
		 end
     else if(j==1 && k==0)
	   begin
		 q=1'b1;qb=1'b0;
		 end
     else if(j==1 && k==1)
	   begin
		 q=~q;qb=~qb;
		 end		 
	 end


endmodule
