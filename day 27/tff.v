`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////

module tff(
    input clk,rst,t,
    output q,qb
    );
	 
	 reg q,qb;
	 always@(posedge clk)
	 begin
	 if(t==0)
	 begin
	 q=1'b0;
	 qb=1'b1;
	 end
	 else
	 if(t==0)
	 begin
	 begin
	 q=q;
	 qb=qb;
	 end
	 else
	 if(t==1)
	 begin
	 q=~q;
	 qb=~qb;
	 end
	 


endmodule
