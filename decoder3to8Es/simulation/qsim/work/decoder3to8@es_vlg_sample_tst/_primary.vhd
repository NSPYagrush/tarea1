library verilog;
use verilog.vl_types.all;
entity decoder3to8Es_vlg_sample_tst is
    port(
        A               : in     vl_logic_vector(0 to 2);
        sampler_tx      : out    vl_logic
    );
end decoder3to8Es_vlg_sample_tst;
