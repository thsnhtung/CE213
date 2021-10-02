module WordCell #(parameter numOfBit = 10)(DataIn, RowSelect, WriteEn, DataOut);
  input [numOfBit-1:0]DataIn;
  input RowSelect;
  input WriteEn;
  output [numOfBit-1:0]DataOut;




MemCell MemCell_inst[numOfBit-1:0] (.DataIn(DataIn), .RowSelect(RowSelect), .WriteEn(WriteEn), .DataOut(DataOut));


endmodule