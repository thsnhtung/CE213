module MemCell(DataIn, RowSelect, WriteEn, DataOut);
  input DataIn;
  input RowSelect;
  input WriteEn;
  output DataOut;
  wire and0, buf0;
  wire Q;
  supply0 ground;
  
and a0(and0, WriteEn, RowSelect);

bufif1 b0(DataOut, Q, RowSelect);

D_latch D_latch_inst0(.Q(Q), .Qbar(), .D(DataIn), .Enable(and0), .clear(ground));


endmodule