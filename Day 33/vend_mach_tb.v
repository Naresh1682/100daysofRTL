`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   10:41:32 07/09/2023
// Design Name:   vend_mach
// Module Name:   C:/Users/lokes/OneDrive/Desktop/verilog proj/pwm/vend_mach_tb.v
// Project Name:  pwm
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: vend_mach
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module vend_mach_tsb;

	// Inputs
	reg clk;
	reg rst;
	reg [1:0] in;

	// Outputs
	wire out;
	wire [1:0] change;

	// Instantiate the Unit Under Test (UUT)
	vend_mach uut (
		.clk(clk), 
		.rst(rst), 
		.in(in), 
		.out(out), 
		.change(change)
	);

	initial begin
		// Initialize Inputs
		
		
		rst = 1;
		clk = 0;
		
		#6 rst =0;
		   in  = 1;
		#11	in = 2'b01;
		#16   in =2'b01;
		//#26  $finish;

		// Wait 100 ns for global reset to finish
		//#100;
        
		// Add stimulus here

	end
	always #5 clk =~clk;
      
endmodule

