library verilog;
use verilog.vl_types.all;
entity mux4to1_vlg_sample_tst is
    port(
        A               : in     vl_logic;
        B               : in     vl_logic;
        C               : in     vl_logic;
        D               : in     vl_logic;
        Sel             : in     vl_logic_vector(1 downto 0);
        sampler_tx      : out    vl_logic
    );
end mux4to1_vlg_sample_tst;
