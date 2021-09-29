library verilog;
use verilog.vl_types.all;
entity DFF is
    port(
        CLK             : in     vl_logic;
        Load            : in     vl_logic;
        Data            : in     vl_logic_vector(2 downto 0);
        D               : in     vl_logic_vector(2 downto 0);
        Q               : out    vl_logic_vector(2 downto 0)
    );
end DFF;
