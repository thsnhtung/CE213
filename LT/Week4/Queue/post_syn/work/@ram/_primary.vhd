library verilog;
use verilog.vl_types.all;
entity Ram is
    port(
        Addr            : in     vl_logic_vector(4 downto 0);
        DataIn          : in     vl_logic_vector(7 downto 0);
        RWS             : in     vl_logic;
        CS              : in     vl_logic;
        DataOut         : out    vl_logic_vector(7 downto 0)
    );
end Ram;
