module MemBlock#(parameter Column = 2, bitPerWord = 8)(DataIn, RowSelect, WriteEn, DataOut);
  input [bitPerWord-1:0]DataIn;
  input [Column-1:0]RowSelect;
  input WriteEn;
  output wire [bitPerWord-1:0]DataOut;
  
  
/*  
WordCell #(.numOfBit(bitPerWord)) WordCell_inst[bitPerColumn-1:0](.DataIn(DataIn), .RowSelect(RowSelect), .WriteEn(WriteEn), .DataOut(DataOut));  */


genvar i;
generate
    for (i=0; i< Column; i=i+1) begin : memblock
        WordCell WordCell_inst(.DataIn(DataIn[bitPerWord-1:0]), .RowSelect(RowSelect[i]), .WriteEn(WriteEn), .DataOut(DataOut[bitPerWord-1:0]));  
end 
endgenerate


endmodule