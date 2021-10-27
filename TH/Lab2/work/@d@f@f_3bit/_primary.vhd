library verilog;
use verilog.vl_types.all;
entity DFF_3bit is
    port(
        Q               : out    vl_logic_vector(2 downto 0);
        D               : in     vl_logic_vector(2 downto 0);
        CLK             : in     vl_logic;
        Clear           : in     vl_logic
    );
end DFF_3bit;
