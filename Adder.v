`timescale 1ns / 1ps






module adder(A,B,Out);
input [11:0] A,B;
output reg [11:0] Out;

//initial begin
//    Out <= 255;
//end
always@(*) begin
Out <= A+B;
end
endmodule
