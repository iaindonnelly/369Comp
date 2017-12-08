module MuxStateMach(Clk,state,On);
	input Clk;
	input  On;// 0 = off, 1 = 1st comp
	output reg [3:0] state;
	
	
	reg [3:0] fourcount;
	//reg [1:0] 2For;
	
	
	initial begin 
	state <= 4'd0;
	fourcount <= 0;
	end
	
	always@(posedge Clk) begin	
	 if(On)begin
	    if(fourcount < 3) begin
	       if(state == 4'd3) begin
	           state <= 0;
	           fourcount = fourcount + 1;
	       end
	       else begin
	           state = state + 1;
	       end 
		end
		else if((fourcount < 6) )begin
		   if(state == 4'd7) begin
               state <= 4'd4;
               fourcount = fourcount + 1;
           end
           else begin
               state = state + 1;
           end 
		end
		else if(fourcount < 10) begin
           if(state == 4'd11) begin
               state <= 4'd8;
               fourcount = fourcount + 1;
           end
           else begin
               state = state + 1;
           end 
		end
		else if(fourcount < 14) begin
		   if(state == 4'd15) begin
               state <= 4'd12;
               fourcount = fourcount + 1;
           end
           else begin
               state <= state + 1;
           end 
		end
		else begin
		state <= state + 1;
		fourcount <= 0;
		end
		
	   end	
	end
	
			
	

endmodule

