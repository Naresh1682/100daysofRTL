`timescale 1ns / 1ps

/* 
pipelining of simple circuit 
here inside the always block we use a non blocking type of assigning.so,that all the statements execute parallelly 
this lead to error so for I mention delay for each statement of execution  
*/

module pipe_ex(
    input[9:0] A,B,C,D,
	 input clk,
    output  [9:0]F
    );
	 reg L12_X1,L12_X2,L12_D,L23_X3,L23_D,L34_F;
	 
	 assign F = L34_F;
	 always@(posedge clk)
	 begin
	  L12_X1 <= #4 A+B;
	  L12_X2 <= #4 C-D;
	  L12_D <=D;
	  L23_X3 <= #4 L12_X1+L12_X2;
	  L23_D <=L12_D;
	  L34_F <= #6 L23_X3+L23_D;
	 end
	 
endmodule
