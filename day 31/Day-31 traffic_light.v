`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    20:53:29 09/14/2023 
// Design Name: 
// Module Name:    traffic_light 
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
module traffic_light(
    input clk,rst,
    output reg [2:0] light_m1,
    output reg [2:0] light_m2,
    output reg [2:0] light_mt,
    output reg [2:0] light_s
    );
	 parameter s1=0,s2=1,s3=2,s4=3,s5=4,s6=5;
	 reg [3:0]count;
	 reg[2:0] PS;
	 parameter sec7=7;sec2=2;sec5=5;sec3=3;
	 
	 alwaya@(posedge clk or posedge rst)
	 begin
	  if(rst == 1)
	  begin
	  PS<=s1;
	  count<=0;
	  end
	  else
	   begin
	   case(PS)
		 s1:if(count<sec7)
		    begin
          PS<=s1;
			 count<=count+1;
			 end
			 else
			 begin
			 PS<=s2;
			 count<=0;
			 end
		 s2:if(count<sec2)
		    begin
          PS<=s2;
			 count<=count+1;
			 end
			 else
			 begin
			 PS<=s3;
			 count<=0;
			 end
		 s3:if(count<sec5)
		    begin
          PS<=s3;
			 count<=count+1;
			 end
			 else
			 begin
			 PS<=s4;
			 count<=0;
			 end
		s4:if(count<sec2)
		    begin
          PS<=s4;
			 count<=count+1;
			 end
			 else
			 begin
			 PS<=s5;
			 count<=0;
			 end
		 s5:if(count<sec3)
		    begin
          PS<=s5;
			 count<=count+1;
			 end
			 else
			 begin
			 PS<=s6;
			 count<=0;
			 end
		 s6:if(count<sec2)
		    begin
          PS<=s5;
			 count<=count+1;
			 end
			 else
			 begin
			 PS<=s0;
			 count<=0;
			 end
		default:PS<=s1;
		endcase
		
	 end
	 always@(PS)
	 begin
	    case(PS)
		 s1:begin
		    light_m1<=3'b001;
			 light_m2<=3'b001;
			 light_mt<=3'b100;
			 light_s<=3'b100;
			 end
		 s2:begin
		    light_m1<=3'b001;
			 light_m2<=3'b010;
			 light_mt<=3'b100;
			 light_s<=3'b100;
			 end
		 s3:begin
		    light_m1<=3'b001;
			 light_m2<=3'b100;
			 light_mt<=3'b001;
			 light_s<=3'b100;
			 end
		 s4:begin
		    light_m1<=3'b010;
			 light_m2<=3'b100;
			 light_mt<=3'b010;
			 light_s<=3'b100;
			 end
		 s5:begin
		    light_m1<=3'b100;
			 light_m2<=3'b100;
			 light_mt<=3'b100;
			 light_s<=3'b001;
			 end
		 s6:begin
		    light_m1<=3'b100;
			 light_m2<=3'b100;
			 light_mt<=3'b100;
			 light_s<=3'b010;
			 end
		 default:PS<=s1;
		 endcase
	end

endmodule
