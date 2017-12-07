module MuxStateMach(Clk,state);
	input Clk;
	//input  On;// 0 = off, 1 = 1st comp
	output reg [3:0] state;
	
	
	//reg [1:0] fourcount;
	
	
	initial begin 
	state <= 4'd15;
	end
	
	always@(posedge Clk) begin	
			
	//	if(On == 1)begin
	//	state<=state;
	//	end
		state<=state+1;
		
	end
	
			
	

endmodule

