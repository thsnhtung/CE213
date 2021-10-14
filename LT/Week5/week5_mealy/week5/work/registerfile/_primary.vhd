library verilog;
use verilog.vl_types.all;
entity registerfile is
    generic(
        bitADDR         : integer := 2;
        bitReg          : integer := 8
    );
    port(
        CLK             : in     vl_logic;
        WRITE_ADDR      : in     vl_logic_vector;
        \IN\            : in     vl_logic_vector;
        READ_ADDR1      : in     vl_logic_vector;
        READ_ADDR2      : in     vl_logic_vector;
        OUT1            : out    vl_logic_vector;
        OUT2            : out    vl_logic_vector
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of bitADDR : constant is 1;
    attribute mti_svvh_generic_type of bitReg : constant is 1;
end registerfile;
