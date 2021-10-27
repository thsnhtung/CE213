module Traffic_light #(parameter num_of_bit = 4, parameter green_yellow_ratio = 4 )(CLK, Reset, Set, Red, Yellow, Green);
  input Set, Reset, CLK;
  output Red, Yellow, Green;
  wire [num_of_bit-1:0] wire_State;

  counter #(.num_of_bit(num_of_bit), .green_yellow_ratio(green_yellow_ratio)) counter_inst0(.CLK(CLK), 
                                                                  .Reset(Reset), .Set(Set), .State(wire_State));
                                                                  
  decoder #(.num_of_bit(num_of_bit), .green_yellow_ratio(green_yellow_ratio)) decoder_inst0(.State(wire_State), .Red(Red), .Yellow(Yellow), .Green(Green));
  
  
endmodule
                                                                  