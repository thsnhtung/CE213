`timescale 1ns/1ps
module Queue_tb();
  parameter bitOfColumn = 3;
  parameter numOfBit = 10;
  reg [numOfBit-1:0]DataIn_test;
  reg Enable_test, RW_test, Reset_test, CLK_test;
  
  wire [numOfBit-1:0]DataOut_test;
  wire Empty_test, Full_test;
  
  wire [bitOfColumn:0]Front_Addr_test;
  wire [bitOfColumn:0]Back_Addr_test;
  wire [bitOfColumn-1:0]Ram_Addr_test;
  wire Front_Enable_test, Back_Enable_test; 
  
  
Queue Queue_inst0(.DataIn(DataIn_test), .DataOut(DataOut_test), .Enable(Enable_test), 
                  .RW(RW_test), .Reset(Reset_test), .CLK(CLK_test), .Empty(Empty_test), .Full(Full_test), .Front_Addr(Front_Addr_test), 
                                                                      .Back_Addr(Back_Addr_test), .Ram_Addr(Ram_Addr_test), 
                                                                      .Front_Enable(Front_Enable_test), .Back_Enable(Back_Enable_test));
                  
                  

initial begin
  DataIn_test = 0 ;
  Enable_test = 0; 
  RW_test = 0; 
  Reset_test = 0;
  CLK_test = 0;
  
  
  #200 Reset_test = 1;
  # 20 DataIn_test = 15;
  Reset_test = 0;
  
  
  #50 DataIn_test = DataIn_test ;
  #10 RW_test = 1;
  #10 Enable_test = 1;
  #10 CLK_test = 1;
  #10 CLK_test = 0;
  #30 RW_test = 0;
    Enable_test = 0;
    
    
  #50 DataIn_test = DataIn_test + 2;
  #10 RW_test = 1;
  #10 Enable_test = 1;
  #10 CLK_test = 1;
  #10 CLK_test = 0;
  #30 RW_test = 0;
    Enable_test = 0;
  
  #50 DataIn_test = DataIn_test + 3;
  #10 RW_test = 1;
  #10 Enable_test = 1;
  #10 CLK_test = 1;
  #10 CLK_test = 0;
  #30 RW_test = 0;
    Enable_test = 0;
  
  #50 DataIn_test = DataIn_test + 9;
  #10 RW_test = 1;
  #10 Enable_test = 1;
  #10 CLK_test = 1;
  #10 CLK_test = 0;
  #30 RW_test = 0;
    Enable_test = 0;
  
  #50 DataIn_test = DataIn_test -5;
  #10 RW_test = 1;
  #10 Enable_test = 1;
  #10 CLK_test = 1;
  #10 CLK_test = 0;
  #30 RW_test = 0;
    Enable_test = 0;
    
    
  #50 DataIn_test = DataIn_test + 5;
  #10 RW_test = 1;
  #10 Enable_test = 1;
  #10 CLK_test = 1;
  #10 CLK_test = 0;
  #30 RW_test = 0;
    Enable_test = 0;
    
  #50 DataIn_test = DataIn_test + 1;
  #10 RW_test = 1;
  #10 Enable_test = 1;
  #10 CLK_test = 1;
  #10 CLK_test = 0;
  #30 RW_test = 0;
    Enable_test = 0;
    

  
  /////////////////////////////////
  #50 Enable_test = 1;
  #10 RW_test = 0;
  #10 CLK_test = 1;
  #10 CLK_test = 0;
  #30 RW_test = 0;
    Enable_test = 0;
  
  #50 Enable_test = 1;
  #10 RW_test = 0;
  #10 CLK_test = 1;
  #10 CLK_test = 0;
  #30 RW_test = 0;
    Enable_test = 0;
  
  #50 Enable_test = 1;
  #10 RW_test = 0;
  #10 CLK_test = 1;
  #10 CLK_test = 0;
  #30 RW_test = 0;
  #30 Enable_test = 0;
  
  #50 Enable_test = 1;
  #10 RW_test = 0;
  #10 CLK_test = 1;
  #10 CLK_test = 0;
  #30 RW_test = 0;
    Enable_test = 0;
  
  #50 Enable_test = 1;
  #10 RW_test = 0;
  #10 CLK_test = 1;
  #10 CLK_test = 0;
  #30 RW_test = 0;
    Enable_test = 0;
    
    
  #50 Enable_test = 1;
  #10 RW_test = 0;
  #10 CLK_test = 1;
  #10 CLK_test = 0;
  #30 RW_test = 0;
    Enable_test = 0;
    
    
  #50 Enable_test = 1;
  #10 RW_test = 0;
  #10 CLK_test = 1;
  #10 CLK_test = 0;
  #30 RW_test = 0;
    Enable_test = 0;
    
    
/////////////////////////////////////


  #50 DataIn_test = DataIn_test ;
  #10 RW_test = 1;
  #10 Enable_test = 1;
  #10 CLK_test = 1;
  #10 CLK_test = 0;
  #30 RW_test = 0;
    Enable_test = 0;
    
    
  #50 DataIn_test = DataIn_test + 2;
  #10 RW_test = 1;
  #10 Enable_test = 1;
  #10 CLK_test = 1;
  #10 CLK_test = 0;
  #30 RW_test = 0;
    Enable_test = 0;
  
  #50 DataIn_test = DataIn_test + 3;
  #10 RW_test = 1;
  #10 Enable_test = 1;
  #10 CLK_test = 1;
  #10 CLK_test = 0;
  #30 RW_test = 0;
    Enable_test = 0;
  
  #50 DataIn_test = DataIn_test + 9;
  #10 RW_test = 1;
  #10 Enable_test = 1;
  #10 CLK_test = 1;
  #10 CLK_test = 0;
  #30 RW_test = 0;
    Enable_test = 0;
  
  #50 DataIn_test = DataIn_test -5;
  #10 RW_test = 1;
  #10 Enable_test = 1;
  #10 CLK_test = 1;
  #10 CLK_test = 0;
  #30 RW_test = 0;
    Enable_test = 0;
    
    
  #50 DataIn_test = DataIn_test + 5;
  #10 RW_test = 1;
  #10 Enable_test = 1;
  #10 CLK_test = 1;
  #10 CLK_test = 0;
  #30 RW_test = 0;
    Enable_test = 0;
    
  #50 DataIn_test = DataIn_test + 1;
  #10 RW_test = 1;
  #10 Enable_test = 1;
  #10 CLK_test = 1;
  #10 CLK_test = 0;
  #30 RW_test = 0;
    Enable_test = 0;
    
    
    
  #50 DataIn_test = DataIn_test + 1;
  #10 RW_test = 1;
  #10 Enable_test = 1;
  #10 CLK_test = 1;
  #10 CLK_test = 0;
  #30 RW_test = 0;
    Enable_test = 0;
    

end

endmodule




/*

always begin
  #400 Enable_test = 1;
  #10 RW_test = 1;
  #10 DataIn_test = DataIn_test + 1;
  #10 CLK_test = 1;
  #10 CLK_test = 0;
  #30 RW_test = 0;
  #30 Enable_test = 0;
end

*/

