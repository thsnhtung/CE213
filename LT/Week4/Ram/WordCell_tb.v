module WordCell_tb();
  parameter numOfBit = 4;
  reg [numOfBit-1:0]DataIn_test;
  reg RowSelect_test, WriteEn_test;
  wire [numOfBit-1:0]DataOut_test;


WordCell #(.numOfBit(numOfBit)) WordCell_inst(.DataIn(DataIn_test), .RowSelect(RowSelect_test), .WriteEn(WriteEn_test), .DataOut(DataOut_test));


initial begin
  DataIn_test = 0;
  RowSelect_test = 0; 
  WriteEn_test = 0;
  
  
    
  #6 DataIn_test = 15;
  RowSelect_test = 1 ;
  #2 WriteEn_test = 1;
  #2 WriteEn_test = 0;
  
  #2 DataIn_test = 2;
  RowSelect_test = 0 ;
  #2 WriteEn_test = 1;
  #2 WriteEn_test = 0;

  #5
  RowSelect_test = 1 ;
  
  #2 DataIn_test = 20;
  RowSelect_test = 7 ;
  #2 WriteEn_test = 1;
  #2 WriteEn_test = 0;  
  
  
  #5
  RowSelect_test = 1 ;  
end


  



endmodule