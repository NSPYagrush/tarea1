library verilog;
use verilog.vl_types.all;
entity encoder8to3_vlg_sample_tst is
    port(
        F               : in     vl_logic_vector(7 downto 0);
        sampler_tx      : out    vl_logic
    );
end encoder8to3_vlg_sample_tst;
