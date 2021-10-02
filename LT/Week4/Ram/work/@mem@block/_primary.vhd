library verilog;
use verilog.vl_types.all;
entity MemBlock is
    generic(
        Column          : integer := 2;
        bitPerWord      : integer := 8
    );
    port(
        DataIn          : in     vl_logic_vector;
        RowSelect       : in     vl_logic_vector;
        WriteEn         : in     vl_logic;
        DataOut         : out    vl_logic_vector
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of Column : constant is 1;
    attribute mti_svvh_generic_type of bitPerWord : constant is 1;
end MemBlock;
