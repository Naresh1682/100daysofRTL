`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   11:42:06 08/14/2023
// Design Name:   rom_8b
// Module Name:   C:/Users/lokes/OneDrive/Desktop/100daysofRTL/memory/rom_tb.v
// Project Name:  memory
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: rom_8b
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module rom_tb;

	// Inputs
	reg clk;
	reg rd;
	reg [2:0] add;

	// Outputs
	wire [7:0] dt_out;

	// Instantiate the Unit Under Test (UUT)
	rom_8b uut (
		.clk(clk), 
		.rd(rd), 
		.add(add), 
		.dt_out(dt_out)
	);

	initial begin
		// Initialize Inputs
		clk =1'b1;
		forever #0.1 clk =~clk;
		end
		
	initial begin
	  rd=1'b1;
	  #0.1
	  add=3'd6;
	  #0.5
	 // rd=1'b1;
	  add=3'd5;
	 

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
      
endmodule

