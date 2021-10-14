module Moore_tb();
  parameter n=64;
   reg Start,CLK;
   reg [n-1:0]input_data;
   wire [n-1:0]out;
   wire Done;
  
  
  Moore a1[n-1:0](.Start(Start),.CLK(CLK),.input_data(input_data),.out(out),.Done(Done));
  
  
    
  //phan khoi tao				   
initial begin
  input_data=64'd7;
  CLK=1'b0;
  Start=1'b0;
  
  
end                
//test cac Th cho Signal

//test cho input du lieu dau vao
always begin 
  #5 CLK=~CLK;
  
end  



always begin 
  #55 input_data=64'd9;
  #50 input_data=64'd1048575;
  #210 input_data=64'd255;
  #90 input_data=64'd1023;
  #105 input_data=64'd2021;
  
end  



always begin 
 #10 Start=1'b1;
 #10 Start=1'b0;
 #35 Start=1'b1;
 
 #10 Start=1'b0;
 #40 Start=1'b1;
 #10 Start=1'b0;
 #200 Start=1'b1;
 #10 Start=1'b0;
 #80 Start=1'b1;
 #20 Start=1'b0;
 #85 Start=1'b1;
 #10 Start=1'b0;
 #115 Start=1'b1;
 #2000 Start=1'b0;
end  
endmodule           