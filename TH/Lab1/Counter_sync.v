module Counter_sync(CLK, Load, Data, Data_out);
  input CLK;
  input Load;
  input [3:0]Data;
  output [3:0]Data_out;

wire [2:0]Q_State_Input1;
wire [2:0]Result_D;
wire [2:0]State_Data;

Encoder Encoder_inst0(.State(State_Data), .Value(Data));

Decoder Decoder_inst0(.State(Q_State_Input1), .Value(Data_out));

Adder_3bit Adder_3bit_inst0(.Input1(Q_State_Input1), .Result(Result_D)); 

Register_3bit_sync Register_3bit_sync_inst0(.CLK(CLK), .Data(State_Data), .Load(Load), .D(Result_D), .Q(Q_State_Input1));

endmodule
