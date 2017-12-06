`timescale 1ns / 1ps

module MemStateMach(Clk,On,MUXControl);
	input Clk;
	input  On;// 0 = off, 1 = 1st comp
	
	output reg [3:0] state;
	
	
	reg [1:0] fourcount;
	
	
	initial begin 
	state <= 4'd0;
	end
	
	always@(posedge Clk,On) begin			
		if(On == 1)begin
		state<=state;
		end
		state<=state+1;
		
	end
	
			
	

endmodule
