library verilog;
use verilog.vl_types.all;
entity main_circuit is
    port(
        clk             : in     vl_logic;
        Start           : in     vl_logic;
        ln1             : in     vl_logic_vector(7 downto 0);
        ln2             : in     vl_logic_vector(7 downto 0);
        Out_put         : out    vl_logic_vector(7 downto 0);
        out_reg1        : out    vl_logic_vector(7 downto 0);
        out_reg2        : out    vl_logic_vector(7 downto 0);
        out_reg3        : out    vl_logic_vector(7 downto 0)
    );
end main_circuit;
