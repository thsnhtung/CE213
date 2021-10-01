library verilog;
use verilog.vl_types.all;
entity Register_1bit is
    port(
        CLK             : in     vl_logic;
        Data            : in     vl_logic;
        Load            : in     vl_logic;
        D               : in     vl_logic;
        Q               : out    vl_logic
    );
end Register_1bit;
