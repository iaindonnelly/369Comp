`timescale 1ns / 1ps

module MemStateMach(Clk,On,AddressC1,AddressC2,AddressC3,AddressC4);
	input Clk;
	input On;// 0 = run, 1 = first comparison
	
	output reg [7:0] AddressC1;
	output reg [7:0] AddressC2;
	output reg [7:0] AddressC3;
	output reg [7:0] AddressC4;
	
	reg [1:0] fourcount;
	reg [7:0] holder;
	
	initial begin 
    AddressC1 <= 8'b0;
	AddressC2 <= 8'b0;
	AddressC3 <= 8'b0;
	AddressC4 <= 8'b0;
	fourcount <= 2'b0;
	end
	
	always@(posedge Clk,On) begin			
		if(fourcount == 2'd0)begin
			if(On == 0)begin 
			AddressC1 <= AddressC1+1; // moves to next first column for window frame comparison
				end
			end
		if(fourcount == 2'd1)begin
			if(On == 1)begin
				AddressC1<=AddressC1+1;
				end
			AddressC2 <= AddressC2 + 1;
			end
		if(fourcount == 2'd2)begin
			AddressC3 <= AddressC3 + 1;
			end
		if(fourcount == 2'd3)begin
			AddressC4 <= AddressC4 + 1;
			end
		fourcount <= fourcount + 1;
		
	end
	
			
	

endmodule
