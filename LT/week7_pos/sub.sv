module sub(a,b,Out);
  parameter n=8;
  input [n-1:0]a,b;
  output reg [n-1:0]Out;
  always @(*)
  begin 
   Out=a-b;
   end
   
   
endmodule 

