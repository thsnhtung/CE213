library verilog;
use verilog.vl_types.all;
entity Adder_3bit is
    port(
        Input1          : in     vl_logic_vector(2 downto 0);
        Result          : out    vl_logic_vector(2 downto 0)
    );
end Adder_3bit;
