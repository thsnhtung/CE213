library verilog;
use verilog.vl_types.all;
entity Decoder is
    generic(
        numOfBit        : integer := 4
    );
    port(
        \In\            : in     vl_logic_vector;
        \Out\           : out    vl_logic_vector
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of numOfBit : constant is 1;
end Decoder;
