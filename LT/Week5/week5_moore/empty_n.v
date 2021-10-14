module empty_n #(parameter numOfBit = 64)(input_data,empty); //phan khai bao, co su dung parameter voi n bit
  //phan khai bao dau vao,dau ra
  input [numOfBit-1:0] input_data;
  output empty;
 
 
  wire [numOfBit-1:0]X;
  wire Z;

  
 
genvar i;
generate
  and a1(X[0],input_data[0],input_data[0]);
  
  for (i=1; i<= numOfBit-1; i=i+1) begin : generate_block_identifier
      or b1(X[i],X[i-1],input_data[i]);
end 
  not b3(Z,X[numOfBit-1]);
  and a3(empty,Z,Z);
  
endgenerate
  
 


endmodule





