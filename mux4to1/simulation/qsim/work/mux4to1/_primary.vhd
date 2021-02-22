library verilog;
use verilog.vl_types.all;
entity mux4to1 is
    port(
        A               : in     vl_logic;
        B               : in     vl_logic;
        C               : in     vl_logic;
        D               : in     vl_logic;
        Sel             : in     vl_logic_vector(1 downto 0);
        F               : out    vl_logic
    );
end mux4to1;
