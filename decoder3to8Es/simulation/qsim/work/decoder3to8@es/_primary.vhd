library verilog;
use verilog.vl_types.all;
entity decoder3to8Es is
    port(
        A               : in     vl_logic_vector(0 to 2);
        F               : out    vl_logic_vector(0 to 7)
    );
end decoder3to8Es;
