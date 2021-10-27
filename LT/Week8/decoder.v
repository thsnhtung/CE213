module decoder#(parameter num_of_bit = 4, parameter green_yellow_ratio = 2 )(State, Red, Yellow, Green);
  parameter red_delay = 2**num_of_bit / 2;
  parameter yellow_delay = red_delay/(green_yellow_ratio+1);
  parameter green_delay = yellow_delay * green_yellow_ratio;

  input [num_of_bit-1:0] State;
  output reg Red, Yellow, Green;
  
  always @(State) begin
    if (State >= 0 && State < green_delay)
      begin
        Red = 0;
        Yellow = 0;
        Green = 1 ;
      end
      
    else if (State >= green_delay && State < red_delay)
      begin 
        Red = 0;
        Yellow = 1;
        Green = 0 ;
      end
      
    else
      begin
        Red = 1 ;
        Yellow = 0 ; 
        Green = 0 ;
      end
      
end

endmodule