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


module InstrToMEM(Clk,MemWrite,MemRead,MemWriteOut,MemReadOut,Count,CountO,C_EN,C_Out);

    input Clk;
    input MemWrite,MemRead,C_EN;
    input [5:0] Count;
    output reg [5:0] CountO;
    output reg MemWriteOut,MemReadOut,C_Out;
    initial begin
    MemReadOut <= 0;
    MemReadOut <= 0;
    CountO <= 0;
    C_Out <= 0;
    end
    always@(posedge Clk) begin
        C_Out <= C_EN;
         CountO <= Count;
        MemWriteOut <= MemWrite;
        MemReadOut <= MemRead;  
    end
endmodule
