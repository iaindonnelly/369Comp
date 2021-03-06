`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/08/2017 07:06:52 PM
// Design Name: 
// Module Name: Sadder
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


module Sadder(A,B,Out);
input [7:0] A,B;
output reg [11:0] Out;
//initial begin
// Out <= 255;
//end
always@(*) begin
    if(B < A) begin
    Out <= A - B;
    end
    else begin 
    Out <= B - A;
    end

end
endmodule
