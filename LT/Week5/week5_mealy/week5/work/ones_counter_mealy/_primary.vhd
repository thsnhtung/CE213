library verilog;
use verilog.vl_types.all;
entity ones_counter_mealy is
    port(
        CLK             : in     vl_logic;
        Reset           : in     vl_logic;
        Start           : in     vl_logic;
        DataIn          : in     vl_logic_vector(7 downto 0);
        Done            : out    vl_logic;
        DataOut         : out    vl_logic_vector(3 downto 0);
        current_data    : out    vl_logic_vector(7 downto 0);
        Outbuf          : out    vl_logic_vector(3 downto 0)
    );
end ones_counter_mealy;
