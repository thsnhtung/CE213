library verilog;
use verilog.vl_types.all;
entity \DFF_\ is
    port(
        D               : in     vl_logic;
        CLK             : in     vl_logic;
        Q               : out    vl_logic;
        Qnot            : out    vl_logic;
        R               : in     vl_logic;
        S               : in     vl_logic
    );
end \DFF_\;
