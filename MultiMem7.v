`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/07/2017 02:24:05 PM
// Design Name: 
// Module Name: MultiMem7
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module MultiMem7(Address, WriteData, Clk, MemWrite, MemRead, ReadData);
	input [7:0] Address; //index for desired data
	input [7:0] WriteData; 
	input Clk;
	input MemWrite;
	input MemRead;
	output reg [7:0] ReadData;
	
	reg [7:0] mem [0:255]; // memory for 1-16 elements
	integer i;
	initial begin 
       // for(i =0; i < 256; i = i+1) begin	// this needs replaced with the readme initialization and the data mem file broken into 16 files to be loaded from, or hard code the values
       // mem[i] <= 0;
      //  end
        // $readmemh ("Instruction_memory.data", memory);
        $readmemh ("DM7.txt", mem);
	end
	
	always@(posedge Clk) begin
		if (MemWrite == 1'b1) begin
			mem[Address] <= WriteData;
		end
	end
	always@(*)begin
		if(MemRead == 1'b1)begin
			ReadData <= mem[Address];
		end
		else
			ReadData <= 32'h0;
	end
			
	

endmodule
