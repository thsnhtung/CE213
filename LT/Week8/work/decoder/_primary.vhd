library verilog;
use verilog.vl_types.all;
entity decoder is
    generic(
        num_of_bit      : integer := 4;
        green_yellow_ratio: integer := 2
    );
    port(
        State           : in     vl_logic_vector;
        Red             : out    vl_logic;
        Yellow          : out    vl_logic;
        Green           : out    vl_logic
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of num_of_bit : constant is 1;
    attribute mti_svvh_generic_type of green_yellow_ratio : constant is 1;
end decoder;
