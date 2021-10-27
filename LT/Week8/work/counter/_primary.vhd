library verilog;
use verilog.vl_types.all;
entity counter is
    generic(
        num_of_bit      : integer := 4;
        green_yellow_ratio: integer := 2
    );
    port(
        CLK             : in     vl_logic;
        Reset           : in     vl_logic;
        Set             : in     vl_logic;
        State           : out    vl_logic_vector
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of num_of_bit : constant is 1;
    attribute mti_svvh_generic_type of green_yellow_ratio : constant is 1;
end counter;
