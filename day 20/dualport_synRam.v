`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    00:01:32 08/16/2023 
// Design Name: 
// Module Name:    dualport_synRam 
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
module dualport_synRam(clk,wr_en,rd_en,rst,
        rd_addr,wr_addr,data_in,data_out);
		  
		  parameter ram_width = 8;
		  parameter ram_depth = 256;
		  parameter add_size = 8;
		  
		  input clk,rst,wr_en,rd_en;
		  input[ram_width-1:0] data_in;
		  input[add_size-1:0] rd_addr,wr_addr;
        output reg [ram_width-1:0]data_out;
		  
		  reg[ram_width-1:0]mem[ram_depth-1:0];
		  integer i;
		  
		  always@(posedge clk)
		   begin
			 if(rst)
			  begin
			   for (i=0;i<ram_depth;i=i+1)
			        mem[i]<=0;
				data_out <= 0;
			  end	
			 else
            begin
              if(wr_en)				
                 mem[wr_addr]<=data_in;
				  if(rd_en)
				     data_out<=mem[rd_addr];
				 end
		   end

endmodule
