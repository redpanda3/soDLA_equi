module NV_soDLA_SDP_REG_dual( // @[:@3.2]
  input         nvdla_core_rstn,
  input         nvdla_core_clk, // @[:@6.4]
  output [31:0] reg_rd_data, // @[:@6.4]
  input  [11:0] reg_offset, // @[:@6.4]
  input  [31:0] reg_wr_data, // @[:@6.4]
  input         reg_wr_en, // @[:@6.4]
  output [31:0] cvt_offset, // @[:@6.4]
  output [15:0] cvt_scale, // @[:@6.4]
  output [5:0]  cvt_shift, // @[:@6.4]
  output [12:0] channel, // @[:@6.4]
  output [12:0] height, // @[:@6.4]
  output [12:0] width, // @[:@6.4]
  output [1:0]  out_precision, // @[:@6.4]
  output [1:0]  proc_precision, // @[:@6.4]
  output [5:0]  bn_alu_shift_value, // @[:@6.4]
  output        bn_alu_src, // @[:@6.4]
  output [15:0] bn_alu_operand, // @[:@6.4]
  output [1:0]  bn_alu_algo, // @[:@6.4]
  output        bn_alu_bypass, // @[:@6.4]
  output        bn_bypass, // @[:@6.4]
  output        bn_mul_bypass, // @[:@6.4]
  output        bn_mul_prelu, // @[:@6.4]
  output        bn_relu_bypass, // @[:@6.4]
  output [7:0]  bn_mul_shift_value, // @[:@6.4]
  output        bn_mul_src, // @[:@6.4]
  output [15:0] bn_mul_operand, // @[:@6.4]
  output [5:0]  bs_alu_shift_value, // @[:@6.4]
  output        bs_alu_src, // @[:@6.4]
  output [15:0] bs_alu_operand, // @[:@6.4]
  output [1:0]  bs_alu_algo, // @[:@6.4]
  output        bs_alu_bypass, // @[:@6.4]
  output        bs_bypass, // @[:@6.4]
  output        bs_mul_bypass, // @[:@6.4]
  output        bs_mul_prelu, // @[:@6.4]
  output        bs_relu_bypass, // @[:@6.4]
  output [7:0]  bs_mul_shift_value, // @[:@6.4]
  output        bs_mul_src, // @[:@6.4]
  output [15:0] bs_mul_operand, // @[:@6.4]
  output        ew_alu_cvt_bypass, // @[:@6.4]
  output        ew_alu_src, // @[:@6.4]
  output [31:0] ew_alu_cvt_offset, // @[:@6.4]
  output [15:0] ew_alu_cvt_scale, // @[:@6.4]
  output [5:0]  ew_alu_cvt_truncate, // @[:@6.4]
  output [31:0] ew_alu_operand, // @[:@6.4]
  output [1:0]  ew_alu_algo, // @[:@6.4]
  output        ew_alu_bypass, // @[:@6.4]
  output        ew_bypass, // @[:@6.4]
  output        ew_lut_bypass, // @[:@6.4]
  output        ew_mul_bypass, // @[:@6.4]
  output        ew_mul_prelu, // @[:@6.4]
  output        ew_mul_cvt_bypass, // @[:@6.4]
  output        ew_mul_src, // @[:@6.4]
  output [31:0] ew_mul_cvt_offset, // @[:@6.4]
  output [15:0] ew_mul_cvt_scale, // @[:@6.4]
  output [5:0]  ew_mul_cvt_truncate, // @[:@6.4]
  output [31:0] ew_mul_operand, // @[:@6.4]
  output [9:0]  ew_truncate, // @[:@6.4]
  output [31:0] dst_base_addr_high, // @[:@6.4]
  output [31:0] dst_base_addr_low, // @[:@6.4]
  output [31:0] dst_batch_stride, // @[:@6.4]
  output        dst_ram_type, // @[:@6.4]
  output [31:0] dst_line_stride, // @[:@6.4]
  output [31:0] dst_surface_stride, // @[:@6.4]
  output [4:0]  batch_number, // @[:@6.4]
  output        flying_mode, // @[:@6.4]
  output        nan_to_zero, // @[:@6.4]
  output        output_dst, // @[:@6.4]
  output        winograd, // @[:@6.4]
  output        perf_dma_en, // @[:@6.4]
  output        perf_lut_en, // @[:@6.4]
  output        perf_nan_inf_count_en, // @[:@6.4]
  output        perf_sat_en, // @[:@6.4]
  output        op_en_trigger, // @[:@6.4]
  input         op_en, // @[:@6.4]
  input  [31:0] lut_hybrid, // @[:@6.4]
  input  [31:0] lut_le_hit, // @[:@6.4]
  input  [31:0] lut_lo_hit, // @[:@6.4]
  input  [31:0] lut_oflow, // @[:@6.4]
  input  [31:0] lut_uflow, // @[:@6.4]
  input  [31:0] out_saturation, // @[:@6.4]
  input  [31:0] wdma_stall, // @[:@6.4]
  input         status_unequal, // @[:@6.4]
  input  [31:0] status_inf_input_num, // @[:@6.4]
  input  [31:0] status_nan_input_num, // @[:@6.4]
  input  [31:0] status_nan_output_num // @[:@6.4]
);
  wire [31:0] _GEN_66; // @[NV_NVDLA_SDP_REG_dual.scala 59:56:@8.4]
  wire  _T_174; // @[NV_NVDLA_SDP_REG_dual.scala 59:56:@8.4]
  wire  nvdla_sdp_d_cvt_offset_0_wren; // @[NV_NVDLA_SDP_REG_dual.scala 59:80:@9.4]
  wire  _T_176; // @[NV_NVDLA_SDP_REG_dual.scala 60:55:@10.4]
  wire  nvdla_sdp_d_cvt_scale_0_wren; // @[NV_NVDLA_SDP_REG_dual.scala 60:80:@11.4]
  wire  _T_178; // @[NV_NVDLA_SDP_REG_dual.scala 61:55:@12.4]
  wire  nvdla_sdp_d_cvt_shift_0_wren; // @[NV_NVDLA_SDP_REG_dual.scala 61:80:@13.4]
  wire  _T_180; // @[NV_NVDLA_SDP_REG_dual.scala 62:63:@14.4]
  wire  nvdla_sdp_d_data_cube_channel_0_wren; // @[NV_NVDLA_SDP_REG_dual.scala 62:88:@15.4]
  wire  _T_182; // @[NV_NVDLA_SDP_REG_dual.scala 63:62:@16.4]
  wire  nvdla_sdp_d_data_cube_height_0_wren; // @[NV_NVDLA_SDP_REG_dual.scala 63:86:@17.4]
  wire  _T_184; // @[NV_NVDLA_SDP_REG_dual.scala 64:61:@18.4]
  wire  nvdla_sdp_d_data_cube_width_0_wren; // @[NV_NVDLA_SDP_REG_dual.scala 64:85:@19.4]
  wire  _T_186; // @[NV_NVDLA_SDP_REG_dual.scala 65:57:@20.4]
  wire  nvdla_sdp_d_data_format_0_wren; // @[NV_NVDLA_SDP_REG_dual.scala 65:81:@21.4]
  wire  _T_188; // @[NV_NVDLA_SDP_REG_dual.scala 66:59:@22.4]
  wire  nvdla_sdp_d_dp_bn_alu_cfg_0_wren; // @[NV_NVDLA_SDP_REG_dual.scala 66:83:@23.4]
  wire  _T_190; // @[NV_NVDLA_SDP_REG_dual.scala 67:65:@24.4]
  wire  nvdla_sdp_d_dp_bn_alu_src_value_0_wren; // @[NV_NVDLA_SDP_REG_dual.scala 67:89:@25.4]
  wire  _T_192; // @[NV_NVDLA_SDP_REG_dual.scala 68:55:@26.4]
  wire  nvdla_sdp_d_dp_bn_cfg_0_wren; // @[NV_NVDLA_SDP_REG_dual.scala 68:79:@27.4]
  wire  _T_194; // @[NV_NVDLA_SDP_REG_dual.scala 69:59:@28.4]
  wire  nvdla_sdp_d_dp_bn_mul_cfg_0_wren; // @[NV_NVDLA_SDP_REG_dual.scala 69:83:@29.4]
  wire  _T_196; // @[NV_NVDLA_SDP_REG_dual.scala 70:65:@30.4]
  wire  nvdla_sdp_d_dp_bn_mul_src_value_0_wren; // @[NV_NVDLA_SDP_REG_dual.scala 70:89:@31.4]
  wire  _T_198; // @[NV_NVDLA_SDP_REG_dual.scala 71:59:@32.4]
  wire  nvdla_sdp_d_dp_bs_alu_cfg_0_wren; // @[NV_NVDLA_SDP_REG_dual.scala 71:83:@33.4]
  wire  _T_200; // @[NV_NVDLA_SDP_REG_dual.scala 72:65:@34.4]
  wire  nvdla_sdp_d_dp_bs_alu_src_value_0_wren; // @[NV_NVDLA_SDP_REG_dual.scala 72:89:@35.4]
  wire  _T_202; // @[NV_NVDLA_SDP_REG_dual.scala 73:55:@36.4]
  wire  nvdla_sdp_d_dp_bs_cfg_0_wren; // @[NV_NVDLA_SDP_REG_dual.scala 73:79:@37.4]
  wire  _T_204; // @[NV_NVDLA_SDP_REG_dual.scala 74:59:@38.4]
  wire  nvdla_sdp_d_dp_bs_mul_cfg_0_wren; // @[NV_NVDLA_SDP_REG_dual.scala 74:83:@39.4]
  wire  _T_206; // @[NV_NVDLA_SDP_REG_dual.scala 75:65:@40.4]
  wire  nvdla_sdp_d_dp_bs_mul_src_value_0_wren; // @[NV_NVDLA_SDP_REG_dual.scala 75:89:@41.4]
  wire  _T_208; // @[NV_NVDLA_SDP_REG_dual.scala 76:59:@42.4]
  wire  nvdla_sdp_d_dp_ew_alu_cfg_0_wren; // @[NV_NVDLA_SDP_REG_dual.scala 76:83:@43.4]
  wire  _T_210; // @[NV_NVDLA_SDP_REG_dual.scala 77:72:@44.4]
  wire  nvdla_sdp_d_dp_ew_alu_cvt_offset_value_0_wren; // @[NV_NVDLA_SDP_REG_dual.scala 77:96:@45.4]
  wire  _T_212; // @[NV_NVDLA_SDP_REG_dual.scala 78:71:@46.4]
  wire  nvdla_sdp_d_dp_ew_alu_cvt_scale_value_0_wren; // @[NV_NVDLA_SDP_REG_dual.scala 78:95:@47.4]
  wire  _T_214; // @[NV_NVDLA_SDP_REG_dual.scala 79:74:@48.4]
  wire  nvdla_sdp_d_dp_ew_alu_cvt_truncate_value_0_wren; // @[NV_NVDLA_SDP_REG_dual.scala 79:98:@49.4]
  wire  _T_216; // @[NV_NVDLA_SDP_REG_dual.scala 80:65:@50.4]
  wire  nvdla_sdp_d_dp_ew_alu_src_value_0_wren; // @[NV_NVDLA_SDP_REG_dual.scala 80:89:@51.4]
  wire  _T_218; // @[NV_NVDLA_SDP_REG_dual.scala 81:55:@52.4]
  wire  nvdla_sdp_d_dp_ew_cfg_0_wren; // @[NV_NVDLA_SDP_REG_dual.scala 81:79:@53.4]
  wire  _T_220; // @[NV_NVDLA_SDP_REG_dual.scala 82:59:@54.4]
  wire  nvdla_sdp_d_dp_ew_mul_cfg_0_wren; // @[NV_NVDLA_SDP_REG_dual.scala 82:83:@55.4]
  wire  _T_222; // @[NV_NVDLA_SDP_REG_dual.scala 83:72:@56.4]
  wire  nvdla_sdp_d_dp_ew_mul_cvt_offset_value_0_wren; // @[NV_NVDLA_SDP_REG_dual.scala 83:96:@57.4]
  wire  _T_224; // @[NV_NVDLA_SDP_REG_dual.scala 84:71:@58.4]
  wire  nvdla_sdp_d_dp_ew_mul_cvt_scale_value_0_wren; // @[NV_NVDLA_SDP_REG_dual.scala 84:95:@59.4]
  wire  _T_226; // @[NV_NVDLA_SDP_REG_dual.scala 85:74:@60.4]
  wire  nvdla_sdp_d_dp_ew_mul_cvt_truncate_value_0_wren; // @[NV_NVDLA_SDP_REG_dual.scala 85:98:@61.4]
  wire  _T_228; // @[NV_NVDLA_SDP_REG_dual.scala 86:65:@62.4]
  wire  nvdla_sdp_d_dp_ew_mul_src_value_0_wren; // @[NV_NVDLA_SDP_REG_dual.scala 86:89:@63.4]
  wire  _T_230; // @[NV_NVDLA_SDP_REG_dual.scala 87:66:@64.4]
  wire  nvdla_sdp_d_dp_ew_truncate_value_0_wren; // @[NV_NVDLA_SDP_REG_dual.scala 87:90:@65.4]
  wire  _T_232; // @[NV_NVDLA_SDP_REG_dual.scala 88:64:@66.4]
  wire  nvdla_sdp_d_dst_base_addr_high_0_wren; // @[NV_NVDLA_SDP_REG_dual.scala 88:88:@67.4]
  wire  _T_234; // @[NV_NVDLA_SDP_REG_dual.scala 89:63:@68.4]
  wire  nvdla_sdp_d_dst_base_addr_low_0_wren; // @[NV_NVDLA_SDP_REG_dual.scala 89:87:@69.4]
  wire  _T_236; // @[NV_NVDLA_SDP_REG_dual.scala 90:62:@70.4]
  wire  nvdla_sdp_d_dst_batch_stride_0_wren; // @[NV_NVDLA_SDP_REG_dual.scala 90:86:@71.4]
  wire  _T_238; // @[NV_NVDLA_SDP_REG_dual.scala 91:57:@72.4]
  wire  nvdla_sdp_d_dst_dma_cfg_0_wren; // @[NV_NVDLA_SDP_REG_dual.scala 91:81:@73.4]
  wire  _T_240; // @[NV_NVDLA_SDP_REG_dual.scala 92:61:@74.4]
  wire  nvdla_sdp_d_dst_line_stride_0_wren; // @[NV_NVDLA_SDP_REG_dual.scala 92:85:@75.4]
  wire  _T_242; // @[NV_NVDLA_SDP_REG_dual.scala 93:64:@76.4]
  wire  nvdla_sdp_d_dst_surface_stride_0_wren; // @[NV_NVDLA_SDP_REG_dual.scala 93:88:@77.4]
  wire  _T_244; // @[NV_NVDLA_SDP_REG_dual.scala 94:62:@78.4]
  wire  nvdla_sdp_d_feature_mode_cfg_0_wren; // @[NV_NVDLA_SDP_REG_dual.scala 94:86:@79.4]
  wire  _T_246; // @[NV_NVDLA_SDP_REG_dual.scala 95:55:@80.4]
  wire  _T_248; // @[NV_NVDLA_SDP_REG_dual.scala 96:57:@82.4]
  wire  nvdla_sdp_d_perf_enable_0_wren; // @[NV_NVDLA_SDP_REG_dual.scala 96:81:@83.4]
  wire [31:0] _T_275; // @[Cat.scala 30:58:@107.4]
  wire [31:0] _T_278; // @[Cat.scala 30:58:@108.4]
  wire [31:0] _T_281; // @[Cat.scala 30:58:@109.4]
  wire [31:0] _T_284; // @[Cat.scala 30:58:@110.4]
  wire [31:0] _T_287; // @[Cat.scala 30:58:@111.4]
  wire [31:0] _T_291; // @[Cat.scala 30:58:@113.4]
  wire [31:0] _T_297; // @[Cat.scala 30:58:@116.4]
  wire [31:0] _T_300; // @[Cat.scala 30:58:@117.4]
  wire [31:0] _T_308; // @[Cat.scala 30:58:@123.4]
  wire [31:0] _T_314; // @[Cat.scala 30:58:@126.4]
  wire [31:0] _T_317; // @[Cat.scala 30:58:@127.4]
  wire [31:0] _T_323; // @[Cat.scala 30:58:@130.4]
  wire [31:0] _T_326; // @[Cat.scala 30:58:@131.4]
  wire [31:0] _T_334; // @[Cat.scala 30:58:@137.4]
  wire [31:0] _T_340; // @[Cat.scala 30:58:@140.4]
  wire [31:0] _T_343; // @[Cat.scala 30:58:@141.4]
  wire [31:0] _T_347; // @[Cat.scala 30:58:@143.4]
  wire [31:0] _T_351; // @[Cat.scala 30:58:@144.4]
  wire [31:0] _T_354; // @[Cat.scala 30:58:@145.4]
  wire [31:0] _T_363; // @[Cat.scala 30:58:@151.4]
  wire [31:0] _T_367; // @[Cat.scala 30:58:@153.4]
  wire [31:0] _T_371; // @[Cat.scala 30:58:@154.4]
  wire [31:0] _T_374; // @[Cat.scala 30:58:@155.4]
  wire [31:0] _T_378; // @[Cat.scala 30:58:@156.4]
  wire [31:0] _T_384; // @[Cat.scala 30:58:@157.4]
  wire [31:0] _T_395; // @[Cat.scala 30:58:@163.4]
  wire [31:0] _T_398; // @[Cat.scala 30:58:@164.4]
  wire [31:0] _T_404; // @[Cat.scala 30:58:@168.4]
  wire [31:0] _T_414; // @[Cat.scala 30:58:@169.4]
  wire  _T_418; // @[Mux.scala 46:19:@170.4]
  wire [31:0] _T_419; // @[Mux.scala 46:16:@171.4]
  wire  _T_420; // @[Mux.scala 46:19:@172.4]
  wire [31:0] _T_421; // @[Mux.scala 46:16:@173.4]
  wire  _T_422; // @[Mux.scala 46:19:@174.4]
  wire [31:0] _T_423; // @[Mux.scala 46:16:@175.4]
  wire  _T_424; // @[Mux.scala 46:19:@176.4]
  wire [31:0] _T_425; // @[Mux.scala 46:16:@177.4]
  wire  _T_426; // @[Mux.scala 46:19:@178.4]
  wire [31:0] _T_427; // @[Mux.scala 46:16:@179.4]
  wire  _T_428; // @[Mux.scala 46:19:@180.4]
  wire [31:0] _T_429; // @[Mux.scala 46:16:@181.4]
  wire  _T_430; // @[Mux.scala 46:19:@182.4]
  wire [31:0] _T_431; // @[Mux.scala 46:16:@183.4]
  wire  _T_432; // @[Mux.scala 46:19:@184.4]
  wire [31:0] _T_433; // @[Mux.scala 46:16:@185.4]
  wire  _T_434; // @[Mux.scala 46:19:@186.4]
  wire [31:0] _T_435; // @[Mux.scala 46:16:@187.4]
  wire  _T_436; // @[Mux.scala 46:19:@188.4]
  wire [31:0] _T_437; // @[Mux.scala 46:16:@189.4]
  wire  _T_438; // @[Mux.scala 46:19:@190.4]
  wire [31:0] _T_439; // @[Mux.scala 46:16:@191.4]
  wire  _T_440; // @[Mux.scala 46:19:@192.4]
  wire [31:0] _T_441; // @[Mux.scala 46:16:@193.4]
  wire  _T_442; // @[Mux.scala 46:19:@194.4]
  wire [31:0] _T_443; // @[Mux.scala 46:16:@195.4]
  wire  _T_444; // @[Mux.scala 46:19:@196.4]
  wire [31:0] _T_445; // @[Mux.scala 46:16:@197.4]
  wire  _T_446; // @[Mux.scala 46:19:@198.4]
  wire [31:0] _T_447; // @[Mux.scala 46:16:@199.4]
  wire  _T_448; // @[Mux.scala 46:19:@200.4]
  wire [31:0] _T_449; // @[Mux.scala 46:16:@201.4]
  wire  _T_450; // @[Mux.scala 46:19:@202.4]
  wire [31:0] _T_451; // @[Mux.scala 46:16:@203.4]
  wire  _T_452; // @[Mux.scala 46:19:@204.4]
  wire [31:0] _T_453; // @[Mux.scala 46:16:@205.4]
  wire  _T_454; // @[Mux.scala 46:19:@206.4]
  wire [31:0] _T_455; // @[Mux.scala 46:16:@207.4]
  wire  _T_456; // @[Mux.scala 46:19:@208.4]
  wire [31:0] _T_457; // @[Mux.scala 46:16:@209.4]
  wire  _T_458; // @[Mux.scala 46:19:@210.4]
  wire [31:0] _T_459; // @[Mux.scala 46:16:@211.4]
  wire  _T_460; // @[Mux.scala 46:19:@212.4]
  wire [31:0] _T_461; // @[Mux.scala 46:16:@213.4]
  wire  _T_462; // @[Mux.scala 46:19:@214.4]
  wire [31:0] _T_463; // @[Mux.scala 46:16:@215.4]
  wire  _T_464; // @[Mux.scala 46:19:@216.4]
  wire [31:0] _T_465; // @[Mux.scala 46:16:@217.4]
  wire  _T_466; // @[Mux.scala 46:19:@218.4]
  wire [31:0] _T_467; // @[Mux.scala 46:16:@219.4]
  wire  _T_468; // @[Mux.scala 46:19:@220.4]
  wire [31:0] _T_469; // @[Mux.scala 46:16:@221.4]
  wire  _T_470; // @[Mux.scala 46:19:@222.4]
  wire [31:0] _T_471; // @[Mux.scala 46:16:@223.4]
  wire  _T_472; // @[Mux.scala 46:19:@224.4]
  wire [31:0] _T_473; // @[Mux.scala 46:16:@225.4]
  wire  _T_474; // @[Mux.scala 46:19:@226.4]
  wire [31:0] _T_475; // @[Mux.scala 46:16:@227.4]
  wire  _T_476; // @[Mux.scala 46:19:@228.4]
  wire [31:0] _T_477; // @[Mux.scala 46:16:@229.4]
  wire  _T_478; // @[Mux.scala 46:19:@230.4]
  wire [31:0] _T_479; // @[Mux.scala 46:16:@231.4]
  wire  _T_480; // @[Mux.scala 46:19:@232.4]
  wire [31:0] _T_481; // @[Mux.scala 46:16:@233.4]
  wire  _T_482; // @[Mux.scala 46:19:@234.4]
  wire [31:0] _T_483; // @[Mux.scala 46:16:@235.4]
  wire  _T_484; // @[Mux.scala 46:19:@236.4]
  wire [31:0] _T_485; // @[Mux.scala 46:16:@237.4]
  wire  _T_486; // @[Mux.scala 46:19:@238.4]
  wire [31:0] _T_487; // @[Mux.scala 46:16:@239.4]
  wire  _T_488; // @[Mux.scala 46:19:@240.4]
  wire [31:0] _T_489; // @[Mux.scala 46:16:@241.4]
  wire  _T_490; // @[Mux.scala 46:19:@242.4]
  wire [31:0] _T_491; // @[Mux.scala 46:16:@243.4]
  wire  _T_492; // @[Mux.scala 46:19:@244.4]
  wire [31:0] _T_493; // @[Mux.scala 46:16:@245.4]
  wire  _T_494; // @[Mux.scala 46:19:@246.4]
  wire [31:0] _T_495; // @[Mux.scala 46:16:@247.4]
  wire  _T_496; // @[Mux.scala 46:19:@248.4]
  wire [31:0] _T_497; // @[Mux.scala 46:16:@249.4]
  wire  _T_498; // @[Mux.scala 46:19:@250.4]
  wire [31:0] _T_499; // @[Mux.scala 46:16:@251.4]
  wire  _T_500; // @[Mux.scala 46:19:@252.4]
  wire [31:0] _T_501; // @[Mux.scala 46:16:@253.4]
  wire  _T_502; // @[Mux.scala 46:19:@254.4]
  wire [31:0] _T_503; // @[Mux.scala 46:16:@255.4]
  wire  _T_504; // @[Mux.scala 46:19:@256.4]
  wire [31:0] _T_505; // @[Mux.scala 46:16:@257.4]
  wire  _T_506; // @[Mux.scala 46:19:@258.4]
  wire [31:0] _T_507; // @[Mux.scala 46:16:@259.4]
  wire  _T_508; // @[Mux.scala 46:19:@260.4]
  wire [31:0] _T_509; // @[Mux.scala 46:16:@261.4]
  wire  _T_510; // @[Mux.scala 46:19:@262.4]
  wire [31:0] _T_511; // @[Mux.scala 46:16:@263.4]
  wire  _T_512; // @[Mux.scala 46:19:@264.4]
  wire [31:0] _T_513; // @[Mux.scala 46:16:@265.4]
  wire  _T_514; // @[Mux.scala 46:19:@266.4]
  reg [31:0] _T_518; // @[Reg.scala 19:20:@269.4]
  reg [31:0] _RAND_0;
  wire [31:0] _GEN_0; // @[Reg.scala 20:19:@270.4]
  wire [15:0] _T_519; // @[NV_NVDLA_SDP_REG_dual.scala 220:51:@274.4]
  reg [15:0] _T_522; // @[Reg.scala 19:20:@275.4]
  reg [31:0] _RAND_1;
  wire [15:0] _GEN_1; // @[Reg.scala 20:19:@276.4]
  wire [5:0] _T_523; // @[NV_NVDLA_SDP_REG_dual.scala 222:51:@280.4]
  reg [5:0] _T_526; // @[Reg.scala 19:20:@281.4]
  reg [31:0] _RAND_2;
  wire [5:0] _GEN_2; // @[Reg.scala 20:19:@282.4]
  wire [12:0] _T_527; // @[NV_NVDLA_SDP_REG_dual.scala 224:49:@286.4]
  reg [12:0] _T_530; // @[Reg.scala 19:20:@287.4]
  reg [31:0] _RAND_3;
  wire [12:0] _GEN_3; // @[Reg.scala 20:19:@288.4]
  reg [12:0] _T_534; // @[Reg.scala 19:20:@293.4]
  reg [31:0] _RAND_4;
  wire [12:0] _GEN_4; // @[Reg.scala 20:19:@294.4]
  reg [12:0] _T_538; // @[Reg.scala 19:20:@299.4]
  reg [31:0] _RAND_5;
  wire [12:0] _GEN_5; // @[Reg.scala 20:19:@300.4]
  wire [1:0] _T_539; // @[NV_NVDLA_SDP_REG_dual.scala 230:55:@304.4]
  reg [1:0] _T_542; // @[Reg.scala 19:20:@305.4]
  reg [31:0] _RAND_6;
  wire [1:0] _GEN_6; // @[Reg.scala 20:19:@306.4]
  wire [1:0] _T_543; // @[NV_NVDLA_SDP_REG_dual.scala 232:56:@310.4]
  reg [1:0] _T_546; // @[Reg.scala 19:20:@311.4]
  reg [31:0] _RAND_7;
  wire [1:0] _GEN_7; // @[Reg.scala 20:19:@312.4]
  wire [5:0] _T_547; // @[NV_NVDLA_SDP_REG_dual.scala 234:60:@316.4]
  reg [5:0] _T_550; // @[Reg.scala 19:20:@317.4]
  reg [31:0] _RAND_8;
  wire [5:0] _GEN_8; // @[Reg.scala 20:19:@318.4]
  wire  _T_551; // @[NV_NVDLA_SDP_REG_dual.scala 236:52:@322.4]
  reg  _T_554; // @[Reg.scala 19:20:@323.4]
  reg [31:0] _RAND_9;
  wire  _GEN_9; // @[Reg.scala 20:19:@324.4]
  reg [15:0] _T_558; // @[Reg.scala 19:20:@329.4]
  reg [31:0] _RAND_10;
  wire [15:0] _GEN_10; // @[Reg.scala 20:19:@330.4]
  reg [1:0] _T_562; // @[Reg.scala 19:20:@335.4]
  reg [31:0] _RAND_11;
  wire [1:0] _GEN_11; // @[Reg.scala 20:19:@336.4]
  wire  _T_563; // @[NV_NVDLA_SDP_REG_dual.scala 242:55:@340.4]
  reg  _T_566; // @[Reg.scala 19:20:@341.4]
  reg [31:0] _RAND_12;
  wire  _GEN_12; // @[Reg.scala 20:19:@342.4]
  reg  _T_570; // @[Reg.scala 19:20:@347.4]
  reg [31:0] _RAND_13;
  wire  _GEN_13; // @[Reg.scala 20:19:@348.4]
  wire  _T_571; // @[NV_NVDLA_SDP_REG_dual.scala 246:55:@352.4]
  reg  _T_574; // @[Reg.scala 19:20:@353.4]
  reg [31:0] _RAND_14;
  wire  _GEN_14; // @[Reg.scala 20:19:@354.4]
  wire  _T_575; // @[NV_NVDLA_SDP_REG_dual.scala 248:54:@358.4]
  reg  _T_578; // @[Reg.scala 19:20:@359.4]
  reg [31:0] _RAND_15;
  wire  _GEN_15; // @[Reg.scala 20:19:@360.4]
  wire  _T_579; // @[NV_NVDLA_SDP_REG_dual.scala 250:56:@364.4]
  reg  _T_582; // @[Reg.scala 19:20:@365.4]
  reg [31:0] _RAND_16;
  wire  _GEN_16; // @[Reg.scala 20:19:@366.4]
  wire [7:0] _T_583; // @[NV_NVDLA_SDP_REG_dual.scala 252:60:@370.4]
  reg [7:0] _T_586; // @[Reg.scala 19:20:@371.4]
  reg [31:0] _RAND_17;
  wire [7:0] _GEN_17; // @[Reg.scala 20:19:@372.4]
  reg  _T_590; // @[Reg.scala 19:20:@377.4]
  reg [31:0] _RAND_18;
  wire  _GEN_18; // @[Reg.scala 20:19:@378.4]
  reg [15:0] _T_594; // @[Reg.scala 19:20:@383.4]
  reg [31:0] _RAND_19;
  wire [15:0] _GEN_19; // @[Reg.scala 20:19:@384.4]
  reg [5:0] _T_598; // @[Reg.scala 19:20:@389.4]
  reg [31:0] _RAND_20;
  wire [5:0] _GEN_20; // @[Reg.scala 20:19:@390.4]
  reg  _T_602; // @[Reg.scala 19:20:@395.4]
  reg [31:0] _RAND_21;
  wire  _GEN_21; // @[Reg.scala 20:19:@396.4]
  reg [15:0] _T_606; // @[Reg.scala 19:20:@401.4]
  reg [31:0] _RAND_22;
  wire [15:0] _GEN_22; // @[Reg.scala 20:19:@402.4]
  reg [1:0] _T_610; // @[Reg.scala 19:20:@407.4]
  reg [31:0] _RAND_23;
  wire [1:0] _GEN_23; // @[Reg.scala 20:19:@408.4]
  reg  _T_614; // @[Reg.scala 19:20:@413.4]
  reg [31:0] _RAND_24;
  wire  _GEN_24; // @[Reg.scala 20:19:@414.4]
  reg  _T_618; // @[Reg.scala 19:20:@419.4]
  reg [31:0] _RAND_25;
  wire  _GEN_25; // @[Reg.scala 20:19:@420.4]
  reg  _T_622; // @[Reg.scala 19:20:@425.4]
  reg [31:0] _RAND_26;
  wire  _GEN_26; // @[Reg.scala 20:19:@426.4]
  reg  _T_626; // @[Reg.scala 19:20:@431.4]
  reg [31:0] _RAND_27;
  wire  _GEN_27; // @[Reg.scala 20:19:@432.4]
  reg  _T_630; // @[Reg.scala 19:20:@437.4]
  reg [31:0] _RAND_28;
  wire  _GEN_28; // @[Reg.scala 20:19:@438.4]
  reg [7:0] _T_634; // @[Reg.scala 19:20:@443.4]
  reg [31:0] _RAND_29;
  wire [7:0] _GEN_29; // @[Reg.scala 20:19:@444.4]
  reg  _T_638; // @[Reg.scala 19:20:@449.4]
  reg [31:0] _RAND_30;
  wire  _GEN_30; // @[Reg.scala 20:19:@450.4]
  reg [15:0] _T_642; // @[Reg.scala 19:20:@455.4]
  reg [31:0] _RAND_31;
  wire [15:0] _GEN_31; // @[Reg.scala 20:19:@456.4]
  reg  _T_646; // @[Reg.scala 19:20:@461.4]
  reg [31:0] _RAND_32;
  wire  _GEN_32; // @[Reg.scala 20:19:@462.4]
  reg  _T_650; // @[Reg.scala 19:20:@467.4]
  reg [31:0] _RAND_33;
  wire  _GEN_33; // @[Reg.scala 20:19:@468.4]
  reg [31:0] _T_653; // @[Reg.scala 19:20:@472.4]
  reg [31:0] _RAND_34;
  wire [31:0] _GEN_34; // @[Reg.scala 20:19:@473.4]
  reg [15:0] _T_657; // @[Reg.scala 19:20:@478.4]
  reg [31:0] _RAND_35;
  wire [15:0] _GEN_35; // @[Reg.scala 20:19:@479.4]
  reg [5:0] _T_661; // @[Reg.scala 19:20:@484.4]
  reg [31:0] _RAND_36;
  wire [5:0] _GEN_36; // @[Reg.scala 20:19:@485.4]
  reg [31:0] _T_664; // @[Reg.scala 19:20:@489.4]
  reg [31:0] _RAND_37;
  wire [31:0] _GEN_37; // @[Reg.scala 20:19:@490.4]
  reg [1:0] _T_668; // @[Reg.scala 19:20:@495.4]
  reg [31:0] _RAND_38;
  wire [1:0] _GEN_38; // @[Reg.scala 20:19:@496.4]
  reg  _T_672; // @[Reg.scala 19:20:@501.4]
  reg [31:0] _RAND_39;
  wire  _GEN_39; // @[Reg.scala 20:19:@502.4]
  reg  _T_676; // @[Reg.scala 19:20:@507.4]
  reg [31:0] _RAND_40;
  wire  _GEN_40; // @[Reg.scala 20:19:@508.4]
  reg  _T_680; // @[Reg.scala 19:20:@513.4]
  reg [31:0] _RAND_41;
  wire  _GEN_41; // @[Reg.scala 20:19:@514.4]
  reg  _T_684; // @[Reg.scala 19:20:@519.4]
  reg [31:0] _RAND_42;
  wire  _GEN_42; // @[Reg.scala 20:19:@520.4]
  reg  _T_688; // @[Reg.scala 19:20:@525.4]
  reg [31:0] _RAND_43;
  wire  _GEN_43; // @[Reg.scala 20:19:@526.4]
  reg  _T_692; // @[Reg.scala 19:20:@531.4]
  reg [31:0] _RAND_44;
  wire  _GEN_44; // @[Reg.scala 20:19:@532.4]
  reg  _T_696; // @[Reg.scala 19:20:@537.4]
  reg [31:0] _RAND_45;
  wire  _GEN_45; // @[Reg.scala 20:19:@538.4]
  reg [31:0] _T_699; // @[Reg.scala 19:20:@542.4]
  reg [31:0] _RAND_46;
  wire [31:0] _GEN_46; // @[Reg.scala 20:19:@543.4]
  reg [15:0] _T_703; // @[Reg.scala 19:20:@548.4]
  reg [31:0] _RAND_47;
  wire [15:0] _GEN_47; // @[Reg.scala 20:19:@549.4]
  reg [5:0] _T_707; // @[Reg.scala 19:20:@554.4]
  reg [31:0] _RAND_48;
  wire [5:0] _GEN_48; // @[Reg.scala 20:19:@555.4]
  reg [31:0] _T_710; // @[Reg.scala 19:20:@559.4]
  reg [31:0] _RAND_49;
  wire [31:0] _GEN_49; // @[Reg.scala 20:19:@560.4]
  wire [9:0] _T_711; // @[NV_NVDLA_SDP_REG_dual.scala 318:53:@564.4]
  reg [9:0] _T_714; // @[Reg.scala 19:20:@565.4]
  reg [31:0] _RAND_50;
  wire [9:0] _GEN_50; // @[Reg.scala 20:19:@566.4]
  reg [31:0] _T_717; // @[Reg.scala 19:20:@570.4]
  reg [31:0] _RAND_51;
  wire [31:0] _GEN_51; // @[Reg.scala 20:19:@571.4]
  reg [31:0] _T_720; // @[Reg.scala 19:20:@575.4]
  reg [31:0] _RAND_52;
  wire [31:0] _GEN_52; // @[Reg.scala 20:19:@576.4]
  reg [31:0] _T_723; // @[Reg.scala 19:20:@580.4]
  reg [31:0] _RAND_53;
  wire [31:0] _GEN_53; // @[Reg.scala 20:19:@581.4]
  reg  _T_727; // @[Reg.scala 19:20:@586.4]
  reg [31:0] _RAND_54;
  wire  _GEN_54; // @[Reg.scala 20:19:@587.4]
  reg [31:0] _T_730; // @[Reg.scala 19:20:@591.4]
  reg [31:0] _RAND_55;
  wire [31:0] _GEN_55; // @[Reg.scala 20:19:@592.4]
  reg [31:0] _T_733; // @[Reg.scala 19:20:@596.4]
  reg [31:0] _RAND_56;
  wire [31:0] _GEN_56; // @[Reg.scala 20:19:@597.4]
  wire [4:0] _T_734; // @[NV_NVDLA_SDP_REG_dual.scala 332:54:@601.4]
  reg [4:0] _T_737; // @[Reg.scala 19:20:@602.4]
  reg [31:0] _RAND_57;
  wire [4:0] _GEN_57; // @[Reg.scala 20:19:@603.4]
  reg  _T_741; // @[Reg.scala 19:20:@608.4]
  reg [31:0] _RAND_58;
  wire  _GEN_58; // @[Reg.scala 20:19:@609.4]
  wire  _T_742; // @[NV_NVDLA_SDP_REG_dual.scala 336:53:@613.4]
  reg  _T_745; // @[Reg.scala 19:20:@614.4]
  reg [31:0] _RAND_59;
  wire  _GEN_59; // @[Reg.scala 20:19:@615.4]
  reg  _T_749; // @[Reg.scala 19:20:@620.4]
  reg [31:0] _RAND_60;
  wire  _GEN_60; // @[Reg.scala 20:19:@621.4]
  wire  _T_750; // @[NV_NVDLA_SDP_REG_dual.scala 340:50:@625.4]
  reg  _T_753; // @[Reg.scala 19:20:@626.4]
  reg [31:0] _RAND_61;
  wire  _GEN_61; // @[Reg.scala 20:19:@627.4]
  reg  _T_757; // @[Reg.scala 19:20:@632.4]
  reg [31:0] _RAND_62;
  wire  _GEN_62; // @[Reg.scala 20:19:@633.4]
  reg  _T_761; // @[Reg.scala 19:20:@638.4]
  reg [31:0] _RAND_63;
  wire  _GEN_63; // @[Reg.scala 20:19:@639.4]
  reg  _T_765; // @[Reg.scala 19:20:@644.4]
  reg [31:0] _RAND_64;
  wire  _GEN_64; // @[Reg.scala 20:19:@645.4]
  reg  _T_769; // @[Reg.scala 19:20:@650.4]
  reg [31:0] _RAND_65;
  wire  _GEN_65; // @[Reg.scala 20:19:@651.4]
  assign _GEN_66 = {{20'd0}, reg_offset}; // @[NV_NVDLA_SDP_REG_dual.scala 59:56:@8.4]
  assign _T_174 = _GEN_66 == 32'hc0; // @[NV_NVDLA_SDP_REG_dual.scala 59:56:@8.4]
  assign nvdla_sdp_d_cvt_offset_0_wren = _T_174 & reg_wr_en; // @[NV_NVDLA_SDP_REG_dual.scala 59:80:@9.4]
  assign _T_176 = _GEN_66 == 32'hc4; // @[NV_NVDLA_SDP_REG_dual.scala 60:55:@10.4]
  assign nvdla_sdp_d_cvt_scale_0_wren = _T_176 & reg_wr_en; // @[NV_NVDLA_SDP_REG_dual.scala 60:80:@11.4]
  assign _T_178 = _GEN_66 == 32'hc8; // @[NV_NVDLA_SDP_REG_dual.scala 61:55:@12.4]
  assign nvdla_sdp_d_cvt_shift_0_wren = _T_178 & reg_wr_en; // @[NV_NVDLA_SDP_REG_dual.scala 61:80:@13.4]
  assign _T_180 = _GEN_66 == 32'h44; // @[NV_NVDLA_SDP_REG_dual.scala 62:63:@14.4]
  assign nvdla_sdp_d_data_cube_channel_0_wren = _T_180 & reg_wr_en; // @[NV_NVDLA_SDP_REG_dual.scala 62:88:@15.4]
  assign _T_182 = _GEN_66 == 32'h40; // @[NV_NVDLA_SDP_REG_dual.scala 63:62:@16.4]
  assign nvdla_sdp_d_data_cube_height_0_wren = _T_182 & reg_wr_en; // @[NV_NVDLA_SDP_REG_dual.scala 63:86:@17.4]
  assign _T_184 = _GEN_66 == 32'h3c; // @[NV_NVDLA_SDP_REG_dual.scala 64:61:@18.4]
  assign nvdla_sdp_d_data_cube_width_0_wren = _T_184 & reg_wr_en; // @[NV_NVDLA_SDP_REG_dual.scala 64:85:@19.4]
  assign _T_186 = _GEN_66 == 32'hbc; // @[NV_NVDLA_SDP_REG_dual.scala 65:57:@20.4]
  assign nvdla_sdp_d_data_format_0_wren = _T_186 & reg_wr_en; // @[NV_NVDLA_SDP_REG_dual.scala 65:81:@21.4]
  assign _T_188 = _GEN_66 == 32'h70; // @[NV_NVDLA_SDP_REG_dual.scala 66:59:@22.4]
  assign nvdla_sdp_d_dp_bn_alu_cfg_0_wren = _T_188 & reg_wr_en; // @[NV_NVDLA_SDP_REG_dual.scala 66:83:@23.4]
  assign _T_190 = _GEN_66 == 32'h74; // @[NV_NVDLA_SDP_REG_dual.scala 67:65:@24.4]
  assign nvdla_sdp_d_dp_bn_alu_src_value_0_wren = _T_190 & reg_wr_en; // @[NV_NVDLA_SDP_REG_dual.scala 67:89:@25.4]
  assign _T_192 = _GEN_66 == 32'h6c; // @[NV_NVDLA_SDP_REG_dual.scala 68:55:@26.4]
  assign nvdla_sdp_d_dp_bn_cfg_0_wren = _T_192 & reg_wr_en; // @[NV_NVDLA_SDP_REG_dual.scala 68:79:@27.4]
  assign _T_194 = _GEN_66 == 32'h78; // @[NV_NVDLA_SDP_REG_dual.scala 69:59:@28.4]
  assign nvdla_sdp_d_dp_bn_mul_cfg_0_wren = _T_194 & reg_wr_en; // @[NV_NVDLA_SDP_REG_dual.scala 69:83:@29.4]
  assign _T_196 = _GEN_66 == 32'h7c; // @[NV_NVDLA_SDP_REG_dual.scala 70:65:@30.4]
  assign nvdla_sdp_d_dp_bn_mul_src_value_0_wren = _T_196 & reg_wr_en; // @[NV_NVDLA_SDP_REG_dual.scala 70:89:@31.4]
  assign _T_198 = _GEN_66 == 32'h5c; // @[NV_NVDLA_SDP_REG_dual.scala 71:59:@32.4]
  assign nvdla_sdp_d_dp_bs_alu_cfg_0_wren = _T_198 & reg_wr_en; // @[NV_NVDLA_SDP_REG_dual.scala 71:83:@33.4]
  assign _T_200 = _GEN_66 == 32'h60; // @[NV_NVDLA_SDP_REG_dual.scala 72:65:@34.4]
  assign nvdla_sdp_d_dp_bs_alu_src_value_0_wren = _T_200 & reg_wr_en; // @[NV_NVDLA_SDP_REG_dual.scala 72:89:@35.4]
  assign _T_202 = _GEN_66 == 32'h58; // @[NV_NVDLA_SDP_REG_dual.scala 73:55:@36.4]
  assign nvdla_sdp_d_dp_bs_cfg_0_wren = _T_202 & reg_wr_en; // @[NV_NVDLA_SDP_REG_dual.scala 73:79:@37.4]
  assign _T_204 = _GEN_66 == 32'h64; // @[NV_NVDLA_SDP_REG_dual.scala 74:59:@38.4]
  assign nvdla_sdp_d_dp_bs_mul_cfg_0_wren = _T_204 & reg_wr_en; // @[NV_NVDLA_SDP_REG_dual.scala 74:83:@39.4]
  assign _T_206 = _GEN_66 == 32'h68; // @[NV_NVDLA_SDP_REG_dual.scala 75:65:@40.4]
  assign nvdla_sdp_d_dp_bs_mul_src_value_0_wren = _T_206 & reg_wr_en; // @[NV_NVDLA_SDP_REG_dual.scala 75:89:@41.4]
  assign _T_208 = _GEN_66 == 32'h84; // @[NV_NVDLA_SDP_REG_dual.scala 76:59:@42.4]
  assign nvdla_sdp_d_dp_ew_alu_cfg_0_wren = _T_208 & reg_wr_en; // @[NV_NVDLA_SDP_REG_dual.scala 76:83:@43.4]
  assign _T_210 = _GEN_66 == 32'h8c; // @[NV_NVDLA_SDP_REG_dual.scala 77:72:@44.4]
  assign nvdla_sdp_d_dp_ew_alu_cvt_offset_value_0_wren = _T_210 & reg_wr_en; // @[NV_NVDLA_SDP_REG_dual.scala 77:96:@45.4]
  assign _T_212 = _GEN_66 == 32'h90; // @[NV_NVDLA_SDP_REG_dual.scala 78:71:@46.4]
  assign nvdla_sdp_d_dp_ew_alu_cvt_scale_value_0_wren = _T_212 & reg_wr_en; // @[NV_NVDLA_SDP_REG_dual.scala 78:95:@47.4]
  assign _T_214 = _GEN_66 == 32'h94; // @[NV_NVDLA_SDP_REG_dual.scala 79:74:@48.4]
  assign nvdla_sdp_d_dp_ew_alu_cvt_truncate_value_0_wren = _T_214 & reg_wr_en; // @[NV_NVDLA_SDP_REG_dual.scala 79:98:@49.4]
  assign _T_216 = _GEN_66 == 32'h88; // @[NV_NVDLA_SDP_REG_dual.scala 80:65:@50.4]
  assign nvdla_sdp_d_dp_ew_alu_src_value_0_wren = _T_216 & reg_wr_en; // @[NV_NVDLA_SDP_REG_dual.scala 80:89:@51.4]
  assign _T_218 = _GEN_66 == 32'h80; // @[NV_NVDLA_SDP_REG_dual.scala 81:55:@52.4]
  assign nvdla_sdp_d_dp_ew_cfg_0_wren = _T_218 & reg_wr_en; // @[NV_NVDLA_SDP_REG_dual.scala 81:79:@53.4]
  assign _T_220 = _GEN_66 == 32'h98; // @[NV_NVDLA_SDP_REG_dual.scala 82:59:@54.4]
  assign nvdla_sdp_d_dp_ew_mul_cfg_0_wren = _T_220 & reg_wr_en; // @[NV_NVDLA_SDP_REG_dual.scala 82:83:@55.4]
  assign _T_222 = _GEN_66 == 32'ha0; // @[NV_NVDLA_SDP_REG_dual.scala 83:72:@56.4]
  assign nvdla_sdp_d_dp_ew_mul_cvt_offset_value_0_wren = _T_222 & reg_wr_en; // @[NV_NVDLA_SDP_REG_dual.scala 83:96:@57.4]
  assign _T_224 = _GEN_66 == 32'ha4; // @[NV_NVDLA_SDP_REG_dual.scala 84:71:@58.4]
  assign nvdla_sdp_d_dp_ew_mul_cvt_scale_value_0_wren = _T_224 & reg_wr_en; // @[NV_NVDLA_SDP_REG_dual.scala 84:95:@59.4]
  assign _T_226 = _GEN_66 == 32'ha8; // @[NV_NVDLA_SDP_REG_dual.scala 85:74:@60.4]
  assign nvdla_sdp_d_dp_ew_mul_cvt_truncate_value_0_wren = _T_226 & reg_wr_en; // @[NV_NVDLA_SDP_REG_dual.scala 85:98:@61.4]
  assign _T_228 = _GEN_66 == 32'h9c; // @[NV_NVDLA_SDP_REG_dual.scala 86:65:@62.4]
  assign nvdla_sdp_d_dp_ew_mul_src_value_0_wren = _T_228 & reg_wr_en; // @[NV_NVDLA_SDP_REG_dual.scala 86:89:@63.4]
  assign _T_230 = _GEN_66 == 32'hac; // @[NV_NVDLA_SDP_REG_dual.scala 87:66:@64.4]
  assign nvdla_sdp_d_dp_ew_truncate_value_0_wren = _T_230 & reg_wr_en; // @[NV_NVDLA_SDP_REG_dual.scala 87:90:@65.4]
  assign _T_232 = _GEN_66 == 32'h4c; // @[NV_NVDLA_SDP_REG_dual.scala 88:64:@66.4]
  assign nvdla_sdp_d_dst_base_addr_high_0_wren = _T_232 & reg_wr_en; // @[NV_NVDLA_SDP_REG_dual.scala 88:88:@67.4]
  assign _T_234 = _GEN_66 == 32'h48; // @[NV_NVDLA_SDP_REG_dual.scala 89:63:@68.4]
  assign nvdla_sdp_d_dst_base_addr_low_0_wren = _T_234 & reg_wr_en; // @[NV_NVDLA_SDP_REG_dual.scala 89:87:@69.4]
  assign _T_236 = _GEN_66 == 32'hb8; // @[NV_NVDLA_SDP_REG_dual.scala 90:62:@70.4]
  assign nvdla_sdp_d_dst_batch_stride_0_wren = _T_236 & reg_wr_en; // @[NV_NVDLA_SDP_REG_dual.scala 90:86:@71.4]
  assign _T_238 = _GEN_66 == 32'hb4; // @[NV_NVDLA_SDP_REG_dual.scala 91:57:@72.4]
  assign nvdla_sdp_d_dst_dma_cfg_0_wren = _T_238 & reg_wr_en; // @[NV_NVDLA_SDP_REG_dual.scala 91:81:@73.4]
  assign _T_240 = _GEN_66 == 32'h50; // @[NV_NVDLA_SDP_REG_dual.scala 92:61:@74.4]
  assign nvdla_sdp_d_dst_line_stride_0_wren = _T_240 & reg_wr_en; // @[NV_NVDLA_SDP_REG_dual.scala 92:85:@75.4]
  assign _T_242 = _GEN_66 == 32'h54; // @[NV_NVDLA_SDP_REG_dual.scala 93:64:@76.4]
  assign nvdla_sdp_d_dst_surface_stride_0_wren = _T_242 & reg_wr_en; // @[NV_NVDLA_SDP_REG_dual.scala 93:88:@77.4]
  assign _T_244 = _GEN_66 == 32'hb0; // @[NV_NVDLA_SDP_REG_dual.scala 94:62:@78.4]
  assign nvdla_sdp_d_feature_mode_cfg_0_wren = _T_244 & reg_wr_en; // @[NV_NVDLA_SDP_REG_dual.scala 94:86:@79.4]
  assign _T_246 = _GEN_66 == 32'h38; // @[NV_NVDLA_SDP_REG_dual.scala 95:55:@80.4]
  assign _T_248 = _GEN_66 == 32'hdc; // @[NV_NVDLA_SDP_REG_dual.scala 96:57:@82.4]
  assign nvdla_sdp_d_perf_enable_0_wren = _T_248 & reg_wr_en; // @[NV_NVDLA_SDP_REG_dual.scala 96:81:@83.4]
  assign _T_275 = {16'h0,cvt_scale}; // @[Cat.scala 30:58:@107.4]
  assign _T_278 = {26'h0,cvt_shift}; // @[Cat.scala 30:58:@108.4]
  assign _T_281 = {19'h0,channel}; // @[Cat.scala 30:58:@109.4]
  assign _T_284 = {19'h0,height}; // @[Cat.scala 30:58:@110.4]
  assign _T_287 = {19'h0,width}; // @[Cat.scala 30:58:@111.4]
  assign _T_291 = {28'h0,out_precision,proc_precision}; // @[Cat.scala 30:58:@113.4]
  assign _T_297 = {18'h0,bn_alu_shift_value,7'h0,bn_alu_src}; // @[Cat.scala 30:58:@116.4]
  assign _T_300 = {16'h0,bn_alu_operand}; // @[Cat.scala 30:58:@117.4]
  assign _T_308 = {25'h0,bn_relu_bypass,bn_mul_prelu,bn_mul_bypass,bn_alu_algo,bn_alu_bypass,bn_bypass}; // @[Cat.scala 30:58:@123.4]
  assign _T_314 = {16'h0,bn_mul_shift_value,7'h0,bn_mul_src}; // @[Cat.scala 30:58:@126.4]
  assign _T_317 = {16'h0,bn_mul_operand}; // @[Cat.scala 30:58:@127.4]
  assign _T_323 = {18'h0,bs_alu_shift_value,7'h0,bs_alu_src}; // @[Cat.scala 30:58:@130.4]
  assign _T_326 = {16'h0,bs_alu_operand}; // @[Cat.scala 30:58:@131.4]
  assign _T_334 = {25'h0,bs_relu_bypass,bs_mul_prelu,bs_mul_bypass,bs_alu_algo,bs_alu_bypass,bs_bypass}; // @[Cat.scala 30:58:@137.4]
  assign _T_340 = {16'h0,bs_mul_shift_value,7'h0,bs_mul_src}; // @[Cat.scala 30:58:@140.4]
  assign _T_343 = {16'h0,bs_mul_operand}; // @[Cat.scala 30:58:@141.4]
  assign _T_347 = {30'h0,ew_alu_cvt_bypass,ew_alu_src}; // @[Cat.scala 30:58:@143.4]
  assign _T_351 = {16'h0,ew_alu_cvt_scale}; // @[Cat.scala 30:58:@144.4]
  assign _T_354 = {26'h0,ew_alu_cvt_truncate}; // @[Cat.scala 30:58:@145.4]
  assign _T_363 = {25'h0,ew_lut_bypass,ew_mul_prelu,ew_mul_bypass,ew_alu_algo,ew_alu_bypass,ew_bypass}; // @[Cat.scala 30:58:@151.4]
  assign _T_367 = {30'h0,ew_mul_cvt_bypass,ew_mul_src}; // @[Cat.scala 30:58:@153.4]
  assign _T_371 = {16'h0,ew_mul_cvt_scale}; // @[Cat.scala 30:58:@154.4]
  assign _T_374 = {26'h0,ew_mul_cvt_truncate}; // @[Cat.scala 30:58:@155.4]
  assign _T_378 = {22'h0,ew_truncate}; // @[Cat.scala 30:58:@156.4]
  assign _T_384 = {31'h0,dst_ram_type}; // @[Cat.scala 30:58:@157.4]
  assign _T_395 = {19'h0,batch_number,4'h0,nan_to_zero,winograd,output_dst,flying_mode}; // @[Cat.scala 30:58:@163.4]
  assign _T_398 = {31'h0,op_en}; // @[Cat.scala 30:58:@164.4]
  assign _T_404 = {28'h0,perf_nan_inf_count_en,perf_sat_en,perf_lut_en,perf_dma_en}; // @[Cat.scala 30:58:@168.4]
  assign _T_414 = {31'h0,status_unequal}; // @[Cat.scala 30:58:@169.4]
  assign _T_418 = 32'hd8 == _GEN_66; // @[Mux.scala 46:19:@170.4]
  assign _T_419 = _T_418 ? status_nan_output_num : 32'h0; // @[Mux.scala 46:16:@171.4]
  assign _T_420 = 32'hd0 == _GEN_66; // @[Mux.scala 46:19:@172.4]
  assign _T_421 = _T_420 ? status_nan_input_num : _T_419; // @[Mux.scala 46:16:@173.4]
  assign _T_422 = 32'hd4 == _GEN_66; // @[Mux.scala 46:19:@174.4]
  assign _T_423 = _T_422 ? status_inf_input_num : _T_421; // @[Mux.scala 46:16:@175.4]
  assign _T_424 = 32'hcc == _GEN_66; // @[Mux.scala 46:19:@176.4]
  assign _T_425 = _T_424 ? _T_414 : _T_423; // @[Mux.scala 46:16:@177.4]
  assign _T_426 = 32'he0 == _GEN_66; // @[Mux.scala 46:19:@178.4]
  assign _T_427 = _T_426 ? wdma_stall : _T_425; // @[Mux.scala 46:16:@179.4]
  assign _T_428 = 32'hec == _GEN_66; // @[Mux.scala 46:19:@180.4]
  assign _T_429 = _T_428 ? out_saturation : _T_427; // @[Mux.scala 46:16:@181.4]
  assign _T_430 = 32'he4 == _GEN_66; // @[Mux.scala 46:19:@182.4]
  assign _T_431 = _T_430 ? lut_uflow : _T_429; // @[Mux.scala 46:16:@183.4]
  assign _T_432 = 32'he8 == _GEN_66; // @[Mux.scala 46:19:@184.4]
  assign _T_433 = _T_432 ? lut_oflow : _T_431; // @[Mux.scala 46:16:@185.4]
  assign _T_434 = 32'hf8 == _GEN_66; // @[Mux.scala 46:19:@186.4]
  assign _T_435 = _T_434 ? lut_lo_hit : _T_433; // @[Mux.scala 46:16:@187.4]
  assign _T_436 = 32'hf4 == _GEN_66; // @[Mux.scala 46:19:@188.4]
  assign _T_437 = _T_436 ? lut_le_hit : _T_435; // @[Mux.scala 46:16:@189.4]
  assign _T_438 = 32'hf0 == _GEN_66; // @[Mux.scala 46:19:@190.4]
  assign _T_439 = _T_438 ? lut_hybrid : _T_437; // @[Mux.scala 46:16:@191.4]
  assign _T_440 = 32'hdc == _GEN_66; // @[Mux.scala 46:19:@192.4]
  assign _T_441 = _T_440 ? _T_404 : _T_439; // @[Mux.scala 46:16:@193.4]
  assign _T_442 = 32'h38 == _GEN_66; // @[Mux.scala 46:19:@194.4]
  assign _T_443 = _T_442 ? _T_398 : _T_441; // @[Mux.scala 46:16:@195.4]
  assign _T_444 = 32'hb0 == _GEN_66; // @[Mux.scala 46:19:@196.4]
  assign _T_445 = _T_444 ? _T_395 : _T_443; // @[Mux.scala 46:16:@197.4]
  assign _T_446 = 32'h54 == _GEN_66; // @[Mux.scala 46:19:@198.4]
  assign _T_447 = _T_446 ? dst_surface_stride : _T_445; // @[Mux.scala 46:16:@199.4]
  assign _T_448 = 32'h50 == _GEN_66; // @[Mux.scala 46:19:@200.4]
  assign _T_449 = _T_448 ? dst_line_stride : _T_447; // @[Mux.scala 46:16:@201.4]
  assign _T_450 = 32'hb4 == _GEN_66; // @[Mux.scala 46:19:@202.4]
  assign _T_451 = _T_450 ? _T_384 : _T_449; // @[Mux.scala 46:16:@203.4]
  assign _T_452 = 32'hb8 == _GEN_66; // @[Mux.scala 46:19:@204.4]
  assign _T_453 = _T_452 ? dst_batch_stride : _T_451; // @[Mux.scala 46:16:@205.4]
  assign _T_454 = 32'h48 == _GEN_66; // @[Mux.scala 46:19:@206.4]
  assign _T_455 = _T_454 ? dst_base_addr_low : _T_453; // @[Mux.scala 46:16:@207.4]
  assign _T_456 = 32'h4c == _GEN_66; // @[Mux.scala 46:19:@208.4]
  assign _T_457 = _T_456 ? dst_base_addr_high : _T_455; // @[Mux.scala 46:16:@209.4]
  assign _T_458 = 32'hac == _GEN_66; // @[Mux.scala 46:19:@210.4]
  assign _T_459 = _T_458 ? _T_378 : _T_457; // @[Mux.scala 46:16:@211.4]
  assign _T_460 = 32'h9c == _GEN_66; // @[Mux.scala 46:19:@212.4]
  assign _T_461 = _T_460 ? ew_mul_operand : _T_459; // @[Mux.scala 46:16:@213.4]
  assign _T_462 = 32'ha8 == _GEN_66; // @[Mux.scala 46:19:@214.4]
  assign _T_463 = _T_462 ? _T_374 : _T_461; // @[Mux.scala 46:16:@215.4]
  assign _T_464 = 32'ha4 == _GEN_66; // @[Mux.scala 46:19:@216.4]
  assign _T_465 = _T_464 ? _T_371 : _T_463; // @[Mux.scala 46:16:@217.4]
  assign _T_466 = 32'ha0 == _GEN_66; // @[Mux.scala 46:19:@218.4]
  assign _T_467 = _T_466 ? ew_mul_cvt_offset : _T_465; // @[Mux.scala 46:16:@219.4]
  assign _T_468 = 32'h98 == _GEN_66; // @[Mux.scala 46:19:@220.4]
  assign _T_469 = _T_468 ? _T_367 : _T_467; // @[Mux.scala 46:16:@221.4]
  assign _T_470 = 32'h80 == _GEN_66; // @[Mux.scala 46:19:@222.4]
  assign _T_471 = _T_470 ? _T_363 : _T_469; // @[Mux.scala 46:16:@223.4]
  assign _T_472 = 32'h88 == _GEN_66; // @[Mux.scala 46:19:@224.4]
  assign _T_473 = _T_472 ? ew_alu_operand : _T_471; // @[Mux.scala 46:16:@225.4]
  assign _T_474 = 32'h94 == _GEN_66; // @[Mux.scala 46:19:@226.4]
  assign _T_475 = _T_474 ? _T_354 : _T_473; // @[Mux.scala 46:16:@227.4]
  assign _T_476 = 32'h90 == _GEN_66; // @[Mux.scala 46:19:@228.4]
  assign _T_477 = _T_476 ? _T_351 : _T_475; // @[Mux.scala 46:16:@229.4]
  assign _T_478 = 32'h8c == _GEN_66; // @[Mux.scala 46:19:@230.4]
  assign _T_479 = _T_478 ? ew_alu_cvt_offset : _T_477; // @[Mux.scala 46:16:@231.4]
  assign _T_480 = 32'h84 == _GEN_66; // @[Mux.scala 46:19:@232.4]
  assign _T_481 = _T_480 ? _T_347 : _T_479; // @[Mux.scala 46:16:@233.4]
  assign _T_482 = 32'h68 == _GEN_66; // @[Mux.scala 46:19:@234.4]
  assign _T_483 = _T_482 ? _T_343 : _T_481; // @[Mux.scala 46:16:@235.4]
  assign _T_484 = 32'h64 == _GEN_66; // @[Mux.scala 46:19:@236.4]
  assign _T_485 = _T_484 ? _T_340 : _T_483; // @[Mux.scala 46:16:@237.4]
  assign _T_486 = 32'h58 == _GEN_66; // @[Mux.scala 46:19:@238.4]
  assign _T_487 = _T_486 ? _T_334 : _T_485; // @[Mux.scala 46:16:@239.4]
  assign _T_488 = 32'h60 == _GEN_66; // @[Mux.scala 46:19:@240.4]
  assign _T_489 = _T_488 ? _T_326 : _T_487; // @[Mux.scala 46:16:@241.4]
  assign _T_490 = 32'h5c == _GEN_66; // @[Mux.scala 46:19:@242.4]
  assign _T_491 = _T_490 ? _T_323 : _T_489; // @[Mux.scala 46:16:@243.4]
  assign _T_492 = 32'h7c == _GEN_66; // @[Mux.scala 46:19:@244.4]
  assign _T_493 = _T_492 ? _T_317 : _T_491; // @[Mux.scala 46:16:@245.4]
  assign _T_494 = 32'h78 == _GEN_66; // @[Mux.scala 46:19:@246.4]
  assign _T_495 = _T_494 ? _T_314 : _T_493; // @[Mux.scala 46:16:@247.4]
  assign _T_496 = 32'h6c == _GEN_66; // @[Mux.scala 46:19:@248.4]
  assign _T_497 = _T_496 ? _T_308 : _T_495; // @[Mux.scala 46:16:@249.4]
  assign _T_498 = 32'h74 == _GEN_66; // @[Mux.scala 46:19:@250.4]
  assign _T_499 = _T_498 ? _T_300 : _T_497; // @[Mux.scala 46:16:@251.4]
  assign _T_500 = 32'h70 == _GEN_66; // @[Mux.scala 46:19:@252.4]
  assign _T_501 = _T_500 ? _T_297 : _T_499; // @[Mux.scala 46:16:@253.4]
  assign _T_502 = 32'hbc == _GEN_66; // @[Mux.scala 46:19:@254.4]
  assign _T_503 = _T_502 ? _T_291 : _T_501; // @[Mux.scala 46:16:@255.4]
  assign _T_504 = 32'h3c == _GEN_66; // @[Mux.scala 46:19:@256.4]
  assign _T_505 = _T_504 ? _T_287 : _T_503; // @[Mux.scala 46:16:@257.4]
  assign _T_506 = 32'h40 == _GEN_66; // @[Mux.scala 46:19:@258.4]
  assign _T_507 = _T_506 ? _T_284 : _T_505; // @[Mux.scala 46:16:@259.4]
  assign _T_508 = 32'h44 == _GEN_66; // @[Mux.scala 46:19:@260.4]
  assign _T_509 = _T_508 ? _T_281 : _T_507; // @[Mux.scala 46:16:@261.4]
  assign _T_510 = 32'hc8 == _GEN_66; // @[Mux.scala 46:19:@262.4]
  assign _T_511 = _T_510 ? _T_278 : _T_509; // @[Mux.scala 46:16:@263.4]
  assign _T_512 = 32'hc4 == _GEN_66; // @[Mux.scala 46:19:@264.4]
  assign _T_513 = _T_512 ? _T_275 : _T_511; // @[Mux.scala 46:16:@265.4]
  assign _T_514 = 32'hc0 == _GEN_66; // @[Mux.scala 46:19:@266.4]
  assign _GEN_0 = nvdla_sdp_d_cvt_offset_0_wren ? reg_wr_data : _T_518; // @[Reg.scala 20:19:@270.4]
  assign _T_519 = reg_wr_data[15:0]; // @[NV_NVDLA_SDP_REG_dual.scala 220:51:@274.4]
  assign _GEN_1 = nvdla_sdp_d_cvt_scale_0_wren ? _T_519 : _T_522; // @[Reg.scala 20:19:@276.4]
  assign _T_523 = reg_wr_data[5:0]; // @[NV_NVDLA_SDP_REG_dual.scala 222:51:@280.4]
  assign _GEN_2 = nvdla_sdp_d_cvt_shift_0_wren ? _T_523 : _T_526; // @[Reg.scala 20:19:@282.4]
  assign _T_527 = reg_wr_data[12:0]; // @[NV_NVDLA_SDP_REG_dual.scala 224:49:@286.4]
  assign _GEN_3 = nvdla_sdp_d_data_cube_channel_0_wren ? _T_527 : _T_530; // @[Reg.scala 20:19:@288.4]
  assign _GEN_4 = nvdla_sdp_d_data_cube_height_0_wren ? _T_527 : _T_534; // @[Reg.scala 20:19:@294.4]
  assign _GEN_5 = nvdla_sdp_d_data_cube_width_0_wren ? _T_527 : _T_538; // @[Reg.scala 20:19:@300.4]
  assign _T_539 = reg_wr_data[3:2]; // @[NV_NVDLA_SDP_REG_dual.scala 230:55:@304.4]
  assign _GEN_6 = nvdla_sdp_d_data_format_0_wren ? _T_539 : _T_542; // @[Reg.scala 20:19:@306.4]
  assign _T_543 = reg_wr_data[1:0]; // @[NV_NVDLA_SDP_REG_dual.scala 232:56:@310.4]
  assign _GEN_7 = nvdla_sdp_d_data_format_0_wren ? _T_543 : _T_546; // @[Reg.scala 20:19:@312.4]
  assign _T_547 = reg_wr_data[13:8]; // @[NV_NVDLA_SDP_REG_dual.scala 234:60:@316.4]
  assign _GEN_8 = nvdla_sdp_d_dp_bn_alu_cfg_0_wren ? _T_547 : _T_550; // @[Reg.scala 20:19:@318.4]
  assign _T_551 = reg_wr_data[0]; // @[NV_NVDLA_SDP_REG_dual.scala 236:52:@322.4]
  assign _GEN_9 = nvdla_sdp_d_dp_bn_alu_cfg_0_wren ? _T_551 : _T_554; // @[Reg.scala 20:19:@324.4]
  assign _GEN_10 = nvdla_sdp_d_dp_bn_alu_src_value_0_wren ? _T_519 : _T_558; // @[Reg.scala 20:19:@330.4]
  assign _GEN_11 = nvdla_sdp_d_dp_bn_cfg_0_wren ? _T_539 : _T_562; // @[Reg.scala 20:19:@336.4]
  assign _T_563 = reg_wr_data[1]; // @[NV_NVDLA_SDP_REG_dual.scala 242:55:@340.4]
  assign _GEN_12 = nvdla_sdp_d_dp_bn_cfg_0_wren ? _T_563 : _T_566; // @[Reg.scala 20:19:@342.4]
  assign _GEN_13 = nvdla_sdp_d_dp_bn_cfg_0_wren ? _T_551 : _T_570; // @[Reg.scala 20:19:@348.4]
  assign _T_571 = reg_wr_data[4]; // @[NV_NVDLA_SDP_REG_dual.scala 246:55:@352.4]
  assign _GEN_14 = nvdla_sdp_d_dp_bn_cfg_0_wren ? _T_571 : _T_574; // @[Reg.scala 20:19:@354.4]
  assign _T_575 = reg_wr_data[5]; // @[NV_NVDLA_SDP_REG_dual.scala 248:54:@358.4]
  assign _GEN_15 = nvdla_sdp_d_dp_bn_cfg_0_wren ? _T_575 : _T_578; // @[Reg.scala 20:19:@360.4]
  assign _T_579 = reg_wr_data[6]; // @[NV_NVDLA_SDP_REG_dual.scala 250:56:@364.4]
  assign _GEN_16 = nvdla_sdp_d_dp_bn_cfg_0_wren ? _T_579 : _T_582; // @[Reg.scala 20:19:@366.4]
  assign _T_583 = reg_wr_data[15:8]; // @[NV_NVDLA_SDP_REG_dual.scala 252:60:@370.4]
  assign _GEN_17 = nvdla_sdp_d_dp_bn_mul_cfg_0_wren ? _T_583 : _T_586; // @[Reg.scala 20:19:@372.4]
  assign _GEN_18 = nvdla_sdp_d_dp_bn_mul_cfg_0_wren ? _T_551 : _T_590; // @[Reg.scala 20:19:@378.4]
  assign _GEN_19 = nvdla_sdp_d_dp_bn_mul_src_value_0_wren ? _T_519 : _T_594; // @[Reg.scala 20:19:@384.4]
  assign _GEN_20 = nvdla_sdp_d_dp_bs_alu_cfg_0_wren ? _T_547 : _T_598; // @[Reg.scala 20:19:@390.4]
  assign _GEN_21 = nvdla_sdp_d_dp_bs_alu_cfg_0_wren ? _T_551 : _T_602; // @[Reg.scala 20:19:@396.4]
  assign _GEN_22 = nvdla_sdp_d_dp_bs_alu_src_value_0_wren ? _T_519 : _T_606; // @[Reg.scala 20:19:@402.4]
  assign _GEN_23 = nvdla_sdp_d_dp_bs_cfg_0_wren ? _T_539 : _T_610; // @[Reg.scala 20:19:@408.4]
  assign _GEN_24 = nvdla_sdp_d_dp_bs_cfg_0_wren ? _T_563 : _T_614; // @[Reg.scala 20:19:@414.4]
  assign _GEN_25 = nvdla_sdp_d_dp_bs_cfg_0_wren ? _T_551 : _T_618; // @[Reg.scala 20:19:@420.4]
  assign _GEN_26 = nvdla_sdp_d_dp_bs_cfg_0_wren ? _T_571 : _T_622; // @[Reg.scala 20:19:@426.4]
  assign _GEN_27 = nvdla_sdp_d_dp_bs_cfg_0_wren ? _T_575 : _T_626; // @[Reg.scala 20:19:@432.4]
  assign _GEN_28 = nvdla_sdp_d_dp_bs_cfg_0_wren ? _T_579 : _T_630; // @[Reg.scala 20:19:@438.4]
  assign _GEN_29 = nvdla_sdp_d_dp_bs_mul_cfg_0_wren ? _T_583 : _T_634; // @[Reg.scala 20:19:@444.4]
  assign _GEN_30 = nvdla_sdp_d_dp_bs_mul_cfg_0_wren ? _T_551 : _T_638; // @[Reg.scala 20:19:@450.4]
  assign _GEN_31 = nvdla_sdp_d_dp_bs_mul_src_value_0_wren ? _T_519 : _T_642; // @[Reg.scala 20:19:@456.4]
  assign _GEN_32 = nvdla_sdp_d_dp_ew_alu_cfg_0_wren ? _T_563 : _T_646; // @[Reg.scala 20:19:@462.4]
  assign _GEN_33 = nvdla_sdp_d_dp_ew_alu_cfg_0_wren ? _T_551 : _T_650; // @[Reg.scala 20:19:@468.4]
  assign _GEN_34 = nvdla_sdp_d_dp_ew_alu_cvt_offset_value_0_wren ? reg_wr_data : _T_653; // @[Reg.scala 20:19:@473.4]
  assign _GEN_35 = nvdla_sdp_d_dp_ew_alu_cvt_scale_value_0_wren ? _T_519 : _T_657; // @[Reg.scala 20:19:@479.4]
  assign _GEN_36 = nvdla_sdp_d_dp_ew_alu_cvt_truncate_value_0_wren ? _T_523 : _T_661; // @[Reg.scala 20:19:@485.4]
  assign _GEN_37 = nvdla_sdp_d_dp_ew_alu_src_value_0_wren ? reg_wr_data : _T_664; // @[Reg.scala 20:19:@490.4]
  assign _GEN_38 = nvdla_sdp_d_dp_ew_cfg_0_wren ? _T_539 : _T_668; // @[Reg.scala 20:19:@496.4]
  assign _GEN_39 = nvdla_sdp_d_dp_ew_cfg_0_wren ? _T_563 : _T_672; // @[Reg.scala 20:19:@502.4]
  assign _GEN_40 = nvdla_sdp_d_dp_ew_cfg_0_wren ? _T_551 : _T_676; // @[Reg.scala 20:19:@508.4]
  assign _GEN_41 = nvdla_sdp_d_dp_ew_cfg_0_wren ? _T_579 : _T_680; // @[Reg.scala 20:19:@514.4]
  assign _GEN_42 = nvdla_sdp_d_dp_ew_cfg_0_wren ? _T_571 : _T_684; // @[Reg.scala 20:19:@520.4]
  assign _GEN_43 = nvdla_sdp_d_dp_ew_cfg_0_wren ? _T_575 : _T_688; // @[Reg.scala 20:19:@526.4]
  assign _GEN_44 = nvdla_sdp_d_dp_ew_mul_cfg_0_wren ? _T_563 : _T_692; // @[Reg.scala 20:19:@532.4]
  assign _GEN_45 = nvdla_sdp_d_dp_ew_mul_cfg_0_wren ? _T_551 : _T_696; // @[Reg.scala 20:19:@538.4]
  assign _GEN_46 = nvdla_sdp_d_dp_ew_mul_cvt_offset_value_0_wren ? reg_wr_data : _T_699; // @[Reg.scala 20:19:@543.4]
  assign _GEN_47 = nvdla_sdp_d_dp_ew_mul_cvt_scale_value_0_wren ? _T_519 : _T_703; // @[Reg.scala 20:19:@549.4]
  assign _GEN_48 = nvdla_sdp_d_dp_ew_mul_cvt_truncate_value_0_wren ? _T_523 : _T_707; // @[Reg.scala 20:19:@555.4]
  assign _GEN_49 = nvdla_sdp_d_dp_ew_mul_src_value_0_wren ? reg_wr_data : _T_710; // @[Reg.scala 20:19:@560.4]
  assign _T_711 = reg_wr_data[9:0]; // @[NV_NVDLA_SDP_REG_dual.scala 318:53:@564.4]
  assign _GEN_50 = nvdla_sdp_d_dp_ew_truncate_value_0_wren ? _T_711 : _T_714; // @[Reg.scala 20:19:@566.4]
  assign _GEN_51 = nvdla_sdp_d_dst_base_addr_high_0_wren ? reg_wr_data : _T_717; // @[Reg.scala 20:19:@571.4]
  assign _GEN_52 = nvdla_sdp_d_dst_base_addr_low_0_wren ? reg_wr_data : _T_720; // @[Reg.scala 20:19:@576.4]
  assign _GEN_53 = nvdla_sdp_d_dst_batch_stride_0_wren ? reg_wr_data : _T_723; // @[Reg.scala 20:19:@581.4]
  assign _GEN_54 = nvdla_sdp_d_dst_dma_cfg_0_wren ? _T_551 : _T_727; // @[Reg.scala 20:19:@587.4]
  assign _GEN_55 = nvdla_sdp_d_dst_line_stride_0_wren ? reg_wr_data : _T_730; // @[Reg.scala 20:19:@592.4]
  assign _GEN_56 = nvdla_sdp_d_dst_surface_stride_0_wren ? reg_wr_data : _T_733; // @[Reg.scala 20:19:@597.4]
  assign _T_734 = reg_wr_data[12:8]; // @[NV_NVDLA_SDP_REG_dual.scala 332:54:@601.4]
  assign _GEN_57 = nvdla_sdp_d_feature_mode_cfg_0_wren ? _T_734 : _T_737; // @[Reg.scala 20:19:@603.4]
  assign _GEN_58 = nvdla_sdp_d_feature_mode_cfg_0_wren ? _T_551 : _T_741; // @[Reg.scala 20:19:@609.4]
  assign _T_742 = reg_wr_data[3]; // @[NV_NVDLA_SDP_REG_dual.scala 336:53:@613.4]
  assign _GEN_59 = nvdla_sdp_d_feature_mode_cfg_0_wren ? _T_742 : _T_745; // @[Reg.scala 20:19:@615.4]
  assign _GEN_60 = nvdla_sdp_d_feature_mode_cfg_0_wren ? _T_563 : _T_749; // @[Reg.scala 20:19:@621.4]
  assign _T_750 = reg_wr_data[2]; // @[NV_NVDLA_SDP_REG_dual.scala 340:50:@625.4]
  assign _GEN_61 = nvdla_sdp_d_feature_mode_cfg_0_wren ? _T_750 : _T_753; // @[Reg.scala 20:19:@627.4]
  assign _GEN_62 = nvdla_sdp_d_perf_enable_0_wren ? _T_551 : _T_757; // @[Reg.scala 20:19:@633.4]
  assign _GEN_63 = nvdla_sdp_d_perf_enable_0_wren ? _T_563 : _T_761; // @[Reg.scala 20:19:@639.4]
  assign _GEN_64 = nvdla_sdp_d_perf_enable_0_wren ? _T_742 : _T_765; // @[Reg.scala 20:19:@645.4]
  assign _GEN_65 = nvdla_sdp_d_perf_enable_0_wren ? _T_750 : _T_769; // @[Reg.scala 20:19:@651.4]
  assign reg_rd_data = _T_514 ? cvt_offset : _T_513; // @[NV_NVDLA_SDP_REG_dual.scala 113:20:@268.4]
  assign cvt_offset = _T_518; // @[NV_NVDLA_SDP_REG_dual.scala 218:25:@273.4]
  assign cvt_scale = _T_522; // @[NV_NVDLA_SDP_REG_dual.scala 220:24:@279.4]
  assign cvt_shift = _T_526; // @[NV_NVDLA_SDP_REG_dual.scala 222:24:@285.4]
  assign channel = _T_530; // @[NV_NVDLA_SDP_REG_dual.scala 224:22:@291.4]
  assign height = _T_534; // @[NV_NVDLA_SDP_REG_dual.scala 226:21:@297.4]
  assign width = _T_538; // @[NV_NVDLA_SDP_REG_dual.scala 228:22:@303.4]
  assign out_precision = _T_542; // @[NV_NVDLA_SDP_REG_dual.scala 230:28:@309.4]
  assign proc_precision = _T_546; // @[NV_NVDLA_SDP_REG_dual.scala 232:29:@315.4]
  assign bn_alu_shift_value = _T_550; // @[NV_NVDLA_SDP_REG_dual.scala 234:33:@321.4]
  assign bn_alu_src = _T_554; // @[NV_NVDLA_SDP_REG_dual.scala 236:25:@327.4]
  assign bn_alu_operand = _T_558; // @[NV_NVDLA_SDP_REG_dual.scala 238:29:@333.4]
  assign bn_alu_algo = _T_562; // @[NV_NVDLA_SDP_REG_dual.scala 240:26:@339.4]
  assign bn_alu_bypass = _T_566; // @[NV_NVDLA_SDP_REG_dual.scala 242:28:@345.4]
  assign bn_bypass = _T_570; // @[NV_NVDLA_SDP_REG_dual.scala 244:24:@351.4]
  assign bn_mul_bypass = _T_574; // @[NV_NVDLA_SDP_REG_dual.scala 246:28:@357.4]
  assign bn_mul_prelu = _T_578; // @[NV_NVDLA_SDP_REG_dual.scala 248:27:@363.4]
  assign bn_relu_bypass = _T_582; // @[NV_NVDLA_SDP_REG_dual.scala 250:29:@369.4]
  assign bn_mul_shift_value = _T_586; // @[NV_NVDLA_SDP_REG_dual.scala 252:33:@375.4]
  assign bn_mul_src = _T_590; // @[NV_NVDLA_SDP_REG_dual.scala 254:25:@381.4]
  assign bn_mul_operand = _T_594; // @[NV_NVDLA_SDP_REG_dual.scala 256:29:@387.4]
  assign bs_alu_shift_value = _T_598; // @[NV_NVDLA_SDP_REG_dual.scala 258:33:@393.4]
  assign bs_alu_src = _T_602; // @[NV_NVDLA_SDP_REG_dual.scala 260:25:@399.4]
  assign bs_alu_operand = _T_606; // @[NV_NVDLA_SDP_REG_dual.scala 262:29:@405.4]
  assign bs_alu_algo = _T_610; // @[NV_NVDLA_SDP_REG_dual.scala 264:26:@411.4]
  assign bs_alu_bypass = _T_614; // @[NV_NVDLA_SDP_REG_dual.scala 266:28:@417.4]
  assign bs_bypass = _T_618; // @[NV_NVDLA_SDP_REG_dual.scala 268:24:@423.4]
  assign bs_mul_bypass = _T_622; // @[NV_NVDLA_SDP_REG_dual.scala 270:28:@429.4]
  assign bs_mul_prelu = _T_626; // @[NV_NVDLA_SDP_REG_dual.scala 272:27:@435.4]
  assign bs_relu_bypass = _T_630; // @[NV_NVDLA_SDP_REG_dual.scala 274:29:@441.4]
  assign bs_mul_shift_value = _T_634; // @[NV_NVDLA_SDP_REG_dual.scala 276:33:@447.4]
  assign bs_mul_src = _T_638; // @[NV_NVDLA_SDP_REG_dual.scala 278:25:@453.4]
  assign bs_mul_operand = _T_642; // @[NV_NVDLA_SDP_REG_dual.scala 280:29:@459.4]
  assign ew_alu_cvt_bypass = _T_646; // @[NV_NVDLA_SDP_REG_dual.scala 282:32:@465.4]
  assign ew_alu_src = _T_650; // @[NV_NVDLA_SDP_REG_dual.scala 284:25:@471.4]
  assign ew_alu_cvt_offset = _T_653; // @[NV_NVDLA_SDP_REG_dual.scala 286:32:@476.4]
  assign ew_alu_cvt_scale = _T_657; // @[NV_NVDLA_SDP_REG_dual.scala 288:31:@482.4]
  assign ew_alu_cvt_truncate = _T_661; // @[NV_NVDLA_SDP_REG_dual.scala 290:34:@488.4]
  assign ew_alu_operand = _T_664; // @[NV_NVDLA_SDP_REG_dual.scala 292:29:@493.4]
  assign ew_alu_algo = _T_668; // @[NV_NVDLA_SDP_REG_dual.scala 294:26:@499.4]
  assign ew_alu_bypass = _T_672; // @[NV_NVDLA_SDP_REG_dual.scala 296:28:@505.4]
  assign ew_bypass = _T_676; // @[NV_NVDLA_SDP_REG_dual.scala 298:24:@511.4]
  assign ew_lut_bypass = _T_680; // @[NV_NVDLA_SDP_REG_dual.scala 300:28:@517.4]
  assign ew_mul_bypass = _T_684; // @[NV_NVDLA_SDP_REG_dual.scala 302:28:@523.4]
  assign ew_mul_prelu = _T_688; // @[NV_NVDLA_SDP_REG_dual.scala 304:27:@529.4]
  assign ew_mul_cvt_bypass = _T_692; // @[NV_NVDLA_SDP_REG_dual.scala 306:32:@535.4]
  assign ew_mul_src = _T_696; // @[NV_NVDLA_SDP_REG_dual.scala 308:25:@541.4]
  assign ew_mul_cvt_offset = _T_699; // @[NV_NVDLA_SDP_REG_dual.scala 310:32:@546.4]
  assign ew_mul_cvt_scale = _T_703; // @[NV_NVDLA_SDP_REG_dual.scala 312:31:@552.4]
  assign ew_mul_cvt_truncate = _T_707; // @[NV_NVDLA_SDP_REG_dual.scala 314:34:@558.4]
  assign ew_mul_operand = _T_710; // @[NV_NVDLA_SDP_REG_dual.scala 316:29:@563.4]
  assign ew_truncate = _T_714; // @[NV_NVDLA_SDP_REG_dual.scala 318:26:@569.4]
  assign dst_base_addr_high = _T_717; // @[NV_NVDLA_SDP_REG_dual.scala 320:33:@574.4]
  assign dst_base_addr_low = _T_720; // @[NV_NVDLA_SDP_REG_dual.scala 322:32:@579.4]
  assign dst_batch_stride = _T_723; // @[NV_NVDLA_SDP_REG_dual.scala 324:31:@584.4]
  assign dst_ram_type = _T_727; // @[NV_NVDLA_SDP_REG_dual.scala 326:27:@590.4]
  assign dst_line_stride = _T_730; // @[NV_NVDLA_SDP_REG_dual.scala 328:30:@595.4]
  assign dst_surface_stride = _T_733; // @[NV_NVDLA_SDP_REG_dual.scala 330:33:@600.4]
  assign batch_number = _T_737; // @[NV_NVDLA_SDP_REG_dual.scala 332:27:@606.4]
  assign flying_mode = _T_741; // @[NV_NVDLA_SDP_REG_dual.scala 334:26:@612.4]
  assign nan_to_zero = _T_745; // @[NV_NVDLA_SDP_REG_dual.scala 336:26:@618.4]
  assign output_dst = _T_749; // @[NV_NVDLA_SDP_REG_dual.scala 338:25:@624.4]
  assign winograd = _T_753; // @[NV_NVDLA_SDP_REG_dual.scala 340:23:@630.4]
  assign perf_dma_en = _T_757; // @[NV_NVDLA_SDP_REG_dual.scala 342:26:@636.4]
  assign perf_lut_en = _T_761; // @[NV_NVDLA_SDP_REG_dual.scala 344:26:@642.4]
  assign perf_nan_inf_count_en = _T_765; // @[NV_NVDLA_SDP_REG_dual.scala 346:36:@648.4]
  assign perf_sat_en = _T_769; // @[NV_NVDLA_SDP_REG_dual.scala 348:26:@654.4]
  assign op_en_trigger = _T_246 & reg_wr_en; // @[NV_NVDLA_SDP_REG_dual.scala 109:22:@106.4]
`ifdef RANDOMIZE_GARBAGE_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_INVALID_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_REG_INIT
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_MEM_INIT
`define RANDOMIZE
`endif
`ifndef RANDOM
`define RANDOM $random
`endif
`ifdef RANDOMIZE
  integer initvar;
  initial begin
    `ifdef INIT_RANDOM
      `INIT_RANDOM
    `endif
    `ifndef VERILATOR
      #0.002 begin end
    `endif
  `ifdef RANDOMIZE_REG_INIT
  _RAND_0 = {1{`RANDOM}};
  _T_518 = _RAND_0[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_1 = {1{`RANDOM}};
  _T_522 = _RAND_1[15:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_2 = {1{`RANDOM}};
  _T_526 = _RAND_2[5:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_3 = {1{`RANDOM}};
  _T_530 = _RAND_3[12:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_4 = {1{`RANDOM}};
  _T_534 = _RAND_4[12:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_5 = {1{`RANDOM}};
  _T_538 = _RAND_5[12:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_6 = {1{`RANDOM}};
  _T_542 = _RAND_6[1:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_7 = {1{`RANDOM}};
  _T_546 = _RAND_7[1:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_8 = {1{`RANDOM}};
  _T_550 = _RAND_8[5:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_9 = {1{`RANDOM}};
  _T_554 = _RAND_9[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_10 = {1{`RANDOM}};
  _T_558 = _RAND_10[15:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_11 = {1{`RANDOM}};
  _T_562 = _RAND_11[1:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_12 = {1{`RANDOM}};
  _T_566 = _RAND_12[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_13 = {1{`RANDOM}};
  _T_570 = _RAND_13[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_14 = {1{`RANDOM}};
  _T_574 = _RAND_14[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_15 = {1{`RANDOM}};
  _T_578 = _RAND_15[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_16 = {1{`RANDOM}};
  _T_582 = _RAND_16[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_17 = {1{`RANDOM}};
  _T_586 = _RAND_17[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_18 = {1{`RANDOM}};
  _T_590 = _RAND_18[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_19 = {1{`RANDOM}};
  _T_594 = _RAND_19[15:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_20 = {1{`RANDOM}};
  _T_598 = _RAND_20[5:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_21 = {1{`RANDOM}};
  _T_602 = _RAND_21[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_22 = {1{`RANDOM}};
  _T_606 = _RAND_22[15:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_23 = {1{`RANDOM}};
  _T_610 = _RAND_23[1:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_24 = {1{`RANDOM}};
  _T_614 = _RAND_24[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_25 = {1{`RANDOM}};
  _T_618 = _RAND_25[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_26 = {1{`RANDOM}};
  _T_622 = _RAND_26[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_27 = {1{`RANDOM}};
  _T_626 = _RAND_27[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_28 = {1{`RANDOM}};
  _T_630 = _RAND_28[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_29 = {1{`RANDOM}};
  _T_634 = _RAND_29[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_30 = {1{`RANDOM}};
  _T_638 = _RAND_30[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_31 = {1{`RANDOM}};
  _T_642 = _RAND_31[15:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_32 = {1{`RANDOM}};
  _T_646 = _RAND_32[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_33 = {1{`RANDOM}};
  _T_650 = _RAND_33[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_34 = {1{`RANDOM}};
  _T_653 = _RAND_34[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_35 = {1{`RANDOM}};
  _T_657 = _RAND_35[15:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_36 = {1{`RANDOM}};
  _T_661 = _RAND_36[5:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_37 = {1{`RANDOM}};
  _T_664 = _RAND_37[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_38 = {1{`RANDOM}};
  _T_668 = _RAND_38[1:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_39 = {1{`RANDOM}};
  _T_672 = _RAND_39[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_40 = {1{`RANDOM}};
  _T_676 = _RAND_40[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_41 = {1{`RANDOM}};
  _T_680 = _RAND_41[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_42 = {1{`RANDOM}};
  _T_684 = _RAND_42[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_43 = {1{`RANDOM}};
  _T_688 = _RAND_43[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_44 = {1{`RANDOM}};
  _T_692 = _RAND_44[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_45 = {1{`RANDOM}};
  _T_696 = _RAND_45[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_46 = {1{`RANDOM}};
  _T_699 = _RAND_46[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_47 = {1{`RANDOM}};
  _T_703 = _RAND_47[15:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_48 = {1{`RANDOM}};
  _T_707 = _RAND_48[5:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_49 = {1{`RANDOM}};
  _T_710 = _RAND_49[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_50 = {1{`RANDOM}};
  _T_714 = _RAND_50[9:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_51 = {1{`RANDOM}};
  _T_717 = _RAND_51[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_52 = {1{`RANDOM}};
  _T_720 = _RAND_52[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_53 = {1{`RANDOM}};
  _T_723 = _RAND_53[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_54 = {1{`RANDOM}};
  _T_727 = _RAND_54[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_55 = {1{`RANDOM}};
  _T_730 = _RAND_55[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_56 = {1{`RANDOM}};
  _T_733 = _RAND_56[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_57 = {1{`RANDOM}};
  _T_737 = _RAND_57[4:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_58 = {1{`RANDOM}};
  _T_741 = _RAND_58[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_59 = {1{`RANDOM}};
  _T_745 = _RAND_59[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_60 = {1{`RANDOM}};
  _T_749 = _RAND_60[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_61 = {1{`RANDOM}};
  _T_753 = _RAND_61[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_62 = {1{`RANDOM}};
  _T_757 = _RAND_62[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_63 = {1{`RANDOM}};
  _T_761 = _RAND_63[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_64 = {1{`RANDOM}};
  _T_765 = _RAND_64[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_65 = {1{`RANDOM}};
  _T_769 = _RAND_65[0:0];
  `endif // RANDOMIZE_REG_INIT
  end
`endif // RANDOMIZE
  always @(posedge nvdla_core_clk) begin
    if (!nvdla_core_rstn) begin
      _T_518 <= 32'h0;
    end else begin
      if (nvdla_sdp_d_cvt_offset_0_wren) begin
        _T_518 <= reg_wr_data;
      end
    end
    if (!nvdla_core_rstn) begin
      _T_522 <= 16'h0;
    end else begin
      if (nvdla_sdp_d_cvt_scale_0_wren) begin
        _T_522 <= _T_519;
      end
    end
    if (!nvdla_core_rstn) begin
      _T_526 <= 6'h0;
    end else begin
      if (nvdla_sdp_d_cvt_shift_0_wren) begin
        _T_526 <= _T_523;
      end
    end
    if (!nvdla_core_rstn) begin
      _T_530 <= 13'h0;
    end else begin
      if (nvdla_sdp_d_data_cube_channel_0_wren) begin
        _T_530 <= _T_527;
      end
    end
    if (!nvdla_core_rstn) begin
      _T_534 <= 13'h0;
    end else begin
      if (nvdla_sdp_d_data_cube_height_0_wren) begin
        _T_534 <= _T_527;
      end
    end
    if (!nvdla_core_rstn) begin
      _T_538 <= 13'h0;
    end else begin
      if (nvdla_sdp_d_data_cube_width_0_wren) begin
        _T_538 <= _T_527;
      end
    end
    if (!nvdla_core_rstn) begin
      _T_542 <= 2'h0;
    end else begin
      if (nvdla_sdp_d_data_format_0_wren) begin
        _T_542 <= _T_539;
      end
    end
    if (!nvdla_core_rstn) begin
      _T_546 <= 2'h0;
    end else begin
      if (nvdla_sdp_d_data_format_0_wren) begin
        _T_546 <= _T_543;
      end
    end
    if (!nvdla_core_rstn) begin
      _T_550 <= 6'h0;
    end else begin
      if (nvdla_sdp_d_dp_bn_alu_cfg_0_wren) begin
        _T_550 <= _T_547;
      end
    end
    if (!nvdla_core_rstn) begin
      _T_554 <= 1'h0;
    end else begin
      if (nvdla_sdp_d_dp_bn_alu_cfg_0_wren) begin
        _T_554 <= _T_551;
      end
    end
    if (!nvdla_core_rstn) begin
      _T_558 <= 16'h0;
    end else begin
      if (nvdla_sdp_d_dp_bn_alu_src_value_0_wren) begin
        _T_558 <= _T_519;
      end
    end
    if (!nvdla_core_rstn) begin
      _T_562 <= 2'h0;
    end else begin
      if (nvdla_sdp_d_dp_bn_cfg_0_wren) begin
        _T_562 <= _T_539;
      end
    end
    if (!nvdla_core_rstn) begin
      _T_566 <= 1'h1;
    end else begin
      if (nvdla_sdp_d_dp_bn_cfg_0_wren) begin
        _T_566 <= _T_563;
      end
    end
    if (!nvdla_core_rstn) begin
      _T_570 <= 1'h1;
    end else begin
      if (nvdla_sdp_d_dp_bn_cfg_0_wren) begin
        _T_570 <= _T_551;
      end
    end
    if (!nvdla_core_rstn) begin
      _T_574 <= 1'h1;
    end else begin
      if (nvdla_sdp_d_dp_bn_cfg_0_wren) begin
        _T_574 <= _T_571;
      end
    end
    if (!nvdla_core_rstn) begin
      _T_578 <= 1'h1;
    end else begin
      if (nvdla_sdp_d_dp_bn_cfg_0_wren) begin
        _T_578 <= _T_575;
      end
    end
    if (!nvdla_core_rstn) begin
      _T_582 <= 1'h1;
    end else begin
      if (nvdla_sdp_d_dp_bn_cfg_0_wren) begin
        _T_582 <= _T_579;
      end
    end
    if (!nvdla_core_rstn) begin
      _T_586 <= 8'h0;
    end else begin
      if (nvdla_sdp_d_dp_bn_mul_cfg_0_wren) begin
        _T_586 <= _T_583;
      end
    end
    if (!nvdla_core_rstn) begin
      _T_590 <= 1'h0;
    end else begin
      if (nvdla_sdp_d_dp_bn_mul_cfg_0_wren) begin
        _T_590 <= _T_551;
      end
    end
    if (!nvdla_core_rstn) begin
      _T_594 <= 16'h0;
    end else begin
      if (nvdla_sdp_d_dp_bn_mul_src_value_0_wren) begin
        _T_594 <= _T_519;
      end
    end
    if (!nvdla_core_rstn) begin
      _T_598 <= 6'h0;
    end else begin
      if (nvdla_sdp_d_dp_bs_alu_cfg_0_wren) begin
        _T_598 <= _T_547;
      end
    end
    if (!nvdla_core_rstn) begin
      _T_602 <= 1'h0;
    end else begin
      if (nvdla_sdp_d_dp_bs_alu_cfg_0_wren) begin
        _T_602 <= _T_551;
      end
    end
    if (!nvdla_core_rstn) begin
      _T_606 <= 16'h0;
    end else begin
      if (nvdla_sdp_d_dp_bs_alu_src_value_0_wren) begin
        _T_606 <= _T_519;
      end
    end
    if (!nvdla_core_rstn) begin
      _T_610 <= 2'h0;
    end else begin
      if (nvdla_sdp_d_dp_bs_cfg_0_wren) begin
        _T_610 <= _T_539;
      end
    end
    if (!nvdla_core_rstn) begin
      _T_614 <= 1'h1;
    end else begin
      if (nvdla_sdp_d_dp_bs_cfg_0_wren) begin
        _T_614 <= _T_563;
      end
    end
    if (!nvdla_core_rstn) begin
      _T_618 <= 1'h1;
    end else begin
      if (nvdla_sdp_d_dp_bs_cfg_0_wren) begin
        _T_618 <= _T_551;
      end
    end
    if (!nvdla_core_rstn) begin
      _T_622 <= 1'h1;
    end else begin
      if (nvdla_sdp_d_dp_bs_cfg_0_wren) begin
        _T_622 <= _T_571;
      end
    end
    if (!nvdla_core_rstn) begin
      _T_626 <= 1'h0;
    end else begin
      if (nvdla_sdp_d_dp_bs_cfg_0_wren) begin
        _T_626 <= _T_575;
      end
    end
    if (!nvdla_core_rstn) begin
      _T_630 <= 1'h1;
    end else begin
      if (nvdla_sdp_d_dp_bs_cfg_0_wren) begin
        _T_630 <= _T_579;
      end
    end
    if (!nvdla_core_rstn) begin
      _T_634 <= 8'h0;
    end else begin
      if (nvdla_sdp_d_dp_bs_mul_cfg_0_wren) begin
        _T_634 <= _T_583;
      end
    end
    if (!nvdla_core_rstn) begin
      _T_638 <= 1'h0;
    end else begin
      if (nvdla_sdp_d_dp_bs_mul_cfg_0_wren) begin
        _T_638 <= _T_551;
      end
    end
    if (!nvdla_core_rstn) begin
      _T_642 <= 16'h0;
    end else begin
      if (nvdla_sdp_d_dp_bs_mul_src_value_0_wren) begin
        _T_642 <= _T_519;
      end
    end
    if (!nvdla_core_rstn) begin
      _T_646 <= 1'h1;
    end else begin
      if (nvdla_sdp_d_dp_ew_alu_cfg_0_wren) begin
        _T_646 <= _T_563;
      end
    end
    if (!nvdla_core_rstn) begin
      _T_650 <= 1'h0;
    end else begin
      if (nvdla_sdp_d_dp_ew_alu_cfg_0_wren) begin
        _T_650 <= _T_551;
      end
    end
    if (!nvdla_core_rstn) begin
      _T_653 <= 32'h0;
    end else begin
      if (nvdla_sdp_d_dp_ew_alu_cvt_offset_value_0_wren) begin
        _T_653 <= reg_wr_data;
      end
    end
    if (!nvdla_core_rstn) begin
      _T_657 <= 16'h0;
    end else begin
      if (nvdla_sdp_d_dp_ew_alu_cvt_scale_value_0_wren) begin
        _T_657 <= _T_519;
      end
    end
    if (!nvdla_core_rstn) begin
      _T_661 <= 6'h0;
    end else begin
      if (nvdla_sdp_d_dp_ew_alu_cvt_truncate_value_0_wren) begin
        _T_661 <= _T_523;
      end
    end
    if (!nvdla_core_rstn) begin
      _T_664 <= 32'h0;
    end else begin
      if (nvdla_sdp_d_dp_ew_alu_src_value_0_wren) begin
        _T_664 <= reg_wr_data;
      end
    end
    if (!nvdla_core_rstn) begin
      _T_668 <= 2'h0;
    end else begin
      if (nvdla_sdp_d_dp_ew_cfg_0_wren) begin
        _T_668 <= _T_539;
      end
    end
    if (!nvdla_core_rstn) begin
      _T_672 <= 1'h1;
    end else begin
      if (nvdla_sdp_d_dp_ew_cfg_0_wren) begin
        _T_672 <= _T_563;
      end
    end
    if (!nvdla_core_rstn) begin
      _T_676 <= 1'h1;
    end else begin
      if (nvdla_sdp_d_dp_ew_cfg_0_wren) begin
        _T_676 <= _T_551;
      end
    end
    if (!nvdla_core_rstn) begin
      _T_680 <= 1'h1;
    end else begin
      if (nvdla_sdp_d_dp_ew_cfg_0_wren) begin
        _T_680 <= _T_579;
      end
    end
    if (!nvdla_core_rstn) begin
      _T_684 <= 1'h1;
    end else begin
      if (nvdla_sdp_d_dp_ew_cfg_0_wren) begin
        _T_684 <= _T_571;
      end
    end
    if (!nvdla_core_rstn) begin
      _T_688 <= 1'h0;
    end else begin
      if (nvdla_sdp_d_dp_ew_cfg_0_wren) begin
        _T_688 <= _T_575;
      end
    end
    if (!nvdla_core_rstn) begin
      _T_692 <= 1'h1;
    end else begin
      if (nvdla_sdp_d_dp_ew_mul_cfg_0_wren) begin
        _T_692 <= _T_563;
      end
    end
    if (!nvdla_core_rstn) begin
      _T_696 <= 1'h0;
    end else begin
      if (nvdla_sdp_d_dp_ew_mul_cfg_0_wren) begin
        _T_696 <= _T_551;
      end
    end
    if (!nvdla_core_rstn) begin
      _T_699 <= 32'h0;
    end else begin
      if (nvdla_sdp_d_dp_ew_mul_cvt_offset_value_0_wren) begin
        _T_699 <= reg_wr_data;
      end
    end
    if (!nvdla_core_rstn) begin
      _T_703 <= 16'h0;
    end else begin
      if (nvdla_sdp_d_dp_ew_mul_cvt_scale_value_0_wren) begin
        _T_703 <= _T_519;
      end
    end
    if (!nvdla_core_rstn) begin
      _T_707 <= 6'h0;
    end else begin
      if (nvdla_sdp_d_dp_ew_mul_cvt_truncate_value_0_wren) begin
        _T_707 <= _T_523;
      end
    end
    if (!nvdla_core_rstn) begin
      _T_710 <= 32'h0;
    end else begin
      if (nvdla_sdp_d_dp_ew_mul_src_value_0_wren) begin
        _T_710 <= reg_wr_data;
      end
    end
    if (!nvdla_core_rstn) begin
      _T_714 <= 10'h0;
    end else begin
      if (nvdla_sdp_d_dp_ew_truncate_value_0_wren) begin
        _T_714 <= _T_711;
      end
    end
    if (!nvdla_core_rstn) begin
      _T_717 <= 32'h0;
    end else begin
      if (nvdla_sdp_d_dst_base_addr_high_0_wren) begin
        _T_717 <= reg_wr_data;
      end
    end
    if (!nvdla_core_rstn) begin
      _T_720 <= 32'h0;
    end else begin
      if (nvdla_sdp_d_dst_base_addr_low_0_wren) begin
        _T_720 <= reg_wr_data;
      end
    end
    if (!nvdla_core_rstn) begin
      _T_723 <= 32'h0;
    end else begin
      if (nvdla_sdp_d_dst_batch_stride_0_wren) begin
        _T_723 <= reg_wr_data;
      end
    end
    if (!nvdla_core_rstn) begin
      _T_727 <= 1'h0;
    end else begin
      if (nvdla_sdp_d_dst_dma_cfg_0_wren) begin
        _T_727 <= _T_551;
      end
    end
    if (!nvdla_core_rstn) begin
      _T_730 <= 32'h0;
    end else begin
      if (nvdla_sdp_d_dst_line_stride_0_wren) begin
        _T_730 <= reg_wr_data;
      end
    end
    if (!nvdla_core_rstn) begin
      _T_733 <= 32'h0;
    end else begin
      if (nvdla_sdp_d_dst_surface_stride_0_wren) begin
        _T_733 <= reg_wr_data;
      end
    end
    if (!nvdla_core_rstn) begin
      _T_737 <= 5'h0;
    end else begin
      if (nvdla_sdp_d_feature_mode_cfg_0_wren) begin
        _T_737 <= _T_734;
      end
    end
    if (!nvdla_core_rstn) begin
      _T_741 <= 1'h0;
    end else begin
      if (nvdla_sdp_d_feature_mode_cfg_0_wren) begin
        _T_741 <= _T_551;
      end
    end
    if (!nvdla_core_rstn) begin
      _T_745 <= 1'h0;
    end else begin
      if (nvdla_sdp_d_feature_mode_cfg_0_wren) begin
        _T_745 <= _T_742;
      end
    end
    if (!nvdla_core_rstn) begin
      _T_749 <= 1'h0;
    end else begin
      if (nvdla_sdp_d_feature_mode_cfg_0_wren) begin
        _T_749 <= _T_563;
      end
    end
    if (!nvdla_core_rstn) begin
      _T_753 <= 1'h0;
    end else begin
      if (nvdla_sdp_d_feature_mode_cfg_0_wren) begin
        _T_753 <= _T_750;
      end
    end
    if (!nvdla_core_rstn) begin
      _T_757 <= 1'h0;
    end else begin
      if (nvdla_sdp_d_perf_enable_0_wren) begin
        _T_757 <= _T_551;
      end
    end
    if (!nvdla_core_rstn) begin
      _T_761 <= 1'h0;
    end else begin
      if (nvdla_sdp_d_perf_enable_0_wren) begin
        _T_761 <= _T_563;
      end
    end
    if (!nvdla_core_rstn) begin
      _T_765 <= 1'h0;
    end else begin
      if (nvdla_sdp_d_perf_enable_0_wren) begin
        _T_765 <= _T_742;
      end
    end
    if (!nvdla_core_rstn) begin
      _T_769 <= 1'h0;
    end else begin
      if (nvdla_sdp_d_perf_enable_0_wren) begin
        _T_769 <= _T_750;
      end
    end
  end
endmodule



// ================================================================
// NVDLA Open Source Project
// 
// Copyright(c) 2016 - 2017 NVIDIA Corporation.  Licensed under the
// NVDLA Open Hardware License; Check "LICENSE" which comes with 
// this distribution for more information.
// ================================================================

// File Name: NV_NVDLA_SDP_REG_dual.v

#include "NV_NVDLA_SDP_define.h"
module NV_NVDLA_SDP_REG_dual (
   reg_rd_data
  ,reg_offset
   // verilint 498 off
   // leda UNUSED_DEC off
  ,reg_wr_data
   // verilint 498 on
   // leda UNUSED_DEC on
  ,reg_wr_en
  ,nvdla_core_clk
  ,nvdla_core_rstn
  ,cvt_offset
  ,cvt_scale
  ,cvt_shift
  ,channel
  ,height
  ,width
  ,out_precision
  ,proc_precision
  ,bn_alu_shift_value
  ,bn_alu_src
  ,bn_alu_operand
  ,bn_alu_algo
  ,bn_alu_bypass
  ,bn_bypass
  ,bn_mul_bypass
  ,bn_mul_prelu
  ,bn_relu_bypass
  ,bn_mul_shift_value
  ,bn_mul_src
  ,bn_mul_operand
  ,bs_alu_shift_value
  ,bs_alu_src
  ,bs_alu_operand
  ,bs_alu_algo
  ,bs_alu_bypass
  ,bs_bypass
  ,bs_mul_bypass
  ,bs_mul_prelu
  ,bs_relu_bypass
  ,bs_mul_shift_value
  ,bs_mul_src
  ,bs_mul_operand
  ,ew_alu_cvt_bypass
  ,ew_alu_src
  ,ew_alu_cvt_offset
  ,ew_alu_cvt_scale
  ,ew_alu_cvt_truncate
  ,ew_alu_operand
  ,ew_alu_algo
  ,ew_alu_bypass
  ,ew_bypass
  ,ew_lut_bypass
  ,ew_mul_bypass
  ,ew_mul_prelu
  ,ew_mul_cvt_bypass
  ,ew_mul_src
  ,ew_mul_cvt_offset
  ,ew_mul_cvt_scale
  ,ew_mul_cvt_truncate
  ,ew_mul_operand
  ,ew_truncate
  ,dst_base_addr_high
  ,dst_base_addr_low
  ,dst_batch_stride
  ,dst_ram_type
  ,dst_line_stride
  ,dst_surface_stride
  ,batch_number
  ,flying_mode
  ,nan_to_zero
  ,output_dst
  ,winograd
  ,op_en_trigger
  ,perf_dma_en
  ,perf_lut_en
  ,perf_nan_inf_count_en
  ,perf_sat_en
  ,op_en
  ,lut_hybrid
  ,lut_le_hit
  ,lut_lo_hit
  ,lut_oflow
  ,lut_uflow
  ,out_saturation
  ,wdma_stall
  ,status_unequal
  ,status_inf_input_num
  ,status_nan_input_num
  ,status_nan_output_num
  );

wire   [31:0] nvdla_sdp_d_cvt_offset_0_out;
wire   [31:0] nvdla_sdp_d_cvt_scale_0_out;
wire   [31:0] nvdla_sdp_d_cvt_shift_0_out;
wire   [31:0] nvdla_sdp_d_data_cube_channel_0_out;
wire   [31:0] nvdla_sdp_d_data_cube_height_0_out;
wire   [31:0] nvdla_sdp_d_data_cube_width_0_out;
wire   [31:0] nvdla_sdp_d_data_format_0_out;
wire   [31:0] nvdla_sdp_d_dp_bn_alu_cfg_0_out;
wire   [31:0] nvdla_sdp_d_dp_bn_alu_src_value_0_out;
wire   [31:0] nvdla_sdp_d_dp_bn_cfg_0_out;
wire   [31:0] nvdla_sdp_d_dp_bn_mul_cfg_0_out;
wire   [31:0] nvdla_sdp_d_dp_bn_mul_src_value_0_out;
wire   [31:0] nvdla_sdp_d_dp_bs_alu_cfg_0_out;
wire   [31:0] nvdla_sdp_d_dp_bs_alu_src_value_0_out;
wire   [31:0] nvdla_sdp_d_dp_bs_cfg_0_out;
wire   [31:0] nvdla_sdp_d_dp_bs_mul_cfg_0_out;
wire   [31:0] nvdla_sdp_d_dp_bs_mul_src_value_0_out;
wire   [31:0] nvdla_sdp_d_dp_ew_alu_cfg_0_out;
wire   [31:0] nvdla_sdp_d_dp_ew_alu_cvt_offset_value_0_out;
wire   [31:0] nvdla_sdp_d_dp_ew_alu_cvt_scale_value_0_out;
wire   [31:0] nvdla_sdp_d_dp_ew_alu_cvt_truncate_value_0_out;
wire   [31:0] nvdla_sdp_d_dp_ew_alu_src_value_0_out;
wire   [31:0] nvdla_sdp_d_dp_ew_cfg_0_out;
wire   [31:0] nvdla_sdp_d_dp_ew_mul_cfg_0_out;
wire   [31:0] nvdla_sdp_d_dp_ew_mul_cvt_offset_value_0_out;
wire   [31:0] nvdla_sdp_d_dp_ew_mul_cvt_scale_value_0_out;
wire   [31:0] nvdla_sdp_d_dp_ew_mul_cvt_truncate_value_0_out;
wire   [31:0] nvdla_sdp_d_dp_ew_mul_src_value_0_out;
wire   [31:0] nvdla_sdp_d_dp_ew_truncate_value_0_out;
wire   [31:0] nvdla_sdp_d_dst_base_addr_high_0_out;
wire   [31:0] nvdla_sdp_d_dst_base_addr_low_0_out;
wire   [31:0] nvdla_sdp_d_dst_batch_stride_0_out;
wire   [31:0] nvdla_sdp_d_dst_dma_cfg_0_out;
wire   [31:0] nvdla_sdp_d_dst_line_stride_0_out;
wire   [31:0] nvdla_sdp_d_dst_surface_stride_0_out;
wire   [31:0] nvdla_sdp_d_feature_mode_cfg_0_out;
wire   [31:0] nvdla_sdp_d_op_enable_0_out;
wire   [31:0] nvdla_sdp_d_perf_enable_0_out;
wire   [31:0] nvdla_sdp_d_perf_lut_hybrid_0_out;
wire   [31:0] nvdla_sdp_d_perf_lut_le_hit_0_out;
wire   [31:0] nvdla_sdp_d_perf_lut_lo_hit_0_out;
wire   [31:0] nvdla_sdp_d_perf_lut_oflow_0_out;
wire   [31:0] nvdla_sdp_d_perf_lut_uflow_0_out;
wire   [31:0] nvdla_sdp_d_perf_out_saturation_0_out;
wire   [31:0] nvdla_sdp_d_perf_wdma_write_stall_0_out;
wire   [31:0] nvdla_sdp_d_status_0_out;
wire   [31:0] nvdla_sdp_d_status_inf_input_num_0_out;
wire   [31:0] nvdla_sdp_d_status_nan_input_num_0_out;
wire   [31:0] nvdla_sdp_d_status_nan_output_num_0_out;
wire   [11:0] reg_offset_rd_int;
wire   [31:0] reg_offset_wr;
// Register control interface
output [31:0] reg_rd_data;
input [11:0]  reg_offset;
input [31:0]  reg_wr_data;  //(UNUSED_DEC)
input         reg_wr_en;
input         nvdla_core_clk;
input         nvdla_core_rstn;


// Writable register flop/trigger outputs
output [31:0] cvt_offset;
output [15:0] cvt_scale;
output [5:0]  cvt_shift;
output [12:0] channel;
output [12:0] height;
output [12:0] width;
output [1:0]  out_precision;
output [1:0]  proc_precision;
output [5:0]  bn_alu_shift_value;
output        bn_alu_src;
output [15:0] bn_alu_operand;
output [1:0]  bn_alu_algo;
output        bn_alu_bypass;
output        bn_bypass;
output        bn_mul_bypass;
output        bn_mul_prelu;
output        bn_relu_bypass;
output [7:0]  bn_mul_shift_value;
output        bn_mul_src;
output [15:0] bn_mul_operand;
output [5:0]  bs_alu_shift_value;
output        bs_alu_src;
output [15:0] bs_alu_operand;
output [1:0]  bs_alu_algo;
output        bs_alu_bypass;
output        bs_bypass;
output        bs_mul_bypass;
output        bs_mul_prelu;
output        bs_relu_bypass;
output [7:0]  bs_mul_shift_value;
output        bs_mul_src;
output [15:0] bs_mul_operand;
output        ew_alu_cvt_bypass;
output        ew_alu_src;
output [31:0] ew_alu_cvt_offset;
output [15:0] ew_alu_cvt_scale;
output [5:0]  ew_alu_cvt_truncate;
output [31:0] ew_alu_operand;
output [1:0]  ew_alu_algo;
output        ew_alu_bypass;
output        ew_bypass;
output        ew_lut_bypass;
output        ew_mul_bypass;
output        ew_mul_prelu;
output        ew_mul_cvt_bypass;
output        ew_mul_src;
output [31:0] ew_mul_cvt_offset;
output [15:0] ew_mul_cvt_scale;
output [5:0]  ew_mul_cvt_truncate;
output [31:0] ew_mul_operand;
output [9:0]  ew_truncate;
output [31:0] dst_base_addr_high;
output [31:0] dst_base_addr_low;
output [31:0] dst_batch_stride;
output        dst_ram_type;
output [31:0] dst_line_stride;
output [31:0] dst_surface_stride;
output [4:0]  batch_number;
output        flying_mode;
output        nan_to_zero;
output        output_dst;
output        winograd;
output        op_en_trigger;
output        perf_dma_en;
output        perf_lut_en;
output        perf_nan_inf_count_en;
output        perf_sat_en;

// Read-only register inputs
input         op_en;
input [31:0]  lut_hybrid;
input [31:0]  lut_le_hit;
input [31:0]  lut_lo_hit;
input [31:0]  lut_oflow;
input [31:0]  lut_uflow;
input [31:0]  out_saturation;
input [31:0]  wdma_stall;
input         status_unequal;
input [31:0]  status_inf_input_num;
input [31:0]  status_nan_input_num;
input [31:0]  status_nan_output_num;

// wr_mask register inputs

// rstn register inputs

// leda FM_2_23 off
reg           arreggen_abort_on_invalid_wr;
reg           arreggen_abort_on_rowr;
reg           arreggen_dump;
// leda FM_2_23 on
reg     [4:0] batch_number;
reg     [1:0] bn_alu_algo;
reg           bn_alu_bypass;
reg    [15:0] bn_alu_operand;
reg     [5:0] bn_alu_shift_value;
reg           bn_alu_src;
reg           bn_bypass;
reg           bn_mul_bypass;
reg    [15:0] bn_mul_operand;
reg           bn_mul_prelu;
reg     [7:0] bn_mul_shift_value;
reg           bn_mul_src;
reg           bn_relu_bypass;
reg     [1:0] bs_alu_algo;
reg           bs_alu_bypass;
reg    [15:0] bs_alu_operand;
reg     [5:0] bs_alu_shift_value;
reg           bs_alu_src;
reg           bs_bypass;
reg           bs_mul_bypass;
reg    [15:0] bs_mul_operand;
reg           bs_mul_prelu;
reg     [7:0] bs_mul_shift_value;
reg           bs_mul_src;
reg           bs_relu_bypass;
reg    [12:0] channel;
reg    [31:0] cvt_offset;
reg    [15:0] cvt_scale;
reg     [5:0] cvt_shift;
reg    [31:0] dst_base_addr_high;
reg    [31:0] dst_base_addr_low;
reg    [31:0] dst_batch_stride;
reg    [31:0] dst_line_stride;
reg           dst_ram_type;
reg    [31:0] dst_surface_stride;
reg     [1:0] ew_alu_algo;
reg           ew_alu_bypass;
reg           ew_alu_cvt_bypass;
reg    [31:0] ew_alu_cvt_offset;
reg    [15:0] ew_alu_cvt_scale;
reg     [5:0] ew_alu_cvt_truncate;
reg    [31:0] ew_alu_operand;
reg           ew_alu_src;
reg           ew_bypass;
reg           ew_lut_bypass;
reg           ew_mul_bypass;
reg           ew_mul_cvt_bypass;
reg    [31:0] ew_mul_cvt_offset;
reg    [15:0] ew_mul_cvt_scale;
reg     [5:0] ew_mul_cvt_truncate;
reg    [31:0] ew_mul_operand;
reg           ew_mul_prelu;
reg           ew_mul_src;
reg     [9:0] ew_truncate;
reg           flying_mode;
reg    [12:0] height;
reg           nan_to_zero;
reg     [1:0] out_precision;
reg           output_dst;
reg           perf_dma_en;
reg           perf_lut_en;
reg           perf_nan_inf_count_en;
reg           perf_sat_en;
reg     [1:0] proc_precision;
reg    [31:0] reg_rd_data;
reg    [12:0] width;
reg           winograd;

assign reg_offset_wr = {20'b0 , reg_offset};
// SCR signals

// Address decode
wire nvdla_sdp_d_cvt_offset_0_wren = (reg_offset_wr == (32'hb0c0  & 32'h00000fff)) & reg_wr_en ;  //spyglass disable UnloadedNet-ML //(W528)
wire nvdla_sdp_d_cvt_scale_0_wren = (reg_offset_wr == (32'hb0c4  & 32'h00000fff)) & reg_wr_en ;  //spyglass disable UnloadedNet-ML //(W528)
wire nvdla_sdp_d_cvt_shift_0_wren = (reg_offset_wr == (32'hb0c8  & 32'h00000fff)) & reg_wr_en ;  //spyglass disable UnloadedNet-ML //(W528)
wire nvdla_sdp_d_data_cube_channel_0_wren = (reg_offset_wr == (32'hb044  & 32'h00000fff)) & reg_wr_en ;  //spyglass disable UnloadedNet-ML //(W528)
wire nvdla_sdp_d_data_cube_height_0_wren = (reg_offset_wr == (32'hb040  & 32'h00000fff)) & reg_wr_en ;  //spyglass disable UnloadedNet-ML //(W528)
wire nvdla_sdp_d_data_cube_width_0_wren = (reg_offset_wr == (32'hb03c  & 32'h00000fff)) & reg_wr_en ;  //spyglass disable UnloadedNet-ML //(W528)
wire nvdla_sdp_d_data_format_0_wren = (reg_offset_wr == (32'hb0bc  & 32'h00000fff)) & reg_wr_en ;  //spyglass disable UnloadedNet-ML //(W528)
wire nvdla_sdp_d_dp_bn_alu_cfg_0_wren = (reg_offset_wr == (32'hb070  & 32'h00000fff)) & reg_wr_en ;  //spyglass disable UnloadedNet-ML //(W528)
wire nvdla_sdp_d_dp_bn_alu_src_value_0_wren = (reg_offset_wr == (32'hb074  & 32'h00000fff)) & reg_wr_en ;  //spyglass disable UnloadedNet-ML //(W528)
wire nvdla_sdp_d_dp_bn_cfg_0_wren = (reg_offset_wr == (32'hb06c  & 32'h00000fff)) & reg_wr_en ;  //spyglass disable UnloadedNet-ML //(W528)
wire nvdla_sdp_d_dp_bn_mul_cfg_0_wren = (reg_offset_wr == (32'hb078  & 32'h00000fff)) & reg_wr_en ;  //spyglass disable UnloadedNet-ML //(W528)
wire nvdla_sdp_d_dp_bn_mul_src_value_0_wren = (reg_offset_wr == (32'hb07c  & 32'h00000fff)) & reg_wr_en ;  //spyglass disable UnloadedNet-ML //(W528)
wire nvdla_sdp_d_dp_bs_alu_cfg_0_wren = (reg_offset_wr == (32'hb05c  & 32'h00000fff)) & reg_wr_en ;  //spyglass disable UnloadedNet-ML //(W528)
wire nvdla_sdp_d_dp_bs_alu_src_value_0_wren = (reg_offset_wr == (32'hb060  & 32'h00000fff)) & reg_wr_en ;  //spyglass disable UnloadedNet-ML //(W528)
wire nvdla_sdp_d_dp_bs_cfg_0_wren = (reg_offset_wr == (32'hb058  & 32'h00000fff)) & reg_wr_en ;  //spyglass disable UnloadedNet-ML //(W528)
wire nvdla_sdp_d_dp_bs_mul_cfg_0_wren = (reg_offset_wr == (32'hb064  & 32'h00000fff)) & reg_wr_en ;  //spyglass disable UnloadedNet-ML //(W528)
wire nvdla_sdp_d_dp_bs_mul_src_value_0_wren = (reg_offset_wr == (32'hb068  & 32'h00000fff)) & reg_wr_en ;  //spyglass disable UnloadedNet-ML //(W528)
wire nvdla_sdp_d_dp_ew_alu_cfg_0_wren = (reg_offset_wr == (32'hb084  & 32'h00000fff)) & reg_wr_en ;  //spyglass disable UnloadedNet-ML //(W528)
wire nvdla_sdp_d_dp_ew_alu_cvt_offset_value_0_wren = (reg_offset_wr == (32'hb08c  & 32'h00000fff)) & reg_wr_en ;  //spyglass disable UnloadedNet-ML //(W528)
wire nvdla_sdp_d_dp_ew_alu_cvt_scale_value_0_wren = (reg_offset_wr == (32'hb090  & 32'h00000fff)) & reg_wr_en ;  //spyglass disable UnloadedNet-ML //(W528)
wire nvdla_sdp_d_dp_ew_alu_cvt_truncate_value_0_wren = (reg_offset_wr == (32'hb094  & 32'h00000fff)) & reg_wr_en ;  //spyglass disable UnloadedNet-ML //(W528)
wire nvdla_sdp_d_dp_ew_alu_src_value_0_wren = (reg_offset_wr == (32'hb088  & 32'h00000fff)) & reg_wr_en ;  //spyglass disable UnloadedNet-ML //(W528)
wire nvdla_sdp_d_dp_ew_cfg_0_wren = (reg_offset_wr == (32'hb080  & 32'h00000fff)) & reg_wr_en ;  //spyglass disable UnloadedNet-ML //(W528)
wire nvdla_sdp_d_dp_ew_mul_cfg_0_wren = (reg_offset_wr == (32'hb098  & 32'h00000fff)) & reg_wr_en ;  //spyglass disable UnloadedNet-ML //(W528)
wire nvdla_sdp_d_dp_ew_mul_cvt_offset_value_0_wren = (reg_offset_wr == (32'hb0a0  & 32'h00000fff)) & reg_wr_en ;  //spyglass disable UnloadedNet-ML //(W528)
wire nvdla_sdp_d_dp_ew_mul_cvt_scale_value_0_wren = (reg_offset_wr == (32'hb0a4  & 32'h00000fff)) & reg_wr_en ;  //spyglass disable UnloadedNet-ML //(W528)
wire nvdla_sdp_d_dp_ew_mul_cvt_truncate_value_0_wren = (reg_offset_wr == (32'hb0a8  & 32'h00000fff)) & reg_wr_en ;  //spyglass disable UnloadedNet-ML //(W528)
wire nvdla_sdp_d_dp_ew_mul_src_value_0_wren = (reg_offset_wr == (32'hb09c  & 32'h00000fff)) & reg_wr_en ;  //spyglass disable UnloadedNet-ML //(W528)
wire nvdla_sdp_d_dp_ew_truncate_value_0_wren = (reg_offset_wr == (32'hb0ac  & 32'h00000fff)) & reg_wr_en ;  //spyglass disable UnloadedNet-ML //(W528)
wire nvdla_sdp_d_dst_base_addr_high_0_wren = (reg_offset_wr == (32'hb04c  & 32'h00000fff)) & reg_wr_en ;  //spyglass disable UnloadedNet-ML //(W528)
wire nvdla_sdp_d_dst_base_addr_low_0_wren = (reg_offset_wr == (32'hb048  & 32'h00000fff)) & reg_wr_en ;  //spyglass disable UnloadedNet-ML //(W528)
wire nvdla_sdp_d_dst_batch_stride_0_wren = (reg_offset_wr == (32'hb0b8  & 32'h00000fff)) & reg_wr_en ;  //spyglass disable UnloadedNet-ML //(W528)
wire nvdla_sdp_d_dst_dma_cfg_0_wren = (reg_offset_wr == (32'hb0b4  & 32'h00000fff)) & reg_wr_en ;  //spyglass disable UnloadedNet-ML //(W528)
wire nvdla_sdp_d_dst_line_stride_0_wren = (reg_offset_wr == (32'hb050  & 32'h00000fff)) & reg_wr_en ;  //spyglass disable UnloadedNet-ML //(W528)
wire nvdla_sdp_d_dst_surface_stride_0_wren = (reg_offset_wr == (32'hb054  & 32'h00000fff)) & reg_wr_en ;  //spyglass disable UnloadedNet-ML //(W528)
wire nvdla_sdp_d_feature_mode_cfg_0_wren = (reg_offset_wr == (32'hb0b0  & 32'h00000fff)) & reg_wr_en ;  //spyglass disable UnloadedNet-ML //(W528)
wire nvdla_sdp_d_op_enable_0_wren = (reg_offset_wr == (32'hb038  & 32'h00000fff)) & reg_wr_en ;  //spyglass disable UnloadedNet-ML //(W528)
wire nvdla_sdp_d_perf_enable_0_wren = (reg_offset_wr == (32'hb0dc  & 32'h00000fff)) & reg_wr_en ;  //spyglass disable UnloadedNet-ML //(W528)
wire nvdla_sdp_d_perf_lut_hybrid_0_wren = (reg_offset_wr == (32'hb0f0  & 32'h00000fff)) & reg_wr_en ;  //spyglass disable UnloadedNet-ML //(W528)
wire nvdla_sdp_d_perf_lut_le_hit_0_wren = (reg_offset_wr == (32'hb0f4  & 32'h00000fff)) & reg_wr_en ;  //spyglass disable UnloadedNet-ML //(W528)
wire nvdla_sdp_d_perf_lut_lo_hit_0_wren = (reg_offset_wr == (32'hb0f8  & 32'h00000fff)) & reg_wr_en ;  //spyglass disable UnloadedNet-ML //(W528)
wire nvdla_sdp_d_perf_lut_oflow_0_wren = (reg_offset_wr == (32'hb0e8  & 32'h00000fff)) & reg_wr_en ;  //spyglass disable UnloadedNet-ML //(W528)
wire nvdla_sdp_d_perf_lut_uflow_0_wren = (reg_offset_wr == (32'hb0e4  & 32'h00000fff)) & reg_wr_en ;  //spyglass disable UnloadedNet-ML //(W528)
wire nvdla_sdp_d_perf_out_saturation_0_wren = (reg_offset_wr == (32'hb0ec  & 32'h00000fff)) & reg_wr_en ;  //spyglass disable UnloadedNet-ML //(W528)
wire nvdla_sdp_d_perf_wdma_write_stall_0_wren = (reg_offset_wr == (32'hb0e0  & 32'h00000fff)) & reg_wr_en ;  //spyglass disable UnloadedNet-ML //(W528)
wire nvdla_sdp_d_status_0_wren = (reg_offset_wr == (32'hb0cc  & 32'h00000fff)) & reg_wr_en ;  //spyglass disable UnloadedNet-ML //(W528)
wire nvdla_sdp_d_status_inf_input_num_0_wren = (reg_offset_wr == (32'hb0d4  & 32'h00000fff)) & reg_wr_en ;  //spyglass disable UnloadedNet-ML //(W528)
wire nvdla_sdp_d_status_nan_input_num_0_wren = (reg_offset_wr == (32'hb0d0  & 32'h00000fff)) & reg_wr_en ;  //spyglass disable UnloadedNet-ML //(W528)
wire nvdla_sdp_d_status_nan_output_num_0_wren = (reg_offset_wr == (32'hb0d8  & 32'h00000fff)) & reg_wr_en ;  //spyglass disable UnloadedNet-ML //(W528)

assign nvdla_sdp_d_cvt_offset_0_out[31:0] = { cvt_offset };
assign nvdla_sdp_d_cvt_scale_0_out[31:0] = { 16'b0, cvt_scale };
assign nvdla_sdp_d_cvt_shift_0_out[31:0] = { 26'b0, cvt_shift };
assign nvdla_sdp_d_data_cube_channel_0_out[31:0] = { 19'b0, channel };
assign nvdla_sdp_d_data_cube_height_0_out[31:0] = { 19'b0, height };
assign nvdla_sdp_d_data_cube_width_0_out[31:0] = { 19'b0, width };
assign nvdla_sdp_d_data_format_0_out[31:0] = { 28'b0, out_precision, proc_precision };
assign nvdla_sdp_d_dp_bn_alu_cfg_0_out[31:0] = { 18'b0, bn_alu_shift_value, 7'b0, bn_alu_src };
assign nvdla_sdp_d_dp_bn_alu_src_value_0_out[31:0] = { 16'b0, bn_alu_operand };
assign nvdla_sdp_d_dp_bn_cfg_0_out[31:0] = { 25'b0, bn_relu_bypass, bn_mul_prelu, bn_mul_bypass, bn_alu_algo, bn_alu_bypass, bn_bypass };
assign nvdla_sdp_d_dp_bn_mul_cfg_0_out[31:0] = { 16'b0, bn_mul_shift_value, 7'b0, bn_mul_src };
assign nvdla_sdp_d_dp_bn_mul_src_value_0_out[31:0] = { 16'b0, bn_mul_operand };
assign nvdla_sdp_d_dp_bs_alu_cfg_0_out[31:0] = { 18'b0, bs_alu_shift_value, 7'b0, bs_alu_src };
assign nvdla_sdp_d_dp_bs_alu_src_value_0_out[31:0] = { 16'b0, bs_alu_operand };
assign nvdla_sdp_d_dp_bs_cfg_0_out[31:0] = { 25'b0, bs_relu_bypass, bs_mul_prelu, bs_mul_bypass, bs_alu_algo, bs_alu_bypass, bs_bypass };
assign nvdla_sdp_d_dp_bs_mul_cfg_0_out[31:0] = { 16'b0, bs_mul_shift_value, 7'b0, bs_mul_src };
assign nvdla_sdp_d_dp_bs_mul_src_value_0_out[31:0] = { 16'b0, bs_mul_operand };
assign nvdla_sdp_d_dp_ew_alu_cfg_0_out[31:0] = { 30'b0, ew_alu_cvt_bypass, ew_alu_src };
assign nvdla_sdp_d_dp_ew_alu_cvt_offset_value_0_out[31:0] = { ew_alu_cvt_offset };
assign nvdla_sdp_d_dp_ew_alu_cvt_scale_value_0_out[31:0] = { 16'b0, ew_alu_cvt_scale };
assign nvdla_sdp_d_dp_ew_alu_cvt_truncate_value_0_out[31:0] = { 26'b0, ew_alu_cvt_truncate };
assign nvdla_sdp_d_dp_ew_alu_src_value_0_out[31:0] = { ew_alu_operand };
assign nvdla_sdp_d_dp_ew_cfg_0_out[31:0] = { 25'b0, ew_lut_bypass, ew_mul_prelu, ew_mul_bypass, ew_alu_algo, ew_alu_bypass, ew_bypass };
assign nvdla_sdp_d_dp_ew_mul_cfg_0_out[31:0] = { 30'b0, ew_mul_cvt_bypass, ew_mul_src };
assign nvdla_sdp_d_dp_ew_mul_cvt_offset_value_0_out[31:0] = { ew_mul_cvt_offset };
assign nvdla_sdp_d_dp_ew_mul_cvt_scale_value_0_out[31:0] = { 16'b0, ew_mul_cvt_scale };
assign nvdla_sdp_d_dp_ew_mul_cvt_truncate_value_0_out[31:0] = { 26'b0, ew_mul_cvt_truncate };
assign nvdla_sdp_d_dp_ew_mul_src_value_0_out[31:0] = { ew_mul_operand };
assign nvdla_sdp_d_dp_ew_truncate_value_0_out[31:0] = { 22'b0, ew_truncate };
assign nvdla_sdp_d_dst_base_addr_high_0_out[31:0] = { dst_base_addr_high };
assign nvdla_sdp_d_dst_base_addr_low_0_out[31:0] = { dst_base_addr_low};
assign nvdla_sdp_d_dst_batch_stride_0_out[31:0] = { dst_batch_stride};
assign nvdla_sdp_d_dst_dma_cfg_0_out[31:0] = { 31'b0, dst_ram_type };
assign nvdla_sdp_d_dst_line_stride_0_out[31:0] = { dst_line_stride};
assign nvdla_sdp_d_dst_surface_stride_0_out[31:0] = { dst_surface_stride};
assign nvdla_sdp_d_feature_mode_cfg_0_out[31:0] = { 19'b0, batch_number, 4'b0, nan_to_zero, winograd, output_dst, flying_mode };
assign nvdla_sdp_d_op_enable_0_out[31:0] = { 31'b0, op_en };
assign nvdla_sdp_d_perf_enable_0_out[31:0] = { 28'b0, perf_nan_inf_count_en, perf_sat_en, perf_lut_en, perf_dma_en };
assign nvdla_sdp_d_perf_lut_hybrid_0_out[31:0] = { lut_hybrid };
assign nvdla_sdp_d_perf_lut_le_hit_0_out[31:0] = { lut_le_hit };
assign nvdla_sdp_d_perf_lut_lo_hit_0_out[31:0] = { lut_lo_hit };
assign nvdla_sdp_d_perf_lut_oflow_0_out[31:0] = { lut_oflow };
assign nvdla_sdp_d_perf_lut_uflow_0_out[31:0] = { lut_uflow };
assign nvdla_sdp_d_perf_out_saturation_0_out[31:0] = { out_saturation };
assign nvdla_sdp_d_perf_wdma_write_stall_0_out[31:0] = { wdma_stall };
assign nvdla_sdp_d_status_0_out[31:0] = { 31'b0, status_unequal };
assign nvdla_sdp_d_status_inf_input_num_0_out[31:0] = { status_inf_input_num };
assign nvdla_sdp_d_status_nan_input_num_0_out[31:0] = { status_nan_input_num };
assign nvdla_sdp_d_status_nan_output_num_0_out[31:0] = { status_nan_output_num };

assign op_en_trigger = nvdla_sdp_d_op_enable_0_wren;  //(W563)

assign reg_offset_rd_int = reg_offset;
// Output mux
//spyglass disable_block W338, W263 
always @(
  reg_offset_rd_int
  or nvdla_sdp_d_cvt_offset_0_out
  or nvdla_sdp_d_cvt_scale_0_out
  or nvdla_sdp_d_cvt_shift_0_out
  or nvdla_sdp_d_data_cube_channel_0_out
  or nvdla_sdp_d_data_cube_height_0_out
  or nvdla_sdp_d_data_cube_width_0_out
  or nvdla_sdp_d_data_format_0_out
  or nvdla_sdp_d_dp_bn_alu_cfg_0_out
  or nvdla_sdp_d_dp_bn_alu_src_value_0_out
  or nvdla_sdp_d_dp_bn_cfg_0_out
  or nvdla_sdp_d_dp_bn_mul_cfg_0_out
  or nvdla_sdp_d_dp_bn_mul_src_value_0_out
  or nvdla_sdp_d_dp_bs_alu_cfg_0_out
  or nvdla_sdp_d_dp_bs_alu_src_value_0_out
  or nvdla_sdp_d_dp_bs_cfg_0_out
  or nvdla_sdp_d_dp_bs_mul_cfg_0_out
  or nvdla_sdp_d_dp_bs_mul_src_value_0_out
  or nvdla_sdp_d_dp_ew_alu_cfg_0_out
  or nvdla_sdp_d_dp_ew_alu_cvt_offset_value_0_out
  or nvdla_sdp_d_dp_ew_alu_cvt_scale_value_0_out
  or nvdla_sdp_d_dp_ew_alu_cvt_truncate_value_0_out
  or nvdla_sdp_d_dp_ew_alu_src_value_0_out
  or nvdla_sdp_d_dp_ew_cfg_0_out
  or nvdla_sdp_d_dp_ew_mul_cfg_0_out
  or nvdla_sdp_d_dp_ew_mul_cvt_offset_value_0_out
  or nvdla_sdp_d_dp_ew_mul_cvt_scale_value_0_out
  or nvdla_sdp_d_dp_ew_mul_cvt_truncate_value_0_out
  or nvdla_sdp_d_dp_ew_mul_src_value_0_out
  or nvdla_sdp_d_dp_ew_truncate_value_0_out
  or nvdla_sdp_d_dst_base_addr_high_0_out
  or nvdla_sdp_d_dst_base_addr_low_0_out
  or nvdla_sdp_d_dst_batch_stride_0_out
  or nvdla_sdp_d_dst_dma_cfg_0_out
  or nvdla_sdp_d_dst_line_stride_0_out
  or nvdla_sdp_d_dst_surface_stride_0_out
  or nvdla_sdp_d_feature_mode_cfg_0_out
  or nvdla_sdp_d_op_enable_0_out
  or nvdla_sdp_d_perf_enable_0_out
  or nvdla_sdp_d_perf_lut_hybrid_0_out
  or nvdla_sdp_d_perf_lut_le_hit_0_out
  or nvdla_sdp_d_perf_lut_lo_hit_0_out
  or nvdla_sdp_d_perf_lut_oflow_0_out
  or nvdla_sdp_d_perf_lut_uflow_0_out
  or nvdla_sdp_d_perf_out_saturation_0_out
  or nvdla_sdp_d_perf_wdma_write_stall_0_out
  or nvdla_sdp_d_status_0_out
  or nvdla_sdp_d_status_inf_input_num_0_out
  or nvdla_sdp_d_status_nan_input_num_0_out
  or nvdla_sdp_d_status_nan_output_num_0_out
  ) begin
  case (reg_offset_rd_int)
     (32'hb0c0  & 32'h00000fff): begin 
                            reg_rd_data =  nvdla_sdp_d_cvt_offset_0_out ;
                            end 
     (32'hb0c4  & 32'h00000fff): begin 
                            reg_rd_data =  nvdla_sdp_d_cvt_scale_0_out ;
                            end 
     (32'hb0c8  & 32'h00000fff): begin 
                            reg_rd_data =  nvdla_sdp_d_cvt_shift_0_out ;
                            end 
     (32'hb044  & 32'h00000fff): begin 
                            reg_rd_data =  nvdla_sdp_d_data_cube_channel_0_out ;
                            end 
     (32'hb040  & 32'h00000fff): begin 
                            reg_rd_data =  nvdla_sdp_d_data_cube_height_0_out ;
                            end 
     (32'hb03c  & 32'h00000fff): begin 
                            reg_rd_data =  nvdla_sdp_d_data_cube_width_0_out ;
                            end 
     (32'hb0bc  & 32'h00000fff): begin 
                            reg_rd_data =  nvdla_sdp_d_data_format_0_out ;
                            end 
     (32'hb070  & 32'h00000fff): begin 
                            reg_rd_data =  nvdla_sdp_d_dp_bn_alu_cfg_0_out ;
                            end 
     (32'hb074  & 32'h00000fff): begin 
                            reg_rd_data =  nvdla_sdp_d_dp_bn_alu_src_value_0_out ;
                            end 
     (32'hb06c  & 32'h00000fff): begin 
                            reg_rd_data =  nvdla_sdp_d_dp_bn_cfg_0_out ;
                            end 
     (32'hb078  & 32'h00000fff): begin 
                            reg_rd_data =  nvdla_sdp_d_dp_bn_mul_cfg_0_out ;
                            end 
     (32'hb07c  & 32'h00000fff): begin 
                            reg_rd_data =  nvdla_sdp_d_dp_bn_mul_src_value_0_out ;
                            end 
     (32'hb05c  & 32'h00000fff): begin 
                            reg_rd_data =  nvdla_sdp_d_dp_bs_alu_cfg_0_out ;
                            end 
     (32'hb060  & 32'h00000fff): begin 
                            reg_rd_data =  nvdla_sdp_d_dp_bs_alu_src_value_0_out ;
                            end 
     (32'hb058  & 32'h00000fff): begin 
                            reg_rd_data =  nvdla_sdp_d_dp_bs_cfg_0_out ;
                            end 
     (32'hb064  & 32'h00000fff): begin 
                            reg_rd_data =  nvdla_sdp_d_dp_bs_mul_cfg_0_out ;
                            end 
     (32'hb068  & 32'h00000fff): begin 
                            reg_rd_data =  nvdla_sdp_d_dp_bs_mul_src_value_0_out ;
                            end 
     (32'hb084  & 32'h00000fff): begin 
                            reg_rd_data =  nvdla_sdp_d_dp_ew_alu_cfg_0_out ;
                            end 
     (32'hb08c  & 32'h00000fff): begin 
                            reg_rd_data =  nvdla_sdp_d_dp_ew_alu_cvt_offset_value_0_out ;
                            end 
     (32'hb090  & 32'h00000fff): begin 
                            reg_rd_data =  nvdla_sdp_d_dp_ew_alu_cvt_scale_value_0_out ;
                            end 
     (32'hb094  & 32'h00000fff): begin 
                            reg_rd_data =  nvdla_sdp_d_dp_ew_alu_cvt_truncate_value_0_out ;
                            end 
     (32'hb088  & 32'h00000fff): begin 
                            reg_rd_data =  nvdla_sdp_d_dp_ew_alu_src_value_0_out ;
                            end 
     (32'hb080  & 32'h00000fff): begin 
                            reg_rd_data =  nvdla_sdp_d_dp_ew_cfg_0_out ;
                            end 
     (32'hb098  & 32'h00000fff): begin 
                            reg_rd_data =  nvdla_sdp_d_dp_ew_mul_cfg_0_out ;
                            end 
     (32'hb0a0  & 32'h00000fff): begin 
                            reg_rd_data =  nvdla_sdp_d_dp_ew_mul_cvt_offset_value_0_out ;
                            end 
     (32'hb0a4  & 32'h00000fff): begin 
                            reg_rd_data =  nvdla_sdp_d_dp_ew_mul_cvt_scale_value_0_out ;
                            end 
     (32'hb0a8  & 32'h00000fff): begin 
                            reg_rd_data =  nvdla_sdp_d_dp_ew_mul_cvt_truncate_value_0_out ;
                            end 
     (32'hb09c  & 32'h00000fff): begin 
                            reg_rd_data =  nvdla_sdp_d_dp_ew_mul_src_value_0_out ;
                            end 
     (32'hb0ac  & 32'h00000fff): begin 
                            reg_rd_data =  nvdla_sdp_d_dp_ew_truncate_value_0_out ;
                            end 
     (32'hb04c  & 32'h00000fff): begin 
                            reg_rd_data =  nvdla_sdp_d_dst_base_addr_high_0_out ;
                            end 
     (32'hb048  & 32'h00000fff): begin 
                            reg_rd_data =  nvdla_sdp_d_dst_base_addr_low_0_out ;
                            end 
     (32'hb0b8  & 32'h00000fff): begin 
                            reg_rd_data =  nvdla_sdp_d_dst_batch_stride_0_out ;
                            end 
     (32'hb0b4  & 32'h00000fff): begin 
                            reg_rd_data =  nvdla_sdp_d_dst_dma_cfg_0_out ;
                            end 
     (32'hb050  & 32'h00000fff): begin 
                            reg_rd_data =  nvdla_sdp_d_dst_line_stride_0_out ;
                            end 
     (32'hb054  & 32'h00000fff): begin 
                            reg_rd_data =  nvdla_sdp_d_dst_surface_stride_0_out ;
                            end 
     (32'hb0b0  & 32'h00000fff): begin 
                            reg_rd_data =  nvdla_sdp_d_feature_mode_cfg_0_out ;
                            end 
     (32'hb038  & 32'h00000fff): begin 
                            reg_rd_data =  nvdla_sdp_d_op_enable_0_out ;
                            end 
     (32'hb0dc  & 32'h00000fff): begin 
                            reg_rd_data =  nvdla_sdp_d_perf_enable_0_out ;
                            end 
     (32'hb0f0  & 32'h00000fff): begin 
                            reg_rd_data =  nvdla_sdp_d_perf_lut_hybrid_0_out ;
                            end 
     (32'hb0f4  & 32'h00000fff): begin 
                            reg_rd_data =  nvdla_sdp_d_perf_lut_le_hit_0_out ;
                            end 
     (32'hb0f8  & 32'h00000fff): begin 
                            reg_rd_data =  nvdla_sdp_d_perf_lut_lo_hit_0_out ;
                            end 
     (32'hb0e8  & 32'h00000fff): begin 
                            reg_rd_data =  nvdla_sdp_d_perf_lut_oflow_0_out ;
                            end 
     (32'hb0e4  & 32'h00000fff): begin 
                            reg_rd_data =  nvdla_sdp_d_perf_lut_uflow_0_out ;
                            end 
     (32'hb0ec  & 32'h00000fff): begin 
                            reg_rd_data =  nvdla_sdp_d_perf_out_saturation_0_out ;
                            end 
     (32'hb0e0  & 32'h00000fff): begin 
                            reg_rd_data =  nvdla_sdp_d_perf_wdma_write_stall_0_out ;
                            end 
     (32'hb0cc  & 32'h00000fff): begin 
                            reg_rd_data =  nvdla_sdp_d_status_0_out ;
                            end 
     (32'hb0d4  & 32'h00000fff): begin 
                            reg_rd_data =  nvdla_sdp_d_status_inf_input_num_0_out ;
                            end 
     (32'hb0d0  & 32'h00000fff): begin 
                            reg_rd_data =  nvdla_sdp_d_status_nan_input_num_0_out ;
                            end 
     (32'hb0d8  & 32'h00000fff): begin 
                            reg_rd_data =  nvdla_sdp_d_status_nan_output_num_0_out ;
                            end 
    default: reg_rd_data = {32{1'b0}};
  endcase
end

//spyglass enable_block W338, W263

// spyglass disable_block STARC-2.10.1.6, NoConstWithXZ, W443

// Register flop declarations
always @(posedge nvdla_core_clk) begin
  if (!nvdla_core_rstn) begin
    cvt_offset[31:0] <= 32'h0;
    cvt_scale[15:0] <= 16'b0000000000000000;
    cvt_shift[5:0] <= 6'b000000;
    channel[12:0] <= 13'b0000000000000;
    height[12:0] <= 13'b0000000000000;
    width[12:0] <= 13'b0000000000000;
    out_precision[1:0] <= 2'b00;
    proc_precision[1:0] <= 2'b00;
    bn_alu_shift_value[5:0] <= 6'b000000;
    bn_alu_src <= 1'b0;
    bn_alu_operand[15:0] <= 16'b0000000000000000;
    bn_alu_algo[1:0] <= 2'b00;
    bn_alu_bypass <= 1'b1;
    bn_bypass <= 1'b1;
    bn_mul_bypass <= 1'b1;
    bn_mul_prelu <= 1'b0;
    bn_relu_bypass <= 1'b1;
    bn_mul_shift_value[7:0] <= 8'b00000000;
    bn_mul_src <= 1'b0;
    bn_mul_operand[15:0] <= 16'b0000000000000000;
    bs_alu_shift_value[5:0] <= 6'b000000;
    bs_alu_src <= 1'b0;
    bs_alu_operand[15:0] <= 16'b0000000000000000;
    bs_alu_algo[1:0] <= 2'b00;
    bs_alu_bypass <= 1'b1;
    bs_bypass <= 1'b1;
    bs_mul_bypass <= 1'b1;
    bs_mul_prelu <= 1'b1;
    bs_relu_bypass <= 1'b1;
    bs_mul_shift_value[7:0] <= 8'b00000000;
    bs_mul_src <= 1'b0;
    bs_mul_operand[15:0] <= 16'b0000000000000000;
    ew_alu_cvt_bypass <= 1'b1;
    ew_alu_src <= 1'b0;
    ew_alu_cvt_offset[31:0] <= 32'h0;
    ew_alu_cvt_scale[15:0] <= 16'b0000000000000000;
    ew_alu_cvt_truncate[5:0] <= 6'b000000;
    ew_alu_operand[31:0] <= 32'h0;
    ew_alu_algo[1:0] <= 2'b00;
    ew_alu_bypass <= 1'b1;
    ew_bypass <= 1'b1;
    ew_lut_bypass <= 1'b1;
    ew_mul_bypass <= 1'b1;
    ew_mul_prelu <= 1'b0;
    ew_mul_cvt_bypass <= 1'b1;
    ew_mul_src <= 1'b0;
    ew_mul_cvt_offset[31:0] <= 32'h0;
    ew_mul_cvt_scale[15:0] <= 16'b0000000000000000;
    ew_mul_cvt_truncate[5:0] <= 6'b000000;
    ew_mul_operand[31:0] <= 32'h0;
    ew_truncate[9:0] <= 10'b0000000000;
    dst_base_addr_high[31:0] <= 32'h0;
    dst_base_addr_low[31:0] <= {(32){1'b0}};
    dst_batch_stride[31:0] <= {(32){1'b0}};
    dst_ram_type <= 1'b0;
    dst_line_stride[31:0] <= {(32){1'b0}};
    dst_surface_stride[31:0] <= {(32){1'b0}};
    batch_number[4:0] <= 5'b00000;
    flying_mode <= 1'b0;
    nan_to_zero <= 1'b0;
    output_dst <= 1'b0;
    winograd <= 1'b0;
    perf_dma_en <= 1'b0;
    perf_lut_en <= 1'b0;
    perf_nan_inf_count_en <= 1'b0;
    perf_sat_en <= 1'b0;
  end else begin
  // Register: NVDLA_SDP_D_CVT_OFFSET_0    Field: cvt_offset
  if (nvdla_sdp_d_cvt_offset_0_wren) begin
    cvt_offset[31:0] <= reg_wr_data[31:0];
  end

  // Register: NVDLA_SDP_D_CVT_SCALE_0    Field: cvt_scale
  if (nvdla_sdp_d_cvt_scale_0_wren) begin
    cvt_scale[15:0] <= reg_wr_data[15:0];
  end

  // Register: NVDLA_SDP_D_CVT_SHIFT_0    Field: cvt_shift
  if (nvdla_sdp_d_cvt_shift_0_wren) begin
    cvt_shift[5:0] <= reg_wr_data[5:0];
  end

  // Register: NVDLA_SDP_D_DATA_CUBE_CHANNEL_0    Field: channel
  if (nvdla_sdp_d_data_cube_channel_0_wren) begin
    channel[12:0] <= reg_wr_data[12:0];
  end

  // Register: NVDLA_SDP_D_DATA_CUBE_HEIGHT_0    Field: height
  if (nvdla_sdp_d_data_cube_height_0_wren) begin
    height[12:0] <= reg_wr_data[12:0];
  end

  // Register: NVDLA_SDP_D_DATA_CUBE_WIDTH_0    Field: width
  if (nvdla_sdp_d_data_cube_width_0_wren) begin
    width[12:0] <= reg_wr_data[12:0];
  end

  // Register: NVDLA_SDP_D_DATA_FORMAT_0    Field: out_precision
  if (nvdla_sdp_d_data_format_0_wren) begin
    out_precision[1:0] <= reg_wr_data[3:2];
  end

  // Register: NVDLA_SDP_D_DATA_FORMAT_0    Field: proc_precision
  if (nvdla_sdp_d_data_format_0_wren) begin
    proc_precision[1:0] <= reg_wr_data[1:0];
  end

  // Register: NVDLA_SDP_D_DP_BN_ALU_CFG_0    Field: bn_alu_shift_value
  if (nvdla_sdp_d_dp_bn_alu_cfg_0_wren) begin
    bn_alu_shift_value[5:0] <= reg_wr_data[13:8];
  end

  // Register: NVDLA_SDP_D_DP_BN_ALU_CFG_0    Field: bn_alu_src
  if (nvdla_sdp_d_dp_bn_alu_cfg_0_wren) begin
    bn_alu_src <= reg_wr_data[0];
  end

  // Register: NVDLA_SDP_D_DP_BN_ALU_SRC_VALUE_0    Field: bn_alu_operand
  if (nvdla_sdp_d_dp_bn_alu_src_value_0_wren) begin
    bn_alu_operand[15:0] <= reg_wr_data[15:0];
  end

  // Register: NVDLA_SDP_D_DP_BN_CFG_0    Field: bn_alu_algo
  if (nvdla_sdp_d_dp_bn_cfg_0_wren) begin
    bn_alu_algo[1:0] <= reg_wr_data[3:2];
  end

  // Register: NVDLA_SDP_D_DP_BN_CFG_0    Field: bn_alu_bypass
  if (nvdla_sdp_d_dp_bn_cfg_0_wren) begin
    bn_alu_bypass <= reg_wr_data[1];
  end

  // Register: NVDLA_SDP_D_DP_BN_CFG_0    Field: bn_bypass
  if (nvdla_sdp_d_dp_bn_cfg_0_wren) begin
    bn_bypass <= reg_wr_data[0];
  end

  // Register: NVDLA_SDP_D_DP_BN_CFG_0    Field: bn_mul_bypass
  if (nvdla_sdp_d_dp_bn_cfg_0_wren) begin
    bn_mul_bypass <= reg_wr_data[4];
  end

  // Register: NVDLA_SDP_D_DP_BN_CFG_0    Field: bn_mul_prelu
  if (nvdla_sdp_d_dp_bn_cfg_0_wren) begin
    bn_mul_prelu <= reg_wr_data[5];
  end

  // Register: NVDLA_SDP_D_DP_BN_CFG_0    Field: bn_relu_bypass
  if (nvdla_sdp_d_dp_bn_cfg_0_wren) begin
    bn_relu_bypass <= reg_wr_data[6];
  end

  // Register: NVDLA_SDP_D_DP_BN_MUL_CFG_0    Field: bn_mul_shift_value
  if (nvdla_sdp_d_dp_bn_mul_cfg_0_wren) begin
    bn_mul_shift_value[7:0] <= reg_wr_data[15:8];
  end

  // Register: NVDLA_SDP_D_DP_BN_MUL_CFG_0    Field: bn_mul_src
  if (nvdla_sdp_d_dp_bn_mul_cfg_0_wren) begin
    bn_mul_src <= reg_wr_data[0];
  end

  // Register: NVDLA_SDP_D_DP_BN_MUL_SRC_VALUE_0    Field: bn_mul_operand
  if (nvdla_sdp_d_dp_bn_mul_src_value_0_wren) begin
    bn_mul_operand[15:0] <= reg_wr_data[15:0];
  end

  // Register: NVDLA_SDP_D_DP_BS_ALU_CFG_0    Field: bs_alu_shift_value
  if (nvdla_sdp_d_dp_bs_alu_cfg_0_wren) begin
    bs_alu_shift_value[5:0] <= reg_wr_data[13:8];
  end

  // Register: NVDLA_SDP_D_DP_BS_ALU_CFG_0    Field: bs_alu_src
  if (nvdla_sdp_d_dp_bs_alu_cfg_0_wren) begin
    bs_alu_src <= reg_wr_data[0];
  end

  // Register: NVDLA_SDP_D_DP_BS_ALU_SRC_VALUE_0    Field: bs_alu_operand
  if (nvdla_sdp_d_dp_bs_alu_src_value_0_wren) begin
    bs_alu_operand[15:0] <= reg_wr_data[15:0];
  end

  // Register: NVDLA_SDP_D_DP_BS_CFG_0    Field: bs_alu_algo
  if (nvdla_sdp_d_dp_bs_cfg_0_wren) begin
    bs_alu_algo[1:0] <= reg_wr_data[3:2];
  end

  // Register: NVDLA_SDP_D_DP_BS_CFG_0    Field: bs_alu_bypass
  if (nvdla_sdp_d_dp_bs_cfg_0_wren) begin
    bs_alu_bypass <= reg_wr_data[1];
  end

  // Register: NVDLA_SDP_D_DP_BS_CFG_0    Field: bs_bypass
  if (nvdla_sdp_d_dp_bs_cfg_0_wren) begin
    bs_bypass <= reg_wr_data[0];
  end

  // Register: NVDLA_SDP_D_DP_BS_CFG_0    Field: bs_mul_bypass
  if (nvdla_sdp_d_dp_bs_cfg_0_wren) begin
    bs_mul_bypass <= reg_wr_data[4];
  end

  // Register: NVDLA_SDP_D_DP_BS_CFG_0    Field: bs_mul_prelu
  if (nvdla_sdp_d_dp_bs_cfg_0_wren) begin
    bs_mul_prelu <= reg_wr_data[5];
  end

  // Register: NVDLA_SDP_D_DP_BS_CFG_0    Field: bs_relu_bypass
  if (nvdla_sdp_d_dp_bs_cfg_0_wren) begin
    bs_relu_bypass <= reg_wr_data[6];
  end

  // Register: NVDLA_SDP_D_DP_BS_MUL_CFG_0    Field: bs_mul_shift_value
  if (nvdla_sdp_d_dp_bs_mul_cfg_0_wren) begin
    bs_mul_shift_value[7:0] <= reg_wr_data[15:8];
  end

  // Register: NVDLA_SDP_D_DP_BS_MUL_CFG_0    Field: bs_mul_src
  if (nvdla_sdp_d_dp_bs_mul_cfg_0_wren) begin
    bs_mul_src <= reg_wr_data[0];
  end

  // Register: NVDLA_SDP_D_DP_BS_MUL_SRC_VALUE_0    Field: bs_mul_operand
  if (nvdla_sdp_d_dp_bs_mul_src_value_0_wren) begin
    bs_mul_operand[15:0] <= reg_wr_data[15:0];
  end

  // Register: NVDLA_SDP_D_DP_EW_ALU_CFG_0    Field: ew_alu_cvt_bypass
  if (nvdla_sdp_d_dp_ew_alu_cfg_0_wren) begin
    ew_alu_cvt_bypass <= reg_wr_data[1];
  end

  // Register: NVDLA_SDP_D_DP_EW_ALU_CFG_0    Field: ew_alu_src
  if (nvdla_sdp_d_dp_ew_alu_cfg_0_wren) begin
    ew_alu_src <= reg_wr_data[0];
  end

  // Register: NVDLA_SDP_D_DP_EW_ALU_CVT_OFFSET_VALUE_0    Field: ew_alu_cvt_offset
  if (nvdla_sdp_d_dp_ew_alu_cvt_offset_value_0_wren) begin
    ew_alu_cvt_offset[31:0] <= reg_wr_data[31:0];
  end

  // Register: NVDLA_SDP_D_DP_EW_ALU_CVT_SCALE_VALUE_0    Field: ew_alu_cvt_scale
  if (nvdla_sdp_d_dp_ew_alu_cvt_scale_value_0_wren) begin
    ew_alu_cvt_scale[15:0] <= reg_wr_data[15:0];
  end

  // Register: NVDLA_SDP_D_DP_EW_ALU_CVT_TRUNCATE_VALUE_0    Field: ew_alu_cvt_truncate
  if (nvdla_sdp_d_dp_ew_alu_cvt_truncate_value_0_wren) begin
    ew_alu_cvt_truncate[5:0] <= reg_wr_data[5:0];
  end

  // Register: NVDLA_SDP_D_DP_EW_ALU_SRC_VALUE_0    Field: ew_alu_operand
  if (nvdla_sdp_d_dp_ew_alu_src_value_0_wren) begin
    ew_alu_operand[31:0] <= reg_wr_data[31:0];
  end

  // Register: NVDLA_SDP_D_DP_EW_CFG_0    Field: ew_alu_algo
  if (nvdla_sdp_d_dp_ew_cfg_0_wren) begin
    ew_alu_algo[1:0] <= reg_wr_data[3:2];
  end

  // Register: NVDLA_SDP_D_DP_EW_CFG_0    Field: ew_alu_bypass
  if (nvdla_sdp_d_dp_ew_cfg_0_wren) begin
    ew_alu_bypass <= reg_wr_data[1];
  end

  // Register: NVDLA_SDP_D_DP_EW_CFG_0    Field: ew_bypass
  if (nvdla_sdp_d_dp_ew_cfg_0_wren) begin
    ew_bypass <= reg_wr_data[0];
  end

  // Register: NVDLA_SDP_D_DP_EW_CFG_0    Field: ew_lut_bypass
  if (nvdla_sdp_d_dp_ew_cfg_0_wren) begin
    ew_lut_bypass <= reg_wr_data[6];
  end

  // Register: NVDLA_SDP_D_DP_EW_CFG_0    Field: ew_mul_bypass
  if (nvdla_sdp_d_dp_ew_cfg_0_wren) begin
    ew_mul_bypass <= reg_wr_data[4];
  end

  // Register: NVDLA_SDP_D_DP_EW_CFG_0    Field: ew_mul_prelu
  if (nvdla_sdp_d_dp_ew_cfg_0_wren) begin
    ew_mul_prelu <= reg_wr_data[5];
  end

  // Register: NVDLA_SDP_D_DP_EW_MUL_CFG_0    Field: ew_mul_cvt_bypass
  if (nvdla_sdp_d_dp_ew_mul_cfg_0_wren) begin
    ew_mul_cvt_bypass <= reg_wr_data[1];
  end

  // Register: NVDLA_SDP_D_DP_EW_MUL_CFG_0    Field: ew_mul_src
  if (nvdla_sdp_d_dp_ew_mul_cfg_0_wren) begin
    ew_mul_src <= reg_wr_data[0];
  end

  // Register: NVDLA_SDP_D_DP_EW_MUL_CVT_OFFSET_VALUE_0    Field: ew_mul_cvt_offset
  if (nvdla_sdp_d_dp_ew_mul_cvt_offset_value_0_wren) begin
    ew_mul_cvt_offset[31:0] <= reg_wr_data[31:0];
  end

  // Register: NVDLA_SDP_D_DP_EW_MUL_CVT_SCALE_VALUE_0    Field: ew_mul_cvt_scale
  if (nvdla_sdp_d_dp_ew_mul_cvt_scale_value_0_wren) begin
    ew_mul_cvt_scale[15:0] <= reg_wr_data[15:0];
  end

  // Register: NVDLA_SDP_D_DP_EW_MUL_CVT_TRUNCATE_VALUE_0    Field: ew_mul_cvt_truncate
  if (nvdla_sdp_d_dp_ew_mul_cvt_truncate_value_0_wren) begin
    ew_mul_cvt_truncate[5:0] <= reg_wr_data[5:0];
  end

  // Register: NVDLA_SDP_D_DP_EW_MUL_SRC_VALUE_0    Field: ew_mul_operand
  if (nvdla_sdp_d_dp_ew_mul_src_value_0_wren) begin
    ew_mul_operand[31:0] <= reg_wr_data[31:0];
  end

  // Register: NVDLA_SDP_D_DP_EW_TRUNCATE_VALUE_0    Field: ew_truncate
  if (nvdla_sdp_d_dp_ew_truncate_value_0_wren) begin
    ew_truncate[9:0] <= reg_wr_data[9:0];
  end

  // Register: NVDLA_SDP_D_DST_BASE_ADDR_HIGH_0    Field: dst_base_addr_high
  if (nvdla_sdp_d_dst_base_addr_high_0_wren) begin
    dst_base_addr_high[31:0] <= reg_wr_data[31:0];
  end

  // Register: NVDLA_SDP_D_DST_BASE_ADDR_LOW_0    Field: dst_base_addr_low
  if (nvdla_sdp_d_dst_base_addr_low_0_wren) begin
    dst_base_addr_low[31:0] <= reg_wr_data[31:0];
  end

  // Register: NVDLA_SDP_D_DST_BATCH_STRIDE_0    Field: dst_batch_stride
  if (nvdla_sdp_d_dst_batch_stride_0_wren) begin
    dst_batch_stride[31:0] <= reg_wr_data[31:0];
  end

  // Register: NVDLA_SDP_D_DST_DMA_CFG_0    Field: dst_ram_type
  if (nvdla_sdp_d_dst_dma_cfg_0_wren) begin
    dst_ram_type <= reg_wr_data[0];
  end

  // Register: NVDLA_SDP_D_DST_LINE_STRIDE_0    Field: dst_line_stride
  if (nvdla_sdp_d_dst_line_stride_0_wren) begin
    dst_line_stride[31:0] <= reg_wr_data[31:0];
  end

  // Register: NVDLA_SDP_D_DST_SURFACE_STRIDE_0    Field: dst_surface_stride
  if (nvdla_sdp_d_dst_surface_stride_0_wren) begin
    dst_surface_stride[31:0] <= reg_wr_data[31:0];
  end

  // Register: NVDLA_SDP_D_FEATURE_MODE_CFG_0    Field: batch_number
  if (nvdla_sdp_d_feature_mode_cfg_0_wren) begin
    batch_number[4:0] <= reg_wr_data[12:8];
  end

  // Register: NVDLA_SDP_D_FEATURE_MODE_CFG_0    Field: flying_mode
  if (nvdla_sdp_d_feature_mode_cfg_0_wren) begin
    flying_mode <= reg_wr_data[0];
  end

  // Register: NVDLA_SDP_D_FEATURE_MODE_CFG_0    Field: nan_to_zero
  if (nvdla_sdp_d_feature_mode_cfg_0_wren) begin
    nan_to_zero <= reg_wr_data[3];
  end

  // Register: NVDLA_SDP_D_FEATURE_MODE_CFG_0    Field: output_dst
  if (nvdla_sdp_d_feature_mode_cfg_0_wren) begin
    output_dst <= reg_wr_data[1];
  end

  // Register: NVDLA_SDP_D_FEATURE_MODE_CFG_0    Field: winograd
  if (nvdla_sdp_d_feature_mode_cfg_0_wren) begin
    winograd <= reg_wr_data[2];
  end

  // Not generating flops for field NVDLA_SDP_D_OP_ENABLE_0::op_en (to be implemented outside)

  // Register: NVDLA_SDP_D_PERF_ENABLE_0    Field: perf_dma_en
  if (nvdla_sdp_d_perf_enable_0_wren) begin
    perf_dma_en <= reg_wr_data[0];
  end

  // Register: NVDLA_SDP_D_PERF_ENABLE_0    Field: perf_lut_en
  if (nvdla_sdp_d_perf_enable_0_wren) begin
    perf_lut_en <= reg_wr_data[1];
  end

  // Register: NVDLA_SDP_D_PERF_ENABLE_0    Field: perf_nan_inf_count_en
  if (nvdla_sdp_d_perf_enable_0_wren) begin
    perf_nan_inf_count_en <= reg_wr_data[3];
  end

  // Register: NVDLA_SDP_D_PERF_ENABLE_0    Field: perf_sat_en
  if (nvdla_sdp_d_perf_enable_0_wren) begin
    perf_sat_en <= reg_wr_data[2];
  end

  // Not generating flops for read-only field NVDLA_SDP_D_PERF_LUT_HYBRID_0::lut_hybrid

  // Not generating flops for read-only field NVDLA_SDP_D_PERF_LUT_LE_HIT_0::lut_le_hit

  // Not generating flops for read-only field NVDLA_SDP_D_PERF_LUT_LO_HIT_0::lut_lo_hit

  // Not generating flops for read-only field NVDLA_SDP_D_PERF_LUT_OFLOW_0::lut_oflow

  // Not generating flops for read-only field NVDLA_SDP_D_PERF_LUT_UFLOW_0::lut_uflow

  // Not generating flops for read-only field NVDLA_SDP_D_PERF_OUT_SATURATION_0::out_saturation

  // Not generating flops for read-only field NVDLA_SDP_D_PERF_WDMA_WRITE_STALL_0::wdma_stall

  // Not generating flops for read-only field NVDLA_SDP_D_STATUS_0::status_unequal

  // Not generating flops for read-only field NVDLA_SDP_D_STATUS_INF_INPUT_NUM_0::status_inf_input_num

  // Not generating flops for read-only field NVDLA_SDP_D_STATUS_NAN_INPUT_NUM_0::status_nan_input_num

  // Not generating flops for read-only field NVDLA_SDP_D_STATUS_NAN_OUTPUT_NUM_0::status_nan_output_num

  end
end
// spyglass enable_block STARC-2.10.1.6, NoConstWithXZ, W443

// synopsys translate_off
// VCS coverage off
initial begin
  arreggen_dump                  = $test$plusargs("arreggen_dump_wr");
  arreggen_abort_on_rowr         = $test$plusargs("arreggen_abort_on_rowr");
  arreggen_abort_on_invalid_wr   = $test$plusargs("arreggen_abort_on_invalid_wr");
`ifdef VERILATOR
`else
  $timeformat(-9, 2, "ns", 15);
`endif
end

always @(posedge nvdla_core_clk) begin
  if (reg_wr_en) begin
    case(reg_offset)
      (32'hb0c0  & 32'h00000fff): if (arreggen_dump) $display("%t:%m: reg wr: NVDLA_SDP_D_CVT_OFFSET_0 = 0x%h (old value: 0x%h, 0x%b))", $time, reg_wr_data, nvdla_sdp_d_cvt_offset_0_out, nvdla_sdp_d_cvt_offset_0_out);
      (32'hb0c4  & 32'h00000fff): if (arreggen_dump) $display("%t:%m: reg wr: NVDLA_SDP_D_CVT_SCALE_0 = 0x%h (old value: 0x%h, 0x%b))", $time, reg_wr_data, nvdla_sdp_d_cvt_scale_0_out, nvdla_sdp_d_cvt_scale_0_out);
      (32'hb0c8  & 32'h00000fff): if (arreggen_dump) $display("%t:%m: reg wr: NVDLA_SDP_D_CVT_SHIFT_0 = 0x%h (old value: 0x%h, 0x%b))", $time, reg_wr_data, nvdla_sdp_d_cvt_shift_0_out, nvdla_sdp_d_cvt_shift_0_out);
      (32'hb044  & 32'h00000fff): if (arreggen_dump) $display("%t:%m: reg wr: NVDLA_SDP_D_DATA_CUBE_CHANNEL_0 = 0x%h (old value: 0x%h, 0x%b))", $time, reg_wr_data, nvdla_sdp_d_data_cube_channel_0_out, nvdla_sdp_d_data_cube_channel_0_out);
      (32'hb040  & 32'h00000fff): if (arreggen_dump) $display("%t:%m: reg wr: NVDLA_SDP_D_DATA_CUBE_HEIGHT_0 = 0x%h (old value: 0x%h, 0x%b))", $time, reg_wr_data, nvdla_sdp_d_data_cube_height_0_out, nvdla_sdp_d_data_cube_height_0_out);
      (32'hb03c  & 32'h00000fff): if (arreggen_dump) $display("%t:%m: reg wr: NVDLA_SDP_D_DATA_CUBE_WIDTH_0 = 0x%h (old value: 0x%h, 0x%b))", $time, reg_wr_data, nvdla_sdp_d_data_cube_width_0_out, nvdla_sdp_d_data_cube_width_0_out);
      (32'hb0bc  & 32'h00000fff): if (arreggen_dump) $display("%t:%m: reg wr: NVDLA_SDP_D_DATA_FORMAT_0 = 0x%h (old value: 0x%h, 0x%b))", $time, reg_wr_data, nvdla_sdp_d_data_format_0_out, nvdla_sdp_d_data_format_0_out);
      (32'hb070  & 32'h00000fff): if (arreggen_dump) $display("%t:%m: reg wr: NVDLA_SDP_D_DP_BN_ALU_CFG_0 = 0x%h (old value: 0x%h, 0x%b))", $time, reg_wr_data, nvdla_sdp_d_dp_bn_alu_cfg_0_out, nvdla_sdp_d_dp_bn_alu_cfg_0_out);
      (32'hb074  & 32'h00000fff): if (arreggen_dump) $display("%t:%m: reg wr: NVDLA_SDP_D_DP_BN_ALU_SRC_VALUE_0 = 0x%h (old value: 0x%h, 0x%b))", $time, reg_wr_data, nvdla_sdp_d_dp_bn_alu_src_value_0_out, nvdla_sdp_d_dp_bn_alu_src_value_0_out);
      (32'hb06c  & 32'h00000fff): if (arreggen_dump) $display("%t:%m: reg wr: NVDLA_SDP_D_DP_BN_CFG_0 = 0x%h (old value: 0x%h, 0x%b))", $time, reg_wr_data, nvdla_sdp_d_dp_bn_cfg_0_out, nvdla_sdp_d_dp_bn_cfg_0_out);
      (32'hb078  & 32'h00000fff): if (arreggen_dump) $display("%t:%m: reg wr: NVDLA_SDP_D_DP_BN_MUL_CFG_0 = 0x%h (old value: 0x%h, 0x%b))", $time, reg_wr_data, nvdla_sdp_d_dp_bn_mul_cfg_0_out, nvdla_sdp_d_dp_bn_mul_cfg_0_out);
      (32'hb07c  & 32'h00000fff): if (arreggen_dump) $display("%t:%m: reg wr: NVDLA_SDP_D_DP_BN_MUL_SRC_VALUE_0 = 0x%h (old value: 0x%h, 0x%b))", $time, reg_wr_data, nvdla_sdp_d_dp_bn_mul_src_value_0_out, nvdla_sdp_d_dp_bn_mul_src_value_0_out);
      (32'hb05c  & 32'h00000fff): if (arreggen_dump) $display("%t:%m: reg wr: NVDLA_SDP_D_DP_BS_ALU_CFG_0 = 0x%h (old value: 0x%h, 0x%b))", $time, reg_wr_data, nvdla_sdp_d_dp_bs_alu_cfg_0_out, nvdla_sdp_d_dp_bs_alu_cfg_0_out);
      (32'hb060  & 32'h00000fff): if (arreggen_dump) $display("%t:%m: reg wr: NVDLA_SDP_D_DP_BS_ALU_SRC_VALUE_0 = 0x%h (old value: 0x%h, 0x%b))", $time, reg_wr_data, nvdla_sdp_d_dp_bs_alu_src_value_0_out, nvdla_sdp_d_dp_bs_alu_src_value_0_out);
      (32'hb058  & 32'h00000fff): if (arreggen_dump) $display("%t:%m: reg wr: NVDLA_SDP_D_DP_BS_CFG_0 = 0x%h (old value: 0x%h, 0x%b))", $time, reg_wr_data, nvdla_sdp_d_dp_bs_cfg_0_out, nvdla_sdp_d_dp_bs_cfg_0_out);
      (32'hb064  & 32'h00000fff): if (arreggen_dump) $display("%t:%m: reg wr: NVDLA_SDP_D_DP_BS_MUL_CFG_0 = 0x%h (old value: 0x%h, 0x%b))", $time, reg_wr_data, nvdla_sdp_d_dp_bs_mul_cfg_0_out, nvdla_sdp_d_dp_bs_mul_cfg_0_out);
      (32'hb068  & 32'h00000fff): if (arreggen_dump) $display("%t:%m: reg wr: NVDLA_SDP_D_DP_BS_MUL_SRC_VALUE_0 = 0x%h (old value: 0x%h, 0x%b))", $time, reg_wr_data, nvdla_sdp_d_dp_bs_mul_src_value_0_out, nvdla_sdp_d_dp_bs_mul_src_value_0_out);
      (32'hb084  & 32'h00000fff): if (arreggen_dump) $display("%t:%m: reg wr: NVDLA_SDP_D_DP_EW_ALU_CFG_0 = 0x%h (old value: 0x%h, 0x%b))", $time, reg_wr_data, nvdla_sdp_d_dp_ew_alu_cfg_0_out, nvdla_sdp_d_dp_ew_alu_cfg_0_out);
      (32'hb08c  & 32'h00000fff): if (arreggen_dump) $display("%t:%m: reg wr: NVDLA_SDP_D_DP_EW_ALU_CVT_OFFSET_VALUE_0 = 0x%h (old value: 0x%h, 0x%b))", $time, reg_wr_data, nvdla_sdp_d_dp_ew_alu_cvt_offset_value_0_out, nvdla_sdp_d_dp_ew_alu_cvt_offset_value_0_out);
      (32'hb090  & 32'h00000fff): if (arreggen_dump) $display("%t:%m: reg wr: NVDLA_SDP_D_DP_EW_ALU_CVT_SCALE_VALUE_0 = 0x%h (old value: 0x%h, 0x%b))", $time, reg_wr_data, nvdla_sdp_d_dp_ew_alu_cvt_scale_value_0_out, nvdla_sdp_d_dp_ew_alu_cvt_scale_value_0_out);
      (32'hb094  & 32'h00000fff): if (arreggen_dump) $display("%t:%m: reg wr: NVDLA_SDP_D_DP_EW_ALU_CVT_TRUNCATE_VALUE_0 = 0x%h (old value: 0x%h, 0x%b))", $time, reg_wr_data, nvdla_sdp_d_dp_ew_alu_cvt_truncate_value_0_out, nvdla_sdp_d_dp_ew_alu_cvt_truncate_value_0_out);
      (32'hb088  & 32'h00000fff): if (arreggen_dump) $display("%t:%m: reg wr: NVDLA_SDP_D_DP_EW_ALU_SRC_VALUE_0 = 0x%h (old value: 0x%h, 0x%b))", $time, reg_wr_data, nvdla_sdp_d_dp_ew_alu_src_value_0_out, nvdla_sdp_d_dp_ew_alu_src_value_0_out);
      (32'hb080  & 32'h00000fff): if (arreggen_dump) $display("%t:%m: reg wr: NVDLA_SDP_D_DP_EW_CFG_0 = 0x%h (old value: 0x%h, 0x%b))", $time, reg_wr_data, nvdla_sdp_d_dp_ew_cfg_0_out, nvdla_sdp_d_dp_ew_cfg_0_out);
      (32'hb098  & 32'h00000fff): if (arreggen_dump) $display("%t:%m: reg wr: NVDLA_SDP_D_DP_EW_MUL_CFG_0 = 0x%h (old value: 0x%h, 0x%b))", $time, reg_wr_data, nvdla_sdp_d_dp_ew_mul_cfg_0_out, nvdla_sdp_d_dp_ew_mul_cfg_0_out);
      (32'hb0a0  & 32'h00000fff): if (arreggen_dump) $display("%t:%m: reg wr: NVDLA_SDP_D_DP_EW_MUL_CVT_OFFSET_VALUE_0 = 0x%h (old value: 0x%h, 0x%b))", $time, reg_wr_data, nvdla_sdp_d_dp_ew_mul_cvt_offset_value_0_out, nvdla_sdp_d_dp_ew_mul_cvt_offset_value_0_out);
      (32'hb0a4  & 32'h00000fff): if (arreggen_dump) $display("%t:%m: reg wr: NVDLA_SDP_D_DP_EW_MUL_CVT_SCALE_VALUE_0 = 0x%h (old value: 0x%h, 0x%b))", $time, reg_wr_data, nvdla_sdp_d_dp_ew_mul_cvt_scale_value_0_out, nvdla_sdp_d_dp_ew_mul_cvt_scale_value_0_out);
      (32'hb0a8  & 32'h00000fff): if (arreggen_dump) $display("%t:%m: reg wr: NVDLA_SDP_D_DP_EW_MUL_CVT_TRUNCATE_VALUE_0 = 0x%h (old value: 0x%h, 0x%b))", $time, reg_wr_data, nvdla_sdp_d_dp_ew_mul_cvt_truncate_value_0_out, nvdla_sdp_d_dp_ew_mul_cvt_truncate_value_0_out);
      (32'hb09c  & 32'h00000fff): if (arreggen_dump) $display("%t:%m: reg wr: NVDLA_SDP_D_DP_EW_MUL_SRC_VALUE_0 = 0x%h (old value: 0x%h, 0x%b))", $time, reg_wr_data, nvdla_sdp_d_dp_ew_mul_src_value_0_out, nvdla_sdp_d_dp_ew_mul_src_value_0_out);
      (32'hb0ac  & 32'h00000fff): if (arreggen_dump) $display("%t:%m: reg wr: NVDLA_SDP_D_DP_EW_TRUNCATE_VALUE_0 = 0x%h (old value: 0x%h, 0x%b))", $time, reg_wr_data, nvdla_sdp_d_dp_ew_truncate_value_0_out, nvdla_sdp_d_dp_ew_truncate_value_0_out);
      (32'hb04c  & 32'h00000fff): if (arreggen_dump) $display("%t:%m: reg wr: NVDLA_SDP_D_DST_BASE_ADDR_HIGH_0 = 0x%h (old value: 0x%h, 0x%b))", $time, reg_wr_data, nvdla_sdp_d_dst_base_addr_high_0_out, nvdla_sdp_d_dst_base_addr_high_0_out);
      (32'hb048  & 32'h00000fff): if (arreggen_dump) $display("%t:%m: reg wr: NVDLA_SDP_D_DST_BASE_ADDR_LOW_0 = 0x%h (old value: 0x%h, 0x%b))", $time, reg_wr_data, nvdla_sdp_d_dst_base_addr_low_0_out, nvdla_sdp_d_dst_base_addr_low_0_out);
      (32'hb0b8  & 32'h00000fff): if (arreggen_dump) $display("%t:%m: reg wr: NVDLA_SDP_D_DST_BATCH_STRIDE_0 = 0x%h (old value: 0x%h, 0x%b))", $time, reg_wr_data, nvdla_sdp_d_dst_batch_stride_0_out, nvdla_sdp_d_dst_batch_stride_0_out);
      (32'hb0b4  & 32'h00000fff): if (arreggen_dump) $display("%t:%m: reg wr: NVDLA_SDP_D_DST_DMA_CFG_0 = 0x%h (old value: 0x%h, 0x%b))", $time, reg_wr_data, nvdla_sdp_d_dst_dma_cfg_0_out, nvdla_sdp_d_dst_dma_cfg_0_out);
      (32'hb050  & 32'h00000fff): if (arreggen_dump) $display("%t:%m: reg wr: NVDLA_SDP_D_DST_LINE_STRIDE_0 = 0x%h (old value: 0x%h, 0x%b))", $time, reg_wr_data, nvdla_sdp_d_dst_line_stride_0_out, nvdla_sdp_d_dst_line_stride_0_out);
      (32'hb054  & 32'h00000fff): if (arreggen_dump) $display("%t:%m: reg wr: NVDLA_SDP_D_DST_SURFACE_STRIDE_0 = 0x%h (old value: 0x%h, 0x%b))", $time, reg_wr_data, nvdla_sdp_d_dst_surface_stride_0_out, nvdla_sdp_d_dst_surface_stride_0_out);
      (32'hb0b0  & 32'h00000fff): if (arreggen_dump) $display("%t:%m: reg wr: NVDLA_SDP_D_FEATURE_MODE_CFG_0 = 0x%h (old value: 0x%h, 0x%b))", $time, reg_wr_data, nvdla_sdp_d_feature_mode_cfg_0_out, nvdla_sdp_d_feature_mode_cfg_0_out);
      (32'hb038  & 32'h00000fff): if (arreggen_dump) $display("%t:%m: reg wr: NVDLA_SDP_D_OP_ENABLE_0 = 0x%h (old value: 0x%h, 0x%b))", $time, reg_wr_data, nvdla_sdp_d_op_enable_0_out, nvdla_sdp_d_op_enable_0_out);
      (32'hb0dc  & 32'h00000fff): if (arreggen_dump) $display("%t:%m: reg wr: NVDLA_SDP_D_PERF_ENABLE_0 = 0x%h (old value: 0x%h, 0x%b))", $time, reg_wr_data, nvdla_sdp_d_perf_enable_0_out, nvdla_sdp_d_perf_enable_0_out);
      (32'hb0f0  & 32'h00000fff): begin
          if (arreggen_dump) $display("%t:%m: read-only reg wr: NVDLA_SDP_D_PERF_LUT_HYBRID_0 = 0x%h", $time, reg_wr_data);
          if (arreggen_abort_on_rowr) begin $display("ERROR: write to read-only register!"); $finish; end
        end
      (32'hb0f4  & 32'h00000fff): begin
          if (arreggen_dump) $display("%t:%m: read-only reg wr: NVDLA_SDP_D_PERF_LUT_LE_HIT_0 = 0x%h", $time, reg_wr_data);
          if (arreggen_abort_on_rowr) begin $display("ERROR: write to read-only register!"); $finish; end
        end
      (32'hb0f8  & 32'h00000fff): begin
          if (arreggen_dump) $display("%t:%m: read-only reg wr: NVDLA_SDP_D_PERF_LUT_LO_HIT_0 = 0x%h", $time, reg_wr_data);
          if (arreggen_abort_on_rowr) begin $display("ERROR: write to read-only register!"); $finish; end
        end
      (32'hb0e8  & 32'h00000fff): begin
          if (arreggen_dump) $display("%t:%m: read-only reg wr: NVDLA_SDP_D_PERF_LUT_OFLOW_0 = 0x%h", $time, reg_wr_data);
          if (arreggen_abort_on_rowr) begin $display("ERROR: write to read-only register!"); $finish; end
        end
      (32'hb0e4  & 32'h00000fff): begin
          if (arreggen_dump) $display("%t:%m: read-only reg wr: NVDLA_SDP_D_PERF_LUT_UFLOW_0 = 0x%h", $time, reg_wr_data);
          if (arreggen_abort_on_rowr) begin $display("ERROR: write to read-only register!"); $finish; end
        end
      (32'hb0ec  & 32'h00000fff): begin
          if (arreggen_dump) $display("%t:%m: read-only reg wr: NVDLA_SDP_D_PERF_OUT_SATURATION_0 = 0x%h", $time, reg_wr_data);
          if (arreggen_abort_on_rowr) begin $display("ERROR: write to read-only register!"); $finish; end
        end
      (32'hb0e0  & 32'h00000fff): begin
          if (arreggen_dump) $display("%t:%m: read-only reg wr: NVDLA_SDP_D_PERF_WDMA_WRITE_STALL_0 = 0x%h", $time, reg_wr_data);
          if (arreggen_abort_on_rowr) begin $display("ERROR: write to read-only register!"); $finish; end
        end
      (32'hb0cc  & 32'h00000fff): begin
          if (arreggen_dump) $display("%t:%m: read-only reg wr: NVDLA_SDP_D_STATUS_0 = 0x%h", $time, reg_wr_data);
          if (arreggen_abort_on_rowr) begin $display("ERROR: write to read-only register!"); $finish; end
        end
      (32'hb0d4  & 32'h00000fff): begin
          if (arreggen_dump) $display("%t:%m: read-only reg wr: NVDLA_SDP_D_STATUS_INF_INPUT_NUM_0 = 0x%h", $time, reg_wr_data);
          if (arreggen_abort_on_rowr) begin $display("ERROR: write to read-only register!"); $finish; end
        end
      (32'hb0d0  & 32'h00000fff): begin
          if (arreggen_dump) $display("%t:%m: read-only reg wr: NVDLA_SDP_D_STATUS_NAN_INPUT_NUM_0 = 0x%h", $time, reg_wr_data);
          if (arreggen_abort_on_rowr) begin $display("ERROR: write to read-only register!"); $finish; end
        end
      (32'hb0d8  & 32'h00000fff): begin
          if (arreggen_dump) $display("%t:%m: read-only reg wr: NVDLA_SDP_D_STATUS_NAN_OUTPUT_NUM_0 = 0x%h", $time, reg_wr_data);
          if (arreggen_abort_on_rowr) begin $display("ERROR: write to read-only register!"); $finish; end
        end
      default: begin
          if (arreggen_dump) $display("%t:%m: reg wr: Unknown register (0x%h) = 0x%h", $time, reg_offset, reg_wr_data);
          if (arreggen_abort_on_invalid_wr) begin $display("ERROR: write to undefined register!"); $finish; end
        end
    endcase
  end
end

// VCS coverage on
// synopsys translate_on

endmodule // NV_NVDLA_SDP_REG_dual