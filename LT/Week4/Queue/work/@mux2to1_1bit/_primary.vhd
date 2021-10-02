library verilog;
use verilog.vl_types.all;
entity Mux2to1_1bit is
    port(
        DataIn0         : in     vl_logic;
        DataIn1         : in     vl_logic;
        \Select\        : in     vl_logic;
        Output          : out    vl_logic
    );
end Mux2to1_1bit;
