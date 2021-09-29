module DFF_tb();

reg clk_test;
reg data_test;
reg clear_test; 

wire q_test;
wire qbar_test;

  
D_flipflop dff_inst0(.Q(q_test), .Qbar(qbar_test), .D(data_test), .clk(clk_test), .clear(clear_test));


initial begin
    clear_test = 0;
    clk_test = 0;
    data_test = 0;
    $monitor("DATA: %d , %d", q_test, qbar_test);
end

always begin
  #5 clk_test = ~clk_test ; 
end

always begin
  #12 data_test = ~data_test ; 
end

always begin
  #100 clear_test = 1; 
  #5 clear_test = 0;
end
endmodule
  
   
