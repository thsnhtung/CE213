library verilog;
use verilog.vl_types.all;
entity Traffic_light_system is
    port(
        CLK             : in     vl_logic;
        Reset           : in     vl_logic;
        Red_1           : out    vl_logic;
        Yellow_1        : out    vl_logic;
        Green_1         : out    vl_logic;
        Red_2           : out    vl_logic;
        Yellow_2        : out    vl_logic;
        Green_2         : out    vl_logic
    );
end Traffic_light_system;
