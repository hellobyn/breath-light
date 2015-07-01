library verilog;
use verilog.vl_types.all;
entity arriav_hssi_pma_rx_buf is
    generic(
        enable_debug_info: string  := "false";
        cdrclk_to_cgb   : string  := "cdrclk_2cgb_dis";
        channel_number  : integer := 0;
        diagnostic_loopback: string  := "diag_lpbk_off";
        pdb_sd          : string  := "false";
        rx_dc_gain      : integer := 0;
        sd_off          : integer := 1;
        sd_on           : integer := 1;
        sd_threshold    : integer := 3;
        term_sel        : string  := "100 ohms";
        vcm_current_add : string  := "vcm_current_1";
        vcm_sel         : string  := "vtt_0p80v";
        avmm_group_channel_index: integer := 0;
        use_default_base_address: string  := "true";
        user_base_address: integer := 0;
        rx_sel_half_bw  : string  := "full_bw";
        rx_acgain_a     : string  := "aref_volt_0";
        rx_acgain_v     : string  := "vref_volt_1p0";
        ct_equalizer_setting: integer := 0;
        reverse_loopback: string  := "reverse_lpbk_cdr"
    );
    port(
        ck0sigdet       : in     vl_logic_vector(0 downto 0);
        datain          : in     vl_logic_vector(0 downto 0);
        hardoccalen     : in     vl_logic_vector(0 downto 0);
        lpbkp           : in     vl_logic_vector(0 downto 0);
        rstn            : in     vl_logic_vector(0 downto 0);
        slpbk           : in     vl_logic_vector(0 downto 0);
        dataout         : out    vl_logic_vector(0 downto 0);
        nonuserfrompmaux: in     vl_logic_vector(0 downto 0);
        rdlpbkp         : out    vl_logic_vector(0 downto 0);
        sd              : out    vl_logic_vector(0 downto 0);
        avmmaddress     : in     vl_logic_vector(10 downto 0);
        avmmbyteen      : in     vl_logic_vector(1 downto 0);
        avmmrstn        : in     vl_logic_vector(0 downto 0);
        avmmclk         : in     vl_logic_vector(0 downto 0);
        avmmread        : in     vl_logic_vector(0 downto 0);
        avmmwrite       : in     vl_logic_vector(0 downto 0);
        avmmwritedata   : in     vl_logic_vector(15 downto 0);
        avmmreaddata    : out    vl_logic_vector(15 downto 0);
        blockselect     : out    vl_logic_vector(0 downto 0)
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of enable_debug_info : constant is 1;
    attribute mti_svvh_generic_type of cdrclk_to_cgb : constant is 1;
    attribute mti_svvh_generic_type of channel_number : constant is 1;
    attribute mti_svvh_generic_type of diagnostic_loopback : constant is 1;
    attribute mti_svvh_generic_type of pdb_sd : constant is 1;
    attribute mti_svvh_generic_type of rx_dc_gain : constant is 1;
    attribute mti_svvh_generic_type of sd_off : constant is 1;
    attribute mti_svvh_generic_type of sd_on : constant is 1;
    attribute mti_svvh_generic_type of sd_threshold : constant is 1;
    attribute mti_svvh_generic_type of term_sel : constant is 1;
    attribute mti_svvh_generic_type of vcm_current_add : constant is 1;
    attribute mti_svvh_generic_type of vcm_sel : constant is 1;
    attribute mti_svvh_generic_type of avmm_group_channel_index : constant is 1;
    attribute mti_svvh_generic_type of use_default_base_address : constant is 1;
    attribute mti_svvh_generic_type of user_base_address : constant is 1;
    attribute mti_svvh_generic_type of rx_sel_half_bw : constant is 1;
    attribute mti_svvh_generic_type of rx_acgain_a : constant is 1;
    attribute mti_svvh_generic_type of rx_acgain_v : constant is 1;
    attribute mti_svvh_generic_type of ct_equalizer_setting : constant is 1;
    attribute mti_svvh_generic_type of reverse_loopback : constant is 1;
end arriav_hssi_pma_rx_buf;