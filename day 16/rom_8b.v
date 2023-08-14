`timescale 1ns / 1ps
// size of ROM
 // 2^n x m
 //n-> INPUT
 //M-> OUTPUT
module rom_8b(
    input clk,
    input rd,
    input [2:0] add,
    output reg[7:0] dt_out
    );
	 reg [7:0] Rom[0:7];
	 always@(posedge clk)
	 begin
	  if(rd)
	   dt_out<=Rom[add];
	 end
initial
 begin
  Rom[0]=8'd8;
  Rom[5]=8'd15;
  Rom[6]=8'd108;
  end

endmodule
