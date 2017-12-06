`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/08/2017 07:18:01 PM
// Design Name: 
// Module Name: top
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


module top(Clk,Reset,Something);

input Clk,Reset;

output reg Something;
wire   A1,B1,Out1;
wire   A2,B2,Out2;
wire   A3,B3,Out3;
wire   A4,B4,Out4;
wire   A5,B5,Out5;
wire   A6,B6,Out6;
wire   A7,B7,Out7;
wire   A8,B8,Out8;
wire   A9,B9,Out9;
wire  A10,B10,Out10;
wire  A11,B11,Out11;
wire  A12,B12,Out12;
wire  A13,B13,Out13;
wire  A14,B14,Out14;
wire  A15,B15,Out15;
wire  A16,B16,Out16;
wire  AOut1;
wire  AOut2;
wire  AOut3;
wire  AOut4;
wire  AOut5;
wire  AOut6;
wire  AOut7;
wire  AOut8;
wire  AOut9;
wire  AOut10;
wire  AOut11;
wire  AOut12;
wire  AOut13;
wire  AOut14;
wire  AOut15;



 InstrToMEMpipeline I_MEM();
  
 MemStateMach mem_state(Clk,On,AddressC1,AddressC2,AddressC3,AddressC4);
  
 MultiMem DM1(Address, WriteData, Clk, MemWrite, MemRead, ReadData); 
 MultiMem DM2(Address, WriteData, Clk, MemWrite, MemRead, ReadData); 
 MultiMem DM3(Address, WriteData, Clk, MemWrite, MemRead, ReadData); 
 MultiMem DM4(Address, WriteData, Clk, MemWrite, MemRead, ReadData); 
 MultiMem DM5(Address, WriteData, Clk, MemWrite, MemRead, ReadData); 
 MultiMem DM6(Address, WriteData, Clk, MemWrite, MemRead, ReadData); 
 MultiMem DM7(Address, WriteData, Clk, MemWrite, MemRead, ReadData); 
 MultiMem DM8(Address, WriteData, Clk, MemWrite, MemRead, ReadData); 
 MultiMem DM9(Address, WriteData, Clk, MemWrite, MemRead, ReadData); 
 MultiMem DM10(Address, WriteData, Clk, MemWrite, MemRead, ReadData); 
 MultiMem DM11(Address, WriteData, Clk, MemWrite, MemRead, ReadData); 
 MultiMem DM12(Address, WriteData, Clk, MemWrite, MemRead, ReadData);  
 MultiMem DM13(Address, WriteData, Clk, MemWrite, MemRead, ReadData); 
 MultiMem DM14(Address, WriteData, Clk, MemWrite, MemRead, ReadData); 
 MultiMem DM15(Address, WriteData, Clk, MemWrite, MemRead, ReadData); 
 MultiMem DM16(Address, WriteData, Clk, MemWrite, MemRead, ReadData); 
 
  MEMtoRegpipeline MEM_R();
  
  RegtoEXpipeline R_EX(  A1,B1,
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
                        A16,B16);
  

   Sadder Sadder1(A1,B1,Out1);
   Sadder Sadder2(A2,B2,Out2);
   Sadder Sadder3(A3,B3,Out3);
   Sadder Sadder4(A4,B4,Out4);
   Sadder Sadder5(A5,B5,Out5);
   Sadder Sadder6(A6,B6,Out6);
   Sadder Sadder7(A7,B7,Out7);
   Sadder Sadder8(A8,B8,Out8);
   Sadder Sadder9(A9,B9,Out9);
   Sadder Sadder10(A10,B10,Out10);
   Sadder Sadder11(A11,B11,Out11);
   Sadder Sadder12(A12,B12,Out12);
   Sadder Sadder13(A13,B13,Out13);
   Sadder Sadder14(A14,B14,Out14);
   Sadder Sadder15(A15,B15,Out15);
   Sadder Sadder16(A16,B16,Out16);
    
      adder adder1(Out1,Out2,AOut1);
      adder adder2(Out3,Out4,AOut2);
      adder adder3(Out5,Out6,AOut3);
      adder adder4(Out7,Out8,AOut4);
     adder adder5(Out9,Out10,AOut5);
    adder adder6(Out11,Out12,AOut6);
    adder adder7(Out13,Out14,AOut7);
    adder adder8(Out15,Out16,AOut8);
    
     adder adder9(AOut1,AOut2,AOut9);
    adder adder10(AOut3,AOut4,AOut10);
    adder adder11(AOut5,AOut6,AOut11);
    adder adder12(AOut7,AOut8,AOut12);
    
    adder adder13(AOut9,AOut10,AOut13);
    adder adder14(AOut11,AOut12,AOut14);
    
    adder adder15(Out13,Out14,AOut15);


always@(*) begin 

end
endmodule
