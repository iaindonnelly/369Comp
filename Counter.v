`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/07/2017 12:26:35 PM
// Design Name: 
// Module Name: Counter
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


module Counter(A,B,Clk,Reset);
    input Clk;
    input Reset;
    input [5:0] A;
    output reg [5:0] B;
    initial begin
    B <= 0;
    end
    always@(posedge Clk) begin
    //if((A - 60) >> 6
        if(Reset) begin
            B <= 0;
        end
        else begin
            if(B == 6'd61) begin
                B <= 1;
            end 
            else begin 
                B <= A + 1;
            end
        end
    end 
endmodule
