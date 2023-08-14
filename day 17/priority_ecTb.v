`timescale 1ns / 1ps



module priority_ecTb;

	// Inputs
	reg [7:0] i;
	reg en;

	// Outputs
	wire [2:0] y;

	// Instantiate the Unit Under Test (UUT)
	priority_enc uut (
		.i(i), 
		.en(en), 
		.y(y)
	);

	initial begin
		// Initialize Inputs
		//i = 0;
		en = 1'b1;
		#0.1
		i=8'b00100000;
		#0.1
		i=8'b00000100;

		// Wait 100 ns for global reset to finish
		#5;
        
		// Add stimulus here

	end
      
endmodule

