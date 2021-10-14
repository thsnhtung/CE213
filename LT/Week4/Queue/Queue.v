module Queue(DataIn, DataOut, Enable, RW, Reset, CLK, Empty, Full, Front_Addr, Back_Addr, Ram_Addr, Front_Enable, Back_Enable);
  parameter bitOfColumn = 3;
  parameter numOfBit = 10;
  input [numOfBit-1:0]DataIn;
  output [numOfBit-1:0]DataOut;
  output Empty, Full;
  
  input Enable, RW, Reset, CLK;
  
  output [bitOfColumn:0]Front_Addr;
  output [bitOfColumn:0]Back_Addr;
  output [bitOfColumn-1:0]Ram_Addr;
  output Front_Enable, Back_Enable;

  wire not_RW;
  
  
  not n1 (not_RW, RW);
  and a1 (Front_Enable, not_RW, Enable);
  and a2 (Back_Enable, RW, Enable);
  

Counter_upper #(.numOfBit(bitOfColumn+1)) Counter_Front_inst0(.Enable(Front_Enable), .CLK(CLK), .Reset(Reset), .DataOut(Front_Addr));
Counter_upper #(.numOfBit(bitOfColumn+1)) Counter_Back_inst0(.Enable(Back_Enable), .CLK(CLK), .Reset(Reset), .DataOut(Back_Addr));


QuantityChecker #(.numOfBit(bitOfColumn+1)) QuantityChecker_inst0(.DataIn0(Front_Addr), .DataIn1(Back_Addr), 
                                                                    .isFull(Full), .isEmpty(Empty));

Mux2to1 #(.numOfBit(numOfBit)) Mux2to1_inst0(.DataIn0(Back_Addr[bitOfColumn-1:0]), .DataIn1(Front_Addr[bitOfColumn-1:0]), 
                                           .Select(Front_Enable),  .Output(Ram_Addr));


Ram #(.bitOfColumn(bitOfColumn), .bitPerWord(numOfBit)) Ram_inst0(.Addr(Ram_Addr), .CS(Enable), .RWS(Back_Enable), 
                                                                  .DataIn(DataIn), .DataOut(DataOut));




endmodule