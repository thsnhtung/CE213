library verilog;
use verilog.vl_types.all;
entity Queue is
    port(
        DataIn          : in     vl_logic_vector(9 downto 0);
        DataOut         : out    vl_logic_vector(9 downto 0);
        Enable          : in     vl_logic;
        RW              : in     vl_logic;
        Reset           : in     vl_logic;
        CLK             : in     vl_logic;
        Empty           : out    vl_logic;
        Full            : out    vl_logic;
        Front_Addr      : out    vl_logic_vector(3 downto 0);
        Back_Addr       : out    vl_logic_vector(3 downto 0);
        Ram_Addr        : out    vl_logic_vector(2 downto 0);
        Front_Enable    : out    vl_logic;
        Back_Enable     : out    vl_logic
    );
end Queue;
