module empty(  
input wire D0,
input wire D1,
output wire empty
);
nor(empty,D0,D1);
endmodule



