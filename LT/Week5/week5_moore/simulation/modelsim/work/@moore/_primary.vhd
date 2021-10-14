library verilog;
use verilog.vl_types.all;
entity Moore is
    port(
        Start           : in     vl_logic;
        CLK             : in     vl_logic;
        input_data      : in     vl_logic_vector(63 downto 0);
        \out\           : out    vl_logic_vector(63 downto 0);
        Done            : out    vl_logic
    );
end Moore;
