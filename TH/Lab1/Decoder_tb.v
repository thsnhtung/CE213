module Decoder_tb();
  reg [2:0] testcases;
  wire [3:0] check;
  
  
Decoder Decoder_inst0(.State(testcases), .Value(check));


initial begin
    testcases = 3'd0;
    $monitor("%d -> %d", testcases, check);
end

always begin
  
  #5 testcases = testcases + 3'd1 ; 
  
end


endmodule
  
   