`timescale 1ns / 1ps

module cpu_8bit(
    input clk,
    input rst,
    output halt
    );
	 reg [4:0] pc;
	 reg [7:0] acc;
	 
	 reg [7:0] mem[31:0];
	 
	 wire[7:0] instr = mem[pc];
	 wire[2:0] opcode = instr[7:5];
	 wire[4:0] operand = instr[4:0];
	 wire[7:0]rvalue = mem[operand];
	 
	 always@ (posedge clk)
	 if(rst)
	   pc<=0;
	 else
	  begin
	   case(opcode)
		  3'b000:begin 
		    pc <= pc;
		  end
		  3'b001:begin 
		    pc <= pc+1+(!acc);
		  end
		  3'b010:begin 
		    acc <= acc + rvalue;
			 pc <= pc+1;
			 
		  end
		  3'b011:begin 
		    acc<= acc & rvalue;
		    pc <= pc+1;
			 
		  end
		  3'b100:begin
          acc<= acc^rvalue;		  
		    pc <= pc+1;
		  end
		  3'b101:begin 
		    acc <= rvalue;
		    pc <= pc;
		  end
		  3'b110:begin 
		    mem[operand]<= acc;
		    pc <= pc;
		  end
		  3'b111:begin
		    pc<=operand;
		  end
		  
		 endcase
		end
		assign hlt = opcode==0;
	 


endmodule
