module NV_soDLA_SDP_RDMA_REG_dual( // @[:@3.2]
  input         nvdla_core_rstn, // @[:@5.4]
  input         nvdla_core_clk, // @[:@6.4]
  output [31:0] reg_rd_data, // @[:@6.4]
  input  [11:0] reg_offset, // @[:@6.4]
  input  [31:0] reg_wr_data, // @[:@6.4]
  input         reg_wr_en, // @[:@6.4]
  output [31:0] bn_base_addr_high, // @[:@6.4]
  output [31:0] bn_base_addr_low, // @[:@6.4]
  output [31:0] bn_batch_stride, // @[:@6.4]
  output [31:0] bn_line_stride, // @[:@6.4]
  output [31:0] bn_surface_stride, // @[:@6.4]
  output        brdma_data_mode, // @[:@6.4]
  output        brdma_data_size, // @[:@6.4]
  output [1:0]  brdma_data_use, // @[:@6.4]
  output        brdma_disable, // @[:@6.4]
  output        brdma_ram_type, // @[:@6.4]
  output [31:0] bs_base_addr_high, // @[:@6.4]
  output [31:0] bs_base_addr_low, // @[:@6.4]
  output [31:0] bs_batch_stride, // @[:@6.4]
  output [31:0] bs_line_stride, // @[:@6.4]
  output [31:0] bs_surface_stride, // @[:@6.4]
  output [12:0] channel, // @[:@6.4]
  output [12:0] height, // @[:@6.4]
  output [12:0] width, // @[:@6.4]
  output        erdma_data_mode, // @[:@6.4]
  output        erdma_data_size, // @[:@6.4]
  output [1:0]  erdma_data_use, // @[:@6.4]
  output        erdma_disable, // @[:@6.4]
  output        erdma_ram_type, // @[:@6.4]
  output [31:0] ew_base_addr_high, // @[:@6.4]
  output [31:0] ew_base_addr_low, // @[:@6.4]
  output [31:0] ew_batch_stride, // @[:@6.4]
  output [31:0] ew_line_stride, // @[:@6.4]
  output [31:0] ew_surface_stride, // @[:@6.4]
  output [4:0]  batch_number, // @[:@6.4]
  output        flying_mode, // @[:@6.4]
  output [1:0]  in_precision, // @[:@6.4]
  output [1:0]  out_precision, // @[:@6.4]
  output [1:0]  proc_precision, // @[:@6.4]
  output        winograd, // @[:@6.4]
  output        nrdma_data_mode, // @[:@6.4]
  output        nrdma_data_size, // @[:@6.4]
  output [1:0]  nrdma_data_use, // @[:@6.4]
  output        nrdma_disable, // @[:@6.4]
  output        nrdma_ram_type, // @[:@6.4]
  output        perf_dma_en, // @[:@6.4]
  output        perf_nan_inf_count_en, // @[:@6.4]
  output [31:0] src_base_addr_high, // @[:@6.4]
  output [31:0] src_base_addr_low, // @[:@6.4]
  output        src_ram_type, // @[:@6.4]
  output [31:0] src_line_stride, // @[:@6.4]
  output [31:0] src_surface_stride, // @[:@6.4]
  output        op_en_trigger, // @[:@6.4]
  input         op_en, // @[:@6.4]
  input  [31:0] brdma_stall, // @[:@6.4]
  input  [31:0] erdma_stall, // @[:@6.4]
  input  [31:0] mrdma_stall, // @[:@6.4]
  input  [31:0] nrdma_stall, // @[:@6.4]
  input  [31:0] status_inf_input_num, // @[:@6.4]
  input  [31:0] status_nan_input_num // @[:@6.4]
);
  wire [31:0] _GEN_46; // @[NV_NVDLA_SDP_RDMA_REG_dual.scala 53:68:@8.4]
  wire  _T_124; // @[NV_NVDLA_SDP_RDMA_REG_dual.scala 53:68:@8.4]
  wire  nvdla_sdp_rdma_d_bn_base_addr_high_0_wren; // @[NV_NVDLA_SDP_RDMA_REG_dual.scala 53:92:@9.4]
  wire  _T_126; // @[NV_NVDLA_SDP_RDMA_REG_dual.scala 54:67:@10.4]
  wire  nvdla_sdp_rdma_d_bn_base_addr_low_0_wren; // @[NV_NVDLA_SDP_RDMA_REG_dual.scala 54:92:@11.4]
  wire  _T_128; // @[NV_NVDLA_SDP_RDMA_REG_dual.scala 55:66:@12.4]
  wire  nvdla_sdp_rdma_d_bn_batch_stride_0_wren; // @[NV_NVDLA_SDP_RDMA_REG_dual.scala 55:91:@13.4]
  wire  _T_130; // @[NV_NVDLA_SDP_RDMA_REG_dual.scala 56:65:@14.4]
  wire  nvdla_sdp_rdma_d_bn_line_stride_0_wren; // @[NV_NVDLA_SDP_RDMA_REG_dual.scala 56:90:@15.4]
  wire  _T_132; // @[NV_NVDLA_SDP_RDMA_REG_dual.scala 57:68:@16.4]
  wire  nvdla_sdp_rdma_d_bn_surface_stride_0_wren; // @[NV_NVDLA_SDP_RDMA_REG_dual.scala 57:92:@17.4]
  wire  _T_134; // @[NV_NVDLA_SDP_RDMA_REG_dual.scala 58:60:@18.4]
  wire  nvdla_sdp_rdma_d_brdma_cfg_0_wren; // @[NV_NVDLA_SDP_RDMA_REG_dual.scala 58:84:@19.4]
  wire  _T_136; // @[NV_NVDLA_SDP_RDMA_REG_dual.scala 59:68:@20.4]
  wire  nvdla_sdp_rdma_d_bs_base_addr_high_0_wren; // @[NV_NVDLA_SDP_RDMA_REG_dual.scala 59:92:@21.4]
  wire  _T_138; // @[NV_NVDLA_SDP_RDMA_REG_dual.scala 60:67:@22.4]
  wire  nvdla_sdp_rdma_d_bs_base_addr_low_0_wren; // @[NV_NVDLA_SDP_RDMA_REG_dual.scala 60:91:@23.4]
  wire  _T_140; // @[NV_NVDLA_SDP_RDMA_REG_dual.scala 61:66:@24.4]
  wire  nvdla_sdp_rdma_d_bs_batch_stride_0_wren; // @[NV_NVDLA_SDP_RDMA_REG_dual.scala 61:90:@25.4]
  wire  _T_142; // @[NV_NVDLA_SDP_RDMA_REG_dual.scala 62:65:@26.4]
  wire  nvdla_sdp_rdma_d_bs_line_stride_0_wren; // @[NV_NVDLA_SDP_RDMA_REG_dual.scala 62:89:@27.4]
  wire  _T_144; // @[NV_NVDLA_SDP_RDMA_REG_dual.scala 63:68:@28.4]
  wire  nvdla_sdp_rdma_d_bs_surface_stride_0_wren; // @[NV_NVDLA_SDP_RDMA_REG_dual.scala 63:92:@29.4]
  wire  _T_146; // @[NV_NVDLA_SDP_RDMA_REG_dual.scala 64:68:@30.4]
  wire  nvdla_sdp_rdma_d_data_cube_channel_0_wren; // @[NV_NVDLA_SDP_RDMA_REG_dual.scala 64:92:@31.4]
  wire  _T_148; // @[NV_NVDLA_SDP_RDMA_REG_dual.scala 65:67:@32.4]
  wire  nvdla_sdp_rdma_d_data_cube_height_0_wren; // @[NV_NVDLA_SDP_RDMA_REG_dual.scala 65:91:@33.4]
  wire  _T_150; // @[NV_NVDLA_SDP_RDMA_REG_dual.scala 66:68:@34.4]
  wire  nvdla_sdp_rdma_d_data_cube_width_0_wren; // @[NV_NVDLA_SDP_RDMA_REG_dual.scala 66:92:@35.4]
  wire  _T_152; // @[NV_NVDLA_SDP_RDMA_REG_dual.scala 67:60:@36.4]
  wire  nvdla_sdp_rdma_d_erdma_cfg_0_wren; // @[NV_NVDLA_SDP_RDMA_REG_dual.scala 67:84:@37.4]
  wire  _T_154; // @[NV_NVDLA_SDP_RDMA_REG_dual.scala 68:68:@38.4]
  wire  nvdla_sdp_rdma_d_ew_base_addr_high_0_wren; // @[NV_NVDLA_SDP_RDMA_REG_dual.scala 68:92:@39.4]
  wire  _T_156; // @[NV_NVDLA_SDP_RDMA_REG_dual.scala 69:67:@40.4]
  wire  nvdla_sdp_rdma_d_ew_base_addr_low_0_wren; // @[NV_NVDLA_SDP_RDMA_REG_dual.scala 69:91:@41.4]
  wire  _T_158; // @[NV_NVDLA_SDP_RDMA_REG_dual.scala 70:66:@42.4]
  wire  nvdla_sdp_rdma_d_ew_batch_stride_0_wren; // @[NV_NVDLA_SDP_RDMA_REG_dual.scala 70:90:@43.4]
  wire  _T_160; // @[NV_NVDLA_SDP_RDMA_REG_dual.scala 71:65:@44.4]
  wire  nvdla_sdp_rdma_d_ew_line_stride_0_wren; // @[NV_NVDLA_SDP_RDMA_REG_dual.scala 71:89:@45.4]
  wire  _T_162; // @[NV_NVDLA_SDP_RDMA_REG_dual.scala 72:68:@46.4]
  wire  nvdla_sdp_rdma_d_ew_surface_stride_0_wren; // @[NV_NVDLA_SDP_RDMA_REG_dual.scala 72:92:@47.4]
  wire  _T_164; // @[NV_NVDLA_SDP_RDMA_REG_dual.scala 73:67:@48.4]
  wire  nvdla_sdp_rdma_d_feature_mode_cfg_0_wren; // @[NV_NVDLA_SDP_RDMA_REG_dual.scala 73:91:@49.4]
  wire  _T_166; // @[NV_NVDLA_SDP_RDMA_REG_dual.scala 74:60:@50.4]
  wire  nvdla_sdp_rdma_d_nrdma_cfg_0_wren; // @[NV_NVDLA_SDP_RDMA_REG_dual.scala 74:84:@51.4]
  wire  _T_168; // @[NV_NVDLA_SDP_RDMA_REG_dual.scala 75:60:@52.4]
  wire  _T_172; // @[NV_NVDLA_SDP_RDMA_REG_dual.scala 77:62:@56.4]
  wire  nvdla_sdp_rdma_d_perf_enable_0_wren; // @[NV_NVDLA_SDP_RDMA_REG_dual.scala 77:86:@57.4]
  wire  _T_180; // @[NV_NVDLA_SDP_RDMA_REG_dual.scala 81:69:@64.4]
  wire  nvdla_sdp_rdma_d_src_base_addr_high_0_wren; // @[NV_NVDLA_SDP_RDMA_REG_dual.scala 81:93:@65.4]
  wire  _T_182; // @[NV_NVDLA_SDP_RDMA_REG_dual.scala 82:68:@66.4]
  wire  nvdla_sdp_rdma_d_src_base_addr_low_0_wren; // @[NV_NVDLA_SDP_RDMA_REG_dual.scala 82:92:@67.4]
  wire  _T_184; // @[NV_NVDLA_SDP_RDMA_REG_dual.scala 83:62:@68.4]
  wire  nvdla_sdp_rdma_d_src_dma_cfg_0_wren; // @[NV_NVDLA_SDP_RDMA_REG_dual.scala 83:86:@69.4]
  wire  _T_186; // @[NV_NVDLA_SDP_RDMA_REG_dual.scala 84:66:@70.4]
  wire  nvdla_sdp_rdma_d_src_line_stride_0_wren; // @[NV_NVDLA_SDP_RDMA_REG_dual.scala 84:90:@71.4]
  wire  _T_188; // @[NV_NVDLA_SDP_RDMA_REG_dual.scala 85:69:@72.4]
  wire  nvdla_sdp_rdma_d_src_surface_stride_0_wren; // @[NV_NVDLA_SDP_RDMA_REG_dual.scala 85:93:@73.4]
  wire [31:0] _T_205; // @[Cat.scala 30:58:@83.4]
  wire [31:0] _T_213; // @[Cat.scala 30:58:@84.4]
  wire [31:0] _T_216; // @[Cat.scala 30:58:@85.4]
  wire [31:0] _T_219; // @[Cat.scala 30:58:@86.4]
  wire [31:0] _T_226; // @[Cat.scala 30:58:@91.4]
  wire [31:0] _T_239; // @[Cat.scala 30:58:@97.4]
  wire [31:0] _T_246; // @[Cat.scala 30:58:@102.4]
  wire [31:0] _T_249; // @[Cat.scala 30:58:@103.4]
  wire [31:0] _T_254; // @[Cat.scala 30:58:@105.4]
  wire [31:0] _T_262; // @[Cat.scala 30:58:@106.4]
  wire  _T_267; // @[Mux.scala 46:19:@107.4]
  wire [31:0] _T_268; // @[Mux.scala 46:16:@108.4]
  wire  _T_269; // @[Mux.scala 46:19:@109.4]
  wire [31:0] _T_270; // @[Mux.scala 46:16:@110.4]
  wire  _T_271; // @[Mux.scala 46:19:@111.4]
  wire [31:0] _T_272; // @[Mux.scala 46:16:@112.4]
  wire  _T_273; // @[Mux.scala 46:19:@113.4]
  wire [31:0] _T_274; // @[Mux.scala 46:16:@114.4]
  wire  _T_275; // @[Mux.scala 46:19:@115.4]
  wire [31:0] _T_276; // @[Mux.scala 46:16:@116.4]
  wire  _T_277; // @[Mux.scala 46:19:@117.4]
  wire [31:0] _T_278; // @[Mux.scala 46:16:@118.4]
  wire  _T_279; // @[Mux.scala 46:19:@119.4]
  wire [31:0] _T_280; // @[Mux.scala 46:16:@120.4]
  wire  _T_281; // @[Mux.scala 46:19:@121.4]
  wire [31:0] _T_282; // @[Mux.scala 46:16:@122.4]
  wire  _T_283; // @[Mux.scala 46:19:@123.4]
  wire [31:0] _T_284; // @[Mux.scala 46:16:@124.4]
  wire  _T_285; // @[Mux.scala 46:19:@125.4]
  wire [31:0] _T_286; // @[Mux.scala 46:16:@126.4]
  wire  _T_287; // @[Mux.scala 46:19:@127.4]
  wire [31:0] _T_288; // @[Mux.scala 46:16:@128.4]
  wire  _T_289; // @[Mux.scala 46:19:@129.4]
  wire [31:0] _T_290; // @[Mux.scala 46:16:@130.4]
  wire  _T_291; // @[Mux.scala 46:19:@131.4]
  wire [31:0] _T_292; // @[Mux.scala 46:16:@132.4]
  wire  _T_293; // @[Mux.scala 46:19:@133.4]
  wire [31:0] _T_294; // @[Mux.scala 46:16:@134.4]
  wire  _T_295; // @[Mux.scala 46:19:@135.4]
  wire [31:0] _T_296; // @[Mux.scala 46:16:@136.4]
  wire  _T_297; // @[Mux.scala 46:19:@137.4]
  wire [31:0] _T_298; // @[Mux.scala 46:16:@138.4]
  wire  _T_299; // @[Mux.scala 46:19:@139.4]
  wire [31:0] _T_300; // @[Mux.scala 46:16:@140.4]
  wire  _T_301; // @[Mux.scala 46:19:@141.4]
  wire [31:0] _T_302; // @[Mux.scala 46:16:@142.4]
  wire  _T_303; // @[Mux.scala 46:19:@143.4]
  wire [31:0] _T_304; // @[Mux.scala 46:16:@144.4]
  wire  _T_305; // @[Mux.scala 46:19:@145.4]
  wire [31:0] _T_306; // @[Mux.scala 46:16:@146.4]
  wire  _T_307; // @[Mux.scala 46:19:@147.4]
  wire [31:0] _T_308; // @[Mux.scala 46:16:@148.4]
  wire  _T_309; // @[Mux.scala 46:19:@149.4]
  wire [31:0] _T_310; // @[Mux.scala 46:16:@150.4]
  wire  _T_311; // @[Mux.scala 46:19:@151.4]
  wire [31:0] _T_312; // @[Mux.scala 46:16:@152.4]
  wire  _T_313; // @[Mux.scala 46:19:@153.4]
  wire [31:0] _T_314; // @[Mux.scala 46:16:@154.4]
  wire  _T_315; // @[Mux.scala 46:19:@155.4]
  wire [31:0] _T_316; // @[Mux.scala 46:16:@156.4]
  wire  _T_317; // @[Mux.scala 46:19:@157.4]
  wire [31:0] _T_318; // @[Mux.scala 46:16:@158.4]
  wire  _T_319; // @[Mux.scala 46:19:@159.4]
  wire [31:0] _T_320; // @[Mux.scala 46:16:@160.4]
  wire  _T_321; // @[Mux.scala 46:19:@161.4]
  wire [31:0] _T_322; // @[Mux.scala 46:16:@162.4]
  wire  _T_323; // @[Mux.scala 46:19:@163.4]
  wire [31:0] _T_324; // @[Mux.scala 46:16:@164.4]
  wire  _T_325; // @[Mux.scala 46:19:@165.4]
  wire [31:0] _T_326; // @[Mux.scala 46:16:@166.4]
  wire  _T_327; // @[Mux.scala 46:19:@167.4]
  wire [31:0] _T_328; // @[Mux.scala 46:16:@168.4]
  wire  _T_329; // @[Mux.scala 46:19:@169.4]
  wire [31:0] _T_330; // @[Mux.scala 46:16:@170.4]
  wire  _T_331; // @[Mux.scala 46:19:@171.4]
  wire [31:0] _T_332; // @[Mux.scala 46:16:@172.4]
  wire  _T_333; // @[Mux.scala 46:19:@173.4]
  wire [31:0] _T_334; // @[Mux.scala 46:16:@174.4]
  wire  _T_335; // @[Mux.scala 46:19:@175.4]
  reg [31:0] _T_339; // @[Reg.scala 19:20:@178.4]
  reg [31:0] _RAND_0;
  wire [31:0] _GEN_0; // @[Reg.scala 20:19:@179.4]
  reg [31:0] _T_342; // @[Reg.scala 19:20:@183.4]
  reg [31:0] _RAND_1;
  wire [31:0] _GEN_1; // @[Reg.scala 20:19:@184.4]
  reg [31:0] _T_345; // @[Reg.scala 19:20:@188.4]
  reg [31:0] _RAND_2;
  wire [31:0] _GEN_2; // @[Reg.scala 20:19:@189.4]
  reg [31:0] _T_348; // @[Reg.scala 19:20:@193.4]
  reg [31:0] _RAND_3;
  wire [31:0] _GEN_3; // @[Reg.scala 20:19:@194.4]
  reg [31:0] _T_351; // @[Reg.scala 19:20:@198.4]
  reg [31:0] _RAND_4;
  wire [31:0] _GEN_4; // @[Reg.scala 20:19:@199.4]
  wire  _T_352; // @[NV_NVDLA_SDP_RDMA_REG_dual.scala 185:57:@203.4]
  reg  _T_355; // @[Reg.scala 19:20:@204.4]
  reg [31:0] _RAND_5;
  wire  _GEN_5; // @[Reg.scala 20:19:@205.4]
  wire  _T_356; // @[NV_NVDLA_SDP_RDMA_REG_dual.scala 187:57:@209.4]
  reg  _T_359; // @[Reg.scala 19:20:@210.4]
  reg [31:0] _RAND_6;
  wire  _GEN_6; // @[Reg.scala 20:19:@211.4]
  wire [1:0] _T_360; // @[NV_NVDLA_SDP_RDMA_REG_dual.scala 189:56:@215.4]
  reg [1:0] _T_363; // @[Reg.scala 19:20:@216.4]
  reg [31:0] _RAND_7;
  wire [1:0] _GEN_7; // @[Reg.scala 20:19:@217.4]
  wire  _T_364; // @[NV_NVDLA_SDP_RDMA_REG_dual.scala 191:55:@221.4]
  reg  _T_367; // @[Reg.scala 19:20:@222.4]
  reg [31:0] _RAND_8;
  wire  _GEN_8; // @[Reg.scala 20:19:@223.4]
  wire  _T_368; // @[NV_NVDLA_SDP_RDMA_REG_dual.scala 193:56:@227.4]
  reg  _T_371; // @[Reg.scala 19:20:@228.4]
  reg [31:0] _RAND_9;
  wire  _GEN_9; // @[Reg.scala 20:19:@229.4]
  reg [31:0] _T_374; // @[Reg.scala 19:20:@233.4]
  reg [31:0] _RAND_10;
  wire [31:0] _GEN_10; // @[Reg.scala 20:19:@234.4]
  reg [31:0] _T_377; // @[Reg.scala 19:20:@238.4]
  reg [31:0] _RAND_11;
  wire [31:0] _GEN_11; // @[Reg.scala 20:19:@239.4]
  reg [31:0] _T_380; // @[Reg.scala 19:20:@243.4]
  reg [31:0] _RAND_12;
  wire [31:0] _GEN_12; // @[Reg.scala 20:19:@244.4]
  reg [31:0] _T_383; // @[Reg.scala 19:20:@248.4]
  reg [31:0] _RAND_13;
  wire [31:0] _GEN_13; // @[Reg.scala 20:19:@249.4]
  reg [31:0] _T_386; // @[Reg.scala 19:20:@253.4]
  reg [31:0] _RAND_14;
  wire [31:0] _GEN_14; // @[Reg.scala 20:19:@254.4]
  wire [12:0] _T_387; // @[NV_NVDLA_SDP_RDMA_REG_dual.scala 205:49:@258.4]
  reg [12:0] _T_390; // @[Reg.scala 19:20:@259.4]
  reg [31:0] _RAND_15;
  wire [12:0] _GEN_15; // @[Reg.scala 20:19:@260.4]
  reg [12:0] _T_394; // @[Reg.scala 19:20:@265.4]
  reg [31:0] _RAND_16;
  wire [12:0] _GEN_16; // @[Reg.scala 20:19:@266.4]
  reg [12:0] _T_398; // @[Reg.scala 19:20:@271.4]
  reg [31:0] _RAND_17;
  wire [12:0] _GEN_17; // @[Reg.scala 20:19:@272.4]
  reg  _T_402; // @[Reg.scala 19:20:@277.4]
  reg [31:0] _RAND_18;
  wire  _GEN_18; // @[Reg.scala 20:19:@278.4]
  reg  _T_406; // @[Reg.scala 19:20:@283.4]
  reg [31:0] _RAND_19;
  wire  _GEN_19; // @[Reg.scala 20:19:@284.4]
  reg [1:0] _T_410; // @[Reg.scala 19:20:@289.4]
  reg [31:0] _RAND_20;
  wire [1:0] _GEN_20; // @[Reg.scala 20:19:@290.4]
  reg  _T_414; // @[Reg.scala 19:20:@295.4]
  reg [31:0] _RAND_21;
  wire  _GEN_21; // @[Reg.scala 20:19:@296.4]
  reg  _T_418; // @[Reg.scala 19:20:@301.4]
  reg [31:0] _RAND_22;
  wire  _GEN_22; // @[Reg.scala 20:19:@302.4]
  reg [31:0] _T_421; // @[Reg.scala 19:20:@306.4]
  reg [31:0] _RAND_23;
  wire [31:0] _GEN_23; // @[Reg.scala 20:19:@307.4]
  reg [31:0] _T_424; // @[Reg.scala 19:20:@311.4]
  reg [31:0] _RAND_24;
  wire [31:0] _GEN_24; // @[Reg.scala 20:19:@312.4]
  reg [31:0] _T_427; // @[Reg.scala 19:20:@316.4]
  reg [31:0] _RAND_25;
  wire [31:0] _GEN_25; // @[Reg.scala 20:19:@317.4]
  reg [31:0] _T_430; // @[Reg.scala 19:20:@321.4]
  reg [31:0] _RAND_26;
  wire [31:0] _GEN_26; // @[Reg.scala 20:19:@322.4]
  reg [31:0] _T_433; // @[Reg.scala 19:20:@326.4]
  reg [31:0] _RAND_27;
  wire [31:0] _GEN_27; // @[Reg.scala 20:19:@327.4]
  wire [4:0] _T_434; // @[NV_NVDLA_SDP_RDMA_REG_dual.scala 231:54:@331.4]
  reg [31:0] _T_437; // @[Reg.scala 19:20:@332.4]
  reg [31:0] _RAND_28;
  wire [31:0] _GEN_28; // @[Reg.scala 20:19:@333.4]
  reg  _T_441; // @[Reg.scala 19:20:@338.4]
  reg [31:0] _RAND_29;
  wire  _GEN_29; // @[Reg.scala 20:19:@339.4]
  wire [1:0] _T_442; // @[NV_NVDLA_SDP_RDMA_REG_dual.scala 235:54:@343.4]
  reg [1:0] _T_445; // @[Reg.scala 19:20:@344.4]
  reg [31:0] _RAND_30;
  wire [1:0] _GEN_30; // @[Reg.scala 20:19:@345.4]
  wire [1:0] _T_446; // @[NV_NVDLA_SDP_RDMA_REG_dual.scala 237:55:@349.4]
  reg [1:0] _T_449; // @[Reg.scala 19:20:@350.4]
  reg [31:0] _RAND_31;
  wire [1:0] _GEN_31; // @[Reg.scala 20:19:@351.4]
  wire [1:0] _T_450; // @[NV_NVDLA_SDP_RDMA_REG_dual.scala 239:56:@355.4]
  reg [1:0] _T_453; // @[Reg.scala 19:20:@356.4]
  reg [31:0] _RAND_32;
  wire [1:0] _GEN_32; // @[Reg.scala 20:19:@357.4]
  wire  _T_454; // @[NV_NVDLA_SDP_RDMA_REG_dual.scala 241:50:@361.4]
  reg  _T_457; // @[Reg.scala 19:20:@362.4]
  reg [31:0] _RAND_33;
  wire  _GEN_33; // @[Reg.scala 20:19:@363.4]
  reg  _T_461; // @[Reg.scala 19:20:@368.4]
  reg [31:0] _RAND_34;
  wire  _GEN_34; // @[Reg.scala 20:19:@369.4]
  reg  _T_465; // @[Reg.scala 19:20:@374.4]
  reg [31:0] _RAND_35;
  wire  _GEN_35; // @[Reg.scala 20:19:@375.4]
  reg [1:0] _T_469; // @[Reg.scala 19:20:@380.4]
  reg [31:0] _RAND_36;
  wire [1:0] _GEN_36; // @[Reg.scala 20:19:@381.4]
  reg  _T_473; // @[Reg.scala 19:20:@386.4]
  reg [31:0] _RAND_37;
  wire  _GEN_37; // @[Reg.scala 20:19:@387.4]
  reg  _T_477; // @[Reg.scala 19:20:@392.4]
  reg [31:0] _RAND_38;
  wire  _GEN_38; // @[Reg.scala 20:19:@393.4]
  reg  _T_481; // @[Reg.scala 19:20:@398.4]
  reg [31:0] _RAND_39;
  wire  _GEN_39; // @[Reg.scala 20:19:@399.4]
  reg  _T_485; // @[Reg.scala 19:20:@404.4]
  reg [31:0] _RAND_40;
  wire  _GEN_40; // @[Reg.scala 20:19:@405.4]
  reg [31:0] _T_488; // @[Reg.scala 19:20:@409.4]
  reg [31:0] _RAND_41;
  wire [31:0] _GEN_41; // @[Reg.scala 20:19:@410.4]
  reg [31:0] _T_491; // @[Reg.scala 19:20:@414.4]
  reg [31:0] _RAND_42;
  wire [31:0] _GEN_42; // @[Reg.scala 20:19:@415.4]
  reg  _T_495; // @[Reg.scala 19:20:@420.4]
  reg [31:0] _RAND_43;
  wire  _GEN_43; // @[Reg.scala 20:19:@421.4]
  reg [31:0] _T_498; // @[Reg.scala 19:20:@425.4]
  reg [31:0] _RAND_44;
  wire [31:0] _GEN_44; // @[Reg.scala 20:19:@426.4]
  reg [31:0] _T_501; // @[Reg.scala 19:20:@430.4]
  reg [31:0] _RAND_45;
  wire [31:0] _GEN_45; // @[Reg.scala 20:19:@431.4]
  assign _GEN_46 = {{20'd0}, reg_offset}; // @[NV_NVDLA_SDP_RDMA_REG_dual.scala 53:68:@8.4]
  assign _T_124 = _GEN_46 == 32'h48; // @[NV_NVDLA_SDP_RDMA_REG_dual.scala 53:68:@8.4]
  assign nvdla_sdp_rdma_d_bn_base_addr_high_0_wren = _T_124 & reg_wr_en; // @[NV_NVDLA_SDP_RDMA_REG_dual.scala 53:92:@9.4]
  assign _T_126 = _GEN_46 == 32'h44; // @[NV_NVDLA_SDP_RDMA_REG_dual.scala 54:67:@10.4]
  assign nvdla_sdp_rdma_d_bn_base_addr_low_0_wren = _T_126 & reg_wr_en; // @[NV_NVDLA_SDP_RDMA_REG_dual.scala 54:92:@11.4]
  assign _T_128 = _GEN_46 == 32'h54; // @[NV_NVDLA_SDP_RDMA_REG_dual.scala 55:66:@12.4]
  assign nvdla_sdp_rdma_d_bn_batch_stride_0_wren = _T_128 & reg_wr_en; // @[NV_NVDLA_SDP_RDMA_REG_dual.scala 55:91:@13.4]
  assign _T_130 = _GEN_46 == 32'h4c; // @[NV_NVDLA_SDP_RDMA_REG_dual.scala 56:65:@14.4]
  assign nvdla_sdp_rdma_d_bn_line_stride_0_wren = _T_130 & reg_wr_en; // @[NV_NVDLA_SDP_RDMA_REG_dual.scala 56:90:@15.4]
  assign _T_132 = _GEN_46 == 32'h50; // @[NV_NVDLA_SDP_RDMA_REG_dual.scala 57:68:@16.4]
  assign nvdla_sdp_rdma_d_bn_surface_stride_0_wren = _T_132 & reg_wr_en; // @[NV_NVDLA_SDP_RDMA_REG_dual.scala 57:92:@17.4]
  assign _T_134 = _GEN_46 == 32'h28; // @[NV_NVDLA_SDP_RDMA_REG_dual.scala 58:60:@18.4]
  assign nvdla_sdp_rdma_d_brdma_cfg_0_wren = _T_134 & reg_wr_en; // @[NV_NVDLA_SDP_RDMA_REG_dual.scala 58:84:@19.4]
  assign _T_136 = _GEN_46 == 32'h30; // @[NV_NVDLA_SDP_RDMA_REG_dual.scala 59:68:@20.4]
  assign nvdla_sdp_rdma_d_bs_base_addr_high_0_wren = _T_136 & reg_wr_en; // @[NV_NVDLA_SDP_RDMA_REG_dual.scala 59:92:@21.4]
  assign _T_138 = _GEN_46 == 32'h2c; // @[NV_NVDLA_SDP_RDMA_REG_dual.scala 60:67:@22.4]
  assign nvdla_sdp_rdma_d_bs_base_addr_low_0_wren = _T_138 & reg_wr_en; // @[NV_NVDLA_SDP_RDMA_REG_dual.scala 60:91:@23.4]
  assign _T_140 = _GEN_46 == 32'h3c; // @[NV_NVDLA_SDP_RDMA_REG_dual.scala 61:66:@24.4]
  assign nvdla_sdp_rdma_d_bs_batch_stride_0_wren = _T_140 & reg_wr_en; // @[NV_NVDLA_SDP_RDMA_REG_dual.scala 61:90:@25.4]
  assign _T_142 = _GEN_46 == 32'h34; // @[NV_NVDLA_SDP_RDMA_REG_dual.scala 62:65:@26.4]
  assign nvdla_sdp_rdma_d_bs_line_stride_0_wren = _T_142 & reg_wr_en; // @[NV_NVDLA_SDP_RDMA_REG_dual.scala 62:89:@27.4]
  assign _T_144 = _GEN_46 == 32'h38; // @[NV_NVDLA_SDP_RDMA_REG_dual.scala 63:68:@28.4]
  assign nvdla_sdp_rdma_d_bs_surface_stride_0_wren = _T_144 & reg_wr_en; // @[NV_NVDLA_SDP_RDMA_REG_dual.scala 63:92:@29.4]
  assign _T_146 = _GEN_46 == 32'h14; // @[NV_NVDLA_SDP_RDMA_REG_dual.scala 64:68:@30.4]
  assign nvdla_sdp_rdma_d_data_cube_channel_0_wren = _T_146 & reg_wr_en; // @[NV_NVDLA_SDP_RDMA_REG_dual.scala 64:92:@31.4]
  assign _T_148 = _GEN_46 == 32'h10; // @[NV_NVDLA_SDP_RDMA_REG_dual.scala 65:67:@32.4]
  assign nvdla_sdp_rdma_d_data_cube_height_0_wren = _T_148 & reg_wr_en; // @[NV_NVDLA_SDP_RDMA_REG_dual.scala 65:91:@33.4]
  assign _T_150 = _GEN_46 == 32'hc; // @[NV_NVDLA_SDP_RDMA_REG_dual.scala 66:68:@34.4]
  assign nvdla_sdp_rdma_d_data_cube_width_0_wren = _T_150 & reg_wr_en; // @[NV_NVDLA_SDP_RDMA_REG_dual.scala 66:92:@35.4]
  assign _T_152 = _GEN_46 == 32'h58; // @[NV_NVDLA_SDP_RDMA_REG_dual.scala 67:60:@36.4]
  assign nvdla_sdp_rdma_d_erdma_cfg_0_wren = _T_152 & reg_wr_en; // @[NV_NVDLA_SDP_RDMA_REG_dual.scala 67:84:@37.4]
  assign _T_154 = _GEN_46 == 32'h60; // @[NV_NVDLA_SDP_RDMA_REG_dual.scala 68:68:@38.4]
  assign nvdla_sdp_rdma_d_ew_base_addr_high_0_wren = _T_154 & reg_wr_en; // @[NV_NVDLA_SDP_RDMA_REG_dual.scala 68:92:@39.4]
  assign _T_156 = _GEN_46 == 32'h5c; // @[NV_NVDLA_SDP_RDMA_REG_dual.scala 69:67:@40.4]
  assign nvdla_sdp_rdma_d_ew_base_addr_low_0_wren = _T_156 & reg_wr_en; // @[NV_NVDLA_SDP_RDMA_REG_dual.scala 69:91:@41.4]
  assign _T_158 = _GEN_46 == 32'h6c; // @[NV_NVDLA_SDP_RDMA_REG_dual.scala 70:66:@42.4]
  assign nvdla_sdp_rdma_d_ew_batch_stride_0_wren = _T_158 & reg_wr_en; // @[NV_NVDLA_SDP_RDMA_REG_dual.scala 70:90:@43.4]
  assign _T_160 = _GEN_46 == 32'h64; // @[NV_NVDLA_SDP_RDMA_REG_dual.scala 71:65:@44.4]
  assign nvdla_sdp_rdma_d_ew_line_stride_0_wren = _T_160 & reg_wr_en; // @[NV_NVDLA_SDP_RDMA_REG_dual.scala 71:89:@45.4]
  assign _T_162 = _GEN_46 == 32'h68; // @[NV_NVDLA_SDP_RDMA_REG_dual.scala 72:68:@46.4]
  assign nvdla_sdp_rdma_d_ew_surface_stride_0_wren = _T_162 & reg_wr_en; // @[NV_NVDLA_SDP_RDMA_REG_dual.scala 72:92:@47.4]
  assign _T_164 = _GEN_46 == 32'h70; // @[NV_NVDLA_SDP_RDMA_REG_dual.scala 73:67:@48.4]
  assign nvdla_sdp_rdma_d_feature_mode_cfg_0_wren = _T_164 & reg_wr_en; // @[NV_NVDLA_SDP_RDMA_REG_dual.scala 73:91:@49.4]
  assign _T_166 = _GEN_46 == 32'h40; // @[NV_NVDLA_SDP_RDMA_REG_dual.scala 74:60:@50.4]
  assign nvdla_sdp_rdma_d_nrdma_cfg_0_wren = _T_166 & reg_wr_en; // @[NV_NVDLA_SDP_RDMA_REG_dual.scala 74:84:@51.4]
  assign _T_168 = _GEN_46 == 32'h8; // @[NV_NVDLA_SDP_RDMA_REG_dual.scala 75:60:@52.4]
  assign _T_172 = _GEN_46 == 32'h80; // @[NV_NVDLA_SDP_RDMA_REG_dual.scala 77:62:@56.4]
  assign nvdla_sdp_rdma_d_perf_enable_0_wren = _T_172 & reg_wr_en; // @[NV_NVDLA_SDP_RDMA_REG_dual.scala 77:86:@57.4]
  assign _T_180 = _GEN_46 == 32'h1c; // @[NV_NVDLA_SDP_RDMA_REG_dual.scala 81:69:@64.4]
  assign nvdla_sdp_rdma_d_src_base_addr_high_0_wren = _T_180 & reg_wr_en; // @[NV_NVDLA_SDP_RDMA_REG_dual.scala 81:93:@65.4]
  assign _T_182 = _GEN_46 == 32'h18; // @[NV_NVDLA_SDP_RDMA_REG_dual.scala 82:68:@66.4]
  assign nvdla_sdp_rdma_d_src_base_addr_low_0_wren = _T_182 & reg_wr_en; // @[NV_NVDLA_SDP_RDMA_REG_dual.scala 82:92:@67.4]
  assign _T_184 = _GEN_46 == 32'h74; // @[NV_NVDLA_SDP_RDMA_REG_dual.scala 83:62:@68.4]
  assign nvdla_sdp_rdma_d_src_dma_cfg_0_wren = _T_184 & reg_wr_en; // @[NV_NVDLA_SDP_RDMA_REG_dual.scala 83:86:@69.4]
  assign _T_186 = _GEN_46 == 32'h20; // @[NV_NVDLA_SDP_RDMA_REG_dual.scala 84:66:@70.4]
  assign nvdla_sdp_rdma_d_src_line_stride_0_wren = _T_186 & reg_wr_en; // @[NV_NVDLA_SDP_RDMA_REG_dual.scala 84:90:@71.4]
  assign _T_188 = _GEN_46 == 32'h24; // @[NV_NVDLA_SDP_RDMA_REG_dual.scala 85:69:@72.4]
  assign nvdla_sdp_rdma_d_src_surface_stride_0_wren = _T_188 & reg_wr_en; // @[NV_NVDLA_SDP_RDMA_REG_dual.scala 85:93:@73.4]
  assign _T_205 = {26'h0,brdma_ram_type,brdma_data_mode,brdma_data_size,brdma_data_use,brdma_disable}; // @[Cat.scala 30:58:@83.4]
  assign _T_213 = {19'h0,channel}; // @[Cat.scala 30:58:@84.4]
  assign _T_216 = {19'h0,height}; // @[Cat.scala 30:58:@85.4]
  assign _T_219 = {19'h0,width}; // @[Cat.scala 30:58:@86.4]
  assign _T_226 = {26'h0,erdma_ram_type,erdma_data_mode,erdma_data_size,erdma_data_use,erdma_disable}; // @[Cat.scala 30:58:@91.4]
  assign _T_239 = {19'h0,batch_number,out_precision,proc_precision,in_precision,winograd,flying_mode}; // @[Cat.scala 30:58:@97.4]
  assign _T_246 = {26'h0,nrdma_ram_type,nrdma_data_mode,nrdma_data_size,nrdma_data_use,nrdma_disable}; // @[Cat.scala 30:58:@102.4]
  assign _T_249 = {31'h0,op_en}; // @[Cat.scala 30:58:@103.4]
  assign _T_254 = {30'h0,perf_nan_inf_count_en,perf_dma_en}; // @[Cat.scala 30:58:@105.4]
  assign _T_262 = {31'h0,src_ram_type}; // @[Cat.scala 30:58:@106.4]
  assign _T_267 = 32'h78 == _GEN_46; // @[Mux.scala 46:19:@107.4]
  assign _T_268 = _T_267 ? status_nan_input_num : 32'h0; // @[Mux.scala 46:16:@108.4]
  assign _T_269 = 32'h7c == _GEN_46; // @[Mux.scala 46:19:@109.4]
  assign _T_270 = _T_269 ? status_inf_input_num : _T_268; // @[Mux.scala 46:16:@110.4]
  assign _T_271 = 32'h24 == _GEN_46; // @[Mux.scala 46:19:@111.4]
  assign _T_272 = _T_271 ? src_surface_stride : _T_270; // @[Mux.scala 46:16:@112.4]
  assign _T_273 = 32'h20 == _GEN_46; // @[Mux.scala 46:19:@113.4]
  assign _T_274 = _T_273 ? src_line_stride : _T_272; // @[Mux.scala 46:16:@114.4]
  assign _T_275 = 32'h74 == _GEN_46; // @[Mux.scala 46:19:@115.4]
  assign _T_276 = _T_275 ? _T_262 : _T_274; // @[Mux.scala 46:16:@116.4]
  assign _T_277 = 32'h18 == _GEN_46; // @[Mux.scala 46:19:@117.4]
  assign _T_278 = _T_277 ? src_base_addr_low : _T_276; // @[Mux.scala 46:16:@118.4]
  assign _T_279 = 32'h1c == _GEN_46; // @[Mux.scala 46:19:@119.4]
  assign _T_280 = _T_279 ? src_base_addr_high : _T_278; // @[Mux.scala 46:16:@120.4]
  assign _T_281 = 32'h8c == _GEN_46; // @[Mux.scala 46:19:@121.4]
  assign _T_282 = _T_281 ? nrdma_stall : _T_280; // @[Mux.scala 46:16:@122.4]
  assign _T_283 = 32'h84 == _GEN_46; // @[Mux.scala 46:19:@123.4]
  assign _T_284 = _T_283 ? mrdma_stall : _T_282; // @[Mux.scala 46:16:@124.4]
  assign _T_285 = 32'h90 == _GEN_46; // @[Mux.scala 46:19:@125.4]
  assign _T_286 = _T_285 ? erdma_stall : _T_284; // @[Mux.scala 46:16:@126.4]
  assign _T_287 = 32'h80 == _GEN_46; // @[Mux.scala 46:19:@127.4]
  assign _T_288 = _T_287 ? _T_254 : _T_286; // @[Mux.scala 46:16:@128.4]
  assign _T_289 = 32'h88 == _GEN_46; // @[Mux.scala 46:19:@129.4]
  assign _T_290 = _T_289 ? brdma_stall : _T_288; // @[Mux.scala 46:16:@130.4]
  assign _T_291 = 32'h8 == _GEN_46; // @[Mux.scala 46:19:@131.4]
  assign _T_292 = _T_291 ? _T_249 : _T_290; // @[Mux.scala 46:16:@132.4]
  assign _T_293 = 32'h40 == _GEN_46; // @[Mux.scala 46:19:@133.4]
  assign _T_294 = _T_293 ? _T_246 : _T_292; // @[Mux.scala 46:16:@134.4]
  assign _T_295 = 32'h70 == _GEN_46; // @[Mux.scala 46:19:@135.4]
  assign _T_296 = _T_295 ? _T_239 : _T_294; // @[Mux.scala 46:16:@136.4]
  assign _T_297 = 32'h68 == _GEN_46; // @[Mux.scala 46:19:@137.4]
  assign _T_298 = _T_297 ? ew_surface_stride : _T_296; // @[Mux.scala 46:16:@138.4]
  assign _T_299 = 32'h64 == _GEN_46; // @[Mux.scala 46:19:@139.4]
  assign _T_300 = _T_299 ? ew_line_stride : _T_298; // @[Mux.scala 46:16:@140.4]
  assign _T_301 = 32'h6c == _GEN_46; // @[Mux.scala 46:19:@141.4]
  assign _T_302 = _T_301 ? ew_batch_stride : _T_300; // @[Mux.scala 46:16:@142.4]
  assign _T_303 = 32'h5c == _GEN_46; // @[Mux.scala 46:19:@143.4]
  assign _T_304 = _T_303 ? ew_base_addr_low : _T_302; // @[Mux.scala 46:16:@144.4]
  assign _T_305 = 32'h60 == _GEN_46; // @[Mux.scala 46:19:@145.4]
  assign _T_306 = _T_305 ? ew_base_addr_high : _T_304; // @[Mux.scala 46:16:@146.4]
  assign _T_307 = 32'h58 == _GEN_46; // @[Mux.scala 46:19:@147.4]
  assign _T_308 = _T_307 ? _T_226 : _T_306; // @[Mux.scala 46:16:@148.4]
  assign _T_309 = 32'hc == _GEN_46; // @[Mux.scala 46:19:@149.4]
  assign _T_310 = _T_309 ? _T_219 : _T_308; // @[Mux.scala 46:16:@150.4]
  assign _T_311 = 32'h10 == _GEN_46; // @[Mux.scala 46:19:@151.4]
  assign _T_312 = _T_311 ? _T_216 : _T_310; // @[Mux.scala 46:16:@152.4]
  assign _T_313 = 32'h14 == _GEN_46; // @[Mux.scala 46:19:@153.4]
  assign _T_314 = _T_313 ? _T_213 : _T_312; // @[Mux.scala 46:16:@154.4]
  assign _T_315 = 32'h38 == _GEN_46; // @[Mux.scala 46:19:@155.4]
  assign _T_316 = _T_315 ? bs_surface_stride : _T_314; // @[Mux.scala 46:16:@156.4]
  assign _T_317 = 32'h34 == _GEN_46; // @[Mux.scala 46:19:@157.4]
  assign _T_318 = _T_317 ? bs_line_stride : _T_316; // @[Mux.scala 46:16:@158.4]
  assign _T_319 = 32'h3c == _GEN_46; // @[Mux.scala 46:19:@159.4]
  assign _T_320 = _T_319 ? bs_batch_stride : _T_318; // @[Mux.scala 46:16:@160.4]
  assign _T_321 = 32'h2c == _GEN_46; // @[Mux.scala 46:19:@161.4]
  assign _T_322 = _T_321 ? bs_base_addr_low : _T_320; // @[Mux.scala 46:16:@162.4]
  assign _T_323 = 32'h30 == _GEN_46; // @[Mux.scala 46:19:@163.4]
  assign _T_324 = _T_323 ? bs_base_addr_high : _T_322; // @[Mux.scala 46:16:@164.4]
  assign _T_325 = 32'h28 == _GEN_46; // @[Mux.scala 46:19:@165.4]
  assign _T_326 = _T_325 ? _T_205 : _T_324; // @[Mux.scala 46:16:@166.4]
  assign _T_327 = 32'h50 == _GEN_46; // @[Mux.scala 46:19:@167.4]
  assign _T_328 = _T_327 ? bn_surface_stride : _T_326; // @[Mux.scala 46:16:@168.4]
  assign _T_329 = 32'h4c == _GEN_46; // @[Mux.scala 46:19:@169.4]
  assign _T_330 = _T_329 ? bn_line_stride : _T_328; // @[Mux.scala 46:16:@170.4]
  assign _T_331 = 32'h54 == _GEN_46; // @[Mux.scala 46:19:@171.4]
  assign _T_332 = _T_331 ? bn_batch_stride : _T_330; // @[Mux.scala 46:16:@172.4]
  assign _T_333 = 32'h44 == _GEN_46; // @[Mux.scala 46:19:@173.4]
  assign _T_334 = _T_333 ? bn_base_addr_low : _T_332; // @[Mux.scala 46:16:@174.4]
  assign _T_335 = 32'h48 == _GEN_46; // @[Mux.scala 46:19:@175.4]
  assign _GEN_0 = nvdla_sdp_rdma_d_bn_base_addr_high_0_wren ? reg_wr_data : _T_339; // @[Reg.scala 20:19:@179.4]
  assign _GEN_1 = nvdla_sdp_rdma_d_bn_base_addr_low_0_wren ? reg_wr_data : _T_342; // @[Reg.scala 20:19:@184.4]
  assign _GEN_2 = nvdla_sdp_rdma_d_bn_batch_stride_0_wren ? reg_wr_data : _T_345; // @[Reg.scala 20:19:@189.4]
  assign _GEN_3 = nvdla_sdp_rdma_d_bn_line_stride_0_wren ? reg_wr_data : _T_348; // @[Reg.scala 20:19:@194.4]
  assign _GEN_4 = nvdla_sdp_rdma_d_bn_surface_stride_0_wren ? reg_wr_data : _T_351; // @[Reg.scala 20:19:@199.4]
  assign _T_352 = reg_wr_data[4]; // @[NV_NVDLA_SDP_RDMA_REG_dual.scala 185:57:@203.4]
  assign _GEN_5 = nvdla_sdp_rdma_d_brdma_cfg_0_wren ? _T_352 : _T_355; // @[Reg.scala 20:19:@205.4]
  assign _T_356 = reg_wr_data[3]; // @[NV_NVDLA_SDP_RDMA_REG_dual.scala 187:57:@209.4]
  assign _GEN_6 = nvdla_sdp_rdma_d_brdma_cfg_0_wren ? _T_356 : _T_359; // @[Reg.scala 20:19:@211.4]
  assign _T_360 = reg_wr_data[2:1]; // @[NV_NVDLA_SDP_RDMA_REG_dual.scala 189:56:@215.4]
  assign _GEN_7 = nvdla_sdp_rdma_d_brdma_cfg_0_wren ? _T_360 : _T_363; // @[Reg.scala 20:19:@217.4]
  assign _T_364 = reg_wr_data[0]; // @[NV_NVDLA_SDP_RDMA_REG_dual.scala 191:55:@221.4]
  assign _GEN_8 = nvdla_sdp_rdma_d_brdma_cfg_0_wren ? _T_364 : _T_367; // @[Reg.scala 20:19:@223.4]
  assign _T_368 = reg_wr_data[5]; // @[NV_NVDLA_SDP_RDMA_REG_dual.scala 193:56:@227.4]
  assign _GEN_9 = nvdla_sdp_rdma_d_brdma_cfg_0_wren ? _T_368 : _T_371; // @[Reg.scala 20:19:@229.4]
  assign _GEN_10 = nvdla_sdp_rdma_d_bs_base_addr_high_0_wren ? reg_wr_data : _T_374; // @[Reg.scala 20:19:@234.4]
  assign _GEN_11 = nvdla_sdp_rdma_d_bs_base_addr_low_0_wren ? reg_wr_data : _T_377; // @[Reg.scala 20:19:@239.4]
  assign _GEN_12 = nvdla_sdp_rdma_d_bs_batch_stride_0_wren ? reg_wr_data : _T_380; // @[Reg.scala 20:19:@244.4]
  assign _GEN_13 = nvdla_sdp_rdma_d_bs_line_stride_0_wren ? reg_wr_data : _T_383; // @[Reg.scala 20:19:@249.4]
  assign _GEN_14 = nvdla_sdp_rdma_d_bs_surface_stride_0_wren ? reg_wr_data : _T_386; // @[Reg.scala 20:19:@254.4]
  assign _T_387 = reg_wr_data[12:0]; // @[NV_NVDLA_SDP_RDMA_REG_dual.scala 205:49:@258.4]
  assign _GEN_15 = nvdla_sdp_rdma_d_data_cube_channel_0_wren ? _T_387 : _T_390; // @[Reg.scala 20:19:@260.4]
  assign _GEN_16 = nvdla_sdp_rdma_d_data_cube_height_0_wren ? _T_387 : _T_394; // @[Reg.scala 20:19:@266.4]
  assign _GEN_17 = nvdla_sdp_rdma_d_data_cube_width_0_wren ? _T_387 : _T_398; // @[Reg.scala 20:19:@272.4]
  assign _GEN_18 = nvdla_sdp_rdma_d_erdma_cfg_0_wren ? _T_352 : _T_402; // @[Reg.scala 20:19:@278.4]
  assign _GEN_19 = nvdla_sdp_rdma_d_erdma_cfg_0_wren ? _T_356 : _T_406; // @[Reg.scala 20:19:@284.4]
  assign _GEN_20 = nvdla_sdp_rdma_d_erdma_cfg_0_wren ? _T_360 : _T_410; // @[Reg.scala 20:19:@290.4]
  assign _GEN_21 = nvdla_sdp_rdma_d_erdma_cfg_0_wren ? _T_364 : _T_414; // @[Reg.scala 20:19:@296.4]
  assign _GEN_22 = nvdla_sdp_rdma_d_erdma_cfg_0_wren ? _T_368 : _T_418; // @[Reg.scala 20:19:@302.4]
  assign _GEN_23 = nvdla_sdp_rdma_d_ew_base_addr_high_0_wren ? reg_wr_data : _T_421; // @[Reg.scala 20:19:@307.4]
  assign _GEN_24 = nvdla_sdp_rdma_d_ew_base_addr_low_0_wren ? reg_wr_data : _T_424; // @[Reg.scala 20:19:@312.4]
  assign _GEN_25 = nvdla_sdp_rdma_d_ew_batch_stride_0_wren ? reg_wr_data : _T_427; // @[Reg.scala 20:19:@317.4]
  assign _GEN_26 = nvdla_sdp_rdma_d_ew_line_stride_0_wren ? reg_wr_data : _T_430; // @[Reg.scala 20:19:@322.4]
  assign _GEN_27 = nvdla_sdp_rdma_d_ew_surface_stride_0_wren ? reg_wr_data : _T_433; // @[Reg.scala 20:19:@327.4]
  assign _T_434 = reg_wr_data[12:8]; // @[NV_NVDLA_SDP_RDMA_REG_dual.scala 231:54:@331.4]
  assign _GEN_28 = nvdla_sdp_rdma_d_feature_mode_cfg_0_wren ? {{27'd0}, _T_434} : _T_437; // @[Reg.scala 20:19:@333.4]
  assign _GEN_29 = nvdla_sdp_rdma_d_feature_mode_cfg_0_wren ? _T_364 : _T_441; // @[Reg.scala 20:19:@339.4]
  assign _T_442 = reg_wr_data[3:2]; // @[NV_NVDLA_SDP_RDMA_REG_dual.scala 235:54:@343.4]
  assign _GEN_30 = nvdla_sdp_rdma_d_feature_mode_cfg_0_wren ? _T_442 : _T_445; // @[Reg.scala 20:19:@345.4]
  assign _T_446 = reg_wr_data[7:6]; // @[NV_NVDLA_SDP_RDMA_REG_dual.scala 237:55:@349.4]
  assign _GEN_31 = nvdla_sdp_rdma_d_feature_mode_cfg_0_wren ? _T_446 : _T_449; // @[Reg.scala 20:19:@351.4]
  assign _T_450 = reg_wr_data[5:4]; // @[NV_NVDLA_SDP_RDMA_REG_dual.scala 239:56:@355.4]
  assign _GEN_32 = nvdla_sdp_rdma_d_feature_mode_cfg_0_wren ? _T_450 : _T_453; // @[Reg.scala 20:19:@357.4]
  assign _T_454 = reg_wr_data[1]; // @[NV_NVDLA_SDP_RDMA_REG_dual.scala 241:50:@361.4]
  assign _GEN_33 = nvdla_sdp_rdma_d_feature_mode_cfg_0_wren ? _T_454 : _T_457; // @[Reg.scala 20:19:@363.4]
  assign _GEN_34 = nvdla_sdp_rdma_d_nrdma_cfg_0_wren ? _T_352 : _T_461; // @[Reg.scala 20:19:@369.4]
  assign _GEN_35 = nvdla_sdp_rdma_d_nrdma_cfg_0_wren ? _T_356 : _T_465; // @[Reg.scala 20:19:@375.4]
  assign _GEN_36 = nvdla_sdp_rdma_d_nrdma_cfg_0_wren ? _T_360 : _T_469; // @[Reg.scala 20:19:@381.4]
  assign _GEN_37 = nvdla_sdp_rdma_d_nrdma_cfg_0_wren ? _T_364 : _T_473; // @[Reg.scala 20:19:@387.4]
  assign _GEN_38 = nvdla_sdp_rdma_d_nrdma_cfg_0_wren ? _T_368 : _T_477; // @[Reg.scala 20:19:@393.4]
  assign _GEN_39 = nvdla_sdp_rdma_d_perf_enable_0_wren ? _T_364 : _T_481; // @[Reg.scala 20:19:@399.4]
  assign _GEN_40 = nvdla_sdp_rdma_d_perf_enable_0_wren ? _T_454 : _T_485; // @[Reg.scala 20:19:@405.4]
  assign _GEN_41 = nvdla_sdp_rdma_d_src_base_addr_high_0_wren ? reg_wr_data : _T_488; // @[Reg.scala 20:19:@410.4]
  assign _GEN_42 = nvdla_sdp_rdma_d_src_base_addr_low_0_wren ? reg_wr_data : _T_491; // @[Reg.scala 20:19:@415.4]
  assign _GEN_43 = nvdla_sdp_rdma_d_src_dma_cfg_0_wren ? _T_364 : _T_495; // @[Reg.scala 20:19:@421.4]
  assign _GEN_44 = nvdla_sdp_rdma_d_src_line_stride_0_wren ? reg_wr_data : _T_498; // @[Reg.scala 20:19:@426.4]
  assign _GEN_45 = nvdla_sdp_rdma_d_src_surface_stride_0_wren ? reg_wr_data : _T_501; // @[Reg.scala 20:19:@431.4]
  assign reg_rd_data = _T_335 ? bn_base_addr_high : _T_334; // @[NV_NVDLA_SDP_RDMA_REG_dual.scala 95:20:@177.4]
  assign bn_base_addr_high = _T_339; // @[NV_NVDLA_SDP_RDMA_REG_dual.scala 175:32:@182.4]
  assign bn_base_addr_low = _T_342; // @[NV_NVDLA_SDP_RDMA_REG_dual.scala 177:31:@187.4]
  assign bn_batch_stride = _T_345; // @[NV_NVDLA_SDP_RDMA_REG_dual.scala 179:30:@192.4]
  assign bn_line_stride = _T_348; // @[NV_NVDLA_SDP_RDMA_REG_dual.scala 181:29:@197.4]
  assign bn_surface_stride = _T_351; // @[NV_NVDLA_SDP_RDMA_REG_dual.scala 183:32:@202.4]
  assign brdma_data_mode = _T_355; // @[NV_NVDLA_SDP_RDMA_REG_dual.scala 185:30:@208.4]
  assign brdma_data_size = _T_359; // @[NV_NVDLA_SDP_RDMA_REG_dual.scala 187:30:@214.4]
  assign brdma_data_use = _T_363; // @[NV_NVDLA_SDP_RDMA_REG_dual.scala 189:29:@220.4]
  assign brdma_disable = _T_367; // @[NV_NVDLA_SDP_RDMA_REG_dual.scala 191:28:@226.4]
  assign brdma_ram_type = _T_371; // @[NV_NVDLA_SDP_RDMA_REG_dual.scala 193:29:@232.4]
  assign bs_base_addr_high = _T_374; // @[NV_NVDLA_SDP_RDMA_REG_dual.scala 195:32:@237.4]
  assign bs_base_addr_low = _T_377; // @[NV_NVDLA_SDP_RDMA_REG_dual.scala 197:31:@242.4]
  assign bs_batch_stride = _T_380; // @[NV_NVDLA_SDP_RDMA_REG_dual.scala 199:30:@247.4]
  assign bs_line_stride = _T_383; // @[NV_NVDLA_SDP_RDMA_REG_dual.scala 201:29:@252.4]
  assign bs_surface_stride = _T_386; // @[NV_NVDLA_SDP_RDMA_REG_dual.scala 203:32:@257.4]
  assign channel = _T_390; // @[NV_NVDLA_SDP_RDMA_REG_dual.scala 205:22:@263.4]
  assign height = _T_394; // @[NV_NVDLA_SDP_RDMA_REG_dual.scala 207:21:@269.4]
  assign width = _T_398; // @[NV_NVDLA_SDP_RDMA_REG_dual.scala 209:22:@275.4]
  assign erdma_data_mode = _T_402; // @[NV_NVDLA_SDP_RDMA_REG_dual.scala 211:30:@281.4]
  assign erdma_data_size = _T_406; // @[NV_NVDLA_SDP_RDMA_REG_dual.scala 213:30:@287.4]
  assign erdma_data_use = _T_410; // @[NV_NVDLA_SDP_RDMA_REG_dual.scala 215:29:@293.4]
  assign erdma_disable = _T_414; // @[NV_NVDLA_SDP_RDMA_REG_dual.scala 217:28:@299.4]
  assign erdma_ram_type = _T_418; // @[NV_NVDLA_SDP_RDMA_REG_dual.scala 219:29:@305.4]
  assign ew_base_addr_high = _T_421; // @[NV_NVDLA_SDP_RDMA_REG_dual.scala 221:32:@310.4]
  assign ew_base_addr_low = _T_424; // @[NV_NVDLA_SDP_RDMA_REG_dual.scala 223:31:@315.4]
  assign ew_batch_stride = _T_427; // @[NV_NVDLA_SDP_RDMA_REG_dual.scala 225:30:@320.4]
  assign ew_line_stride = _T_430; // @[NV_NVDLA_SDP_RDMA_REG_dual.scala 227:29:@325.4]
  assign ew_surface_stride = _T_433; // @[NV_NVDLA_SDP_RDMA_REG_dual.scala 229:32:@330.4]
  assign batch_number = _T_437[4:0]; // @[NV_NVDLA_SDP_RDMA_REG_dual.scala 231:27:@336.4]
  assign flying_mode = _T_441; // @[NV_NVDLA_SDP_RDMA_REG_dual.scala 233:26:@342.4]
  assign in_precision = _T_445; // @[NV_NVDLA_SDP_RDMA_REG_dual.scala 235:27:@348.4]
  assign out_precision = _T_449; // @[NV_NVDLA_SDP_RDMA_REG_dual.scala 237:28:@354.4]
  assign proc_precision = _T_453; // @[NV_NVDLA_SDP_RDMA_REG_dual.scala 239:29:@360.4]
  assign winograd = _T_457; // @[NV_NVDLA_SDP_RDMA_REG_dual.scala 241:23:@366.4]
  assign nrdma_data_mode = _T_461; // @[NV_NVDLA_SDP_RDMA_REG_dual.scala 243:30:@372.4]
  assign nrdma_data_size = _T_465; // @[NV_NVDLA_SDP_RDMA_REG_dual.scala 245:30:@378.4]
  assign nrdma_data_use = _T_469; // @[NV_NVDLA_SDP_RDMA_REG_dual.scala 247:29:@384.4]
  assign nrdma_disable = _T_473; // @[NV_NVDLA_SDP_RDMA_REG_dual.scala 249:28:@390.4]
  assign nrdma_ram_type = _T_477; // @[NV_NVDLA_SDP_RDMA_REG_dual.scala 251:29:@396.4]
  assign perf_dma_en = _T_481; // @[NV_NVDLA_SDP_RDMA_REG_dual.scala 253:26:@402.4]
  assign perf_nan_inf_count_en = _T_485; // @[NV_NVDLA_SDP_RDMA_REG_dual.scala 255:36:@408.4]
  assign src_base_addr_high = _T_488; // @[NV_NVDLA_SDP_RDMA_REG_dual.scala 257:33:@413.4]
  assign src_base_addr_low = _T_491; // @[NV_NVDLA_SDP_RDMA_REG_dual.scala 259:32:@418.4]
  assign src_ram_type = _T_495; // @[NV_NVDLA_SDP_RDMA_REG_dual.scala 261:27:@424.4]
  assign src_line_stride = _T_498; // @[NV_NVDLA_SDP_RDMA_REG_dual.scala 263:30:@429.4]
  assign src_surface_stride = _T_501; // @[NV_NVDLA_SDP_RDMA_REG_dual.scala 265:33:@434.4]
  assign op_en_trigger = _T_168 & reg_wr_en; // @[NV_NVDLA_SDP_RDMA_REG_dual.scala 91:22:@78.4]
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
  _T_339 = _RAND_0[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_1 = {1{`RANDOM}};
  _T_342 = _RAND_1[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_2 = {1{`RANDOM}};
  _T_345 = _RAND_2[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_3 = {1{`RANDOM}};
  _T_348 = _RAND_3[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_4 = {1{`RANDOM}};
  _T_351 = _RAND_4[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_5 = {1{`RANDOM}};
  _T_355 = _RAND_5[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_6 = {1{`RANDOM}};
  _T_359 = _RAND_6[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_7 = {1{`RANDOM}};
  _T_363 = _RAND_7[1:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_8 = {1{`RANDOM}};
  _T_367 = _RAND_8[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_9 = {1{`RANDOM}};
  _T_371 = _RAND_9[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_10 = {1{`RANDOM}};
  _T_374 = _RAND_10[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_11 = {1{`RANDOM}};
  _T_377 = _RAND_11[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_12 = {1{`RANDOM}};
  _T_380 = _RAND_12[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_13 = {1{`RANDOM}};
  _T_383 = _RAND_13[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_14 = {1{`RANDOM}};
  _T_386 = _RAND_14[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_15 = {1{`RANDOM}};
  _T_390 = _RAND_15[12:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_16 = {1{`RANDOM}};
  _T_394 = _RAND_16[12:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_17 = {1{`RANDOM}};
  _T_398 = _RAND_17[12:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_18 = {1{`RANDOM}};
  _T_402 = _RAND_18[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_19 = {1{`RANDOM}};
  _T_406 = _RAND_19[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_20 = {1{`RANDOM}};
  _T_410 = _RAND_20[1:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_21 = {1{`RANDOM}};
  _T_414 = _RAND_21[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_22 = {1{`RANDOM}};
  _T_418 = _RAND_22[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_23 = {1{`RANDOM}};
  _T_421 = _RAND_23[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_24 = {1{`RANDOM}};
  _T_424 = _RAND_24[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_25 = {1{`RANDOM}};
  _T_427 = _RAND_25[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_26 = {1{`RANDOM}};
  _T_430 = _RAND_26[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_27 = {1{`RANDOM}};
  _T_433 = _RAND_27[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_28 = {1{`RANDOM}};
  _T_437 = _RAND_28[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_29 = {1{`RANDOM}};
  _T_441 = _RAND_29[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_30 = {1{`RANDOM}};
  _T_445 = _RAND_30[1:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_31 = {1{`RANDOM}};
  _T_449 = _RAND_31[1:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_32 = {1{`RANDOM}};
  _T_453 = _RAND_32[1:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_33 = {1{`RANDOM}};
  _T_457 = _RAND_33[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_34 = {1{`RANDOM}};
  _T_461 = _RAND_34[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_35 = {1{`RANDOM}};
  _T_465 = _RAND_35[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_36 = {1{`RANDOM}};
  _T_469 = _RAND_36[1:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_37 = {1{`RANDOM}};
  _T_473 = _RAND_37[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_38 = {1{`RANDOM}};
  _T_477 = _RAND_38[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_39 = {1{`RANDOM}};
  _T_481 = _RAND_39[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_40 = {1{`RANDOM}};
  _T_485 = _RAND_40[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_41 = {1{`RANDOM}};
  _T_488 = _RAND_41[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_42 = {1{`RANDOM}};
  _T_491 = _RAND_42[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_43 = {1{`RANDOM}};
  _T_495 = _RAND_43[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_44 = {1{`RANDOM}};
  _T_498 = _RAND_44[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_45 = {1{`RANDOM}};
  _T_501 = _RAND_45[31:0];
  `endif // RANDOMIZE_REG_INIT
  end
`endif // RANDOMIZE
  always @(posedge nvdla_core_clk) begin
    if (!nvdla_core_rstn) begin
      _T_339 <= 32'h0;
    end else begin
      if (nvdla_sdp_rdma_d_bn_base_addr_high_0_wren) begin
        _T_339 <= reg_wr_data;
      end
    end
    if (!nvdla_core_rstn) begin
      _T_342 <= 32'h0;
    end else begin
      if (nvdla_sdp_rdma_d_bn_base_addr_low_0_wren) begin
        _T_342 <= reg_wr_data;
      end
    end
    if (!nvdla_core_rstn) begin
      _T_345 <= 32'h0;
    end else begin
      if (nvdla_sdp_rdma_d_bn_batch_stride_0_wren) begin
        _T_345 <= reg_wr_data;
      end
    end
    if (!nvdla_core_rstn) begin
      _T_348 <= 32'h0;
    end else begin
      if (nvdla_sdp_rdma_d_bn_line_stride_0_wren) begin
        _T_348 <= reg_wr_data;
      end
    end
    if (!nvdla_core_rstn) begin
      _T_351 <= 32'h0;
    end else begin
      if (nvdla_sdp_rdma_d_bn_surface_stride_0_wren) begin
        _T_351 <= reg_wr_data;
      end
    end
    if (!nvdla_core_rstn) begin
      _T_355 <= 1'h0;
    end else begin
      if (nvdla_sdp_rdma_d_brdma_cfg_0_wren) begin
        _T_355 <= _T_352;
      end
    end
    if (!nvdla_core_rstn) begin
      _T_359 <= 1'h0;
    end else begin
      if (nvdla_sdp_rdma_d_brdma_cfg_0_wren) begin
        _T_359 <= _T_356;
      end
    end
    if (!nvdla_core_rstn) begin
      _T_363 <= 2'h0;
    end else begin
      if (nvdla_sdp_rdma_d_brdma_cfg_0_wren) begin
        _T_363 <= _T_360;
      end
    end
    if (!nvdla_core_rstn) begin
      _T_367 <= 1'h1;
    end else begin
      if (nvdla_sdp_rdma_d_brdma_cfg_0_wren) begin
        _T_367 <= _T_364;
      end
    end
    if (!nvdla_core_rstn) begin
      _T_371 <= 1'h0;
    end else begin
      if (nvdla_sdp_rdma_d_brdma_cfg_0_wren) begin
        _T_371 <= _T_368;
      end
    end
    if (!nvdla_core_rstn) begin
      _T_374 <= 32'h0;
    end else begin
      if (nvdla_sdp_rdma_d_bs_base_addr_high_0_wren) begin
        _T_374 <= reg_wr_data;
      end
    end
    if (!nvdla_core_rstn) begin
      _T_377 <= 32'h0;
    end else begin
      if (nvdla_sdp_rdma_d_bs_base_addr_low_0_wren) begin
        _T_377 <= reg_wr_data;
      end
    end
    if (!nvdla_core_rstn) begin
      _T_380 <= 32'h0;
    end else begin
      if (nvdla_sdp_rdma_d_bs_batch_stride_0_wren) begin
        _T_380 <= reg_wr_data;
      end
    end
    if (!nvdla_core_rstn) begin
      _T_383 <= 32'h0;
    end else begin
      if (nvdla_sdp_rdma_d_bs_line_stride_0_wren) begin
        _T_383 <= reg_wr_data;
      end
    end
    if (!nvdla_core_rstn) begin
      _T_386 <= 32'h0;
    end else begin
      if (nvdla_sdp_rdma_d_bs_surface_stride_0_wren) begin
        _T_386 <= reg_wr_data;
      end
    end
    if (!nvdla_core_rstn) begin
      _T_390 <= 13'h0;
    end else begin
      if (nvdla_sdp_rdma_d_data_cube_channel_0_wren) begin
        _T_390 <= _T_387;
      end
    end
    if (!nvdla_core_rstn) begin
      _T_394 <= 13'h0;
    end else begin
      if (nvdla_sdp_rdma_d_data_cube_height_0_wren) begin
        _T_394 <= _T_387;
      end
    end
    if (!nvdla_core_rstn) begin
      _T_398 <= 13'h0;
    end else begin
      if (nvdla_sdp_rdma_d_data_cube_width_0_wren) begin
        _T_398 <= _T_387;
      end
    end
    if (!nvdla_core_rstn) begin
      _T_402 <= 1'h0;
    end else begin
      if (nvdla_sdp_rdma_d_erdma_cfg_0_wren) begin
        _T_402 <= _T_352;
      end
    end
    if (!nvdla_core_rstn) begin
      _T_406 <= 1'h0;
    end else begin
      if (nvdla_sdp_rdma_d_erdma_cfg_0_wren) begin
        _T_406 <= _T_356;
      end
    end
    if (!nvdla_core_rstn) begin
      _T_410 <= 2'h0;
    end else begin
      if (nvdla_sdp_rdma_d_erdma_cfg_0_wren) begin
        _T_410 <= _T_360;
      end
    end
    if (!nvdla_core_rstn) begin
      _T_414 <= 1'h1;
    end else begin
      if (nvdla_sdp_rdma_d_erdma_cfg_0_wren) begin
        _T_414 <= _T_364;
      end
    end
    if (!nvdla_core_rstn) begin
      _T_418 <= 1'h0;
    end else begin
      if (nvdla_sdp_rdma_d_erdma_cfg_0_wren) begin
        _T_418 <= _T_368;
      end
    end
    if (!nvdla_core_rstn) begin
      _T_421 <= 32'h0;
    end else begin
      if (nvdla_sdp_rdma_d_ew_base_addr_high_0_wren) begin
        _T_421 <= reg_wr_data;
      end
    end
    if (!nvdla_core_rstn) begin
      _T_424 <= 32'h0;
    end else begin
      if (nvdla_sdp_rdma_d_ew_base_addr_low_0_wren) begin
        _T_424 <= reg_wr_data;
      end
    end
    if (!nvdla_core_rstn) begin
      _T_427 <= 32'h0;
    end else begin
      if (nvdla_sdp_rdma_d_ew_batch_stride_0_wren) begin
        _T_427 <= reg_wr_data;
      end
    end
    if (!nvdla_core_rstn) begin
      _T_430 <= 32'h0;
    end else begin
      if (nvdla_sdp_rdma_d_ew_line_stride_0_wren) begin
        _T_430 <= reg_wr_data;
      end
    end
    if (!nvdla_core_rstn) begin
      _T_433 <= 32'h0;
    end else begin
      if (nvdla_sdp_rdma_d_ew_surface_stride_0_wren) begin
        _T_433 <= reg_wr_data;
      end
    end
    if (!nvdla_core_rstn) begin
      _T_437 <= 32'h0;
    end else begin
      if (nvdla_sdp_rdma_d_feature_mode_cfg_0_wren) begin
        _T_437 <= {{27'd0}, _T_434};
      end
    end
    if (!nvdla_core_rstn) begin
      _T_441 <= 1'h0;
    end else begin
      if (nvdla_sdp_rdma_d_feature_mode_cfg_0_wren) begin
        _T_441 <= _T_364;
      end
    end
    if (!nvdla_core_rstn) begin
      _T_445 <= 2'h1;
    end else begin
      if (nvdla_sdp_rdma_d_feature_mode_cfg_0_wren) begin
        _T_445 <= _T_442;
      end
    end
    if (!nvdla_core_rstn) begin
      _T_449 <= 2'h0;
    end else begin
      if (nvdla_sdp_rdma_d_feature_mode_cfg_0_wren) begin
        _T_449 <= _T_446;
      end
    end
    if (!nvdla_core_rstn) begin
      _T_453 <= 2'h1;
    end else begin
      if (nvdla_sdp_rdma_d_feature_mode_cfg_0_wren) begin
        _T_453 <= _T_450;
      end
    end
    if (!nvdla_core_rstn) begin
      _T_457 <= 1'h0;
    end else begin
      if (nvdla_sdp_rdma_d_feature_mode_cfg_0_wren) begin
        _T_457 <= _T_454;
      end
    end
    if (!nvdla_core_rstn) begin
      _T_461 <= 1'h0;
    end else begin
      if (nvdla_sdp_rdma_d_nrdma_cfg_0_wren) begin
        _T_461 <= _T_352;
      end
    end
    if (!nvdla_core_rstn) begin
      _T_465 <= 1'h0;
    end else begin
      if (nvdla_sdp_rdma_d_nrdma_cfg_0_wren) begin
        _T_465 <= _T_356;
      end
    end
    if (!nvdla_core_rstn) begin
      _T_469 <= 2'h0;
    end else begin
      if (nvdla_sdp_rdma_d_nrdma_cfg_0_wren) begin
        _T_469 <= _T_360;
      end
    end
    if (!nvdla_core_rstn) begin
      _T_473 <= 1'h1;
    end else begin
      if (nvdla_sdp_rdma_d_nrdma_cfg_0_wren) begin
        _T_473 <= _T_364;
      end
    end
    if (!nvdla_core_rstn) begin
      _T_477 <= 1'h0;
    end else begin
      if (nvdla_sdp_rdma_d_nrdma_cfg_0_wren) begin
        _T_477 <= _T_368;
      end
    end
    if (!nvdla_core_rstn) begin
      _T_481 <= 1'h0;
    end else begin
      if (nvdla_sdp_rdma_d_perf_enable_0_wren) begin
        _T_481 <= _T_364;
      end
    end
    if (!nvdla_core_rstn) begin
      _T_485 <= 1'h0;
    end else begin
      if (nvdla_sdp_rdma_d_perf_enable_0_wren) begin
        _T_485 <= _T_454;
      end
    end
    if (!nvdla_core_rstn) begin
      _T_488 <= 32'h0;
    end else begin
      if (nvdla_sdp_rdma_d_src_base_addr_high_0_wren) begin
        _T_488 <= reg_wr_data;
      end
    end
    if (!nvdla_core_rstn) begin
      _T_491 <= 32'h0;
    end else begin
      if (nvdla_sdp_rdma_d_src_base_addr_low_0_wren) begin
        _T_491 <= reg_wr_data;
      end
    end
    if (!nvdla_core_rstn) begin
      _T_495 <= 1'h0;
    end else begin
      if (nvdla_sdp_rdma_d_src_dma_cfg_0_wren) begin
        _T_495 <= _T_364;
      end
    end
    if (!nvdla_core_rstn) begin
      _T_498 <= 32'h0;
    end else begin
      if (nvdla_sdp_rdma_d_src_line_stride_0_wren) begin
        _T_498 <= reg_wr_data;
      end
    end
    if (!nvdla_core_rstn) begin
      _T_501 <= 32'h0;
    end else begin
      if (nvdla_sdp_rdma_d_src_surface_stride_0_wren) begin
        _T_501 <= reg_wr_data;
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
// File Name: NV_NVDLA_SDP_RDMA_REG_dual.v
// ================================================================
// NVDLA Open Source Project
// 
// Copyright(c) 2016 - 2017 NVIDIA Corporation.  Licensed under the
// NVDLA Open Hardware License; Check "LICENSE" which comes with 
// this distribution for more information.
// ================================================================
// File Name: NV_NVDLA_SDP_define.h
module NV_NVDLA_SDP_RDMA_REG_dual (
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
  ,bn_base_addr_high
  ,bn_base_addr_low
  ,bn_batch_stride
  ,bn_line_stride
  ,bn_surface_stride
  ,brdma_data_mode
  ,brdma_data_size
  ,brdma_data_use
  ,brdma_disable
  ,brdma_ram_type
  ,bs_base_addr_high
  ,bs_base_addr_low
  ,bs_batch_stride
  ,bs_line_stride
  ,bs_surface_stride
  ,channel
  ,height
  ,width
  ,erdma_data_mode
  ,erdma_data_size
  ,erdma_data_use
  ,erdma_disable
  ,erdma_ram_type
  ,ew_base_addr_high
  ,ew_base_addr_low
  ,ew_batch_stride
  ,ew_line_stride
  ,ew_surface_stride
  ,batch_number
  ,flying_mode
  ,in_precision
  ,out_precision
  ,proc_precision
  ,winograd
  ,nrdma_data_mode
  ,nrdma_data_size
  ,nrdma_data_use
  ,nrdma_disable
  ,nrdma_ram_type
  ,op_en_trigger
  ,perf_dma_en
  ,perf_nan_inf_count_en
  ,src_base_addr_high
  ,src_base_addr_low
  ,src_ram_type
  ,src_line_stride
  ,src_surface_stride
  ,op_en
  ,brdma_stall
  ,erdma_stall
  ,mrdma_stall
  ,nrdma_stall
  ,status_inf_input_num
  ,status_nan_input_num
  );
wire [31:0] nvdla_sdp_rdma_d_bn_base_addr_high_0_out;
wire [31:0] nvdla_sdp_rdma_d_bn_base_addr_low_0_out;
wire [31:0] nvdla_sdp_rdma_d_bn_batch_stride_0_out;
wire [31:0] nvdla_sdp_rdma_d_bn_line_stride_0_out;
wire [31:0] nvdla_sdp_rdma_d_bn_surface_stride_0_out;
wire [31:0] nvdla_sdp_rdma_d_brdma_cfg_0_out;
wire [31:0] nvdla_sdp_rdma_d_bs_base_addr_high_0_out;
wire [31:0] nvdla_sdp_rdma_d_bs_base_addr_low_0_out;
wire [31:0] nvdla_sdp_rdma_d_bs_batch_stride_0_out;
wire [31:0] nvdla_sdp_rdma_d_bs_line_stride_0_out;
wire [31:0] nvdla_sdp_rdma_d_bs_surface_stride_0_out;
wire [31:0] nvdla_sdp_rdma_d_data_cube_channel_0_out;
wire [31:0] nvdla_sdp_rdma_d_data_cube_height_0_out;
wire [31:0] nvdla_sdp_rdma_d_data_cube_width_0_out;
wire [31:0] nvdla_sdp_rdma_d_erdma_cfg_0_out;
wire [31:0] nvdla_sdp_rdma_d_ew_base_addr_high_0_out;
wire [31:0] nvdla_sdp_rdma_d_ew_base_addr_low_0_out;
wire [31:0] nvdla_sdp_rdma_d_ew_batch_stride_0_out;
wire [31:0] nvdla_sdp_rdma_d_ew_line_stride_0_out;
wire [31:0] nvdla_sdp_rdma_d_ew_surface_stride_0_out;
wire [31:0] nvdla_sdp_rdma_d_feature_mode_cfg_0_out;
wire [31:0] nvdla_sdp_rdma_d_nrdma_cfg_0_out;
wire [31:0] nvdla_sdp_rdma_d_op_enable_0_out;
wire [31:0] nvdla_sdp_rdma_d_perf_brdma_read_stall_0_out;
wire [31:0] nvdla_sdp_rdma_d_perf_enable_0_out;
wire [31:0] nvdla_sdp_rdma_d_perf_erdma_read_stall_0_out;
wire [31:0] nvdla_sdp_rdma_d_perf_mrdma_read_stall_0_out;
wire [31:0] nvdla_sdp_rdma_d_perf_nrdma_read_stall_0_out;
wire [31:0] nvdla_sdp_rdma_d_src_base_addr_high_0_out;
wire [31:0] nvdla_sdp_rdma_d_src_base_addr_low_0_out;
wire [31:0] nvdla_sdp_rdma_d_src_dma_cfg_0_out;
wire [31:0] nvdla_sdp_rdma_d_src_line_stride_0_out;
wire [31:0] nvdla_sdp_rdma_d_src_surface_stride_0_out;
wire [31:0] nvdla_sdp_rdma_d_status_inf_input_num_0_out;
wire [31:0] nvdla_sdp_rdma_d_status_nan_input_num_0_out;
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
output [31:0] bn_base_addr_high;
output [31:0] bn_base_addr_low;
output [31:0] bn_batch_stride;
output [31:0] bn_line_stride;
output [31:0] bn_surface_stride;
output brdma_data_mode;
output brdma_data_size;
output [1:0] brdma_data_use;
output brdma_disable;
output brdma_ram_type;
output [31:0] bs_base_addr_high;
output [31:0] bs_base_addr_low;
output [31:0] bs_batch_stride;
output [31:0] bs_line_stride;
output [31:0] bs_surface_stride;
output [12:0] channel;
output [12:0] height;
output [12:0] width;
output erdma_data_mode;
output erdma_data_size;
output [1:0] erdma_data_use;
output erdma_disable;
output erdma_ram_type;
output [31:0] ew_base_addr_high;
output [31:0] ew_base_addr_low;
output [31:0] ew_batch_stride;
output [31:0] ew_line_stride;
output [31:0] ew_surface_stride;
output [4:0] batch_number;
output flying_mode;
output [1:0] in_precision;
output [1:0] out_precision;
output [1:0] proc_precision;
output winograd;
output nrdma_data_mode;
output nrdma_data_size;
output [1:0] nrdma_data_use;
output nrdma_disable;
output nrdma_ram_type;
output op_en_trigger;
output perf_dma_en;
output perf_nan_inf_count_en;
output [31:0] src_base_addr_high;
output [31:0] src_base_addr_low;
output src_ram_type;
output [31:0] src_line_stride;
output [31:0] src_surface_stride;
// Read-only register inputs
input op_en;
input [31:0] brdma_stall;
input [31:0] erdma_stall;
input [31:0] mrdma_stall;
input [31:0] nrdma_stall;
input [31:0] status_inf_input_num;
input [31:0] status_nan_input_num;
// wr_mask register inputs
// rstn register inputs
// leda FM_2_23 off
reg arreggen_abort_on_invalid_wr;
reg arreggen_abort_on_rowr;
reg arreggen_dump;
// leda FM_2_23 on
reg [4:0] batch_number;
reg [31:0] bn_base_addr_high;
reg [31:0] bn_base_addr_low;
reg [31:0] bn_batch_stride;
reg [31:0] bn_line_stride;
reg [31:0] bn_surface_stride;
reg brdma_data_mode;
reg brdma_data_size;
reg [1:0] brdma_data_use;
reg brdma_disable;
reg brdma_ram_type;
reg [31:0] bs_base_addr_high;
reg [31:0] bs_base_addr_low;
reg [31:0] bs_batch_stride;
reg [31:0] bs_line_stride;
reg [31:0] bs_surface_stride;
reg [12:0] channel;
reg erdma_data_mode;
reg erdma_data_size;
reg [1:0] erdma_data_use;
reg erdma_disable;
reg erdma_ram_type;
reg [31:0] ew_base_addr_high;
reg [31:0] ew_base_addr_low;
reg [31:0] ew_batch_stride;
reg [31:0] ew_line_stride;
reg [31:0] ew_surface_stride;
reg flying_mode;
reg [12:0] height;
reg [1:0] in_precision;
reg nrdma_data_mode;
reg nrdma_data_size;
reg [1:0] nrdma_data_use;
reg nrdma_disable;
reg nrdma_ram_type;
reg [1:0] out_precision;
reg perf_dma_en;
reg perf_nan_inf_count_en;
reg [1:0] proc_precision;
reg [31:0] reg_rd_data;
reg [31:0] src_base_addr_high;
reg [31:0] src_base_addr_low;
reg [31:0] src_line_stride;
reg src_ram_type;
reg [31:0] src_surface_stride;
reg [12:0] width;
reg winograd;
assign reg_offset_wr = {20'b0 , reg_offset};
// SCR signals
// Address decode
wire nvdla_sdp_rdma_d_bn_base_addr_high_0_wren = (reg_offset_wr == (32'ha048 & 32'h00000fff)) & reg_wr_en ; //spyglass disable UnloadedNet-ML //(W528)
wire nvdla_sdp_rdma_d_bn_base_addr_low_0_wren = (reg_offset_wr == (32'ha044 & 32'h00000fff)) & reg_wr_en ; //spyglass disable UnloadedNet-ML //(W528)
wire nvdla_sdp_rdma_d_bn_batch_stride_0_wren = (reg_offset_wr == (32'ha054 & 32'h00000fff)) & reg_wr_en ; //spyglass disable UnloadedNet-ML //(W528)
wire nvdla_sdp_rdma_d_bn_line_stride_0_wren = (reg_offset_wr == (32'ha04c & 32'h00000fff)) & reg_wr_en ; //spyglass disable UnloadedNet-ML //(W528)
wire nvdla_sdp_rdma_d_bn_surface_stride_0_wren = (reg_offset_wr == (32'ha050 & 32'h00000fff)) & reg_wr_en ; //spyglass disable UnloadedNet-ML //(W528)
wire nvdla_sdp_rdma_d_brdma_cfg_0_wren = (reg_offset_wr == (32'ha028 & 32'h00000fff)) & reg_wr_en ; //spyglass disable UnloadedNet-ML //(W528)
wire nvdla_sdp_rdma_d_bs_base_addr_high_0_wren = (reg_offset_wr == (32'ha030 & 32'h00000fff)) & reg_wr_en ; //spyglass disable UnloadedNet-ML //(W528)
wire nvdla_sdp_rdma_d_bs_base_addr_low_0_wren = (reg_offset_wr == (32'ha02c & 32'h00000fff)) & reg_wr_en ; //spyglass disable UnloadedNet-ML //(W528)
wire nvdla_sdp_rdma_d_bs_batch_stride_0_wren = (reg_offset_wr == (32'ha03c & 32'h00000fff)) & reg_wr_en ; //spyglass disable UnloadedNet-ML //(W528)
wire nvdla_sdp_rdma_d_bs_line_stride_0_wren = (reg_offset_wr == (32'ha034 & 32'h00000fff)) & reg_wr_en ; //spyglass disable UnloadedNet-ML //(W528)
wire nvdla_sdp_rdma_d_bs_surface_stride_0_wren = (reg_offset_wr == (32'ha038 & 32'h00000fff)) & reg_wr_en ; //spyglass disable UnloadedNet-ML //(W528)
wire nvdla_sdp_rdma_d_data_cube_channel_0_wren = (reg_offset_wr == (32'ha014 & 32'h00000fff)) & reg_wr_en ; //spyglass disable UnloadedNet-ML //(W528)
wire nvdla_sdp_rdma_d_data_cube_height_0_wren = (reg_offset_wr == (32'ha010 & 32'h00000fff)) & reg_wr_en ; //spyglass disable UnloadedNet-ML //(W528)
wire nvdla_sdp_rdma_d_data_cube_width_0_wren = (reg_offset_wr == (32'ha00c & 32'h00000fff)) & reg_wr_en ; //spyglass disable UnloadedNet-ML //(W528)
wire nvdla_sdp_rdma_d_erdma_cfg_0_wren = (reg_offset_wr == (32'ha058 & 32'h00000fff)) & reg_wr_en ; //spyglass disable UnloadedNet-ML //(W528)
wire nvdla_sdp_rdma_d_ew_base_addr_high_0_wren = (reg_offset_wr == (32'ha060 & 32'h00000fff)) & reg_wr_en ; //spyglass disable UnloadedNet-ML //(W528)
wire nvdla_sdp_rdma_d_ew_base_addr_low_0_wren = (reg_offset_wr == (32'ha05c & 32'h00000fff)) & reg_wr_en ; //spyglass disable UnloadedNet-ML //(W528)
wire nvdla_sdp_rdma_d_ew_batch_stride_0_wren = (reg_offset_wr == (32'ha06c & 32'h00000fff)) & reg_wr_en ; //spyglass disable UnloadedNet-ML //(W528)
wire nvdla_sdp_rdma_d_ew_line_stride_0_wren = (reg_offset_wr == (32'ha064 & 32'h00000fff)) & reg_wr_en ; //spyglass disable UnloadedNet-ML //(W528)
wire nvdla_sdp_rdma_d_ew_surface_stride_0_wren = (reg_offset_wr == (32'ha068 & 32'h00000fff)) & reg_wr_en ; //spyglass disable UnloadedNet-ML //(W528)
wire nvdla_sdp_rdma_d_feature_mode_cfg_0_wren = (reg_offset_wr == (32'ha070 & 32'h00000fff)) & reg_wr_en ; //spyglass disable UnloadedNet-ML //(W528)
wire nvdla_sdp_rdma_d_nrdma_cfg_0_wren = (reg_offset_wr == (32'ha040 & 32'h00000fff)) & reg_wr_en ; //spyglass disable UnloadedNet-ML //(W528)
wire nvdla_sdp_rdma_d_op_enable_0_wren = (reg_offset_wr == (32'ha008 & 32'h00000fff)) & reg_wr_en ; //spyglass disable UnloadedNet-ML //(W528)
wire nvdla_sdp_rdma_d_perf_brdma_read_stall_0_wren = (reg_offset_wr == (32'ha088 & 32'h00000fff)) & reg_wr_en ; //spyglass disable UnloadedNet-ML //(W528)
wire nvdla_sdp_rdma_d_perf_enable_0_wren = (reg_offset_wr == (32'ha080 & 32'h00000fff)) & reg_wr_en ; //spyglass disable UnloadedNet-ML //(W528)
wire nvdla_sdp_rdma_d_perf_erdma_read_stall_0_wren = (reg_offset_wr == (32'ha090 & 32'h00000fff)) & reg_wr_en ; //spyglass disable UnloadedNet-ML //(W528)
wire nvdla_sdp_rdma_d_perf_mrdma_read_stall_0_wren = (reg_offset_wr == (32'ha084 & 32'h00000fff)) & reg_wr_en ; //spyglass disable UnloadedNet-ML //(W528)
wire nvdla_sdp_rdma_d_perf_nrdma_read_stall_0_wren = (reg_offset_wr == (32'ha08c & 32'h00000fff)) & reg_wr_en ; //spyglass disable UnloadedNet-ML //(W528)
wire nvdla_sdp_rdma_d_src_base_addr_high_0_wren = (reg_offset_wr == (32'ha01c & 32'h00000fff)) & reg_wr_en ; //spyglass disable UnloadedNet-ML //(W528)
wire nvdla_sdp_rdma_d_src_base_addr_low_0_wren = (reg_offset_wr == (32'ha018 & 32'h00000fff)) & reg_wr_en ; //spyglass disable UnloadedNet-ML //(W528)
wire nvdla_sdp_rdma_d_src_dma_cfg_0_wren = (reg_offset_wr == (32'ha074 & 32'h00000fff)) & reg_wr_en ; //spyglass disable UnloadedNet-ML //(W528)
wire nvdla_sdp_rdma_d_src_line_stride_0_wren = (reg_offset_wr == (32'ha020 & 32'h00000fff)) & reg_wr_en ; //spyglass disable UnloadedNet-ML //(W528)
wire nvdla_sdp_rdma_d_src_surface_stride_0_wren = (reg_offset_wr == (32'ha024 & 32'h00000fff)) & reg_wr_en ; //spyglass disable UnloadedNet-ML //(W528)
wire nvdla_sdp_rdma_d_status_inf_input_num_0_wren = (reg_offset_wr == (32'ha07c & 32'h00000fff)) & reg_wr_en ; //spyglass disable UnloadedNet-ML //(W528)
wire nvdla_sdp_rdma_d_status_nan_input_num_0_wren = (reg_offset_wr == (32'ha078 & 32'h00000fff)) & reg_wr_en ; //spyglass disable UnloadedNet-ML //(W528)
assign nvdla_sdp_rdma_d_bn_base_addr_high_0_out[31:0] = { bn_base_addr_high };
assign nvdla_sdp_rdma_d_bn_base_addr_low_0_out[31:0] = { bn_base_addr_low};
assign nvdla_sdp_rdma_d_bn_batch_stride_0_out[31:0] = { bn_batch_stride};
assign nvdla_sdp_rdma_d_bn_line_stride_0_out[31:0] = { bn_line_stride};
assign nvdla_sdp_rdma_d_bn_surface_stride_0_out[31:0] = { bn_surface_stride};
assign nvdla_sdp_rdma_d_brdma_cfg_0_out[31:0] = { 26'b0, brdma_ram_type, brdma_data_mode, brdma_data_size, brdma_data_use, brdma_disable };
assign nvdla_sdp_rdma_d_bs_base_addr_high_0_out[31:0] = { bs_base_addr_high };
assign nvdla_sdp_rdma_d_bs_base_addr_low_0_out[31:0] = { bs_base_addr_low};
assign nvdla_sdp_rdma_d_bs_batch_stride_0_out[31:0] = { bs_batch_stride};
assign nvdla_sdp_rdma_d_bs_line_stride_0_out[31:0] = { bs_line_stride};
assign nvdla_sdp_rdma_d_bs_surface_stride_0_out[31:0] = { bs_surface_stride};
assign nvdla_sdp_rdma_d_data_cube_channel_0_out[31:0] = { 19'b0, channel };
assign nvdla_sdp_rdma_d_data_cube_height_0_out[31:0] = { 19'b0, height };
assign nvdla_sdp_rdma_d_data_cube_width_0_out[31:0] = { 19'b0, width };
assign nvdla_sdp_rdma_d_erdma_cfg_0_out[31:0] = { 26'b0, erdma_ram_type, erdma_data_mode, erdma_data_size, erdma_data_use, erdma_disable };
assign nvdla_sdp_rdma_d_ew_base_addr_high_0_out[31:0] = { ew_base_addr_high };
assign nvdla_sdp_rdma_d_ew_base_addr_low_0_out[31:0] = { ew_base_addr_low};
assign nvdla_sdp_rdma_d_ew_batch_stride_0_out[31:0] = { ew_batch_stride};
assign nvdla_sdp_rdma_d_ew_line_stride_0_out[31:0] = { ew_line_stride};
assign nvdla_sdp_rdma_d_ew_surface_stride_0_out[31:0] = { ew_surface_stride};
assign nvdla_sdp_rdma_d_feature_mode_cfg_0_out[31:0] = { 19'b0, batch_number, out_precision, proc_precision, in_precision, winograd, flying_mode };
assign nvdla_sdp_rdma_d_nrdma_cfg_0_out[31:0] = { 26'b0, nrdma_ram_type, nrdma_data_mode, nrdma_data_size, nrdma_data_use, nrdma_disable };
assign nvdla_sdp_rdma_d_op_enable_0_out[31:0] = { 31'b0, op_en };
assign nvdla_sdp_rdma_d_perf_brdma_read_stall_0_out[31:0] = { brdma_stall };
assign nvdla_sdp_rdma_d_perf_enable_0_out[31:0] = { 30'b0, perf_nan_inf_count_en, perf_dma_en };
assign nvdla_sdp_rdma_d_perf_erdma_read_stall_0_out[31:0] = { erdma_stall };
assign nvdla_sdp_rdma_d_perf_mrdma_read_stall_0_out[31:0] = { mrdma_stall };
assign nvdla_sdp_rdma_d_perf_nrdma_read_stall_0_out[31:0] = { nrdma_stall };
assign nvdla_sdp_rdma_d_src_base_addr_high_0_out[31:0] = { src_base_addr_high };
assign nvdla_sdp_rdma_d_src_base_addr_low_0_out[31:0] = { src_base_addr_low};
assign nvdla_sdp_rdma_d_src_dma_cfg_0_out[31:0] = { 31'b0, src_ram_type };
assign nvdla_sdp_rdma_d_src_line_stride_0_out[31:0] = { src_line_stride};
assign nvdla_sdp_rdma_d_src_surface_stride_0_out[31:0] = { src_surface_stride};
assign nvdla_sdp_rdma_d_status_inf_input_num_0_out[31:0] = { status_inf_input_num };
assign nvdla_sdp_rdma_d_status_nan_input_num_0_out[31:0] = { status_nan_input_num };
assign op_en_trigger = nvdla_sdp_rdma_d_op_enable_0_wren; //(W563)
assign reg_offset_rd_int = reg_offset;
// Output mux
//spyglass disable_block W338, W263
always @(
  reg_offset_rd_int
  or nvdla_sdp_rdma_d_bn_base_addr_high_0_out
  or nvdla_sdp_rdma_d_bn_base_addr_low_0_out
  or nvdla_sdp_rdma_d_bn_batch_stride_0_out
  or nvdla_sdp_rdma_d_bn_line_stride_0_out
  or nvdla_sdp_rdma_d_bn_surface_stride_0_out
  or nvdla_sdp_rdma_d_brdma_cfg_0_out
  or nvdla_sdp_rdma_d_bs_base_addr_high_0_out
  or nvdla_sdp_rdma_d_bs_base_addr_low_0_out
  or nvdla_sdp_rdma_d_bs_batch_stride_0_out
  or nvdla_sdp_rdma_d_bs_line_stride_0_out
  or nvdla_sdp_rdma_d_bs_surface_stride_0_out
  or nvdla_sdp_rdma_d_data_cube_channel_0_out
  or nvdla_sdp_rdma_d_data_cube_height_0_out
  or nvdla_sdp_rdma_d_data_cube_width_0_out
  or nvdla_sdp_rdma_d_erdma_cfg_0_out
  or nvdla_sdp_rdma_d_ew_base_addr_high_0_out
  or nvdla_sdp_rdma_d_ew_base_addr_low_0_out
  or nvdla_sdp_rdma_d_ew_batch_stride_0_out
  or nvdla_sdp_rdma_d_ew_line_stride_0_out
  or nvdla_sdp_rdma_d_ew_surface_stride_0_out
  or nvdla_sdp_rdma_d_feature_mode_cfg_0_out
  or nvdla_sdp_rdma_d_nrdma_cfg_0_out
  or nvdla_sdp_rdma_d_op_enable_0_out
  or nvdla_sdp_rdma_d_perf_brdma_read_stall_0_out
  or nvdla_sdp_rdma_d_perf_enable_0_out
  or nvdla_sdp_rdma_d_perf_erdma_read_stall_0_out
  or nvdla_sdp_rdma_d_perf_mrdma_read_stall_0_out
  or nvdla_sdp_rdma_d_perf_nrdma_read_stall_0_out
  or nvdla_sdp_rdma_d_src_base_addr_high_0_out
  or nvdla_sdp_rdma_d_src_base_addr_low_0_out
  or nvdla_sdp_rdma_d_src_dma_cfg_0_out
  or nvdla_sdp_rdma_d_src_line_stride_0_out
  or nvdla_sdp_rdma_d_src_surface_stride_0_out
  or nvdla_sdp_rdma_d_status_inf_input_num_0_out
  or nvdla_sdp_rdma_d_status_nan_input_num_0_out
  ) begin
  case (reg_offset_rd_int)
     (32'ha048 & 32'h00000fff): begin
                            reg_rd_data = nvdla_sdp_rdma_d_bn_base_addr_high_0_out ;
                            end
     (32'ha044 & 32'h00000fff): begin
                            reg_rd_data = nvdla_sdp_rdma_d_bn_base_addr_low_0_out ;
                            end
     (32'ha054 & 32'h00000fff): begin
                            reg_rd_data = nvdla_sdp_rdma_d_bn_batch_stride_0_out ;
                            end
     (32'ha04c & 32'h00000fff): begin
                            reg_rd_data = nvdla_sdp_rdma_d_bn_line_stride_0_out ;
                            end
     (32'ha050 & 32'h00000fff): begin
                            reg_rd_data = nvdla_sdp_rdma_d_bn_surface_stride_0_out ;
                            end
     (32'ha028 & 32'h00000fff): begin
                            reg_rd_data = nvdla_sdp_rdma_d_brdma_cfg_0_out ;
                            end
     (32'ha030 & 32'h00000fff): begin
                            reg_rd_data = nvdla_sdp_rdma_d_bs_base_addr_high_0_out ;
                            end
     (32'ha02c & 32'h00000fff): begin
                            reg_rd_data = nvdla_sdp_rdma_d_bs_base_addr_low_0_out ;
                            end
     (32'ha03c & 32'h00000fff): begin
                            reg_rd_data = nvdla_sdp_rdma_d_bs_batch_stride_0_out ;
                            end
     (32'ha034 & 32'h00000fff): begin
                            reg_rd_data = nvdla_sdp_rdma_d_bs_line_stride_0_out ;
                            end
     (32'ha038 & 32'h00000fff): begin
                            reg_rd_data = nvdla_sdp_rdma_d_bs_surface_stride_0_out ;
                            end
     (32'ha014 & 32'h00000fff): begin
                            reg_rd_data = nvdla_sdp_rdma_d_data_cube_channel_0_out ;
                            end
     (32'ha010 & 32'h00000fff): begin
                            reg_rd_data = nvdla_sdp_rdma_d_data_cube_height_0_out ;
                            end
     (32'ha00c & 32'h00000fff): begin
                            reg_rd_data = nvdla_sdp_rdma_d_data_cube_width_0_out ;
                            end
     (32'ha058 & 32'h00000fff): begin
                            reg_rd_data = nvdla_sdp_rdma_d_erdma_cfg_0_out ;
                            end
     (32'ha060 & 32'h00000fff): begin
                            reg_rd_data = nvdla_sdp_rdma_d_ew_base_addr_high_0_out ;
                            end
     (32'ha05c & 32'h00000fff): begin
                            reg_rd_data = nvdla_sdp_rdma_d_ew_base_addr_low_0_out ;
                            end
     (32'ha06c & 32'h00000fff): begin
                            reg_rd_data = nvdla_sdp_rdma_d_ew_batch_stride_0_out ;
                            end
     (32'ha064 & 32'h00000fff): begin
                            reg_rd_data = nvdla_sdp_rdma_d_ew_line_stride_0_out ;
                            end
     (32'ha068 & 32'h00000fff): begin
                            reg_rd_data = nvdla_sdp_rdma_d_ew_surface_stride_0_out ;
                            end
     (32'ha070 & 32'h00000fff): begin
                            reg_rd_data = nvdla_sdp_rdma_d_feature_mode_cfg_0_out ;
                            end
     (32'ha040 & 32'h00000fff): begin
                            reg_rd_data = nvdla_sdp_rdma_d_nrdma_cfg_0_out ;
                            end
     (32'ha008 & 32'h00000fff): begin
                            reg_rd_data = nvdla_sdp_rdma_d_op_enable_0_out ;
                            end
     (32'ha088 & 32'h00000fff): begin
                            reg_rd_data = nvdla_sdp_rdma_d_perf_brdma_read_stall_0_out ;
                            end
     (32'ha080 & 32'h00000fff): begin
                            reg_rd_data = nvdla_sdp_rdma_d_perf_enable_0_out ;
                            end
     (32'ha090 & 32'h00000fff): begin
                            reg_rd_data = nvdla_sdp_rdma_d_perf_erdma_read_stall_0_out ;
                            end
     (32'ha084 & 32'h00000fff): begin
                            reg_rd_data = nvdla_sdp_rdma_d_perf_mrdma_read_stall_0_out ;
                            end
     (32'ha08c & 32'h00000fff): begin
                            reg_rd_data = nvdla_sdp_rdma_d_perf_nrdma_read_stall_0_out ;
                            end
     (32'ha01c & 32'h00000fff): begin
                            reg_rd_data = nvdla_sdp_rdma_d_src_base_addr_high_0_out ;
                            end
     (32'ha018 & 32'h00000fff): begin
                            reg_rd_data = nvdla_sdp_rdma_d_src_base_addr_low_0_out ;
                            end
     (32'ha074 & 32'h00000fff): begin
                            reg_rd_data = nvdla_sdp_rdma_d_src_dma_cfg_0_out ;
                            end
     (32'ha020 & 32'h00000fff): begin
                            reg_rd_data = nvdla_sdp_rdma_d_src_line_stride_0_out ;
                            end
     (32'ha024 & 32'h00000fff): begin
                            reg_rd_data = nvdla_sdp_rdma_d_src_surface_stride_0_out ;
                            end
     (32'ha07c & 32'h00000fff): begin
                            reg_rd_data = nvdla_sdp_rdma_d_status_inf_input_num_0_out ;
                            end
     (32'ha078 & 32'h00000fff): begin
                            reg_rd_data = nvdla_sdp_rdma_d_status_nan_input_num_0_out ;
                            end
    default: reg_rd_data = {32{1'b0}};
  endcase
end
//spyglass enable_block W338, W263
// spyglass disable_block STARC-2.10.1.6, NoConstWithXZ, W443
// Register flop declarations
always @(posedge nvdla_core_clk) begin
  if (!nvdla_core_rstn) begin
    bn_base_addr_high[31:0] <= 32'h0;
    bn_base_addr_low[31:0] <= {(32){1'b0}};
    bn_batch_stride[31:0] <= {(32){1'b0}};
    bn_line_stride[31:0] <= {(32){1'b0}};
    bn_surface_stride[31:0] <= {(32){1'b0}};
    brdma_data_mode <= 1'b0;
    brdma_data_size <= 1'b0;
    brdma_data_use[1:0] <= 2'b00;
    brdma_disable <= 1'b1;
    brdma_ram_type <= 1'b0;
    bs_base_addr_high[31:0] <= 32'h0;
    bs_base_addr_low[31:0] <= {(32){1'b0}};
    bs_batch_stride[31:0] <= {(32){1'b0}};
    bs_line_stride[31:0] <= {(32){1'b0}};
    bs_surface_stride[31:0] <= {(32){1'b0}};
    channel[12:0] <= 13'b0000000000000;
    height[12:0] <= 13'b0000000000000;
    width[12:0] <= 13'b0000000000000;
    erdma_data_mode <= 1'b0;
    erdma_data_size <= 1'b0;
    erdma_data_use[1:0] <= 2'b00;
    erdma_disable <= 1'b1;
    erdma_ram_type <= 1'b0;
    ew_base_addr_high[31:0] <= 32'h0;
    ew_base_addr_low[31:0] <= {(32){1'b0}};
    ew_batch_stride[31:0] <= {(32){1'b0}};
    ew_line_stride[31:0] <= {(32){1'b0}};
    ew_surface_stride[31:0] <= {(32){1'b0}};
    batch_number[4:0] <= 5'b00000;
    flying_mode <= 1'b0;
    in_precision[1:0] <= 2'b01;
    out_precision[1:0] <= 2'b00;
    proc_precision[1:0] <= 2'b01;
    winograd <= 1'b0;
    nrdma_data_mode <= 1'b0;
    nrdma_data_size <= 1'b0;
    nrdma_data_use[1:0] <= 2'b00;
    nrdma_disable <= 1'b1;
    nrdma_ram_type <= 1'b0;
    perf_dma_en <= 1'b0;
    perf_nan_inf_count_en <= 1'b0;
    src_base_addr_high[31:0] <= 32'h0;
    src_base_addr_low[31:0] <= {(32){1'b0}};
    src_ram_type <= 1'b0;
    src_line_stride[31:0] <= {(32){1'b0}};
    src_surface_stride[31:0] <= {(32){1'b0}};
  end else begin
// Register: NVDLA_SDP_RDMA_D_BN_BASE_ADDR_HIGH_0 Field: bn_base_addr_high
  if (nvdla_sdp_rdma_d_bn_base_addr_high_0_wren) begin
    bn_base_addr_high[31:0] <= reg_wr_data[31:0];
  end
// Register: NVDLA_SDP_RDMA_D_BN_BASE_ADDR_LOW_0 Field: bn_base_addr_low
  if (nvdla_sdp_rdma_d_bn_base_addr_low_0_wren) begin
    bn_base_addr_low[31:0] <= reg_wr_data[31:0];
  end
// Register: NVDLA_SDP_RDMA_D_BN_BATCH_STRIDE_0 Field: bn_batch_stride
  if (nvdla_sdp_rdma_d_bn_batch_stride_0_wren) begin
    bn_batch_stride[31:0] <= reg_wr_data[31:0];
  end
// Register: NVDLA_SDP_RDMA_D_BN_LINE_STRIDE_0 Field: bn_line_stride
  if (nvdla_sdp_rdma_d_bn_line_stride_0_wren) begin
    bn_line_stride[31:0] <= reg_wr_data[31:0];
  end
// Register: NVDLA_SDP_RDMA_D_BN_SURFACE_STRIDE_0 Field: bn_surface_stride
  if (nvdla_sdp_rdma_d_bn_surface_stride_0_wren) begin
    bn_surface_stride[31:0] <= reg_wr_data[31:0];
  end
// Register: NVDLA_SDP_RDMA_D_BRDMA_CFG_0 Field: brdma_data_mode
  if (nvdla_sdp_rdma_d_brdma_cfg_0_wren) begin
    brdma_data_mode <= reg_wr_data[4];
  end
// Register: NVDLA_SDP_RDMA_D_BRDMA_CFG_0 Field: brdma_data_size
  if (nvdla_sdp_rdma_d_brdma_cfg_0_wren) begin
    brdma_data_size <= reg_wr_data[3];
  end
// Register: NVDLA_SDP_RDMA_D_BRDMA_CFG_0 Field: brdma_data_use
  if (nvdla_sdp_rdma_d_brdma_cfg_0_wren) begin
    brdma_data_use[1:0] <= reg_wr_data[2:1];
  end
// Register: NVDLA_SDP_RDMA_D_BRDMA_CFG_0 Field: brdma_disable
  if (nvdla_sdp_rdma_d_brdma_cfg_0_wren) begin
    brdma_disable <= reg_wr_data[0];
  end
// Register: NVDLA_SDP_RDMA_D_BRDMA_CFG_0 Field: brdma_ram_type
  if (nvdla_sdp_rdma_d_brdma_cfg_0_wren) begin
    brdma_ram_type <= reg_wr_data[5];
  end
// Register: NVDLA_SDP_RDMA_D_BS_BASE_ADDR_HIGH_0 Field: bs_base_addr_high
  if (nvdla_sdp_rdma_d_bs_base_addr_high_0_wren) begin
    bs_base_addr_high[31:0] <= reg_wr_data[31:0];
  end
// Register: NVDLA_SDP_RDMA_D_BS_BASE_ADDR_LOW_0 Field: bs_base_addr_low
  if (nvdla_sdp_rdma_d_bs_base_addr_low_0_wren) begin
    bs_base_addr_low[31:0] <= reg_wr_data[31:0];
  end
// Register: NVDLA_SDP_RDMA_D_BS_BATCH_STRIDE_0 Field: bs_batch_stride
  if (nvdla_sdp_rdma_d_bs_batch_stride_0_wren) begin
    bs_batch_stride[31:0] <= reg_wr_data[31:0];
  end
// Register: NVDLA_SDP_RDMA_D_BS_LINE_STRIDE_0 Field: bs_line_stride
  if (nvdla_sdp_rdma_d_bs_line_stride_0_wren) begin
    bs_line_stride[31:0] <= reg_wr_data[31:0];
  end
// Register: NVDLA_SDP_RDMA_D_BS_SURFACE_STRIDE_0 Field: bs_surface_stride
  if (nvdla_sdp_rdma_d_bs_surface_stride_0_wren) begin
    bs_surface_stride[31:0] <= reg_wr_data[31:0];
  end
// Register: NVDLA_SDP_RDMA_D_DATA_CUBE_CHANNEL_0 Field: channel
  if (nvdla_sdp_rdma_d_data_cube_channel_0_wren) begin
    channel[12:0] <= reg_wr_data[12:0];
  end
// Register: NVDLA_SDP_RDMA_D_DATA_CUBE_HEIGHT_0 Field: height
  if (nvdla_sdp_rdma_d_data_cube_height_0_wren) begin
    height[12:0] <= reg_wr_data[12:0];
  end
// Register: NVDLA_SDP_RDMA_D_DATA_CUBE_WIDTH_0 Field: width
  if (nvdla_sdp_rdma_d_data_cube_width_0_wren) begin
    width[12:0] <= reg_wr_data[12:0];
  end
// Register: NVDLA_SDP_RDMA_D_ERDMA_CFG_0 Field: erdma_data_mode
  if (nvdla_sdp_rdma_d_erdma_cfg_0_wren) begin
    erdma_data_mode <= reg_wr_data[4];
  end
// Register: NVDLA_SDP_RDMA_D_ERDMA_CFG_0 Field: erdma_data_size
  if (nvdla_sdp_rdma_d_erdma_cfg_0_wren) begin
    erdma_data_size <= reg_wr_data[3];
  end
// Register: NVDLA_SDP_RDMA_D_ERDMA_CFG_0 Field: erdma_data_use
  if (nvdla_sdp_rdma_d_erdma_cfg_0_wren) begin
    erdma_data_use[1:0] <= reg_wr_data[2:1];
  end
// Register: NVDLA_SDP_RDMA_D_ERDMA_CFG_0 Field: erdma_disable
  if (nvdla_sdp_rdma_d_erdma_cfg_0_wren) begin
    erdma_disable <= reg_wr_data[0];
  end
// Register: NVDLA_SDP_RDMA_D_ERDMA_CFG_0 Field: erdma_ram_type
  if (nvdla_sdp_rdma_d_erdma_cfg_0_wren) begin
    erdma_ram_type <= reg_wr_data[5];
  end
// Register: NVDLA_SDP_RDMA_D_EW_BASE_ADDR_HIGH_0 Field: ew_base_addr_high
  if (nvdla_sdp_rdma_d_ew_base_addr_high_0_wren) begin
    ew_base_addr_high[31:0] <= reg_wr_data[31:0];
  end
// Register: NVDLA_SDP_RDMA_D_EW_BASE_ADDR_LOW_0 Field: ew_base_addr_low
  if (nvdla_sdp_rdma_d_ew_base_addr_low_0_wren) begin
    ew_base_addr_low[31:0] <= reg_wr_data[31:0];
  end
// Register: NVDLA_SDP_RDMA_D_EW_BATCH_STRIDE_0 Field: ew_batch_stride
  if (nvdla_sdp_rdma_d_ew_batch_stride_0_wren) begin
    ew_batch_stride[31:0] <= reg_wr_data[31:0];
  end
// Register: NVDLA_SDP_RDMA_D_EW_LINE_STRIDE_0 Field: ew_line_stride
  if (nvdla_sdp_rdma_d_ew_line_stride_0_wren) begin
    ew_line_stride[31:0] <= reg_wr_data[31:0];
  end
// Register: NVDLA_SDP_RDMA_D_EW_SURFACE_STRIDE_0 Field: ew_surface_stride
  if (nvdla_sdp_rdma_d_ew_surface_stride_0_wren) begin
    ew_surface_stride[31:0] <= reg_wr_data[31:0];
  end
// Register: NVDLA_SDP_RDMA_D_FEATURE_MODE_CFG_0 Field: batch_number
  if (nvdla_sdp_rdma_d_feature_mode_cfg_0_wren) begin
    batch_number[4:0] <= reg_wr_data[12:8];
  end
// Register: NVDLA_SDP_RDMA_D_FEATURE_MODE_CFG_0 Field: flying_mode
  if (nvdla_sdp_rdma_d_feature_mode_cfg_0_wren) begin
    flying_mode <= reg_wr_data[0];
  end
// Register: NVDLA_SDP_RDMA_D_FEATURE_MODE_CFG_0 Field: in_precision
  if (nvdla_sdp_rdma_d_feature_mode_cfg_0_wren) begin
    in_precision[1:0] <= reg_wr_data[3:2];
  end
// Register: NVDLA_SDP_RDMA_D_FEATURE_MODE_CFG_0 Field: out_precision
  if (nvdla_sdp_rdma_d_feature_mode_cfg_0_wren) begin
    out_precision[1:0] <= reg_wr_data[7:6];
  end
// Register: NVDLA_SDP_RDMA_D_FEATURE_MODE_CFG_0 Field: proc_precision
  if (nvdla_sdp_rdma_d_feature_mode_cfg_0_wren) begin
    proc_precision[1:0] <= reg_wr_data[5:4];
  end
// Register: NVDLA_SDP_RDMA_D_FEATURE_MODE_CFG_0 Field: winograd
  if (nvdla_sdp_rdma_d_feature_mode_cfg_0_wren) begin
    winograd <= reg_wr_data[1];
  end
// Register: NVDLA_SDP_RDMA_D_NRDMA_CFG_0 Field: nrdma_data_mode
  if (nvdla_sdp_rdma_d_nrdma_cfg_0_wren) begin
    nrdma_data_mode <= reg_wr_data[4];
  end
// Register: NVDLA_SDP_RDMA_D_NRDMA_CFG_0 Field: nrdma_data_size
  if (nvdla_sdp_rdma_d_nrdma_cfg_0_wren) begin
    nrdma_data_size <= reg_wr_data[3];
  end
// Register: NVDLA_SDP_RDMA_D_NRDMA_CFG_0 Field: nrdma_data_use
  if (nvdla_sdp_rdma_d_nrdma_cfg_0_wren) begin
    nrdma_data_use[1:0] <= reg_wr_data[2:1];
  end
// Register: NVDLA_SDP_RDMA_D_NRDMA_CFG_0 Field: nrdma_disable
  if (nvdla_sdp_rdma_d_nrdma_cfg_0_wren) begin
    nrdma_disable <= reg_wr_data[0];
  end
// Register: NVDLA_SDP_RDMA_D_NRDMA_CFG_0 Field: nrdma_ram_type
  if (nvdla_sdp_rdma_d_nrdma_cfg_0_wren) begin
    nrdma_ram_type <= reg_wr_data[5];
  end
// Not generating flops for field NVDLA_SDP_RDMA_D_OP_ENABLE_0::op_en (to be implemented outside)
// Not generating flops for read-only field NVDLA_SDP_RDMA_D_PERF_BRDMA_READ_STALL_0::brdma_stall
// Register: NVDLA_SDP_RDMA_D_PERF_ENABLE_0 Field: perf_dma_en
  if (nvdla_sdp_rdma_d_perf_enable_0_wren) begin
    perf_dma_en <= reg_wr_data[0];
  end
// Register: NVDLA_SDP_RDMA_D_PERF_ENABLE_0 Field: perf_nan_inf_count_en
  if (nvdla_sdp_rdma_d_perf_enable_0_wren) begin
    perf_nan_inf_count_en <= reg_wr_data[1];
  end
// Not generating flops for read-only field NVDLA_SDP_RDMA_D_PERF_ERDMA_READ_STALL_0::erdma_stall
// Not generating flops for read-only field NVDLA_SDP_RDMA_D_PERF_MRDMA_READ_STALL_0::mrdma_stall
// Not generating flops for read-only field NVDLA_SDP_RDMA_D_PERF_NRDMA_READ_STALL_0::nrdma_stall
// Register: NVDLA_SDP_RDMA_D_SRC_BASE_ADDR_HIGH_0 Field: src_base_addr_high
  if (nvdla_sdp_rdma_d_src_base_addr_high_0_wren) begin
    src_base_addr_high[31:0] <= reg_wr_data[31:0];
  end
// Register: NVDLA_SDP_RDMA_D_SRC_BASE_ADDR_LOW_0 Field: src_base_addr_low
  if (nvdla_sdp_rdma_d_src_base_addr_low_0_wren) begin
    src_base_addr_low[31:0] <= reg_wr_data[31:0];
  end
// Register: NVDLA_SDP_RDMA_D_SRC_DMA_CFG_0 Field: src_ram_type
  if (nvdla_sdp_rdma_d_src_dma_cfg_0_wren) begin
    src_ram_type <= reg_wr_data[0];
  end
// Register: NVDLA_SDP_RDMA_D_SRC_LINE_STRIDE_0 Field: src_line_stride
  if (nvdla_sdp_rdma_d_src_line_stride_0_wren) begin
    src_line_stride[31:0] <= reg_wr_data[31:0];
  end
// Register: NVDLA_SDP_RDMA_D_SRC_SURFACE_STRIDE_0 Field: src_surface_stride
  if (nvdla_sdp_rdma_d_src_surface_stride_0_wren) begin
    src_surface_stride[31:0] <= reg_wr_data[31:0];
  end
// Not generating flops for read-only field NVDLA_SDP_RDMA_D_STATUS_INF_INPUT_NUM_0::status_inf_input_num
// Not generating flops for read-only field NVDLA_SDP_RDMA_D_STATUS_NAN_INPUT_NUM_0::status_nan_input_num
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
      (32'ha048 & 32'h00000fff): if (arreggen_dump) $display("%t:%m: reg wr: NVDLA_SDP_RDMA_D_BN_BASE_ADDR_HIGH_0 = 0x%h (old value: 0x%h, 0x%b))", $time, reg_wr_data, nvdla_sdp_rdma_d_bn_base_addr_high_0_out, nvdla_sdp_rdma_d_bn_base_addr_high_0_out);
      (32'ha044 & 32'h00000fff): if (arreggen_dump) $display("%t:%m: reg wr: NVDLA_SDP_RDMA_D_BN_BASE_ADDR_LOW_0 = 0x%h (old value: 0x%h, 0x%b))", $time, reg_wr_data, nvdla_sdp_rdma_d_bn_base_addr_low_0_out, nvdla_sdp_rdma_d_bn_base_addr_low_0_out);
      (32'ha054 & 32'h00000fff): if (arreggen_dump) $display("%t:%m: reg wr: NVDLA_SDP_RDMA_D_BN_BATCH_STRIDE_0 = 0x%h (old value: 0x%h, 0x%b))", $time, reg_wr_data, nvdla_sdp_rdma_d_bn_batch_stride_0_out, nvdla_sdp_rdma_d_bn_batch_stride_0_out);
      (32'ha04c & 32'h00000fff): if (arreggen_dump) $display("%t:%m: reg wr: NVDLA_SDP_RDMA_D_BN_LINE_STRIDE_0 = 0x%h (old value: 0x%h, 0x%b))", $time, reg_wr_data, nvdla_sdp_rdma_d_bn_line_stride_0_out, nvdla_sdp_rdma_d_bn_line_stride_0_out);
      (32'ha050 & 32'h00000fff): if (arreggen_dump) $display("%t:%m: reg wr: NVDLA_SDP_RDMA_D_BN_SURFACE_STRIDE_0 = 0x%h (old value: 0x%h, 0x%b))", $time, reg_wr_data, nvdla_sdp_rdma_d_bn_surface_stride_0_out, nvdla_sdp_rdma_d_bn_surface_stride_0_out);
      (32'ha028 & 32'h00000fff): if (arreggen_dump) $display("%t:%m: reg wr: NVDLA_SDP_RDMA_D_BRDMA_CFG_0 = 0x%h (old value: 0x%h, 0x%b))", $time, reg_wr_data, nvdla_sdp_rdma_d_brdma_cfg_0_out, nvdla_sdp_rdma_d_brdma_cfg_0_out);
      (32'ha030 & 32'h00000fff): if (arreggen_dump) $display("%t:%m: reg wr: NVDLA_SDP_RDMA_D_BS_BASE_ADDR_HIGH_0 = 0x%h (old value: 0x%h, 0x%b))", $time, reg_wr_data, nvdla_sdp_rdma_d_bs_base_addr_high_0_out, nvdla_sdp_rdma_d_bs_base_addr_high_0_out);
      (32'ha02c & 32'h00000fff): if (arreggen_dump) $display("%t:%m: reg wr: NVDLA_SDP_RDMA_D_BS_BASE_ADDR_LOW_0 = 0x%h (old value: 0x%h, 0x%b))", $time, reg_wr_data, nvdla_sdp_rdma_d_bs_base_addr_low_0_out, nvdla_sdp_rdma_d_bs_base_addr_low_0_out);
      (32'ha03c & 32'h00000fff): if (arreggen_dump) $display("%t:%m: reg wr: NVDLA_SDP_RDMA_D_BS_BATCH_STRIDE_0 = 0x%h (old value: 0x%h, 0x%b))", $time, reg_wr_data, nvdla_sdp_rdma_d_bs_batch_stride_0_out, nvdla_sdp_rdma_d_bs_batch_stride_0_out);
      (32'ha034 & 32'h00000fff): if (arreggen_dump) $display("%t:%m: reg wr: NVDLA_SDP_RDMA_D_BS_LINE_STRIDE_0 = 0x%h (old value: 0x%h, 0x%b))", $time, reg_wr_data, nvdla_sdp_rdma_d_bs_line_stride_0_out, nvdla_sdp_rdma_d_bs_line_stride_0_out);
      (32'ha038 & 32'h00000fff): if (arreggen_dump) $display("%t:%m: reg wr: NVDLA_SDP_RDMA_D_BS_SURFACE_STRIDE_0 = 0x%h (old value: 0x%h, 0x%b))", $time, reg_wr_data, nvdla_sdp_rdma_d_bs_surface_stride_0_out, nvdla_sdp_rdma_d_bs_surface_stride_0_out);
      (32'ha014 & 32'h00000fff): if (arreggen_dump) $display("%t:%m: reg wr: NVDLA_SDP_RDMA_D_DATA_CUBE_CHANNEL_0 = 0x%h (old value: 0x%h, 0x%b))", $time, reg_wr_data, nvdla_sdp_rdma_d_data_cube_channel_0_out, nvdla_sdp_rdma_d_data_cube_channel_0_out);
      (32'ha010 & 32'h00000fff): if (arreggen_dump) $display("%t:%m: reg wr: NVDLA_SDP_RDMA_D_DATA_CUBE_HEIGHT_0 = 0x%h (old value: 0x%h, 0x%b))", $time, reg_wr_data, nvdla_sdp_rdma_d_data_cube_height_0_out, nvdla_sdp_rdma_d_data_cube_height_0_out);
      (32'ha00c & 32'h00000fff): if (arreggen_dump) $display("%t:%m: reg wr: NVDLA_SDP_RDMA_D_DATA_CUBE_WIDTH_0 = 0x%h (old value: 0x%h, 0x%b))", $time, reg_wr_data, nvdla_sdp_rdma_d_data_cube_width_0_out, nvdla_sdp_rdma_d_data_cube_width_0_out);
      (32'ha058 & 32'h00000fff): if (arreggen_dump) $display("%t:%m: reg wr: NVDLA_SDP_RDMA_D_ERDMA_CFG_0 = 0x%h (old value: 0x%h, 0x%b))", $time, reg_wr_data, nvdla_sdp_rdma_d_erdma_cfg_0_out, nvdla_sdp_rdma_d_erdma_cfg_0_out);
      (32'ha060 & 32'h00000fff): if (arreggen_dump) $display("%t:%m: reg wr: NVDLA_SDP_RDMA_D_EW_BASE_ADDR_HIGH_0 = 0x%h (old value: 0x%h, 0x%b))", $time, reg_wr_data, nvdla_sdp_rdma_d_ew_base_addr_high_0_out, nvdla_sdp_rdma_d_ew_base_addr_high_0_out);
      (32'ha05c & 32'h00000fff): if (arreggen_dump) $display("%t:%m: reg wr: NVDLA_SDP_RDMA_D_EW_BASE_ADDR_LOW_0 = 0x%h (old value: 0x%h, 0x%b))", $time, reg_wr_data, nvdla_sdp_rdma_d_ew_base_addr_low_0_out, nvdla_sdp_rdma_d_ew_base_addr_low_0_out);
      (32'ha06c & 32'h00000fff): if (arreggen_dump) $display("%t:%m: reg wr: NVDLA_SDP_RDMA_D_EW_BATCH_STRIDE_0 = 0x%h (old value: 0x%h, 0x%b))", $time, reg_wr_data, nvdla_sdp_rdma_d_ew_batch_stride_0_out, nvdla_sdp_rdma_d_ew_batch_stride_0_out);
      (32'ha064 & 32'h00000fff): if (arreggen_dump) $display("%t:%m: reg wr: NVDLA_SDP_RDMA_D_EW_LINE_STRIDE_0 = 0x%h (old value: 0x%h, 0x%b))", $time, reg_wr_data, nvdla_sdp_rdma_d_ew_line_stride_0_out, nvdla_sdp_rdma_d_ew_line_stride_0_out);
      (32'ha068 & 32'h00000fff): if (arreggen_dump) $display("%t:%m: reg wr: NVDLA_SDP_RDMA_D_EW_SURFACE_STRIDE_0 = 0x%h (old value: 0x%h, 0x%b))", $time, reg_wr_data, nvdla_sdp_rdma_d_ew_surface_stride_0_out, nvdla_sdp_rdma_d_ew_surface_stride_0_out);
      (32'ha070 & 32'h00000fff): if (arreggen_dump) $display("%t:%m: reg wr: NVDLA_SDP_RDMA_D_FEATURE_MODE_CFG_0 = 0x%h (old value: 0x%h, 0x%b))", $time, reg_wr_data, nvdla_sdp_rdma_d_feature_mode_cfg_0_out, nvdla_sdp_rdma_d_feature_mode_cfg_0_out);
      (32'ha040 & 32'h00000fff): if (arreggen_dump) $display("%t:%m: reg wr: NVDLA_SDP_RDMA_D_NRDMA_CFG_0 = 0x%h (old value: 0x%h, 0x%b))", $time, reg_wr_data, nvdla_sdp_rdma_d_nrdma_cfg_0_out, nvdla_sdp_rdma_d_nrdma_cfg_0_out);
      (32'ha008 & 32'h00000fff): if (arreggen_dump) $display("%t:%m: reg wr: NVDLA_SDP_RDMA_D_OP_ENABLE_0 = 0x%h (old value: 0x%h, 0x%b))", $time, reg_wr_data, nvdla_sdp_rdma_d_op_enable_0_out, nvdla_sdp_rdma_d_op_enable_0_out);
      (32'ha088 & 32'h00000fff): begin
          if (arreggen_dump) $display("%t:%m: read-only reg wr: NVDLA_SDP_RDMA_D_PERF_BRDMA_READ_STALL_0 = 0x%h", $time, reg_wr_data);
          if (arreggen_abort_on_rowr) begin $display("ERROR: write to read-only register!"); $finish; end
        end
      (32'ha080 & 32'h00000fff): if (arreggen_dump) $display("%t:%m: reg wr: NVDLA_SDP_RDMA_D_PERF_ENABLE_0 = 0x%h (old value: 0x%h, 0x%b))", $time, reg_wr_data, nvdla_sdp_rdma_d_perf_enable_0_out, nvdla_sdp_rdma_d_perf_enable_0_out);
      (32'ha090 & 32'h00000fff): begin
          if (arreggen_dump) $display("%t:%m: read-only reg wr: NVDLA_SDP_RDMA_D_PERF_ERDMA_READ_STALL_0 = 0x%h", $time, reg_wr_data);
          if (arreggen_abort_on_rowr) begin $display("ERROR: write to read-only register!"); $finish; end
        end
      (32'ha084 & 32'h00000fff): begin
          if (arreggen_dump) $display("%t:%m: read-only reg wr: NVDLA_SDP_RDMA_D_PERF_MRDMA_READ_STALL_0 = 0x%h", $time, reg_wr_data);
          if (arreggen_abort_on_rowr) begin $display("ERROR: write to read-only register!"); $finish; end
        end
      (32'ha08c & 32'h00000fff): begin
          if (arreggen_dump) $display("%t:%m: read-only reg wr: NVDLA_SDP_RDMA_D_PERF_NRDMA_READ_STALL_0 = 0x%h", $time, reg_wr_data);
          if (arreggen_abort_on_rowr) begin $display("ERROR: write to read-only register!"); $finish; end
        end
      (32'ha01c & 32'h00000fff): if (arreggen_dump) $display("%t:%m: reg wr: NVDLA_SDP_RDMA_D_SRC_BASE_ADDR_HIGH_0 = 0x%h (old value: 0x%h, 0x%b))", $time, reg_wr_data, nvdla_sdp_rdma_d_src_base_addr_high_0_out, nvdla_sdp_rdma_d_src_base_addr_high_0_out);
      (32'ha018 & 32'h00000fff): if (arreggen_dump) $display("%t:%m: reg wr: NVDLA_SDP_RDMA_D_SRC_BASE_ADDR_LOW_0 = 0x%h (old value: 0x%h, 0x%b))", $time, reg_wr_data, nvdla_sdp_rdma_d_src_base_addr_low_0_out, nvdla_sdp_rdma_d_src_base_addr_low_0_out);
      (32'ha074 & 32'h00000fff): if (arreggen_dump) $display("%t:%m: reg wr: NVDLA_SDP_RDMA_D_SRC_DMA_CFG_0 = 0x%h (old value: 0x%h, 0x%b))", $time, reg_wr_data, nvdla_sdp_rdma_d_src_dma_cfg_0_out, nvdla_sdp_rdma_d_src_dma_cfg_0_out);
      (32'ha020 & 32'h00000fff): if (arreggen_dump) $display("%t:%m: reg wr: NVDLA_SDP_RDMA_D_SRC_LINE_STRIDE_0 = 0x%h (old value: 0x%h, 0x%b))", $time, reg_wr_data, nvdla_sdp_rdma_d_src_line_stride_0_out, nvdla_sdp_rdma_d_src_line_stride_0_out);
      (32'ha024 & 32'h00000fff): if (arreggen_dump) $display("%t:%m: reg wr: NVDLA_SDP_RDMA_D_SRC_SURFACE_STRIDE_0 = 0x%h (old value: 0x%h, 0x%b))", $time, reg_wr_data, nvdla_sdp_rdma_d_src_surface_stride_0_out, nvdla_sdp_rdma_d_src_surface_stride_0_out);
      (32'ha07c & 32'h00000fff): begin
          if (arreggen_dump) $display("%t:%m: read-only reg wr: NVDLA_SDP_RDMA_D_STATUS_INF_INPUT_NUM_0 = 0x%h", $time, reg_wr_data);
          if (arreggen_abort_on_rowr) begin $display("ERROR: write to read-only register!"); $finish; end
        end
      (32'ha078 & 32'h00000fff): begin
          if (arreggen_dump) $display("%t:%m: read-only reg wr: NVDLA_SDP_RDMA_D_STATUS_NAN_INPUT_NUM_0 = 0x%h", $time, reg_wr_data);
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
endmodule // NV_NVDLA_SDP_RDMA_REG_dual