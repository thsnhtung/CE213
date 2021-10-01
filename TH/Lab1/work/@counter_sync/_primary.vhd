library verilog;
use verilog.vl_types.all;
entity Counter_sync is
    port(
        CLK             : in     vl_logic;
        Load            : in     vl_logic;
        Data            : in     vl_logic_vector(3 downto 0);
        Data_out        : out    vl_logic_vector(3 downto 0)
    );
end Counter_sync;
