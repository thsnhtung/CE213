module D_latch(Q, Qbar, D, Enable, clear);
output Q, Qbar;
input D, Enable, clear;
wire X, Y, Z, Dbar, cbar, Enable_not;

not nt(Enable_not, Enable);

not a2(Dbar, D); 
not a3(cbar, clear);
or r1(X, Dbar, Enable_not);
or r2(Y, D, Enable_not);
or r3(Z, X, clear);
nand n1(Q, Z, Qbar);
nand n2(Qbar, Y, Q, cbar);

endmodule