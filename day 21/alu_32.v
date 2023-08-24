`timescale 1ns / 1ps
////////////////////////////////
module alu_32(
    input [31:0] a,b,
    output reg [31:0] result,
    input en,
    input [2:0] opcode
    );
	 
	 always@(a,b,opcode,en)
	   begin
		  if(en==1)
		   begin
			 case(opcode)
			 3'b000:result=a+b;
			 3'b000:result=a-b;
			 3'b000:result=a+1;
			 3'b000:result=a-1;
			 
			 3'b000:result=a;
			 3'b000:result=~a;
			 3'b000:result=a&b;
			 3'b000:result=a|b;
			 
			 default:result=32'b0;
			 endcase
			end
        else
         result=32'bz;		  
		end
	 


endmodule
