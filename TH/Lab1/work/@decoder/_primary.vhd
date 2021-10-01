library verilog;
use verilog.vl_types.all;
entity Decoder is
    port(
        State           : in     vl_logic_vector(2 downto 0);
        Value           : out    vl_logic_vector(3 downto 0)
    );
end Decoder;
