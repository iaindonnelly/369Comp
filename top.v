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

output reg [7:0] Something;
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
wire  AOut1 ;
wire  AOut2 ;
wire  AOut3 ;
wire  AOut4 ;
wire  AOut5 ;
wire  AOut6 ;
wire  AOut7 ;
wire  AOut8 ;
wire  AOut9 ;
wire  AOut10 ;
wire  AOut11;
wire  AOut12;
wire  AOut13;
wire  AOut14;
wire  AOut15;

wire [7:0] AM1 ,BM1 ,C1 ,D1 ,E1 ,F1,G1 ,H1 ,I1 ,J1 ,K1 ,L1 ,O1 ,M1 ,N1 ,P1 ;
/*
wire [7:0] AM2 ,BM2 ,C2 ,D2 ,E2 ,F,G2 ,H2 ,I2 ,J2 ,K2 ,L2 ,O2 ,M2 ,N2 ,P2 ;
wire [7:0] AM3 ,BM3 ,C3 ,D3 ,E3 ,F,G3 ,H3 ,I3 ,J3 ,K3 ,L3 ,O3 ,M3 ,N3 ,P3 ;
wire [7:0] AM4 ,BM4 ,C4 ,D4 ,E4 ,F,G4 ,H4 ,I4 ,J4 ,K4 ,L4 ,O4 ,M4 ,N4 ,P4 ;
wire [7:0] AM5 ,BM5 ,C5 ,D5 ,E5 ,F,G5 ,H5 ,I5 ,J5 ,K5 ,L5 ,O5 ,M5 ,N5 ,P5 ;
wire [7:0] AM6 ,BM6 ,C6 ,D6 ,E6 ,F,G6 ,H6 ,I6 ,J6 ,K6 ,L6 ,O6 ,M6 ,N6 ,P6 ;
wire [7:0] AM7 ,BM7 ,C7 ,D7 ,E7 ,F,G7 ,H7 ,I7 ,J7 ,K7 ,L7 ,O7 ,M7 ,N7 ,P7 ;
wire [7:0] AM8 ,BM8 ,C8 ,D8 ,E8 ,F,G8 ,H8 ,I8 ,J8 ,K8 ,L8 ,O8 ,M8 ,N8 ,P8 ;
wire [7:0] AM9 ,BM9 ,C9 ,D9 ,E9 ,F,G9 ,H9 ,I9 ,J9 ,K9 ,L9 ,O9 ,M9 ,N9 ,P9 ;
wire [7:0] AM10,BM10,C10,D10,E10,F,G10,H10,I10,J10,K10,L10,O10,M10,N10,P10;
wire [7:0] AM11,BM11,C11,D11,E11,F,G11,H11,I11,J11,K11,L11,O11,M11,N11,P11;
wire [7:0] AM12,BM12,C12,D12,E12,F,G12,H12,I12,J12,K12,L12,O12,M12,N12,P12;
wire [7:0] AM13,BM13,C13,D13,E13,F,G13,H13,I13,J13,K13,L13,O13,M13,N13,P13;
wire [7:0] AM14,BM14,C14,D14,E14,F,G14,H14,I14,J14,K14,L14,O14,M14,N14,P14;
wire [7:0] AM15,BM15,C15,D15,E15,F,G15,H15,I15,J15,K15,L15,O15,M15,N15,P15;
wire [7:0] AM16,BM16,C16,D16,E16,F,G16,H16,I16,J16,K16,L16,O16,M16,N16,P16;
*/
wire [7:0] OutM1; 
wire [7:0] OutM2; 
wire [7:0] OutM3; 
wire [7:0] OutM4; 
wire [7:0] OutM5; 
wire [7:0] OutM6; 
wire [7:0] OutM7; 
wire [7:0] OutM8; 
wire [7:0] OutM9; 
wire [7:0] OutM10;
wire [7:0] OutM11;
wire [7:0] OutM12;
wire [7:0] OutM13;
wire [7:0] OutM14;
wire [7:0] OutM15;
wire [7:0] OutM16;
wire [3:0] state;
wire ClkOut;
wire [31:0] Instruction;
wire MemRead;
wire WriteData;
wire MemWrite;
wire [7:0] AddressC1;
wire [7:0] AddressC2;
wire [7:0] AddressC3;
wire [7:0] AddressC4;
wire MemWriteOut,MemReadOut;
wire [7:0] A1Out1,A1Out2,A1Out3,A1Out4,A1Out5,A1Out6,A1Out7,A1Out8;

 //ClkDiv CD(Clk, Reset, ClkOut);

 InstructionMemory IM(0, Instruction); 

