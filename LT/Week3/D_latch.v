module D_latch(Q, Qbar, D, clk, clear);
output Q, Qbar;
input D, clk, clear;
wire X, Y, Z, Dbar, cbar;

not a2(Dbar, D); 
not a3(cbar, clear);
or r1(X, Dbar, clk);
or r2(Y, D, clk);
or r3(Z, X, clear);
nand n1(Q, Z, Qbar);
nand n2(Qbar, Y, Q, cbar);

endmodule

