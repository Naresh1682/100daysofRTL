`timescale 1ns / 1ps

module ram(
    input [7:0]dt_in,
    output [7:0]dt_out,
    input clk,
    input [2:0] add,
    input wr,
    input rd
    );
	 reg [7:0] Ram[0:7];
	 always@(posedge clk)
	  begin 
	      if(wr)
			Ram[add]<=dt_in;
			end
	 assign dt_out=rd?Ram[add]:8'bzzzzzzzz;


endmodule
