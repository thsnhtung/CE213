module abs(b,out);
parameter n=8;
input [n-1:0]b;
output reg[n-1:0]out;
wire [n-1:0]temp;
wire temp_1;
wire a7_not;
not (a7_not,b[7]);
and a1(temp_1,a7_not,a7_not);
sub a23(.a(8'd0),.b(b),.Out(temp));
Mux_2to1 a2(.S_Mux2(temp_1), .In1(temp), .In2(b), .Out_Mux2(out));


endmodule

