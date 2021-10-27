library verilog;
use verilog.vl_types.all;
entity Moore is
    port(
        Input           : in     vl_logic_vector(3 downto 0);
        CLK             : in     vl_logic;
        isTrue          : out    vl_logic;
        Reset           : in     vl_logic
    );
end Moore;
