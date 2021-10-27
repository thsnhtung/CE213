library verilog;
use verilog.vl_types.all;
entity \Register\ is
    port(
        CLK             : in     vl_logic;
        Enable          : in     vl_logic;
        State           : out    vl_logic_vector(3 downto 0)
    );
end \Register\;
