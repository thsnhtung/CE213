/*
module Ram #(parameter bitOfColumn = 5, bitPerWord = 8)(Addr, Data, RWS, CS);
  inout [bitPerWord-1:0] Data;
  input [bitOfColumn-1:0]Addr;
  input RWS;
  input CS;
  parameter Column = 2**5;
  wire [Column-1:0]Out_RowSelect;
  wire not_RWS, IO_Enable, WriteEn;
  wire [bitPerWord-1:0] BusOut;
  wire [bitPerWord-1:0] BusIn;
  
  
not n1(not_RWS, RWS);
and a1(Out_Enable, not_RWS, CS);
and a2(WriteEn, RWS, CS);

bufif1 out1[bitPerWord-1:0] (Data[bitPerWord-1:0], BusOut[bitPerWord-1:0], Out_Enable);  
bufif1 in1[bitPerWord-1:0]  (BusIn[bitPerWord-1:0], Data[bitPerWord-1:0], WriteEn);  


  
Decoder#(.numOfBit(bitOfColumn)) Decoder_inst0(.In(Addr), .Out(Out_RowSelect));
MemBlock#(.Column(Column), .bitPerWord(bitPerWord)) MemBlock_inst0(.DataIn(BusIn), .RowSelect(Out_RowSelect), .WriteEn(WriteEn), .DataOut(BusOut));  
  
endmodule   
*/

//module Ram #(parameter bitOfColumn = 5, bitPerWord = 8)(Addr, DataIn, RWS, CS, DataOut);
module Ram (Addr, DataIn, RWS, CS, DataOut);
  parameter bitOfColumn = 5;
  parameter bitPerWord = 8;
  input [bitPerWord-1:0] DataIn;
  output [bitPerWord-1:0] DataOut;
  input [bitOfColumn-1:0]Addr;
  input RWS;
  input CS;
  parameter Column = 2**5;
  wire [Column-1:0]Out_RowSelect;
  wire WriteEn;

and a1(WriteEn, RWS, CS);

  
Decoder#(.numOfBit(bitOfColumn)) Decoder_inst0(.In(Addr), .Out(Out_RowSelect));
MemBlock#(.Column(Column), .bitPerWord(bitPerWord)) MemBlock_inst0(.DataIn(DataIn), .RowSelect(Out_RowSelect), .WriteEn(WriteEn), .DataOut(DataOut));  
  
endmodule 

