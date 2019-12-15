module NV_soDLA_CSC_dual_reg( // @[:@3.2]
  input         nvdla_core_rstn, // @[:@5.4]
  input         nvdla_core_clk, // @[:@6.4]
  output [31:0] reg_rd_data, // @[:@6.4]
  input  [11:0] reg_offset, // @[:@6.4]
  input  [31:0] reg_wr_data, // @[:@6.4]
  input         reg_wr_en, // @[:@6.4]
  output [20:0] atomics, // @[:@6.4]
  output [4:0]  data_bank, // @[:@6.4]
  output [4:0]  weight_bank, // @[:@6.4]
  output [4:0]  batches, // @[:@6.4]
  output [2:0]  conv_x_stride_ext, // @[:@6.4]
  output [2:0]  conv_y_stride_ext, // @[:@6.4]
  output [31:0] cya, // @[:@6.4]
  output        datain_format, // @[:@6.4]
  output [12:0] datain_height_ext, // @[:@6.4]
  output [12:0] datain_width_ext, // @[:@6.4]
  output [12:0] datain_channel_ext, // @[:@6.4]
  output [12:0] dataout_height, // @[:@6.4]
  output [12:0] dataout_width, // @[:@6.4]
  output [12:0] dataout_channel, // @[:@6.4]
  output [4:0]  x_dilation_ext, // @[:@6.4]
  output [4:0]  y_dilation_ext, // @[:@6.4]
  output [13:0] entries, // @[:@6.4]
  output        conv_mode, // @[:@6.4]
  output        data_reuse, // @[:@6.4]
  output [1:0]  in_precision, // @[:@6.4]
  output [1:0]  proc_precision, // @[:@6.4]
  output        skip_data_rls, // @[:@6.4]
  output        skip_weight_rls, // @[:@6.4]
  output        weight_reuse, // @[:@6.4]
  output [1:0]  y_extension, // @[:@6.4]
  output [1:0]  pra_truncate, // @[:@6.4]
  output [11:0] rls_slices, // @[:@6.4]
  output [31:0] weight_bytes, // @[:@6.4]
  output        weight_format, // @[:@6.4]
  output [4:0]  weight_height_ext, // @[:@6.4]
  output [4:0]  weight_width_ext, // @[:@6.4]
  output [12:0] weight_channel_ext, // @[:@6.4]
  output [12:0] weight_kernel, // @[:@6.4]
  output [27:0] wmb_bytes, // @[:@6.4]
  output [4:0]  pad_left, // @[:@6.4]
  output [4:0]  pad_top, // @[:@6.4]
  output [15:0] pad_value, // @[:@6.4]
  output        op_en_trigger, // @[:@6.4]
  input         op_en // @[:@6.4]
);
  wire [31:0] _GEN_37; // @[NV_NVDLA_CSC_dual_reg.scala 47:53:@8.4]
  wire  _T_94; // @[NV_NVDLA_CSC_dual_reg.scala 47:53:@8.4]
  wire  nvdla_csc_d_atomics_0_wren; // @[NV_NVDLA_CSC_dual_reg.scala 47:77:@9.4]
  wire  _T_96; // @[NV_NVDLA_CSC_dual_reg.scala 48:50:@10.4]
  wire  nvdla_csc_d_bank_0_wren; // @[NV_NVDLA_CSC_dual_reg.scala 48:75:@11.4]
  wire  _T_98; // @[NV_NVDLA_CSC_dual_reg.scala 49:58:@12.4]
  wire  nvdla_csc_d_batch_number_0_wren; // @[NV_NVDLA_CSC_dual_reg.scala 49:83:@13.4]
  wire  _T_100; // @[NV_NVDLA_CSC_dual_reg.scala 50:61:@14.4]
  wire  nvdla_csc_d_conv_stride_ext_0_wren; // @[NV_NVDLA_CSC_dual_reg.scala 50:86:@15.4]
  wire  _T_102; // @[NV_NVDLA_CSC_dual_reg.scala 51:49:@16.4]
  wire  nvdla_csc_d_cya_0_wren; // @[NV_NVDLA_CSC_dual_reg.scala 51:73:@17.4]
  wire  _T_104; // @[NV_NVDLA_CSC_dual_reg.scala 52:59:@18.4]
  wire  nvdla_csc_d_datain_format_0_wren; // @[NV_NVDLA_CSC_dual_reg.scala 52:83:@19.4]
  wire  _T_106; // @[NV_NVDLA_CSC_dual_reg.scala 53:63:@20.4]
  wire  nvdla_csc_d_datain_size_ext_0_0_wren; // @[NV_NVDLA_CSC_dual_reg.scala 53:87:@21.4]
  wire  _T_108; // @[NV_NVDLA_CSC_dual_reg.scala 54:63:@22.4]
  wire  nvdla_csc_d_datain_size_ext_1_0_wren; // @[NV_NVDLA_CSC_dual_reg.scala 54:87:@23.4]
  wire  _T_110; // @[NV_NVDLA_CSC_dual_reg.scala 55:60:@24.4]
  wire  nvdla_csc_d_dataout_size_0_0_wren; // @[NV_NVDLA_CSC_dual_reg.scala 55:84:@25.4]
  wire  _T_112; // @[NV_NVDLA_CSC_dual_reg.scala 56:60:@26.4]
  wire  nvdla_csc_d_dataout_size_1_0_wren; // @[NV_NVDLA_CSC_dual_reg.scala 56:84:@27.4]
  wire  _T_114; // @[NV_NVDLA_CSC_dual_reg.scala 57:58:@28.4]
  wire  nvdla_csc_d_dilation_ext_0_wren; // @[NV_NVDLA_CSC_dual_reg.scala 57:82:@29.4]
  wire  _T_116; // @[NV_NVDLA_CSC_dual_reg.scala 58:61:@30.4]
  wire  nvdla_csc_d_entry_per_slice_0_wren; // @[NV_NVDLA_CSC_dual_reg.scala 58:85:@31.4]
  wire  _T_118; // @[NV_NVDLA_CSC_dual_reg.scala 59:54:@32.4]
  wire  nvdla_csc_d_misc_cfg_0_wren; // @[NV_NVDLA_CSC_dual_reg.scala 59:78:@33.4]
  wire  _T_120; // @[NV_NVDLA_CSC_dual_reg.scala 60:55:@34.4]
  wire  _T_122; // @[NV_NVDLA_CSC_dual_reg.scala 61:62:@36.4]
  wire  nvdla_csc_d_post_y_extension_0_wren; // @[NV_NVDLA_CSC_dual_reg.scala 61:86:@37.4]
  wire  _T_124; // @[NV_NVDLA_CSC_dual_reg.scala 62:53:@38.4]
  wire  nvdla_csc_d_pra_cfg_0_wren; // @[NV_NVDLA_CSC_dual_reg.scala 62:77:@39.4]
  wire  _T_126; // @[NV_NVDLA_CSC_dual_reg.scala 63:53:@40.4]
  wire  nvdla_csc_d_release_0_wren; // @[NV_NVDLA_CSC_dual_reg.scala 63:77:@41.4]
  wire  _T_128; // @[NV_NVDLA_CSC_dual_reg.scala 64:58:@42.4]
  wire  nvdla_csc_d_weight_bytes_0_wren; // @[NV_NVDLA_CSC_dual_reg.scala 64:82:@43.4]
  wire  _T_130; // @[NV_NVDLA_CSC_dual_reg.scala 65:59:@44.4]
  wire  nvdla_csc_d_weight_format_0_wren; // @[NV_NVDLA_CSC_dual_reg.scala 65:83:@45.4]
  wire  _T_132; // @[NV_NVDLA_CSC_dual_reg.scala 66:63:@46.4]
  wire  nvdla_csc_d_weight_size_ext_0_0_wren; // @[NV_NVDLA_CSC_dual_reg.scala 66:87:@47.4]
  wire  _T_134; // @[NV_NVDLA_CSC_dual_reg.scala 67:63:@48.4]
  wire  nvdla_csc_d_weight_size_ext_1_0_wren; // @[NV_NVDLA_CSC_dual_reg.scala 67:87:@49.4]
  wire  _T_136; // @[NV_NVDLA_CSC_dual_reg.scala 68:55:@50.4]
  wire  nvdla_csc_d_wmb_bytes_0_wren; // @[NV_NVDLA_CSC_dual_reg.scala 68:79:@51.4]
  wire  _T_138; // @[NV_NVDLA_CSC_dual_reg.scala 69:58:@52.4]
  wire  nvdla_csc_d_zero_padding_0_wren; // @[NV_NVDLA_CSC_dual_reg.scala 69:82:@53.4]
  wire  _T_140; // @[NV_NVDLA_CSC_dual_reg.scala 70:64:@54.4]
  wire  nvdla_csc_d_zero_padding_value_0_wren; // @[NV_NVDLA_CSC_dual_reg.scala 70:88:@55.4]
  wire [31:0] _T_144; // @[Cat.scala 30:58:@57.4]
  wire [31:0] _T_150; // @[Cat.scala 30:58:@60.4]
  wire [31:0] _T_153; // @[Cat.scala 30:58:@61.4]
  wire [31:0] _T_159; // @[Cat.scala 30:58:@64.4]
  wire [31:0] _T_163; // @[Cat.scala 30:58:@65.4]
  wire [31:0] _T_169; // @[Cat.scala 30:58:@68.4]
  wire [31:0] _T_172; // @[Cat.scala 30:58:@69.4]
  wire [31:0] _T_178; // @[Cat.scala 30:58:@72.4]
  wire [31:0] _T_181; // @[Cat.scala 30:58:@73.4]
  wire [31:0] _T_187; // @[Cat.scala 30:58:@76.4]
  wire [31:0] _T_190; // @[Cat.scala 30:58:@77.4]
  wire [16:0] _T_204; // @[Cat.scala 30:58:@83.4]
  wire [31:0] _T_211; // @[Cat.scala 30:58:@90.4]
  wire [31:0] _T_214; // @[Cat.scala 30:58:@91.4]
  wire [31:0] _T_217; // @[Cat.scala 30:58:@92.4]
  wire [31:0] _T_220; // @[Cat.scala 30:58:@93.4]
  wire [31:0] _T_223; // @[Cat.scala 30:58:@94.4]
  wire [31:0] _T_227; // @[Cat.scala 30:58:@95.4]
  wire [31:0] _T_233; // @[Cat.scala 30:58:@98.4]
  wire [31:0] _T_239; // @[Cat.scala 30:58:@101.4]
  wire [38:0] _T_244; // @[Cat.scala 30:58:@103.4]
  wire [31:0] _T_250; // @[Cat.scala 30:58:@106.4]
  wire [31:0] _T_253; // @[Cat.scala 30:58:@107.4]
  wire  _T_254; // @[Mux.scala 46:19:@108.4]
  wire [31:0] _T_255; // @[Mux.scala 46:16:@109.4]
  wire  _T_256; // @[Mux.scala 46:19:@110.4]
  wire [31:0] _T_257; // @[Mux.scala 46:16:@111.4]
  wire  _T_258; // @[Mux.scala 46:19:@112.4]
  wire [38:0] _T_259; // @[Mux.scala 46:16:@113.4]
  wire  _T_260; // @[Mux.scala 46:19:@114.4]
  wire [38:0] _T_261; // @[Mux.scala 46:16:@115.4]
  wire  _T_262; // @[Mux.scala 46:19:@116.4]
  wire [38:0] _T_263; // @[Mux.scala 46:16:@117.4]
  wire  _T_264; // @[Mux.scala 46:19:@118.4]
  wire [38:0] _T_265; // @[Mux.scala 46:16:@119.4]
  wire  _T_266; // @[Mux.scala 46:19:@120.4]
  wire [38:0] _T_267; // @[Mux.scala 46:16:@121.4]
  wire  _T_268; // @[Mux.scala 46:19:@122.4]
  wire [38:0] _T_269; // @[Mux.scala 46:16:@123.4]
  wire  _T_270; // @[Mux.scala 46:19:@124.4]
  wire [38:0] _T_271; // @[Mux.scala 46:16:@125.4]
  wire  _T_272; // @[Mux.scala 46:19:@126.4]
  wire [38:0] _T_273; // @[Mux.scala 46:16:@127.4]
  wire  _T_274; // @[Mux.scala 46:19:@128.4]
  wire [38:0] _T_275; // @[Mux.scala 46:16:@129.4]
  wire  _T_276; // @[Mux.scala 46:19:@130.4]
  wire [38:0] _T_277; // @[Mux.scala 46:16:@131.4]
  wire  _T_278; // @[Mux.scala 46:19:@132.4]
  wire [38:0] _T_279; // @[Mux.scala 46:16:@133.4]
  wire  _T_280; // @[Mux.scala 46:19:@134.4]
  wire [38:0] _T_281; // @[Mux.scala 46:16:@135.4]
  wire  _T_282; // @[Mux.scala 46:19:@136.4]
  wire [38:0] _T_283; // @[Mux.scala 46:16:@137.4]
  wire  _T_284; // @[Mux.scala 46:19:@138.4]
  wire [38:0] _T_285; // @[Mux.scala 46:16:@139.4]
  wire  _T_286; // @[Mux.scala 46:19:@140.4]
  wire [38:0] _T_287; // @[Mux.scala 46:16:@141.4]
  wire  _T_288; // @[Mux.scala 46:19:@142.4]
  wire [38:0] _T_289; // @[Mux.scala 46:16:@143.4]
  wire  _T_290; // @[Mux.scala 46:19:@144.4]
  wire [38:0] _T_291; // @[Mux.scala 46:16:@145.4]
  wire  _T_292; // @[Mux.scala 46:19:@146.4]
  wire [38:0] _T_293; // @[Mux.scala 46:16:@147.4]
  wire  _T_294; // @[Mux.scala 46:19:@148.4]
  wire [38:0] _T_295; // @[Mux.scala 46:16:@149.4]
  wire  _T_296; // @[Mux.scala 46:19:@150.4]
  wire [38:0] _T_297; // @[Mux.scala 46:16:@151.4]
  wire  _T_298; // @[Mux.scala 46:19:@152.4]
  wire [38:0] _T_299; // @[Mux.scala 46:16:@153.4]
  wire  _T_300; // @[Mux.scala 46:19:@154.4]
  wire [38:0] _T_301; // @[Mux.scala 46:16:@155.4]
  wire [20:0] _T_302; // @[NV_NVDLA_CSC_dual_reg.scala 133:49:@157.4]
  reg [20:0] _T_305; // @[Reg.scala 19:20:@158.4]
  reg [31:0] _RAND_0;
  wire [20:0] _GEN_0; // @[Reg.scala 20:19:@159.4]
  wire [4:0] _T_306; // @[NV_NVDLA_CSC_dual_reg.scala 135:51:@163.4]
  reg [4:0] _T_309; // @[Reg.scala 19:20:@164.4]
  reg [31:0] _RAND_1;
  wire [4:0] _GEN_1; // @[Reg.scala 20:19:@165.4]
  wire [4:0] _T_310; // @[NV_NVDLA_CSC_dual_reg.scala 137:53:@169.4]
  reg [4:0] _T_313; // @[Reg.scala 19:20:@170.4]
  reg [31:0] _RAND_2;
  wire [4:0] _GEN_2; // @[Reg.scala 20:19:@171.4]
  reg [4:0] _T_317; // @[Reg.scala 19:20:@176.4]
  reg [31:0] _RAND_3;
  wire [4:0] _GEN_3; // @[Reg.scala 20:19:@177.4]
  wire [2:0] _T_318; // @[NV_NVDLA_CSC_dual_reg.scala 141:59:@181.4]
  reg [2:0] _T_321; // @[Reg.scala 19:20:@182.4]
  reg [31:0] _RAND_4;
  wire [2:0] _GEN_4; // @[Reg.scala 20:19:@183.4]
  wire [2:0] _T_322; // @[NV_NVDLA_CSC_dual_reg.scala 143:59:@187.4]
  reg [2:0] _T_325; // @[Reg.scala 19:20:@188.4]
  reg [31:0] _RAND_5;
  wire [2:0] _GEN_5; // @[Reg.scala 20:19:@189.4]
  reg [31:0] _T_328; // @[Reg.scala 19:20:@193.4]
  reg [31:0] _RAND_6;
  wire [31:0] _GEN_6; // @[Reg.scala 20:19:@194.4]
  wire  _T_329; // @[NV_NVDLA_CSC_dual_reg.scala 147:55:@198.4]
  reg  _T_332; // @[Reg.scala 19:20:@199.4]
  reg [31:0] _RAND_7;
  wire  _GEN_7; // @[Reg.scala 20:19:@200.4]
  wire [12:0] _T_333; // @[NV_NVDLA_CSC_dual_reg.scala 149:59:@204.4]
  reg [12:0] _T_336; // @[Reg.scala 19:20:@205.4]
  reg [31:0] _RAND_8;
  wire [12:0] _GEN_8; // @[Reg.scala 20:19:@206.4]
  wire [12:0] _T_337; // @[NV_NVDLA_CSC_dual_reg.scala 151:58:@210.4]
  reg [12:0] _T_340; // @[Reg.scala 19:20:@211.4]
  reg [31:0] _RAND_9;
  wire [12:0] _GEN_9; // @[Reg.scala 20:19:@212.4]
  reg [12:0] _T_344; // @[Reg.scala 19:20:@217.4]
  reg [31:0] _RAND_10;
  wire [12:0] _GEN_10; // @[Reg.scala 20:19:@218.4]
  reg [12:0] _T_348; // @[Reg.scala 19:20:@223.4]
  reg [31:0] _RAND_11;
  wire [12:0] _GEN_11; // @[Reg.scala 20:19:@224.4]
  reg [12:0] _T_352; // @[Reg.scala 19:20:@229.4]
  reg [31:0] _RAND_12;
  wire [12:0] _GEN_12; // @[Reg.scala 20:19:@230.4]
  reg [12:0] _T_356; // @[Reg.scala 19:20:@235.4]
  reg [31:0] _RAND_13;
  wire [12:0] _GEN_13; // @[Reg.scala 20:19:@236.4]
  reg [4:0] _T_360; // @[Reg.scala 19:20:@241.4]
  reg [31:0] _RAND_14;
  wire [4:0] _GEN_14; // @[Reg.scala 20:19:@242.4]
  reg [4:0] _T_364; // @[Reg.scala 19:20:@247.4]
  reg [31:0] _RAND_15;
  wire [4:0] _GEN_15; // @[Reg.scala 20:19:@248.4]
  wire [13:0] _T_365; // @[NV_NVDLA_CSC_dual_reg.scala 165:49:@252.4]
  reg [13:0] _T_368; // @[Reg.scala 19:20:@253.4]
  reg [31:0] _RAND_16;
  wire [13:0] _GEN_16; // @[Reg.scala 20:19:@254.4]
  reg  _T_372; // @[Reg.scala 19:20:@259.4]
  reg [31:0] _RAND_17;
  wire  _GEN_17; // @[Reg.scala 20:19:@260.4]
  wire  _T_373; // @[NV_NVDLA_CSC_dual_reg.scala 169:52:@264.4]
  reg  _T_376; // @[Reg.scala 19:20:@265.4]
  reg [31:0] _RAND_18;
  wire  _GEN_18; // @[Reg.scala 20:19:@266.4]
  wire [1:0] _T_377; // @[NV_NVDLA_CSC_dual_reg.scala 171:54:@270.4]
  reg [1:0] _T_380; // @[Reg.scala 19:20:@271.4]
  reg [31:0] _RAND_19;
  wire [1:0] _GEN_19; // @[Reg.scala 20:19:@272.4]
  wire [1:0] _T_381; // @[NV_NVDLA_CSC_dual_reg.scala 173:56:@276.4]
  reg [1:0] _T_384; // @[Reg.scala 19:20:@277.4]
  reg [31:0] _RAND_20;
  wire [1:0] _GEN_20; // @[Reg.scala 20:19:@278.4]
  wire  _T_385; // @[NV_NVDLA_CSC_dual_reg.scala 175:55:@282.4]
  reg  _T_388; // @[Reg.scala 19:20:@283.4]
  reg [31:0] _RAND_21;
  wire  _GEN_21; // @[Reg.scala 20:19:@284.4]
  wire  _T_389; // @[NV_NVDLA_CSC_dual_reg.scala 177:57:@288.4]
  reg  _T_392; // @[Reg.scala 19:20:@289.4]
  reg [31:0] _RAND_22;
  wire  _GEN_22; // @[Reg.scala 20:19:@290.4]
  wire  _T_393; // @[NV_NVDLA_CSC_dual_reg.scala 179:54:@294.4]
  reg  _T_396; // @[Reg.scala 19:20:@295.4]
  reg [31:0] _RAND_23;
  wire  _GEN_23; // @[Reg.scala 20:19:@296.4]
  wire [1:0] _T_397; // @[NV_NVDLA_CSC_dual_reg.scala 181:53:@300.4]
  reg [1:0] _T_400; // @[Reg.scala 19:20:@301.4]
  reg [31:0] _RAND_24;
  wire [1:0] _GEN_24; // @[Reg.scala 20:19:@302.4]
  reg [1:0] _T_404; // @[Reg.scala 19:20:@307.4]
  reg [31:0] _RAND_25;
  wire [1:0] _GEN_25; // @[Reg.scala 20:19:@308.4]
  wire [11:0] _T_405; // @[NV_NVDLA_CSC_dual_reg.scala 185:52:@312.4]
  reg [11:0] _T_408; // @[Reg.scala 19:20:@313.4]
  reg [31:0] _RAND_26;
  wire [11:0] _GEN_26; // @[Reg.scala 20:19:@314.4]
  reg [31:0] _T_412; // @[Reg.scala 19:20:@319.4]
  reg [31:0] _RAND_27;
  wire [31:0] _GEN_27; // @[Reg.scala 20:19:@320.4]
  reg  _T_416; // @[Reg.scala 19:20:@325.4]
  reg [31:0] _RAND_28;
  wire  _GEN_28; // @[Reg.scala 20:19:@326.4]
  reg [4:0] _T_420; // @[Reg.scala 19:20:@331.4]
  reg [31:0] _RAND_29;
  wire [4:0] _GEN_29; // @[Reg.scala 20:19:@332.4]
  reg [4:0] _T_424; // @[Reg.scala 19:20:@337.4]
  reg [31:0] _RAND_30;
  wire [4:0] _GEN_30; // @[Reg.scala 20:19:@338.4]
  reg [12:0] _T_428; // @[Reg.scala 19:20:@343.4]
  reg [31:0] _RAND_31;
  wire [12:0] _GEN_31; // @[Reg.scala 20:19:@344.4]
  reg [12:0] _T_432; // @[Reg.scala 19:20:@349.4]
  reg [31:0] _RAND_32;
  wire [12:0] _GEN_32; // @[Reg.scala 20:19:@350.4]
  wire [27:0] _T_433; // @[NV_NVDLA_CSC_dual_reg.scala 199:51:@354.4]
  reg [27:0] _T_436; // @[Reg.scala 19:20:@355.4]
  reg [31:0] _RAND_33;
  wire [27:0] _GEN_33; // @[Reg.scala 20:19:@356.4]
  reg [4:0] _T_440; // @[Reg.scala 19:20:@361.4]
  reg [31:0] _RAND_34;
  wire [4:0] _GEN_34; // @[Reg.scala 20:19:@362.4]
  reg [4:0] _T_444; // @[Reg.scala 19:20:@367.4]
  reg [31:0] _RAND_35;
  wire [4:0] _GEN_35; // @[Reg.scala 20:19:@368.4]
  wire [15:0] _T_445; // @[NV_NVDLA_CSC_dual_reg.scala 205:51:@372.4]
  reg [15:0] _T_448; // @[Reg.scala 19:20:@373.4]
  reg [31:0] _RAND_36;
  wire [15:0] _GEN_36; // @[Reg.scala 20:19:@374.4]
  assign _GEN_37 = {{20'd0}, reg_offset}; // @[NV_NVDLA_CSC_dual_reg.scala 47:53:@8.4]
  assign _T_94 = _GEN_37 == 32'h44; // @[NV_NVDLA_CSC_dual_reg.scala 47:53:@8.4]
  assign nvdla_csc_d_atomics_0_wren = _T_94 & reg_wr_en; // @[NV_NVDLA_CSC_dual_reg.scala 47:77:@9.4]
  assign _T_96 = _GEN_37 == 32'h5c; // @[NV_NVDLA_CSC_dual_reg.scala 48:50:@10.4]
  assign nvdla_csc_d_bank_0_wren = _T_96 & reg_wr_en; // @[NV_NVDLA_CSC_dual_reg.scala 48:75:@11.4]
  assign _T_98 = _GEN_37 == 32'h1c; // @[NV_NVDLA_CSC_dual_reg.scala 49:58:@12.4]
  assign nvdla_csc_d_batch_number_0_wren = _T_98 & reg_wr_en; // @[NV_NVDLA_CSC_dual_reg.scala 49:83:@13.4]
  assign _T_100 = _GEN_37 == 32'h4c; // @[NV_NVDLA_CSC_dual_reg.scala 50:61:@14.4]
  assign nvdla_csc_d_conv_stride_ext_0_wren = _T_100 & reg_wr_en; // @[NV_NVDLA_CSC_dual_reg.scala 50:86:@15.4]
  assign _T_102 = _GEN_37 == 32'h64; // @[NV_NVDLA_CSC_dual_reg.scala 51:49:@16.4]
  assign nvdla_csc_d_cya_0_wren = _T_102 & reg_wr_en; // @[NV_NVDLA_CSC_dual_reg.scala 51:73:@17.4]
  assign _T_104 = _GEN_37 == 32'h10; // @[NV_NVDLA_CSC_dual_reg.scala 52:59:@18.4]
  assign nvdla_csc_d_datain_format_0_wren = _T_104 & reg_wr_en; // @[NV_NVDLA_CSC_dual_reg.scala 52:83:@19.4]
  assign _T_106 = _GEN_37 == 32'h14; // @[NV_NVDLA_CSC_dual_reg.scala 53:63:@20.4]
  assign nvdla_csc_d_datain_size_ext_0_0_wren = _T_106 & reg_wr_en; // @[NV_NVDLA_CSC_dual_reg.scala 53:87:@21.4]
  assign _T_108 = _GEN_37 == 32'h18; // @[NV_NVDLA_CSC_dual_reg.scala 54:63:@22.4]
  assign nvdla_csc_d_datain_size_ext_1_0_wren = _T_108 & reg_wr_en; // @[NV_NVDLA_CSC_dual_reg.scala 54:87:@23.4]
  assign _T_110 = _GEN_37 == 32'h3c; // @[NV_NVDLA_CSC_dual_reg.scala 55:60:@24.4]
  assign nvdla_csc_d_dataout_size_0_0_wren = _T_110 & reg_wr_en; // @[NV_NVDLA_CSC_dual_reg.scala 55:84:@25.4]
  assign _T_112 = _GEN_37 == 32'h40; // @[NV_NVDLA_CSC_dual_reg.scala 56:60:@26.4]
  assign nvdla_csc_d_dataout_size_1_0_wren = _T_112 & reg_wr_en; // @[NV_NVDLA_CSC_dual_reg.scala 56:84:@27.4]
  assign _T_114 = _GEN_37 == 32'h50; // @[NV_NVDLA_CSC_dual_reg.scala 57:58:@28.4]
  assign nvdla_csc_d_dilation_ext_0_wren = _T_114 & reg_wr_en; // @[NV_NVDLA_CSC_dual_reg.scala 57:82:@29.4]
  assign _T_116 = _GEN_37 == 32'h24; // @[NV_NVDLA_CSC_dual_reg.scala 58:61:@30.4]
  assign nvdla_csc_d_entry_per_slice_0_wren = _T_116 & reg_wr_en; // @[NV_NVDLA_CSC_dual_reg.scala 58:85:@31.4]
  assign _T_118 = _GEN_37 == 32'hc; // @[NV_NVDLA_CSC_dual_reg.scala 59:54:@32.4]
  assign nvdla_csc_d_misc_cfg_0_wren = _T_118 & reg_wr_en; // @[NV_NVDLA_CSC_dual_reg.scala 59:78:@33.4]
  assign _T_120 = _GEN_37 == 32'h8; // @[NV_NVDLA_CSC_dual_reg.scala 60:55:@34.4]
  assign _T_122 = _GEN_37 == 32'h20; // @[NV_NVDLA_CSC_dual_reg.scala 61:62:@36.4]
  assign nvdla_csc_d_post_y_extension_0_wren = _T_122 & reg_wr_en; // @[NV_NVDLA_CSC_dual_reg.scala 61:86:@37.4]
  assign _T_124 = _GEN_37 == 32'h60; // @[NV_NVDLA_CSC_dual_reg.scala 62:53:@38.4]
  assign nvdla_csc_d_pra_cfg_0_wren = _T_124 & reg_wr_en; // @[NV_NVDLA_CSC_dual_reg.scala 62:77:@39.4]
  assign _T_126 = _GEN_37 == 32'h48; // @[NV_NVDLA_CSC_dual_reg.scala 63:53:@40.4]
  assign nvdla_csc_d_release_0_wren = _T_126 & reg_wr_en; // @[NV_NVDLA_CSC_dual_reg.scala 63:77:@41.4]
  assign _T_128 = _GEN_37 == 32'h34; // @[NV_NVDLA_CSC_dual_reg.scala 64:58:@42.4]
  assign nvdla_csc_d_weight_bytes_0_wren = _T_128 & reg_wr_en; // @[NV_NVDLA_CSC_dual_reg.scala 64:82:@43.4]
  assign _T_130 = _GEN_37 == 32'h28; // @[NV_NVDLA_CSC_dual_reg.scala 65:59:@44.4]
  assign nvdla_csc_d_weight_format_0_wren = _T_130 & reg_wr_en; // @[NV_NVDLA_CSC_dual_reg.scala 65:83:@45.4]
  assign _T_132 = _GEN_37 == 32'h2c; // @[NV_NVDLA_CSC_dual_reg.scala 66:63:@46.4]
  assign nvdla_csc_d_weight_size_ext_0_0_wren = _T_132 & reg_wr_en; // @[NV_NVDLA_CSC_dual_reg.scala 66:87:@47.4]
  assign _T_134 = _GEN_37 == 32'h30; // @[NV_NVDLA_CSC_dual_reg.scala 67:63:@48.4]
  assign nvdla_csc_d_weight_size_ext_1_0_wren = _T_134 & reg_wr_en; // @[NV_NVDLA_CSC_dual_reg.scala 67:87:@49.4]
  assign _T_136 = _GEN_37 == 32'h38; // @[NV_NVDLA_CSC_dual_reg.scala 68:55:@50.4]
  assign nvdla_csc_d_wmb_bytes_0_wren = _T_136 & reg_wr_en; // @[NV_NVDLA_CSC_dual_reg.scala 68:79:@51.4]
  assign _T_138 = _GEN_37 == 32'h54; // @[NV_NVDLA_CSC_dual_reg.scala 69:58:@52.4]
  assign nvdla_csc_d_zero_padding_0_wren = _T_138 & reg_wr_en; // @[NV_NVDLA_CSC_dual_reg.scala 69:82:@53.4]
  assign _T_140 = _GEN_37 == 32'h58; // @[NV_NVDLA_CSC_dual_reg.scala 70:64:@54.4]
  assign nvdla_csc_d_zero_padding_value_0_wren = _T_140 & reg_wr_en; // @[NV_NVDLA_CSC_dual_reg.scala 70:88:@55.4]
  assign _T_144 = {11'h0,atomics}; // @[Cat.scala 30:58:@57.4]
  assign _T_150 = {11'h0,weight_bank,11'h0,data_bank}; // @[Cat.scala 30:58:@60.4]
  assign _T_153 = {27'h0,batches}; // @[Cat.scala 30:58:@61.4]
  assign _T_159 = {13'h0,conv_y_stride_ext,13'h0,conv_x_stride_ext}; // @[Cat.scala 30:58:@64.4]
  assign _T_163 = {31'h0,datain_format}; // @[Cat.scala 30:58:@65.4]
  assign _T_169 = {3'h0,datain_height_ext,3'h0,datain_width_ext}; // @[Cat.scala 30:58:@68.4]
  assign _T_172 = {19'h0,datain_channel_ext}; // @[Cat.scala 30:58:@69.4]
  assign _T_178 = {3'h0,dataout_height,3'h0,dataout_width}; // @[Cat.scala 30:58:@72.4]
  assign _T_181 = {19'h0,dataout_channel}; // @[Cat.scala 30:58:@73.4]
  assign _T_187 = {11'h0,y_dilation_ext,11'h0,x_dilation_ext}; // @[Cat.scala 30:58:@76.4]
  assign _T_190 = {18'h0,entries}; // @[Cat.scala 30:58:@77.4]
  assign _T_204 = {data_reuse,2'h0,proc_precision,2'h0,in_precision,7'h0,conv_mode}; // @[Cat.scala 30:58:@83.4]
  assign _T_211 = {3'h0,skip_weight_rls,3'h0,skip_data_rls,3'h0,weight_reuse,3'h0,_T_204}; // @[Cat.scala 30:58:@90.4]
  assign _T_214 = {31'h0,op_en}; // @[Cat.scala 30:58:@91.4]
  assign _T_217 = {30'h0,y_extension}; // @[Cat.scala 30:58:@92.4]
  assign _T_220 = {30'h0,pra_truncate}; // @[Cat.scala 30:58:@93.4]
  assign _T_223 = {20'h0,rls_slices}; // @[Cat.scala 30:58:@94.4]
  assign _T_227 = {31'h0,weight_format}; // @[Cat.scala 30:58:@95.4]
  assign _T_233 = {11'h0,weight_height_ext,11'h0,weight_width_ext}; // @[Cat.scala 30:58:@98.4]
  assign _T_239 = {3'h0,weight_kernel,3'h0,weight_channel_ext}; // @[Cat.scala 30:58:@101.4]
  assign _T_244 = {4'h0,wmb_bytes,7'h0}; // @[Cat.scala 30:58:@103.4]
  assign _T_250 = {11'h0,pad_top,11'h0,pad_left}; // @[Cat.scala 30:58:@106.4]
  assign _T_253 = {16'h0,pad_value}; // @[Cat.scala 30:58:@107.4]
  assign _T_254 = 32'h58 == _GEN_37; // @[Mux.scala 46:19:@108.4]
  assign _T_255 = _T_254 ? _T_253 : 32'h0; // @[Mux.scala 46:16:@109.4]
  assign _T_256 = 32'h54 == _GEN_37; // @[Mux.scala 46:19:@110.4]
  assign _T_257 = _T_256 ? _T_250 : _T_255; // @[Mux.scala 46:16:@111.4]
  assign _T_258 = 32'h38 == _GEN_37; // @[Mux.scala 46:19:@112.4]
  assign _T_259 = _T_258 ? _T_244 : {{7'd0}, _T_257}; // @[Mux.scala 46:16:@113.4]
  assign _T_260 = 32'h30 == _GEN_37; // @[Mux.scala 46:19:@114.4]
  assign _T_261 = _T_260 ? {{7'd0}, _T_239} : _T_259; // @[Mux.scala 46:16:@115.4]
  assign _T_262 = 32'h2c == _GEN_37; // @[Mux.scala 46:19:@116.4]
  assign _T_263 = _T_262 ? {{7'd0}, _T_233} : _T_261; // @[Mux.scala 46:16:@117.4]
  assign _T_264 = 32'h28 == _GEN_37; // @[Mux.scala 46:19:@118.4]
  assign _T_265 = _T_264 ? {{7'd0}, _T_227} : _T_263; // @[Mux.scala 46:16:@119.4]
  assign _T_266 = 32'h34 == _GEN_37; // @[Mux.scala 46:19:@120.4]
  assign _T_267 = _T_266 ? {{7'd0}, weight_bytes} : _T_265; // @[Mux.scala 46:16:@121.4]
  assign _T_268 = 32'h48 == _GEN_37; // @[Mux.scala 46:19:@122.4]
  assign _T_269 = _T_268 ? {{7'd0}, _T_223} : _T_267; // @[Mux.scala 46:16:@123.4]
  assign _T_270 = 32'h60 == _GEN_37; // @[Mux.scala 46:19:@124.4]
  assign _T_271 = _T_270 ? {{7'd0}, _T_220} : _T_269; // @[Mux.scala 46:16:@125.4]
  assign _T_272 = 32'h20 == _GEN_37; // @[Mux.scala 46:19:@126.4]
  assign _T_273 = _T_272 ? {{7'd0}, _T_217} : _T_271; // @[Mux.scala 46:16:@127.4]
  assign _T_274 = 32'h8 == _GEN_37; // @[Mux.scala 46:19:@128.4]
  assign _T_275 = _T_274 ? {{7'd0}, _T_214} : _T_273; // @[Mux.scala 46:16:@129.4]
  assign _T_276 = 32'hc == _GEN_37; // @[Mux.scala 46:19:@130.4]
  assign _T_277 = _T_276 ? {{7'd0}, _T_211} : _T_275; // @[Mux.scala 46:16:@131.4]
  assign _T_278 = 32'h24 == _GEN_37; // @[Mux.scala 46:19:@132.4]
  assign _T_279 = _T_278 ? {{7'd0}, _T_190} : _T_277; // @[Mux.scala 46:16:@133.4]
  assign _T_280 = 32'h50 == _GEN_37; // @[Mux.scala 46:19:@134.4]
  assign _T_281 = _T_280 ? {{7'd0}, _T_187} : _T_279; // @[Mux.scala 46:16:@135.4]
  assign _T_282 = 32'h40 == _GEN_37; // @[Mux.scala 46:19:@136.4]
  assign _T_283 = _T_282 ? {{7'd0}, _T_181} : _T_281; // @[Mux.scala 46:16:@137.4]
  assign _T_284 = 32'h3c == _GEN_37; // @[Mux.scala 46:19:@138.4]
  assign _T_285 = _T_284 ? {{7'd0}, _T_178} : _T_283; // @[Mux.scala 46:16:@139.4]
  assign _T_286 = 32'h18 == _GEN_37; // @[Mux.scala 46:19:@140.4]
  assign _T_287 = _T_286 ? {{7'd0}, _T_172} : _T_285; // @[Mux.scala 46:16:@141.4]
  assign _T_288 = 32'h14 == _GEN_37; // @[Mux.scala 46:19:@142.4]
  assign _T_289 = _T_288 ? {{7'd0}, _T_169} : _T_287; // @[Mux.scala 46:16:@143.4]
  assign _T_290 = 32'h10 == _GEN_37; // @[Mux.scala 46:19:@144.4]
  assign _T_291 = _T_290 ? {{7'd0}, _T_163} : _T_289; // @[Mux.scala 46:16:@145.4]
  assign _T_292 = 32'h64 == _GEN_37; // @[Mux.scala 46:19:@146.4]
  assign _T_293 = _T_292 ? {{7'd0}, cya} : _T_291; // @[Mux.scala 46:16:@147.4]
  assign _T_294 = 32'h4c == _GEN_37; // @[Mux.scala 46:19:@148.4]
  assign _T_295 = _T_294 ? {{7'd0}, _T_159} : _T_293; // @[Mux.scala 46:16:@149.4]
  assign _T_296 = 32'h1c == _GEN_37; // @[Mux.scala 46:19:@150.4]
  assign _T_297 = _T_296 ? {{7'd0}, _T_153} : _T_295; // @[Mux.scala 46:16:@151.4]
  assign _T_298 = 32'h5c == _GEN_37; // @[Mux.scala 46:19:@152.4]
  assign _T_299 = _T_298 ? {{7'd0}, _T_150} : _T_297; // @[Mux.scala 46:16:@153.4]
  assign _T_300 = 32'h44 == _GEN_37; // @[Mux.scala 46:19:@154.4]
  assign _T_301 = _T_300 ? {{7'd0}, _T_144} : _T_299; // @[Mux.scala 46:16:@155.4]
  assign _T_302 = reg_wr_data[20:0]; // @[NV_NVDLA_CSC_dual_reg.scala 133:49:@157.4]
  assign _GEN_0 = nvdla_csc_d_atomics_0_wren ? _T_302 : _T_305; // @[Reg.scala 20:19:@159.4]
  assign _T_306 = reg_wr_data[4:0]; // @[NV_NVDLA_CSC_dual_reg.scala 135:51:@163.4]
  assign _GEN_1 = nvdla_csc_d_bank_0_wren ? _T_306 : _T_309; // @[Reg.scala 20:19:@165.4]
  assign _T_310 = reg_wr_data[20:16]; // @[NV_NVDLA_CSC_dual_reg.scala 137:53:@169.4]
  assign _GEN_2 = nvdla_csc_d_bank_0_wren ? _T_310 : _T_313; // @[Reg.scala 20:19:@171.4]
  assign _GEN_3 = nvdla_csc_d_batch_number_0_wren ? _T_306 : _T_317; // @[Reg.scala 20:19:@177.4]
  assign _T_318 = reg_wr_data[2:0]; // @[NV_NVDLA_CSC_dual_reg.scala 141:59:@181.4]
  assign _GEN_4 = nvdla_csc_d_conv_stride_ext_0_wren ? _T_318 : _T_321; // @[Reg.scala 20:19:@183.4]
  assign _T_322 = reg_wr_data[18:16]; // @[NV_NVDLA_CSC_dual_reg.scala 143:59:@187.4]
  assign _GEN_5 = nvdla_csc_d_conv_stride_ext_0_wren ? _T_322 : _T_325; // @[Reg.scala 20:19:@189.4]
  assign _GEN_6 = nvdla_csc_d_cya_0_wren ? reg_wr_data : _T_328; // @[Reg.scala 20:19:@194.4]
  assign _T_329 = reg_wr_data[0]; // @[NV_NVDLA_CSC_dual_reg.scala 147:55:@198.4]
  assign _GEN_7 = nvdla_csc_d_datain_format_0_wren ? _T_329 : _T_332; // @[Reg.scala 20:19:@200.4]
  assign _T_333 = reg_wr_data[28:16]; // @[NV_NVDLA_CSC_dual_reg.scala 149:59:@204.4]
  assign _GEN_8 = nvdla_csc_d_datain_size_ext_0_0_wren ? _T_333 : _T_336; // @[Reg.scala 20:19:@206.4]
  assign _T_337 = reg_wr_data[12:0]; // @[NV_NVDLA_CSC_dual_reg.scala 151:58:@210.4]
  assign _GEN_9 = nvdla_csc_d_datain_size_ext_0_0_wren ? _T_337 : _T_340; // @[Reg.scala 20:19:@212.4]
  assign _GEN_10 = nvdla_csc_d_datain_size_ext_1_0_wren ? _T_337 : _T_344; // @[Reg.scala 20:19:@218.4]
  assign _GEN_11 = nvdla_csc_d_dataout_size_0_0_wren ? _T_333 : _T_348; // @[Reg.scala 20:19:@224.4]
  assign _GEN_12 = nvdla_csc_d_dataout_size_0_0_wren ? _T_337 : _T_352; // @[Reg.scala 20:19:@230.4]
  assign _GEN_13 = nvdla_csc_d_dataout_size_1_0_wren ? _T_337 : _T_356; // @[Reg.scala 20:19:@236.4]
  assign _GEN_14 = nvdla_csc_d_dilation_ext_0_wren ? _T_306 : _T_360; // @[Reg.scala 20:19:@242.4]
  assign _GEN_15 = nvdla_csc_d_dilation_ext_0_wren ? _T_310 : _T_364; // @[Reg.scala 20:19:@248.4]
  assign _T_365 = reg_wr_data[13:0]; // @[NV_NVDLA_CSC_dual_reg.scala 165:49:@252.4]
  assign _GEN_16 = nvdla_csc_d_entry_per_slice_0_wren ? _T_365 : _T_368; // @[Reg.scala 20:19:@254.4]
  assign _GEN_17 = nvdla_csc_d_misc_cfg_0_wren ? _T_329 : _T_372; // @[Reg.scala 20:19:@260.4]
  assign _T_373 = reg_wr_data[16]; // @[NV_NVDLA_CSC_dual_reg.scala 169:52:@264.4]
  assign _GEN_18 = nvdla_csc_d_misc_cfg_0_wren ? _T_373 : _T_376; // @[Reg.scala 20:19:@266.4]
  assign _T_377 = reg_wr_data[9:8]; // @[NV_NVDLA_CSC_dual_reg.scala 171:54:@270.4]
  assign _GEN_19 = nvdla_csc_d_misc_cfg_0_wren ? _T_377 : _T_380; // @[Reg.scala 20:19:@272.4]
  assign _T_381 = reg_wr_data[13:12]; // @[NV_NVDLA_CSC_dual_reg.scala 173:56:@276.4]
  assign _GEN_20 = nvdla_csc_d_misc_cfg_0_wren ? _T_381 : _T_384; // @[Reg.scala 20:19:@278.4]
  assign _T_385 = reg_wr_data[24]; // @[NV_NVDLA_CSC_dual_reg.scala 175:55:@282.4]
  assign _GEN_21 = nvdla_csc_d_misc_cfg_0_wren ? _T_385 : _T_388; // @[Reg.scala 20:19:@284.4]
  assign _T_389 = reg_wr_data[28]; // @[NV_NVDLA_CSC_dual_reg.scala 177:57:@288.4]
  assign _GEN_22 = nvdla_csc_d_misc_cfg_0_wren ? _T_389 : _T_392; // @[Reg.scala 20:19:@290.4]
  assign _T_393 = reg_wr_data[20]; // @[NV_NVDLA_CSC_dual_reg.scala 179:54:@294.4]
  assign _GEN_23 = nvdla_csc_d_misc_cfg_0_wren ? _T_393 : _T_396; // @[Reg.scala 20:19:@296.4]
  assign _T_397 = reg_wr_data[1:0]; // @[NV_NVDLA_CSC_dual_reg.scala 181:53:@300.4]
  assign _GEN_24 = nvdla_csc_d_post_y_extension_0_wren ? _T_397 : _T_400; // @[Reg.scala 20:19:@302.4]
  assign _GEN_25 = nvdla_csc_d_pra_cfg_0_wren ? _T_397 : _T_404; // @[Reg.scala 20:19:@308.4]
  assign _T_405 = reg_wr_data[11:0]; // @[NV_NVDLA_CSC_dual_reg.scala 185:52:@312.4]
  assign _GEN_26 = nvdla_csc_d_release_0_wren ? _T_405 : _T_408; // @[Reg.scala 20:19:@314.4]
  assign _GEN_27 = nvdla_csc_d_weight_bytes_0_wren ? reg_wr_data : _T_412; // @[Reg.scala 20:19:@320.4]
  assign _GEN_28 = nvdla_csc_d_weight_format_0_wren ? _T_329 : _T_416; // @[Reg.scala 20:19:@326.4]
  assign _GEN_29 = nvdla_csc_d_weight_size_ext_0_0_wren ? _T_310 : _T_420; // @[Reg.scala 20:19:@332.4]
  assign _GEN_30 = nvdla_csc_d_weight_size_ext_0_0_wren ? _T_306 : _T_424; // @[Reg.scala 20:19:@338.4]
  assign _GEN_31 = nvdla_csc_d_weight_size_ext_1_0_wren ? _T_337 : _T_428; // @[Reg.scala 20:19:@344.4]
  assign _GEN_32 = nvdla_csc_d_weight_size_ext_1_0_wren ? _T_333 : _T_432; // @[Reg.scala 20:19:@350.4]
  assign _T_433 = reg_wr_data[27:0]; // @[NV_NVDLA_CSC_dual_reg.scala 199:51:@354.4]
  assign _GEN_33 = nvdla_csc_d_wmb_bytes_0_wren ? _T_433 : _T_436; // @[Reg.scala 20:19:@356.4]
  assign _GEN_34 = nvdla_csc_d_zero_padding_0_wren ? _T_306 : _T_440; // @[Reg.scala 20:19:@362.4]
  assign _GEN_35 = nvdla_csc_d_zero_padding_0_wren ? _T_310 : _T_444; // @[Reg.scala 20:19:@368.4]
  assign _T_445 = reg_wr_data[15:0]; // @[NV_NVDLA_CSC_dual_reg.scala 205:51:@372.4]
  assign _GEN_36 = nvdla_csc_d_zero_padding_value_0_wren ? _T_445 : _T_448; // @[Reg.scala 20:19:@374.4]
  assign reg_rd_data = _T_301[31:0]; // @[NV_NVDLA_CSC_dual_reg.scala 76:20:@156.4]
  assign atomics = _T_305; // @[NV_NVDLA_CSC_dual_reg.scala 133:22:@162.4]
  assign data_bank = _T_309; // @[NV_NVDLA_CSC_dual_reg.scala 135:24:@168.4]
  assign weight_bank = _T_313; // @[NV_NVDLA_CSC_dual_reg.scala 137:26:@174.4]
  assign batches = _T_317; // @[NV_NVDLA_CSC_dual_reg.scala 139:22:@180.4]
  assign conv_x_stride_ext = _T_321; // @[NV_NVDLA_CSC_dual_reg.scala 141:32:@186.4]
  assign conv_y_stride_ext = _T_325; // @[NV_NVDLA_CSC_dual_reg.scala 143:32:@192.4]
  assign cya = _T_328; // @[NV_NVDLA_CSC_dual_reg.scala 145:18:@197.4]
  assign datain_format = _T_332; // @[NV_NVDLA_CSC_dual_reg.scala 147:28:@203.4]
  assign datain_height_ext = _T_336; // @[NV_NVDLA_CSC_dual_reg.scala 149:32:@209.4]
  assign datain_width_ext = _T_340; // @[NV_NVDLA_CSC_dual_reg.scala 151:31:@215.4]
  assign datain_channel_ext = _T_344; // @[NV_NVDLA_CSC_dual_reg.scala 153:33:@221.4]
  assign dataout_height = _T_348; // @[NV_NVDLA_CSC_dual_reg.scala 155:29:@227.4]
  assign dataout_width = _T_352; // @[NV_NVDLA_CSC_dual_reg.scala 157:28:@233.4]
  assign dataout_channel = _T_356; // @[NV_NVDLA_CSC_dual_reg.scala 159:30:@239.4]
  assign x_dilation_ext = _T_360; // @[NV_NVDLA_CSC_dual_reg.scala 161:29:@245.4]
  assign y_dilation_ext = _T_364; // @[NV_NVDLA_CSC_dual_reg.scala 163:29:@251.4]
  assign entries = _T_368; // @[NV_NVDLA_CSC_dual_reg.scala 165:22:@257.4]
  assign conv_mode = _T_372; // @[NV_NVDLA_CSC_dual_reg.scala 167:24:@263.4]
  assign data_reuse = _T_376; // @[NV_NVDLA_CSC_dual_reg.scala 169:25:@269.4]
  assign in_precision = _T_380; // @[NV_NVDLA_CSC_dual_reg.scala 171:27:@275.4]
  assign proc_precision = _T_384; // @[NV_NVDLA_CSC_dual_reg.scala 173:29:@281.4]
  assign skip_data_rls = _T_388; // @[NV_NVDLA_CSC_dual_reg.scala 175:28:@287.4]
  assign skip_weight_rls = _T_392; // @[NV_NVDLA_CSC_dual_reg.scala 177:30:@293.4]
  assign weight_reuse = _T_396; // @[NV_NVDLA_CSC_dual_reg.scala 179:27:@299.4]
  assign y_extension = _T_400; // @[NV_NVDLA_CSC_dual_reg.scala 181:26:@305.4]
  assign pra_truncate = _T_404; // @[NV_NVDLA_CSC_dual_reg.scala 183:27:@311.4]
  assign rls_slices = _T_408; // @[NV_NVDLA_CSC_dual_reg.scala 185:25:@317.4]
  assign weight_bytes = _T_412; // @[NV_NVDLA_CSC_dual_reg.scala 187:27:@323.4]
  assign weight_format = _T_416; // @[NV_NVDLA_CSC_dual_reg.scala 189:28:@329.4]
  assign weight_height_ext = _T_420; // @[NV_NVDLA_CSC_dual_reg.scala 191:32:@335.4]
  assign weight_width_ext = _T_424; // @[NV_NVDLA_CSC_dual_reg.scala 193:31:@341.4]
  assign weight_channel_ext = _T_428; // @[NV_NVDLA_CSC_dual_reg.scala 195:33:@347.4]
  assign weight_kernel = _T_432; // @[NV_NVDLA_CSC_dual_reg.scala 197:28:@353.4]
  assign wmb_bytes = _T_436; // @[NV_NVDLA_CSC_dual_reg.scala 199:24:@359.4]
  assign pad_left = _T_440; // @[NV_NVDLA_CSC_dual_reg.scala 201:23:@365.4]
  assign pad_top = _T_444; // @[NV_NVDLA_CSC_dual_reg.scala 203:22:@371.4]
  assign pad_value = _T_448; // @[NV_NVDLA_CSC_dual_reg.scala 205:24:@377.4]
  assign op_en_trigger = _T_120 & reg_wr_en; // @[NV_NVDLA_CSC_dual_reg.scala 72:22:@56.4]
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
  _T_305 = _RAND_0[20:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_1 = {1{`RANDOM}};
  _T_309 = _RAND_1[4:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_2 = {1{`RANDOM}};
  _T_313 = _RAND_2[4:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_3 = {1{`RANDOM}};
  _T_317 = _RAND_3[4:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_4 = {1{`RANDOM}};
  _T_321 = _RAND_4[2:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_5 = {1{`RANDOM}};
  _T_325 = _RAND_5[2:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_6 = {1{`RANDOM}};
  _T_328 = _RAND_6[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_7 = {1{`RANDOM}};
  _T_332 = _RAND_7[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_8 = {1{`RANDOM}};
  _T_336 = _RAND_8[12:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_9 = {1{`RANDOM}};
  _T_340 = _RAND_9[12:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_10 = {1{`RANDOM}};
  _T_344 = _RAND_10[12:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_11 = {1{`RANDOM}};
  _T_348 = _RAND_11[12:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_12 = {1{`RANDOM}};
  _T_352 = _RAND_12[12:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_13 = {1{`RANDOM}};
  _T_356 = _RAND_13[12:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_14 = {1{`RANDOM}};
  _T_360 = _RAND_14[4:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_15 = {1{`RANDOM}};
  _T_364 = _RAND_15[4:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_16 = {1{`RANDOM}};
  _T_368 = _RAND_16[13:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_17 = {1{`RANDOM}};
  _T_372 = _RAND_17[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_18 = {1{`RANDOM}};
  _T_376 = _RAND_18[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_19 = {1{`RANDOM}};
  _T_380 = _RAND_19[1:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_20 = {1{`RANDOM}};
  _T_384 = _RAND_20[1:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_21 = {1{`RANDOM}};
  _T_388 = _RAND_21[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_22 = {1{`RANDOM}};
  _T_392 = _RAND_22[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_23 = {1{`RANDOM}};
  _T_396 = _RAND_23[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_24 = {1{`RANDOM}};
  _T_400 = _RAND_24[1:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_25 = {1{`RANDOM}};
  _T_404 = _RAND_25[1:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_26 = {1{`RANDOM}};
  _T_408 = _RAND_26[11:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_27 = {1{`RANDOM}};
  _T_412 = _RAND_27[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_28 = {1{`RANDOM}};
  _T_416 = _RAND_28[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_29 = {1{`RANDOM}};
  _T_420 = _RAND_29[4:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_30 = {1{`RANDOM}};
  _T_424 = _RAND_30[4:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_31 = {1{`RANDOM}};
  _T_428 = _RAND_31[12:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_32 = {1{`RANDOM}};
  _T_432 = _RAND_32[12:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_33 = {1{`RANDOM}};
  _T_436 = _RAND_33[27:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_34 = {1{`RANDOM}};
  _T_440 = _RAND_34[4:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_35 = {1{`RANDOM}};
  _T_444 = _RAND_35[4:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_36 = {1{`RANDOM}};
  _T_448 = _RAND_36[15:0];
  `endif // RANDOMIZE_REG_INIT
  end
`endif // RANDOMIZE
  always @(posedge nvdla_core_clk) begin
    if (!nvdla_core_rstn) begin
      _T_305 <= 21'h1;
    end else begin
      if (nvdla_csc_d_atomics_0_wren) begin
        _T_305 <= _T_302;
      end
    end
    if (!nvdla_core_rstn) begin
      _T_309 <= 5'h0;
    end else begin
      if (nvdla_csc_d_bank_0_wren) begin
        _T_309 <= _T_306;
      end
    end
    if (!nvdla_core_rstn) begin
      _T_313 <= 5'h0;
    end else begin
      if (nvdla_csc_d_bank_0_wren) begin
        _T_313 <= _T_310;
      end
    end
    if (!nvdla_core_rstn) begin
      _T_317 <= 5'h0;
    end else begin
      if (nvdla_csc_d_batch_number_0_wren) begin
        _T_317 <= _T_306;
      end
    end
    if (!nvdla_core_rstn) begin
      _T_321 <= 3'h0;
    end else begin
      if (nvdla_csc_d_conv_stride_ext_0_wren) begin
        _T_321 <= _T_318;
      end
    end
    if (!nvdla_core_rstn) begin
      _T_325 <= 3'h0;
    end else begin
      if (nvdla_csc_d_conv_stride_ext_0_wren) begin
        _T_325 <= _T_322;
      end
    end
    if (!nvdla_core_rstn) begin
      _T_328 <= 32'h0;
    end else begin
      if (nvdla_csc_d_cya_0_wren) begin
        _T_328 <= reg_wr_data;
      end
    end
    if (!nvdla_core_rstn) begin
      _T_332 <= 1'h0;
    end else begin
      if (nvdla_csc_d_datain_format_0_wren) begin
        _T_332 <= _T_329;
      end
    end
    if (!nvdla_core_rstn) begin
      _T_336 <= 13'h0;
    end else begin
      if (nvdla_csc_d_datain_size_ext_0_0_wren) begin
        _T_336 <= _T_333;
      end
    end
    if (!nvdla_core_rstn) begin
      _T_340 <= 13'h0;
    end else begin
      if (nvdla_csc_d_datain_size_ext_0_0_wren) begin
        _T_340 <= _T_337;
      end
    end
    if (!nvdla_core_rstn) begin
      _T_344 <= 13'h0;
    end else begin
      if (nvdla_csc_d_datain_size_ext_1_0_wren) begin
        _T_344 <= _T_337;
      end
    end
    if (!nvdla_core_rstn) begin
      _T_348 <= 13'h0;
    end else begin
      if (nvdla_csc_d_dataout_size_0_0_wren) begin
        _T_348 <= _T_333;
      end
    end
    if (!nvdla_core_rstn) begin
      _T_352 <= 13'h0;
    end else begin
      if (nvdla_csc_d_dataout_size_0_0_wren) begin
        _T_352 <= _T_337;
      end
    end
    if (!nvdla_core_rstn) begin
      _T_356 <= 13'h0;
    end else begin
      if (nvdla_csc_d_dataout_size_1_0_wren) begin
        _T_356 <= _T_337;
      end
    end
    if (!nvdla_core_rstn) begin
      _T_360 <= 5'h0;
    end else begin
      if (nvdla_csc_d_dilation_ext_0_wren) begin
        _T_360 <= _T_306;
      end
    end
    if (!nvdla_core_rstn) begin
      _T_364 <= 5'h0;
    end else begin
      if (nvdla_csc_d_dilation_ext_0_wren) begin
        _T_364 <= _T_310;
      end
    end
    if (!nvdla_core_rstn) begin
      _T_368 <= 14'h0;
    end else begin
      if (nvdla_csc_d_entry_per_slice_0_wren) begin
        _T_368 <= _T_365;
      end
    end
    if (!nvdla_core_rstn) begin
      _T_372 <= 1'h0;
    end else begin
      if (nvdla_csc_d_misc_cfg_0_wren) begin
        _T_372 <= _T_329;
      end
    end
    if (!nvdla_core_rstn) begin
      _T_376 <= 1'h0;
    end else begin
      if (nvdla_csc_d_misc_cfg_0_wren) begin
        _T_376 <= _T_373;
      end
    end
    if (!nvdla_core_rstn) begin
      _T_380 <= 2'h1;
    end else begin
      if (nvdla_csc_d_misc_cfg_0_wren) begin
        _T_380 <= _T_377;
      end
    end
    if (!nvdla_core_rstn) begin
      _T_384 <= 2'h1;
    end else begin
      if (nvdla_csc_d_misc_cfg_0_wren) begin
        _T_384 <= _T_381;
      end
    end
    if (!nvdla_core_rstn) begin
      _T_388 <= 1'h0;
    end else begin
      if (nvdla_csc_d_misc_cfg_0_wren) begin
        _T_388 <= _T_385;
      end
    end
    if (!nvdla_core_rstn) begin
      _T_392 <= 1'h0;
    end else begin
      if (nvdla_csc_d_misc_cfg_0_wren) begin
        _T_392 <= _T_389;
      end
    end
    if (!nvdla_core_rstn) begin
      _T_396 <= 1'h0;
    end else begin
      if (nvdla_csc_d_misc_cfg_0_wren) begin
        _T_396 <= _T_393;
      end
    end
    if (!nvdla_core_rstn) begin
      _T_400 <= 2'h0;
    end else begin
      if (nvdla_csc_d_post_y_extension_0_wren) begin
        _T_400 <= _T_397;
      end
    end
    if (!nvdla_core_rstn) begin
      _T_404 <= 2'h0;
    end else begin
      if (nvdla_csc_d_pra_cfg_0_wren) begin
        _T_404 <= _T_397;
      end
    end
    if (!nvdla_core_rstn) begin
      _T_408 <= 12'h1;
    end else begin
      if (nvdla_csc_d_release_0_wren) begin
        _T_408 <= _T_405;
      end
    end
    if (!nvdla_core_rstn) begin
      _T_412 <= 32'h0;
    end else begin
      if (nvdla_csc_d_weight_bytes_0_wren) begin
        _T_412 <= reg_wr_data;
      end
    end
    if (!nvdla_core_rstn) begin
      _T_416 <= 1'h0;
    end else begin
      if (nvdla_csc_d_weight_format_0_wren) begin
        _T_416 <= _T_329;
      end
    end
    if (!nvdla_core_rstn) begin
      _T_420 <= 5'h0;
    end else begin
      if (nvdla_csc_d_weight_size_ext_0_0_wren) begin
        _T_420 <= _T_310;
      end
    end
    if (!nvdla_core_rstn) begin
      _T_424 <= 5'h0;
    end else begin
      if (nvdla_csc_d_weight_size_ext_0_0_wren) begin
        _T_424 <= _T_306;
      end
    end
    if (!nvdla_core_rstn) begin
      _T_428 <= 13'h0;
    end else begin
      if (nvdla_csc_d_weight_size_ext_1_0_wren) begin
        _T_428 <= _T_337;
      end
    end
    if (!nvdla_core_rstn) begin
      _T_432 <= 13'h0;
    end else begin
      if (nvdla_csc_d_weight_size_ext_1_0_wren) begin
        _T_432 <= _T_333;
      end
    end
    if (!nvdla_core_rstn) begin
      _T_436 <= 28'h0;
    end else begin
      if (nvdla_csc_d_wmb_bytes_0_wren) begin
        _T_436 <= _T_433;
      end
    end
    if (!nvdla_core_rstn) begin
      _T_440 <= 5'h0;
    end else begin
      if (nvdla_csc_d_zero_padding_0_wren) begin
        _T_440 <= _T_306;
      end
    end
    if (!nvdla_core_rstn) begin
      _T_444 <= 5'h0;
    end else begin
      if (nvdla_csc_d_zero_padding_0_wren) begin
        _T_444 <= _T_310;
      end
    end
    if (!nvdla_core_rstn) begin
      _T_448 <= 16'h0;
    end else begin
      if (nvdla_csc_d_zero_padding_value_0_wren) begin
        _T_448 <= _T_445;
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
// File Name: NV_NVDLA_CSC_dual_reg.v
module NV_NVDLA_CSC_dual_reg (
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
  ,atomics
  ,data_bank
  ,weight_bank
  ,batches
  ,conv_x_stride_ext
  ,conv_y_stride_ext
  ,cya
  ,datain_format
  ,datain_height_ext
  ,datain_width_ext
  ,datain_channel_ext
  ,dataout_height
  ,dataout_width
  ,dataout_channel
  ,x_dilation_ext
  ,y_dilation_ext
  ,entries
  ,conv_mode
  ,data_reuse
  ,in_precision
  ,proc_precision
  ,skip_data_rls
  ,skip_weight_rls
  ,weight_reuse
  ,op_en_trigger
  ,y_extension
  ,pra_truncate
  ,rls_slices
  ,weight_bytes
  ,weight_format
  ,weight_height_ext
  ,weight_width_ext
  ,weight_channel_ext
  ,weight_kernel
  ,wmb_bytes
  ,pad_left
  ,pad_top
  ,pad_value
  ,op_en
  );
wire [31:0] nvdla_csc_d_atomics_0_out;
wire [31:0] nvdla_csc_d_bank_0_out;
wire [31:0] nvdla_csc_d_batch_number_0_out;
wire [31:0] nvdla_csc_d_conv_stride_ext_0_out;
wire [31:0] nvdla_csc_d_cya_0_out;
wire [31:0] nvdla_csc_d_datain_format_0_out;
wire [31:0] nvdla_csc_d_datain_size_ext_0_0_out;
wire [31:0] nvdla_csc_d_datain_size_ext_1_0_out;
wire [31:0] nvdla_csc_d_dataout_size_0_0_out;
wire [31:0] nvdla_csc_d_dataout_size_1_0_out;
wire [31:0] nvdla_csc_d_dilation_ext_0_out;
wire [31:0] nvdla_csc_d_entry_per_slice_0_out;
wire [31:0] nvdla_csc_d_misc_cfg_0_out;
wire [31:0] nvdla_csc_d_op_enable_0_out;
wire [31:0] nvdla_csc_d_post_y_extension_0_out;
wire [31:0] nvdla_csc_d_pra_cfg_0_out;
wire [31:0] nvdla_csc_d_release_0_out;
wire [31:0] nvdla_csc_d_weight_bytes_0_out;
wire [31:0] nvdla_csc_d_weight_format_0_out;
wire [31:0] nvdla_csc_d_weight_size_ext_0_0_out;
wire [31:0] nvdla_csc_d_weight_size_ext_1_0_out;
wire [31:0] nvdla_csc_d_wmb_bytes_0_out;
wire [31:0] nvdla_csc_d_zero_padding_0_out;
wire [31:0] nvdla_csc_d_zero_padding_value_0_out;
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
output [20:0] atomics;
output [4:0] data_bank;
output [4:0] weight_bank;
output [4:0] batches;
output [2:0] conv_x_stride_ext;
output [2:0] conv_y_stride_ext;
output [31:0] cya;
output datain_format;
output [12:0] datain_height_ext;
output [12:0] datain_width_ext;
output [12:0] datain_channel_ext;
output [12:0] dataout_height;
output [12:0] dataout_width;
output [12:0] dataout_channel;
output [4:0] x_dilation_ext;
output [4:0] y_dilation_ext;
output [13:0] entries;
output conv_mode;
output data_reuse;
output [1:0] in_precision;
output [1:0] proc_precision;
output skip_data_rls;
output skip_weight_rls;
output weight_reuse;
output op_en_trigger;
output [1:0] y_extension;
output [1:0] pra_truncate;
output [11:0] rls_slices;
output [31:0] weight_bytes;
output weight_format;
output [4:0] weight_height_ext;
output [4:0] weight_width_ext;
output [12:0] weight_channel_ext;
output [12:0] weight_kernel;
output [27:0] wmb_bytes;
output [4:0] pad_left;
output [4:0] pad_top;
output [15:0] pad_value;
// Read-only register inputs
input op_en;
// wr_mask register inputs
// rstn register inputs
// leda FM_2_23 off
reg arreggen_abort_on_invalid_wr;
reg arreggen_abort_on_rowr;
reg arreggen_dump;
// leda FM_2_23 on
reg [20:0] atomics;
reg [4:0] batches;
reg conv_mode;
reg [2:0] conv_x_stride_ext;
reg [2:0] conv_y_stride_ext;
reg [31:0] cya;
reg [4:0] data_bank;
reg data_reuse;
reg [12:0] datain_channel_ext;
reg datain_format;
reg [12:0] datain_height_ext;
reg [12:0] datain_width_ext;
reg [12:0] dataout_channel;
reg [12:0] dataout_height;
reg [12:0] dataout_width;
reg [13:0] entries;
reg [1:0] in_precision;
reg [4:0] pad_left;
reg [4:0] pad_top;
reg [15:0] pad_value;
reg [1:0] pra_truncate;
reg [1:0] proc_precision;
reg [31:0] reg_rd_data;
reg [11:0] rls_slices;
reg skip_data_rls;
reg skip_weight_rls;
reg [4:0] weight_bank;
reg [31:0] weight_bytes;
reg [12:0] weight_channel_ext;
reg weight_format;
reg [4:0] weight_height_ext;
reg [12:0] weight_kernel;
reg weight_reuse;
reg [4:0] weight_width_ext;
reg [27:0] wmb_bytes;
reg [4:0] x_dilation_ext;
reg [4:0] y_dilation_ext;
reg [1:0] y_extension;
assign reg_offset_wr = {20'b0 , reg_offset};
// SCR signals
// Address decode
wire nvdla_csc_d_atomics_0_wren = (reg_offset_wr == (32'h6044 & 32'h00000fff)) & reg_wr_en ; //spyglass disable UnloadedNet-ML //(W528)
wire nvdla_csc_d_bank_0_wren = (reg_offset_wr == (32'h605c & 32'h00000fff)) & reg_wr_en ; //spyglass disable UnloadedNet-ML //(W528)
wire nvdla_csc_d_batch_number_0_wren = (reg_offset_wr == (32'h601c & 32'h00000fff)) & reg_wr_en ; //spyglass disable UnloadedNet-ML //(W528)
wire nvdla_csc_d_conv_stride_ext_0_wren = (reg_offset_wr == (32'h604c & 32'h00000fff)) & reg_wr_en ; //spyglass disable UnloadedNet-ML //(W528)
wire nvdla_csc_d_cya_0_wren = (reg_offset_wr == (32'h6064 & 32'h00000fff)) & reg_wr_en ; //spyglass disable UnloadedNet-ML //(W528)
wire nvdla_csc_d_datain_format_0_wren = (reg_offset_wr == (32'h6010 & 32'h00000fff)) & reg_wr_en ; //spyglass disable UnloadedNet-ML //(W528)
wire nvdla_csc_d_datain_size_ext_0_0_wren = (reg_offset_wr == (32'h6014 & 32'h00000fff)) & reg_wr_en ; //spyglass disable UnloadedNet-ML //(W528)
wire nvdla_csc_d_datain_size_ext_1_0_wren = (reg_offset_wr == (32'h6018 & 32'h00000fff)) & reg_wr_en ; //spyglass disable UnloadedNet-ML //(W528)
wire nvdla_csc_d_dataout_size_0_0_wren = (reg_offset_wr == (32'h603c & 32'h00000fff)) & reg_wr_en ; //spyglass disable UnloadedNet-ML //(W528)
wire nvdla_csc_d_dataout_size_1_0_wren = (reg_offset_wr == (32'h6040 & 32'h00000fff)) & reg_wr_en ; //spyglass disable UnloadedNet-ML //(W528)
wire nvdla_csc_d_dilation_ext_0_wren = (reg_offset_wr == (32'h6050 & 32'h00000fff)) & reg_wr_en ; //spyglass disable UnloadedNet-ML //(W528)
wire nvdla_csc_d_entry_per_slice_0_wren = (reg_offset_wr == (32'h6024 & 32'h00000fff)) & reg_wr_en ; //spyglass disable UnloadedNet-ML //(W528)
wire nvdla_csc_d_misc_cfg_0_wren = (reg_offset_wr == (32'h600c & 32'h00000fff)) & reg_wr_en ; //spyglass disable UnloadedNet-ML //(W528)
wire nvdla_csc_d_op_enable_0_wren = (reg_offset_wr == (32'h6008 & 32'h00000fff)) & reg_wr_en ; //spyglass disable UnloadedNet-ML //(W528)
wire nvdla_csc_d_post_y_extension_0_wren = (reg_offset_wr == (32'h6020 & 32'h00000fff)) & reg_wr_en ; //spyglass disable UnloadedNet-ML //(W528)
wire nvdla_csc_d_pra_cfg_0_wren = (reg_offset_wr == (32'h6060 & 32'h00000fff)) & reg_wr_en ; //spyglass disable UnloadedNet-ML //(W528)
wire nvdla_csc_d_release_0_wren = (reg_offset_wr == (32'h6048 & 32'h00000fff)) & reg_wr_en ; //spyglass disable UnloadedNet-ML //(W528)
wire nvdla_csc_d_weight_bytes_0_wren = (reg_offset_wr == (32'h6034 & 32'h00000fff)) & reg_wr_en ; //spyglass disable UnloadedNet-ML //(W528)
wire nvdla_csc_d_weight_format_0_wren = (reg_offset_wr == (32'h6028 & 32'h00000fff)) & reg_wr_en ; //spyglass disable UnloadedNet-ML //(W528)
wire nvdla_csc_d_weight_size_ext_0_0_wren = (reg_offset_wr == (32'h602c & 32'h00000fff)) & reg_wr_en ; //spyglass disable UnloadedNet-ML //(W528)
wire nvdla_csc_d_weight_size_ext_1_0_wren = (reg_offset_wr == (32'h6030 & 32'h00000fff)) & reg_wr_en ; //spyglass disable UnloadedNet-ML //(W528)
wire nvdla_csc_d_wmb_bytes_0_wren = (reg_offset_wr == (32'h6038 & 32'h00000fff)) & reg_wr_en ; //spyglass disable UnloadedNet-ML //(W528)
wire nvdla_csc_d_zero_padding_0_wren = (reg_offset_wr == (32'h6054 & 32'h00000fff)) & reg_wr_en ; //spyglass disable UnloadedNet-ML //(W528)
wire nvdla_csc_d_zero_padding_value_0_wren = (reg_offset_wr == (32'h6058 & 32'h00000fff)) & reg_wr_en ; //spyglass disable UnloadedNet-ML //(W528)
assign nvdla_csc_d_atomics_0_out[31:0] = { 11'b0, atomics };
assign nvdla_csc_d_bank_0_out[31:0] = { 11'b0, weight_bank, 11'b0, data_bank };
assign nvdla_csc_d_batch_number_0_out[31:0] = { 27'b0, batches };
assign nvdla_csc_d_conv_stride_ext_0_out[31:0] = { 13'b0, conv_y_stride_ext, 13'b0, conv_x_stride_ext };
assign nvdla_csc_d_cya_0_out[31:0] = { cya };
assign nvdla_csc_d_datain_format_0_out[31:0] = { 31'b0, datain_format };
assign nvdla_csc_d_datain_size_ext_0_0_out[31:0] = { 3'b0, datain_height_ext, 3'b0, datain_width_ext };
assign nvdla_csc_d_datain_size_ext_1_0_out[31:0] = { 19'b0, datain_channel_ext };
assign nvdla_csc_d_dataout_size_0_0_out[31:0] = { 3'b0, dataout_height, 3'b0, dataout_width };
assign nvdla_csc_d_dataout_size_1_0_out[31:0] = { 19'b0, dataout_channel };
assign nvdla_csc_d_dilation_ext_0_out[31:0] = { 11'b0, y_dilation_ext, 11'b0, x_dilation_ext };
assign nvdla_csc_d_entry_per_slice_0_out[31:0] = { 18'b0, entries };
assign nvdla_csc_d_misc_cfg_0_out[31:0] = { 3'b0, skip_weight_rls, 3'b0, skip_data_rls, 3'b0, weight_reuse, 3'b0, data_reuse, 2'b0, proc_precision, 2'b0, in_precision, 7'b0, conv_mode };
assign nvdla_csc_d_op_enable_0_out[31:0] = { 31'b0, op_en };
assign nvdla_csc_d_post_y_extension_0_out[31:0] = { 30'b0, y_extension };
assign nvdla_csc_d_pra_cfg_0_out[31:0] = { 30'b0, pra_truncate };
assign nvdla_csc_d_release_0_out[31:0] = { 20'b0, rls_slices };
assign nvdla_csc_d_weight_bytes_0_out[31:0] = weight_bytes;
assign nvdla_csc_d_weight_format_0_out[31:0] = { 31'b0, weight_format };
assign nvdla_csc_d_weight_size_ext_0_0_out[31:0] = { 11'b0, weight_height_ext, 11'b0, weight_width_ext };
assign nvdla_csc_d_weight_size_ext_1_0_out[31:0] = { 3'b0, weight_kernel, 3'b0, weight_channel_ext };
assign nvdla_csc_d_wmb_bytes_0_out[31:0] = { 4'b0, wmb_bytes};
assign nvdla_csc_d_zero_padding_0_out[31:0] = { 11'b0, pad_top, 11'b0, pad_left };
assign nvdla_csc_d_zero_padding_value_0_out[31:0] = { 16'b0, pad_value };
assign op_en_trigger = nvdla_csc_d_op_enable_0_wren; //(W563)
assign reg_offset_rd_int = reg_offset;
// Output mux
//spyglass disable_block W338, W263
always @(
  reg_offset_rd_int
  or nvdla_csc_d_atomics_0_out
  or nvdla_csc_d_bank_0_out
  or nvdla_csc_d_batch_number_0_out
  or nvdla_csc_d_conv_stride_ext_0_out
  or nvdla_csc_d_cya_0_out
  or nvdla_csc_d_datain_format_0_out
  or nvdla_csc_d_datain_size_ext_0_0_out
  or nvdla_csc_d_datain_size_ext_1_0_out
  or nvdla_csc_d_dataout_size_0_0_out
  or nvdla_csc_d_dataout_size_1_0_out
  or nvdla_csc_d_dilation_ext_0_out
  or nvdla_csc_d_entry_per_slice_0_out
  or nvdla_csc_d_misc_cfg_0_out
  or nvdla_csc_d_op_enable_0_out
  or nvdla_csc_d_post_y_extension_0_out
  or nvdla_csc_d_pra_cfg_0_out
  or nvdla_csc_d_release_0_out
  or nvdla_csc_d_weight_bytes_0_out
  or nvdla_csc_d_weight_format_0_out
  or nvdla_csc_d_weight_size_ext_0_0_out
  or nvdla_csc_d_weight_size_ext_1_0_out
  or nvdla_csc_d_wmb_bytes_0_out
  or nvdla_csc_d_zero_padding_0_out
  or nvdla_csc_d_zero_padding_value_0_out
  ) begin
  case (reg_offset_rd_int)
     (32'h6044 & 32'h00000fff): begin
                            reg_rd_data = nvdla_csc_d_atomics_0_out ;
                            end
     (32'h605c & 32'h00000fff): begin
                            reg_rd_data = nvdla_csc_d_bank_0_out ;
                            end
     (32'h601c & 32'h00000fff): begin
                            reg_rd_data = nvdla_csc_d_batch_number_0_out ;
                            end
     (32'h604c & 32'h00000fff): begin
                            reg_rd_data = nvdla_csc_d_conv_stride_ext_0_out ;
                            end
     (32'h6064 & 32'h00000fff): begin
                            reg_rd_data = nvdla_csc_d_cya_0_out ;
                            end
     (32'h6010 & 32'h00000fff): begin
                            reg_rd_data = nvdla_csc_d_datain_format_0_out ;
                            end
     (32'h6014 & 32'h00000fff): begin
                            reg_rd_data = nvdla_csc_d_datain_size_ext_0_0_out ;
                            end
     (32'h6018 & 32'h00000fff): begin
                            reg_rd_data = nvdla_csc_d_datain_size_ext_1_0_out ;
                            end
     (32'h603c & 32'h00000fff): begin
                            reg_rd_data = nvdla_csc_d_dataout_size_0_0_out ;
                            end
     (32'h6040 & 32'h00000fff): begin
                            reg_rd_data = nvdla_csc_d_dataout_size_1_0_out ;
                            end
     (32'h6050 & 32'h00000fff): begin
                            reg_rd_data = nvdla_csc_d_dilation_ext_0_out ;
                            end
     (32'h6024 & 32'h00000fff): begin
                            reg_rd_data = nvdla_csc_d_entry_per_slice_0_out ;
                            end
     (32'h600c & 32'h00000fff): begin
                            reg_rd_data = nvdla_csc_d_misc_cfg_0_out ;
                            end
     (32'h6008 & 32'h00000fff): begin
                            reg_rd_data = nvdla_csc_d_op_enable_0_out ;
                            end
     (32'h6020 & 32'h00000fff): begin
                            reg_rd_data = nvdla_csc_d_post_y_extension_0_out ;
                            end
     (32'h6060 & 32'h00000fff): begin
                            reg_rd_data = nvdla_csc_d_pra_cfg_0_out ;
                            end
     (32'h6048 & 32'h00000fff): begin
                            reg_rd_data = nvdla_csc_d_release_0_out ;
                            end
     (32'h6034 & 32'h00000fff): begin
                            reg_rd_data = nvdla_csc_d_weight_bytes_0_out ;
                            end
     (32'h6028 & 32'h00000fff): begin
                            reg_rd_data = nvdla_csc_d_weight_format_0_out ;
                            end
     (32'h602c & 32'h00000fff): begin
                            reg_rd_data = nvdla_csc_d_weight_size_ext_0_0_out ;
                            end
     (32'h6030 & 32'h00000fff): begin
                            reg_rd_data = nvdla_csc_d_weight_size_ext_1_0_out ;
                            end
     (32'h6038 & 32'h00000fff): begin
                            reg_rd_data = nvdla_csc_d_wmb_bytes_0_out ;
                            end
     (32'h6054 & 32'h00000fff): begin
                            reg_rd_data = nvdla_csc_d_zero_padding_0_out ;
                            end
     (32'h6058 & 32'h00000fff): begin
                            reg_rd_data = nvdla_csc_d_zero_padding_value_0_out ;
                            end
    default: reg_rd_data = {32{1'b0}};
  endcase
end
//spyglass enable_block W338, W263
// spyglass disable_block STARC-2.10.1.6, NoConstWithXZ, W443
// Register flop declarations
always @(posedge nvdla_core_clk or negedge nvdla_core_rstn) begin
  if (!nvdla_core_rstn) begin
    atomics[20:0] <= 21'b000000000000000000001;
    data_bank[4:0] <= 5'b00000;
    weight_bank[4:0] <= 5'b00000;
    batches[4:0] <= 5'b00000;
    conv_x_stride_ext[2:0] <= 3'b000;
    conv_y_stride_ext[2:0] <= 3'b000;
    cya[31:0] <= 32'b00000000000000000000000000000000;
    datain_format <= 1'b0;
    datain_height_ext[12:0] <= 13'b0000000000000;
    datain_width_ext[12:0] <= 13'b0000000000000;
    datain_channel_ext[12:0] <= 13'b0000000000000;
    dataout_height[12:0] <= 13'b0000000000000;
    dataout_width[12:0] <= 13'b0000000000000;
    dataout_channel[12:0] <= 13'b0000000000000;
    x_dilation_ext[4:0] <= 5'b00000;
    y_dilation_ext[4:0] <= 5'b00000;
    entries[13:0] <= 14'b00000000000000;
    conv_mode <= 1'b0;
    data_reuse <= 1'b0;
    in_precision[1:0] <= 2'b01;
    proc_precision[1:0] <= 2'b01;
    skip_data_rls <= 1'b0;
    skip_weight_rls <= 1'b0;
    weight_reuse <= 1'b0;
    y_extension[1:0] <= 2'b00;
    pra_truncate[1:0] <= 2'b00;
    rls_slices[11:0] <= 12'b000000000001;
    weight_bytes[31:0] <= 32'b00000000000000000000000000000000;
    weight_format <= 1'b0;
    weight_height_ext[4:0] <= 5'b00000;
    weight_width_ext[4:0] <= 5'b00000;
    weight_channel_ext[12:0] <= 13'b0000000000000;
    weight_kernel[12:0] <= 13'b0000000000000;
    wmb_bytes[27:0] <= 28'b0000000000000000000000000000;
    pad_left[4:0] <= 5'b00000;
    pad_top[4:0] <= 5'b00000;
    pad_value[15:0] <= 16'b0000000000000000;
  end else begin
// Register: NVDLA_CSC_D_ATOMICS_0 Field: atomics
  if (nvdla_csc_d_atomics_0_wren) begin
    atomics[20:0] <= reg_wr_data[20:0];
  end
// Register: NVDLA_CSC_D_BANK_0 Field: data_bank
  if (nvdla_csc_d_bank_0_wren) begin
    data_bank[4:0] <= reg_wr_data[4:0];
  end
// Register: NVDLA_CSC_D_BANK_0 Field: weight_bank
  if (nvdla_csc_d_bank_0_wren) begin
    weight_bank[4:0] <= reg_wr_data[20:16];
  end
// Register: NVDLA_CSC_D_BATCH_NUMBER_0 Field: batches
  if (nvdla_csc_d_batch_number_0_wren) begin
    batches[4:0] <= reg_wr_data[4:0];
  end
// Register: NVDLA_CSC_D_CONV_STRIDE_EXT_0 Field: conv_x_stride_ext
  if (nvdla_csc_d_conv_stride_ext_0_wren) begin
    conv_x_stride_ext[2:0] <= reg_wr_data[2:0];
  end
// Register: NVDLA_CSC_D_CONV_STRIDE_EXT_0 Field: conv_y_stride_ext
  if (nvdla_csc_d_conv_stride_ext_0_wren) begin
    conv_y_stride_ext[2:0] <= reg_wr_data[18:16];
  end
// Register: NVDLA_CSC_D_CYA_0 Field: cya
  if (nvdla_csc_d_cya_0_wren) begin
    cya[31:0] <= reg_wr_data[31:0];
  end
// Register: NVDLA_CSC_D_DATAIN_FORMAT_0 Field: datain_format
  if (nvdla_csc_d_datain_format_0_wren) begin
    datain_format <= reg_wr_data[0];
  end
// Register: NVDLA_CSC_D_DATAIN_SIZE_EXT_0_0 Field: datain_height_ext
  if (nvdla_csc_d_datain_size_ext_0_0_wren) begin
    datain_height_ext[12:0] <= reg_wr_data[28:16];
  end
// Register: NVDLA_CSC_D_DATAIN_SIZE_EXT_0_0 Field: datain_width_ext
  if (nvdla_csc_d_datain_size_ext_0_0_wren) begin
    datain_width_ext[12:0] <= reg_wr_data[12:0];
  end
// Register: NVDLA_CSC_D_DATAIN_SIZE_EXT_1_0 Field: datain_channel_ext
  if (nvdla_csc_d_datain_size_ext_1_0_wren) begin
    datain_channel_ext[12:0] <= reg_wr_data[12:0];
  end
// Register: NVDLA_CSC_D_DATAOUT_SIZE_0_0 Field: dataout_height
  if (nvdla_csc_d_dataout_size_0_0_wren) begin
    dataout_height[12:0] <= reg_wr_data[28:16];
  end
// Register: NVDLA_CSC_D_DATAOUT_SIZE_0_0 Field: dataout_width
  if (nvdla_csc_d_dataout_size_0_0_wren) begin
    dataout_width[12:0] <= reg_wr_data[12:0];
  end
// Register: NVDLA_CSC_D_DATAOUT_SIZE_1_0 Field: dataout_channel
  if (nvdla_csc_d_dataout_size_1_0_wren) begin
    dataout_channel[12:0] <= reg_wr_data[12:0];
  end
// Register: NVDLA_CSC_D_DILATION_EXT_0 Field: x_dilation_ext
  if (nvdla_csc_d_dilation_ext_0_wren) begin
    x_dilation_ext[4:0] <= reg_wr_data[4:0];
  end
// Register: NVDLA_CSC_D_DILATION_EXT_0 Field: y_dilation_ext
  if (nvdla_csc_d_dilation_ext_0_wren) begin
    y_dilation_ext[4:0] <= reg_wr_data[20:16];
  end
// Register: NVDLA_CSC_D_ENTRY_PER_SLICE_0 Field: entries
  if (nvdla_csc_d_entry_per_slice_0_wren) begin
    entries[13:0] <= reg_wr_data[13:0];
  end
// Register: NVDLA_CSC_D_MISC_CFG_0 Field: conv_mode
  if (nvdla_csc_d_misc_cfg_0_wren) begin
    conv_mode <= reg_wr_data[0];
  end
// Register: NVDLA_CSC_D_MISC_CFG_0 Field: data_reuse
  if (nvdla_csc_d_misc_cfg_0_wren) begin
    data_reuse <= reg_wr_data[16];
  end
// Register: NVDLA_CSC_D_MISC_CFG_0 Field: in_precision
  if (nvdla_csc_d_misc_cfg_0_wren) begin
    in_precision[1:0] <= reg_wr_data[9:8];
  end
// Register: NVDLA_CSC_D_MISC_CFG_0 Field: proc_precision
  if (nvdla_csc_d_misc_cfg_0_wren) begin
    proc_precision[1:0] <= reg_wr_data[13:12];
  end
// Register: NVDLA_CSC_D_MISC_CFG_0 Field: skip_data_rls
  if (nvdla_csc_d_misc_cfg_0_wren) begin
    skip_data_rls <= reg_wr_data[24];
  end
// Register: NVDLA_CSC_D_MISC_CFG_0 Field: skip_weight_rls
  if (nvdla_csc_d_misc_cfg_0_wren) begin
    skip_weight_rls <= reg_wr_data[28];
  end
// Register: NVDLA_CSC_D_MISC_CFG_0 Field: weight_reuse
  if (nvdla_csc_d_misc_cfg_0_wren) begin
    weight_reuse <= reg_wr_data[20];
  end
// Not generating flops for field NVDLA_CSC_D_OP_ENABLE_0::op_en (to be implemented outside)
// Register: NVDLA_CSC_D_POST_Y_EXTENSION_0 Field: y_extension
  if (nvdla_csc_d_post_y_extension_0_wren) begin
    y_extension[1:0] <= reg_wr_data[1:0];
  end
// Register: NVDLA_CSC_D_PRA_CFG_0 Field: pra_truncate
  if (nvdla_csc_d_pra_cfg_0_wren) begin
    pra_truncate[1:0] <= reg_wr_data[1:0];
  end
// Register: NVDLA_CSC_D_RELEASE_0 Field: rls_slices
  if (nvdla_csc_d_release_0_wren) begin
    rls_slices[11:0] <= reg_wr_data[11:0];
  end
// Register: NVDLA_CSC_D_WEIGHT_BYTES_0 Field: weight_bytes
  if (nvdla_csc_d_weight_bytes_0_wren) begin
    weight_bytes[31:0] <= reg_wr_data[31:0];
  end
// Register: NVDLA_CSC_D_WEIGHT_FORMAT_0 Field: weight_format
  if (nvdla_csc_d_weight_format_0_wren) begin
    weight_format <= reg_wr_data[0];
  end
// Register: NVDLA_CSC_D_WEIGHT_SIZE_EXT_0_0 Field: weight_height_ext
  if (nvdla_csc_d_weight_size_ext_0_0_wren) begin
    weight_height_ext[4:0] <= reg_wr_data[20:16];
  end
// Register: NVDLA_CSC_D_WEIGHT_SIZE_EXT_0_0 Field: weight_width_ext
  if (nvdla_csc_d_weight_size_ext_0_0_wren) begin
    weight_width_ext[4:0] <= reg_wr_data[4:0];
  end
// Register: NVDLA_CSC_D_WEIGHT_SIZE_EXT_1_0 Field: weight_channel_ext
  if (nvdla_csc_d_weight_size_ext_1_0_wren) begin
    weight_channel_ext[12:0] <= reg_wr_data[12:0];
  end
// Register: NVDLA_CSC_D_WEIGHT_SIZE_EXT_1_0 Field: weight_kernel
  if (nvdla_csc_d_weight_size_ext_1_0_wren) begin
    weight_kernel[12:0] <= reg_wr_data[28:16];
  end
// Register: NVDLA_CSC_D_WMB_BYTES_0 Field: wmb_bytes
  if (nvdla_csc_d_wmb_bytes_0_wren) begin
    wmb_bytes[27:0] <= reg_wr_data[27:0];
  end
// Register: NVDLA_CSC_D_ZERO_PADDING_0 Field: pad_left
  if (nvdla_csc_d_zero_padding_0_wren) begin
    pad_left[4:0] <= reg_wr_data[4:0];
  end
// Register: NVDLA_CSC_D_ZERO_PADDING_0 Field: pad_top
  if (nvdla_csc_d_zero_padding_0_wren) begin
    pad_top[4:0] <= reg_wr_data[20:16];
  end
// Register: NVDLA_CSC_D_ZERO_PADDING_VALUE_0 Field: pad_value
  if (nvdla_csc_d_zero_padding_value_0_wren) begin
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
      (32'h6044 & 32'h00000fff): if (arreggen_dump) $display("%t:%m: reg wr: NVDLA_CSC_D_ATOMICS_0 = 0x%h (old value: 0x%h, 0x%b))", $time, reg_wr_data, nvdla_csc_d_atomics_0_out, nvdla_csc_d_atomics_0_out);
      (32'h605c & 32'h00000fff): if (arreggen_dump) $display("%t:%m: reg wr: NVDLA_CSC_D_BANK_0 = 0x%h (old value: 0x%h, 0x%b))", $time, reg_wr_data, nvdla_csc_d_bank_0_out, nvdla_csc_d_bank_0_out);
      (32'h601c & 32'h00000fff): if (arreggen_dump) $display("%t:%m: reg wr: NVDLA_CSC_D_BATCH_NUMBER_0 = 0x%h (old value: 0x%h, 0x%b))", $time, reg_wr_data, nvdla_csc_d_batch_number_0_out, nvdla_csc_d_batch_number_0_out);
      (32'h604c & 32'h00000fff): if (arreggen_dump) $display("%t:%m: reg wr: NVDLA_CSC_D_CONV_STRIDE_EXT_0 = 0x%h (old value: 0x%h, 0x%b))", $time, reg_wr_data, nvdla_csc_d_conv_stride_ext_0_out, nvdla_csc_d_conv_stride_ext_0_out);
      (32'h6064 & 32'h00000fff): if (arreggen_dump) $display("%t:%m: reg wr: NVDLA_CSC_D_CYA_0 = 0x%h (old value: 0x%h, 0x%b))", $time, reg_wr_data, nvdla_csc_d_cya_0_out, nvdla_csc_d_cya_0_out);
      (32'h6010 & 32'h00000fff): if (arreggen_dump) $display("%t:%m: reg wr: NVDLA_CSC_D_DATAIN_FORMAT_0 = 0x%h (old value: 0x%h, 0x%b))", $time, reg_wr_data, nvdla_csc_d_datain_format_0_out, nvdla_csc_d_datain_format_0_out);
      (32'h6014 & 32'h00000fff): if (arreggen_dump) $display("%t:%m: reg wr: NVDLA_CSC_D_DATAIN_SIZE_EXT_0_0 = 0x%h (old value: 0x%h, 0x%b))", $time, reg_wr_data, nvdla_csc_d_datain_size_ext_0_0_out, nvdla_csc_d_datain_size_ext_0_0_out);
      (32'h6018 & 32'h00000fff): if (arreggen_dump) $display("%t:%m: reg wr: NVDLA_CSC_D_DATAIN_SIZE_EXT_1_0 = 0x%h (old value: 0x%h, 0x%b))", $time, reg_wr_data, nvdla_csc_d_datain_size_ext_1_0_out, nvdla_csc_d_datain_size_ext_1_0_out);
      (32'h603c & 32'h00000fff): if (arreggen_dump) $display("%t:%m: reg wr: NVDLA_CSC_D_DATAOUT_SIZE_0_0 = 0x%h (old value: 0x%h, 0x%b))", $time, reg_wr_data, nvdla_csc_d_dataout_size_0_0_out, nvdla_csc_d_dataout_size_0_0_out);
      (32'h6040 & 32'h00000fff): if (arreggen_dump) $display("%t:%m: reg wr: NVDLA_CSC_D_DATAOUT_SIZE_1_0 = 0x%h (old value: 0x%h, 0x%b))", $time, reg_wr_data, nvdla_csc_d_dataout_size_1_0_out, nvdla_csc_d_dataout_size_1_0_out);
      (32'h6050 & 32'h00000fff): if (arreggen_dump) $display("%t:%m: reg wr: NVDLA_CSC_D_DILATION_EXT_0 = 0x%h (old value: 0x%h, 0x%b))", $time, reg_wr_data, nvdla_csc_d_dilation_ext_0_out, nvdla_csc_d_dilation_ext_0_out);
      (32'h6024 & 32'h00000fff): if (arreggen_dump) $display("%t:%m: reg wr: NVDLA_CSC_D_ENTRY_PER_SLICE_0 = 0x%h (old value: 0x%h, 0x%b))", $time, reg_wr_data, nvdla_csc_d_entry_per_slice_0_out, nvdla_csc_d_entry_per_slice_0_out);
      (32'h600c & 32'h00000fff): if (arreggen_dump) $display("%t:%m: reg wr: NVDLA_CSC_D_MISC_CFG_0 = 0x%h (old value: 0x%h, 0x%b))", $time, reg_wr_data, nvdla_csc_d_misc_cfg_0_out, nvdla_csc_d_misc_cfg_0_out);
      (32'h6008 & 32'h00000fff): if (arreggen_dump) $display("%t:%m: reg wr: NVDLA_CSC_D_OP_ENABLE_0 = 0x%h (old value: 0x%h, 0x%b))", $time, reg_wr_data, nvdla_csc_d_op_enable_0_out, nvdla_csc_d_op_enable_0_out);
      (32'h6020 & 32'h00000fff): if (arreggen_dump) $display("%t:%m: reg wr: NVDLA_CSC_D_POST_Y_EXTENSION_0 = 0x%h (old value: 0x%h, 0x%b))", $time, reg_wr_data, nvdla_csc_d_post_y_extension_0_out, nvdla_csc_d_post_y_extension_0_out);
      (32'h6060 & 32'h00000fff): if (arreggen_dump) $display("%t:%m: reg wr: NVDLA_CSC_D_PRA_CFG_0 = 0x%h (old value: 0x%h, 0x%b))", $time, reg_wr_data, nvdla_csc_d_pra_cfg_0_out, nvdla_csc_d_pra_cfg_0_out);
      (32'h6048 & 32'h00000fff): if (arreggen_dump) $display("%t:%m: reg wr: NVDLA_CSC_D_RELEASE_0 = 0x%h (old value: 0x%h, 0x%b))", $time, reg_wr_data, nvdla_csc_d_release_0_out, nvdla_csc_d_release_0_out);
      (32'h6034 & 32'h00000fff): if (arreggen_dump) $display("%t:%m: reg wr: NVDLA_CSC_D_WEIGHT_BYTES_0 = 0x%h (old value: 0x%h, 0x%b))", $time, reg_wr_data, nvdla_csc_d_weight_bytes_0_out, nvdla_csc_d_weight_bytes_0_out);
      (32'h6028 & 32'h00000fff): if (arreggen_dump) $display("%t:%m: reg wr: NVDLA_CSC_D_WEIGHT_FORMAT_0 = 0x%h (old value: 0x%h, 0x%b))", $time, reg_wr_data, nvdla_csc_d_weight_format_0_out, nvdla_csc_d_weight_format_0_out);
      (32'h602c & 32'h00000fff): if (arreggen_dump) $display("%t:%m: reg wr: NVDLA_CSC_D_WEIGHT_SIZE_EXT_0_0 = 0x%h (old value: 0x%h, 0x%b))", $time, reg_wr_data, nvdla_csc_d_weight_size_ext_0_0_out, nvdla_csc_d_weight_size_ext_0_0_out);
      (32'h6030 & 32'h00000fff): if (arreggen_dump) $display("%t:%m: reg wr: NVDLA_CSC_D_WEIGHT_SIZE_EXT_1_0 = 0x%h (old value: 0x%h, 0x%b))", $time, reg_wr_data, nvdla_csc_d_weight_size_ext_1_0_out, nvdla_csc_d_weight_size_ext_1_0_out);
      (32'h6038 & 32'h00000fff): if (arreggen_dump) $display("%t:%m: reg wr: NVDLA_CSC_D_WMB_BYTES_0 = 0x%h (old value: 0x%h, 0x%b))", $time, reg_wr_data, nvdla_csc_d_wmb_bytes_0_out, nvdla_csc_d_wmb_bytes_0_out);
      (32'h6054 & 32'h00000fff): if (arreggen_dump) $display("%t:%m: reg wr: NVDLA_CSC_D_ZERO_PADDING_0 = 0x%h (old value: 0x%h, 0x%b))", $time, reg_wr_data, nvdla_csc_d_zero_padding_0_out, nvdla_csc_d_zero_padding_0_out);
      (32'h6058 & 32'h00000fff): if (arreggen_dump) $display("%t:%m: reg wr: NVDLA_CSC_D_ZERO_PADDING_VALUE_0 = 0x%h (old value: 0x%h, 0x%b))", $time, reg_wr_data, nvdla_csc_d_zero_padding_value_0_out, nvdla_csc_d_zero_padding_value_0_out);
      default: begin
          if (arreggen_dump) $display("%t:%m: reg wr: Unknown register (0x%h) = 0x%h", $time, reg_offset, reg_wr_data);
          if (arreggen_abort_on_invalid_wr) begin $display("ERROR: write to undefined register!"); $finish; end
        end
    endcase
  end
end
// VCS coverage on
// synopsys translate_on
endmodule // NV_NVDLA_CSC_dual_reg
