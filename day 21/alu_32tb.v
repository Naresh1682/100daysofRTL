`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   08:47:28 08/11/2023
// Design Name:   alu_32
// Module Name:   C:/Users/lokes/OneDrive/Desktop/100daysofRTL/demux4x1/alu_32tb.v
// Project Name:  demux4x1
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: alu_32
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module alu_32tb;

	// Inputs
	reg [31:0] a;
	reg [31:0] b;
	reg en;
	reg [2:0] opcode;

	// Outputs
	wire [31:0] result;

	// Instantiate the Unit Under Test (UUT)
	alu_32 uut (
		.a(a), 
		.b(b), 
		.result(result), 
		.en(en), 
		.opcode(opcode)
	);

	initial begin
		// Initialize Inputs
		a = 0;
		b = 0;
		en = 1'b0;
		#10 en=1'b1;
		a=32'd4;b=32'd2;
		
		opcode = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
      
endmodule

