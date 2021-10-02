library verilog;
use verilog.vl_types.all;
entity Decoder_1bit is
    port(
        \In\            : in     vl_logic;
        \Out\           : out    vl_logic_vector(1 downto 0)
    );
end Decoder_1bit;
