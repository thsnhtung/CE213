module decoder_tb();
  parameter num_of_bit = 4;
  parameter green_yellow_ratio = 4;
  
  reg [num_of_bit-1:0] State;
  wire Red, Yellow, Green;
  wire [num_of_bit-1:0]green_delay_test;
  wire [num_of_bit-1:0]yellow_delay_test;
decoder#(.num_of_bit(num_of_bit), .green_yellow_ratio(green_yellow_ratio)) decoder_inst0(.State(State), .Red(Red), .Yellow(Yellow), .Green(Green));





initial begin
  State = 0;
end


always begin
  #15
  State = State + 1;
end

endmodule

