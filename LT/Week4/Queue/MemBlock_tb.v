module MemBlock_tb();
  parameter Column = 4;
  parameter bitPerWord = 8;
  reg [bitPerWord-1:0]DataIn_test;
  reg [Column-1:0]RowSelect_test;
  reg WriteEn_test;
  wire [bitPerWord-1:0]DataOut_test;
  
  
  
  
  
MemBlock #(.Column(Column), .bitPerWord(bitPerWord)) MemBlock_inst0(.DataIn(DataIn_test), 
                                                              .RowSelect(RowSelect_test), .WriteEn(WriteEn_test), 
                                                              .DataOut(DataOut_test));
                                                              
                                                              
initial begin
  DataIn_test = 0;
  RowSelect_test = 0; 
  WriteEn_test = 0;
  
  #6 DataIn_test = 7;
  RowSelect_test = 8 ;
  #2 WriteEn_test = 1;
  #2 WriteEn_test = 0;
  
  #2 DataIn_test = 2;
  RowSelect_test = 2 ;
  #2 WriteEn_test = 1;
  #2 WriteEn_test = 0;
  
  #2 DataIn_test = 5;
  RowSelect_test = 1 ;
  #2 WriteEn_test = 1;
  #2 WriteEn_test = 0;
  
  #2 DataIn_test = 6;
  RowSelect_test = 4 ;
  #2 WriteEn_test = 1;
  #2 WriteEn_test = 0;

  
  #5
  WriteEn_test = 0;  
  RowSelect_test = 0 ;
  #5
  RowSelect_test = 1 ;
  #5
  RowSelect_test = 2 ;
  #5
  RowSelect_test = 4 ;
  #5
  RowSelect_test = 8 ;
  
end

  


endmodule