Controller CT(Instruction,MemWrite,MemRead);

 InstrToMEM I_MEM(Clk,MemWrite,MemRead,MemWriteOut,MemReadOut);
  
 MemStateMach mem_state(Clk,AddressC1,AddressC2,AddressC3,AddressC4);
  
  MultiMem DM1(AddressC1, 0, Clk, MemWriteOut,MemReadOut, AM1); //c1
  MultiMem DM2(AddressC2, 0, Clk, MemWriteOut,MemReadOut, BM1); //c2
  MultiMem DM3(AddressC3, 0, Clk, MemWriteOut,MemReadOut, C1); //c3
  MultiMem DM4(AddressC4, 0, Clk, MemWriteOut,MemReadOut, D1); //c4
  MultiMem DM5(AddressC1, 0, Clk, MemWriteOut,MemReadOut, E1); //c1
  MultiMem DM6(AddressC2, 0, Clk, MemWriteOut,MemReadOut, F1); 
  MultiMem DM7(AddressC3, 0, Clk, MemWriteOut,MemReadOut, G1); 
  MultiMem DM8(AddressC4, 0, Clk, MemWriteOut,MemReadOut, H1); 
  MultiMem DM9(AddressC1, 0, Clk, MemWriteOut,MemReadOut, I1); 
 MultiMem DM10(AddressC2, 0, Clk, MemWriteOut,MemReadOut, J1); 
 MultiMem DM11(AddressC3, 0, Clk, MemWriteOut,MemReadOut, K1); 
 MultiMem DM12(AddressC4, 0, Clk, MemWriteOut,MemReadOut, L1);  
 MultiMem DM13(AddressC1, 0, Clk, MemWriteOut,MemReadOut, O1); 
 MultiMem DM14(AddressC2, 0, Clk, MemWriteOut,MemReadOut, M1); 
 MultiMem DM15(AddressC3, 0, Clk, MemWriteOut,MemReadOut, N1); 
 MultiMem DM16(AddressC4, 0, Clk, MemWriteOut,MemReadOut, P1); 
 
