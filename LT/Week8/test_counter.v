module test_counter#(parameter num_of_bit = 4, parameter green_yellow_ratio = 2 )(CLK, Reset, Set, State);
  input CLK;
  input Reset;
  input Set;
  output reg [num_of_bit-1:0]State;
  
  parameter red_delay = 2**num_of_bit / 2;
  parameter yellow_delay = red_delay/(green_yellow_ratio+1);
  parameter green_delay = yellow_delay * green_yellow_ratio;
  
  
  
  always @(posedge CLK) begin
    if (Reset == 0 && Set == 0)
      State = State + 1 ; 
  end
  
  
  always @(Reset or Set) begin
    if (Reset == 0 && Set == 1)
      State  =  green_delay + yellow_delay;
    else if (Reset == 1 && Set == 0)
      State  = 0;     
  end

  endmodule



  
    
