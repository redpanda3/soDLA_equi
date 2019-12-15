module NV_soDLA_CDMA_dual_reg( // @[:@3.2]
  input         nvdla_core_clk, // @[:@6.4]
  input         nvdla_core_rstn,
  output [31:0] reg_rd_data, // @[:@6.4]
  input  [11:0] reg_offset, // @[:@6.4]
  input  [31:0] reg_wr_data, // @[:@6.4]
  input         reg_wr_en, // @[:@6.4]
  output [4:0]  data_bank, // @[:@6.4]
  output [4:0]  weight_bank, // @[:@6.4]
  output [4:0]  batches, // @[:@6.4]
  output [31:0] batch_stride, // @[:@6.4]
  output [2:0]  conv_x_stride, // @[:@6.4]
  output [2:0]  conv_y_stride, // @[:@6.4]
  output        cvt_en, // @[:@6.4]
  output [5:0]  cvt_truncate, // @[:@6.4]
  output [15:0] cvt_offset, // @[:@6.4]
  output [15:0] cvt_scale, // @[:@6.4]
  output [31:0] cya, // @[:@6.4]
  output [31:0] datain_addr_high_0, // @[:@6.4]
  output [31:0] datain_addr_high_1, // @[:@6.4]
  output [31:0] datain_addr_low_0, // @[:@6.4]
  output [31:0] datain_addr_low_1, // @[:@6.4]
  output        line_packed, // @[:@6.4]
  output        surf_packed, // @[:@6.4]
  output        datain_ram_type, // @[:@6.4]
  output        datain_format, // @[:@6.4]
  output [5:0]  pixel_format, // @[:@6.4]
  output        pixel_mapping, // @[:@6.4]
  output        pixel_sign_override, // @[:@6.4]
  output [12:0] datain_height, // @[:@6.4]
  output [12:0] datain_width, // @[:@6.4]
  output [12:0] datain_channel, // @[:@6.4]
  output [12:0] datain_height_ext, // @[:@6.4]
  output [12:0] datain_width_ext, // @[:@6.4]
  output [13:0] entries, // @[:@6.4]
  output [11:0] grains, // @[:@6.4]
  output [31:0] line_stride, // @[:@6.4]
  output [31:0] uv_line_stride, // @[:@6.4]
  output        mean_format, // @[:@6.4]
  output [15:0] mean_gu, // @[:@6.4]
  output [15:0] mean_ry, // @[:@6.4]
  output [15:0] mean_ax, // @[:@6.4]
  output [15:0] mean_bv, // @[:@6.4]
  output        conv_mode, // @[:@6.4]
  output        data_reuse, // @[:@6.4]
  output [1:0]  in_precision, // @[:@6.4]
  output [1:0]  proc_precision, // @[:@6.4]
  output        skip_data_rls, // @[:@6.4]
  output        skip_weight_rls, // @[:@6.4]
  output        weight_reuse, // @[:@6.4]
  output        nan_to_zero, // @[:@6.4]
  output        dma_en, // @[:@6.4]
  output [4:0]  pixel_x_offset, // @[:@6.4]
  output [2:0]  pixel_y_offset, // @[:@6.4]
  output [9:0]  rsv_per_line, // @[:@6.4]
  output [9:0]  rsv_per_uv_line, // @[:@6.4]
  output [2:0]  rsv_height, // @[:@6.4]
  output [4:0]  rsv_y_index, // @[:@6.4]
  output [31:0] surf_stride, // @[:@6.4]
  output [31:0] weight_addr_high, // @[:@6.4]
  output [31:0] weight_addr_low, // @[:@6.4]
  output [31:0] weight_bytes, // @[:@6.4]
  output        weight_format, // @[:@6.4]
  output        weight_ram_type, // @[:@6.4]
  output [17:0] byte_per_kernel, // @[:@6.4]
  output [12:0] weight_kernel, // @[:@6.4]
  output [31:0] wgs_addr_high, // @[:@6.4]
  output [31:0] wgs_addr_low, // @[:@6.4]
  output [31:0] wmb_addr_high, // @[:@6.4]
  output [31:0] wmb_addr_low, // @[:@6.4]
  output [27:0] wmb_bytes, // @[:@6.4]
  output [5:0]  pad_bottom, // @[:@6.4]
  output [4:0]  pad_left, // @[:@6.4]
  output [5:0]  pad_right, // @[:@6.4]
  output [4:0]  pad_top, // @[:@6.4]
  output [15:0] pad_value, // @[:@6.4]
  output        op_en_trigger, // @[:@6.4]
  input  [31:0] inf_data_num, // @[:@6.4]
  input  [31:0] inf_weight_num, // @[:@6.4]
  input  [31:0] nan_data_num, // @[:@6.4]
  input  [31:0] nan_weight_num, // @[:@6.4]
  input         op_en, // @[:@6.4]
  input  [31:0] dat_rd_latency, // @[:@6.4]
  input  [31:0] dat_rd_stall, // @[:@6.4]
  input  [31:0] wt_rd_latency, // @[:@6.4]
  input  [31:0] wt_rd_stall // @[:@6.4]
);
  wire [31:0] _GEN_69; // @[NV_NVDLA_CDMA_dual_reg.scala 55:51:@8.4]
  wire  _T_174; // @[NV_NVDLA_CDMA_dual_reg.scala 55:51:@8.4]
  wire  nvdla_cdma_d_bank_0_wren; // @[NV_NVDLA_CDMA_dual_reg.scala 55:75:@9.4]
  wire  _T_176; // @[NV_NVDLA_CDMA_dual_reg.scala 56:59:@10.4]
  wire  nvdla_cdma_d_batch_number_0_wren; // @[NV_NVDLA_CDMA_dual_reg.scala 56:83:@11.4]
  wire  _T_178; // @[NV_NVDLA_CDMA_dual_reg.scala 57:59:@12.4]
  wire  nvdla_cdma_d_batch_stride_0_wren; // @[NV_NVDLA_CDMA_dual_reg.scala 57:83:@13.4]
  wire  _T_180; // @[NV_NVDLA_CDMA_dual_reg.scala 58:58:@14.4]
  wire  nvdla_cdma_d_conv_stride_0_wren; // @[NV_NVDLA_CDMA_dual_reg.scala 58:82:@15.4]
  wire  _T_182; // @[NV_NVDLA_CDMA_dual_reg.scala 59:54:@16.4]
  wire  nvdla_cdma_d_cvt_cfg_0_wren; // @[NV_NVDLA_CDMA_dual_reg.scala 59:78:@17.4]
  wire  _T_184; // @[NV_NVDLA_CDMA_dual_reg.scala 60:57:@18.4]
  wire  nvdla_cdma_d_cvt_offset_0_wren; // @[NV_NVDLA_CDMA_dual_reg.scala 60:81:@19.4]
  wire  _T_186; // @[NV_NVDLA_CDMA_dual_reg.scala 61:56:@20.4]
  wire  nvdla_cdma_d_cvt_scale_0_wren; // @[NV_NVDLA_CDMA_dual_reg.scala 61:80:@21.4]
  wire  _T_188; // @[NV_NVDLA_CDMA_dual_reg.scala 62:50:@22.4]
  wire  nvdla_cdma_d_cya_0_wren; // @[NV_NVDLA_CDMA_dual_reg.scala 62:74:@23.4]
  wire  _T_190; // @[NV_NVDLA_CDMA_dual_reg.scala 63:63:@24.4]
  wire  nvdla_cdma_d_dain_addr_high_0_0_wren; // @[NV_NVDLA_CDMA_dual_reg.scala 63:87:@25.4]
  wire  _T_192; // @[NV_NVDLA_CDMA_dual_reg.scala 64:63:@26.4]
  wire  nvdla_cdma_d_dain_addr_high_1_0_wren; // @[NV_NVDLA_CDMA_dual_reg.scala 64:87:@27.4]
  wire  _T_194; // @[NV_NVDLA_CDMA_dual_reg.scala 65:62:@28.4]
  wire  nvdla_cdma_d_dain_addr_low_0_0_wren; // @[NV_NVDLA_CDMA_dual_reg.scala 65:86:@29.4]
  wire  _T_196; // @[NV_NVDLA_CDMA_dual_reg.scala 66:62:@30.4]
  wire  nvdla_cdma_d_dain_addr_low_1_0_wren; // @[NV_NVDLA_CDMA_dual_reg.scala 66:86:@31.4]
  wire  _T_198; // @[NV_NVDLA_CDMA_dual_reg.scala 67:55:@32.4]
  wire  nvdla_cdma_d_dain_map_0_wren; // @[NV_NVDLA_CDMA_dual_reg.scala 67:79:@33.4]
  wire  _T_200; // @[NV_NVDLA_CDMA_dual_reg.scala 68:60:@34.4]
  wire  nvdla_cdma_d_dain_ram_type_0_wren; // @[NV_NVDLA_CDMA_dual_reg.scala 68:84:@35.4]
  wire  _T_202; // @[NV_NVDLA_CDMA_dual_reg.scala 69:60:@36.4]
  wire  nvdla_cdma_d_datain_format_0_wren; // @[NV_NVDLA_CDMA_dual_reg.scala 69:84:@37.4]
  wire  _T_204; // @[NV_NVDLA_CDMA_dual_reg.scala 70:60:@38.4]
  wire  nvdla_cdma_d_datain_size_0_0_wren; // @[NV_NVDLA_CDMA_dual_reg.scala 70:84:@39.4]
  wire  _T_206; // @[NV_NVDLA_CDMA_dual_reg.scala 71:60:@40.4]
  wire  nvdla_cdma_d_datain_size_1_0_wren; // @[NV_NVDLA_CDMA_dual_reg.scala 71:84:@41.4]
  wire  _T_208; // @[NV_NVDLA_CDMA_dual_reg.scala 72:64:@42.4]
  wire  nvdla_cdma_d_datain_size_ext_0_0_wren; // @[NV_NVDLA_CDMA_dual_reg.scala 72:88:@43.4]
  wire  _T_210; // @[NV_NVDLA_CDMA_dual_reg.scala 73:62:@44.4]
  wire  nvdla_cdma_d_entry_per_slice_0_wren; // @[NV_NVDLA_CDMA_dual_reg.scala 73:86:@45.4]
  wire  _T_212; // @[NV_NVDLA_CDMA_dual_reg.scala 74:58:@46.4]
  wire  nvdla_cdma_d_fetch_grain_0_wren; // @[NV_NVDLA_CDMA_dual_reg.scala 74:82:@47.4]
  wire  _T_220; // @[NV_NVDLA_CDMA_dual_reg.scala 78:61:@54.4]
  wire  nvdla_cdma_d_line_uv_stride_0_wren; // @[NV_NVDLA_CDMA_dual_reg.scala 78:85:@55.4]
  wire  _T_222; // @[NV_NVDLA_CDMA_dual_reg.scala 79:58:@56.4]
  wire  nvdla_cdma_d_mean_format_0_wren; // @[NV_NVDLA_CDMA_dual_reg.scala 79:82:@57.4]
  wire  _T_224; // @[NV_NVDLA_CDMA_dual_reg.scala 80:60:@58.4]
  wire  nvdla_cdma_d_mean_global_0_0_wren; // @[NV_NVDLA_CDMA_dual_reg.scala 80:84:@59.4]
  wire  _T_226; // @[NV_NVDLA_CDMA_dual_reg.scala 81:60:@60.4]
  wire  nvdla_cdma_d_mean_global_1_0_wren; // @[NV_NVDLA_CDMA_dual_reg.scala 81:84:@61.4]
  wire  _T_228; // @[NV_NVDLA_CDMA_dual_reg.scala 82:55:@62.4]
  wire  nvdla_cdma_d_misc_cfg_0_wren; // @[NV_NVDLA_CDMA_dual_reg.scala 82:79:@63.4]
  wire  _T_230; // @[NV_NVDLA_CDMA_dual_reg.scala 83:64:@64.4]
  wire  nvdla_cdma_d_nan_flush_to_zero_0_wren; // @[NV_NVDLA_CDMA_dual_reg.scala 83:88:@65.4]
  wire  _T_236; // @[NV_NVDLA_CDMA_dual_reg.scala 86:56:@70.4]
  wire  _T_242; // @[NV_NVDLA_CDMA_dual_reg.scala 89:58:@76.4]
  wire  nvdla_cdma_d_perf_enable_0_wren; // @[NV_NVDLA_CDMA_dual_reg.scala 89:82:@77.4]
  wire  _T_248; // @[NV_NVDLA_CDMA_dual_reg.scala 92:59:@82.4]
  wire  nvdla_cdma_d_pixel_offset_0_wren; // @[NV_NVDLA_CDMA_dual_reg.scala 92:83:@83.4]
  wire  _T_250; // @[NV_NVDLA_CDMA_dual_reg.scala 93:61:@84.4]
  wire  nvdla_cdma_d_reserved_x_cfg_0_wren; // @[NV_NVDLA_CDMA_dual_reg.scala 93:85:@85.4]
  wire  _T_252; // @[NV_NVDLA_CDMA_dual_reg.scala 94:61:@86.4]
  wire  nvdla_cdma_d_reserved_y_cfg_0_wren; // @[NV_NVDLA_CDMA_dual_reg.scala 94:85:@87.4]
  wire  _T_254; // @[NV_NVDLA_CDMA_dual_reg.scala 95:58:@88.4]
  wire  nvdla_cdma_d_surf_stride_0_wren; // @[NV_NVDLA_CDMA_dual_reg.scala 95:82:@89.4]
  wire  _T_256; // @[NV_NVDLA_CDMA_dual_reg.scala 96:63:@90.4]
  wire  nvdla_cdma_d_weight_addr_high_0_wren; // @[NV_NVDLA_CDMA_dual_reg.scala 96:87:@91.4]
  wire  _T_258; // @[NV_NVDLA_CDMA_dual_reg.scala 97:62:@92.4]
  wire  nvdla_cdma_d_weight_addr_low_0_wren; // @[NV_NVDLA_CDMA_dual_reg.scala 97:86:@93.4]
  wire  _T_260; // @[NV_NVDLA_CDMA_dual_reg.scala 98:59:@94.4]
  wire  nvdla_cdma_d_weight_bytes_0_wren; // @[NV_NVDLA_CDMA_dual_reg.scala 98:83:@95.4]
  wire  _T_262; // @[NV_NVDLA_CDMA_dual_reg.scala 99:60:@96.4]
  wire  nvdla_cdma_d_weight_format_0_wren; // @[NV_NVDLA_CDMA_dual_reg.scala 99:84:@97.4]
  wire  _T_264; // @[NV_NVDLA_CDMA_dual_reg.scala 100:62:@98.4]
  wire  nvdla_cdma_d_weight_ram_type_0_wren; // @[NV_NVDLA_CDMA_dual_reg.scala 100:86:@99.4]
  wire  _T_266; // @[NV_NVDLA_CDMA_dual_reg.scala 101:60:@100.4]
  wire  nvdla_cdma_d_weight_size_0_0_wren; // @[NV_NVDLA_CDMA_dual_reg.scala 101:84:@101.4]
  wire  _T_268; // @[NV_NVDLA_CDMA_dual_reg.scala 102:60:@102.4]
  wire  nvdla_cdma_d_weight_size_1_0_wren; // @[NV_NVDLA_CDMA_dual_reg.scala 102:84:@103.4]
  wire  _T_270; // @[NV_NVDLA_CDMA_dual_reg.scala 103:60:@104.4]
  wire  nvdla_cdma_d_wgs_addr_high_0_wren; // @[NV_NVDLA_CDMA_dual_reg.scala 103:84:@105.4]
  wire  _T_272; // @[NV_NVDLA_CDMA_dual_reg.scala 104:59:@106.4]
  wire  nvdla_cdma_d_wgs_addr_low_0_wren; // @[NV_NVDLA_CDMA_dual_reg.scala 104:83:@107.4]
  wire  _T_274; // @[NV_NVDLA_CDMA_dual_reg.scala 105:60:@108.4]
  wire  nvdla_cdma_d_wmb_addr_high_0_wren; // @[NV_NVDLA_CDMA_dual_reg.scala 105:84:@109.4]
  wire  _T_276; // @[NV_NVDLA_CDMA_dual_reg.scala 106:59:@110.4]
  wire  nvdla_cdma_d_wmb_addr_low_0_wren; // @[NV_NVDLA_CDMA_dual_reg.scala 106:83:@111.4]
  wire  _T_278; // @[NV_NVDLA_CDMA_dual_reg.scala 107:56:@112.4]
  wire  nvdla_cdma_d_wmb_bytes_0_wren; // @[NV_NVDLA_CDMA_dual_reg.scala 107:80:@113.4]
  wire  _T_280; // @[NV_NVDLA_CDMA_dual_reg.scala 108:59:@114.4]
  wire  nvdla_cdma_d_zero_padding_0_wren; // @[NV_NVDLA_CDMA_dual_reg.scala 108:83:@115.4]
  wire  _T_282; // @[NV_NVDLA_CDMA_dual_reg.scala 109:65:@116.4]
  wire  nvdla_cdma_d_zero_padding_value_0_wren; // @[NV_NVDLA_CDMA_dual_reg.scala 109:89:@117.4]
  wire [31:0] _T_289; // @[Cat.scala 30:58:@121.4]
  wire [31:0] _T_292; // @[Cat.scala 30:58:@122.4]
  wire [31:0] _T_299; // @[Cat.scala 30:58:@125.4]
  wire [31:0] _T_305; // @[Cat.scala 30:58:@128.4]
  wire [31:0] _T_308; // @[Cat.scala 30:58:@129.4]
  wire [31:0] _T_311; // @[Cat.scala 30:58:@130.4]
  wire [31:0] _T_322; // @[Cat.scala 30:58:@133.4]
  wire [31:0] _T_325; // @[Cat.scala 30:58:@134.4]
  wire [31:0] _T_337; // @[Cat.scala 30:58:@141.4]
  wire [31:0] _T_343; // @[Cat.scala 30:58:@144.4]
  wire [31:0] _T_346; // @[Cat.scala 30:58:@145.4]
  wire [31:0] _T_352; // @[Cat.scala 30:58:@148.4]
  wire [31:0] _T_355; // @[Cat.scala 30:58:@149.4]
  wire [31:0] _T_358; // @[Cat.scala 30:58:@150.4]
  wire [31:0] _T_365; // @[Cat.scala 30:58:@151.4]
  wire [31:0] _T_367; // @[Cat.scala 30:58:@152.4]
  wire [31:0] _T_369; // @[Cat.scala 30:58:@153.4]
  wire [16:0] _T_383; // @[Cat.scala 30:58:@159.4]
  wire [31:0] _T_390; // @[Cat.scala 30:58:@166.4]
  wire [31:0] _T_393; // @[Cat.scala 30:58:@167.4]
  wire [31:0] _T_398; // @[Cat.scala 30:58:@168.4]
  wire [31:0] _T_403; // @[Cat.scala 30:58:@169.4]
  wire [31:0] _T_411; // @[Cat.scala 30:58:@172.4]
  wire [31:0] _T_417; // @[Cat.scala 30:58:@175.4]
  wire [31:0] _T_423; // @[Cat.scala 30:58:@178.4]
  wire [31:0] _T_430; // @[Cat.scala 30:58:@179.4]
  wire [31:0] _T_433; // @[Cat.scala 30:58:@180.4]
  wire [31:0] _T_436; // @[Cat.scala 30:58:@181.4]
  wire [31:0] _T_439; // @[Cat.scala 30:58:@182.4]
  wire [31:0] _T_446; // @[Cat.scala 30:58:@183.4]
  wire [31:0] _T_458; // @[Cat.scala 30:58:@190.4]
  wire [31:0] _T_461; // @[Cat.scala 30:58:@191.4]
  wire  _T_462; // @[Mux.scala 46:19:@192.4]
  wire [31:0] _T_463; // @[Mux.scala 46:16:@193.4]
  wire  _T_464; // @[Mux.scala 46:19:@194.4]
  wire [31:0] _T_465; // @[Mux.scala 46:16:@195.4]
  wire  _T_466; // @[Mux.scala 46:19:@196.4]
  wire [31:0] _T_467; // @[Mux.scala 46:16:@197.4]
  wire  _T_468; // @[Mux.scala 46:19:@198.4]
  wire [31:0] _T_469; // @[Mux.scala 46:16:@199.4]
  wire  _T_470; // @[Mux.scala 46:19:@200.4]
  wire [31:0] _T_471; // @[Mux.scala 46:16:@201.4]
  wire  _T_472; // @[Mux.scala 46:19:@202.4]
  wire [31:0] _T_473; // @[Mux.scala 46:16:@203.4]
  wire  _T_474; // @[Mux.scala 46:19:@204.4]
  wire [31:0] _T_475; // @[Mux.scala 46:16:@205.4]
  wire  _T_476; // @[Mux.scala 46:19:@206.4]
  wire [31:0] _T_477; // @[Mux.scala 46:16:@207.4]
  wire  _T_478; // @[Mux.scala 46:19:@208.4]
  wire [31:0] _T_479; // @[Mux.scala 46:16:@209.4]
  wire  _T_480; // @[Mux.scala 46:19:@210.4]
  wire [31:0] _T_481; // @[Mux.scala 46:16:@211.4]
  wire  _T_482; // @[Mux.scala 46:19:@212.4]
  wire [31:0] _T_483; // @[Mux.scala 46:16:@213.4]
  wire  _T_484; // @[Mux.scala 46:19:@214.4]
  wire [31:0] _T_485; // @[Mux.scala 46:16:@215.4]
  wire  _T_486; // @[Mux.scala 46:19:@216.4]
  wire [31:0] _T_487; // @[Mux.scala 46:16:@217.4]
  wire  _T_488; // @[Mux.scala 46:19:@218.4]
  wire [31:0] _T_489; // @[Mux.scala 46:16:@219.4]
  wire  _T_490; // @[Mux.scala 46:19:@220.4]
  wire [31:0] _T_491; // @[Mux.scala 46:16:@221.4]
  wire  _T_492; // @[Mux.scala 46:19:@222.4]
  wire [31:0] _T_493; // @[Mux.scala 46:16:@223.4]
  wire  _T_494; // @[Mux.scala 46:19:@224.4]
  wire [31:0] _T_495; // @[Mux.scala 46:16:@225.4]
  wire  _T_496; // @[Mux.scala 46:19:@226.4]
  wire [31:0] _T_497; // @[Mux.scala 46:16:@227.4]
  wire  _T_498; // @[Mux.scala 46:19:@228.4]
  wire [31:0] _T_499; // @[Mux.scala 46:16:@229.4]
  wire  _T_500; // @[Mux.scala 46:19:@230.4]
  wire [31:0] _T_501; // @[Mux.scala 46:16:@231.4]
  wire  _T_502; // @[Mux.scala 46:19:@232.4]
  wire [31:0] _T_503; // @[Mux.scala 46:16:@233.4]
  wire  _T_504; // @[Mux.scala 46:19:@234.4]
  wire [31:0] _T_505; // @[Mux.scala 46:16:@235.4]
  wire  _T_506; // @[Mux.scala 46:19:@236.4]
  wire [31:0] _T_507; // @[Mux.scala 46:16:@237.4]
  wire  _T_508; // @[Mux.scala 46:19:@238.4]
  wire [31:0] _T_509; // @[Mux.scala 46:16:@239.4]
  wire  _T_510; // @[Mux.scala 46:19:@240.4]
  wire [31:0] _T_511; // @[Mux.scala 46:16:@241.4]
  wire  _T_512; // @[Mux.scala 46:19:@242.4]
  wire [31:0] _T_513; // @[Mux.scala 46:16:@243.4]
  wire  _T_514; // @[Mux.scala 46:19:@244.4]
  wire [31:0] _T_515; // @[Mux.scala 46:16:@245.4]
  wire  _T_516; // @[Mux.scala 46:19:@246.4]
  wire [31:0] _T_517; // @[Mux.scala 46:16:@247.4]
  wire  _T_518; // @[Mux.scala 46:19:@248.4]
  wire [31:0] _T_519; // @[Mux.scala 46:16:@249.4]
  wire  _T_520; // @[Mux.scala 46:19:@250.4]
  wire [31:0] _T_521; // @[Mux.scala 46:16:@251.4]
  wire  _T_522; // @[Mux.scala 46:19:@252.4]
  wire [31:0] _T_523; // @[Mux.scala 46:16:@253.4]
  wire  _T_524; // @[Mux.scala 46:19:@254.4]
  wire [31:0] _T_525; // @[Mux.scala 46:16:@255.4]
  wire  _T_526; // @[Mux.scala 46:19:@256.4]
  wire [31:0] _T_527; // @[Mux.scala 46:16:@257.4]
  wire  _T_528; // @[Mux.scala 46:19:@258.4]
  wire [31:0] _T_529; // @[Mux.scala 46:16:@259.4]
  wire  _T_530; // @[Mux.scala 46:19:@260.4]
  wire [31:0] _T_531; // @[Mux.scala 46:16:@261.4]
  wire  _T_532; // @[Mux.scala 46:19:@262.4]
  wire [31:0] _T_533; // @[Mux.scala 46:16:@263.4]
  wire  _T_534; // @[Mux.scala 46:19:@264.4]
  wire [31:0] _T_535; // @[Mux.scala 46:16:@265.4]
  wire  _T_536; // @[Mux.scala 46:19:@266.4]
  wire [31:0] _T_537; // @[Mux.scala 46:16:@267.4]
  wire  _T_538; // @[Mux.scala 46:19:@268.4]
  wire [31:0] _T_539; // @[Mux.scala 46:16:@269.4]
  wire  _T_540; // @[Mux.scala 46:19:@270.4]
  wire [31:0] _T_541; // @[Mux.scala 46:16:@271.4]
  wire  _T_542; // @[Mux.scala 46:19:@272.4]
  wire [31:0] _T_543; // @[Mux.scala 46:16:@273.4]
  wire  _T_544; // @[Mux.scala 46:19:@274.4]
  wire [31:0] _T_545; // @[Mux.scala 46:16:@275.4]
  wire  _T_546; // @[Mux.scala 46:19:@276.4]
  wire [31:0] _T_547; // @[Mux.scala 46:16:@277.4]
  wire  _T_548; // @[Mux.scala 46:19:@278.4]
  wire [31:0] _T_549; // @[Mux.scala 46:16:@279.4]
  wire  _T_550; // @[Mux.scala 46:19:@280.4]
  wire [31:0] _T_551; // @[Mux.scala 46:16:@281.4]
  wire  _T_552; // @[Mux.scala 46:19:@282.4]
  wire [31:0] _T_553; // @[Mux.scala 46:16:@283.4]
  wire  _T_554; // @[Mux.scala 46:19:@284.4]
  wire [31:0] _T_555; // @[Mux.scala 46:16:@285.4]
  wire  _T_556; // @[Mux.scala 46:19:@286.4]
  wire [31:0] _T_557; // @[Mux.scala 46:16:@287.4]
  wire  _T_558; // @[Mux.scala 46:19:@288.4]
  wire [31:0] _T_559; // @[Mux.scala 46:16:@289.4]
  wire  _T_560; // @[Mux.scala 46:19:@290.4]
  wire [31:0] _T_561; // @[Mux.scala 46:16:@291.4]
  wire  _T_562; // @[Mux.scala 46:19:@292.4]
  wire [31:0] _T_563; // @[Mux.scala 46:16:@293.4]
  wire  _T_564; // @[Mux.scala 46:19:@294.4]
  wire [31:0] _T_565; // @[Mux.scala 46:16:@295.4]
  wire  _T_566; // @[Mux.scala 46:19:@296.4]
  wire [31:0] _T_567; // @[Mux.scala 46:16:@297.4]
  wire  _T_568; // @[Mux.scala 46:19:@298.4]
  wire [31:0] _T_569; // @[Mux.scala 46:16:@299.4]
  wire  _T_570; // @[Mux.scala 46:19:@300.4]
  wire [4:0] _T_572; // @[NV_NVDLA_CDMA_dual_reg.scala 233:51:@303.4]
  reg [4:0] _T_575; // @[Reg.scala 19:20:@304.4]
  reg [31:0] _RAND_0;
  wire [4:0] _GEN_0; // @[Reg.scala 20:19:@305.4]
  wire [4:0] _T_576; // @[NV_NVDLA_CDMA_dual_reg.scala 235:53:@309.4]
  reg [4:0] _T_579; // @[Reg.scala 19:20:@310.4]
  reg [31:0] _RAND_1;
  wire [4:0] _GEN_1; // @[Reg.scala 20:19:@311.4]
  reg [4:0] _T_583; // @[Reg.scala 19:20:@316.4]
  reg [31:0] _RAND_2;
  wire [4:0] _GEN_2; // @[Reg.scala 20:19:@317.4]
  reg [31:0] _T_587; // @[Reg.scala 19:20:@322.4]
  reg [31:0] _RAND_3;
  wire [31:0] _GEN_3; // @[Reg.scala 20:19:@323.4]
  wire [2:0] _T_588; // @[NV_NVDLA_CDMA_dual_reg.scala 241:55:@327.4]
  reg [2:0] _T_591; // @[Reg.scala 19:20:@328.4]
  reg [31:0] _RAND_4;
  wire [2:0] _GEN_4; // @[Reg.scala 20:19:@329.4]
  wire [2:0] _T_592; // @[NV_NVDLA_CDMA_dual_reg.scala 243:55:@333.4]
  reg [2:0] _T_595; // @[Reg.scala 19:20:@334.4]
  reg [31:0] _RAND_5;
  wire [2:0] _GEN_5; // @[Reg.scala 20:19:@335.4]
  wire  _T_596; // @[NV_NVDLA_CDMA_dual_reg.scala 245:48:@339.4]
  reg  _T_599; // @[Reg.scala 19:20:@340.4]
  reg [31:0] _RAND_6;
  wire  _GEN_6; // @[Reg.scala 20:19:@341.4]
  wire [5:0] _T_600; // @[NV_NVDLA_CDMA_dual_reg.scala 247:54:@345.4]
  reg [5:0] _T_603; // @[Reg.scala 19:20:@346.4]
  reg [31:0] _RAND_7;
  wire [5:0] _GEN_7; // @[Reg.scala 20:19:@347.4]
  wire [15:0] _T_604; // @[NV_NVDLA_CDMA_dual_reg.scala 249:52:@351.4]
  reg [15:0] _T_607; // @[Reg.scala 19:20:@352.4]
  reg [31:0] _RAND_8;
  wire [15:0] _GEN_8; // @[Reg.scala 20:19:@353.4]
  reg [15:0] _T_611; // @[Reg.scala 19:20:@358.4]
  reg [31:0] _RAND_9;
  wire [15:0] _GEN_9; // @[Reg.scala 20:19:@359.4]
  reg [31:0] _T_615; // @[Reg.scala 19:20:@364.4]
  reg [31:0] _RAND_10;
  wire [31:0] _GEN_10; // @[Reg.scala 20:19:@365.4]
  reg [31:0] _T_619; // @[Reg.scala 19:20:@370.4]
  reg [31:0] _RAND_11;
  wire [31:0] _GEN_11; // @[Reg.scala 20:19:@371.4]
  reg [31:0] _T_623; // @[Reg.scala 19:20:@376.4]
  reg [31:0] _RAND_12;
  wire [31:0] _GEN_12; // @[Reg.scala 20:19:@377.4]
  reg [31:0] _T_627; // @[Reg.scala 19:20:@382.4]
  reg [31:0] _RAND_13;
  wire [31:0] _GEN_13; // @[Reg.scala 20:19:@383.4]
  reg [31:0] _T_631; // @[Reg.scala 19:20:@388.4]
  reg [31:0] _RAND_14;
  wire [31:0] _GEN_14; // @[Reg.scala 20:19:@389.4]
  reg  _T_635; // @[Reg.scala 19:20:@394.4]
  reg [31:0] _RAND_15;
  wire  _GEN_15; // @[Reg.scala 20:19:@395.4]
  wire  _T_636; // @[NV_NVDLA_CDMA_dual_reg.scala 265:53:@399.4]
  reg  _T_639; // @[Reg.scala 19:20:@400.4]
  reg [31:0] _RAND_16;
  wire  _GEN_16; // @[Reg.scala 20:19:@401.4]
  reg  _T_643; // @[Reg.scala 19:20:@406.4]
  reg [31:0] _RAND_17;
  wire  _GEN_17; // @[Reg.scala 20:19:@407.4]
  reg  _T_647; // @[Reg.scala 19:20:@412.4]
  reg [31:0] _RAND_18;
  wire  _GEN_18; // @[Reg.scala 20:19:@413.4]
  wire [5:0] _T_648; // @[NV_NVDLA_CDMA_dual_reg.scala 271:54:@417.4]
  reg [5:0] _T_651; // @[Reg.scala 19:20:@418.4]
  reg [31:0] _RAND_19;
  wire [5:0] _GEN_19; // @[Reg.scala 20:19:@419.4]
  reg  _T_655; // @[Reg.scala 19:20:@424.4]
  reg [31:0] _RAND_20;
  wire  _GEN_20; // @[Reg.scala 20:19:@425.4]
  wire  _T_656; // @[NV_NVDLA_CDMA_dual_reg.scala 275:61:@429.4]
  reg  _T_659; // @[Reg.scala 19:20:@430.4]
  reg [31:0] _RAND_21;
  wire  _GEN_21; // @[Reg.scala 20:19:@431.4]
  wire [12:0] _T_660; // @[NV_NVDLA_CDMA_dual_reg.scala 277:55:@435.4]
  reg [12:0] _T_663; // @[Reg.scala 19:20:@436.4]
  reg [31:0] _RAND_22;
  wire [12:0] _GEN_22; // @[Reg.scala 20:19:@437.4]
  wire [12:0] _T_664; // @[NV_NVDLA_CDMA_dual_reg.scala 279:54:@441.4]
  reg [12:0] _T_667; // @[Reg.scala 19:20:@442.4]
  reg [31:0] _RAND_23;
  wire [12:0] _GEN_23; // @[Reg.scala 20:19:@443.4]
  reg [12:0] _T_671; // @[Reg.scala 19:20:@448.4]
  reg [31:0] _RAND_24;
  wire [12:0] _GEN_24; // @[Reg.scala 20:19:@449.4]
  reg [12:0] _T_675; // @[Reg.scala 19:20:@454.4]
  reg [31:0] _RAND_25;
  wire [12:0] _GEN_25; // @[Reg.scala 20:19:@455.4]
  reg [12:0] _T_679; // @[Reg.scala 19:20:@460.4]
  reg [31:0] _RAND_26;
  wire [12:0] _GEN_26; // @[Reg.scala 20:19:@461.4]
  wire [13:0] _T_680; // @[NV_NVDLA_CDMA_dual_reg.scala 287:49:@465.4]
  reg [13:0] _T_683; // @[Reg.scala 19:20:@466.4]
  reg [31:0] _RAND_27;
  wire [13:0] _GEN_27; // @[Reg.scala 20:19:@467.4]
  wire [11:0] _T_684; // @[NV_NVDLA_CDMA_dual_reg.scala 289:48:@471.4]
  reg [11:0] _T_687; // @[Reg.scala 19:20:@472.4]
  reg [31:0] _RAND_28;
  wire [11:0] _GEN_28; // @[Reg.scala 20:19:@473.4]
  reg [31:0] _T_691; // @[Reg.scala 19:20:@478.4]
  reg [31:0] _RAND_29;
  wire [31:0] _GEN_29; // @[Reg.scala 20:19:@479.4]
  reg [31:0] _T_695; // @[Reg.scala 19:20:@484.4]
  reg [31:0] _RAND_30;
  wire [31:0] _GEN_30; // @[Reg.scala 20:19:@485.4]
  reg  _T_699; // @[Reg.scala 19:20:@490.4]
  reg [31:0] _RAND_31;
  wire  _GEN_31; // @[Reg.scala 20:19:@491.4]
  wire [15:0] _T_700; // @[NV_NVDLA_CDMA_dual_reg.scala 297:49:@495.4]
  reg [15:0] _T_703; // @[Reg.scala 19:20:@496.4]
  reg [31:0] _RAND_32;
  wire [15:0] _GEN_32; // @[Reg.scala 20:19:@497.4]
  reg [15:0] _T_707; // @[Reg.scala 19:20:@502.4]
  reg [31:0] _RAND_33;
  wire [15:0] _GEN_33; // @[Reg.scala 20:19:@503.4]
  reg [15:0] _T_711; // @[Reg.scala 19:20:@508.4]
  reg [31:0] _RAND_34;
  wire [15:0] _GEN_34; // @[Reg.scala 20:19:@509.4]
  reg [15:0] _T_715; // @[Reg.scala 19:20:@514.4]
  reg [31:0] _RAND_35;
  wire [15:0] _GEN_35; // @[Reg.scala 20:19:@515.4]
  reg  _T_719; // @[Reg.scala 19:20:@520.4]
  reg [31:0] _RAND_36;
  wire  _GEN_36; // @[Reg.scala 20:19:@521.4]
  reg  _T_723; // @[Reg.scala 19:20:@526.4]
  reg [31:0] _RAND_37;
  wire  _GEN_37; // @[Reg.scala 20:19:@527.4]
  wire [1:0] _T_724; // @[NV_NVDLA_CDMA_dual_reg.scala 309:54:@531.4]
  reg [1:0] _T_727; // @[Reg.scala 19:20:@532.4]
  reg [31:0] _RAND_38;
  wire [1:0] _GEN_38; // @[Reg.scala 20:19:@533.4]
  wire [1:0] _T_728; // @[NV_NVDLA_CDMA_dual_reg.scala 311:56:@537.4]
  reg [1:0] _T_731; // @[Reg.scala 19:20:@538.4]
  reg [31:0] _RAND_39;
  wire [1:0] _GEN_39; // @[Reg.scala 20:19:@539.4]
  wire  _T_732; // @[NV_NVDLA_CDMA_dual_reg.scala 313:55:@543.4]
  reg  _T_735; // @[Reg.scala 19:20:@544.4]
  reg [31:0] _RAND_40;
  wire  _GEN_40; // @[Reg.scala 20:19:@545.4]
  wire  _T_736; // @[NV_NVDLA_CDMA_dual_reg.scala 315:57:@549.4]
  reg  _T_739; // @[Reg.scala 19:20:@550.4]
  reg [31:0] _RAND_41;
  wire  _GEN_41; // @[Reg.scala 20:19:@551.4]
  reg  _T_743; // @[Reg.scala 19:20:@556.4]
  reg [31:0] _RAND_42;
  wire  _GEN_42; // @[Reg.scala 20:19:@557.4]
  reg  _T_747; // @[Reg.scala 19:20:@562.4]
  reg [31:0] _RAND_43;
  wire  _GEN_43; // @[Reg.scala 20:19:@563.4]
  reg  _T_751; // @[Reg.scala 19:20:@568.4]
  reg [31:0] _RAND_44;
  wire  _GEN_44; // @[Reg.scala 20:19:@569.4]
  reg [4:0] _T_755; // @[Reg.scala 19:20:@574.4]
  reg [31:0] _RAND_45;
  wire [4:0] _GEN_45; // @[Reg.scala 20:19:@575.4]
  reg [2:0] _T_759; // @[Reg.scala 19:20:@580.4]
  reg [31:0] _RAND_46;
  wire [2:0] _GEN_46; // @[Reg.scala 20:19:@581.4]
  wire [9:0] _T_760; // @[NV_NVDLA_CDMA_dual_reg.scala 327:54:@585.4]
  reg [9:0] _T_763; // @[Reg.scala 19:20:@586.4]
  reg [31:0] _RAND_47;
  wire [9:0] _GEN_47; // @[Reg.scala 20:19:@587.4]
  wire [9:0] _T_764; // @[NV_NVDLA_CDMA_dual_reg.scala 329:57:@591.4]
  reg [9:0] _T_767; // @[Reg.scala 19:20:@592.4]
  reg [31:0] _RAND_48;
  wire [9:0] _GEN_48; // @[Reg.scala 20:19:@593.4]
  reg [2:0] _T_771; // @[Reg.scala 19:20:@598.4]
  reg [31:0] _RAND_49;
  wire [2:0] _GEN_49; // @[Reg.scala 20:19:@599.4]
  reg [4:0] _T_775; // @[Reg.scala 19:20:@604.4]
  reg [31:0] _RAND_50;
  wire [4:0] _GEN_50; // @[Reg.scala 20:19:@605.4]
  reg [31:0] _T_779; // @[Reg.scala 19:20:@610.4]
  reg [31:0] _RAND_51;
  wire [31:0] _GEN_51; // @[Reg.scala 20:19:@611.4]
  reg [31:0] _T_783; // @[Reg.scala 19:20:@616.4]
  reg [31:0] _RAND_52;
  wire [31:0] _GEN_52; // @[Reg.scala 20:19:@617.4]
  reg [31:0] _T_787; // @[Reg.scala 19:20:@622.4]
  reg [31:0] _RAND_53;
  wire [31:0] _GEN_53; // @[Reg.scala 20:19:@623.4]
  reg [31:0] _T_791; // @[Reg.scala 19:20:@628.4]
  reg [31:0] _RAND_54;
  wire [31:0] _GEN_54; // @[Reg.scala 20:19:@629.4]
  reg  _T_795; // @[Reg.scala 19:20:@634.4]
  reg [31:0] _RAND_55;
  wire  _GEN_55; // @[Reg.scala 20:19:@635.4]
  reg  _T_799; // @[Reg.scala 19:20:@640.4]
  reg [31:0] _RAND_56;
  wire  _GEN_56; // @[Reg.scala 20:19:@641.4]
  wire [17:0] _T_800; // @[NV_NVDLA_CDMA_dual_reg.scala 347:57:@645.4]
  reg [17:0] _T_803; // @[Reg.scala 19:20:@646.4]
  reg [31:0] _RAND_57;
  wire [17:0] _GEN_57; // @[Reg.scala 20:19:@647.4]
  reg [12:0] _T_807; // @[Reg.scala 19:20:@652.4]
  reg [31:0] _RAND_58;
  wire [12:0] _GEN_58; // @[Reg.scala 20:19:@653.4]
  reg [31:0] _T_811; // @[Reg.scala 19:20:@658.4]
  reg [31:0] _RAND_59;
  wire [31:0] _GEN_59; // @[Reg.scala 20:19:@659.4]
  reg [31:0] _T_815; // @[Reg.scala 19:20:@664.4]
  reg [31:0] _RAND_60;
  wire [31:0] _GEN_60; // @[Reg.scala 20:19:@665.4]
  reg [31:0] _T_819; // @[Reg.scala 19:20:@670.4]
  reg [31:0] _RAND_61;
  wire [31:0] _GEN_61; // @[Reg.scala 20:19:@671.4]
  reg [31:0] _T_823; // @[Reg.scala 19:20:@676.4]
  reg [31:0] _RAND_62;
  wire [31:0] _GEN_62; // @[Reg.scala 20:19:@677.4]
  wire [27:0] _T_824; // @[NV_NVDLA_CDMA_dual_reg.scala 359:51:@681.4]
  reg [27:0] _T_827; // @[Reg.scala 19:20:@682.4]
  reg [31:0] _RAND_63;
  wire [27:0] _GEN_63; // @[Reg.scala 20:19:@683.4]
  wire [5:0] _T_828; // @[NV_NVDLA_CDMA_dual_reg.scala 361:52:@687.4]
  reg [5:0] _T_831; // @[Reg.scala 19:20:@688.4]
  reg [31:0] _RAND_64;
  wire [5:0] _GEN_64; // @[Reg.scala 20:19:@689.4]
  reg [4:0] _T_835; // @[Reg.scala 19:20:@694.4]
  reg [31:0] _RAND_65;
  wire [4:0] _GEN_65; // @[Reg.scala 20:19:@695.4]
  reg [5:0] _T_839; // @[Reg.scala 19:20:@700.4]
  reg [31:0] _RAND_66;
  wire [5:0] _GEN_66; // @[Reg.scala 20:19:@701.4]
  reg [4:0] _T_843; // @[Reg.scala 19:20:@706.4]
  reg [31:0] _RAND_67;
  wire [4:0] _GEN_67; // @[Reg.scala 20:19:@707.4]
  reg [15:0] _T_847; // @[Reg.scala 19:20:@712.4]
  reg [31:0] _RAND_68;
  wire [15:0] _GEN_68; // @[Reg.scala 20:19:@713.4]
  assign _GEN_69 = {{20'd0}, reg_offset}; // @[NV_NVDLA_CDMA_dual_reg.scala 55:51:@8.4]
  assign _T_174 = _GEN_69 == 32'hbc; // @[NV_NVDLA_CDMA_dual_reg.scala 55:51:@8.4]
  assign nvdla_cdma_d_bank_0_wren = _T_174 & reg_wr_en; // @[NV_NVDLA_CDMA_dual_reg.scala 55:75:@9.4]
  assign _T_176 = _GEN_69 == 32'h58; // @[NV_NVDLA_CDMA_dual_reg.scala 56:59:@10.4]
  assign nvdla_cdma_d_batch_number_0_wren = _T_176 & reg_wr_en; // @[NV_NVDLA_CDMA_dual_reg.scala 56:83:@11.4]
  assign _T_178 = _GEN_69 == 32'h5c; // @[NV_NVDLA_CDMA_dual_reg.scala 57:59:@12.4]
  assign nvdla_cdma_d_batch_stride_0_wren = _T_178 & reg_wr_en; // @[NV_NVDLA_CDMA_dual_reg.scala 57:83:@13.4]
  assign _T_180 = _GEN_69 == 32'hb0; // @[NV_NVDLA_CDMA_dual_reg.scala 58:58:@14.4]
  assign nvdla_cdma_d_conv_stride_0_wren = _T_180 & reg_wr_en; // @[NV_NVDLA_CDMA_dual_reg.scala 58:82:@15.4]
  assign _T_182 = _GEN_69 == 32'ha4; // @[NV_NVDLA_CDMA_dual_reg.scala 59:54:@16.4]
  assign nvdla_cdma_d_cvt_cfg_0_wren = _T_182 & reg_wr_en; // @[NV_NVDLA_CDMA_dual_reg.scala 59:78:@17.4]
  assign _T_184 = _GEN_69 == 32'ha8; // @[NV_NVDLA_CDMA_dual_reg.scala 60:57:@18.4]
  assign nvdla_cdma_d_cvt_offset_0_wren = _T_184 & reg_wr_en; // @[NV_NVDLA_CDMA_dual_reg.scala 60:81:@19.4]
  assign _T_186 = _GEN_69 == 32'hac; // @[NV_NVDLA_CDMA_dual_reg.scala 61:56:@20.4]
  assign nvdla_cdma_d_cvt_scale_0_wren = _T_186 & reg_wr_en; // @[NV_NVDLA_CDMA_dual_reg.scala 61:80:@21.4]
  assign _T_188 = _GEN_69 == 32'he8; // @[NV_NVDLA_CDMA_dual_reg.scala 62:50:@22.4]
  assign nvdla_cdma_d_cya_0_wren = _T_188 & reg_wr_en; // @[NV_NVDLA_CDMA_dual_reg.scala 62:74:@23.4]
  assign _T_190 = _GEN_69 == 32'h30; // @[NV_NVDLA_CDMA_dual_reg.scala 63:63:@24.4]
  assign nvdla_cdma_d_dain_addr_high_0_0_wren = _T_190 & reg_wr_en; // @[NV_NVDLA_CDMA_dual_reg.scala 63:87:@25.4]
  assign _T_192 = _GEN_69 == 32'h38; // @[NV_NVDLA_CDMA_dual_reg.scala 64:63:@26.4]
  assign nvdla_cdma_d_dain_addr_high_1_0_wren = _T_192 & reg_wr_en; // @[NV_NVDLA_CDMA_dual_reg.scala 64:87:@27.4]
  assign _T_194 = _GEN_69 == 32'h34; // @[NV_NVDLA_CDMA_dual_reg.scala 65:62:@28.4]
  assign nvdla_cdma_d_dain_addr_low_0_0_wren = _T_194 & reg_wr_en; // @[NV_NVDLA_CDMA_dual_reg.scala 65:86:@29.4]
  assign _T_196 = _GEN_69 == 32'h3c; // @[NV_NVDLA_CDMA_dual_reg.scala 66:62:@30.4]
  assign nvdla_cdma_d_dain_addr_low_1_0_wren = _T_196 & reg_wr_en; // @[NV_NVDLA_CDMA_dual_reg.scala 66:86:@31.4]
  assign _T_198 = _GEN_69 == 32'h4c; // @[NV_NVDLA_CDMA_dual_reg.scala 67:55:@32.4]
  assign nvdla_cdma_d_dain_map_0_wren = _T_198 & reg_wr_en; // @[NV_NVDLA_CDMA_dual_reg.scala 67:79:@33.4]
  assign _T_200 = _GEN_69 == 32'h2c; // @[NV_NVDLA_CDMA_dual_reg.scala 68:60:@34.4]
  assign nvdla_cdma_d_dain_ram_type_0_wren = _T_200 & reg_wr_en; // @[NV_NVDLA_CDMA_dual_reg.scala 68:84:@35.4]
  assign _T_202 = _GEN_69 == 32'h18; // @[NV_NVDLA_CDMA_dual_reg.scala 69:60:@36.4]
  assign nvdla_cdma_d_datain_format_0_wren = _T_202 & reg_wr_en; // @[NV_NVDLA_CDMA_dual_reg.scala 69:84:@37.4]
  assign _T_204 = _GEN_69 == 32'h1c; // @[NV_NVDLA_CDMA_dual_reg.scala 70:60:@38.4]
  assign nvdla_cdma_d_datain_size_0_0_wren = _T_204 & reg_wr_en; // @[NV_NVDLA_CDMA_dual_reg.scala 70:84:@39.4]
  assign _T_206 = _GEN_69 == 32'h20; // @[NV_NVDLA_CDMA_dual_reg.scala 71:60:@40.4]
  assign nvdla_cdma_d_datain_size_1_0_wren = _T_206 & reg_wr_en; // @[NV_NVDLA_CDMA_dual_reg.scala 71:84:@41.4]
  assign _T_208 = _GEN_69 == 32'h24; // @[NV_NVDLA_CDMA_dual_reg.scala 72:64:@42.4]
  assign nvdla_cdma_d_datain_size_ext_0_0_wren = _T_208 & reg_wr_en; // @[NV_NVDLA_CDMA_dual_reg.scala 72:88:@43.4]
  assign _T_210 = _GEN_69 == 32'h60; // @[NV_NVDLA_CDMA_dual_reg.scala 73:62:@44.4]
  assign nvdla_cdma_d_entry_per_slice_0_wren = _T_210 & reg_wr_en; // @[NV_NVDLA_CDMA_dual_reg.scala 73:86:@45.4]
  assign _T_212 = _GEN_69 == 32'h64; // @[NV_NVDLA_CDMA_dual_reg.scala 74:58:@46.4]
  assign nvdla_cdma_d_fetch_grain_0_wren = _T_212 & reg_wr_en; // @[NV_NVDLA_CDMA_dual_reg.scala 74:82:@47.4]
  assign _T_220 = _GEN_69 == 32'h44; // @[NV_NVDLA_CDMA_dual_reg.scala 78:61:@54.4]
  assign nvdla_cdma_d_line_uv_stride_0_wren = _T_220 & reg_wr_en; // @[NV_NVDLA_CDMA_dual_reg.scala 78:85:@55.4]
  assign _T_222 = _GEN_69 == 32'h98; // @[NV_NVDLA_CDMA_dual_reg.scala 79:58:@56.4]
  assign nvdla_cdma_d_mean_format_0_wren = _T_222 & reg_wr_en; // @[NV_NVDLA_CDMA_dual_reg.scala 79:82:@57.4]
  assign _T_224 = _GEN_69 == 32'h9c; // @[NV_NVDLA_CDMA_dual_reg.scala 80:60:@58.4]
  assign nvdla_cdma_d_mean_global_0_0_wren = _T_224 & reg_wr_en; // @[NV_NVDLA_CDMA_dual_reg.scala 80:84:@59.4]
  assign _T_226 = _GEN_69 == 32'ha0; // @[NV_NVDLA_CDMA_dual_reg.scala 81:60:@60.4]
  assign nvdla_cdma_d_mean_global_1_0_wren = _T_226 & reg_wr_en; // @[NV_NVDLA_CDMA_dual_reg.scala 81:84:@61.4]
  assign _T_228 = _GEN_69 == 32'h14; // @[NV_NVDLA_CDMA_dual_reg.scala 82:55:@62.4]
  assign nvdla_cdma_d_misc_cfg_0_wren = _T_228 & reg_wr_en; // @[NV_NVDLA_CDMA_dual_reg.scala 82:79:@63.4]
  assign _T_230 = _GEN_69 == 32'hc0; // @[NV_NVDLA_CDMA_dual_reg.scala 83:64:@64.4]
  assign nvdla_cdma_d_nan_flush_to_zero_0_wren = _T_230 & reg_wr_en; // @[NV_NVDLA_CDMA_dual_reg.scala 83:88:@65.4]
  assign _T_236 = _GEN_69 == 32'h10; // @[NV_NVDLA_CDMA_dual_reg.scala 86:56:@70.4]
  assign _T_242 = _GEN_69 == 32'hd4; // @[NV_NVDLA_CDMA_dual_reg.scala 89:58:@76.4]
  assign nvdla_cdma_d_perf_enable_0_wren = _T_242 & reg_wr_en; // @[NV_NVDLA_CDMA_dual_reg.scala 89:82:@77.4]
  assign _T_248 = _GEN_69 == 32'h28; // @[NV_NVDLA_CDMA_dual_reg.scala 92:59:@82.4]
  assign nvdla_cdma_d_pixel_offset_0_wren = _T_248 & reg_wr_en; // @[NV_NVDLA_CDMA_dual_reg.scala 92:83:@83.4]
  assign _T_250 = _GEN_69 == 32'h50; // @[NV_NVDLA_CDMA_dual_reg.scala 93:61:@84.4]
  assign nvdla_cdma_d_reserved_x_cfg_0_wren = _T_250 & reg_wr_en; // @[NV_NVDLA_CDMA_dual_reg.scala 93:85:@85.4]
  assign _T_252 = _GEN_69 == 32'h54; // @[NV_NVDLA_CDMA_dual_reg.scala 94:61:@86.4]
  assign nvdla_cdma_d_reserved_y_cfg_0_wren = _T_252 & reg_wr_en; // @[NV_NVDLA_CDMA_dual_reg.scala 94:85:@87.4]
  assign _T_254 = _GEN_69 == 32'h48; // @[NV_NVDLA_CDMA_dual_reg.scala 95:58:@88.4]
  assign nvdla_cdma_d_surf_stride_0_wren = _T_254 & reg_wr_en; // @[NV_NVDLA_CDMA_dual_reg.scala 95:82:@89.4]
  assign _T_256 = _GEN_69 == 32'h78; // @[NV_NVDLA_CDMA_dual_reg.scala 96:63:@90.4]
  assign nvdla_cdma_d_weight_addr_high_0_wren = _T_256 & reg_wr_en; // @[NV_NVDLA_CDMA_dual_reg.scala 96:87:@91.4]
  assign _T_258 = _GEN_69 == 32'h7c; // @[NV_NVDLA_CDMA_dual_reg.scala 97:62:@92.4]
  assign nvdla_cdma_d_weight_addr_low_0_wren = _T_258 & reg_wr_en; // @[NV_NVDLA_CDMA_dual_reg.scala 97:86:@93.4]
  assign _T_260 = _GEN_69 == 32'h80; // @[NV_NVDLA_CDMA_dual_reg.scala 98:59:@94.4]
  assign nvdla_cdma_d_weight_bytes_0_wren = _T_260 & reg_wr_en; // @[NV_NVDLA_CDMA_dual_reg.scala 98:83:@95.4]
  assign _T_262 = _GEN_69 == 32'h68; // @[NV_NVDLA_CDMA_dual_reg.scala 99:60:@96.4]
  assign nvdla_cdma_d_weight_format_0_wren = _T_262 & reg_wr_en; // @[NV_NVDLA_CDMA_dual_reg.scala 99:84:@97.4]
  assign _T_264 = _GEN_69 == 32'h74; // @[NV_NVDLA_CDMA_dual_reg.scala 100:62:@98.4]
  assign nvdla_cdma_d_weight_ram_type_0_wren = _T_264 & reg_wr_en; // @[NV_NVDLA_CDMA_dual_reg.scala 100:86:@99.4]
  assign _T_266 = _GEN_69 == 32'h6c; // @[NV_NVDLA_CDMA_dual_reg.scala 101:60:@100.4]
  assign nvdla_cdma_d_weight_size_0_0_wren = _T_266 & reg_wr_en; // @[NV_NVDLA_CDMA_dual_reg.scala 101:84:@101.4]
  assign _T_268 = _GEN_69 == 32'h70; // @[NV_NVDLA_CDMA_dual_reg.scala 102:60:@102.4]
  assign nvdla_cdma_d_weight_size_1_0_wren = _T_268 & reg_wr_en; // @[NV_NVDLA_CDMA_dual_reg.scala 102:84:@103.4]
  assign _T_270 = _GEN_69 == 32'h84; // @[NV_NVDLA_CDMA_dual_reg.scala 103:60:@104.4]
  assign nvdla_cdma_d_wgs_addr_high_0_wren = _T_270 & reg_wr_en; // @[NV_NVDLA_CDMA_dual_reg.scala 103:84:@105.4]
  assign _T_272 = _GEN_69 == 32'h88; // @[NV_NVDLA_CDMA_dual_reg.scala 104:59:@106.4]
  assign nvdla_cdma_d_wgs_addr_low_0_wren = _T_272 & reg_wr_en; // @[NV_NVDLA_CDMA_dual_reg.scala 104:83:@107.4]
  assign _T_274 = _GEN_69 == 32'h8c; // @[NV_NVDLA_CDMA_dual_reg.scala 105:60:@108.4]
  assign nvdla_cdma_d_wmb_addr_high_0_wren = _T_274 & reg_wr_en; // @[NV_NVDLA_CDMA_dual_reg.scala 105:84:@109.4]
  assign _T_276 = _GEN_69 == 32'h90; // @[NV_NVDLA_CDMA_dual_reg.scala 106:59:@110.4]
  assign nvdla_cdma_d_wmb_addr_low_0_wren = _T_276 & reg_wr_en; // @[NV_NVDLA_CDMA_dual_reg.scala 106:83:@111.4]
  assign _T_278 = _GEN_69 == 32'h94; // @[NV_NVDLA_CDMA_dual_reg.scala 107:56:@112.4]
  assign nvdla_cdma_d_wmb_bytes_0_wren = _T_278 & reg_wr_en; // @[NV_NVDLA_CDMA_dual_reg.scala 107:80:@113.4]
  assign _T_280 = _GEN_69 == 32'hb4; // @[NV_NVDLA_CDMA_dual_reg.scala 108:59:@114.4]
  assign nvdla_cdma_d_zero_padding_0_wren = _T_280 & reg_wr_en; // @[NV_NVDLA_CDMA_dual_reg.scala 108:83:@115.4]
  assign _T_282 = _GEN_69 == 32'hb8; // @[NV_NVDLA_CDMA_dual_reg.scala 109:65:@116.4]
  assign nvdla_cdma_d_zero_padding_value_0_wren = _T_282 & reg_wr_en; // @[NV_NVDLA_CDMA_dual_reg.scala 109:89:@117.4]
  assign _T_289 = {11'h0,weight_bank,11'h0,data_bank}; // @[Cat.scala 30:58:@121.4]
  assign _T_292 = {27'h0,batches}; // @[Cat.scala 30:58:@122.4]
  assign _T_299 = {13'h0,conv_y_stride,13'h0,conv_x_stride}; // @[Cat.scala 30:58:@125.4]
  assign _T_305 = {22'h0,cvt_truncate,3'h0,cvt_en}; // @[Cat.scala 30:58:@128.4]
  assign _T_308 = {16'h0,cvt_offset}; // @[Cat.scala 30:58:@129.4]
  assign _T_311 = {16'h0,cvt_scale}; // @[Cat.scala 30:58:@130.4]
  assign _T_322 = {15'h0,surf_packed,15'h0,line_packed}; // @[Cat.scala 30:58:@133.4]
  assign _T_325 = {31'h0,datain_ram_type}; // @[Cat.scala 30:58:@134.4]
  assign _T_337 = {11'h0,pixel_sign_override,3'h0,pixel_mapping,2'h0,pixel_format,7'h0,datain_format}; // @[Cat.scala 30:58:@141.4]
  assign _T_343 = {3'h0,datain_height,3'h0,datain_width}; // @[Cat.scala 30:58:@144.4]
  assign _T_346 = {19'h0,datain_channel}; // @[Cat.scala 30:58:@145.4]
  assign _T_352 = {3'h0,datain_height_ext,3'h0,datain_width_ext}; // @[Cat.scala 30:58:@148.4]
  assign _T_355 = {18'h0,entries}; // @[Cat.scala 30:58:@149.4]
  assign _T_358 = {20'h0,grains}; // @[Cat.scala 30:58:@150.4]
  assign _T_365 = {31'h0,mean_format}; // @[Cat.scala 30:58:@151.4]
  assign _T_367 = {mean_gu,mean_ry}; // @[Cat.scala 30:58:@152.4]
  assign _T_369 = {mean_ax,mean_bv}; // @[Cat.scala 30:58:@153.4]
  assign _T_383 = {data_reuse,2'h0,proc_precision,2'h0,in_precision,7'h0,conv_mode}; // @[Cat.scala 30:58:@159.4]
  assign _T_390 = {3'h0,skip_weight_rls,3'h0,skip_data_rls,3'h0,weight_reuse,3'h0,_T_383}; // @[Cat.scala 30:58:@166.4]
  assign _T_393 = {31'h0,nan_to_zero}; // @[Cat.scala 30:58:@167.4]
  assign _T_398 = {31'h0,op_en}; // @[Cat.scala 30:58:@168.4]
  assign _T_403 = {31'h0,dma_en}; // @[Cat.scala 30:58:@169.4]
  assign _T_411 = {13'h0,pixel_y_offset,11'h0,pixel_x_offset}; // @[Cat.scala 30:58:@172.4]
  assign _T_417 = {6'h0,rsv_per_uv_line,6'h0,rsv_per_line}; // @[Cat.scala 30:58:@175.4]
  assign _T_423 = {11'h0,rsv_y_index,13'h0,rsv_height}; // @[Cat.scala 30:58:@178.4]
  assign _T_430 = {31'h0,weight_format}; // @[Cat.scala 30:58:@179.4]
  assign _T_433 = {31'h0,weight_ram_type}; // @[Cat.scala 30:58:@180.4]
  assign _T_436 = {14'h0,byte_per_kernel}; // @[Cat.scala 30:58:@181.4]
  assign _T_439 = {19'h0,weight_kernel}; // @[Cat.scala 30:58:@182.4]
  assign _T_446 = {4'h0,wmb_bytes}; // @[Cat.scala 30:58:@183.4]
  assign _T_458 = {2'h0,pad_bottom,3'h0,pad_top,2'h0,pad_right,3'h0,pad_left}; // @[Cat.scala 30:58:@190.4]
  assign _T_461 = {16'h0,pad_value}; // @[Cat.scala 30:58:@191.4]
  assign _T_462 = 32'hb8 == _GEN_69; // @[Mux.scala 46:19:@192.4]
  assign _T_463 = _T_462 ? _T_461 : 32'h0; // @[Mux.scala 46:16:@193.4]
  assign _T_464 = 32'hb4 == _GEN_69; // @[Mux.scala 46:19:@194.4]
  assign _T_465 = _T_464 ? _T_458 : _T_463; // @[Mux.scala 46:16:@195.4]
  assign _T_466 = 32'h94 == _GEN_69; // @[Mux.scala 46:19:@196.4]
  assign _T_467 = _T_466 ? _T_446 : _T_465; // @[Mux.scala 46:16:@197.4]
  assign _T_468 = 32'h90 == _GEN_69; // @[Mux.scala 46:19:@198.4]
  assign _T_469 = _T_468 ? wmb_addr_low : _T_467; // @[Mux.scala 46:16:@199.4]
  assign _T_470 = 32'h8c == _GEN_69; // @[Mux.scala 46:19:@200.4]
  assign _T_471 = _T_470 ? wmb_addr_high : _T_469; // @[Mux.scala 46:16:@201.4]
  assign _T_472 = 32'h88 == _GEN_69; // @[Mux.scala 46:19:@202.4]
  assign _T_473 = _T_472 ? wgs_addr_low : _T_471; // @[Mux.scala 46:16:@203.4]
  assign _T_474 = 32'h84 == _GEN_69; // @[Mux.scala 46:19:@204.4]
  assign _T_475 = _T_474 ? wgs_addr_high : _T_473; // @[Mux.scala 46:16:@205.4]
  assign _T_476 = 32'h70 == _GEN_69; // @[Mux.scala 46:19:@206.4]
  assign _T_477 = _T_476 ? _T_439 : _T_475; // @[Mux.scala 46:16:@207.4]
  assign _T_478 = 32'h6c == _GEN_69; // @[Mux.scala 46:19:@208.4]
  assign _T_479 = _T_478 ? _T_436 : _T_477; // @[Mux.scala 46:16:@209.4]
  assign _T_480 = 32'h74 == _GEN_69; // @[Mux.scala 46:19:@210.4]
  assign _T_481 = _T_480 ? _T_433 : _T_479; // @[Mux.scala 46:16:@211.4]
  assign _T_482 = 32'h68 == _GEN_69; // @[Mux.scala 46:19:@212.4]
  assign _T_483 = _T_482 ? _T_430 : _T_481; // @[Mux.scala 46:16:@213.4]
  assign _T_484 = 32'h80 == _GEN_69; // @[Mux.scala 46:19:@214.4]
  assign _T_485 = _T_484 ? weight_bytes : _T_483; // @[Mux.scala 46:16:@215.4]
  assign _T_486 = 32'h7c == _GEN_69; // @[Mux.scala 46:19:@216.4]
  assign _T_487 = _T_486 ? weight_addr_low : _T_485; // @[Mux.scala 46:16:@217.4]
  assign _T_488 = 32'h78 == _GEN_69; // @[Mux.scala 46:19:@218.4]
  assign _T_489 = _T_488 ? weight_addr_high : _T_487; // @[Mux.scala 46:16:@219.4]
  assign _T_490 = 32'h48 == _GEN_69; // @[Mux.scala 46:19:@220.4]
  assign _T_491 = _T_490 ? surf_stride : _T_489; // @[Mux.scala 46:16:@221.4]
  assign _T_492 = 32'h54 == _GEN_69; // @[Mux.scala 46:19:@222.4]
  assign _T_493 = _T_492 ? _T_423 : _T_491; // @[Mux.scala 46:16:@223.4]
  assign _T_494 = 32'h50 == _GEN_69; // @[Mux.scala 46:19:@224.4]
  assign _T_495 = _T_494 ? _T_417 : _T_493; // @[Mux.scala 46:16:@225.4]
  assign _T_496 = 32'h28 == _GEN_69; // @[Mux.scala 46:19:@226.4]
  assign _T_497 = _T_496 ? _T_411 : _T_495; // @[Mux.scala 46:16:@227.4]
  assign _T_498 = 32'hdc == _GEN_69; // @[Mux.scala 46:19:@228.4]
  assign _T_499 = _T_498 ? wt_rd_stall : _T_497; // @[Mux.scala 46:16:@229.4]
  assign _T_500 = 32'he4 == _GEN_69; // @[Mux.scala 46:19:@230.4]
  assign _T_501 = _T_500 ? wt_rd_latency : _T_499; // @[Mux.scala 46:16:@231.4]
  assign _T_502 = 32'hd4 == _GEN_69; // @[Mux.scala 46:19:@232.4]
  assign _T_503 = _T_502 ? _T_403 : _T_501; // @[Mux.scala 46:16:@233.4]
  assign _T_504 = 32'hd8 == _GEN_69; // @[Mux.scala 46:19:@234.4]
  assign _T_505 = _T_504 ? dat_rd_stall : _T_503; // @[Mux.scala 46:16:@235.4]
  assign _T_506 = 32'he0 == _GEN_69; // @[Mux.scala 46:19:@236.4]
  assign _T_507 = _T_506 ? dat_rd_latency : _T_505; // @[Mux.scala 46:16:@237.4]
  assign _T_508 = 32'h10 == _GEN_69; // @[Mux.scala 46:19:@238.4]
  assign _T_509 = _T_508 ? _T_398 : _T_507; // @[Mux.scala 46:16:@239.4]
  assign _T_510 = 32'hc8 == _GEN_69; // @[Mux.scala 46:19:@240.4]
  assign _T_511 = _T_510 ? nan_weight_num : _T_509; // @[Mux.scala 46:16:@241.4]
  assign _T_512 = 32'hc4 == _GEN_69; // @[Mux.scala 46:19:@242.4]
  assign _T_513 = _T_512 ? nan_data_num : _T_511; // @[Mux.scala 46:16:@243.4]
  assign _T_514 = 32'hc0 == _GEN_69; // @[Mux.scala 46:19:@244.4]
  assign _T_515 = _T_514 ? _T_393 : _T_513; // @[Mux.scala 46:16:@245.4]
  assign _T_516 = 32'h14 == _GEN_69; // @[Mux.scala 46:19:@246.4]
  assign _T_517 = _T_516 ? _T_390 : _T_515; // @[Mux.scala 46:16:@247.4]
  assign _T_518 = 32'ha0 == _GEN_69; // @[Mux.scala 46:19:@248.4]
  assign _T_519 = _T_518 ? _T_369 : _T_517; // @[Mux.scala 46:16:@249.4]
  assign _T_520 = 32'h9c == _GEN_69; // @[Mux.scala 46:19:@250.4]
  assign _T_521 = _T_520 ? _T_367 : _T_519; // @[Mux.scala 46:16:@251.4]
  assign _T_522 = 32'h98 == _GEN_69; // @[Mux.scala 46:19:@252.4]
  assign _T_523 = _T_522 ? _T_365 : _T_521; // @[Mux.scala 46:16:@253.4]
  assign _T_524 = 32'h44 == _GEN_69; // @[Mux.scala 46:19:@254.4]
  assign _T_525 = _T_524 ? uv_line_stride : _T_523; // @[Mux.scala 46:16:@255.4]
  assign _T_526 = 32'h40 == _GEN_69; // @[Mux.scala 46:19:@256.4]
  assign _T_527 = _T_526 ? line_stride : _T_525; // @[Mux.scala 46:16:@257.4]
  assign _T_528 = 32'hd0 == _GEN_69; // @[Mux.scala 46:19:@258.4]
  assign _T_529 = _T_528 ? inf_weight_num : _T_527; // @[Mux.scala 46:16:@259.4]
  assign _T_530 = 32'hcc == _GEN_69; // @[Mux.scala 46:19:@260.4]
  assign _T_531 = _T_530 ? inf_data_num : _T_529; // @[Mux.scala 46:16:@261.4]
  assign _T_532 = 32'h64 == _GEN_69; // @[Mux.scala 46:19:@262.4]
  assign _T_533 = _T_532 ? _T_358 : _T_531; // @[Mux.scala 46:16:@263.4]
  assign _T_534 = 32'h60 == _GEN_69; // @[Mux.scala 46:19:@264.4]
  assign _T_535 = _T_534 ? _T_355 : _T_533; // @[Mux.scala 46:16:@265.4]
  assign _T_536 = 32'h24 == _GEN_69; // @[Mux.scala 46:19:@266.4]
  assign _T_537 = _T_536 ? _T_352 : _T_535; // @[Mux.scala 46:16:@267.4]
  assign _T_538 = 32'h20 == _GEN_69; // @[Mux.scala 46:19:@268.4]
  assign _T_539 = _T_538 ? _T_346 : _T_537; // @[Mux.scala 46:16:@269.4]
  assign _T_540 = 32'h1c == _GEN_69; // @[Mux.scala 46:19:@270.4]
  assign _T_541 = _T_540 ? _T_343 : _T_539; // @[Mux.scala 46:16:@271.4]
  assign _T_542 = 32'h18 == _GEN_69; // @[Mux.scala 46:19:@272.4]
  assign _T_543 = _T_542 ? _T_337 : _T_541; // @[Mux.scala 46:16:@273.4]
  assign _T_544 = 32'h2c == _GEN_69; // @[Mux.scala 46:19:@274.4]
  assign _T_545 = _T_544 ? _T_325 : _T_543; // @[Mux.scala 46:16:@275.4]
  assign _T_546 = 32'h4c == _GEN_69; // @[Mux.scala 46:19:@276.4]
  assign _T_547 = _T_546 ? _T_322 : _T_545; // @[Mux.scala 46:16:@277.4]
  assign _T_548 = 32'h3c == _GEN_69; // @[Mux.scala 46:19:@278.4]
  assign _T_549 = _T_548 ? datain_addr_low_1 : _T_547; // @[Mux.scala 46:16:@279.4]
  assign _T_550 = 32'h34 == _GEN_69; // @[Mux.scala 46:19:@280.4]
  assign _T_551 = _T_550 ? datain_addr_low_0 : _T_549; // @[Mux.scala 46:16:@281.4]
  assign _T_552 = 32'h38 == _GEN_69; // @[Mux.scala 46:19:@282.4]
  assign _T_553 = _T_552 ? datain_addr_high_1 : _T_551; // @[Mux.scala 46:16:@283.4]
  assign _T_554 = 32'h30 == _GEN_69; // @[Mux.scala 46:19:@284.4]
  assign _T_555 = _T_554 ? datain_addr_high_0 : _T_553; // @[Mux.scala 46:16:@285.4]
  assign _T_556 = 32'he8 == _GEN_69; // @[Mux.scala 46:19:@286.4]
  assign _T_557 = _T_556 ? cya : _T_555; // @[Mux.scala 46:16:@287.4]
  assign _T_558 = 32'hac == _GEN_69; // @[Mux.scala 46:19:@288.4]
  assign _T_559 = _T_558 ? _T_311 : _T_557; // @[Mux.scala 46:16:@289.4]
  assign _T_560 = 32'ha8 == _GEN_69; // @[Mux.scala 46:19:@290.4]
  assign _T_561 = _T_560 ? _T_308 : _T_559; // @[Mux.scala 46:16:@291.4]
  assign _T_562 = 32'ha4 == _GEN_69; // @[Mux.scala 46:19:@292.4]
  assign _T_563 = _T_562 ? _T_305 : _T_561; // @[Mux.scala 46:16:@293.4]
  assign _T_564 = 32'hb0 == _GEN_69; // @[Mux.scala 46:19:@294.4]
  assign _T_565 = _T_564 ? _T_299 : _T_563; // @[Mux.scala 46:16:@295.4]
  assign _T_566 = 32'h5c == _GEN_69; // @[Mux.scala 46:19:@296.4]
  assign _T_567 = _T_566 ? batch_stride : _T_565; // @[Mux.scala 46:16:@297.4]
  assign _T_568 = 32'h58 == _GEN_69; // @[Mux.scala 46:19:@298.4]
  assign _T_569 = _T_568 ? _T_292 : _T_567; // @[Mux.scala 46:16:@299.4]
  assign _T_570 = 32'hbc == _GEN_69; // @[Mux.scala 46:19:@300.4]
  assign _T_572 = reg_wr_data[4:0]; // @[NV_NVDLA_CDMA_dual_reg.scala 233:51:@303.4]
  assign _GEN_0 = nvdla_cdma_d_bank_0_wren ? _T_572 : _T_575; // @[Reg.scala 20:19:@305.4]
  assign _T_576 = reg_wr_data[20:16]; // @[NV_NVDLA_CDMA_dual_reg.scala 235:53:@309.4]
  assign _GEN_1 = nvdla_cdma_d_bank_0_wren ? _T_576 : _T_579; // @[Reg.scala 20:19:@311.4]
  assign _GEN_2 = nvdla_cdma_d_batch_number_0_wren ? _T_572 : _T_583; // @[Reg.scala 20:19:@317.4]
  assign _GEN_3 = nvdla_cdma_d_batch_stride_0_wren ? reg_wr_data : _T_587; // @[Reg.scala 20:19:@323.4]
  assign _T_588 = reg_wr_data[2:0]; // @[NV_NVDLA_CDMA_dual_reg.scala 241:55:@327.4]
  assign _GEN_4 = nvdla_cdma_d_conv_stride_0_wren ? _T_588 : _T_591; // @[Reg.scala 20:19:@329.4]
  assign _T_592 = reg_wr_data[18:16]; // @[NV_NVDLA_CDMA_dual_reg.scala 243:55:@333.4]
  assign _GEN_5 = nvdla_cdma_d_conv_stride_0_wren ? _T_592 : _T_595; // @[Reg.scala 20:19:@335.4]
  assign _T_596 = reg_wr_data[0]; // @[NV_NVDLA_CDMA_dual_reg.scala 245:48:@339.4]
  assign _GEN_6 = nvdla_cdma_d_cvt_cfg_0_wren ? _T_596 : _T_599; // @[Reg.scala 20:19:@341.4]
  assign _T_600 = reg_wr_data[9:4]; // @[NV_NVDLA_CDMA_dual_reg.scala 247:54:@345.4]
  assign _GEN_7 = nvdla_cdma_d_cvt_cfg_0_wren ? _T_600 : _T_603; // @[Reg.scala 20:19:@347.4]
  assign _T_604 = reg_wr_data[15:0]; // @[NV_NVDLA_CDMA_dual_reg.scala 249:52:@351.4]
  assign _GEN_8 = nvdla_cdma_d_cvt_offset_0_wren ? _T_604 : _T_607; // @[Reg.scala 20:19:@353.4]
  assign _GEN_9 = nvdla_cdma_d_cvt_scale_0_wren ? _T_604 : _T_611; // @[Reg.scala 20:19:@359.4]
  assign _GEN_10 = nvdla_cdma_d_cya_0_wren ? reg_wr_data : _T_615; // @[Reg.scala 20:19:@365.4]
  assign _GEN_11 = nvdla_cdma_d_dain_addr_high_0_0_wren ? reg_wr_data : _T_619; // @[Reg.scala 20:19:@371.4]
  assign _GEN_12 = nvdla_cdma_d_dain_addr_high_1_0_wren ? reg_wr_data : _T_623; // @[Reg.scala 20:19:@377.4]
  assign _GEN_13 = nvdla_cdma_d_dain_addr_low_0_0_wren ? reg_wr_data : _T_627; // @[Reg.scala 20:19:@383.4]
  assign _GEN_14 = nvdla_cdma_d_dain_addr_low_1_0_wren ? reg_wr_data : _T_631; // @[Reg.scala 20:19:@389.4]
  assign _GEN_15 = nvdla_cdma_d_dain_map_0_wren ? _T_596 : _T_635; // @[Reg.scala 20:19:@395.4]
  assign _T_636 = reg_wr_data[16]; // @[NV_NVDLA_CDMA_dual_reg.scala 265:53:@399.4]
  assign _GEN_16 = nvdla_cdma_d_dain_map_0_wren ? _T_636 : _T_639; // @[Reg.scala 20:19:@401.4]
  assign _GEN_17 = nvdla_cdma_d_dain_ram_type_0_wren ? _T_596 : _T_643; // @[Reg.scala 20:19:@407.4]
  assign _GEN_18 = nvdla_cdma_d_datain_format_0_wren ? _T_596 : _T_647; // @[Reg.scala 20:19:@413.4]
  assign _T_648 = reg_wr_data[13:8]; // @[NV_NVDLA_CDMA_dual_reg.scala 271:54:@417.4]
  assign _GEN_19 = nvdla_cdma_d_datain_format_0_wren ? _T_648 : _T_651; // @[Reg.scala 20:19:@419.4]
  assign _GEN_20 = nvdla_cdma_d_datain_format_0_wren ? _T_636 : _T_655; // @[Reg.scala 20:19:@425.4]
  assign _T_656 = reg_wr_data[20]; // @[NV_NVDLA_CDMA_dual_reg.scala 275:61:@429.4]
  assign _GEN_21 = nvdla_cdma_d_datain_format_0_wren ? _T_656 : _T_659; // @[Reg.scala 20:19:@431.4]
  assign _T_660 = reg_wr_data[28:16]; // @[NV_NVDLA_CDMA_dual_reg.scala 277:55:@435.4]
  assign _GEN_22 = nvdla_cdma_d_datain_size_0_0_wren ? _T_660 : _T_663; // @[Reg.scala 20:19:@437.4]
  assign _T_664 = reg_wr_data[12:0]; // @[NV_NVDLA_CDMA_dual_reg.scala 279:54:@441.4]
  assign _GEN_23 = nvdla_cdma_d_datain_size_0_0_wren ? _T_664 : _T_667; // @[Reg.scala 20:19:@443.4]
  assign _GEN_24 = nvdla_cdma_d_datain_size_1_0_wren ? _T_664 : _T_671; // @[Reg.scala 20:19:@449.4]
  assign _GEN_25 = nvdla_cdma_d_datain_size_ext_0_0_wren ? _T_660 : _T_675; // @[Reg.scala 20:19:@455.4]
  assign _GEN_26 = nvdla_cdma_d_datain_size_ext_0_0_wren ? _T_664 : _T_679; // @[Reg.scala 20:19:@461.4]
  assign _T_680 = reg_wr_data[13:0]; // @[NV_NVDLA_CDMA_dual_reg.scala 287:49:@465.4]
  assign _GEN_27 = nvdla_cdma_d_entry_per_slice_0_wren ? _T_680 : _T_683; // @[Reg.scala 20:19:@467.4]
  assign _T_684 = reg_wr_data[11:0]; // @[NV_NVDLA_CDMA_dual_reg.scala 289:48:@471.4]
  assign _GEN_28 = nvdla_cdma_d_fetch_grain_0_wren ? _T_684 : _T_687; // @[Reg.scala 20:19:@473.4]
  assign _GEN_29 = nvdla_cdma_d_perf_enable_0_wren ? reg_wr_data : _T_691; // @[Reg.scala 20:19:@479.4]
  assign _GEN_30 = nvdla_cdma_d_line_uv_stride_0_wren ? reg_wr_data : _T_695; // @[Reg.scala 20:19:@485.4]
  assign _GEN_31 = nvdla_cdma_d_mean_format_0_wren ? _T_596 : _T_699; // @[Reg.scala 20:19:@491.4]
  assign _T_700 = reg_wr_data[31:16]; // @[NV_NVDLA_CDMA_dual_reg.scala 297:49:@495.4]
  assign _GEN_32 = nvdla_cdma_d_mean_global_0_0_wren ? _T_700 : _T_703; // @[Reg.scala 20:19:@497.4]
  assign _GEN_33 = nvdla_cdma_d_mean_global_0_0_wren ? _T_604 : _T_707; // @[Reg.scala 20:19:@503.4]
  assign _GEN_34 = nvdla_cdma_d_mean_global_1_0_wren ? _T_700 : _T_711; // @[Reg.scala 20:19:@509.4]
  assign _GEN_35 = nvdla_cdma_d_mean_global_1_0_wren ? _T_604 : _T_715; // @[Reg.scala 20:19:@515.4]
  assign _GEN_36 = nvdla_cdma_d_misc_cfg_0_wren ? _T_596 : _T_719; // @[Reg.scala 20:19:@521.4]
  assign _GEN_37 = nvdla_cdma_d_misc_cfg_0_wren ? _T_636 : _T_723; // @[Reg.scala 20:19:@527.4]
  assign _T_724 = reg_wr_data[9:8]; // @[NV_NVDLA_CDMA_dual_reg.scala 309:54:@531.4]
  assign _GEN_38 = nvdla_cdma_d_misc_cfg_0_wren ? _T_724 : _T_727; // @[Reg.scala 20:19:@533.4]
  assign _T_728 = reg_wr_data[13:12]; // @[NV_NVDLA_CDMA_dual_reg.scala 311:56:@537.4]
  assign _GEN_39 = nvdla_cdma_d_misc_cfg_0_wren ? _T_728 : _T_731; // @[Reg.scala 20:19:@539.4]
  assign _T_732 = reg_wr_data[24]; // @[NV_NVDLA_CDMA_dual_reg.scala 313:55:@543.4]
  assign _GEN_40 = nvdla_cdma_d_misc_cfg_0_wren ? _T_732 : _T_735; // @[Reg.scala 20:19:@545.4]
  assign _T_736 = reg_wr_data[28]; // @[NV_NVDLA_CDMA_dual_reg.scala 315:57:@549.4]
  assign _GEN_41 = nvdla_cdma_d_misc_cfg_0_wren ? _T_736 : _T_739; // @[Reg.scala 20:19:@551.4]
  assign _GEN_42 = nvdla_cdma_d_misc_cfg_0_wren ? _T_656 : _T_743; // @[Reg.scala 20:19:@557.4]
  assign _GEN_43 = nvdla_cdma_d_nan_flush_to_zero_0_wren ? _T_596 : _T_747; // @[Reg.scala 20:19:@563.4]
  assign _GEN_44 = nvdla_cdma_d_perf_enable_0_wren ? _T_596 : _T_751; // @[Reg.scala 20:19:@569.4]
  assign _GEN_45 = nvdla_cdma_d_pixel_offset_0_wren ? _T_572 : _T_755; // @[Reg.scala 20:19:@575.4]
  assign _GEN_46 = nvdla_cdma_d_pixel_offset_0_wren ? _T_592 : _T_759; // @[Reg.scala 20:19:@581.4]
  assign _T_760 = reg_wr_data[9:0]; // @[NV_NVDLA_CDMA_dual_reg.scala 327:54:@585.4]
  assign _GEN_47 = nvdla_cdma_d_reserved_x_cfg_0_wren ? _T_760 : _T_763; // @[Reg.scala 20:19:@587.4]
  assign _T_764 = reg_wr_data[25:16]; // @[NV_NVDLA_CDMA_dual_reg.scala 329:57:@591.4]
  assign _GEN_48 = nvdla_cdma_d_reserved_x_cfg_0_wren ? _T_764 : _T_767; // @[Reg.scala 20:19:@593.4]
  assign _GEN_49 = nvdla_cdma_d_reserved_y_cfg_0_wren ? _T_588 : _T_771; // @[Reg.scala 20:19:@599.4]
  assign _GEN_50 = nvdla_cdma_d_reserved_y_cfg_0_wren ? _T_576 : _T_775; // @[Reg.scala 20:19:@605.4]
  assign _GEN_51 = nvdla_cdma_d_surf_stride_0_wren ? reg_wr_data : _T_779; // @[Reg.scala 20:19:@611.4]
  assign _GEN_52 = nvdla_cdma_d_weight_addr_high_0_wren ? reg_wr_data : _T_783; // @[Reg.scala 20:19:@617.4]
  assign _GEN_53 = nvdla_cdma_d_weight_addr_low_0_wren ? reg_wr_data : _T_787; // @[Reg.scala 20:19:@623.4]
  assign _GEN_54 = nvdla_cdma_d_weight_bytes_0_wren ? reg_wr_data : _T_791; // @[Reg.scala 20:19:@629.4]
  assign _GEN_55 = nvdla_cdma_d_weight_format_0_wren ? _T_596 : _T_795; // @[Reg.scala 20:19:@635.4]
  assign _GEN_56 = nvdla_cdma_d_weight_ram_type_0_wren ? _T_596 : _T_799; // @[Reg.scala 20:19:@641.4]
  assign _T_800 = reg_wr_data[17:0]; // @[NV_NVDLA_CDMA_dual_reg.scala 347:57:@645.4]
  assign _GEN_57 = nvdla_cdma_d_weight_size_0_0_wren ? _T_800 : _T_803; // @[Reg.scala 20:19:@647.4]
  assign _GEN_58 = nvdla_cdma_d_weight_size_1_0_wren ? _T_664 : _T_807; // @[Reg.scala 20:19:@653.4]
  assign _GEN_59 = nvdla_cdma_d_wgs_addr_high_0_wren ? reg_wr_data : _T_811; // @[Reg.scala 20:19:@659.4]
  assign _GEN_60 = nvdla_cdma_d_wgs_addr_low_0_wren ? reg_wr_data : _T_815; // @[Reg.scala 20:19:@665.4]
  assign _GEN_61 = nvdla_cdma_d_wmb_addr_high_0_wren ? reg_wr_data : _T_819; // @[Reg.scala 20:19:@671.4]
  assign _GEN_62 = nvdla_cdma_d_wmb_addr_low_0_wren ? reg_wr_data : _T_823; // @[Reg.scala 20:19:@677.4]
  assign _T_824 = reg_wr_data[27:0]; // @[NV_NVDLA_CDMA_dual_reg.scala 359:51:@681.4]
  assign _GEN_63 = nvdla_cdma_d_wmb_bytes_0_wren ? _T_824 : _T_827; // @[Reg.scala 20:19:@683.4]
  assign _T_828 = reg_wr_data[29:24]; // @[NV_NVDLA_CDMA_dual_reg.scala 361:52:@687.4]
  assign _GEN_64 = nvdla_cdma_d_zero_padding_0_wren ? _T_828 : _T_831; // @[Reg.scala 20:19:@689.4]
  assign _GEN_65 = nvdla_cdma_d_zero_padding_0_wren ? _T_572 : _T_835; // @[Reg.scala 20:19:@695.4]
  assign _GEN_66 = nvdla_cdma_d_zero_padding_0_wren ? _T_648 : _T_839; // @[Reg.scala 20:19:@701.4]
  assign _GEN_67 = nvdla_cdma_d_zero_padding_0_wren ? _T_576 : _T_843; // @[Reg.scala 20:19:@707.4]
  assign _GEN_68 = nvdla_cdma_d_zero_padding_value_0_wren ? _T_604 : _T_847; // @[Reg.scala 20:19:@713.4]
  assign reg_rd_data = _T_570 ? _T_289 : _T_569; // @[NV_NVDLA_CDMA_dual_reg.scala 115:20:@302.4]
  assign data_bank = _T_575; // @[NV_NVDLA_CDMA_dual_reg.scala 233:24:@308.4]
  assign weight_bank = _T_579; // @[NV_NVDLA_CDMA_dual_reg.scala 235:26:@314.4]
  assign batches = _T_583; // @[NV_NVDLA_CDMA_dual_reg.scala 237:22:@320.4]
  assign batch_stride = _T_587; // @[NV_NVDLA_CDMA_dual_reg.scala 239:27:@326.4]
  assign conv_x_stride = _T_591; // @[NV_NVDLA_CDMA_dual_reg.scala 241:28:@332.4]
  assign conv_y_stride = _T_595; // @[NV_NVDLA_CDMA_dual_reg.scala 243:28:@338.4]
  assign cvt_en = _T_599; // @[NV_NVDLA_CDMA_dual_reg.scala 245:21:@344.4]
  assign cvt_truncate = _T_603; // @[NV_NVDLA_CDMA_dual_reg.scala 247:27:@350.4]
  assign cvt_offset = _T_607; // @[NV_NVDLA_CDMA_dual_reg.scala 249:25:@356.4]
  assign cvt_scale = _T_611; // @[NV_NVDLA_CDMA_dual_reg.scala 251:24:@362.4]
  assign cya = _T_615; // @[NV_NVDLA_CDMA_dual_reg.scala 253:18:@368.4]
  assign datain_addr_high_0 = _T_619; // @[NV_NVDLA_CDMA_dual_reg.scala 255:33:@374.4]
  assign datain_addr_high_1 = _T_623; // @[NV_NVDLA_CDMA_dual_reg.scala 257:33:@380.4]
  assign datain_addr_low_0 = _T_627; // @[NV_NVDLA_CDMA_dual_reg.scala 259:32:@386.4]
  assign datain_addr_low_1 = _T_631; // @[NV_NVDLA_CDMA_dual_reg.scala 261:32:@392.4]
  assign line_packed = _T_635; // @[NV_NVDLA_CDMA_dual_reg.scala 263:26:@398.4]
  assign surf_packed = _T_639; // @[NV_NVDLA_CDMA_dual_reg.scala 265:26:@404.4]
  assign datain_ram_type = _T_643; // @[NV_NVDLA_CDMA_dual_reg.scala 267:30:@410.4]
  assign datain_format = _T_647; // @[NV_NVDLA_CDMA_dual_reg.scala 269:28:@416.4]
  assign pixel_format = _T_651; // @[NV_NVDLA_CDMA_dual_reg.scala 271:27:@422.4]
  assign pixel_mapping = _T_655; // @[NV_NVDLA_CDMA_dual_reg.scala 273:28:@428.4]
  assign pixel_sign_override = _T_659; // @[NV_NVDLA_CDMA_dual_reg.scala 275:34:@434.4]
  assign datain_height = _T_663; // @[NV_NVDLA_CDMA_dual_reg.scala 277:28:@440.4]
  assign datain_width = _T_667; // @[NV_NVDLA_CDMA_dual_reg.scala 279:27:@446.4]
  assign datain_channel = _T_671; // @[NV_NVDLA_CDMA_dual_reg.scala 281:29:@452.4]
  assign datain_height_ext = _T_675; // @[NV_NVDLA_CDMA_dual_reg.scala 283:32:@458.4]
  assign datain_width_ext = _T_679; // @[NV_NVDLA_CDMA_dual_reg.scala 285:31:@464.4]
  assign entries = _T_683; // @[NV_NVDLA_CDMA_dual_reg.scala 287:22:@470.4]
  assign grains = _T_687; // @[NV_NVDLA_CDMA_dual_reg.scala 289:21:@476.4]
  assign line_stride = _T_691; // @[NV_NVDLA_CDMA_dual_reg.scala 291:26:@482.4]
  assign uv_line_stride = _T_695; // @[NV_NVDLA_CDMA_dual_reg.scala 293:29:@488.4]
  assign mean_format = _T_699; // @[NV_NVDLA_CDMA_dual_reg.scala 295:26:@494.4]
  assign mean_gu = _T_703; // @[NV_NVDLA_CDMA_dual_reg.scala 297:22:@500.4]
  assign mean_ry = _T_707; // @[NV_NVDLA_CDMA_dual_reg.scala 299:22:@506.4]
  assign mean_ax = _T_711; // @[NV_NVDLA_CDMA_dual_reg.scala 301:22:@512.4]
  assign mean_bv = _T_715; // @[NV_NVDLA_CDMA_dual_reg.scala 303:22:@518.4]
  assign conv_mode = _T_719; // @[NV_NVDLA_CDMA_dual_reg.scala 305:24:@524.4]
  assign data_reuse = _T_723; // @[NV_NVDLA_CDMA_dual_reg.scala 307:25:@530.4]
  assign in_precision = _T_727; // @[NV_NVDLA_CDMA_dual_reg.scala 309:27:@536.4]
  assign proc_precision = _T_731; // @[NV_NVDLA_CDMA_dual_reg.scala 311:29:@542.4]
  assign skip_data_rls = _T_735; // @[NV_NVDLA_CDMA_dual_reg.scala 313:28:@548.4]
  assign skip_weight_rls = _T_739; // @[NV_NVDLA_CDMA_dual_reg.scala 315:30:@554.4]
  assign weight_reuse = _T_743; // @[NV_NVDLA_CDMA_dual_reg.scala 317:27:@560.4]
  assign nan_to_zero = _T_747; // @[NV_NVDLA_CDMA_dual_reg.scala 319:26:@566.4]
  assign dma_en = _T_751; // @[NV_NVDLA_CDMA_dual_reg.scala 321:21:@572.4]
  assign pixel_x_offset = _T_755; // @[NV_NVDLA_CDMA_dual_reg.scala 323:29:@578.4]
  assign pixel_y_offset = _T_759; // @[NV_NVDLA_CDMA_dual_reg.scala 325:29:@584.4]
  assign rsv_per_line = _T_763; // @[NV_NVDLA_CDMA_dual_reg.scala 327:27:@590.4]
  assign rsv_per_uv_line = _T_767; // @[NV_NVDLA_CDMA_dual_reg.scala 329:30:@596.4]
  assign rsv_height = _T_771; // @[NV_NVDLA_CDMA_dual_reg.scala 331:25:@602.4]
  assign rsv_y_index = _T_775; // @[NV_NVDLA_CDMA_dual_reg.scala 333:26:@608.4]
  assign surf_stride = _T_779; // @[NV_NVDLA_CDMA_dual_reg.scala 335:26:@614.4]
  assign weight_addr_high = _T_783; // @[NV_NVDLA_CDMA_dual_reg.scala 337:31:@620.4]
  assign weight_addr_low = _T_787; // @[NV_NVDLA_CDMA_dual_reg.scala 339:30:@626.4]
  assign weight_bytes = _T_791; // @[NV_NVDLA_CDMA_dual_reg.scala 341:27:@632.4]
  assign weight_format = _T_795; // @[NV_NVDLA_CDMA_dual_reg.scala 343:28:@638.4]
  assign weight_ram_type = _T_799; // @[NV_NVDLA_CDMA_dual_reg.scala 345:30:@644.4]
  assign byte_per_kernel = _T_803; // @[NV_NVDLA_CDMA_dual_reg.scala 347:30:@650.4]
  assign weight_kernel = _T_807; // @[NV_NVDLA_CDMA_dual_reg.scala 349:28:@656.4]
  assign wgs_addr_high = _T_811; // @[NV_NVDLA_CDMA_dual_reg.scala 351:28:@662.4]
  assign wgs_addr_low = _T_815; // @[NV_NVDLA_CDMA_dual_reg.scala 353:27:@668.4]
  assign wmb_addr_high = _T_819; // @[NV_NVDLA_CDMA_dual_reg.scala 355:28:@674.4]
  assign wmb_addr_low = _T_823; // @[NV_NVDLA_CDMA_dual_reg.scala 357:27:@680.4]
  assign wmb_bytes = _T_827; // @[NV_NVDLA_CDMA_dual_reg.scala 359:24:@686.4]
  assign pad_bottom = _T_831; // @[NV_NVDLA_CDMA_dual_reg.scala 361:25:@692.4]
  assign pad_left = _T_835; // @[NV_NVDLA_CDMA_dual_reg.scala 363:23:@698.4]
  assign pad_right = _T_839; // @[NV_NVDLA_CDMA_dual_reg.scala 365:24:@704.4]
  assign pad_top = _T_843; // @[NV_NVDLA_CDMA_dual_reg.scala 367:22:@710.4]
  assign pad_value = _T_847; // @[NV_NVDLA_CDMA_dual_reg.scala 369:24:@716.4]
  assign op_en_trigger = _T_236 & reg_wr_en; // @[NV_NVDLA_CDMA_dual_reg.scala 111:22:@118.4]
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
  _T_575 = _RAND_0[4:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_1 = {1{`RANDOM}};
  _T_579 = _RAND_1[4:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_2 = {1{`RANDOM}};
  _T_583 = _RAND_2[4:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_3 = {1{`RANDOM}};
  _T_587 = _RAND_3[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_4 = {1{`RANDOM}};
  _T_591 = _RAND_4[2:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_5 = {1{`RANDOM}};
  _T_595 = _RAND_5[2:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_6 = {1{`RANDOM}};
  _T_599 = _RAND_6[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_7 = {1{`RANDOM}};
  _T_603 = _RAND_7[5:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_8 = {1{`RANDOM}};
  _T_607 = _RAND_8[15:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_9 = {1{`RANDOM}};
  _T_611 = _RAND_9[15:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_10 = {1{`RANDOM}};
  _T_615 = _RAND_10[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_11 = {1{`RANDOM}};
  _T_619 = _RAND_11[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_12 = {1{`RANDOM}};
  _T_623 = _RAND_12[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_13 = {1{`RANDOM}};
  _T_627 = _RAND_13[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_14 = {1{`RANDOM}};
  _T_631 = _RAND_14[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_15 = {1{`RANDOM}};
  _T_635 = _RAND_15[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_16 = {1{`RANDOM}};
  _T_639 = _RAND_16[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_17 = {1{`RANDOM}};
  _T_643 = _RAND_17[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_18 = {1{`RANDOM}};
  _T_647 = _RAND_18[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_19 = {1{`RANDOM}};
  _T_651 = _RAND_19[5:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_20 = {1{`RANDOM}};
  _T_655 = _RAND_20[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_21 = {1{`RANDOM}};
  _T_659 = _RAND_21[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_22 = {1{`RANDOM}};
  _T_663 = _RAND_22[12:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_23 = {1{`RANDOM}};
  _T_667 = _RAND_23[12:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_24 = {1{`RANDOM}};
  _T_671 = _RAND_24[12:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_25 = {1{`RANDOM}};
  _T_675 = _RAND_25[12:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_26 = {1{`RANDOM}};
  _T_679 = _RAND_26[12:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_27 = {1{`RANDOM}};
  _T_683 = _RAND_27[13:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_28 = {1{`RANDOM}};
  _T_687 = _RAND_28[11:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_29 = {1{`RANDOM}};
  _T_691 = _RAND_29[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_30 = {1{`RANDOM}};
  _T_695 = _RAND_30[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_31 = {1{`RANDOM}};
  _T_699 = _RAND_31[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_32 = {1{`RANDOM}};
  _T_703 = _RAND_32[15:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_33 = {1{`RANDOM}};
  _T_707 = _RAND_33[15:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_34 = {1{`RANDOM}};
  _T_711 = _RAND_34[15:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_35 = {1{`RANDOM}};
  _T_715 = _RAND_35[15:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_36 = {1{`RANDOM}};
  _T_719 = _RAND_36[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_37 = {1{`RANDOM}};
  _T_723 = _RAND_37[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_38 = {1{`RANDOM}};
  _T_727 = _RAND_38[1:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_39 = {1{`RANDOM}};
  _T_731 = _RAND_39[1:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_40 = {1{`RANDOM}};
  _T_735 = _RAND_40[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_41 = {1{`RANDOM}};
  _T_739 = _RAND_41[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_42 = {1{`RANDOM}};
  _T_743 = _RAND_42[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_43 = {1{`RANDOM}};
  _T_747 = _RAND_43[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_44 = {1{`RANDOM}};
  _T_751 = _RAND_44[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_45 = {1{`RANDOM}};
  _T_755 = _RAND_45[4:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_46 = {1{`RANDOM}};
  _T_759 = _RAND_46[2:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_47 = {1{`RANDOM}};
  _T_763 = _RAND_47[9:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_48 = {1{`RANDOM}};
  _T_767 = _RAND_48[9:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_49 = {1{`RANDOM}};
  _T_771 = _RAND_49[2:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_50 = {1{`RANDOM}};
  _T_775 = _RAND_50[4:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_51 = {1{`RANDOM}};
  _T_779 = _RAND_51[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_52 = {1{`RANDOM}};
  _T_783 = _RAND_52[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_53 = {1{`RANDOM}};
  _T_787 = _RAND_53[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_54 = {1{`RANDOM}};
  _T_791 = _RAND_54[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_55 = {1{`RANDOM}};
  _T_795 = _RAND_55[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_56 = {1{`RANDOM}};
  _T_799 = _RAND_56[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_57 = {1{`RANDOM}};
  _T_803 = _RAND_57[17:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_58 = {1{`RANDOM}};
  _T_807 = _RAND_58[12:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_59 = {1{`RANDOM}};
  _T_811 = _RAND_59[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_60 = {1{`RANDOM}};
  _T_815 = _RAND_60[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_61 = {1{`RANDOM}};
  _T_819 = _RAND_61[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_62 = {1{`RANDOM}};
  _T_823 = _RAND_62[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_63 = {1{`RANDOM}};
  _T_827 = _RAND_63[27:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_64 = {1{`RANDOM}};
  _T_831 = _RAND_64[5:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_65 = {1{`RANDOM}};
  _T_835 = _RAND_65[4:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_66 = {1{`RANDOM}};
  _T_839 = _RAND_66[5:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_67 = {1{`RANDOM}};
  _T_843 = _RAND_67[4:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_68 = {1{`RANDOM}};
  _T_847 = _RAND_68[15:0];
  `endif // RANDOMIZE_REG_INIT
  end
`endif // RANDOMIZE
  always @(posedge nvdla_core_clk) begin
    if (!nvdla_core_rstn) begin
      _T_575 <= 5'h0;
    end else begin
      if (nvdla_cdma_d_bank_0_wren) begin
        _T_575 <= _T_572;
      end
    end
    if (!nvdla_core_rstn) begin
      _T_579 <= 5'h0;
    end else begin
      if (nvdla_cdma_d_bank_0_wren) begin
        _T_579 <= _T_576;
      end
    end
    if (!nvdla_core_rstn) begin
      _T_583 <= 5'h0;
    end else begin
      if (nvdla_cdma_d_batch_number_0_wren) begin
        _T_583 <= _T_572;
      end
    end
    if (!nvdla_core_rstn) begin
      _T_587 <= 32'h0;
    end else begin
      if (nvdla_cdma_d_batch_stride_0_wren) begin
        _T_587 <= reg_wr_data;
      end
    end
    if (!nvdla_core_rstn) begin
      _T_591 <= 3'h0;
    end else begin
      if (nvdla_cdma_d_conv_stride_0_wren) begin
        _T_591 <= _T_588;
      end
    end
    if (!nvdla_core_rstn) begin
      _T_595 <= 3'h0;
    end else begin
      if (nvdla_cdma_d_conv_stride_0_wren) begin
        _T_595 <= _T_592;
      end
    end
    if (!nvdla_core_rstn) begin
      _T_599 <= 1'h0;
    end else begin
      if (nvdla_cdma_d_cvt_cfg_0_wren) begin
        _T_599 <= _T_596;
      end
    end
    if (!nvdla_core_rstn) begin
      _T_603 <= 6'h0;
    end else begin
      if (nvdla_cdma_d_cvt_cfg_0_wren) begin
        _T_603 <= _T_600;
      end
    end
    if (!nvdla_core_rstn) begin
      _T_607 <= 16'h0;
    end else begin
      if (nvdla_cdma_d_cvt_offset_0_wren) begin
        _T_607 <= _T_604;
      end
    end
    if (!nvdla_core_rstn) begin
      _T_611 <= 16'h0;
    end else begin
      if (nvdla_cdma_d_cvt_scale_0_wren) begin
        _T_611 <= _T_604;
      end
    end
    if (!nvdla_core_rstn) begin
      _T_615 <= 32'h0;
    end else begin
      if (nvdla_cdma_d_cya_0_wren) begin
        _T_615 <= reg_wr_data;
      end
    end
    if (!nvdla_core_rstn) begin
      _T_619 <= 32'h0;
    end else begin
      if (nvdla_cdma_d_dain_addr_high_0_0_wren) begin
        _T_619 <= reg_wr_data;
      end
    end
    if (!nvdla_core_rstn) begin
      _T_623 <= 32'h0;
    end else begin
      if (nvdla_cdma_d_dain_addr_high_1_0_wren) begin
        _T_623 <= reg_wr_data;
      end
    end
    if (!nvdla_core_rstn) begin
      _T_627 <= 32'h0;
    end else begin
      if (nvdla_cdma_d_dain_addr_low_0_0_wren) begin
        _T_627 <= reg_wr_data;
      end
    end
    if (!nvdla_core_rstn) begin
      _T_631 <= 32'h0;
    end else begin
      if (nvdla_cdma_d_dain_addr_low_1_0_wren) begin
        _T_631 <= reg_wr_data;
      end
    end
    if (!nvdla_core_rstn) begin
      _T_635 <= 1'h0;
    end else begin
      if (nvdla_cdma_d_dain_map_0_wren) begin
        _T_635 <= _T_596;
      end
    end
    if (!nvdla_core_rstn) begin
      _T_639 <= 1'h0;
    end else begin
      if (nvdla_cdma_d_dain_map_0_wren) begin
        _T_639 <= _T_636;
      end
    end
    if (!nvdla_core_rstn) begin
      _T_643 <= 1'h0;
    end else begin
      if (nvdla_cdma_d_dain_ram_type_0_wren) begin
        _T_643 <= _T_596;
      end
    end
    if (!nvdla_core_rstn) begin
      _T_647 <= 1'h0;
    end else begin
      if (nvdla_cdma_d_datain_format_0_wren) begin
        _T_647 <= _T_596;
      end
    end
    if (!nvdla_core_rstn) begin
      _T_651 <= 6'hc;
    end else begin
      if (nvdla_cdma_d_datain_format_0_wren) begin
        _T_651 <= _T_648;
      end
    end
    if (!nvdla_core_rstn) begin
      _T_655 <= 1'h0;
    end else begin
      if (nvdla_cdma_d_datain_format_0_wren) begin
        _T_655 <= _T_636;
      end
    end
    if (!nvdla_core_rstn) begin
      _T_659 <= 1'h0;
    end else begin
      if (nvdla_cdma_d_datain_format_0_wren) begin
        _T_659 <= _T_656;
      end
    end
    if (!nvdla_core_rstn) begin
      _T_663 <= 13'h0;
    end else begin
      if (nvdla_cdma_d_datain_size_0_0_wren) begin
        _T_663 <= _T_660;
      end
    end
    if (!nvdla_core_rstn) begin
      _T_667 <= 13'h0;
    end else begin
      if (nvdla_cdma_d_datain_size_0_0_wren) begin
        _T_667 <= _T_664;
      end
    end
    if (!nvdla_core_rstn) begin
      _T_671 <= 13'h0;
    end else begin
      if (nvdla_cdma_d_datain_size_1_0_wren) begin
        _T_671 <= _T_664;
      end
    end
    if (!nvdla_core_rstn) begin
      _T_675 <= 13'h0;
    end else begin
      if (nvdla_cdma_d_datain_size_ext_0_0_wren) begin
        _T_675 <= _T_660;
      end
    end
    if (!nvdla_core_rstn) begin
      _T_679 <= 13'h0;
    end else begin
      if (nvdla_cdma_d_datain_size_ext_0_0_wren) begin
        _T_679 <= _T_664;
      end
    end
    if (!nvdla_core_rstn) begin
      _T_683 <= 14'h0;
    end else begin
      if (nvdla_cdma_d_entry_per_slice_0_wren) begin
        _T_683 <= _T_680;
      end
    end
    if (!nvdla_core_rstn) begin
      _T_687 <= 12'h0;
    end else begin
      if (nvdla_cdma_d_fetch_grain_0_wren) begin
        _T_687 <= _T_684;
      end
    end
    if (!nvdla_core_rstn) begin
      _T_691 <= 32'h0;
    end else begin
      if (nvdla_cdma_d_perf_enable_0_wren) begin
        _T_691 <= reg_wr_data;
      end
    end
    if (!nvdla_core_rstn) begin
      _T_695 <= 32'h0;
    end else begin
      if (nvdla_cdma_d_line_uv_stride_0_wren) begin
        _T_695 <= reg_wr_data;
      end
    end
    if (!nvdla_core_rstn) begin
      _T_699 <= 1'h0;
    end else begin
      if (nvdla_cdma_d_mean_format_0_wren) begin
        _T_699 <= _T_596;
      end
    end
    if (!nvdla_core_rstn) begin
      _T_703 <= 16'h0;
    end else begin
      if (nvdla_cdma_d_mean_global_0_0_wren) begin
        _T_703 <= _T_700;
      end
    end
    if (!nvdla_core_rstn) begin
      _T_707 <= 16'h0;
    end else begin
      if (nvdla_cdma_d_mean_global_0_0_wren) begin
        _T_707 <= _T_604;
      end
    end
    if (!nvdla_core_rstn) begin
      _T_711 <= 16'h0;
    end else begin
      if (nvdla_cdma_d_mean_global_1_0_wren) begin
        _T_711 <= _T_700;
      end
    end
    if (!nvdla_core_rstn) begin
      _T_715 <= 16'h0;
    end else begin
      if (nvdla_cdma_d_mean_global_1_0_wren) begin
        _T_715 <= _T_604;
      end
    end
    if (!nvdla_core_rstn) begin
      _T_719 <= 1'h0;
    end else begin
      if (nvdla_cdma_d_misc_cfg_0_wren) begin
        _T_719 <= _T_596;
      end
    end
    if (!nvdla_core_rstn) begin
      _T_723 <= 1'h0;
    end else begin
      if (nvdla_cdma_d_misc_cfg_0_wren) begin
        _T_723 <= _T_636;
      end
    end
    if (!nvdla_core_rstn) begin
      _T_727 <= 2'h1;
    end else begin
      if (nvdla_cdma_d_misc_cfg_0_wren) begin
        _T_727 <= _T_724;
      end
    end
    if (!nvdla_core_rstn) begin
      _T_731 <= 2'h1;
    end else begin
      if (nvdla_cdma_d_misc_cfg_0_wren) begin
        _T_731 <= _T_728;
      end
    end
    if (!nvdla_core_rstn) begin
      _T_735 <= 1'h0;
    end else begin
      if (nvdla_cdma_d_misc_cfg_0_wren) begin
        _T_735 <= _T_732;
      end
    end
    if (!nvdla_core_rstn) begin
      _T_739 <= 1'h0;
    end else begin
      if (nvdla_cdma_d_misc_cfg_0_wren) begin
        _T_739 <= _T_736;
      end
    end
    if (!nvdla_core_rstn) begin
      _T_743 <= 1'h0;
    end else begin
      if (nvdla_cdma_d_misc_cfg_0_wren) begin
        _T_743 <= _T_656;
      end
    end
    if (!nvdla_core_rstn) begin
      _T_747 <= 1'h0;
    end else begin
      if (nvdla_cdma_d_nan_flush_to_zero_0_wren) begin
        _T_747 <= _T_596;
      end
    end
    if (!nvdla_core_rstn) begin
      _T_751 <= 1'h0;
    end else begin
      if (nvdla_cdma_d_perf_enable_0_wren) begin
        _T_751 <= _T_596;
      end
    end
    if (!nvdla_core_rstn) begin
      _T_755 <= 5'h0;
    end else begin
      if (nvdla_cdma_d_pixel_offset_0_wren) begin
        _T_755 <= _T_572;
      end
    end
    if (!nvdla_core_rstn) begin
      _T_759 <= 3'h0;
    end else begin
      if (nvdla_cdma_d_pixel_offset_0_wren) begin
        _T_759 <= _T_592;
      end
    end
    if (!nvdla_core_rstn) begin
      _T_763 <= 10'h0;
    end else begin
      if (nvdla_cdma_d_reserved_x_cfg_0_wren) begin
        _T_763 <= _T_760;
      end
    end
    if (!nvdla_core_rstn) begin
      _T_767 <= 10'h0;
    end else begin
      if (nvdla_cdma_d_reserved_x_cfg_0_wren) begin
        _T_767 <= _T_764;
      end
    end
    if (!nvdla_core_rstn) begin
      _T_771 <= 3'h0;
    end else begin
      if (nvdla_cdma_d_reserved_y_cfg_0_wren) begin
        _T_771 <= _T_588;
      end
    end
    if (!nvdla_core_rstn) begin
      _T_775 <= 5'h0;
    end else begin
      if (nvdla_cdma_d_reserved_y_cfg_0_wren) begin
        _T_775 <= _T_576;
      end
    end
    if (!nvdla_core_rstn) begin
      _T_779 <= 32'h0;
    end else begin
      if (nvdla_cdma_d_surf_stride_0_wren) begin
        _T_779 <= reg_wr_data;
      end
    end
    if (!nvdla_core_rstn) begin
      _T_783 <= 32'h0;
    end else begin
      if (nvdla_cdma_d_weight_addr_high_0_wren) begin
        _T_783 <= reg_wr_data;
      end
    end
    if (!nvdla_core_rstn) begin
      _T_787 <= 32'h0;
    end else begin
      if (nvdla_cdma_d_weight_addr_low_0_wren) begin
        _T_787 <= reg_wr_data;
      end
    end
    if (!nvdla_core_rstn) begin
      _T_791 <= 32'h0;
    end else begin
      if (nvdla_cdma_d_weight_bytes_0_wren) begin
        _T_791 <= reg_wr_data;
      end
    end
    if (!nvdla_core_rstn) begin
      _T_795 <= 1'h0;
    end else begin
      if (nvdla_cdma_d_weight_format_0_wren) begin
        _T_795 <= _T_596;
      end
    end
    if (!nvdla_core_rstn) begin
      _T_799 <= 1'h0;
    end else begin
      if (nvdla_cdma_d_weight_ram_type_0_wren) begin
        _T_799 <= _T_596;
      end
    end
    if (!nvdla_core_rstn) begin
      _T_803 <= 18'h0;
    end else begin
      if (nvdla_cdma_d_weight_size_0_0_wren) begin
        _T_803 <= _T_800;
      end
    end
    if (!nvdla_core_rstn) begin
      _T_807 <= 13'h0;
    end else begin
      if (nvdla_cdma_d_weight_size_1_0_wren) begin
        _T_807 <= _T_664;
      end
    end
    if (!nvdla_core_rstn) begin
      _T_811 <= 32'h0;
    end else begin
      if (nvdla_cdma_d_wgs_addr_high_0_wren) begin
        _T_811 <= reg_wr_data;
      end
    end
    if (!nvdla_core_rstn) begin
      _T_815 <= 32'h0;
    end else begin
      if (nvdla_cdma_d_wgs_addr_low_0_wren) begin
        _T_815 <= reg_wr_data;
      end
    end
    if (!nvdla_core_rstn) begin
      _T_819 <= 32'h0;
    end else begin
      if (nvdla_cdma_d_wmb_addr_high_0_wren) begin
        _T_819 <= reg_wr_data;
      end
    end
    if (!nvdla_core_rstn) begin
      _T_823 <= 32'h0;
    end else begin
      if (nvdla_cdma_d_wmb_addr_low_0_wren) begin
        _T_823 <= reg_wr_data;
      end
    end
    if (!nvdla_core_rstn) begin
      _T_827 <= 28'h0;
    end else begin
      if (nvdla_cdma_d_wmb_bytes_0_wren) begin
        _T_827 <= _T_824;
      end
    end
    if (!nvdla_core_rstn) begin
      _T_831 <= 6'h0;
    end else begin
      if (nvdla_cdma_d_zero_padding_0_wren) begin
        _T_831 <= _T_828;
      end
    end
    if (!nvdla_core_rstn) begin
      _T_835 <= 5'h0;
    end else begin
      if (nvdla_cdma_d_zero_padding_0_wren) begin
        _T_835 <= _T_572;
      end
    end
    if (!nvdla_core_rstn) begin
      _T_839 <= 6'h0;
    end else begin
      if (nvdla_cdma_d_zero_padding_0_wren) begin
        _T_839 <= _T_648;
      end
    end
    if (!nvdla_core_rstn) begin
      _T_843 <= 5'h0;
    end else begin
      if (nvdla_cdma_d_zero_padding_0_wren) begin
        _T_843 <= _T_576;
      end
    end
    if (!nvdla_core_rstn) begin
      _T_847 <= 16'h0;
    end else begin
      if (nvdla_cdma_d_zero_padding_value_0_wren) begin
        _T_847 <= _T_604;
      end
    end
  end
endmodule


// ================================================================
// NVDLA Open Source Project
//
// Copyright(c) 2016 - 2017 NVIDIA Corporation. Licensed under the
// NVDLA Open Hardware License; Check "LICENSE" which comes with
// this distribution for more information.
// ================================================================
// File Name: NV_NVDLA_CDMA_dual_reg.v
module NV_NVDLA_CDMA_dual_reg (
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
  ,data_bank
  ,weight_bank
  ,batches
  ,batch_stride
  ,conv_x_stride
  ,conv_y_stride
  ,cvt_en
  ,cvt_truncate
  ,cvt_offset
  ,cvt_scale
  ,cya
  ,datain_addr_high_0
  ,datain_addr_high_1
  ,datain_addr_low_0
  ,datain_addr_low_1
  ,line_packed
  ,surf_packed
  ,datain_ram_type
  ,datain_format
  ,pixel_format
  ,pixel_mapping
  ,pixel_sign_override
  ,datain_height
  ,datain_width
  ,datain_channel
  ,datain_height_ext
  ,datain_width_ext
  ,entries
  ,grains
  ,line_stride
  ,uv_line_stride
  ,mean_format
  ,mean_gu
  ,mean_ry
  ,mean_ax
  ,mean_bv
  ,conv_mode
  ,data_reuse
  ,in_precision
  ,proc_precision
  ,skip_data_rls
  ,skip_weight_rls
  ,weight_reuse
  ,nan_to_zero
  ,op_en_trigger
  ,dma_en
  ,pixel_x_offset
  ,pixel_y_offset
  ,rsv_per_line
  ,rsv_per_uv_line
  ,rsv_height
  ,rsv_y_index
  ,surf_stride
  ,weight_addr_high
  ,weight_addr_low
  ,weight_bytes
  ,weight_format
  ,weight_ram_type
  ,byte_per_kernel
  ,weight_kernel
  ,wgs_addr_high
  ,wgs_addr_low
  ,wmb_addr_high
  ,wmb_addr_low
  ,wmb_bytes
  ,pad_bottom
  ,pad_left
  ,pad_right
  ,pad_top
  ,pad_value
  ,inf_data_num
  ,inf_weight_num
  ,nan_data_num
  ,nan_weight_num
  ,op_en
  ,dat_rd_latency
  ,dat_rd_stall
  ,wt_rd_latency
  ,wt_rd_stall
  );
wire [31:0] nvdla_cdma_d_bank_0_out;
wire [31:0] nvdla_cdma_d_batch_number_0_out;
wire [31:0] nvdla_cdma_d_batch_stride_0_out;
wire [31:0] nvdla_cdma_d_conv_stride_0_out;
wire [31:0] nvdla_cdma_d_cvt_cfg_0_out;
wire [31:0] nvdla_cdma_d_cvt_offset_0_out;
wire [31:0] nvdla_cdma_d_cvt_scale_0_out;
wire [31:0] nvdla_cdma_d_cya_0_out;
wire [31:0] nvdla_cdma_d_dain_addr_high_0_0_out;
wire [31:0] nvdla_cdma_d_dain_addr_high_1_0_out;
wire [31:0] nvdla_cdma_d_dain_addr_low_0_0_out;
wire [31:0] nvdla_cdma_d_dain_addr_low_1_0_out;
wire [31:0] nvdla_cdma_d_dain_map_0_out;
wire [31:0] nvdla_cdma_d_dain_ram_type_0_out;
wire [31:0] nvdla_cdma_d_datain_format_0_out;
wire [31:0] nvdla_cdma_d_datain_size_0_0_out;
wire [31:0] nvdla_cdma_d_datain_size_1_0_out;
wire [31:0] nvdla_cdma_d_datain_size_ext_0_0_out;
wire [31:0] nvdla_cdma_d_entry_per_slice_0_out;
wire [31:0] nvdla_cdma_d_fetch_grain_0_out;
wire [31:0] nvdla_cdma_d_inf_input_data_num_0_out;
wire [31:0] nvdla_cdma_d_inf_input_weight_num_0_out;
wire [31:0] nvdla_cdma_d_line_stride_0_out;
wire [31:0] nvdla_cdma_d_line_uv_stride_0_out;
wire [31:0] nvdla_cdma_d_mean_format_0_out;
wire [31:0] nvdla_cdma_d_mean_global_0_0_out;
wire [31:0] nvdla_cdma_d_mean_global_1_0_out;
wire [31:0] nvdla_cdma_d_misc_cfg_0_out;
wire [31:0] nvdla_cdma_d_nan_flush_to_zero_0_out;
wire [31:0] nvdla_cdma_d_nan_input_data_num_0_out;
wire [31:0] nvdla_cdma_d_nan_input_weight_num_0_out;
wire [31:0] nvdla_cdma_d_op_enable_0_out;
wire [31:0] nvdla_cdma_d_perf_dat_read_latency_0_out;
wire [31:0] nvdla_cdma_d_perf_dat_read_stall_0_out;
wire [31:0] nvdla_cdma_d_perf_enable_0_out;
wire [31:0] nvdla_cdma_d_perf_wt_read_latency_0_out;
wire [31:0] nvdla_cdma_d_perf_wt_read_stall_0_out;
wire [31:0] nvdla_cdma_d_pixel_offset_0_out;
wire [31:0] nvdla_cdma_d_reserved_x_cfg_0_out;
wire [31:0] nvdla_cdma_d_reserved_y_cfg_0_out;
wire [31:0] nvdla_cdma_d_surf_stride_0_out;
wire [31:0] nvdla_cdma_d_weight_addr_high_0_out;
wire [31:0] nvdla_cdma_d_weight_addr_low_0_out;
wire [31:0] nvdla_cdma_d_weight_bytes_0_out;
wire [31:0] nvdla_cdma_d_weight_format_0_out;
wire [31:0] nvdla_cdma_d_weight_ram_type_0_out;
wire [31:0] nvdla_cdma_d_weight_size_0_0_out;
wire [31:0] nvdla_cdma_d_weight_size_1_0_out;
wire [31:0] nvdla_cdma_d_wgs_addr_high_0_out;
wire [31:0] nvdla_cdma_d_wgs_addr_low_0_out;
wire [31:0] nvdla_cdma_d_wmb_addr_high_0_out;
wire [31:0] nvdla_cdma_d_wmb_addr_low_0_out;
wire [31:0] nvdla_cdma_d_wmb_bytes_0_out;
wire [31:0] nvdla_cdma_d_zero_padding_0_out;
wire [31:0] nvdla_cdma_d_zero_padding_value_0_out;
wire [11:0] reg_offset_rd_int;
wire [31:0] reg_offset_wr;
// Register control interface
output [31:0] reg_rd_data;
input [11:0] reg_offset;
input [31:0] reg_wr_data; //(UNUSED_DEC)
input reg_wr_en;
input nvdla_core_clk;
input nvdla_core_rstn;
// Writable register flop/trigger outputs
output [4:0] data_bank;
output [4:0] weight_bank;
output [4:0] batches;
output [31:0] batch_stride;
output [2:0] conv_x_stride;
output [2:0] conv_y_stride;
output cvt_en;
output [5:0] cvt_truncate;
output [15:0] cvt_offset;
output [15:0] cvt_scale;
output [31:0] cya;
output [31:0] datain_addr_high_0;
output [31:0] datain_addr_high_1;
output [31:0] datain_addr_low_0;
output [31:0] datain_addr_low_1;
output line_packed;
output surf_packed;
output datain_ram_type;
output datain_format;
output [5:0] pixel_format;
output pixel_mapping;
output pixel_sign_override;
output [12:0] datain_height;
output [12:0] datain_width;
output [12:0] datain_channel;
output [12:0] datain_height_ext;
output [12:0] datain_width_ext;
output [13:0] entries;
output [11:0] grains;
output [31:0] line_stride;
output [31:0] uv_line_stride;
output mean_format;
output [15:0] mean_gu;
output [15:0] mean_ry;
output [15:0] mean_ax;
output [15:0] mean_bv;
output conv_mode;
output data_reuse;
output [1:0] in_precision;
output [1:0] proc_precision;
output skip_data_rls;
output skip_weight_rls;
output weight_reuse;
output nan_to_zero;
output op_en_trigger;
output dma_en;
output [4:0] pixel_x_offset;
output [2:0] pixel_y_offset;
output [9:0] rsv_per_line;
output [9:0] rsv_per_uv_line;
output [2:0] rsv_height;
output [4:0] rsv_y_index;
output [31:0] surf_stride;
output [31:0] weight_addr_high;
output [31:0] weight_addr_low;
output [31:0] weight_bytes;
output weight_format;
output weight_ram_type;
output [17:0] byte_per_kernel;
output [12:0] weight_kernel;
output [31:0] wgs_addr_high;
output [31:0] wgs_addr_low;
output [31:0] wmb_addr_high;
output [31:0] wmb_addr_low;
output [27:0] wmb_bytes;
output [5:0] pad_bottom;
output [4:0] pad_left;
output [5:0] pad_right;
output [4:0] pad_top;
output [15:0] pad_value;
// Read-only register inputs
input [31:0] inf_data_num;
input [31:0] inf_weight_num;
input [31:0] nan_data_num;
input [31:0] nan_weight_num;
input op_en;
input [31:0] dat_rd_latency;
input [31:0] dat_rd_stall;
input [31:0] wt_rd_latency;
input [31:0] wt_rd_stall;
// wr_mask register inputs
// rstn register inputs
// leda FM_2_23 off
reg arreggen_abort_on_invalid_wr;
reg arreggen_abort_on_rowr;
reg arreggen_dump;
// leda FM_2_23 on
reg [31:0] batch_stride;
reg [4:0] batches;
reg [17:0] byte_per_kernel;
reg conv_mode;
reg [2:0] conv_x_stride;
reg [2:0] conv_y_stride;
reg cvt_en;
reg [15:0] cvt_offset;
reg [15:0] cvt_scale;
reg [5:0] cvt_truncate;
reg [31:0] cya;
reg [4:0] data_bank;
reg data_reuse;
reg [31:0] datain_addr_high_0;
reg [31:0] datain_addr_high_1;
reg [31:0] datain_addr_low_0;
reg [31:0] datain_addr_low_1;
reg [12:0] datain_channel;
reg datain_format;
reg [12:0] datain_height;
reg [12:0] datain_height_ext;
reg datain_ram_type;
reg [12:0] datain_width;
reg [12:0] datain_width_ext;
reg dma_en;
reg [13:0] entries;
reg [11:0] grains;
reg [1:0] in_precision;
reg line_packed;
reg [31:0] line_stride;
reg [15:0] mean_ax;
reg [15:0] mean_bv;
reg mean_format;
reg [15:0] mean_gu;
reg [15:0] mean_ry;
reg nan_to_zero;
reg [5:0] pad_bottom;
reg [4:0] pad_left;
reg [5:0] pad_right;
reg [4:0] pad_top;
reg [15:0] pad_value;
reg [5:0] pixel_format;
reg pixel_mapping;
reg pixel_sign_override;
reg [4:0] pixel_x_offset;
reg [2:0] pixel_y_offset;
reg [1:0] proc_precision;
reg [31:0] reg_rd_data;
reg [2:0] rsv_height;
reg [9:0] rsv_per_line;
reg [9:0] rsv_per_uv_line;
reg [4:0] rsv_y_index;
reg skip_data_rls;
reg skip_weight_rls;
reg surf_packed;
reg [31:0] surf_stride;
reg [31:0] uv_line_stride;
reg [31:0] weight_addr_high;
reg [31:0] weight_addr_low;
reg [4:0] weight_bank;
reg [31:0] weight_bytes;
reg weight_format;
reg [12:0] weight_kernel;
reg weight_ram_type;
reg weight_reuse;
reg [31:0] wgs_addr_high;
reg [31:0] wgs_addr_low;
reg [31:0] wmb_addr_high;
reg [31:0] wmb_addr_low;
reg [27:0] wmb_bytes;
assign reg_offset_wr = {20'b0 , reg_offset};
// SCR signals
// Address decode
wire nvdla_cdma_d_bank_0_wren = (reg_offset_wr == (32'h50bc & 32'h00000fff)) & reg_wr_en ; //spyglass disable UnloadedNet-ML //(W528)
wire nvdla_cdma_d_batch_number_0_wren = (reg_offset_wr == (32'h5058 & 32'h00000fff)) & reg_wr_en ; //spyglass disable UnloadedNet-ML //(W528)
wire nvdla_cdma_d_batch_stride_0_wren = (reg_offset_wr == (32'h505c & 32'h00000fff)) & reg_wr_en ; //spyglass disable UnloadedNet-ML //(W528)
wire nvdla_cdma_d_conv_stride_0_wren = (reg_offset_wr == (32'h50b0 & 32'h00000fff)) & reg_wr_en ; //spyglass disable UnloadedNet-ML //(W528)
wire nvdla_cdma_d_cvt_cfg_0_wren = (reg_offset_wr == (32'h50a4 & 32'h00000fff)) & reg_wr_en ; //spyglass disable UnloadedNet-ML //(W528)
wire nvdla_cdma_d_cvt_offset_0_wren = (reg_offset_wr == (32'h50a8 & 32'h00000fff)) & reg_wr_en ; //spyglass disable UnloadedNet-ML //(W528)
wire nvdla_cdma_d_cvt_scale_0_wren = (reg_offset_wr == (32'h50ac & 32'h00000fff)) & reg_wr_en ; //spyglass disable UnloadedNet-ML //(W528)
wire nvdla_cdma_d_cya_0_wren = (reg_offset_wr == (32'h50e8 & 32'h00000fff)) & reg_wr_en ; //spyglass disable UnloadedNet-ML //(W528)
wire nvdla_cdma_d_dain_addr_high_0_0_wren = (reg_offset_wr == (32'h5030 & 32'h00000fff)) & reg_wr_en ; //spyglass disable UnloadedNet-ML //(W528)
wire nvdla_cdma_d_dain_addr_high_1_0_wren = (reg_offset_wr == (32'h5038 & 32'h00000fff)) & reg_wr_en ; //spyglass disable UnloadedNet-ML //(W528)
wire nvdla_cdma_d_dain_addr_low_0_0_wren = (reg_offset_wr == (32'h5034 & 32'h00000fff)) & reg_wr_en ; //spyglass disable UnloadedNet-ML //(W528)
wire nvdla_cdma_d_dain_addr_low_1_0_wren = (reg_offset_wr == (32'h503c & 32'h00000fff)) & reg_wr_en ; //spyglass disable UnloadedNet-ML //(W528)
wire nvdla_cdma_d_dain_map_0_wren = (reg_offset_wr == (32'h504c & 32'h00000fff)) & reg_wr_en ; //spyglass disable UnloadedNet-ML //(W528)
wire nvdla_cdma_d_dain_ram_type_0_wren = (reg_offset_wr == (32'h502c & 32'h00000fff)) & reg_wr_en ; //spyglass disable UnloadedNet-ML //(W528)
wire nvdla_cdma_d_datain_format_0_wren = (reg_offset_wr == (32'h5018 & 32'h00000fff)) & reg_wr_en ; //spyglass disable UnloadedNet-ML //(W528)
wire nvdla_cdma_d_datain_size_0_0_wren = (reg_offset_wr == (32'h501c & 32'h00000fff)) & reg_wr_en ; //spyglass disable UnloadedNet-ML //(W528)
wire nvdla_cdma_d_datain_size_1_0_wren = (reg_offset_wr == (32'h5020 & 32'h00000fff)) & reg_wr_en ; //spyglass disable UnloadedNet-ML //(W528)
wire nvdla_cdma_d_datain_size_ext_0_0_wren = (reg_offset_wr == (32'h5024 & 32'h00000fff)) & reg_wr_en ; //spyglass disable UnloadedNet-ML //(W528)
wire nvdla_cdma_d_entry_per_slice_0_wren = (reg_offset_wr == (32'h5060 & 32'h00000fff)) & reg_wr_en ; //spyglass disable UnloadedNet-ML //(W528)
wire nvdla_cdma_d_fetch_grain_0_wren = (reg_offset_wr == (32'h5064 & 32'h00000fff)) & reg_wr_en ; //spyglass disable UnloadedNet-ML //(W528)
wire nvdla_cdma_d_inf_input_data_num_0_wren = (reg_offset_wr == (32'h50cc & 32'h00000fff)) & reg_wr_en ; //spyglass disable UnloadedNet-ML //(W528)
wire nvdla_cdma_d_inf_input_weight_num_0_wren = (reg_offset_wr == (32'h50d0 & 32'h00000fff)) & reg_wr_en ; //spyglass disable UnloadedNet-ML //(W528)
wire nvdla_cdma_d_line_stride_0_wren = (reg_offset_wr == (32'h5040 & 32'h00000fff)) & reg_wr_en ; //spyglass disable UnloadedNet-ML //(W528)
wire nvdla_cdma_d_line_uv_stride_0_wren = (reg_offset_wr == (32'h5044 & 32'h00000fff)) & reg_wr_en ; //spyglass disable UnloadedNet-ML //(W528)
wire nvdla_cdma_d_mean_format_0_wren = (reg_offset_wr == (32'h5098 & 32'h00000fff)) & reg_wr_en ; //spyglass disable UnloadedNet-ML //(W528)
wire nvdla_cdma_d_mean_global_0_0_wren = (reg_offset_wr == (32'h509c & 32'h00000fff)) & reg_wr_en ; //spyglass disable UnloadedNet-ML //(W528)
wire nvdla_cdma_d_mean_global_1_0_wren = (reg_offset_wr == (32'h50a0 & 32'h00000fff)) & reg_wr_en ; //spyglass disable UnloadedNet-ML //(W528)
wire nvdla_cdma_d_misc_cfg_0_wren = (reg_offset_wr == (32'h5014 & 32'h00000fff)) & reg_wr_en ; //spyglass disable UnloadedNet-ML //(W528)
wire nvdla_cdma_d_nan_flush_to_zero_0_wren = (reg_offset_wr == (32'h50c0 & 32'h00000fff)) & reg_wr_en ; //spyglass disable UnloadedNet-ML //(W528)
wire nvdla_cdma_d_nan_input_data_num_0_wren = (reg_offset_wr == (32'h50c4 & 32'h00000fff)) & reg_wr_en ; //spyglass disable UnloadedNet-ML //(W528)
wire nvdla_cdma_d_nan_input_weight_num_0_wren = (reg_offset_wr == (32'h50c8 & 32'h00000fff)) & reg_wr_en ; //spyglass disable UnloadedNet-ML //(W528)
wire nvdla_cdma_d_op_enable_0_wren = (reg_offset_wr == (32'h5010 & 32'h00000fff)) & reg_wr_en ; //spyglass disable UnloadedNet-ML //(W528)
wire nvdla_cdma_d_perf_dat_read_latency_0_wren = (reg_offset_wr == (32'h50e0 & 32'h00000fff)) & reg_wr_en ; //spyglass disable UnloadedNet-ML //(W528)
wire nvdla_cdma_d_perf_dat_read_stall_0_wren = (reg_offset_wr == (32'h50d8 & 32'h00000fff)) & reg_wr_en ; //spyglass disable UnloadedNet-ML //(W528)
wire nvdla_cdma_d_perf_enable_0_wren = (reg_offset_wr == (32'h50d4 & 32'h00000fff)) & reg_wr_en ; //spyglass disable UnloadedNet-ML //(W528)
wire nvdla_cdma_d_perf_wt_read_latency_0_wren = (reg_offset_wr == (32'h50e4 & 32'h00000fff)) & reg_wr_en ; //spyglass disable UnloadedNet-ML //(W528)
wire nvdla_cdma_d_perf_wt_read_stall_0_wren = (reg_offset_wr == (32'h50dc & 32'h00000fff)) & reg_wr_en ; //spyglass disable UnloadedNet-ML //(W528)
wire nvdla_cdma_d_pixel_offset_0_wren = (reg_offset_wr == (32'h5028 & 32'h00000fff)) & reg_wr_en ; //spyglass disable UnloadedNet-ML //(W528)
wire nvdla_cdma_d_reserved_x_cfg_0_wren = (reg_offset_wr == (32'h5050 & 32'h00000fff)) & reg_wr_en ; //spyglass disable UnloadedNet-ML //(W528)
wire nvdla_cdma_d_reserved_y_cfg_0_wren = (reg_offset_wr == (32'h5054 & 32'h00000fff)) & reg_wr_en ; //spyglass disable UnloadedNet-ML //(W528)
wire nvdla_cdma_d_surf_stride_0_wren = (reg_offset_wr == (32'h5048 & 32'h00000fff)) & reg_wr_en ; //spyglass disable UnloadedNet-ML //(W528)
wire nvdla_cdma_d_weight_addr_high_0_wren = (reg_offset_wr == (32'h5078 & 32'h00000fff)) & reg_wr_en ; //spyglass disable UnloadedNet-ML //(W528)
wire nvdla_cdma_d_weight_addr_low_0_wren = (reg_offset_wr == (32'h507c & 32'h00000fff)) & reg_wr_en ; //spyglass disable UnloadedNet-ML //(W528)
wire nvdla_cdma_d_weight_bytes_0_wren = (reg_offset_wr == (32'h5080 & 32'h00000fff)) & reg_wr_en ; //spyglass disable UnloadedNet-ML //(W528)
wire nvdla_cdma_d_weight_format_0_wren = (reg_offset_wr == (32'h5068 & 32'h00000fff)) & reg_wr_en ; //spyglass disable UnloadedNet-ML //(W528)
wire nvdla_cdma_d_weight_ram_type_0_wren = (reg_offset_wr == (32'h5074 & 32'h00000fff)) & reg_wr_en ; //spyglass disable UnloadedNet-ML //(W528)
wire nvdla_cdma_d_weight_size_0_0_wren = (reg_offset_wr == (32'h506c & 32'h00000fff)) & reg_wr_en ; //spyglass disable UnloadedNet-ML //(W528)
wire nvdla_cdma_d_weight_size_1_0_wren = (reg_offset_wr == (32'h5070 & 32'h00000fff)) & reg_wr_en ; //spyglass disable UnloadedNet-ML //(W528)
wire nvdla_cdma_d_wgs_addr_high_0_wren = (reg_offset_wr == (32'h5084 & 32'h00000fff)) & reg_wr_en ; //spyglass disable UnloadedNet-ML //(W528)
wire nvdla_cdma_d_wgs_addr_low_0_wren = (reg_offset_wr == (32'h5088 & 32'h00000fff)) & reg_wr_en ; //spyglass disable UnloadedNet-ML //(W528)
wire nvdla_cdma_d_wmb_addr_high_0_wren = (reg_offset_wr == (32'h508c & 32'h00000fff)) & reg_wr_en ; //spyglass disable UnloadedNet-ML //(W528)
wire nvdla_cdma_d_wmb_addr_low_0_wren = (reg_offset_wr == (32'h5090 & 32'h00000fff)) & reg_wr_en ; //spyglass disable UnloadedNet-ML //(W528)
wire nvdla_cdma_d_wmb_bytes_0_wren = (reg_offset_wr == (32'h5094 & 32'h00000fff)) & reg_wr_en ; //spyglass disable UnloadedNet-ML //(W528)
wire nvdla_cdma_d_zero_padding_0_wren = (reg_offset_wr == (32'h50b4 & 32'h00000fff)) & reg_wr_en ; //spyglass disable UnloadedNet-ML //(W528)
wire nvdla_cdma_d_zero_padding_value_0_wren = (reg_offset_wr == (32'h50b8 & 32'h00000fff)) & reg_wr_en ; //spyglass disable UnloadedNet-ML //(W528)
assign nvdla_cdma_d_bank_0_out[31:0] = { 11'b0, weight_bank, 11'b0, data_bank };
assign nvdla_cdma_d_batch_number_0_out[31:0] = { 27'b0, batches };
assign nvdla_cdma_d_batch_stride_0_out[31:0] = { batch_stride };
assign nvdla_cdma_d_conv_stride_0_out[31:0] = { 13'b0, conv_y_stride, 13'b0, conv_x_stride };
assign nvdla_cdma_d_cvt_cfg_0_out[31:0] = { 22'b0, cvt_truncate, 3'b0, cvt_en };
assign nvdla_cdma_d_cvt_offset_0_out[31:0] = { 16'b0, cvt_offset };
assign nvdla_cdma_d_cvt_scale_0_out[31:0] = { 16'b0, cvt_scale };
assign nvdla_cdma_d_cya_0_out[31:0] = { cya };
assign nvdla_cdma_d_dain_addr_high_0_0_out[31:0] = { datain_addr_high_0 };
assign nvdla_cdma_d_dain_addr_high_1_0_out[31:0] = { datain_addr_high_1 };
assign nvdla_cdma_d_dain_addr_low_0_0_out[31:0] = { datain_addr_low_0 };
assign nvdla_cdma_d_dain_addr_low_1_0_out[31:0] = { datain_addr_low_1 };
assign nvdla_cdma_d_dain_map_0_out[31:0] = { 15'b0, surf_packed, 15'b0, line_packed };
assign nvdla_cdma_d_dain_ram_type_0_out[31:0] = { 31'b0, datain_ram_type };
assign nvdla_cdma_d_datain_format_0_out[31:0] = { 11'b0, pixel_sign_override, 3'b0, pixel_mapping, 2'b0, pixel_format, 7'b0, datain_format };
assign nvdla_cdma_d_datain_size_0_0_out[31:0] = { 3'b0, datain_height, 3'b0, datain_width };
assign nvdla_cdma_d_datain_size_1_0_out[31:0] = { 19'b0, datain_channel };
assign nvdla_cdma_d_datain_size_ext_0_0_out[31:0] = { 3'b0, datain_height_ext, 3'b0, datain_width_ext };
assign nvdla_cdma_d_entry_per_slice_0_out[31:0] = { 18'b0, entries };
assign nvdla_cdma_d_fetch_grain_0_out[31:0] = { 20'b0, grains };
assign nvdla_cdma_d_inf_input_data_num_0_out[31:0] = { inf_data_num };
assign nvdla_cdma_d_inf_input_weight_num_0_out[31:0] = { inf_weight_num };
assign nvdla_cdma_d_line_stride_0_out[31:0] = { line_stride };
assign nvdla_cdma_d_line_uv_stride_0_out[31:0] = { uv_line_stride };
assign nvdla_cdma_d_mean_format_0_out[31:0] = { 31'b0, mean_format };
assign nvdla_cdma_d_mean_global_0_0_out[31:0] = { mean_gu, mean_ry };
assign nvdla_cdma_d_mean_global_1_0_out[31:0] = { mean_ax, mean_bv };
assign nvdla_cdma_d_misc_cfg_0_out[31:0] = { 3'b0, skip_weight_rls, 3'b0, skip_data_rls, 3'b0, weight_reuse, 3'b0, data_reuse, 2'b0, proc_precision, 2'b0, in_precision, 7'b0, conv_mode };
assign nvdla_cdma_d_nan_flush_to_zero_0_out[31:0] = { 31'b0, nan_to_zero };
assign nvdla_cdma_d_nan_input_data_num_0_out[31:0] = { nan_data_num };
assign nvdla_cdma_d_nan_input_weight_num_0_out[31:0] = { nan_weight_num };
assign nvdla_cdma_d_op_enable_0_out[31:0] = { 31'b0, op_en };
assign nvdla_cdma_d_perf_dat_read_latency_0_out[31:0] = { dat_rd_latency };
assign nvdla_cdma_d_perf_dat_read_stall_0_out[31:0] = { dat_rd_stall };
assign nvdla_cdma_d_perf_enable_0_out[31:0] = { 31'b0, dma_en };
assign nvdla_cdma_d_perf_wt_read_latency_0_out[31:0] = { wt_rd_latency };
assign nvdla_cdma_d_perf_wt_read_stall_0_out[31:0] = { wt_rd_stall };
assign nvdla_cdma_d_pixel_offset_0_out[31:0] = { 13'b0, pixel_y_offset, 11'b0, pixel_x_offset };
assign nvdla_cdma_d_reserved_x_cfg_0_out[31:0] = { 6'b0, rsv_per_uv_line, 6'b0, rsv_per_line };
assign nvdla_cdma_d_reserved_y_cfg_0_out[31:0] = { 11'b0, rsv_y_index, 13'b0, rsv_height };
assign nvdla_cdma_d_surf_stride_0_out[31:0] = { surf_stride };
assign nvdla_cdma_d_weight_addr_high_0_out[31:0] = { weight_addr_high };
assign nvdla_cdma_d_weight_addr_low_0_out[31:0] = { weight_addr_low };
assign nvdla_cdma_d_weight_bytes_0_out[31:0] = { weight_bytes };
assign nvdla_cdma_d_weight_format_0_out[31:0] = { 31'b0, weight_format };
assign nvdla_cdma_d_weight_ram_type_0_out[31:0] = { 31'b0, weight_ram_type };
assign nvdla_cdma_d_weight_size_0_0_out[31:0] = { 14'b0, byte_per_kernel };
assign nvdla_cdma_d_weight_size_1_0_out[31:0] = { 19'b0, weight_kernel };
assign nvdla_cdma_d_wgs_addr_high_0_out[31:0] = { wgs_addr_high };
assign nvdla_cdma_d_wgs_addr_low_0_out[31:0] = { wgs_addr_low };
assign nvdla_cdma_d_wmb_addr_high_0_out[31:0] = { wmb_addr_high };
assign nvdla_cdma_d_wmb_addr_low_0_out[31:0] = { wmb_addr_low };
assign nvdla_cdma_d_wmb_bytes_0_out[31:0] = { 4'b0, wmb_bytes };
assign nvdla_cdma_d_zero_padding_0_out[31:0] = { 2'b0, pad_bottom, 3'b0, pad_top, 2'b0, pad_right, 3'b0, pad_left };
assign nvdla_cdma_d_zero_padding_value_0_out[31:0] = { 16'b0, pad_value };
assign op_en_trigger = nvdla_cdma_d_op_enable_0_wren; //(W563)
assign reg_offset_rd_int = reg_offset;
// Output mux
//spyglass disable_block W338, W263
always @(
  reg_offset_rd_int
  or nvdla_cdma_d_bank_0_out
  or nvdla_cdma_d_batch_number_0_out
  or nvdla_cdma_d_batch_stride_0_out
  or nvdla_cdma_d_conv_stride_0_out
  or nvdla_cdma_d_cvt_cfg_0_out
  or nvdla_cdma_d_cvt_offset_0_out
  or nvdla_cdma_d_cvt_scale_0_out
  or nvdla_cdma_d_cya_0_out
  or nvdla_cdma_d_dain_addr_high_0_0_out
  or nvdla_cdma_d_dain_addr_high_1_0_out
  or nvdla_cdma_d_dain_addr_low_0_0_out
  or nvdla_cdma_d_dain_addr_low_1_0_out
  or nvdla_cdma_d_dain_map_0_out
  or nvdla_cdma_d_dain_ram_type_0_out
  or nvdla_cdma_d_datain_format_0_out
  or nvdla_cdma_d_datain_size_0_0_out
  or nvdla_cdma_d_datain_size_1_0_out
  or nvdla_cdma_d_datain_size_ext_0_0_out
  or nvdla_cdma_d_entry_per_slice_0_out
  or nvdla_cdma_d_fetch_grain_0_out
  or nvdla_cdma_d_inf_input_data_num_0_out
  or nvdla_cdma_d_inf_input_weight_num_0_out
  or nvdla_cdma_d_line_stride_0_out
  or nvdla_cdma_d_line_uv_stride_0_out
  or nvdla_cdma_d_mean_format_0_out
  or nvdla_cdma_d_mean_global_0_0_out
  or nvdla_cdma_d_mean_global_1_0_out
  or nvdla_cdma_d_misc_cfg_0_out
  or nvdla_cdma_d_nan_flush_to_zero_0_out
  or nvdla_cdma_d_nan_input_data_num_0_out
  or nvdla_cdma_d_nan_input_weight_num_0_out
  or nvdla_cdma_d_op_enable_0_out
  or nvdla_cdma_d_perf_dat_read_latency_0_out
  or nvdla_cdma_d_perf_dat_read_stall_0_out
  or nvdla_cdma_d_perf_enable_0_out
  or nvdla_cdma_d_perf_wt_read_latency_0_out
  or nvdla_cdma_d_perf_wt_read_stall_0_out
  or nvdla_cdma_d_pixel_offset_0_out
  or nvdla_cdma_d_reserved_x_cfg_0_out
  or nvdla_cdma_d_reserved_y_cfg_0_out
  or nvdla_cdma_d_surf_stride_0_out
  or nvdla_cdma_d_weight_addr_high_0_out
  or nvdla_cdma_d_weight_addr_low_0_out
  or nvdla_cdma_d_weight_bytes_0_out
  or nvdla_cdma_d_weight_format_0_out
  or nvdla_cdma_d_weight_ram_type_0_out
  or nvdla_cdma_d_weight_size_0_0_out
  or nvdla_cdma_d_weight_size_1_0_out
  or nvdla_cdma_d_wgs_addr_high_0_out
  or nvdla_cdma_d_wgs_addr_low_0_out
  or nvdla_cdma_d_wmb_addr_high_0_out
  or nvdla_cdma_d_wmb_addr_low_0_out
  or nvdla_cdma_d_wmb_bytes_0_out
  or nvdla_cdma_d_zero_padding_0_out
  or nvdla_cdma_d_zero_padding_value_0_out
  ) begin
  case (reg_offset_rd_int)
     (32'h50bc & 32'h00000fff): begin
                            reg_rd_data = nvdla_cdma_d_bank_0_out ;
                            end
     (32'h5058 & 32'h00000fff): begin
                            reg_rd_data = nvdla_cdma_d_batch_number_0_out ;
                            end
     (32'h505c & 32'h00000fff): begin
                            reg_rd_data = nvdla_cdma_d_batch_stride_0_out ;
                            end
     (32'h50b0 & 32'h00000fff): begin
                            reg_rd_data = nvdla_cdma_d_conv_stride_0_out ;
                            end
     (32'h50a4 & 32'h00000fff): begin
                            reg_rd_data = nvdla_cdma_d_cvt_cfg_0_out ;
                            end
     (32'h50a8 & 32'h00000fff): begin
                            reg_rd_data = nvdla_cdma_d_cvt_offset_0_out ;
                            end
     (32'h50ac & 32'h00000fff): begin
                            reg_rd_data = nvdla_cdma_d_cvt_scale_0_out ;
                            end
     (32'h50e8 & 32'h00000fff): begin
                            reg_rd_data = nvdla_cdma_d_cya_0_out ;
                            end
     (32'h5030 & 32'h00000fff): begin
                            reg_rd_data = nvdla_cdma_d_dain_addr_high_0_0_out ;
                            end
     (32'h5038 & 32'h00000fff): begin
                            reg_rd_data = nvdla_cdma_d_dain_addr_high_1_0_out ;
                            end
     (32'h5034 & 32'h00000fff): begin
                            reg_rd_data = nvdla_cdma_d_dain_addr_low_0_0_out ;
                            end
     (32'h503c & 32'h00000fff): begin
                            reg_rd_data = nvdla_cdma_d_dain_addr_low_1_0_out ;
                            end
     (32'h504c & 32'h00000fff): begin
                            reg_rd_data = nvdla_cdma_d_dain_map_0_out ;
                            end
     (32'h502c & 32'h00000fff): begin
                            reg_rd_data = nvdla_cdma_d_dain_ram_type_0_out ;
                            end
     (32'h5018 & 32'h00000fff): begin
                            reg_rd_data = nvdla_cdma_d_datain_format_0_out ;
                            end
     (32'h501c & 32'h00000fff): begin
                            reg_rd_data = nvdla_cdma_d_datain_size_0_0_out ;
                            end
     (32'h5020 & 32'h00000fff): begin
                            reg_rd_data = nvdla_cdma_d_datain_size_1_0_out ;
                            end
     (32'h5024 & 32'h00000fff): begin
                            reg_rd_data = nvdla_cdma_d_datain_size_ext_0_0_out ;
                            end
     (32'h5060 & 32'h00000fff): begin
                            reg_rd_data = nvdla_cdma_d_entry_per_slice_0_out ;
                            end
     (32'h5064 & 32'h00000fff): begin
                            reg_rd_data = nvdla_cdma_d_fetch_grain_0_out ;
                            end
     (32'h50cc & 32'h00000fff): begin
                            reg_rd_data = nvdla_cdma_d_inf_input_data_num_0_out ;
                            end
     (32'h50d0 & 32'h00000fff): begin
                            reg_rd_data = nvdla_cdma_d_inf_input_weight_num_0_out ;
                            end
     (32'h5040 & 32'h00000fff): begin
                            reg_rd_data = nvdla_cdma_d_line_stride_0_out ;
                            end
     (32'h5044 & 32'h00000fff): begin
                            reg_rd_data = nvdla_cdma_d_line_uv_stride_0_out ;
                            end
     (32'h5098 & 32'h00000fff): begin
                            reg_rd_data = nvdla_cdma_d_mean_format_0_out ;
                            end
     (32'h509c & 32'h00000fff): begin
                            reg_rd_data = nvdla_cdma_d_mean_global_0_0_out ;
                            end
     (32'h50a0 & 32'h00000fff): begin
                            reg_rd_data = nvdla_cdma_d_mean_global_1_0_out ;
                            end
     (32'h5014 & 32'h00000fff): begin
                            reg_rd_data = nvdla_cdma_d_misc_cfg_0_out ;
                            end
     (32'h50c0 & 32'h00000fff): begin
                            reg_rd_data = nvdla_cdma_d_nan_flush_to_zero_0_out ;
                            end
     (32'h50c4 & 32'h00000fff): begin
                            reg_rd_data = nvdla_cdma_d_nan_input_data_num_0_out ;
                            end
     (32'h50c8 & 32'h00000fff): begin
                            reg_rd_data = nvdla_cdma_d_nan_input_weight_num_0_out ;
                            end
     (32'h5010 & 32'h00000fff): begin
                            reg_rd_data = nvdla_cdma_d_op_enable_0_out ;
                            end
     (32'h50e0 & 32'h00000fff): begin
                            reg_rd_data = nvdla_cdma_d_perf_dat_read_latency_0_out ;
                            end
     (32'h50d8 & 32'h00000fff): begin
                            reg_rd_data = nvdla_cdma_d_perf_dat_read_stall_0_out ;
                            end
     (32'h50d4 & 32'h00000fff): begin
                            reg_rd_data = nvdla_cdma_d_perf_enable_0_out ;
                            end
     (32'h50e4 & 32'h00000fff): begin
                            reg_rd_data = nvdla_cdma_d_perf_wt_read_latency_0_out ;
                            end
     (32'h50dc & 32'h00000fff): begin
                            reg_rd_data = nvdla_cdma_d_perf_wt_read_stall_0_out ;
                            end
     (32'h5028 & 32'h00000fff): begin
                            reg_rd_data = nvdla_cdma_d_pixel_offset_0_out ;
                            end
     (32'h5050 & 32'h00000fff): begin
                            reg_rd_data = nvdla_cdma_d_reserved_x_cfg_0_out ;
                            end
     (32'h5054 & 32'h00000fff): begin
                            reg_rd_data = nvdla_cdma_d_reserved_y_cfg_0_out ;
                            end
     (32'h5048 & 32'h00000fff): begin
                            reg_rd_data = nvdla_cdma_d_surf_stride_0_out ;
                            end
     (32'h5078 & 32'h00000fff): begin
                            reg_rd_data = nvdla_cdma_d_weight_addr_high_0_out ;
                            end
     (32'h507c & 32'h00000fff): begin
                            reg_rd_data = nvdla_cdma_d_weight_addr_low_0_out ;
                            end
     (32'h5080 & 32'h00000fff): begin
                            reg_rd_data = nvdla_cdma_d_weight_bytes_0_out ;
                            end
     (32'h5068 & 32'h00000fff): begin
                            reg_rd_data = nvdla_cdma_d_weight_format_0_out ;
                            end
     (32'h5074 & 32'h00000fff): begin
                            reg_rd_data = nvdla_cdma_d_weight_ram_type_0_out ;
                            end
     (32'h506c & 32'h00000fff): begin
                            reg_rd_data = nvdla_cdma_d_weight_size_0_0_out ;
                            end
     (32'h5070 & 32'h00000fff): begin
                            reg_rd_data = nvdla_cdma_d_weight_size_1_0_out ;
                            end
     (32'h5084 & 32'h00000fff): begin
                            reg_rd_data = nvdla_cdma_d_wgs_addr_high_0_out ;
                            end
     (32'h5088 & 32'h00000fff): begin
                            reg_rd_data = nvdla_cdma_d_wgs_addr_low_0_out ;
                            end
     (32'h508c & 32'h00000fff): begin
                            reg_rd_data = nvdla_cdma_d_wmb_addr_high_0_out ;
                            end
     (32'h5090 & 32'h00000fff): begin
                            reg_rd_data = nvdla_cdma_d_wmb_addr_low_0_out ;
                            end
     (32'h5094 & 32'h00000fff): begin
                            reg_rd_data = nvdla_cdma_d_wmb_bytes_0_out ;
                            end
     (32'h50b4 & 32'h00000fff): begin
                            reg_rd_data = nvdla_cdma_d_zero_padding_0_out ;
                            end
     (32'h50b8 & 32'h00000fff): begin
                            reg_rd_data = nvdla_cdma_d_zero_padding_value_0_out ;
                            end
    default: reg_rd_data = {32{1'b0}};
  endcase
end
//spyglass enable_block W338, W263
// spyglass disable_block STARC-2.10.1.6, NoConstWithXZ, W443
// Register flop declarations
always @(posedge nvdla_core_clk) begin
  if (!nvdla_core_rstn) begin
    data_bank[4:0] <= 5'b00000;
    weight_bank[4:0] <= 5'b00000;
    batches[4:0] <= 5'b00000;
    batch_stride[31:0] <= 32'b00000000000000000000000000000000;
    conv_x_stride[2:0] <= 3'b000;
    conv_y_stride[2:0] <= 3'b000;
    cvt_en <= 1'b0;
    cvt_truncate[5:0] <= 6'b000000;
    cvt_offset[15:0] <= 16'b0000000000000000;
    cvt_scale[15:0] <= 16'b0000000000000000;
    cya[31:0] <= 32'b00000000000000000000000000000000;
    datain_addr_high_0[31:0] <= 32'b00000000000000000000000000000000;
    datain_addr_high_1[31:0] <= 32'b00000000000000000000000000000000;
    datain_addr_low_0[31:0] <= 32'b00000000000000000000000000000000;
    datain_addr_low_1[31:0] <= 32'b00000000000000000000000000000000;
    line_packed <= 1'b0;
    surf_packed <= 1'b0;
    datain_ram_type <= 1'b0;
    datain_format <= 1'b0;
    pixel_format[5:0] <= 6'b001100;
    pixel_mapping <= 1'b0;
    pixel_sign_override <= 1'b0;
    datain_height[12:0] <= 13'b0000000000000;
    datain_width[12:0] <= 13'b0000000000000;
    datain_channel[12:0] <= 13'b0000000000000;
    datain_height_ext[12:0] <= 13'b0000000000000;
    datain_width_ext[12:0] <= 13'b0000000000000;
    entries[13:0] <= 14'b000000000000;
    grains[11:0] <= 12'b000000000000;
    line_stride[31:0] <= 32'b00000000000000000000000000000000;
    uv_line_stride[31:0] <= 32'b00000000000000000000000000000000;
    mean_format <= 1'b0;
    mean_gu[15:0] <= 16'b0000000000000000;
    mean_ry[15:0] <= 16'b0000000000000000;
    mean_ax[15:0] <= 16'b0000000000000000;
    mean_bv[15:0] <= 16'b0000000000000000;
    conv_mode <= 1'b0;
    data_reuse <= 1'b0;
    in_precision[1:0] <= 2'b01;
    proc_precision[1:0] <= 2'b01;
    skip_data_rls <= 1'b0;
    skip_weight_rls <= 1'b0;
    weight_reuse <= 1'b0;
    nan_to_zero <= 1'b0;
    dma_en <= 1'b0;
    pixel_x_offset[4:0] <= 5'b00000;
    pixel_y_offset[2:0] <= 3'b000;
    rsv_per_line[9:0] <= 10'b0000000000;
    rsv_per_uv_line[9:0] <= 10'b0000000000;
    rsv_height[2:0] <= 3'b000;
    rsv_y_index[4:0] <= 5'b00000;
    surf_stride[31:0] <= 32'b00000000000000000000000000000000;
    weight_addr_high[31:0] <= 32'b00000000000000000000000000000000;
    weight_addr_low[31:0] <= 32'b00000000000000000000000000000000;
    weight_bytes[31:0] <= 32'b00000000000000000000000000000000;
    weight_format <= 1'b0;
    weight_ram_type <= 1'b0;
    byte_per_kernel[17:0] <= 18'b000000000000000000;
    weight_kernel[12:0] <= 13'b0000000000000;
    wgs_addr_high[31:0] <= 32'b00000000000000000000000000000000;
    wgs_addr_low[31:0] <= 32'b00000000000000000000000000000000;
    wmb_addr_high[31:0] <= 32'b00000000000000000000000000000000;
    wmb_addr_low[31:0] <= 32'b00000000000000000000000000000000;
    wmb_bytes[27:0] <= 28'b0000000000000000000000000000;
    pad_bottom[5:0] <= 6'b000000;
    pad_left[4:0] <= 5'b00000;
    pad_right[5:0] <= 6'b000000;
    pad_top[4:0] <= 5'b00000;
    pad_value[15:0] <= 16'b0000000000000000;
  end else begin
// Register: NVDLA_CDMA_D_BANK_0 Field: data_bank
  if (nvdla_cdma_d_bank_0_wren) begin
    data_bank[4:0] <= reg_wr_data[4:0];
  end
// Register: NVDLA_CDMA_D_BANK_0 Field: weight_bank
  if (nvdla_cdma_d_bank_0_wren) begin
    weight_bank[4:0] <= reg_wr_data[20:16];
  end
// Register: NVDLA_CDMA_D_BATCH_NUMBER_0 Field: batches
  if (nvdla_cdma_d_batch_number_0_wren) begin
    batches[4:0] <= reg_wr_data[4:0];
  end
// Register: NVDLA_CDMA_D_BATCH_STRIDE_0 Field: batch_stride
  if (nvdla_cdma_d_batch_stride_0_wren) begin
    batch_stride[31:0] <= reg_wr_data[31:0];
  end
// Register: NVDLA_CDMA_D_CONV_STRIDE_0 Field: conv_x_stride
  if (nvdla_cdma_d_conv_stride_0_wren) begin
    conv_x_stride[2:0] <= reg_wr_data[2:0];
  end
// Register: NVDLA_CDMA_D_CONV_STRIDE_0 Field: conv_y_stride
  if (nvdla_cdma_d_conv_stride_0_wren) begin
    conv_y_stride[2:0] <= reg_wr_data[18:16];
  end
// Register: NVDLA_CDMA_D_CVT_CFG_0 Field: cvt_en
  if (nvdla_cdma_d_cvt_cfg_0_wren) begin
    cvt_en <= reg_wr_data[0];
  end
// Register: NVDLA_CDMA_D_CVT_CFG_0 Field: cvt_truncate
  if (nvdla_cdma_d_cvt_cfg_0_wren) begin
    cvt_truncate[5:0] <= reg_wr_data[9:4];
  end
// Register: NVDLA_CDMA_D_CVT_OFFSET_0 Field: cvt_offset
  if (nvdla_cdma_d_cvt_offset_0_wren) begin
    cvt_offset[15:0] <= reg_wr_data[15:0];
  end
// Register: NVDLA_CDMA_D_CVT_SCALE_0 Field: cvt_scale
  if (nvdla_cdma_d_cvt_scale_0_wren) begin
    cvt_scale[15:0] <= reg_wr_data[15:0];
  end
// Register: NVDLA_CDMA_D_CYA_0 Field: cya
  if (nvdla_cdma_d_cya_0_wren) begin
    cya[31:0] <= reg_wr_data[31:0];
  end
// Register: NVDLA_CDMA_D_DAIN_ADDR_HIGH_0_0 Field: datain_addr_high_0
  if (nvdla_cdma_d_dain_addr_high_0_0_wren) begin
    datain_addr_high_0[31:0] <= reg_wr_data[31:0];
  end
// Register: NVDLA_CDMA_D_DAIN_ADDR_HIGH_1_0 Field: datain_addr_high_1
  if (nvdla_cdma_d_dain_addr_high_1_0_wren) begin
    datain_addr_high_1[31:0] <= reg_wr_data[31:0];
  end
// Register: NVDLA_CDMA_D_DAIN_ADDR_LOW_0_0 Field: datain_addr_low_0
  if (nvdla_cdma_d_dain_addr_low_0_0_wren) begin
    datain_addr_low_0[31:0] <= reg_wr_data[31:0];
  end
// Register: NVDLA_CDMA_D_DAIN_ADDR_LOW_1_0 Field: datain_addr_low_1
  if (nvdla_cdma_d_dain_addr_low_1_0_wren) begin
    datain_addr_low_1[31:0] <= reg_wr_data[31:0];
  end
// Register: NVDLA_CDMA_D_DAIN_MAP_0 Field: line_packed
  if (nvdla_cdma_d_dain_map_0_wren) begin
    line_packed <= reg_wr_data[0];
  end
// Register: NVDLA_CDMA_D_DAIN_MAP_0 Field: surf_packed
  if (nvdla_cdma_d_dain_map_0_wren) begin
    surf_packed <= reg_wr_data[16];
  end
// Register: NVDLA_CDMA_D_DAIN_RAM_TYPE_0 Field: datain_ram_type
  if (nvdla_cdma_d_dain_ram_type_0_wren) begin
    datain_ram_type <= reg_wr_data[0];
  end
// Register: NVDLA_CDMA_D_DATAIN_FORMAT_0 Field: datain_format
  if (nvdla_cdma_d_datain_format_0_wren) begin
    datain_format <= reg_wr_data[0];
  end
// Register: NVDLA_CDMA_D_DATAIN_FORMAT_0 Field: pixel_format
  if (nvdla_cdma_d_datain_format_0_wren) begin
    pixel_format[5:0] <= reg_wr_data[13:8];
  end
// Register: NVDLA_CDMA_D_DATAIN_FORMAT_0 Field: pixel_mapping
  if (nvdla_cdma_d_datain_format_0_wren) begin
    pixel_mapping <= reg_wr_data[16];
  end
// Register: NVDLA_CDMA_D_DATAIN_FORMAT_0 Field: pixel_sign_override
  if (nvdla_cdma_d_datain_format_0_wren) begin
    pixel_sign_override <= reg_wr_data[20];
  end
// Register: NVDLA_CDMA_D_DATAIN_SIZE_0_0 Field: datain_height
  if (nvdla_cdma_d_datain_size_0_0_wren) begin
    datain_height[12:0] <= reg_wr_data[28:16];
  end
// Register: NVDLA_CDMA_D_DATAIN_SIZE_0_0 Field: datain_width
  if (nvdla_cdma_d_datain_size_0_0_wren) begin
    datain_width[12:0] <= reg_wr_data[12:0];
  end
// Register: NVDLA_CDMA_D_DATAIN_SIZE_1_0 Field: datain_channel
  if (nvdla_cdma_d_datain_size_1_0_wren) begin
    datain_channel[12:0] <= reg_wr_data[12:0];
  end
// Register: NVDLA_CDMA_D_DATAIN_SIZE_EXT_0_0 Field: datain_height_ext
  if (nvdla_cdma_d_datain_size_ext_0_0_wren) begin
    datain_height_ext[12:0] <= reg_wr_data[28:16];
  end
// Register: NVDLA_CDMA_D_DATAIN_SIZE_EXT_0_0 Field: datain_width_ext
  if (nvdla_cdma_d_datain_size_ext_0_0_wren) begin
    datain_width_ext[12:0] <= reg_wr_data[12:0];
  end
// Register: NVDLA_CDMA_D_ENTRY_PER_SLICE_0 Field: entries
  if (nvdla_cdma_d_entry_per_slice_0_wren) begin
    entries[13:0] <= reg_wr_data[13:0];
  end
// Register: NVDLA_CDMA_D_FETCH_GRAIN_0 Field: grains
  if (nvdla_cdma_d_fetch_grain_0_wren) begin
    grains[11:0] <= reg_wr_data[11:0];
  end
// Not generating flops for read-only field NVDLA_CDMA_D_INF_INPUT_DATA_NUM_0::inf_data_num
// Not generating flops for read-only field NVDLA_CDMA_D_INF_INPUT_WEIGHT_NUM_0::inf_weight_num
// Register: NVDLA_CDMA_D_LINE_STRIDE_0 Field: line_stride
  if (nvdla_cdma_d_line_stride_0_wren) begin
    line_stride[31:0] <= reg_wr_data[31:0];
  end
// Register: NVDLA_CDMA_D_LINE_UV_STRIDE_0 Field: uv_line_stride
  if (nvdla_cdma_d_line_uv_stride_0_wren) begin
    uv_line_stride[31:0] <= reg_wr_data[31:0];
  end
// Register: NVDLA_CDMA_D_MEAN_FORMAT_0 Field: mean_format
  if (nvdla_cdma_d_mean_format_0_wren) begin
    mean_format <= reg_wr_data[0];
  end
// Register: NVDLA_CDMA_D_MEAN_GLOBAL_0_0 Field: mean_gu
  if (nvdla_cdma_d_mean_global_0_0_wren) begin
    mean_gu[15:0] <= reg_wr_data[31:16];
  end
// Register: NVDLA_CDMA_D_MEAN_GLOBAL_0_0 Field: mean_ry
  if (nvdla_cdma_d_mean_global_0_0_wren) begin
    mean_ry[15:0] <= reg_wr_data[15:0];
  end
// Register: NVDLA_CDMA_D_MEAN_GLOBAL_1_0 Field: mean_ax
  if (nvdla_cdma_d_mean_global_1_0_wren) begin
    mean_ax[15:0] <= reg_wr_data[31:16];
  end
// Register: NVDLA_CDMA_D_MEAN_GLOBAL_1_0 Field: mean_bv
  if (nvdla_cdma_d_mean_global_1_0_wren) begin
    mean_bv[15:0] <= reg_wr_data[15:0];
  end
// Register: NVDLA_CDMA_D_MISC_CFG_0 Field: conv_mode
  if (nvdla_cdma_d_misc_cfg_0_wren) begin
    conv_mode <= reg_wr_data[0];
  end
// Register: NVDLA_CDMA_D_MISC_CFG_0 Field: data_reuse
  if (nvdla_cdma_d_misc_cfg_0_wren) begin
    data_reuse <= reg_wr_data[16];
  end
// Register: NVDLA_CDMA_D_MISC_CFG_0 Field: in_precision
  if (nvdla_cdma_d_misc_cfg_0_wren) begin
    in_precision[1:0] <= reg_wr_data[9:8];
  end
// Register: NVDLA_CDMA_D_MISC_CFG_0 Field: proc_precision
  if (nvdla_cdma_d_misc_cfg_0_wren) begin
    proc_precision[1:0] <= reg_wr_data[13:12];
  end
// Register: NVDLA_CDMA_D_MISC_CFG_0 Field: skip_data_rls
  if (nvdla_cdma_d_misc_cfg_0_wren) begin
    skip_data_rls <= reg_wr_data[24];
  end
// Register: NVDLA_CDMA_D_MISC_CFG_0 Field: skip_weight_rls
  if (nvdla_cdma_d_misc_cfg_0_wren) begin
    skip_weight_rls <= reg_wr_data[28];
  end
// Register: NVDLA_CDMA_D_MISC_CFG_0 Field: weight_reuse
  if (nvdla_cdma_d_misc_cfg_0_wren) begin
    weight_reuse <= reg_wr_data[20];
  end
// Register: NVDLA_CDMA_D_NAN_FLUSH_TO_ZERO_0 Field: nan_to_zero
  if (nvdla_cdma_d_nan_flush_to_zero_0_wren) begin
    nan_to_zero <= reg_wr_data[0];
  end
// Not generating flops for read-only field NVDLA_CDMA_D_NAN_INPUT_DATA_NUM_0::nan_data_num
// Not generating flops for read-only field NVDLA_CDMA_D_NAN_INPUT_WEIGHT_NUM_0::nan_weight_num
// Not generating flops for field NVDLA_CDMA_D_OP_ENABLE_0::op_en (to be implemented outside)
// Not generating flops for read-only field NVDLA_CDMA_D_PERF_DAT_READ_LATENCY_0::dat_rd_latency
// Not generating flops for read-only field NVDLA_CDMA_D_PERF_DAT_READ_STALL_0::dat_rd_stall
// Register: NVDLA_CDMA_D_PERF_ENABLE_0 Field: dma_en
  if (nvdla_cdma_d_perf_enable_0_wren) begin
    dma_en <= reg_wr_data[0];
  end
// Not generating flops for read-only field NVDLA_CDMA_D_PERF_WT_READ_LATENCY_0::wt_rd_latency
// Not generating flops for read-only field NVDLA_CDMA_D_PERF_WT_READ_STALL_0::wt_rd_stall
// Register: NVDLA_CDMA_D_PIXEL_OFFSET_0 Field: pixel_x_offset
  if (nvdla_cdma_d_pixel_offset_0_wren) begin
    pixel_x_offset[4:0] <= reg_wr_data[4:0];
  end
// Register: NVDLA_CDMA_D_PIXEL_OFFSET_0 Field: pixel_y_offset
  if (nvdla_cdma_d_pixel_offset_0_wren) begin
    pixel_y_offset[2:0] <= reg_wr_data[18:16];
  end
// Register: NVDLA_CDMA_D_RESERVED_X_CFG_0 Field: rsv_per_line
  if (nvdla_cdma_d_reserved_x_cfg_0_wren) begin
    rsv_per_line[9:0] <= reg_wr_data[9:0];
  end
// Register: NVDLA_CDMA_D_RESERVED_X_CFG_0 Field: rsv_per_uv_line
  if (nvdla_cdma_d_reserved_x_cfg_0_wren) begin
    rsv_per_uv_line[9:0] <= reg_wr_data[25:16];
  end
// Register: NVDLA_CDMA_D_RESERVED_Y_CFG_0 Field: rsv_height
  if (nvdla_cdma_d_reserved_y_cfg_0_wren) begin
    rsv_height[2:0] <= reg_wr_data[2:0];
  end
// Register: NVDLA_CDMA_D_RESERVED_Y_CFG_0 Field: rsv_y_index
  if (nvdla_cdma_d_reserved_y_cfg_0_wren) begin
    rsv_y_index[4:0] <= reg_wr_data[20:16];
  end
// Register: NVDLA_CDMA_D_SURF_STRIDE_0 Field: surf_stride
  if (nvdla_cdma_d_surf_stride_0_wren) begin
    surf_stride[31:0] <= reg_wr_data[31:0];
  end
// Register: NVDLA_CDMA_D_WEIGHT_ADDR_HIGH_0 Field: weight_addr_high
  if (nvdla_cdma_d_weight_addr_high_0_wren) begin
    weight_addr_high[31:0] <= reg_wr_data[31:0];
  end
// Register: NVDLA_CDMA_D_WEIGHT_ADDR_LOW_0 Field: weight_addr_low
  if (nvdla_cdma_d_weight_addr_low_0_wren) begin
    weight_addr_low[31:0] <= reg_wr_data[31:0];
  end
// Register: NVDLA_CDMA_D_WEIGHT_BYTES_0 Field: weight_bytes
  if (nvdla_cdma_d_weight_bytes_0_wren) begin
    weight_bytes[31:0] <= reg_wr_data[31:0];
  end
// Register: NVDLA_CDMA_D_WEIGHT_FORMAT_0 Field: weight_format
  if (nvdla_cdma_d_weight_format_0_wren) begin
    weight_format <= reg_wr_data[0];
  end
// Register: NVDLA_CDMA_D_WEIGHT_RAM_TYPE_0 Field: weight_ram_type
  if (nvdla_cdma_d_weight_ram_type_0_wren) begin
    weight_ram_type <= reg_wr_data[0];
  end
// Register: NVDLA_CDMA_D_WEIGHT_SIZE_0_0 Field: byte_per_kernel
  if (nvdla_cdma_d_weight_size_0_0_wren) begin
    byte_per_kernel[17:0] <= reg_wr_data[17:0];
  end
// Register: NVDLA_CDMA_D_WEIGHT_SIZE_1_0 Field: weight_kernel
  if (nvdla_cdma_d_weight_size_1_0_wren) begin
    weight_kernel[12:0] <= reg_wr_data[12:0];
  end
// Register: NVDLA_CDMA_D_WGS_ADDR_HIGH_0 Field: wgs_addr_high
  if (nvdla_cdma_d_wgs_addr_high_0_wren) begin
    wgs_addr_high[31:0] <= reg_wr_data[31:0];
  end
// Register: NVDLA_CDMA_D_WGS_ADDR_LOW_0 Field: wgs_addr_low
  if (nvdla_cdma_d_wgs_addr_low_0_wren) begin
    wgs_addr_low[31:0] <= reg_wr_data[31:0];
  end
// Register: NVDLA_CDMA_D_WMB_ADDR_HIGH_0 Field: wmb_addr_high
  if (nvdla_cdma_d_wmb_addr_high_0_wren) begin
    wmb_addr_high[31:0] <= reg_wr_data[31:0];
  end
// Register: NVDLA_CDMA_D_WMB_ADDR_LOW_0 Field: wmb_addr_low
  if (nvdla_cdma_d_wmb_addr_low_0_wren) begin
    wmb_addr_low[31:0] <= reg_wr_data[31:0];
  end
// Register: NVDLA_CDMA_D_WMB_BYTES_0 Field: wmb_bytes
  if (nvdla_cdma_d_wmb_bytes_0_wren) begin
    wmb_bytes[27:0] <= reg_wr_data[27:0];
  end
// Register: NVDLA_CDMA_D_ZERO_PADDING_0 Field: pad_bottom
  if (nvdla_cdma_d_zero_padding_0_wren) begin
    pad_bottom[5:0] <= reg_wr_data[29:24];
  end
// Register: NVDLA_CDMA_D_ZERO_PADDING_0 Field: pad_left
  if (nvdla_cdma_d_zero_padding_0_wren) begin
    pad_left[4:0] <= reg_wr_data[4:0];
  end
// Register: NVDLA_CDMA_D_ZERO_PADDING_0 Field: pad_right
  if (nvdla_cdma_d_zero_padding_0_wren) begin
    pad_right[5:0] <= reg_wr_data[13:8];
  end
// Register: NVDLA_CDMA_D_ZERO_PADDING_0 Field: pad_top
  if (nvdla_cdma_d_zero_padding_0_wren) begin
    pad_top[4:0] <= reg_wr_data[20:16];
  end
// Register: NVDLA_CDMA_D_ZERO_PADDING_VALUE_0 Field: pad_value
  if (nvdla_cdma_d_zero_padding_value_0_wren) begin
    pad_value[15:0] <= reg_wr_data[15:0];
  end
  end
end
// spyglass enable_block STARC-2.10.1.6, NoConstWithXZ, W443
// synopsys translate_off
// VCS coverage off
initial begin
  arreggen_dump = $test$plusargs("arreggen_dump_wr");
  arreggen_abort_on_rowr = $test$plusargs("arreggen_abort_on_rowr");
  arreggen_abort_on_invalid_wr = $test$plusargs("arreggen_abort_on_invalid_wr");
`ifdef VERILATOR
`else
  $timeformat(-9, 2, "ns", 15);
`endif
end
always @(posedge nvdla_core_clk) begin
  if (reg_wr_en) begin
    case(reg_offset)
      (32'h50bc & 32'h00000fff): if (arreggen_dump) $display("%t:%m: reg wr: NVDLA_CDMA_D_BANK_0 = 0x%h (old value: 0x%h, 0x%b))", $time, reg_wr_data, nvdla_cdma_d_bank_0_out, nvdla_cdma_d_bank_0_out);
      (32'h5058 & 32'h00000fff): if (arreggen_dump) $display("%t:%m: reg wr: NVDLA_CDMA_D_BATCH_NUMBER_0 = 0x%h (old value: 0x%h, 0x%b))", $time, reg_wr_data, nvdla_cdma_d_batch_number_0_out, nvdla_cdma_d_batch_number_0_out);
      (32'h505c & 32'h00000fff): if (arreggen_dump) $display("%t:%m: reg wr: NVDLA_CDMA_D_BATCH_STRIDE_0 = 0x%h (old value: 0x%h, 0x%b))", $time, reg_wr_data, nvdla_cdma_d_batch_stride_0_out, nvdla_cdma_d_batch_stride_0_out);
      (32'h50b0 & 32'h00000fff): if (arreggen_dump) $display("%t:%m: reg wr: NVDLA_CDMA_D_CONV_STRIDE_0 = 0x%h (old value: 0x%h, 0x%b))", $time, reg_wr_data, nvdla_cdma_d_conv_stride_0_out, nvdla_cdma_d_conv_stride_0_out);
      (32'h50a4 & 32'h00000fff): if (arreggen_dump) $display("%t:%m: reg wr: NVDLA_CDMA_D_CVT_CFG_0 = 0x%h (old value: 0x%h, 0x%b))", $time, reg_wr_data, nvdla_cdma_d_cvt_cfg_0_out, nvdla_cdma_d_cvt_cfg_0_out);
      (32'h50a8 & 32'h00000fff): if (arreggen_dump) $display("%t:%m: reg wr: NVDLA_CDMA_D_CVT_OFFSET_0 = 0x%h (old value: 0x%h, 0x%b))", $time, reg_wr_data, nvdla_cdma_d_cvt_offset_0_out, nvdla_cdma_d_cvt_offset_0_out);
      (32'h50ac & 32'h00000fff): if (arreggen_dump) $display("%t:%m: reg wr: NVDLA_CDMA_D_CVT_SCALE_0 = 0x%h (old value: 0x%h, 0x%b))", $time, reg_wr_data, nvdla_cdma_d_cvt_scale_0_out, nvdla_cdma_d_cvt_scale_0_out);
      (32'h50e8 & 32'h00000fff): if (arreggen_dump) $display("%t:%m: reg wr: NVDLA_CDMA_D_CYA_0 = 0x%h (old value: 0x%h, 0x%b))", $time, reg_wr_data, nvdla_cdma_d_cya_0_out, nvdla_cdma_d_cya_0_out);
      (32'h5030 & 32'h00000fff): if (arreggen_dump) $display("%t:%m: reg wr: NVDLA_CDMA_D_DAIN_ADDR_HIGH_0_0 = 0x%h (old value: 0x%h, 0x%b))", $time, reg_wr_data, nvdla_cdma_d_dain_addr_high_0_0_out, nvdla_cdma_d_dain_addr_high_0_0_out);
      (32'h5038 & 32'h00000fff): if (arreggen_dump) $display("%t:%m: reg wr: NVDLA_CDMA_D_DAIN_ADDR_HIGH_1_0 = 0x%h (old value: 0x%h, 0x%b))", $time, reg_wr_data, nvdla_cdma_d_dain_addr_high_1_0_out, nvdla_cdma_d_dain_addr_high_1_0_out);
      (32'h5034 & 32'h00000fff): if (arreggen_dump) $display("%t:%m: reg wr: NVDLA_CDMA_D_DAIN_ADDR_LOW_0_0 = 0x%h (old value: 0x%h, 0x%b))", $time, reg_wr_data, nvdla_cdma_d_dain_addr_low_0_0_out, nvdla_cdma_d_dain_addr_low_0_0_out);
      (32'h503c & 32'h00000fff): if (arreggen_dump) $display("%t:%m: reg wr: NVDLA_CDMA_D_DAIN_ADDR_LOW_1_0 = 0x%h (old value: 0x%h, 0x%b))", $time, reg_wr_data, nvdla_cdma_d_dain_addr_low_1_0_out, nvdla_cdma_d_dain_addr_low_1_0_out);
      (32'h504c & 32'h00000fff): if (arreggen_dump) $display("%t:%m: reg wr: NVDLA_CDMA_D_DAIN_MAP_0 = 0x%h (old value: 0x%h, 0x%b))", $time, reg_wr_data, nvdla_cdma_d_dain_map_0_out, nvdla_cdma_d_dain_map_0_out);
      (32'h502c & 32'h00000fff): if (arreggen_dump) $display("%t:%m: reg wr: NVDLA_CDMA_D_DAIN_RAM_TYPE_0 = 0x%h (old value: 0x%h, 0x%b))", $time, reg_wr_data, nvdla_cdma_d_dain_ram_type_0_out, nvdla_cdma_d_dain_ram_type_0_out);
      (32'h5018 & 32'h00000fff): if (arreggen_dump) $display("%t:%m: reg wr: NVDLA_CDMA_D_DATAIN_FORMAT_0 = 0x%h (old value: 0x%h, 0x%b))", $time, reg_wr_data, nvdla_cdma_d_datain_format_0_out, nvdla_cdma_d_datain_format_0_out);
      (32'h501c & 32'h00000fff): if (arreggen_dump) $display("%t:%m: reg wr: NVDLA_CDMA_D_DATAIN_SIZE_0_0 = 0x%h (old value: 0x%h, 0x%b))", $time, reg_wr_data, nvdla_cdma_d_datain_size_0_0_out, nvdla_cdma_d_datain_size_0_0_out);
      (32'h5020 & 32'h00000fff): if (arreggen_dump) $display("%t:%m: reg wr: NVDLA_CDMA_D_DATAIN_SIZE_1_0 = 0x%h (old value: 0x%h, 0x%b))", $time, reg_wr_data, nvdla_cdma_d_datain_size_1_0_out, nvdla_cdma_d_datain_size_1_0_out);
      (32'h5024 & 32'h00000fff): if (arreggen_dump) $display("%t:%m: reg wr: NVDLA_CDMA_D_DATAIN_SIZE_EXT_0_0 = 0x%h (old value: 0x%h, 0x%b))", $time, reg_wr_data, nvdla_cdma_d_datain_size_ext_0_0_out, nvdla_cdma_d_datain_size_ext_0_0_out);
      (32'h5060 & 32'h00000fff): if (arreggen_dump) $display("%t:%m: reg wr: NVDLA_CDMA_D_ENTRY_PER_SLICE_0 = 0x%h (old value: 0x%h, 0x%b))", $time, reg_wr_data, nvdla_cdma_d_entry_per_slice_0_out, nvdla_cdma_d_entry_per_slice_0_out);
      (32'h5064 & 32'h00000fff): if (arreggen_dump) $display("%t:%m: reg wr: NVDLA_CDMA_D_FETCH_GRAIN_0 = 0x%h (old value: 0x%h, 0x%b))", $time, reg_wr_data, nvdla_cdma_d_fetch_grain_0_out, nvdla_cdma_d_fetch_grain_0_out);
      (32'h50cc & 32'h00000fff): begin
          if (arreggen_dump) $display("%t:%m: read-only reg wr: NVDLA_CDMA_D_INF_INPUT_DATA_NUM_0 = 0x%h", $time, reg_wr_data);
          if (arreggen_abort_on_rowr) begin $display("ERROR: write to read-only register!"); $finish; end
        end
      (32'h50d0 & 32'h00000fff): begin
          if (arreggen_dump) $display("%t:%m: read-only reg wr: NVDLA_CDMA_D_INF_INPUT_WEIGHT_NUM_0 = 0x%h", $time, reg_wr_data);
          if (arreggen_abort_on_rowr) begin $display("ERROR: write to read-only register!"); $finish; end
        end
      (32'h5040 & 32'h00000fff): if (arreggen_dump) $display("%t:%m: reg wr: NVDLA_CDMA_D_LINE_STRIDE_0 = 0x%h (old value: 0x%h, 0x%b))", $time, reg_wr_data, nvdla_cdma_d_line_stride_0_out, nvdla_cdma_d_line_stride_0_out);
      (32'h5044 & 32'h00000fff): if (arreggen_dump) $display("%t:%m: reg wr: NVDLA_CDMA_D_LINE_UV_STRIDE_0 = 0x%h (old value: 0x%h, 0x%b))", $time, reg_wr_data, nvdla_cdma_d_line_uv_stride_0_out, nvdla_cdma_d_line_uv_stride_0_out);
      (32'h5098 & 32'h00000fff): if (arreggen_dump) $display("%t:%m: reg wr: NVDLA_CDMA_D_MEAN_FORMAT_0 = 0x%h (old value: 0x%h, 0x%b))", $time, reg_wr_data, nvdla_cdma_d_mean_format_0_out, nvdla_cdma_d_mean_format_0_out);
      (32'h509c & 32'h00000fff): if (arreggen_dump) $display("%t:%m: reg wr: NVDLA_CDMA_D_MEAN_GLOBAL_0_0 = 0x%h (old value: 0x%h, 0x%b))", $time, reg_wr_data, nvdla_cdma_d_mean_global_0_0_out, nvdla_cdma_d_mean_global_0_0_out);
      (32'h50a0 & 32'h00000fff): if (arreggen_dump) $display("%t:%m: reg wr: NVDLA_CDMA_D_MEAN_GLOBAL_1_0 = 0x%h (old value: 0x%h, 0x%b))", $time, reg_wr_data, nvdla_cdma_d_mean_global_1_0_out, nvdla_cdma_d_mean_global_1_0_out);
      (32'h5014 & 32'h00000fff): if (arreggen_dump) $display("%t:%m: reg wr: NVDLA_CDMA_D_MISC_CFG_0 = 0x%h (old value: 0x%h, 0x%b))", $time, reg_wr_data, nvdla_cdma_d_misc_cfg_0_out, nvdla_cdma_d_misc_cfg_0_out);
      (32'h50c0 & 32'h00000fff): if (arreggen_dump) $display("%t:%m: reg wr: NVDLA_CDMA_D_NAN_FLUSH_TO_ZERO_0 = 0x%h (old value: 0x%h, 0x%b))", $time, reg_wr_data, nvdla_cdma_d_nan_flush_to_zero_0_out, nvdla_cdma_d_nan_flush_to_zero_0_out);
      (32'h50c4 & 32'h00000fff): begin
          if (arreggen_dump) $display("%t:%m: read-only reg wr: NVDLA_CDMA_D_NAN_INPUT_DATA_NUM_0 = 0x%h", $time, reg_wr_data);
          if (arreggen_abort_on_rowr) begin $display("ERROR: write to read-only register!"); $finish; end
        end
      (32'h50c8 & 32'h00000fff): begin
          if (arreggen_dump) $display("%t:%m: read-only reg wr: NVDLA_CDMA_D_NAN_INPUT_WEIGHT_NUM_0 = 0x%h", $time, reg_wr_data);
          if (arreggen_abort_on_rowr) begin $display("ERROR: write to read-only register!"); $finish; end
        end
      (32'h5010 & 32'h00000fff): if (arreggen_dump) $display("%t:%m: reg wr: NVDLA_CDMA_D_OP_ENABLE_0 = 0x%h (old value: 0x%h, 0x%b))", $time, reg_wr_data, nvdla_cdma_d_op_enable_0_out, nvdla_cdma_d_op_enable_0_out);
      (32'h50e0 & 32'h00000fff): begin
          if (arreggen_dump) $display("%t:%m: read-only reg wr: NVDLA_CDMA_D_PERF_DAT_READ_LATENCY_0 = 0x%h", $time, reg_wr_data);
          if (arreggen_abort_on_rowr) begin $display("ERROR: write to read-only register!"); $finish; end
        end
      (32'h50d8 & 32'h00000fff): begin
          if (arreggen_dump) $display("%t:%m: read-only reg wr: NVDLA_CDMA_D_PERF_DAT_READ_STALL_0 = 0x%h", $time, reg_wr_data);
          if (arreggen_abort_on_rowr) begin $display("ERROR: write to read-only register!"); $finish; end
        end
      (32'h50d4 & 32'h00000fff): if (arreggen_dump) $display("%t:%m: reg wr: NVDLA_CDMA_D_PERF_ENABLE_0 = 0x%h (old value: 0x%h, 0x%b))", $time, reg_wr_data, nvdla_cdma_d_perf_enable_0_out, nvdla_cdma_d_perf_enable_0_out);
      (32'h50e4 & 32'h00000fff): begin
          if (arreggen_dump) $display("%t:%m: read-only reg wr: NVDLA_CDMA_D_PERF_WT_READ_LATENCY_0 = 0x%h", $time, reg_wr_data);
          if (arreggen_abort_on_rowr) begin $display("ERROR: write to read-only register!"); $finish; end
        end
      (32'h50dc & 32'h00000fff): begin
          if (arreggen_dump) $display("%t:%m: read-only reg wr: NVDLA_CDMA_D_PERF_WT_READ_STALL_0 = 0x%h", $time, reg_wr_data);
          if (arreggen_abort_on_rowr) begin $display("ERROR: write to read-only register!"); $finish; end
        end
      (32'h5028 & 32'h00000fff): if (arreggen_dump) $display("%t:%m: reg wr: NVDLA_CDMA_D_PIXEL_OFFSET_0 = 0x%h (old value: 0x%h, 0x%b))", $time, reg_wr_data, nvdla_cdma_d_pixel_offset_0_out, nvdla_cdma_d_pixel_offset_0_out);
      (32'h5050 & 32'h00000fff): if (arreggen_dump) $display("%t:%m: reg wr: NVDLA_CDMA_D_RESERVED_X_CFG_0 = 0x%h (old value: 0x%h, 0x%b))", $time, reg_wr_data, nvdla_cdma_d_reserved_x_cfg_0_out, nvdla_cdma_d_reserved_x_cfg_0_out);
      (32'h5054 & 32'h00000fff): if (arreggen_dump) $display("%t:%m: reg wr: NVDLA_CDMA_D_RESERVED_Y_CFG_0 = 0x%h (old value: 0x%h, 0x%b))", $time, reg_wr_data, nvdla_cdma_d_reserved_y_cfg_0_out, nvdla_cdma_d_reserved_y_cfg_0_out);
      (32'h5048 & 32'h00000fff): if (arreggen_dump) $display("%t:%m: reg wr: NVDLA_CDMA_D_SURF_STRIDE_0 = 0x%h (old value: 0x%h, 0x%b))", $time, reg_wr_data, nvdla_cdma_d_surf_stride_0_out, nvdla_cdma_d_surf_stride_0_out);
      (32'h5078 & 32'h00000fff): if (arreggen_dump) $display("%t:%m: reg wr: NVDLA_CDMA_D_WEIGHT_ADDR_HIGH_0 = 0x%h (old value: 0x%h, 0x%b))", $time, reg_wr_data, nvdla_cdma_d_weight_addr_high_0_out, nvdla_cdma_d_weight_addr_high_0_out);
      (32'h507c & 32'h00000fff): if (arreggen_dump) $display("%t:%m: reg wr: NVDLA_CDMA_D_WEIGHT_ADDR_LOW_0 = 0x%h (old value: 0x%h, 0x%b))", $time, reg_wr_data, nvdla_cdma_d_weight_addr_low_0_out, nvdla_cdma_d_weight_addr_low_0_out);
      (32'h5080 & 32'h00000fff): if (arreggen_dump) $display("%t:%m: reg wr: NVDLA_CDMA_D_WEIGHT_BYTES_0 = 0x%h (old value: 0x%h, 0x%b))", $time, reg_wr_data, nvdla_cdma_d_weight_bytes_0_out, nvdla_cdma_d_weight_bytes_0_out);
      (32'h5068 & 32'h00000fff): if (arreggen_dump) $display("%t:%m: reg wr: NVDLA_CDMA_D_WEIGHT_FORMAT_0 = 0x%h (old value: 0x%h, 0x%b))", $time, reg_wr_data, nvdla_cdma_d_weight_format_0_out, nvdla_cdma_d_weight_format_0_out);
      (32'h5074 & 32'h00000fff): if (arreggen_dump) $display("%t:%m: reg wr: NVDLA_CDMA_D_WEIGHT_RAM_TYPE_0 = 0x%h (old value: 0x%h, 0x%b))", $time, reg_wr_data, nvdla_cdma_d_weight_ram_type_0_out, nvdla_cdma_d_weight_ram_type_0_out);
      (32'h506c & 32'h00000fff): if (arreggen_dump) $display("%t:%m: reg wr: NVDLA_CDMA_D_WEIGHT_SIZE_0_0 = 0x%h (old value: 0x%h, 0x%b))", $time, reg_wr_data, nvdla_cdma_d_weight_size_0_0_out, nvdla_cdma_d_weight_size_0_0_out);
      (32'h5070 & 32'h00000fff): if (arreggen_dump) $display("%t:%m: reg wr: NVDLA_CDMA_D_WEIGHT_SIZE_1_0 = 0x%h (old value: 0x%h, 0x%b))", $time, reg_wr_data, nvdla_cdma_d_weight_size_1_0_out, nvdla_cdma_d_weight_size_1_0_out);
      (32'h5084 & 32'h00000fff): if (arreggen_dump) $display("%t:%m: reg wr: NVDLA_CDMA_D_WGS_ADDR_HIGH_0 = 0x%h (old value: 0x%h, 0x%b))", $time, reg_wr_data, nvdla_cdma_d_wgs_addr_high_0_out, nvdla_cdma_d_wgs_addr_high_0_out);
      (32'h5088 & 32'h00000fff): if (arreggen_dump) $display("%t:%m: reg wr: NVDLA_CDMA_D_WGS_ADDR_LOW_0 = 0x%h (old value: 0x%h, 0x%b))", $time, reg_wr_data, nvdla_cdma_d_wgs_addr_low_0_out, nvdla_cdma_d_wgs_addr_low_0_out);
      (32'h508c & 32'h00000fff): if (arreggen_dump) $display("%t:%m: reg wr: NVDLA_CDMA_D_WMB_ADDR_HIGH_0 = 0x%h (old value: 0x%h, 0x%b))", $time, reg_wr_data, nvdla_cdma_d_wmb_addr_high_0_out, nvdla_cdma_d_wmb_addr_high_0_out);
      (32'h5090 & 32'h00000fff): if (arreggen_dump) $display("%t:%m: reg wr: NVDLA_CDMA_D_WMB_ADDR_LOW_0 = 0x%h (old value: 0x%h, 0x%b))", $time, reg_wr_data, nvdla_cdma_d_wmb_addr_low_0_out, nvdla_cdma_d_wmb_addr_low_0_out);
      (32'h5094 & 32'h00000fff): if (arreggen_dump) $display("%t:%m: reg wr: NVDLA_CDMA_D_WMB_BYTES_0 = 0x%h (old value: 0x%h, 0x%b))", $time, reg_wr_data, nvdla_cdma_d_wmb_bytes_0_out, nvdla_cdma_d_wmb_bytes_0_out);
      (32'h50b4 & 32'h00000fff): if (arreggen_dump) $display("%t:%m: reg wr: NVDLA_CDMA_D_ZERO_PADDING_0 = 0x%h (old value: 0x%h, 0x%b))", $time, reg_wr_data, nvdla_cdma_d_zero_padding_0_out, nvdla_cdma_d_zero_padding_0_out);
      (32'h50b8 & 32'h00000fff): if (arreggen_dump) $display("%t:%m: reg wr: NVDLA_CDMA_D_ZERO_PADDING_VALUE_0 = 0x%h (old value: 0x%h, 0x%b))", $time, reg_wr_data, nvdla_cdma_d_zero_padding_value_0_out, nvdla_cdma_d_zero_padding_value_0_out);
      default: begin
          if (arreggen_dump) $display("%t:%m: reg wr: Unknown register (0x%h) = 0x%h", $time, reg_offset, reg_wr_data);
          if (arreggen_abort_on_invalid_wr) begin $display("ERROR: write to undefined register!"); $finish; end
        end
    endcase
  end
end
// VCS coverage on
// synopsys translate_on
endmodule // NV_NVDLA_CDMA_dual_reg
