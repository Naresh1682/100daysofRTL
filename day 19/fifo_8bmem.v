`timescale 1ns / 1ps

module fifo_8bmem(
    input [7:0] dt_in,
    input clk,rst,rd,wr,
    output reg [7:0] dt_out,
    output reg [3:0] fifo_count,
    output empty,full
    );
	 reg [7:0]fifo_ram[0:7];
	 reg [2:0]rd_pointer,wr_pointer;
	 
	 //empty full checkout
	 assign empty=fifo_count==4'd0;
	 assign full =fifo_count==4'd8;
	 
	 // read and write 
	 always@(posedge clk)begin:write
     if(wr && !full)
	  fifo_ram[wr_pointer]<=dt_in;
	  else if(wr && rd)
	  fifo_ram[wr_pointer]<=dt_in;
	  end
	  
	 always@(posedge clk)begin:read
	  if(rd && !empty)
	   dt_out <= fifo_ram[rd_pointer];
	  else if(wr && rd)
	   dt_out <= fifo_ram[rd_pointer];
		end
		
	always@(posedge clk) begin: pointer
	  if(rst) begin
	   wr_pointer<=0;
		rd_pointer<=0;
	   end
	  else begin
	  wr_pointer<=((wr && !full)||(wr && rd))?wr_pointer+1:wr_pointer;
	  rd_pointer<=((rd && !empty)||(wr && rd))?rd_pointer+1:rd_pointer;
	  end
	 end
	 
	always@(posedge clk)begin:counter
	if(rst)begin
	 fifo_count=0;
	 end
	else begin
	 case(wr,rd)
	  2'b00=fifo_count;
	  2'b01=fifo_count-1;
	  2'b10=fifo_count+1;
	  2'b11=fifo_count;
	 default :fifo_count<=fifo_count;
	
	 endcase
end
end	 
	  
	 
		
	  
endmodule
