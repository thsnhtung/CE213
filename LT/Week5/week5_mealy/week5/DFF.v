//khoi D flip flop
module DFF_(D, CLK, Q, Qnot, R, S);//phan khai bao
output Q, Qnot; //dau ra
input D, R, S;  //dau vao
input CLK;
wire Q, Qnot, D,CLK, X, Y, Z, T;
//su dung tich cuc muc thap doi voi 2 chan set va reset
nand a1(X, S, T, Y);
nand a2(Y, X, CLK, R);
nand a3(Z, Y, CLK, T);
nand a4(T, Z, D, R);
nand a5(Q, S, Y, Qnot);
nand a6(Qnot, Q, Z, R);
endmodule

