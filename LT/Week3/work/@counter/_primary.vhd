library verilog;
use verilog.vl_types.all;
entity Counter is
    port(
        Enable          : in     vl_logic;
        Direction       : in     vl_logic;
        CLK             : in     vl_logic;
        Reset           : in     vl_logic;
        DataOut         : out    vl_logic_vector(3 downto 0)
    );
end Counter;
