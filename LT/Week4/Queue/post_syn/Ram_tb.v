`timescale 1 ns/ 1 ps

module Ram_tb();
  parameter bitPerWord = 8;
  parameter bitOfColumn = 5;
  reg [bitOfColumn-1:0]Addr_test;
  reg RWS_test, CS_test;
  reg [bitPerWord-1:0]DataIn_test;
  wire [bitPerWord-1:0]DataOut_test;
  

Ram Ram32x32_inst0(.Addr(Addr_test), .DataIn(DataIn_test), .RWS(RWS_test), .CS(CS_test), .DataOut(DataOut_test));  

initial begin
  Addr_test = 0;
  RWS_test = 0;
  CS_test = 0;
  DataIn_test = 0;
  #200

  #10 DataIn_test = 7;
  Addr_test = 5 ;
  #2 CS_test = 1;
  #2 RWS_test = 1;
  #10 RWS_test = 0;
  //#2 CS_test = 0;
  
  #10 DataIn_test = 30;
  Addr_test = 0 ;
  #2 CS_test = 1;
  #2 RWS_test = 1;
  //#2 RWS_test = 0;
  #2 CS_test = 0;
  
  
  #10 DataIn_test = 14;
  Addr_test = 10 ;
  #2 CS_test = 1;
  #2 RWS_test = 1;
  //#2 RWS_test = 0;
  #2 CS_test = 0;
  
  #5 CS_test = 1;
  #5 RWS_test = 0;  
  Addr_test = 0 ;
  #5 Addr_test = 10 ;
  #5 Addr_test = 5 ;
  #5 CS_test = 0;

end
  


endmodule
 
 
  
  