MuxStateMach(Clk,state); 
 
  MegaMux MM1(AM1 ,BM1 ,C1 ,D1 ,E1 ,F1,G1 ,H1 ,I1 ,J1 ,K1 ,L1 ,O1 ,M1 ,N1 ,P1 ,OutM1 ,state);
  MegaMux MM2(AM1 ,BM1 ,C1 ,D1 ,E1 ,F1,G1 ,H1 ,I1 ,J1 ,K1 ,L1 ,O1 ,M1 ,N1 ,P1 ,OutM2 ,state);
  MegaMux MM3(AM1 ,BM1 ,C1 ,D1 ,E1 ,F1,G1 ,H1 ,I1 ,J1 ,K1 ,L1 ,O1 ,M1 ,N1 ,P1 ,OutM3 ,state);
  MegaMux MM4(AM1 ,BM1 ,C1 ,D1 ,E1 ,F1,G1 ,H1 ,I1 ,J1 ,K1 ,L1 ,O1 ,M1 ,N1 ,P1 ,OutM4 ,state);
  MegaMux MM5(AM1 ,BM1 ,C1 ,D1 ,E1 ,F1,G1 ,H1 ,I1 ,J1 ,K1 ,L1 ,O1 ,M1 ,N1 ,P1 ,OutM5 ,state);
  MegaMux MM6(AM1 ,BM1 ,C1 ,D1 ,E1 ,F1,G1 ,H1 ,I1 ,J1 ,K1 ,L1 ,O1 ,M1 ,N1 ,P1 ,OutM6 ,state);
  MegaMux MM7(AM1 ,BM1 ,C1 ,D1 ,E1 ,F1,G1 ,H1 ,I1 ,J1 ,K1 ,L1 ,O1 ,M1 ,N1 ,P1 ,OutM7 ,state);
  MegaMux MM8(AM1 ,BM1 ,C1 ,D1 ,E1 ,F1,G1 ,H1 ,I1 ,J1 ,K1 ,L1 ,O1 ,M1 ,N1 ,P1 ,OutM8 ,state);
  MegaMux MM9(AM1 ,BM1 ,C1 ,D1 ,E1 ,F1,G1 ,H1 ,I1 ,J1 ,K1 ,L1 ,O1 ,M1 ,N1 ,P1 ,OutM9 ,state);
 MegaMux MM10(AM1 ,BM1 ,C1 ,D1 ,E1 ,F1,G1 ,H1 ,I1 ,J1 ,K1 ,L1 ,O1 ,M1 ,N1 ,P1 ,OutM10,state);
 MegaMux MM11(AM1 ,BM1 ,C1 ,D1 ,E1 ,F1,G1 ,H1 ,I1 ,J1 ,K1 ,L1 ,O1 ,M1 ,N1 ,P1 ,OutM11,state);
 MegaMux MM12(AM1 ,BM1 ,C1 ,D1 ,E1 ,F1,G1 ,H1 ,I1 ,J1 ,K1 ,L1 ,O1 ,M1 ,N1 ,P1 ,OutM12,state);
 MegaMux MM13(AM1 ,BM1 ,C1 ,D1 ,E1 ,F1,G1 ,H1 ,I1 ,J1 ,K1 ,L1 ,O1 ,M1 ,N1 ,P1 ,OutM13,state);
 MegaMux MM14(AM1 ,BM1 ,C1 ,D1 ,E1 ,F1,G1 ,H1 ,I1 ,J1 ,K1 ,L1 ,O1 ,M1 ,N1 ,P1 ,OutM14,state);
 MegaMux MM15(AM1 ,BM1 ,C1 ,D1 ,E1 ,F1,G1 ,H1 ,I1 ,J1 ,K1 ,L1 ,O1 ,M1 ,N1 ,P1 ,OutM15,state);
 MegaMux MM16(AM1 ,BM1 ,C1 ,D1 ,E1 ,F1,G1 ,H1 ,I1 ,J1 ,K1 ,L1 ,O1 ,M1 ,N1 ,P1 ,OutM16,state);
  
  R_EX RegtoEXpipeline( OutM1 ,1, //hardcode values here
                        OutM2 ,2,
                        OutM3 ,3,
                        OutM4 ,4,
                        OutM5 ,5,
                        OutM6 ,6,
                        OutM7 ,7,
                        OutM8 ,8,
                        OutM9 ,9,
                        OutM10,10,
                        OutM11,11,
                        OutM12,12,
                        OutM13,13,
                        OutM14,14,
                        OutM15,15,
                        OutM16,16,
                        A1,B1,
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
                        Clk);
  

      Sadder Sadder1(A1,B1,Out1 );
      Sadder Sadder2(A2,B2,Out2 );
      Sadder Sadder3(A3,B3,Out3 );
      Sadder Sadder4(A4,B4,Out4 );
      Sadder Sadder5(A5,B5,Out5 );
      Sadder Sadder6(A6,B6,Out6 );
      Sadder Sadder7(A7,B7,Out7 );
      Sadder Sadder8(A8,B8,Out8 );
      Sadder Sadder9(A9,B9,Out9 );
   Sadder Sadder10(A10,B10,Out10);
   Sadder Sadder11(A11,B11,Out11);
   Sadder Sadder12(A12,B12,Out12);
   Sadder Sadder13(A13,B13,Out13);
   Sadder Sadder14(A14,B14,Out14);
   Sadder Sadder15(A15,B15,Out15);
   Sadder Sadder16(A16,B16,Out16);
    //might have to make all adder outs 12bits

      adder adder1(Out1,Out2,AOut1);
      adder adder2(Out3,Out4,AOut2);
      adder adder3(Out5,Out6,AOut3);
      adder adder4(Out7,Out8,AOut4);
      adder adder5(Out9,Out10,AOut5);
    adder adder6(Out11,Out12,AOut6);
    adder adder7(Out13,Out14,AOut7);
    adder adder8(Out15,Out16,AOut8);
    
    A1P AP1(AOut1,AOut2,AOut3,AOut4,AOut5,AOut6,AOut7,AOut8,
            A1Out1,A1Out2,A1Out3,A1Out4,A1Out5,A1Out6,A1Out7,A1Out8,Clk);
    
     adder adder9(A1Out1,A1Out2,AOut9);
    adder adder10(A1Out3,A1Out4,AOut10);
    adder adder11(A1Out5,A1Out6,AOut11);
    adder adder12(A1Out7,A1Out8,AOut12);
    
    adder adder13(AOut9,AOut10,AOut13);
    adder adder14(AOut11,AOut12,AOut14);
    
    adder adder15(AOut13,AOut14,AOut15);

   always@(*) begin
   Something <=  AOut15;
   end
endmodule
