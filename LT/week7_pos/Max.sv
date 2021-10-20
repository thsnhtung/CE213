module Max(a,b,Out);
parameter n=8;
input [n-1:0]a,b;
output reg[n-1:0]Out;
 wire temp_1;
 wire [n-1:0]temp;



sub sub_1(.a(a),.b(b),.Out(temp));

and (temp_1,temp[7],temp[7]);
Mux_2to1 a2(.S_Mux2(temp_1), .In1(a), .In2(b), .Out_Mux2(Out));
 
 
 
endmodule