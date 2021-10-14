module CU_tb();
  //module CU #(parameter bitcount = 4, parameter bitInput = 8) (input wire [1:0] current_state, input wire Start,input wire [bitInput-1:0] current_data,
  //output wire [1:0] next_state, output wire S0, output wire S1, output wire E, output wire outputEN);
 reg [7:0] current_data;
 reg [1:0] current_state;
 wire [1:0] next_state;
 reg Start;
 wire S0, S1, EN, outputEN;
 CU cu(current_state, Start, current_data, next_state, S0, S1, EN, outputEN);
 initial begin
   current_state = 0;
   Start = 1;
   current_data = 8'b11001100;
 end
 
 always begin 
   #20 current_state = current_state+1;
 end
 always begin
   #5 current_data = current_data >> 1;
end
always begin 
  #50 current_data = $random;
end
 endmodule
   
