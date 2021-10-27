module Register_tb();
  reg CLK_test;
  reg Enable_test ;
  wire [3:0]State_test;
  
  
  
Register Register_inst(.CLK(CLK_test), .Enable(Enable_test), .State(State_test));

initial begin
  CLK_test = 0;
  Enable_test = 0;

end


always begin
  #20
  CLK_test = ~CLK_test;
end

always begin
  #400
  Enable_test = 1;
  #40
  Enable_test = 0;
end

endmodule

