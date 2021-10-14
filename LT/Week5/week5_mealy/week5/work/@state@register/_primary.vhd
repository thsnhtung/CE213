library verilog;
use verilog.vl_types.all;
entity StateRegister is
    generic(
        nbit            : integer := 2
    );
    port(
        CLK             : in     vl_logic;
        RESET           : in     vl_logic;
        next_state      : in     vl_logic_vector;
        current_state   : out    vl_logic_vector
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of nbit : constant is 1;
end StateRegister;
