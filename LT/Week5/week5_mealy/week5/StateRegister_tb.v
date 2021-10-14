module StateRegiste_tb();
  //module StateRegister #(parameter nbit=2) (input wire CLK, input wire RESET, input wire [nbit-1:0]next_state, output wire [nbit-1:0] current
  reg CLK, RESET;
  reg [1:0] next_state;
  wire [1:0] current_state;
  StateRegister SR(CLK, RESET, next_state, current_state);
  
  initial begin 
    CLK = 0;
    RESET = 0;
    next_state = $random%4;
  end
  
  always #5 CLK =  ~CLK;
  
  always #3 RESET = 1;
  
  always #10 next_state = $random%4;
  
endmodule
  