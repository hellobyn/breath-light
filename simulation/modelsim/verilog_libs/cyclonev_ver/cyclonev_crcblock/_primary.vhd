library verilog;
use verilog.vl_types.all;
entity cyclonev_crcblock is
    generic(
        oscillator_divider: integer := 256;
        lpm_type        : string  := "cyclonev_crcblock"
    );
    port(
        clk             : in     vl_logic;
        shiftnld        : in     vl_logic;
        crcerror        : out    vl_logic;
        regout          : out    vl_logic
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of oscillator_divider : constant is 1;
    attribute mti_svvh_generic_type of lpm_type : constant is 1;
end cyclonev_crcblock;
