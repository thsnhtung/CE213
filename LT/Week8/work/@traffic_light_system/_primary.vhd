library verilog;
use verilog.vl_types.all;
entity Traffic_light_system is
    generic(
        num_of_bit      : integer := 4;
        green_yellow_ratio: integer := 3
    );
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
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of num_of_bit : constant is 1;
    attribute mti_svvh_generic_type of green_yellow_ratio : constant is 1;
end Traffic_light_system;
