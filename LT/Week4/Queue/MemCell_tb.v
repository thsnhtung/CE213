module MemCell_tb();
  reg DataIn_test, RowSelect_test, WriteEn_test;
  wire DataOut_test;


MemCell MemCell_inst0(.DataIn(DataIn_test), .RowSelect(RowSelect_test), .WriteEn(WriteEn_test), .DataOut(DataOut_test));

initial begin
  DataIn_test = 0;
  RowSelect_test = 0; 
  WriteEn_test = 0;
end

always begin
  #6 DataIn_test = ~DataIn_test;
end


always begin
  #16 RowSelect_test = 1;
  #10 RowSelect_test = 0;
end

always begin
  #33 WriteEn_test = ~WriteEn_test;
end
  



endmodule
