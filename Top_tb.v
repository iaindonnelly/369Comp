`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/07/2017 03:26:38 PM
// Design Name: 
// Module Name: Top_tb
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


module Top_tb();
    reg Clk,Rst;
    wire [11:0] Something;
    top totb(Clk,Rst,Something);
    initial begin
            Clk <= 1'b0;
            forever #250 Clk <= ~Clk;
    end
    initial begin
    Rst <= 1;
    #500
    Rst <= 0;
    end
endmodule
