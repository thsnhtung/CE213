library verilog;
use verilog.vl_types.all;
entity counter_1bit is
    port(
        Enable          : in     vl_logic;
        Direction       : in     vl_logic;
        Reset           : in     vl_logic;
        CLK             : in     vl_logic;
        Cin             : in     vl_logic;
        Cout            : out    vl_logic;
        Data            : out    vl_logic
    );
end counter_1bit;
