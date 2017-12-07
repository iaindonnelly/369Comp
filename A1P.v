`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/06/2017 06:08:47 PM
// Design Name: 
// Module Name: A1P
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


module A1P(AOut1,AOut2,AOut3,AOut4,AOut5,AOut6,AOut7,AOut8,
            A1Out1,A1Out2,A1Out3,A1Out4,A1Out5,A1Out6,A1Out7,A1Out8,Clk);
    input Clk;
    input [7:0] AOut1,AOut2,AOut3,AOut4,AOut5,AOut6,AOut7,AOut8;    
    output reg [7:0] A1Out1,A1Out2,A1Out3,A1Out4,A1Out5,A1Out6,A1Out7,A1Out8;
    
    initial begin
            A1Out1 <= 0;
            A1Out2 <= 0;
            A1Out3 <= 0;
            A1Out4 <= 0;
            A1Out5 <= 0;
            A1Out6 <= 0;
            A1Out7 <= 0;
            A1Out8 <= 0;
    end
    
    always@(posedge Clk) begin
        A1Out1 <= AOut1;
        A1Out2 <= AOut2;
        A1Out3 <= AOut3;
        A1Out4 <= AOut4;
        A1Out5 <= AOut5;
        A1Out6 <= AOut6;
        A1Out7 <= AOut7;
        A1Out8 <= AOut8;
    end
endmodule
