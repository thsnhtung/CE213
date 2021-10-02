library verilog;
use verilog.vl_types.all;
entity MemCell is
    port(
        DataIn          : in     vl_logic;
        RowSelect       : in     vl_logic;
        WriteEn         : in     vl_logic;
        DataOut         : out    vl_logic
    );
end MemCell;
