`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   22:32:12 08/24/2023
// Design Name:   pipe_ex
// Module Name:   C:/Users/lokes/OneDrive/Desktop/100daysofRTL/pipelining/pipe_test.v
// Project Name:  pipelining
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: pipe_ex
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module pipe_test;

	// Inputs
	reg [9:0] A;
	reg [9:0] B;
	reg [9:0] C;
	reg [9:0] D;
	reg clk;

	// Outputs
	wire [9:0] F;

	// Instantiate the Unit Under Test (UUT)
	pipe_ex uut (
		.A(A), 
		.B(B), 
		.C(C), 
		.D(D), 
		.clk(clk), 
		.F(F)
	);
	
	initial clk = 0;
	always #10 clk = ~clk;

	initial begin
		// Initialize Inputs
	#5	   A = 10;B = 12;C = 6;D = 3;
	#10 	A = 10;B = 10;C = 5;D = 3;
	#20	A = 20;B = 11;C = 1;D = 4;
	#20	A = 15;B = 10;C = 8;D = 2;
		// Wait 100 ns for global reset to finish
	
        
		// Add stimulus here

	end
	
      
endmodule

