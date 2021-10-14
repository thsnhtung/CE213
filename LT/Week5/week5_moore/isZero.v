module isZero (In, Out);
	parameter n = 8;
	input [n-1:0] In;
	output Out;

	assign Out = In == 0 ? 1'b1 : 1'b0;

endmodule