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


module Comparator(Clk,A,X,Y,Sad,Xin,en);

    input Clk;
    input en;
    input [11:0] A;
    input [5:0] Xin;//,Yin;
    output reg [5:0]X,Y;
    output reg [11:0] Sad;
    reg [11:0]B;
    reg [5:0] Count;
    reg [5:0] XH,YH;
    //reg [63:0] C;
    initial begin 
    
     X <= 0;
     Y <= 0;
     B <= 4080;
     Sad <= 0;
     Count <= 0;
     XH <= 0;
     YH <= 0;
    end
    always @(negedge Clk) begin 
        if(en) begin
            if(A < B) begin
                B <= A;
                X <= Xin;
                Y <= Count;
                Sad <= A;  
                XH <= Xin; //might be unnec
                YH <= Count;
                Sad <= A;  
            end
            else begin
                Sad <= B;
                X <= XH;
                Y <= YH;
            end 
            
            if(Xin == 6'd61)begin
                Count <= Count + 1;
            end  //Y 
        end
end
endmodule
