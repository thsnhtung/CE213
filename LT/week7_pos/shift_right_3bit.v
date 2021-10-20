module shift_right_3bit(a,Out);
  parameter n=8;
  input [n-1:0]a;
  output reg [n-1:0]Out;
  
  always @(*)
  begin
  Out=a>>3;
  end



endmodule
