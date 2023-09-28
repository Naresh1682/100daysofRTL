`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    23:40:56 09/07/2023 
// Design Name: 
// Module Name:    dff 
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
module dff(
    input d,clk,rst,
    output reg q,qb
    );
	 always@(posedge clk)
	 begin
	  if(rst==1)
	  begin
	  q=1'b0;qb=1'b1;
	  end
	  else if(d==0)
	  begin 
	  q=1'b0;qb=1'b1;
	  end
	  else if(d==1)
	  begin 
	  q=1'b1;qb=1'b0;
	  end
	  
	 
    end

endmodule
