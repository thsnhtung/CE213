library verilog;
use verilog.vl_types.all;
entity Ram is
    generic(
        bitOfColumn     : integer := 5;
        bitPerWord      : integer := 8;
        Column          : integer := 32
    );
    port(
        Addr            : in     vl_logic_vector;
        DataIn          : in     vl_logic_vector;
        RWS             : in     vl_logic;
        CS              : in     vl_logic;
        DataOut         : out    vl_logic_vector
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of bitOfColumn : constant is 1;
    attribute mti_svvh_generic_type of bitPerWord : constant is 1;
    attribute mti_svvh_generic_type of Column : constant is 1;
end Ram;