`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   17:03:12 09/17/2023
// Design Name:   auto_washmech
// Module Name:   C:/Users/lokes/OneDrive/Desktop/100daysofRTL/washingmach/auto_washmech-tb.v
// Project Name:  washingmach
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: auto_washmech
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module auto_washmech-tb;

	// Inputs
	reg clk;
	reg reset;
	reg door_close;
	reg start;
	reg filled;
	reg detergent_added;
	reg cycle_timeout;
	reg drained;
	reg spin_timeout;

	// Outputs
	wire door_lock;
	wire motor_on;
	wire fill_value_on;
	wire drain_value_on;
	wire done;
	wire soap_wash;
	wire water_wash;

	// Instantiate the Unit Under Test (UUT)
	auto_washmech uut (
		.clk(clk), 
		.reset(reset), 
		.door_close(door_close), 
		.start(start), 
		.filled(filled), 
		.detergent_added(detergent_added), 
		.cycle_timeout(cycle_timeout), 
		.drained(drained), 
		.spin_timeout(spin_timeout), 
		.door_lock(door_lock), 
		.motor_on(motor_on), 
		.fill_value_on(fill_value_on), 
		.drain_value_on(drain_value_on), 
		.done(done), 
		.soap_wash(soap_wash), 
		.water_wash(water_wash)
	);

	initial begin
		// Initialize Inputs
		clk = 0;
		reset =1;
		door_close = 0;
		start = 0;
		filled = 0;
		detergent_added = 0;
		cycle_timeout = 0;
		drained = 0;
		spin_timeout = 0;
		always
		begin
		#10 clk=~clk;
		end

		// Wait 100 ns for global reset to finish
		#5 reset = 0;
		#5 start = 1,door_close = 1
		#10 filled = 1;
		#10 detergent_added = 1;
		#10 cycle_timeout = 1;
		#10 drained = 1;
		#10 spin_timeout = 1;
        
		// Add stimulus here

	end
      
endmodule

