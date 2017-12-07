`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/06/2017 03:33:11 PM
// Design Name: 
// Module Name: 16To1Mux
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


module MegaMux(A,B,C,D,E,F,G,H,I,J,K,L,O,M,N,P,Out,Sel);

input [7:0] A,B,C,D,E,F,G,H,I,J,K,L,O,M,N,P;
input [3:0] Sel;
output reg [7:0] Out;
always @(*) begin
    if (Sel == 0) begin
        Out <= A;
    end
    else if (Sel == 1) begin
        Out <= B;
    end
    else if (Sel == 2) begin
        Out <= C;
    end
    else if (Sel == 3) begin
        Out <= D;
    end
    else if (Sel == 4) begin
        Out <= E;
    end
    else if (Sel == 5) begin
        Out <= F;
    end
    else if (Sel == 6) begin
        Out <= G;
    end
    else if (Sel == 7) begin
        Out <= H;
    end
    else if (Sel == 8) begin
        Out <= I;
    end
    else if (Sel == 9) begin
        Out <= J;
    end
    else if (Sel == 10) begin
        Out <= K;
    end
    else if (Sel == 11) begin
        Out <= L;
    end
    else if (Sel == 12) begin
        Out <= O;
    end
    else if (Sel == 13) begin
        Out <= M;
    end
    else if (Sel == 14) begin
        Out <= N;
    end
    else if (Sel == 15) begin
        Out <= P;
    end
    else begin
        Out <= 0;
    end
end
endmodule
