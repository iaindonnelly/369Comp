`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/06/2017 05:02:57 PM
// Design Name: 
// Module Name: Controller
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


module Controller(Instruction,MemWrite,MemRead,C_EN);
    
    input [31:0] Instruction;
    output reg MemWrite,MemRead,C_EN;
    
    
    always@(*) begin
        if(Instruction == 1) begin
             MemWrite <= 0;
             MemRead <= 1;
             C_EN <= 1;
        end
        else begin
             MemWrite <= 0;
             MemRead <= 0;
             C_EN <= 1;
        end
    end
endmodule
