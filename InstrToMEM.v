`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/06/2017 05:39:25 PM
// Design Name: 
// Module Name: InstrToMEM
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


module InstrToMEM(Clk,MemWrite,MemRead,MemWriteOut,MemReadOut);

    input Clk;
    input MemWrite,MemRead;
    output reg MemWriteOut,MemReadOut;
    initial begin
    MemReadOut <= 0;
    MemReadOut <= 0;
    end
    always@(posedge Clk) begin
        MemWriteOut <= MemWrite;
        MemReadOut <= MemRead;  
    end
endmodule
