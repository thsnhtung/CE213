module Min(a,b,Out);
parameter n=8;
input [n-1:0]a,b;
output reg [n-1:0]Out;
wire [n-1:0]temp;
wire temp1_not;


sub sub_1(.a(a),.b(b),.Out(temp));

not (temp1_not,temp[7]);
Mux_2to1 a2(.S_Mux2(temp1_not), .In1(a), .In2(b), .Out_Mux2(Out));
 
 
 
endmodule