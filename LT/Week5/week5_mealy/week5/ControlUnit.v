module CU #(parameter bitcount = 4, parameter bitInput = 8) (input wire [1:0] current_state, input wire Start,input wire [bitInput-1:0] current_data,output wire [1:0] next_state, output wire S0, output wire S1, output wire E, output wire outputEN, output wire RSTcount);
  wire s0 = (!current_state[0])&(!current_state[1]);
  wire s1 = (current_state[0])&(!current_state[1]);
  wire s2 = (!current_state[0])&(current_state[1]);
  wire s3 = (current_state[0])&(current_state[1]);
  
  assign next_state[0] = s0&Start || s2&(!(|current_data));
  assign next_state[1] = current_state[0]^current_state[1];
  assign S0 = s1 || s2&(|current_data);
  assign S1 = s2&(|current_data);
  assign E = s2&current_data[0];
  assign outputEN = s3;
  assign RSTcount = s1;
  
endmodule