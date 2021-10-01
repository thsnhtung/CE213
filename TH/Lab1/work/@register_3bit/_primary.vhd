library verilog;
use verilog.vl_types.all;
entity Register_3bit is
    port(
        CLK             : in     vl_logic;
        Data            : in     vl_logic_vector(2 downto 0);
        Load            : in     vl_logic;
        D               : in     vl_logic_vector(2 downto 0);
        Q               : out    vl_logic_vector(2 downto 0)
    );
end Register_3bit;
