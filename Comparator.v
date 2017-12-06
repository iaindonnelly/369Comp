`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/29/2017 05:25:34 PM
// Design Name: 
// Module Name: Comparator
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


module Comparator(Clk,A,X,Y,Sad,place);

input Clk;
input [7:0] A;
input [12:0] place;
output reg [5:0]X,Y;
output reg Sad;
reg [7:0]B;
reg [63:0] C;
initial begin 
 X <= 0;
 Y <= 0;
 B <= 0;
 Sad <= 0;
end
always @(*) begin
    if(A < B) begin 
        B = A;
        C = place/64;
        
        
    
end
endmodule
