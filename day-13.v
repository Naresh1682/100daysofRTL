`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    00:32:05 07/07/2023 
// Design Name: 
// Module Name:    bcd_mod 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module bcd_mod(
    input clk,
    input[0:7] eight_bit_value,
    output reg[0:3] hundreds =0,
    output reg [0:3] tens =0,
    output reg[0:3] ones =0
    );
	 
	 reg[3:0]i=0;
	 reg[19:0] shift_register =0;
	 reg temp_hundred=0;
	 reg[3:0] temp_tens =0;
	 reg[3:0] temp_ones=0;
	 reg[7:0] old_eight_bit_value=0;
	 
	 always@ (posedge clk)
	 begin
	 if(i==0&(old_eight_bit_value !=eight_bit_value))
	  begin
	   shift_register=20'd0;
	  
	   old_eight_bit_value = eight_bit_value;
	  
	   shift_register= eight_bit_value;
	   temp_hundred=shift_register[19:16];
	   temp_tens =shift_register[15:12];
	   temp_ones=shift_register[11:8];
		i=i+1;
	  
	  end
	 if(i<9&i>0)
	  begin
	   if (temp_hundred>=5)
		 temp_hundred=temp_hundred+3;
		if (temp_tens>=5)
		 temp_tens=temp_tens+3;
		if (temp_hundred>=5)
		 temp_ones=temp_ones+3;
		
		shift_register [19:8] = {temp_hundred,temp_tens,temp_ones};
		shift_register=shift_register <<1;
		
		temp_hundred = shift_register[19:16];
		temp_tens= shift_register[15:12];
		temp_ones=shift_register[11:8];
		i=i+1;
	  end
	 if(i>=9)begin
     	i=0;

      hundreds=temp_hundred;
      tens=temp_tens;
      ones=temp_ones;		 
	  end
	end
endmodule
