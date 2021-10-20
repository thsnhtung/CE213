module shift_right_1bit(a,Out);
  parameter n=8;
  input [n-1:0]a;
  output reg [n-1:0]Out;
  
  always @(*)
  begin
  Out=a>>1;
  end



endmodule
