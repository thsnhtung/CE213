module Decoder #(parameter num_bit_of_data = 8, num_bit_of_column = 4)(State, Write_en, Mux_in, Addr_in, Opcode, Addr_out1, Addr_out2, Out_enable, Distance);
  input [3:0]State;
  output reg Write_en;
  output reg Mux_in;
  output reg [1:0]Opcode;
  output reg [num_bit_of_column-1:0]Addr_in;
  output reg [num_bit_of_column-1:0]Addr_out1;
  output reg [num_bit_of_column-1:0]Addr_out2;  
  output reg Out_enable;
  output reg [num_bit_of_data-1:0]Distance;  
  
  
  always @(State) begin
     case(State)  
      4'd0: begin 
      Write_en <= 0 ;
      Mux_in <= 0 ;
      Addr_in <= 0 ;
      
      Opcode <= 0;
      Addr_out1 <= 0;
      Addr_out2 <= 0;
      Out_enable <= 0;
      Distance <= 0;
  
      end
      4'd1: begin
      
      Write_en <= 1  ;
      Mux_in <= 0 ;
      Addr_in <= 0 ;
      
      Opcode <= 0;
      Addr_out1 <= 0;
      Addr_out2 <= 0;
      Out_enable <= 0;
      Distance <= 0;
          
      end  
      
      4'd2: begin      
      Write_en <= 1  ;
      Mux_in <= 0 ;
      Addr_in <= 1 ;
      
      Opcode <= 0;
      Addr_out1 <= 0;
      Addr_out2 <= 0;
      Out_enable <= 0;
      Distance <= 0;
      
      end
      
      4'd3: begin
      Write_en <= 1  ;
      Mux_in <= 0 ;
      Addr_in <= 2 ;
      
      Opcode <= 0;
      Addr_out1 <= 0;
      Addr_out2 <= 0;
      Out_enable <= 0;
      Distance <= 0;
      
      end
        
      4'd4: begin
      Write_en <= 1  ;
      Mux_in <= 0 ;
      Addr_in <= 3 ;
      
      Opcode <= 0;
      Addr_out1 <= 0;
      Addr_out2 <= 0;
      Out_enable <= 0;
      Distance <= 0;
      
      end
      
      4'd5: begin           // data3 = data3 << 1
      Write_en <= 1  ;
      Mux_in <= 1 ;
      Addr_in <= 3 ;
      
      Opcode <= 2;
      Addr_out1 <= 3;
      Addr_out2 <= 0;
      Out_enable <= 0;
      Distance <= 1;
      
      end
      
      
      
      4'd6: begin           // data2 = data2 << 1
      Write_en <= 1  ;
      Mux_in <= 1 ;
      Addr_in <= 2 ;
      
      Opcode <= 2;
      Addr_out1 <= 2;
      Addr_out2 <= 0;
      Out_enable <= 0;
      Distance <= 2;
      
      end
      
      4'd7: begin           // data3 = data3 - data2
      Write_en <= 1  ;
      Mux_in <= 1 ;
      Addr_in <= 3 ;
      
      Opcode <= 1;
      Addr_out1 <= 3;
      Addr_out2 <= 2;
      Out_enable <= 0;
      Distance <= 0;
      
      end
      
      4'd8: begin           // data2 = data1 << 3
      Write_en <= 1  ;
      Mux_in <= 1 ;
      Addr_in <= 2 ;
      
      Opcode <= 2;
      Addr_out1 <= 1;
      Addr_out2 <= 0;
      Out_enable <= 0;
      Distance <= 3;     
      end
      
      4'd9: begin           // data1 = data1 + data2
      Write_en <= 1  ;
      Mux_in <= 1 ;
      Addr_in <= 1 ;
      
      Opcode <= 0;
      Addr_out1 <= 1;
      Addr_out2 <= 2;
      Out_enable <= 0;
      Distance <= 0;     
      end
      
      4'd10: begin           // data3 = data3 + data1
      Write_en <= 1  ;
      Mux_in <= 1 ;
      Addr_in <= 3 ;
      
      Opcode <= 0;
      Addr_out1 <= 1;
      Addr_out2 <= 3;
      Out_enable <= 0;
      Distance <= 0;     
      end
     
      4'd11: begin           // data3 = data3 - data0
      Write_en <= 1  ;
      Mux_in <= 1 ;
      Addr_in <= 3 ;
      
      Opcode <= 1;
      Addr_out1 <= 3;
      Addr_out2 <= 0;
      Out_enable <= 0;
      Distance <= 0;   
      end
      
      4'd12: begin           // data3 = data3 - data0
      Write_en <= 0  ;
      Mux_in <= 0 ;
      Addr_in <= 3 ;
      
      Opcode <= 0;
      Addr_out1 <= 3;
      Addr_out2 <= 0;
      Out_enable <= 1;
      Distance <= 0;  
         
      end

    endcase   
      
  end
  
endmodule
  