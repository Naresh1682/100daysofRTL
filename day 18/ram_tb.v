`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   21:40:35 08/13/2023
// Design Name:   ram
// Module Name:   C:/Users/lokes/OneDrive/Desktop/100daysofRTL/memory/ram_tb.v
// Project Name:  memory
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: ram
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module ram_tb;

	// Inputs
	reg [7:0] dt_in;
	reg clk;
	reg [7:0] add;
	reg wr;
	reg rd;

	// Outputs
	wire [7:0] dt_out;

	// Instantiate the Unit Under Test (UUT)
	ram uut (
		.dt_in(dt_in), 
		.dt_out(dt_out), 
		.clk(clk), 
		.add(add), 
		.wr(wr), 
		.rd(rd)
	);

	initial begin
		// Initialize Inputs
		//dt_in = 0;
		clk =1'b1;
		forever #0.1 clk =~clk;
		end
		
	initial begin
	  wr=1'b1;
	  #0.1 
	  add=8'd7;
	  dt_in=8'd5;
	  #0.1
	  rd=1'b1;
	  
	  
		
		// Add stimulus here

	end
      
endmodule

