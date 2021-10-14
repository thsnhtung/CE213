module registerfile #(parameter bitADDR = 2, parameter bitReg = 8)(CLK, WRITE_ADDR, IN, READ_ADDR1, READ_ADDR2, OUT1, OUT2);
  input wire CLK;
  input wire [bitADDR-1:0] WRITE_ADDR;
  parameter numReg = 2**bitADDR;
  input wire [bitReg-1:0]IN;
  input wire [bitADDR-1:0]READ_ADDR1, READ_ADDR2;
  output wire [bitReg-1:0] OUT1, OUT2;
  wire [numReg-1:0] select_write, select_read1, select_read2;
  //wire [bitReg-1:0]OUT_buf[numReg-1:0];
  
  generate
    genvar i;
    for(i = 0; i < numReg; i = i + 1) begin
  //module register #(parameter bit = 8)(input wire CLK, input wire WE, input wire OE1, input wire OE2, input wire [bit-1:0] IN, output wire [bit-1:0] OUT1, output wire[bit-1:0] OUT2);
    register #(bitReg) reg0(CLK, select_write[i], select_read1[i], select_read2[i], IN, OUT1, OUT2);
    end
  endgenerate
  assign select_write = (1 << WRITE_ADDR);
  assign select_read1 = (1 << READ_ADDR1);
  assign select_read2 = (1 << READ_ADDR2);
endmodule;
  