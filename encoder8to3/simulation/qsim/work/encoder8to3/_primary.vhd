library verilog;
use verilog.vl_types.all;
entity encoder8to3 is
    port(
        F               : in     vl_logic_vector(7 downto 0);
        A               : out    vl_logic;
        B               : out    vl_logic;
        C               : out    vl_logic
    );
end encoder8to3;
