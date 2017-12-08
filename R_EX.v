`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/29/2017 05:24:30 PM
// Design Name: 
// Module Name: R_EX
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


module R_EX(A1,B1,
            A2,B2,
            A3,B3,
            A4,B4,
            A5,B5,
            A6,B6,
            A7,B7,
            A8,B8,
            A9,B9,
            A10,B10,
            A11,B11,
            A12,B12,
            A13,B13,
            A14,B14,
            A15,B15,
            A16,B16,
            A1out,B1out,  
            A2out,B2out,  
            A3out,B3out,  
            A4out,B4out,  
            A5out,B5out,  
            A6out,B6out,  
            A7out,B7out,  
            A8out,B8out,  
            A9out,B9out,  
            A10out,B10out,
            A11out,B11out,
            A12out,B12out,
            A13out,B13out,
            A14out,B14out,
            A15out,B15out,
            A16out,B16out,
            Count,CountO,
            C_EN,C_Out,
            Clk
             );

            input C_EN;
           input Clk; 
           input[7:0] A1,B1;
           input[7:0] A2,B2;
           input[7:0] A3,B3;
           input[7:0] A4,B4;
           input[7:0] A5,B5;
           input[7:0] A6,B6;
           input[7:0] A7,B7;
           input[7:0] A8,B8;
           input[7:0] A9,B9;
           input[7:0] A10,B10;
           input[7:0] A11,B11;
           input[7:0] A12,B12;
           input[7:0] A13,B13;
           input[7:0] A14,B14;
           input[7:0] A15,B15;
           input[7:0] A16,B16;
           input [5:0] Count;
           output reg [5:0] CountO;
           output reg C_Out;
          output reg[7:0] A1out,B1out;
          output reg[7:0] A2out,B2out;
          output reg[7:0] A3out,B3out;
          output reg[7:0] A4out,B4out;
          output reg[7:0] A5out,B5out;
          output reg[7:0] A6out,B6out;
          output reg[7:0] A7out,B7out;
          output reg[7:0] A8out,B8out;
          output reg[7:0] A9out,B9out;
          output reg[7:0] A10out,B10out;
          output reg[7:0] A11out,B11out;
          output reg[7:0] A12out,B12out;
          output reg[7:0] A13out,B13out;
          output reg[7:0] A14out,B14out;
          output reg[7:0] A15out,B15out;
          output reg[7:0] A16out,B16out;
           initial begin
                     A1out <= 0;
                       B1out<=0;
                       A2out<=0;
                       B2out<=0;
                       A3out<=0;
                       B3out<=0;        
                       A4out<=0;
                       B4out<=0;
                       A5out<=0;
                       B5out<=0;
                       A6out<=0;
                       B6out<=0;
                       A7out<=0;
                       B7out<=0;
                       A8out<=0;
                       B8out<=0;
                       A9out<=0;
                       B9out<=0;
                      A10out<=0;
                      B10out<=0;
                      A11out<=0;
                      B11out<=0;
                      A12out<=0;
                      B12out<=0;
                      A13out<=0;
                      B13out<=0;
                      A14out<=0;
                      B14out<=0;
                      A15out<=0;
                      B15out<=0;
                      A16out<=0;
                      B16out<=0;
                      CountO <= 0;
                      C_Out <=0;
   
           end         
           always@(posedge Clk) begin
            A1out <= A1;
            B1out<=B1;  
            A2out<=A2;
            B2out<=B2;  
            A3out<=A3;
            B3out<=B3;          
            A4out<=A4;
            B4out<=B4;  
            A5out<=A5;
            B5out<=B5;  
            A6out<=A6;
            B6out<=B6;  
            A7out<=A7;
            B7out<=B7;  
            A8out<=A8;
            B8out<=B8;  
            A9out<=A9;
            B9out<=B9;  
           A10out<= A10;
           B10out<= B10;
           A11out<= A11;
           B11out<= B11;
           A12out<= A12;
           B12out<= B12;
           A13out<= A13;
           B13out<= B13;
           A14out<= A14;
           B14out<= B14;
           A15out<= A15;
           B15out<= B15;
           A16out<= A16;
           B16out<= B16;
           CountO <= Count;
           C_Out <= C_EN;
            end 
            
            endmodule