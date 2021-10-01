library verilog;
use verilog.vl_types.all;
entity Encoder is
    port(
        State           : out    vl_logic_vector(2 downto 0);
        Value           : in     vl_logic_vector(3 downto 0)
    );
end Encoder;
