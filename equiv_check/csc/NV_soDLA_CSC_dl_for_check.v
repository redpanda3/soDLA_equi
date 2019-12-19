module NV_soDLA_CSC_dl_for_check( // @[:@3.2]
  input          nvdla_core_clk, // @[:@6.4]
  input          nvdla_core_ng_clk, // @[:@6.4]
  input          nvdla_core_rstn, // @[:@6.4]
  input  [1:0]   sc_state, // @[:@6.4]
  input          sg2dl_reuse_rls, // @[:@6.4]
  input          sg2dl_pvld, // @[:@6.4]
  input  [30:0]  sg2dl_pd, // @[:@6.4]
  input          cdma2sc_dat_updt, // @[:@6.4]
  input  [14:0]  cdma2sc_dat_entries, // @[:@6.4]
  input  [13:0]  cdma2sc_dat_slices, // @[:@6.4]
  input          sc2cdma_dat_pending_req, // @[:@6.4]
  output         sc2cdma_dat_updt, // @[:@6.4]
  output [14:0]  sc2cdma_dat_entries, // @[:@6.4]
  output [13:0]  sc2cdma_dat_slices, // @[:@6.4]
  output         sc2buf_dat_rd_en, // @[:@6.4]
  output [12:0]  sc2buf_dat_rd_addr, // @[:@6.4]
  input          sc2buf_dat_rd_valid, // @[:@6.4]
  input  [511:0] sc2buf_dat_rd_data, // @[:@6.4]
  output         sc2mac_dat_a_pvld, // @[:@6.4]
  output [63:0]  sc2mac_dat_a_bits_mask, // @[:@6.4]
  output [7:0]   sc2mac_dat_a_bits_data0, // @[:@6.4]
  output [7:0]   sc2mac_dat_a_bits_data1, // @[:@6.4]
  output [7:0]   sc2mac_dat_a_bits_data2, // @[:@6.4]
  output [7:0]   sc2mac_dat_a_bits_data3, // @[:@6.4]
  output [7:0]   sc2mac_dat_a_bits_data4, // @[:@6.4]
  output [7:0]   sc2mac_dat_a_bits_data5, // @[:@6.4]
  output [7:0]   sc2mac_dat_a_bits_data6, // @[:@6.4]
  output [7:0]   sc2mac_dat_a_bits_data7, // @[:@6.4]
  output [7:0]   sc2mac_dat_a_bits_data8, // @[:@6.4]
  output [7:0]   sc2mac_dat_a_bits_data9, // @[:@6.4]
  output [7:0]   sc2mac_dat_a_bits_data10, // @[:@6.4]
  output [7:0]   sc2mac_dat_a_bits_data11, // @[:@6.4]
  output [7:0]   sc2mac_dat_a_bits_data12, // @[:@6.4]
  output [7:0]   sc2mac_dat_a_bits_data13, // @[:@6.4]
  output [7:0]   sc2mac_dat_a_bits_data14, // @[:@6.4]
  output [7:0]   sc2mac_dat_a_bits_data15, // @[:@6.4]
  output [7:0]   sc2mac_dat_a_bits_data16, // @[:@6.4]
  output [7:0]   sc2mac_dat_a_bits_data17, // @[:@6.4]
  output [7:0]   sc2mac_dat_a_bits_data18, // @[:@6.4]
  output [7:0]   sc2mac_dat_a_bits_data19, // @[:@6.4]
  output [7:0]   sc2mac_dat_a_bits_data20, // @[:@6.4]
  output [7:0]   sc2mac_dat_a_bits_data21, // @[:@6.4]
  output [7:0]   sc2mac_dat_a_bits_data22, // @[:@6.4]
  output [7:0]   sc2mac_dat_a_bits_data23, // @[:@6.4]
  output [7:0]   sc2mac_dat_a_bits_data24, // @[:@6.4]
  output [7:0]   sc2mac_dat_a_bits_data25, // @[:@6.4]
  output [7:0]   sc2mac_dat_a_bits_data26, // @[:@6.4]
  output [7:0]   sc2mac_dat_a_bits_data27, // @[:@6.4]
  output [7:0]   sc2mac_dat_a_bits_data28, // @[:@6.4]
  output [7:0]   sc2mac_dat_a_bits_data29, // @[:@6.4]
  output [7:0]   sc2mac_dat_a_bits_data30, // @[:@6.4]
  output [7:0]   sc2mac_dat_a_bits_data31, // @[:@6.4]
  output [7:0]   sc2mac_dat_a_bits_data32, // @[:@6.4]
  output [7:0]   sc2mac_dat_a_bits_data33, // @[:@6.4]
  output [7:0]   sc2mac_dat_a_bits_data34, // @[:@6.4]
  output [7:0]   sc2mac_dat_a_bits_data35, // @[:@6.4]
  output [7:0]   sc2mac_dat_a_bits_data36, // @[:@6.4]
  output [7:0]   sc2mac_dat_a_bits_data37, // @[:@6.4]
  output [7:0]   sc2mac_dat_a_bits_data38, // @[:@6.4]
  output [7:0]   sc2mac_dat_a_bits_data39, // @[:@6.4]
  output [7:0]   sc2mac_dat_a_bits_data40, // @[:@6.4]
  output [7:0]   sc2mac_dat_a_bits_data41, // @[:@6.4]
  output [7:0]   sc2mac_dat_a_bits_data42, // @[:@6.4]
  output [7:0]   sc2mac_dat_a_bits_data43, // @[:@6.4]
  output [7:0]   sc2mac_dat_a_bits_data44, // @[:@6.4]
  output [7:0]   sc2mac_dat_a_bits_data45, // @[:@6.4]
  output [7:0]   sc2mac_dat_a_bits_data46, // @[:@6.4]
  output [7:0]   sc2mac_dat_a_bits_data47, // @[:@6.4]
  output [7:0]   sc2mac_dat_a_bits_data48, // @[:@6.4]
  output [7:0]   sc2mac_dat_a_bits_data49, // @[:@6.4]
  output [7:0]   sc2mac_dat_a_bits_data50, // @[:@6.4]
  output [7:0]   sc2mac_dat_a_bits_data51, // @[:@6.4]
  output [7:0]   sc2mac_dat_a_bits_data52, // @[:@6.4]
  output [7:0]   sc2mac_dat_a_bits_data53, // @[:@6.4]
  output [7:0]   sc2mac_dat_a_bits_data54, // @[:@6.4]
  output [7:0]   sc2mac_dat_a_bits_data55, // @[:@6.4]
  output [7:0]   sc2mac_dat_a_bits_data56, // @[:@6.4]
  output [7:0]   sc2mac_dat_a_bits_data57, // @[:@6.4]
  output [7:0]   sc2mac_dat_a_bits_data58, // @[:@6.4]
  output [7:0]   sc2mac_dat_a_bits_data59, // @[:@6.4]
  output [7:0]   sc2mac_dat_a_bits_data60, // @[:@6.4]
  output [7:0]   sc2mac_dat_a_bits_data61, // @[:@6.4]
  output [7:0]   sc2mac_dat_a_bits_data62, // @[:@6.4]
  output [7:0]   sc2mac_dat_a_bits_data63, // @[:@6.4]
  output [8:0]   sc2mac_dat_a_pd, // @[:@6.4]
  output         sc2mac_dat_b_pvld, // @[:@6.4]
  output [63:0]  sc2mac_dat_b_bits_mask, // @[:@6.4]
  output [7:0]   sc2mac_dat_b_bits_data0, // @[:@6.4]
  output [7:0]   sc2mac_dat_b_bits_data1, // @[:@6.4]
  output [7:0]   sc2mac_dat_b_bits_data2, // @[:@6.4]
  output [7:0]   sc2mac_dat_b_bits_data3, // @[:@6.4]
  output [7:0]   sc2mac_dat_b_bits_data4, // @[:@6.4]
  output [7:0]   sc2mac_dat_b_bits_data5, // @[:@6.4]
  output [7:0]   sc2mac_dat_b_bits_data6, // @[:@6.4]
  output [7:0]   sc2mac_dat_b_bits_data7, // @[:@6.4]
  output [7:0]   sc2mac_dat_b_bits_data8, // @[:@6.4]
  output [7:0]   sc2mac_dat_b_bits_data9, // @[:@6.4]
  output [7:0]   sc2mac_dat_b_bits_data10, // @[:@6.4]
  output [7:0]   sc2mac_dat_b_bits_data11, // @[:@6.4]
  output [7:0]   sc2mac_dat_b_bits_data12, // @[:@6.4]
  output [7:0]   sc2mac_dat_b_bits_data13, // @[:@6.4]
  output [7:0]   sc2mac_dat_b_bits_data14, // @[:@6.4]
  output [7:0]   sc2mac_dat_b_bits_data15, // @[:@6.4]
  output [7:0]   sc2mac_dat_b_bits_data16, // @[:@6.4]
  output [7:0]   sc2mac_dat_b_bits_data17, // @[:@6.4]
  output [7:0]   sc2mac_dat_b_bits_data18, // @[:@6.4]
  output [7:0]   sc2mac_dat_b_bits_data19, // @[:@6.4]
  output [7:0]   sc2mac_dat_b_bits_data20, // @[:@6.4]
  output [7:0]   sc2mac_dat_b_bits_data21, // @[:@6.4]
  output [7:0]   sc2mac_dat_b_bits_data22, // @[:@6.4]
  output [7:0]   sc2mac_dat_b_bits_data23, // @[:@6.4]
  output [7:0]   sc2mac_dat_b_bits_data24, // @[:@6.4]
  output [7:0]   sc2mac_dat_b_bits_data25, // @[:@6.4]
  output [7:0]   sc2mac_dat_b_bits_data26, // @[:@6.4]
  output [7:0]   sc2mac_dat_b_bits_data27, // @[:@6.4]
  output [7:0]   sc2mac_dat_b_bits_data28, // @[:@6.4]
  output [7:0]   sc2mac_dat_b_bits_data29, // @[:@6.4]
  output [7:0]   sc2mac_dat_b_bits_data30, // @[:@6.4]
  output [7:0]   sc2mac_dat_b_bits_data31, // @[:@6.4]
  output [7:0]   sc2mac_dat_b_bits_data32, // @[:@6.4]
  output [7:0]   sc2mac_dat_b_bits_data33, // @[:@6.4]
  output [7:0]   sc2mac_dat_b_bits_data34, // @[:@6.4]
  output [7:0]   sc2mac_dat_b_bits_data35, // @[:@6.4]
  output [7:0]   sc2mac_dat_b_bits_data36, // @[:@6.4]
  output [7:0]   sc2mac_dat_b_bits_data37, // @[:@6.4]
  output [7:0]   sc2mac_dat_b_bits_data38, // @[:@6.4]
  output [7:0]   sc2mac_dat_b_bits_data39, // @[:@6.4]
  output [7:0]   sc2mac_dat_b_bits_data40, // @[:@6.4]
  output [7:0]   sc2mac_dat_b_bits_data41, // @[:@6.4]
  output [7:0]   sc2mac_dat_b_bits_data42, // @[:@6.4]
  output [7:0]   sc2mac_dat_b_bits_data43, // @[:@6.4]
  output [7:0]   sc2mac_dat_b_bits_data44, // @[:@6.4]
  output [7:0]   sc2mac_dat_b_bits_data45, // @[:@6.4]
  output [7:0]   sc2mac_dat_b_bits_data46, // @[:@6.4]
  output [7:0]   sc2mac_dat_b_bits_data47, // @[:@6.4]
  output [7:0]   sc2mac_dat_b_bits_data48, // @[:@6.4]
  output [7:0]   sc2mac_dat_b_bits_data49, // @[:@6.4]
  output [7:0]   sc2mac_dat_b_bits_data50, // @[:@6.4]
  output [7:0]   sc2mac_dat_b_bits_data51, // @[:@6.4]
  output [7:0]   sc2mac_dat_b_bits_data52, // @[:@6.4]
  output [7:0]   sc2mac_dat_b_bits_data53, // @[:@6.4]
  output [7:0]   sc2mac_dat_b_bits_data54, // @[:@6.4]
  output [7:0]   sc2mac_dat_b_bits_data55, // @[:@6.4]
  output [7:0]   sc2mac_dat_b_bits_data56, // @[:@6.4]
  output [7:0]   sc2mac_dat_b_bits_data57, // @[:@6.4]
  output [7:0]   sc2mac_dat_b_bits_data58, // @[:@6.4]
  output [7:0]   sc2mac_dat_b_bits_data59, // @[:@6.4]
  output [7:0]   sc2mac_dat_b_bits_data60, // @[:@6.4]
  output [7:0]   sc2mac_dat_b_bits_data61, // @[:@6.4]
  output [7:0]   sc2mac_dat_b_bits_data62, // @[:@6.4]
  output [7:0]   sc2mac_dat_b_bits_data63, // @[:@6.4]
  output [8:0]   sc2mac_dat_b_pd, // @[:@6.4]
  input          reg2dp_op_en, // @[:@6.4]
  input          reg2dp_conv_mode, // @[:@6.4]
  input  [4:0]   reg2dp_batches, // @[:@6.4]
  input  [1:0]   reg2dp_proc_precision, // @[:@6.4]
  input          reg2dp_datain_format, // @[:@6.4]
  input          reg2dp_skip_data_rls, // @[:@6.4]
  input  [12:0]  reg2dp_datain_channel_ext, // @[:@6.4]
  input  [12:0]  reg2dp_datain_height_ext, // @[:@6.4]
  input  [12:0]  reg2dp_datain_width_ext, // @[:@6.4]
  input  [1:0]   reg2dp_y_extension, // @[:@6.4]
  input  [12:0]  reg2dp_weight_channel_ext, // @[:@6.4]
  input  [13:0]  reg2dp_entries, // @[:@6.4]
  input  [12:0]  reg2dp_dataout_width, // @[:@6.4]
  input  [11:0]  reg2dp_rls_slices, // @[:@6.4]
  input  [2:0]   reg2dp_conv_x_stride_ext, // @[:@6.4]
  input  [2:0]   reg2dp_conv_y_stride_ext, // @[:@6.4]
  input  [4:0]   reg2dp_x_dilation_ext, // @[:@6.4]
  input  [4:0]   reg2dp_y_dilation_ext, // @[:@6.4]
  input  [4:0]   reg2dp_pad_left, // @[:@6.4]
  input  [4:0]   reg2dp_pad_top, // @[:@6.4]
  input  [15:0]  reg2dp_pad_value, // @[:@6.4]
  input  [4:0]   reg2dp_data_bank, // @[:@6.4]
  input  [1:0]   reg2dp_pra_truncate, // @[:@6.4]
  output         slcg_wg_en // @[:@6.4]
);
  wire  _T_337; // @[NV_NVDLA_CSC_dl_for_check.scala 95:38:@8.4]
  wire  is_sg_idle; // @[NV_NVDLA_CSC_dl_for_check.scala 99:31:@9.4]
  wire  is_sg_done; // @[NV_NVDLA_CSC_dl_for_check.scala 101:31:@11.4]
  wire  layer_st; // @[NV_NVDLA_CSC_dl_for_check.scala 108:32:@14.4]
  wire  is_conv; // @[NV_NVDLA_CSC_dl_for_check.scala 110:35:@16.4]
  wire  is_img; // @[NV_NVDLA_CSC_dl_for_check.scala 111:22:@17.4]
  wire [6:0] _T_346; // @[NV_NVDLA_CSC_dl_for_check.scala 118:53:@18.4]
  wire [6:0] _T_348; // @[NV_NVDLA_CSC_dl_for_check.scala 118:24:@19.4]
  wire [2:0] sub_h_total_w; // @[NV_NVDLA_CSC_dl_for_check.scala 118:100:@20.4]
  wire [2:0] sub_h_cmp_w; // @[NV_NVDLA_CSC_dl_for_check.scala 119:22:@21.4]
  wire [3:0] _T_351; // @[NV_NVDLA_CSC_dl_for_check.scala 120:34:@22.4]
  wire [3:0] dataout_w_init; // @[NV_NVDLA_CSC_dl_for_check.scala 120:34:@23.4]
  wire [3:0] conv_x_stride_w; // @[NV_NVDLA_CSC_dl_for_check.scala 121:51:@24.4]
  wire [1:0] _T_353; // @[NV_NVDLA_CSC_dl_for_check.scala 122:62:@25.4]
  wire [5:0] _T_356; // @[Cat.scala 30:58:@26.4]
  wire [4:0] _T_359; // @[Cat.scala 30:58:@27.4]
  wire [4:0] _GEN_671; // @[NV_NVDLA_CSC_dl_for_check.scala 124:74:@28.4]
  wire [5:0] _T_360; // @[NV_NVDLA_CSC_dl_for_check.scala 124:74:@28.4]
  wire  _T_361; // @[Mux.scala 46:19:@29.4]
  wire [5:0] _T_362; // @[Mux.scala 46:16:@30.4]
  wire  _T_363; // @[Mux.scala 46:19:@31.4]
  wire [5:0] pixel_x_stride_w; // @[Mux.scala 46:16:@32.4]
  wire  _T_365; // @[NV_NVDLA_CSC_dl_for_check.scala 126:88:@33.4]
  wire [5:0] _T_371; // @[NV_NVDLA_CSC_dl_for_check.scala 126:172:@35.4]
  wire [5:0] _T_372; // @[NV_NVDLA_CSC_dl_for_check.scala 126:58:@36.4]
  wire [6:0] _T_375; // @[Cat.scala 30:58:@37.4]
  wire [6:0] _GEN_672; // @[NV_NVDLA_CSC_dl_for_check.scala 127:81:@38.4]
  wire [7:0] _T_376; // @[NV_NVDLA_CSC_dl_for_check.scala 127:81:@38.4]
  wire [6:0] _T_377; // @[NV_NVDLA_CSC_dl_for_check.scala 127:81:@39.4]
  wire [6:0] _GEN_673; // @[NV_NVDLA_CSC_dl_for_check.scala 127:100:@41.4]
  wire [7:0] _T_379; // @[NV_NVDLA_CSC_dl_for_check.scala 127:100:@41.4]
  wire [6:0] _T_380; // @[NV_NVDLA_CSC_dl_for_check.scala 127:100:@42.4]
  wire [6:0] _T_383; // @[NV_NVDLA_CSC_dl_for_check.scala 128:58:@44.4]
  wire [5:0] _T_384; // @[NV_NVDLA_CSC_dl_for_check.scala 128:58:@45.4]
  wire  _T_385; // @[Mux.scala 46:19:@46.4]
  wire [5:0] _T_386; // @[Mux.scala 46:16:@47.4]
  wire  _T_387; // @[Mux.scala 46:19:@48.4]
  wire [6:0] pixel_x_init_w; // @[Mux.scala 46:16:@49.4]
  wire [6:0] pixel_x_init_offset_w; // @[NV_NVDLA_CSC_dl_for_check.scala 129:80:@51.4]
  wire [7:0] _T_392; // @[Cat.scala 30:58:@52.4]
  wire [6:0] _T_397; // @[Mux.scala 46:16:@55.4]
  wire [7:0] pixel_x_add_w; // @[Mux.scala 46:16:@57.4]
  wire [11:0] pixel_ch_stride_w; // @[Cat.scala 30:58:@58.4]
  wire [3:0] conv_y_stride_w; // @[NV_NVDLA_CSC_dl_for_check.scala 139:52:@59.4]
  wire [5:0] _T_403; // @[NV_NVDLA_CSC_dl_for_check.scala 140:60:@60.4]
  wire [5:0] x_dilate_w; // @[NV_NVDLA_CSC_dl_for_check.scala 140:21:@61.4]
  wire [5:0] _T_406; // @[NV_NVDLA_CSC_dl_for_check.scala 141:60:@62.4]
  wire [5:0] y_dilate_w; // @[NV_NVDLA_CSC_dl_for_check.scala 141:21:@63.4]
  reg  layer_st_d1; // @[NV_NVDLA_CSC_dl_for_check.scala 143:26:@64.4]
  reg [31:0] _RAND_0;
  reg [5:0] data_batch; // @[NV_NVDLA_CSC_dl_for_check.scala 144:25:@66.4]
  reg [31:0] _RAND_1;
  reg [13:0] rls_slices; // @[NV_NVDLA_CSC_dl_for_check.scala 145:25:@68.4]
  reg [31:0] _RAND_2;
  reg [13:0] h_offset_slice; // @[NV_NVDLA_CSC_dl_for_check.scala 146:29:@70.4]
  reg [31:0] _RAND_3;
  reg [14:0] entries; // @[NV_NVDLA_CSC_dl_for_check.scala 147:22:@72.4]
  reg [31:0] _RAND_4;
  reg [14:0] entries_batch; // @[NV_NVDLA_CSC_dl_for_check.scala 148:28:@74.4]
  reg [31:0] _RAND_5;
  reg [12:0] dataout_width_cmp; // @[NV_NVDLA_CSC_dl_for_check.scala 149:32:@76.4]
  reg [31:0] _RAND_6;
  reg [14:0] rls_entries; // @[NV_NVDLA_CSC_dl_for_check.scala 151:26:@80.4]
  reg [31:0] _RAND_7;
  reg [11:0] h_bias_0_stride; // @[NV_NVDLA_CSC_dl_for_check.scala 152:30:@82.4]
  reg [31:0] _RAND_8;
  reg [11:0] h_bias_1_stride; // @[NV_NVDLA_CSC_dl_for_check.scala 153:30:@84.4]
  reg [31:0] _RAND_9;
  reg [13:0] slice_left; // @[NV_NVDLA_CSC_dl_for_check.scala 154:25:@86.4]
  reg [31:0] _RAND_10;
  wire [14:0] entries_single_w; // @[NV_NVDLA_CSC_dl_for_check.scala 157:43:@87.4]
  wire [20:0] _T_477; // @[NV_NVDLA_CSC_dl_for_check.scala 158:41:@89.4]
  wire [14:0] entries_batch_w; // @[NV_NVDLA_CSC_dl_for_check.scala 158:56:@90.4]
  wire [11:0] h_offset_slice_w; // @[NV_NVDLA_CSC_dl_for_check.scala 160:37:@91.4]
  wire [14:0] _GEN_674; // @[NV_NVDLA_CSC_dl_for_check.scala 161:34:@92.4]
  wire [20:0] _T_478; // @[NV_NVDLA_CSC_dl_for_check.scala 161:34:@92.4]
  wire [11:0] h_bias_0_stride_w; // @[NV_NVDLA_CSC_dl_for_check.scala 161:47:@93.4]
  wire [14:0] _GEN_675; // @[NV_NVDLA_CSC_dl_for_check.scala 162:34:@94.4]
  wire [28:0] _T_479; // @[NV_NVDLA_CSC_dl_for_check.scala 162:34:@94.4]
  wire [11:0] h_bias_1_stride_w; // @[NV_NVDLA_CSC_dl_for_check.scala 162:51:@95.4]
  wire [12:0] _T_481; // @[NV_NVDLA_CSC_dl_for_check.scala 163:41:@96.4]
  wire [11:0] rls_slices_w; // @[NV_NVDLA_CSC_dl_for_check.scala 163:41:@97.4]
  wire [13:0] _T_483; // @[NV_NVDLA_CSC_dl_for_check.scala 164:77:@98.4]
  wire [12:0] _GEN_676; // @[NV_NVDLA_CSC_dl_for_check.scala 164:113:@99.4]
  wire [13:0] _T_484; // @[NV_NVDLA_CSC_dl_for_check.scala 164:113:@99.4]
  wire [13:0] _T_485; // @[NV_NVDLA_CSC_dl_for_check.scala 164:113:@100.4]
  wire [13:0] slice_left_w; // @[NV_NVDLA_CSC_dl_for_check.scala 164:23:@101.4]
  wire [13:0] slices_oprand; // @[NV_NVDLA_CSC_dl_for_check.scala 165:24:@102.4]
  wire [14:0] _GEN_677; // @[NV_NVDLA_CSC_dl_for_check.scala 166:38:@103.4]
  wire [28:0] _T_486; // @[NV_NVDLA_CSC_dl_for_check.scala 166:38:@103.4]
  wire [14:0] slice_entries_w; // @[NV_NVDLA_CSC_dl_for_check.scala 166:54:@104.4]
  reg [33:0] is_img_d1; // @[NV_NVDLA_CSC_dl_for_check.scala 171:24:@110.4]
  reg [63:0] _RAND_11;
  reg [4:0] data_bank; // @[NV_NVDLA_CSC_dl_for_check.scala 172:24:@112.4]
  reg [31:0] _RAND_12;
  reg [13:0] datain_width; // @[NV_NVDLA_CSC_dl_for_check.scala 173:27:@114.4]
  reg [31:0] _RAND_13;
  reg [12:0] datain_width_cmp; // @[NV_NVDLA_CSC_dl_for_check.scala 174:31:@116.4]
  reg [31:0] _RAND_14;
  reg [12:0] datain_height_cmp; // @[NV_NVDLA_CSC_dl_for_check.scala 175:32:@118.4]
  reg [31:0] _RAND_15;
  reg [10:0] datain_channel_cmp; // @[NV_NVDLA_CSC_dl_for_check.scala 176:33:@120.4]
  reg [31:0] _RAND_16;
  reg [2:0] sub_h_total_g0; // @[NV_NVDLA_CSC_dl_for_check.scala 177:29:@121.4]
  reg [31:0] _RAND_17;
  reg [2:0] sub_h_total_g1; // @[NV_NVDLA_CSC_dl_for_check.scala 178:29:@122.4]
  reg [31:0] _RAND_18;
  reg [2:0] sub_h_total_g3; // @[NV_NVDLA_CSC_dl_for_check.scala 180:29:@124.4]
  reg [31:0] _RAND_19;
  reg [2:0] sub_h_total_g4; // @[NV_NVDLA_CSC_dl_for_check.scala 181:29:@125.4]
  reg [31:0] _RAND_20;
  reg [2:0] sub_h_total_g5; // @[NV_NVDLA_CSC_dl_for_check.scala 182:29:@126.4]
  reg [31:0] _RAND_21;
  reg [2:0] sub_h_total_g6; // @[NV_NVDLA_CSC_dl_for_check.scala 183:29:@127.4]
  reg [31:0] _RAND_22;
  reg [2:0] sub_h_total_g8; // @[NV_NVDLA_CSC_dl_for_check.scala 185:29:@129.4]
  reg [31:0] _RAND_23;
  reg [2:0] sub_h_total_g9; // @[NV_NVDLA_CSC_dl_for_check.scala 186:29:@130.4]
  reg [31:0] _RAND_24;
  reg [2:0] sub_h_total_g11; // @[NV_NVDLA_CSC_dl_for_check.scala 188:30:@132.4]
  reg [31:0] _RAND_25;
  reg [2:0] sub_h_cmp_g0; // @[NV_NVDLA_CSC_dl_for_check.scala 189:27:@133.4]
  reg [31:0] _RAND_26;
  reg [2:0] sub_h_cmp_g1; // @[NV_NVDLA_CSC_dl_for_check.scala 190:27:@134.4]
  reg [31:0] _RAND_27;
  reg [3:0] conv_x_stride; // @[NV_NVDLA_CSC_dl_for_check.scala 191:28:@136.4]
  reg [31:0] _RAND_28;
  reg [3:0] conv_y_stride; // @[NV_NVDLA_CSC_dl_for_check.scala 192:28:@138.4]
  reg [31:0] _RAND_29;
  reg [4:0] batch_cmp; // @[NV_NVDLA_CSC_dl_for_check.scala 194:24:@141.4]
  reg [31:0] _RAND_30;
  reg [6:0] pixel_x_init; // @[NV_NVDLA_CSC_dl_for_check.scala 195:27:@143.4]
  reg [31:0] _RAND_31;
  reg [6:0] pixel_x_init_offset; // @[NV_NVDLA_CSC_dl_for_check.scala 196:34:@145.4]
  reg [31:0] _RAND_32;
  reg [7:0] pixel_x_add; // @[NV_NVDLA_CSC_dl_for_check.scala 197:26:@147.4]
  reg [31:0] _RAND_33;
  reg [6:0] pixel_x_byte_stride; // @[NV_NVDLA_CSC_dl_for_check.scala 198:34:@149.4]
  reg [31:0] _RAND_34;
  reg [11:0] pixel_ch_stride; // @[NV_NVDLA_CSC_dl_for_check.scala 199:30:@151.4]
  reg [31:0] _RAND_35;
  reg [5:0] x_dilate; // @[NV_NVDLA_CSC_dl_for_check.scala 200:23:@153.4]
  reg [31:0] _RAND_36;
  reg [5:0] y_dilate; // @[NV_NVDLA_CSC_dl_for_check.scala 201:23:@155.4]
  reg [31:0] _RAND_37;
  reg [15:0] pad_value; // @[NV_NVDLA_CSC_dl_for_check.scala 202:24:@157.4]
  reg [31:0] _RAND_38;
  reg [14:0] entries_cmp; // @[NV_NVDLA_CSC_dl_for_check.scala 203:26:@159.4]
  reg [31:0] _RAND_39;
  reg [14:0] h_bias_2_stride; // @[NV_NVDLA_CSC_dl_for_check.scala 204:30:@161.4]
  reg [31:0] _RAND_40;
  reg [14:0] h_bias_3_stride; // @[NV_NVDLA_CSC_dl_for_check.scala 205:30:@163.4]
  reg [31:0] _RAND_41;
  reg [13:0] last_slices; // @[NV_NVDLA_CSC_dl_for_check.scala 207:26:@165.4]
  reg [31:0] _RAND_42;
  reg [14:0] last_entries; // @[NV_NVDLA_CSC_dl_for_check.scala 208:27:@167.4]
  reg [31:0] _RAND_43;
  wire [33:0] _T_671; // @[Bitwise.scala 72:12:@175.6]
  wire [5:0] _T_673; // @[NV_NVDLA_CSC_dl_for_check.scala 215:38:@177.6]
  wire [4:0] _T_674; // @[NV_NVDLA_CSC_dl_for_check.scala 215:38:@178.6]
  wire [13:0] _T_676; // @[NV_NVDLA_CSC_dl_for_check.scala 216:48:@180.6]
  wire [6:0] _T_682; // @[NV_NVDLA_CSC_dl_for_check.scala 219:93:@185.6]
  wire [10:0] _T_683; // @[Cat.scala 30:58:@186.6]
  wire [14:0] _T_687; // @[Cat.scala 30:58:@219.6]
  wire [33:0] _GEN_1; // @[NV_NVDLA_CSC_dl_for_check.scala 212:15:@171.4]
  wire [4:0] _GEN_2; // @[NV_NVDLA_CSC_dl_for_check.scala 212:15:@171.4]
  wire [13:0] _GEN_3; // @[NV_NVDLA_CSC_dl_for_check.scala 212:15:@171.4]
  wire [12:0] _GEN_4; // @[NV_NVDLA_CSC_dl_for_check.scala 212:15:@171.4]
  wire [12:0] _GEN_5; // @[NV_NVDLA_CSC_dl_for_check.scala 212:15:@171.4]
  wire [10:0] _GEN_6; // @[NV_NVDLA_CSC_dl_for_check.scala 212:15:@171.4]
  wire [2:0] _GEN_7; // @[NV_NVDLA_CSC_dl_for_check.scala 212:15:@171.4]
  wire [2:0] _GEN_8; // @[NV_NVDLA_CSC_dl_for_check.scala 212:15:@171.4]
  wire [2:0] _GEN_10; // @[NV_NVDLA_CSC_dl_for_check.scala 212:15:@171.4]
  wire [2:0] _GEN_11; // @[NV_NVDLA_CSC_dl_for_check.scala 212:15:@171.4]
  wire [2:0] _GEN_12; // @[NV_NVDLA_CSC_dl_for_check.scala 212:15:@171.4]
  wire [2:0] _GEN_13; // @[NV_NVDLA_CSC_dl_for_check.scala 212:15:@171.4]
  wire [2:0] _GEN_15; // @[NV_NVDLA_CSC_dl_for_check.scala 212:15:@171.4]
  wire [2:0] _GEN_16; // @[NV_NVDLA_CSC_dl_for_check.scala 212:15:@171.4]
  wire [2:0] _GEN_18; // @[NV_NVDLA_CSC_dl_for_check.scala 212:15:@171.4]
  wire [2:0] _GEN_19; // @[NV_NVDLA_CSC_dl_for_check.scala 212:15:@171.4]
  wire [2:0] _GEN_20; // @[NV_NVDLA_CSC_dl_for_check.scala 212:15:@171.4]
  wire [3:0] _GEN_21; // @[NV_NVDLA_CSC_dl_for_check.scala 212:15:@171.4]
  wire [3:0] _GEN_22; // @[NV_NVDLA_CSC_dl_for_check.scala 212:15:@171.4]
  wire [5:0] _GEN_24; // @[NV_NVDLA_CSC_dl_for_check.scala 212:15:@171.4]
  wire [4:0] _GEN_25; // @[NV_NVDLA_CSC_dl_for_check.scala 212:15:@171.4]
  wire [6:0] _GEN_26; // @[NV_NVDLA_CSC_dl_for_check.scala 212:15:@171.4]
  wire [6:0] _GEN_27; // @[NV_NVDLA_CSC_dl_for_check.scala 212:15:@171.4]
  wire [7:0] _GEN_28; // @[NV_NVDLA_CSC_dl_for_check.scala 212:15:@171.4]
  wire [6:0] _GEN_29; // @[NV_NVDLA_CSC_dl_for_check.scala 212:15:@171.4]
  wire [11:0] _GEN_30; // @[NV_NVDLA_CSC_dl_for_check.scala 212:15:@171.4]
  wire [5:0] _GEN_31; // @[NV_NVDLA_CSC_dl_for_check.scala 212:15:@171.4]
  wire [5:0] _GEN_32; // @[NV_NVDLA_CSC_dl_for_check.scala 212:15:@171.4]
  wire [15:0] _GEN_33; // @[NV_NVDLA_CSC_dl_for_check.scala 212:15:@171.4]
  wire [14:0] _GEN_34; // @[NV_NVDLA_CSC_dl_for_check.scala 212:15:@171.4]
  wire [14:0] _GEN_35; // @[NV_NVDLA_CSC_dl_for_check.scala 212:15:@171.4]
  wire [14:0] _GEN_36; // @[NV_NVDLA_CSC_dl_for_check.scala 212:15:@171.4]
  wire [13:0] _GEN_37; // @[NV_NVDLA_CSC_dl_for_check.scala 212:15:@171.4]
  wire [13:0] _GEN_38; // @[NV_NVDLA_CSC_dl_for_check.scala 212:15:@171.4]
  wire [13:0] _GEN_39; // @[NV_NVDLA_CSC_dl_for_check.scala 212:15:@171.4]
  wire [12:0] _GEN_40; // @[NV_NVDLA_CSC_dl_for_check.scala 212:15:@171.4]
  wire [11:0] _GEN_43; // @[NV_NVDLA_CSC_dl_for_check.scala 257:18:@232.4]
  wire [11:0] _GEN_44; // @[NV_NVDLA_CSC_dl_for_check.scala 257:18:@232.4]
  wire [14:0] _GEN_45; // @[NV_NVDLA_CSC_dl_for_check.scala 257:18:@232.4]
  wire [14:0] _GEN_46; // @[NV_NVDLA_CSC_dl_for_check.scala 257:18:@232.4]
  wire [14:0] _GEN_47; // @[NV_NVDLA_CSC_dl_for_check.scala 257:18:@232.4]
  wire [13:0] _GEN_48; // @[NV_NVDLA_CSC_dl_for_check.scala 264:17:@239.4]
  wire [14:0] _GEN_49; // @[NV_NVDLA_CSC_dl_for_check.scala 264:17:@239.4]
  reg [14:0] dat_entry_st; // @[NV_NVDLA_CSC_dl_for_check.scala 287:59:@251.4]
  reg [31:0] _RAND_44;
  wire  _T_764; // @[NV_NVDLA_CSC_dl_for_check.scala 328:37:@314.4]
  wire  _T_765; // @[NV_NVDLA_CSC_dl_for_check.scala 328:23:@315.4]
  wire  _T_1642; // @[NV_NVDLA_CSC_dl_for_check.scala 918:32:@1229.4]
  reg  dat_rsp_l3_pvld; // @[NV_NVDLA_CSC_dl_for_check.scala 903:41:@1197.4]
  reg [31:0] _RAND_45;
  wire  _T_1643; // @[NV_NVDLA_CSC_dl_for_check.scala 918:36:@1230.4]
  wire  _T_1644; // @[NV_NVDLA_CSC_dl_for_check.scala 919:35:@1231.4]
  reg  dat_rsp_l1_pvld; // @[NV_NVDLA_CSC_dl_for_check.scala 903:41:@1195.4]
  reg [31:0] _RAND_46;
  wire  _T_1645; // @[NV_NVDLA_CSC_dl_for_check.scala 919:39:@1232.4]
  wire  _T_1646; // @[NV_NVDLA_CSC_dl_for_check.scala 918:57:@1233.4]
  wire  _T_1647; // @[NV_NVDLA_CSC_dl_for_check.scala 920:35:@1234.4]
  reg  dat_rsp_l0_pvld; // @[NV_NVDLA_CSC_dl_for_check.scala 903:41:@1194.4]
  reg [31:0] _RAND_47;
  wire  _T_1648; // @[NV_NVDLA_CSC_dl_for_check.scala 920:39:@1235.4]
  wire  dat_rsp_pvld; // @[NV_NVDLA_CSC_dl_for_check.scala 919:60:@1236.4]
  wire  _T_1650; // @[NV_NVDLA_CSC_dl_for_check.scala 927:42:@1238.4]
  wire [26:0] _T_1654; // @[Bitwise.scala 72:12:@1240.4]
  reg [26:0] _T_1632; // @[NV_NVDLA_CSC_dl_for_check.scala 905:41:@1202.4]
  reg [31:0] _RAND_48;
  wire [26:0] _T_1655; // @[NV_NVDLA_CSC_dl_for_check.scala 927:47:@1241.4]
  wire  _T_1656; // @[NV_NVDLA_CSC_dl_for_check.scala 928:42:@1242.4]
  wire [26:0] _T_1660; // @[Bitwise.scala 72:12:@1244.4]
  reg [26:0] _T_1626; // @[NV_NVDLA_CSC_dl_for_check.scala 905:41:@1200.4]
  reg [31:0] _RAND_49;
  wire [26:0] _T_1661; // @[NV_NVDLA_CSC_dl_for_check.scala 928:47:@1245.4]
  wire [26:0] _T_1662; // @[NV_NVDLA_CSC_dl_for_check.scala 927:66:@1246.4]
  wire  _T_1663; // @[NV_NVDLA_CSC_dl_for_check.scala 929:42:@1247.4]
  wire [26:0] _T_1667; // @[Bitwise.scala 72:12:@1249.4]
  reg [26:0] _T_1623; // @[NV_NVDLA_CSC_dl_for_check.scala 905:41:@1199.4]
  reg [31:0] _RAND_50;
  wire [26:0] _T_1668; // @[NV_NVDLA_CSC_dl_for_check.scala 929:47:@1250.4]
  wire [26:0] dat_rsp_pd; // @[NV_NVDLA_CSC_dl_for_check.scala 928:66:@1251.4]
  wire  dat_rsp_rls; // @[NV_NVDLA_CSC_dl_for_check.scala 953:26:@1270.4]
  wire  sub_rls; // @[NV_NVDLA_CSC_dl_for_check.scala 325:29:@313.4]
  wire  _T_767; // @[NV_NVDLA_CSC_dl_for_check.scala 328:66:@316.4]
  wire  _T_768; // @[NV_NVDLA_CSC_dl_for_check.scala 328:53:@317.4]
  wire  dat_rls; // @[NV_NVDLA_CSC_dl_for_check.scala 328:42:@318.4]
  wire [13:0] sc2cdma_dat_slices_w; // @[NV_NVDLA_CSC_dl_for_check.scala 329:28:@320.4]
  wire [14:0] sc2cdma_dat_entries_w; // @[NV_NVDLA_CSC_dl_for_check.scala 330:29:@322.4]
  wire [14:0] dat_entry_avl_sub; // @[NV_NVDLA_CSC_dl_for_check.scala 297:28:@262.4]
  wire [15:0] _T_721; // @[NV_NVDLA_CSC_dl_for_check.scala 302:37:@269.4]
  wire [14:0] dat_entry_st_inc; // @[NV_NVDLA_CSC_dl_for_check.scala 302:37:@270.4]
  wire [13:0] _T_727; // @[Cat.scala 30:58:@272.4]
  wire [14:0] _GEN_678; // @[NV_NVDLA_CSC_dl_for_check.scala 303:46:@273.4]
  wire [15:0] _T_728; // @[NV_NVDLA_CSC_dl_for_check.scala 303:46:@273.4]
  wire [15:0] _T_729; // @[NV_NVDLA_CSC_dl_for_check.scala 303:46:@274.4]
  wire [14:0] dat_entry_st_inc_wrap; // @[NV_NVDLA_CSC_dl_for_check.scala 303:46:@275.4]
  wire  is_dat_entry_st_wrap; // @[NV_NVDLA_CSC_dl_for_check.scala 304:45:@278.4]
  wire [14:0] _T_737; // @[NV_NVDLA_CSC_dl_for_check.scala 305:83:@279.4]
  wire [14:0] dat_entry_st_w; // @[NV_NVDLA_CSC_dl_for_check.scala 305:25:@280.4]
  wire  _T_759; // @[NV_NVDLA_CSC_dl_for_check.scala 316:13:@303.4]
  wire [14:0] _GEN_52; // @[NV_NVDLA_CSC_dl_for_check.scala 316:25:@304.4]
  reg  _T_774; // @[NV_NVDLA_CSC_dl_for_check.scala 332:31:@324.4]
  reg [31:0] _RAND_51;
  reg [13:0] _T_777; // @[Reg.scala 19:20:@327.4]
  reg [31:0] _RAND_52;
  wire [13:0] _GEN_54; // @[Reg.scala 20:19:@328.4]
  reg [14:0] _T_780; // @[Reg.scala 19:20:@332.4]
  reg [31:0] _RAND_53;
  wire [14:0] _GEN_55; // @[Reg.scala 20:19:@333.4]
  reg  _T_785; // @[NV_NVDLA_CSC_dl_for_check.scala 345:50:@338.4]
  reg [31:0] _RAND_54;
  reg  _T_788; // @[NV_NVDLA_CSC_dl_for_check.scala 345:50:@339.4]
  reg [31:0] _RAND_55;
  reg  _T_791; // @[NV_NVDLA_CSC_dl_for_check.scala 345:50:@340.4]
  reg [31:0] _RAND_56;
  reg  _T_794; // @[NV_NVDLA_CSC_dl_for_check.scala 345:50:@341.4]
  reg [31:0] _RAND_57;
  reg  dl_in_pvld; // @[NV_NVDLA_CSC_dl_for_check.scala 345:50:@342.4]
  reg [31:0] _RAND_58;
  reg  _T_818; // @[NV_NVDLA_CSC_dl_for_check.scala 364:36:@372.4]
  reg [31:0] _RAND_59;
  reg  _T_821; // @[NV_NVDLA_CSC_dl_for_check.scala 364:36:@373.4]
  reg [31:0] _RAND_60;
  reg  _T_824; // @[NV_NVDLA_CSC_dl_for_check.scala 364:36:@374.4]
  reg [31:0] _RAND_61;
  reg  _T_827; // @[NV_NVDLA_CSC_dl_for_check.scala 364:36:@375.4]
  reg [31:0] _RAND_62;
  reg [30:0] _T_832; // @[NV_NVDLA_CSC_dl_for_check.scala 366:34:@377.4]
  reg [31:0] _RAND_63;
  reg [30:0] _T_835; // @[NV_NVDLA_CSC_dl_for_check.scala 366:34:@378.4]
  reg [31:0] _RAND_64;
  reg [30:0] _T_838; // @[NV_NVDLA_CSC_dl_for_check.scala 366:34:@379.4]
  reg [31:0] _RAND_65;
  reg [30:0] _T_841; // @[NV_NVDLA_CSC_dl_for_check.scala 366:34:@380.4]
  reg [31:0] _RAND_66;
  wire [30:0] _T_829; // @[NV_NVDLA_CSC_dl_for_check.scala 365:19:@376.4 NV_NVDLA_CSC_dl_for_check.scala 369:12:@382.4]
  wire [30:0] _GEN_61; // @[NV_NVDLA_CSC_dl_for_check.scala 373:23:@384.4]
  wire [30:0] _GEN_62; // @[NV_NVDLA_CSC_dl_for_check.scala 373:23:@388.4]
  wire [30:0] _GEN_63; // @[NV_NVDLA_CSC_dl_for_check.scala 373:23:@392.4]
  wire [30:0] _GEN_64; // @[NV_NVDLA_CSC_dl_for_check.scala 373:23:@396.4]
  wire  _T_842; // @[NV_NVDLA_CSC_dl_for_check.scala 378:30:@399.4]
  wire  _T_843; // @[NV_NVDLA_CSC_dl_for_check.scala 378:34:@400.4]
  wire  _T_844; // @[NV_NVDLA_CSC_dl_for_check.scala 379:30:@401.4]
  wire  _T_845; // @[NV_NVDLA_CSC_dl_for_check.scala 379:34:@402.4]
  wire  _T_846; // @[NV_NVDLA_CSC_dl_for_check.scala 378:50:@403.4]
  wire  _T_847; // @[NV_NVDLA_CSC_dl_for_check.scala 380:30:@404.4]
  wire  _T_848; // @[NV_NVDLA_CSC_dl_for_check.scala 380:34:@405.4]
  wire  dl_pvld; // @[NV_NVDLA_CSC_dl_for_check.scala 379:50:@406.4]
  wire  _T_849; // @[NV_NVDLA_CSC_dl_for_check.scala 382:37:@407.4]
  wire [30:0] _T_853; // @[Bitwise.scala 72:12:@409.4]
  wire [30:0] _T_854; // @[NV_NVDLA_CSC_dl_for_check.scala 382:42:@410.4]
  wire  _T_855; // @[NV_NVDLA_CSC_dl_for_check.scala 383:37:@411.4]
  wire [30:0] _T_859; // @[Bitwise.scala 72:12:@413.4]
  wire [30:0] _T_860; // @[NV_NVDLA_CSC_dl_for_check.scala 383:42:@414.4]
  wire [30:0] _T_861; // @[NV_NVDLA_CSC_dl_for_check.scala 382:56:@415.4]
  wire  _T_862; // @[NV_NVDLA_CSC_dl_for_check.scala 384:37:@416.4]
  wire [30:0] _T_866; // @[Bitwise.scala 72:12:@418.4]
  wire [30:0] _T_867; // @[NV_NVDLA_CSC_dl_for_check.scala 384:42:@419.4]
  wire [30:0] dl_pd; // @[NV_NVDLA_CSC_dl_for_check.scala 383:56:@420.4]
  wire [4:0] dl_w_offset; // @[NV_NVDLA_CSC_dl_for_check.scala 387:24:@421.4]
  wire [4:0] dl_h_offset; // @[NV_NVDLA_CSC_dl_for_check.scala 388:24:@422.4]
  wire [6:0] dl_channel_size; // @[NV_NVDLA_CSC_dl_for_check.scala 389:28:@423.4]
  wire [6:0] dl_stripe_length; // @[NV_NVDLA_CSC_dl_for_check.scala 390:29:@424.4]
  wire [1:0] dl_cur_sub_h; // @[NV_NVDLA_CSC_dl_for_check.scala 391:25:@425.4]
  wire  dl_block_end; // @[NV_NVDLA_CSC_dl_for_check.scala 392:25:@426.4]
  wire  dl_channel_end; // @[NV_NVDLA_CSC_dl_for_check.scala 393:27:@427.4]
  wire  dl_group_end; // @[NV_NVDLA_CSC_dl_for_check.scala 394:25:@428.4]
  wire  dl_layer_end; // @[NV_NVDLA_CSC_dl_for_check.scala 395:25:@429.4]
  wire  dl_dat_release; // @[NV_NVDLA_CSC_dl_for_check.scala 396:27:@430.4]
  reg [4:0] batch_cnt; // @[NV_NVDLA_CSC_dl_for_check.scala 401:24:@433.4]
  reg [31:0] _RAND_67;
  wire [5:0] _T_875; // @[NV_NVDLA_CSC_dl_for_check.scala 405:24:@434.4]
  wire [4:0] _T_876; // @[NV_NVDLA_CSC_dl_for_check.scala 405:24:@435.4]
  wire  is_batch_end; // @[NV_NVDLA_CSC_dl_for_check.scala 407:27:@439.4]
  wire [4:0] _T_877; // @[NV_NVDLA_CSC_dl_for_check.scala 404:17:@436.4]
  wire [4:0] _T_878; // @[NV_NVDLA_CSC_dl_for_check.scala 403:17:@437.4]
  reg [1:0] sub_h_cnt; // @[NV_NVDLA_CSC_dl_for_check.scala 410:24:@441.4]
  reg [31:0] _RAND_68;
  wire [2:0] _T_884; // @[NV_NVDLA_CSC_dl_for_check.scala 413:31:@443.4]
  wire [1:0] sub_h_cnt_inc; // @[NV_NVDLA_CSC_dl_for_check.scala 413:31:@444.4]
  wire [2:0] _GEN_682; // @[NV_NVDLA_CSC_dl_for_check.scala 414:32:@445.4]
  wire  is_sub_h_end; // @[NV_NVDLA_CSC_dl_for_check.scala 414:32:@445.4]
  wire  _T_887; // @[NV_NVDLA_CSC_dl_for_check.scala 415:61:@447.4]
  reg [6:0] stripe_cnt; // @[NV_NVDLA_CSC_dl_for_check.scala 421:25:@455.4]
  reg [31:0] _RAND_69;
  wire  _T_924; // @[NV_NVDLA_CSC_dl_for_check.scala 448:37:@484.4]
  wire  _T_925; // @[NV_NVDLA_CSC_dl_for_check.scala 448:24:@485.4]
  wire  _T_927; // @[NV_NVDLA_CSC_dl_for_check.scala 448:56:@486.4]
  wire  _T_928; // @[NV_NVDLA_CSC_dl_for_check.scala 448:44:@487.4]
  wire  _T_929; // @[NV_NVDLA_CSC_dl_for_check.scala 448:42:@488.4]
  wire  _T_931; // @[NV_NVDLA_CSC_dl_for_check.scala 448:75:@489.4]
  wire  _T_932; // @[NV_NVDLA_CSC_dl_for_check.scala 448:63:@490.4]
  wire  _T_933; // @[NV_NVDLA_CSC_dl_for_check.scala 448:61:@491.4]
  reg  dat_exec_valid_d1; // @[NV_NVDLA_CSC_dl_for_check.scala 440:32:@477.4]
  reg [31:0] _RAND_70;
  wire  _T_935; // @[NV_NVDLA_CSC_dl_for_check.scala 448:22:@492.4]
  wire  dat_exec_valid; // @[NV_NVDLA_CSC_dl_for_check.scala 447:22:@493.4]
  wire  _T_888; // @[NV_NVDLA_CSC_dl_for_check.scala 415:66:@448.4]
  wire  sub_h_cnt_reg_en; // @[NV_NVDLA_CSC_dl_for_check.scala 415:33:@449.4]
  wire  _T_889; // @[NV_NVDLA_CSC_dl_for_check.scala 417:31:@451.6]
  wire [1:0] _T_891; // @[NV_NVDLA_CSC_dl_for_check.scala 417:21:@452.6]
  wire [1:0] _GEN_65; // @[NV_NVDLA_CSC_dl_for_check.scala 416:23:@450.4]
  wire [7:0] _T_897; // @[NV_NVDLA_CSC_dl_for_check.scala 425:33:@458.4]
  wire [6:0] stripe_cnt_inc; // @[NV_NVDLA_CSC_dl_for_check.scala 425:33:@459.4]
  wire  _T_898; // @[NV_NVDLA_CSC_dl_for_check.scala 426:51:@460.4]
  wire  is_stripe_equal; // @[NV_NVDLA_CSC_dl_for_check.scala 426:33:@461.4]
  wire  is_stripe_end; // @[NV_NVDLA_CSC_dl_for_check.scala 427:34:@463.4]
  wire  _T_901; // @[NV_NVDLA_CSC_dl_for_check.scala 428:52:@465.4]
  wire  stripe_cnt_reg_en; // @[NV_NVDLA_CSC_dl_for_check.scala 428:34:@466.4]
  wire  _T_903; // @[NV_NVDLA_CSC_dl_for_check.scala 432:41:@468.6]
  wire  _T_904; // @[NV_NVDLA_CSC_dl_for_check.scala 432:39:@469.6]
  wire [6:0] _T_907; // @[NV_NVDLA_CSC_dl_for_check.scala 433:22:@470.6]
  wire [6:0] _T_908; // @[NV_NVDLA_CSC_dl_for_check.scala 432:22:@471.6]
  wire [6:0] _T_909; // @[NV_NVDLA_CSC_dl_for_check.scala 431:22:@472.6]
  wire [6:0] _GEN_66; // @[NV_NVDLA_CSC_dl_for_check.scala 430:24:@467.4]
  reg  dat_pipe_local_valid; // @[NV_NVDLA_CSC_dl_for_check.scala 438:35:@475.4]
  reg [31:0] _RAND_71;
  reg  dat_pipe_valid_d1; // @[NV_NVDLA_CSC_dl_for_check.scala 439:32:@476.4]
  reg [31:0] _RAND_72;
  wire  dat_pipe_valid; // @[NV_NVDLA_CSC_dl_for_check.scala 446:27:@482.4]
  wire  _T_917; // @[NV_NVDLA_CSC_dl_for_check.scala 443:49:@479.4]
  wire  _T_920; // @[NV_NVDLA_CSC_dl_for_check.scala 444:32:@480.4]
  wire  dat_pipe_local_valid_w; // @[NV_NVDLA_CSC_dl_for_check.scala 443:33:@481.4]
  reg [7:0] dat_req_bytes_d1; // @[NV_NVDLA_CSC_dl_for_check.scala 456:31:@498.4]
  reg [31:0] _RAND_73;
  wire [7:0] dat_req_bytes; // @[Cat.scala 30:58:@499.4]
  wire [7:0] _GEN_67; // @[NV_NVDLA_CSC_dl_for_check.scala 458:21:@500.4]
  reg [12:0] dataout_w_cnt; // @[NV_NVDLA_CSC_dl_for_check.scala 464:28:@503.4]
  reg [31:0] _RAND_74;
  reg [12:0] dataout_w_ori; // @[NV_NVDLA_CSC_dl_for_check.scala 465:28:@504.4]
  reg [31:0] _RAND_75;
  wire [12:0] _GEN_683; // @[NV_NVDLA_CSC_dl_for_check.scala 468:39:@505.4]
  wire [13:0] _T_944; // @[NV_NVDLA_CSC_dl_for_check.scala 468:39:@505.4]
  wire [12:0] dataout_w_cnt_inc; // @[NV_NVDLA_CSC_dl_for_check.scala 468:39:@506.4]
  wire  _T_945; // @[NV_NVDLA_CSC_dl_for_check.scala 469:29:@507.4]
  wire  _T_946; // @[NV_NVDLA_CSC_dl_for_check.scala 469:61:@508.4]
  wire  is_w_end; // @[NV_NVDLA_CSC_dl_for_check.scala 469:44:@509.4]
  wire  _T_948; // @[NV_NVDLA_CSC_dl_for_check.scala 472:43:@512.4]
  wire  _T_949; // @[NV_NVDLA_CSC_dl_for_check.scala 472:41:@513.4]
  wire [12:0] _T_950; // @[NV_NVDLA_CSC_dl_for_check.scala 473:26:@514.4]
  wire [12:0] _T_951; // @[NV_NVDLA_CSC_dl_for_check.scala 472:26:@515.4]
  wire [12:0] dataout_w_cnt_w; // @[NV_NVDLA_CSC_dl_for_check.scala 471:26:@516.4]
  wire  _T_953; // @[NV_NVDLA_CSC_dl_for_check.scala 474:70:@518.4]
  wire  dataout_w_cnt_reg_en; // @[NV_NVDLA_CSC_dl_for_check.scala 474:37:@519.4]
  wire  _T_954; // @[NV_NVDLA_CSC_dl_for_check.scala 475:55:@520.4]
  wire  _T_955; // @[NV_NVDLA_CSC_dl_for_check.scala 475:71:@521.4]
  wire  dataout_w_ori_reg_en; // @[NV_NVDLA_CSC_dl_for_check.scala 475:37:@522.4]
  wire [12:0] _GEN_68; // @[NV_NVDLA_CSC_dl_for_check.scala 477:27:@523.4]
  wire [12:0] _GEN_69; // @[NV_NVDLA_CSC_dl_for_check.scala 480:27:@526.4]
  reg [10:0] datain_c_cnt; // @[NV_NVDLA_CSC_dl_for_check.scala 485:27:@529.4]
  reg [31:0] _RAND_76;
  wire  is_last_channel; // @[NV_NVDLA_CSC_dl_for_check.scala 487:37:@530.4]
  wire  _T_959; // @[NV_NVDLA_CSC_dl_for_check.scala 488:70:@532.4]
  wire  datain_c_cnt_reg_en; // @[NV_NVDLA_CSC_dl_for_check.scala 488:36:@533.4]
  wire [11:0] _T_963; // @[NV_NVDLA_CSC_dl_for_check.scala 493:34:@535.6]
  wire [10:0] _T_964; // @[NV_NVDLA_CSC_dl_for_check.scala 493:34:@536.6]
  wire [10:0] _T_965; // @[NV_NVDLA_CSC_dl_for_check.scala 492:24:@537.6]
  wire [10:0] _T_966; // @[NV_NVDLA_CSC_dl_for_check.scala 491:24:@538.6]
  wire [10:0] _GEN_70; // @[NV_NVDLA_CSC_dl_for_check.scala 490:26:@534.4]
  reg [13:0] datain_w_cnt; // @[NV_NVDLA_CSC_dl_for_check.scala 497:27:@541.4]
  reg [31:0] _RAND_77;
  reg [13:0] datain_w_ori; // @[NV_NVDLA_CSC_dl_for_check.scala 498:27:@542.4]
  reg [31:0] _RAND_78;
  reg [15:0] pixel_w_cnt; // @[NV_NVDLA_CSC_dl_for_check.scala 499:26:@543.4]
  reg [31:0] _RAND_79;
  reg [15:0] pixel_w_ori; // @[NV_NVDLA_CSC_dl_for_check.scala 500:26:@544.4]
  reg [31:0] _RAND_80;
  reg [15:0] pixel_w_ch_ori; // @[NV_NVDLA_CSC_dl_for_check.scala 501:29:@545.4]
  reg [31:0] _RAND_81;
  reg [12:0] channel_op_cnt; // @[NV_NVDLA_CSC_dl_for_check.scala 502:29:@546.4]
  reg [31:0] _RAND_82;
  reg  pixel_force_clr_d1; // @[NV_NVDLA_CSC_dl_for_check.scala 504:33:@548.4]
  reg [31:0] _RAND_83;
  reg  pixel_force_fetch_d1; // @[NV_NVDLA_CSC_dl_for_check.scala 505:35:@549.4]
  reg [31:0] _RAND_84;
  wire [12:0] _GEN_684; // @[NV_NVDLA_CSC_dl_for_check.scala 508:41:@550.4]
  wire [13:0] _T_986; // @[NV_NVDLA_CSC_dl_for_check.scala 508:41:@550.4]
  wire [13:0] _T_987; // @[NV_NVDLA_CSC_dl_for_check.scala 508:41:@551.4]
  wire [13:0] datain_w_cnt_st; // @[NV_NVDLA_CSC_dl_for_check.scala 507:26:@552.4]
  wire [13:0] _GEN_685; // @[NV_NVDLA_CSC_dl_for_check.scala 509:37:@553.4]
  wire [14:0] _T_988; // @[NV_NVDLA_CSC_dl_for_check.scala 509:37:@553.4]
  wire [13:0] datain_w_cnt_inc; // @[NV_NVDLA_CSC_dl_for_check.scala 509:37:@554.4]
  wire [13:0] _T_991; // @[NV_NVDLA_CSC_dl_for_check.scala 514:25:@557.4]
  wire [13:0] _T_992; // @[NV_NVDLA_CSC_dl_for_check.scala 513:25:@558.4]
  wire [13:0] datain_w_cnt_w; // @[NV_NVDLA_CSC_dl_for_check.scala 512:25:@559.4]
  wire [5:0] _GEN_686; // @[NV_NVDLA_CSC_dl_for_check.scala 516:35:@560.4]
  wire [10:0] dl_w_offset_ext; // @[NV_NVDLA_CSC_dl_for_check.scala 516:35:@560.4]
  wire [13:0] _GEN_687; // @[NV_NVDLA_CSC_dl_for_check.scala 517:33:@561.4]
  wire [14:0] _T_993; // @[NV_NVDLA_CSC_dl_for_check.scala 517:33:@561.4]
  wire [13:0] datain_w_cur; // @[NV_NVDLA_CSC_dl_for_check.scala 517:33:@562.4]
  wire  _T_996; // @[NV_NVDLA_CSC_dl_for_check.scala 518:96:@565.4]
  wire  _T_997; // @[NV_NVDLA_CSC_dl_for_check.scala 518:86:@566.4]
  wire  _T_998; // @[NV_NVDLA_CSC_dl_for_check.scala 518:84:@567.4]
  wire  datain_w_cnt_reg_en; // @[NV_NVDLA_CSC_dl_for_check.scala 518:36:@568.4]
  wire  _T_1001; // @[NV_NVDLA_CSC_dl_for_check.scala 519:99:@571.4]
  wire  _T_1002; // @[NV_NVDLA_CSC_dl_for_check.scala 519:89:@572.4]
  wire  _T_1003; // @[NV_NVDLA_CSC_dl_for_check.scala 519:87:@573.4]
  wire  datain_w_ori_reg_en; // @[NV_NVDLA_CSC_dl_for_check.scala 519:36:@574.4]
  wire [7:0] pixel_x_cnt_add; // @[NV_NVDLA_CSC_dl_for_check.scala 522:26:@575.4]
  wire  _T_1007; // @[NV_NVDLA_CSC_dl_for_check.scala 524:79:@577.4]
  wire [7:0] _T_1011; // @[NV_NVDLA_CSC_dl_for_check.scala 525:74:@580.4]
  wire [6:0] _T_1012; // @[NV_NVDLA_CSC_dl_for_check.scala 525:74:@581.4]
  wire [6:0] total_channel_op; // @[NV_NVDLA_CSC_dl_for_check.scala 524:27:@582.4]
  wire  _T_1013; // @[NV_NVDLA_CSC_dl_for_check.scala 526:37:@583.4]
  wire  _T_1015; // @[NV_NVDLA_CSC_dl_for_check.scala 527:35:@584.4]
  wire [13:0] _T_1017; // @[NV_NVDLA_CSC_dl_for_check.scala 527:66:@585.4]
  wire [12:0] _T_1018; // @[NV_NVDLA_CSC_dl_for_check.scala 527:66:@586.4]
  wire [12:0] _T_1019; // @[NV_NVDLA_CSC_dl_for_check.scala 527:22:@587.4]
  wire [12:0] _T_1020; // @[NV_NVDLA_CSC_dl_for_check.scala 526:22:@588.4]
  wire [12:0] _GEN_688; // @[NV_NVDLA_CSC_dl_for_check.scala 529:44:@590.4]
  wire  next_is_last_channel; // @[NV_NVDLA_CSC_dl_for_check.scala 529:44:@590.4]
  wire  _T_1021; // @[NV_NVDLA_CSC_dl_for_check.scala 533:39:@591.4]
  wire  _T_1022; // @[NV_NVDLA_CSC_dl_for_check.scala 533:54:@592.4]
  wire  _T_1023; // @[NV_NVDLA_CSC_dl_for_check.scala 533:71:@593.4]
  wire  _T_1026; // @[NV_NVDLA_CSC_dl_for_check.scala 534:73:@596.4]
  wire  _T_1027; // @[NV_NVDLA_CSC_dl_for_check.scala 534:71:@597.4]
  wire [15:0] _GEN_689; // @[NV_NVDLA_CSC_dl_for_check.scala 534:99:@598.4]
  wire [16:0] _T_1028; // @[NV_NVDLA_CSC_dl_for_check.scala 534:99:@598.4]
  wire [15:0] _T_1029; // @[NV_NVDLA_CSC_dl_for_check.scala 534:99:@599.4]
  wire  _T_1031; // @[NV_NVDLA_CSC_dl_for_check.scala 535:54:@601.4]
  wire [15:0] _GEN_690; // @[NV_NVDLA_CSC_dl_for_check.scala 535:90:@602.4]
  wire [16:0] _T_1032; // @[NV_NVDLA_CSC_dl_for_check.scala 535:90:@602.4]
  wire [15:0] _T_1033; // @[NV_NVDLA_CSC_dl_for_check.scala 535:90:@603.4]
  wire  _T_1035; // @[NV_NVDLA_CSC_dl_for_check.scala 536:56:@605.4]
  wire  _T_1036; // @[NV_NVDLA_CSC_dl_for_check.scala 536:54:@606.4]
  wire [16:0] _T_1038; // @[NV_NVDLA_CSC_dl_for_check.scala 536:91:@607.4]
  wire [15:0] _T_1039; // @[NV_NVDLA_CSC_dl_for_check.scala 536:91:@608.4]
  wire  _T_1040; // @[NV_NVDLA_CSC_dl_for_check.scala 537:41:@609.4]
  wire  _T_1041; // @[NV_NVDLA_CSC_dl_for_check.scala 537:39:@610.4]
  wire [15:0] _GEN_691; // @[NV_NVDLA_CSC_dl_for_check.scala 537:81:@611.4]
  wire [16:0] _T_1042; // @[NV_NVDLA_CSC_dl_for_check.scala 537:81:@611.4]
  wire [15:0] _T_1043; // @[NV_NVDLA_CSC_dl_for_check.scala 537:81:@612.4]
  wire [15:0] _T_1044; // @[NV_NVDLA_CSC_dl_for_check.scala 537:24:@613.4]
  wire [15:0] _T_1045; // @[NV_NVDLA_CSC_dl_for_check.scala 536:24:@614.4]
  wire [15:0] _T_1046; // @[NV_NVDLA_CSC_dl_for_check.scala 535:24:@615.4]
  wire [15:0] _T_1047; // @[NV_NVDLA_CSC_dl_for_check.scala 534:24:@616.4]
  wire [15:0] _T_1048; // @[NV_NVDLA_CSC_dl_for_check.scala 533:24:@617.4]
  wire [15:0] pixel_w_cnt_w; // @[NV_NVDLA_CSC_dl_for_check.scala 532:24:@618.4]
  wire [9:0] _T_1054; // @[NV_NVDLA_CSC_dl_for_check.scala 539:68:@620.4]
  wire [14:0] pixel_w_cur; // @[Cat.scala 30:58:@621.4]
  wire  _T_1063; // @[NV_NVDLA_CSC_dl_for_check.scala 542:68:@632.4]
  wire  _T_1064; // @[NV_NVDLA_CSC_dl_for_check.scala 542:57:@633.4]
  wire  _T_1065; // @[NV_NVDLA_CSC_dl_for_check.scala 542:72:@634.4]
  wire  _T_1066; // @[NV_NVDLA_CSC_dl_for_check.scala 542:88:@635.4]
  wire  _T_1067; // @[NV_NVDLA_CSC_dl_for_check.scala 542:103:@636.4]
  wire  pixel_ch_ori_reg_en; // @[NV_NVDLA_CSC_dl_for_check.scala 542:39:@637.4]
  wire  _T_1069; // @[NV_NVDLA_CSC_dl_for_check.scala 544:42:@639.4]
  wire  _T_1072; // @[NV_NVDLA_CSC_dl_for_check.scala 544:74:@640.4]
  wire  pixel_force_fetch; // @[NV_NVDLA_CSC_dl_for_check.scala 544:28:@641.4]
  wire  _T_1074; // @[NV_NVDLA_CSC_dl_for_check.scala 545:36:@643.4]
  wire  _T_1075; // @[NV_NVDLA_CSC_dl_for_check.scala 545:72:@644.4]
  wire  pixel_force_clr; // @[NV_NVDLA_CSC_dl_for_check.scala 545:51:@645.4]
  wire [13:0] _GEN_71; // @[NV_NVDLA_CSC_dl_for_check.scala 547:26:@646.4]
  wire [15:0] _GEN_72; // @[NV_NVDLA_CSC_dl_for_check.scala 547:26:@646.4]
  wire [13:0] _GEN_73; // @[NV_NVDLA_CSC_dl_for_check.scala 551:26:@650.4]
  wire [15:0] _GEN_74; // @[NV_NVDLA_CSC_dl_for_check.scala 551:26:@650.4]
  wire [15:0] _GEN_75; // @[NV_NVDLA_CSC_dl_for_check.scala 555:26:@654.4]
  reg [13:0] datain_h_cnt; // @[NV_NVDLA_CSC_dl_for_check.scala 561:27:@657.4]
  reg [31:0] _RAND_85;
  reg [13:0] datain_h_ori; // @[NV_NVDLA_CSC_dl_for_check.scala 562:27:@658.4]
  reg [31:0] _RAND_86;
  wire [13:0] _GEN_692; // @[NV_NVDLA_CSC_dl_for_check.scala 564:41:@659.4]
  wire [14:0] _T_1081; // @[NV_NVDLA_CSC_dl_for_check.scala 564:41:@659.4]
  wire [14:0] _T_1082; // @[NV_NVDLA_CSC_dl_for_check.scala 564:41:@660.4]
  wire [13:0] datain_h_cnt_st; // @[NV_NVDLA_CSC_dl_for_check.scala 564:41:@661.4]
  wire [13:0] _GEN_693; // @[NV_NVDLA_CSC_dl_for_check.scala 565:37:@662.4]
  wire [14:0] _T_1083; // @[NV_NVDLA_CSC_dl_for_check.scala 565:37:@662.4]
  wire [13:0] datain_h_cnt_inc; // @[NV_NVDLA_CSC_dl_for_check.scala 565:37:@663.4]
  wire  _T_1084; // @[NV_NVDLA_CSC_dl_for_check.scala 566:52:@664.4]
  wire  _T_1085; // @[NV_NVDLA_CSC_dl_for_check.scala 566:35:@665.4]
  wire [13:0] _T_1088; // @[NV_NVDLA_CSC_dl_for_check.scala 568:25:@668.4]
  wire [13:0] _T_1089; // @[NV_NVDLA_CSC_dl_for_check.scala 567:25:@669.4]
  wire [13:0] datain_h_cnt_w; // @[NV_NVDLA_CSC_dl_for_check.scala 566:25:@670.4]
  wire  _T_1092; // @[NV_NVDLA_CSC_dl_for_check.scala 569:91:@673.4]
  wire  _T_1093; // @[NV_NVDLA_CSC_dl_for_check.scala 569:54:@674.4]
  wire  datain_h_cnt_reg_en; // @[NV_NVDLA_CSC_dl_for_check.scala 569:36:@675.4]
  wire [5:0] _GEN_694; // @[NV_NVDLA_CSC_dl_for_check.scala 571:35:@679.4]
  wire [10:0] dl_h_offset_ext; // @[NV_NVDLA_CSC_dl_for_check.scala 571:35:@679.4]
  wire [13:0] _GEN_695; // @[NV_NVDLA_CSC_dl_for_check.scala 572:33:@680.4]
  wire [14:0] _T_1096; // @[NV_NVDLA_CSC_dl_for_check.scala 572:33:@680.4]
  wire [13:0] _T_1097; // @[NV_NVDLA_CSC_dl_for_check.scala 572:33:@681.4]
  wire [13:0] _GEN_696; // @[NV_NVDLA_CSC_dl_for_check.scala 572:51:@682.4]
  wire [14:0] _T_1098; // @[NV_NVDLA_CSC_dl_for_check.scala 572:51:@682.4]
  wire [13:0] datain_h_cur; // @[NV_NVDLA_CSC_dl_for_check.scala 572:51:@683.4]
  wire [13:0] _GEN_76; // @[NV_NVDLA_CSC_dl_for_check.scala 574:26:@684.4]
  wire [13:0] _GEN_77; // @[NV_NVDLA_CSC_dl_for_check.scala 575:26:@687.4]
  wire  _T_1099; // @[NV_NVDLA_CSC_dl_for_check.scala 578:39:@690.4]
  wire [13:0] _GEN_697; // @[NV_NVDLA_CSC_dl_for_check.scala 578:59:@691.4]
  wire  _T_1100; // @[NV_NVDLA_CSC_dl_for_check.scala 578:59:@691.4]
  wire  _T_1101; // @[NV_NVDLA_CSC_dl_for_check.scala 578:44:@692.4]
  wire  _T_1102; // @[NV_NVDLA_CSC_dl_for_check.scala 578:92:@693.4]
  wire  _T_1103; // @[NV_NVDLA_CSC_dl_for_check.scala 578:78:@694.4]
  wire [13:0] _GEN_698; // @[NV_NVDLA_CSC_dl_for_check.scala 578:112:@695.4]
  wire  _T_1104; // @[NV_NVDLA_CSC_dl_for_check.scala 578:112:@695.4]
  wire  dat_conv_req_dummy; // @[NV_NVDLA_CSC_dl_for_check.scala 578:97:@696.4]
  wire  dat_img_req_dummy; // @[NV_NVDLA_CSC_dl_for_check.scala 581:42:@706.4]
  wire  _T_1187; // @[NV_NVDLA_CSC_dl_for_check.scala 666:33:@792.4]
  wire  _T_1188; // @[NV_NVDLA_CSC_dl_for_check.scala 667:24:@793.4]
  wire [12:0] _T_1190; // @[NV_NVDLA_CSC_dl_for_check.scala 667:77:@794.4]
  wire [14:0] _T_1191; // @[Cat.scala 30:58:@795.4]
  wire  _T_1193; // @[NV_NVDLA_CSC_dl_for_check.scala 668:38:@796.4]
  wire [11:0] _T_1198; // @[NV_NVDLA_CSC_dl_for_check.scala 669:54:@799.4]
  wire [14:0] _T_1199; // @[Cat.scala 30:58:@800.4]
  wire [14:0] _T_1200; // @[NV_NVDLA_CSC_dl_for_check.scala 668:23:@801.4]
  wire [14:0] _T_1201; // @[NV_NVDLA_CSC_dl_for_check.scala 667:23:@802.4]
  wire [14:0] w_bias_int8; // @[NV_NVDLA_CSC_dl_for_check.scala 666:23:@803.4]
  wire [13:0] w_bias_w; // @[NV_NVDLA_CSC_dl_for_check.scala 678:24:@805.4]
  wire [11:0] _T_1116; // @[NV_NVDLA_CSC_dl_for_check.scala 585:32:@708.4]
  wire [14:0] _GEN_700; // @[NV_NVDLA_CSC_dl_for_check.scala 585:40:@709.4]
  wire  dat_img_req_skip; // @[NV_NVDLA_CSC_dl_for_check.scala 585:40:@709.4]
  wire  _T_1117; // @[NV_NVDLA_CSC_dl_for_check.scala 586:34:@710.4]
  wire  dat_req_dummy; // @[NV_NVDLA_CSC_dl_for_check.scala 586:24:@711.4]
  wire  _T_1118; // @[NV_NVDLA_CSC_dl_for_check.scala 587:29:@712.4]
  wire  dat_req_skip; // @[NV_NVDLA_CSC_dl_for_check.scala 587:33:@713.4]
  wire  _T_1119; // @[NV_NVDLA_CSC_dl_for_check.scala 588:39:@714.4]
  wire  _T_1120; // @[NV_NVDLA_CSC_dl_for_check.scala 588:37:@715.4]
  wire  _T_1121; // @[NV_NVDLA_CSC_dl_for_check.scala 588:56:@716.4]
  wire  dat_req_valid; // @[NV_NVDLA_CSC_dl_for_check.scala 588:54:@717.4]
  wire  _T_1122; // @[NV_NVDLA_CSC_dl_for_check.scala 591:37:@718.4]
  wire  _T_1123; // @[NV_NVDLA_CSC_dl_for_check.scala 591:27:@719.4]
  wire  _T_1124; // @[NV_NVDLA_CSC_dl_for_check.scala 591:54:@720.4]
  wire  dat_req_sub_c_w; // @[NV_NVDLA_CSC_dl_for_check.scala 591:26:@721.4]
  wire [1:0] dat_req_sub_w_w; // @[NV_NVDLA_CSC_dl_for_check.scala 592:35:@722.4]
  wire  _T_1126; // @[NV_NVDLA_CSC_dl_for_check.scala 593:55:@723.4]
  wire  dat_req_sub_w_st_en; // @[NV_NVDLA_CSC_dl_for_check.scala 593:42:@724.4]
  wire  dat_req_stripe_end; // @[NV_NVDLA_CSC_dl_for_check.scala 596:42:@726.4]
  wire [8:0] dat_req_flag_w; // @[Cat.scala 30:58:@730.4]
  reg  dat_req_valid_d1; // @[NV_NVDLA_CSC_dl_for_check.scala 603:31:@731.4]
  reg [31:0] _RAND_87;
  reg [1:0] dat_req_sub_w_d1; // @[NV_NVDLA_CSC_dl_for_check.scala 604:31:@732.4]
  reg [31:0] _RAND_88;
  reg [1:0] dat_req_sub_h_d1; // @[NV_NVDLA_CSC_dl_for_check.scala 605:31:@733.4]
  reg [31:0] _RAND_89;
  reg  dat_req_sub_c_d1; // @[NV_NVDLA_CSC_dl_for_check.scala 606:31:@734.4]
  reg [31:0] _RAND_90;
  reg  dat_req_ch_end_d1; // @[NV_NVDLA_CSC_dl_for_check.scala 607:32:@735.4]
  reg [31:0] _RAND_91;
  reg  dat_req_dummy_d1; // @[NV_NVDLA_CSC_dl_for_check.scala 608:31:@736.4]
  reg [31:0] _RAND_92;
  reg [1:0] dat_req_cur_sub_h_d1; // @[NV_NVDLA_CSC_dl_for_check.scala 609:35:@737.4]
  reg [31:0] _RAND_93;
  reg  dat_req_sub_w_st_d1; // @[NV_NVDLA_CSC_dl_for_check.scala 610:34:@738.4]
  reg [31:0] _RAND_94;
  reg [8:0] dat_req_flag_d1; // @[NV_NVDLA_CSC_dl_for_check.scala 611:30:@739.4]
  reg [31:0] _RAND_95;
  reg  dat_req_rls_d1; // @[NV_NVDLA_CSC_dl_for_check.scala 612:29:@740.4]
  reg [31:0] _RAND_96;
  wire  _T_1150; // @[NV_NVDLA_CSC_dl_for_check.scala 623:38:@750.6]
  wire  _T_1151; // @[NV_NVDLA_CSC_dl_for_check.scala 623:56:@751.6]
  wire [1:0] _GEN_78; // @[NV_NVDLA_CSC_dl_for_check.scala 615:21:@742.4]
  wire [1:0] _GEN_79; // @[NV_NVDLA_CSC_dl_for_check.scala 615:21:@742.4]
  wire  _GEN_80; // @[NV_NVDLA_CSC_dl_for_check.scala 615:21:@742.4]
  wire  _GEN_81; // @[NV_NVDLA_CSC_dl_for_check.scala 615:21:@742.4]
  wire  _GEN_82; // @[NV_NVDLA_CSC_dl_for_check.scala 615:21:@742.4]
  wire [1:0] _GEN_83; // @[NV_NVDLA_CSC_dl_for_check.scala 615:21:@742.4]
  wire [8:0] _GEN_84; // @[NV_NVDLA_CSC_dl_for_check.scala 615:21:@742.4]
  wire  _GEN_85; // @[NV_NVDLA_CSC_dl_for_check.scala 615:21:@742.4]
  wire  _GEN_86; // @[NV_NVDLA_CSC_dl_for_check.scala 615:21:@742.4]
  wire  _GEN_87; // @[NV_NVDLA_CSC_dl_for_check.scala 615:21:@742.4]
  wire  _GEN_88; // @[NV_NVDLA_CSC_dl_for_check.scala 627:26:@756.4]
  reg [12:0] c_bias; // @[NV_NVDLA_CSC_dl_for_check.scala 635:21:@759.4]
  reg [31:0] _RAND_97;
  reg [12:0] c_bias_d1; // @[NV_NVDLA_CSC_dl_for_check.scala 636:24:@760.4]
  reg [31:0] _RAND_98;
  reg [12:0] h_bias_0_d1; // @[NV_NVDLA_CSC_dl_for_check.scala 637:26:@761.4]
  reg [31:0] _RAND_99;
  reg [12:0] h_bias_1_d1; // @[NV_NVDLA_CSC_dl_for_check.scala 638:26:@762.4]
  reg [31:0] _RAND_100;
  reg [12:0] h_bias_2_d1; // @[NV_NVDLA_CSC_dl_for_check.scala 639:26:@763.4]
  reg [31:0] _RAND_101;
  reg [12:0] h_bias_3_d1; // @[NV_NVDLA_CSC_dl_for_check.scala 640:26:@764.4]
  reg [31:0] _RAND_102;
  reg [12:0] w_bias_d1; // @[NV_NVDLA_CSC_dl_for_check.scala 641:24:@765.4]
  reg [31:0] _RAND_103;
  wire  _T_1166; // @[NV_NVDLA_CSC_dl_for_check.scala 644:32:@766.4]
  wire  _T_1167; // @[NV_NVDLA_CSC_dl_for_check.scala 644:22:@767.4]
  wire [11:0] _T_1168; // @[NV_NVDLA_CSC_dl_for_check.scala 644:49:@768.4]
  wire [11:0] c_bias_add; // @[NV_NVDLA_CSC_dl_for_check.scala 644:21:@769.4]
  wire  _T_1171; // @[NV_NVDLA_CSC_dl_for_check.scala 646:34:@770.4]
  wire [12:0] _GEN_701; // @[NV_NVDLA_CSC_dl_for_check.scala 646:64:@771.4]
  wire [13:0] _T_1173; // @[NV_NVDLA_CSC_dl_for_check.scala 646:64:@771.4]
  wire [12:0] _T_1174; // @[NV_NVDLA_CSC_dl_for_check.scala 646:64:@772.4]
  wire [12:0] _T_1175; // @[NV_NVDLA_CSC_dl_for_check.scala 646:19:@773.4]
  wire [12:0] c_bias_w; // @[NV_NVDLA_CSC_dl_for_check.scala 645:19:@774.4]
  wire  c_bias_d1_reg_en; // @[NV_NVDLA_CSC_dl_for_check.scala 648:31:@778.4]
  wire [13:0] _GEN_702; // @[NV_NVDLA_CSC_dl_for_check.scala 651:32:@779.4]
  wire [25:0] _T_1178; // @[NV_NVDLA_CSC_dl_for_check.scala 651:32:@779.4]
  wire [12:0] h_bias_0_w; // @[NV_NVDLA_CSC_dl_for_check.scala 651:50:@780.4]
  wire [11:0] _GEN_703; // @[NV_NVDLA_CSC_dl_for_check.scala 652:31:@781.4]
  wire [16:0] _T_1179; // @[NV_NVDLA_CSC_dl_for_check.scala 652:31:@781.4]
  wire [12:0] h_bias_1_w; // @[NV_NVDLA_CSC_dl_for_check.scala 652:49:@782.4]
  wire [14:0] _GEN_704; // @[NV_NVDLA_CSC_dl_for_check.scala 653:29:@783.4]
  wire [19:0] _T_1180; // @[NV_NVDLA_CSC_dl_for_check.scala 653:29:@783.4]
  wire [12:0] h_bias_2_w; // @[NV_NVDLA_CSC_dl_for_check.scala 653:47:@784.4]
  wire [14:0] _GEN_705; // @[NV_NVDLA_CSC_dl_for_check.scala 654:47:@785.4]
  wire [16:0] _T_1182; // @[NV_NVDLA_CSC_dl_for_check.scala 654:47:@785.4]
  wire [16:0] _T_1183; // @[NV_NVDLA_CSC_dl_for_check.scala 654:21:@786.4]
  wire [12:0] h_bias_3_w; // @[NV_NVDLA_CSC_dl_for_check.scala 654:65:@787.4]
  wire  _T_1184; // @[NV_NVDLA_CSC_dl_for_check.scala 655:45:@788.4]
  wire  _T_1185; // @[NV_NVDLA_CSC_dl_for_check.scala 655:34:@789.4]
  wire [1:0] h_bias_reg_en; // @[Cat.scala 30:58:@790.4]
  wire [12:0] _GEN_89; // @[NV_NVDLA_CSC_dl_for_check.scala 682:20:@807.4]
  wire [12:0] _GEN_90; // @[NV_NVDLA_CSC_dl_for_check.scala 685:23:@810.4]
  wire  _T_1204; // @[NV_NVDLA_CSC_dl_for_check.scala 688:19:@813.4]
  wire [12:0] _GEN_91; // @[NV_NVDLA_CSC_dl_for_check.scala 688:23:@814.4]
  wire [12:0] _GEN_92; // @[NV_NVDLA_CSC_dl_for_check.scala 688:23:@814.4]
  wire [12:0] _GEN_93; // @[NV_NVDLA_CSC_dl_for_check.scala 688:23:@814.4]
  wire  _T_1205; // @[NV_NVDLA_CSC_dl_for_check.scala 693:19:@819.4]
  wire [12:0] _GEN_94; // @[NV_NVDLA_CSC_dl_for_check.scala 693:23:@820.4]
  wire [13:0] _GEN_95; // @[NV_NVDLA_CSC_dl_for_check.scala 696:20:@823.4]
  reg [12:0] dat_req_sub_h_addr_0; // @[NV_NVDLA_CSC_dl_for_check.scala 704:33:@835.4]
  reg [31:0] _RAND_104;
  reg [12:0] dat_req_sub_h_addr_1; // @[NV_NVDLA_CSC_dl_for_check.scala 704:33:@835.4]
  reg [31:0] _RAND_105;
  reg [12:0] dat_req_sub_h_addr_2; // @[NV_NVDLA_CSC_dl_for_check.scala 704:33:@835.4]
  reg [31:0] _RAND_106;
  reg [12:0] dat_req_sub_h_addr_3; // @[NV_NVDLA_CSC_dl_for_check.scala 704:33:@835.4]
  reg [31:0] _RAND_107;
  reg  sc2buf_dat_rd_en_out; // @[NV_NVDLA_CSC_dl_for_check.scala 705:35:@836.4]
  reg [31:0] _RAND_108;
  reg [14:0] sc2buf_dat_rd_addr_out; // @[NV_NVDLA_CSC_dl_for_check.scala 706:37:@838.4]
  reg [31:0] _RAND_109;
  reg  dat_req_pipe_pvld; // @[NV_NVDLA_CSC_dl_for_check.scala 707:32:@839.4]
  reg [31:0] _RAND_110;
  reg [1:0] dat_req_pipe_sub_w; // @[NV_NVDLA_CSC_dl_for_check.scala 709:33:@841.4]
  reg [31:0] _RAND_111;
  reg [1:0] dat_req_pipe_sub_h; // @[NV_NVDLA_CSC_dl_for_check.scala 710:33:@842.4]
  reg [31:0] _RAND_112;
  reg  dat_req_pipe_sub_c; // @[NV_NVDLA_CSC_dl_for_check.scala 711:33:@843.4]
  reg [31:0] _RAND_113;
  reg  dat_req_pipe_ch_end; // @[NV_NVDLA_CSC_dl_for_check.scala 712:34:@844.4]
  reg [31:0] _RAND_114;
  reg [7:0] dat_req_pipe_bytes; // @[NV_NVDLA_CSC_dl_for_check.scala 713:33:@845.4]
  reg [31:0] _RAND_115;
  reg  dat_req_pipe_dummy; // @[NV_NVDLA_CSC_dl_for_check.scala 714:33:@846.4]
  reg [31:0] _RAND_116;
  reg [1:0] dat_req_pipe_cur_sub_h; // @[NV_NVDLA_CSC_dl_for_check.scala 715:37:@847.4]
  reg [31:0] _RAND_117;
  reg  dat_req_pipe_sub_w_st; // @[NV_NVDLA_CSC_dl_for_check.scala 716:36:@848.4]
  reg [31:0] _RAND_118;
  reg  dat_req_pipe_rls; // @[NV_NVDLA_CSC_dl_for_check.scala 717:31:@849.4]
  reg [31:0] _RAND_119;
  reg [8:0] dat_req_pipe_flag; // @[NV_NVDLA_CSC_dl_for_check.scala 718:32:@850.4]
  reg [31:0] _RAND_120;
  wire [13:0] _T_1296; // @[NV_NVDLA_CSC_dl_for_check.scala 720:29:@851.4]
  wire [12:0] _T_1297; // @[NV_NVDLA_CSC_dl_for_check.scala 720:29:@852.4]
  wire [13:0] _T_1298; // @[NV_NVDLA_CSC_dl_for_check.scala 720:43:@853.4]
  wire [12:0] _T_1299; // @[NV_NVDLA_CSC_dl_for_check.scala 720:43:@854.4]
  wire [13:0] _T_1300; // @[NV_NVDLA_CSC_dl_for_check.scala 720:57:@855.4]
  wire [12:0] h_bias_d1; // @[NV_NVDLA_CSC_dl_for_check.scala 720:57:@856.4]
  wire [14:0] _GEN_706; // @[NV_NVDLA_CSC_dl_for_check.scala 721:40:@857.4]
  wire [15:0] _T_1301; // @[NV_NVDLA_CSC_dl_for_check.scala 721:40:@857.4]
  wire [14:0] _T_1302; // @[NV_NVDLA_CSC_dl_for_check.scala 721:40:@858.4]
  wire [14:0] _GEN_707; // @[NV_NVDLA_CSC_dl_for_check.scala 721:52:@859.4]
  wire [15:0] _T_1303; // @[NV_NVDLA_CSC_dl_for_check.scala 721:52:@859.4]
  wire [14:0] _T_1304; // @[NV_NVDLA_CSC_dl_for_check.scala 721:52:@860.4]
  wire [14:0] _GEN_708; // @[NV_NVDLA_CSC_dl_for_check.scala 721:64:@861.4]
  wire [15:0] _T_1305; // @[NV_NVDLA_CSC_dl_for_check.scala 721:64:@861.4]
  wire [14:0] dat_req_addr_sum; // @[NV_NVDLA_CSC_dl_for_check.scala 721:64:@862.4]
  wire  is_dat_req_addr_wrap; // @[NV_NVDLA_CSC_dl_for_check.scala 722:45:@865.4]
  wire [15:0] _T_1318; // @[NV_NVDLA_CSC_dl_for_check.scala 723:42:@868.4]
  wire [15:0] _T_1319; // @[NV_NVDLA_CSC_dl_for_check.scala 723:42:@869.4]
  wire [14:0] dat_req_addr_wrap; // @[NV_NVDLA_CSC_dl_for_check.scala 723:42:@870.4]
  wire  _T_1320; // @[NV_NVDLA_CSC_dl_for_check.scala 724:35:@871.4]
  wire [14:0] _T_1326; // @[NV_NVDLA_CSC_dl_for_check.scala 725:25:@873.4]
  wire [14:0] dat_req_addr_w; // @[NV_NVDLA_CSC_dl_for_check.scala 724:25:@874.4]
  wire  _T_1346; // @[Mux.scala 46:19:@884.4]
  wire [12:0] _T_1347; // @[Mux.scala 46:16:@885.4]
  wire  _T_1348; // @[Mux.scala 46:19:@886.4]
  wire [12:0] _T_1349; // @[Mux.scala 46:16:@887.4]
  wire  _T_1350; // @[Mux.scala 46:19:@888.4]
  wire [12:0] _T_1351; // @[Mux.scala 46:16:@889.4]
  wire  _T_1352; // @[Mux.scala 46:19:@890.4]
  wire [12:0] dat_req_addr_last; // @[Mux.scala 46:16:@891.4]
  wire [14:0] _GEN_712; // @[NV_NVDLA_CSC_dl_for_check.scala 732:65:@892.4]
  wire  _T_1353; // @[NV_NVDLA_CSC_dl_for_check.scala 732:65:@892.4]
  wire  _T_1354; // @[NV_NVDLA_CSC_dl_for_check.scala 732:85:@893.4]
  wire  sc2buf_dat_rd_en_w; // @[NV_NVDLA_CSC_dl_for_check.scala 732:43:@894.4]
  wire  _T_1355; // @[NV_NVDLA_CSC_dl_for_check.scala 734:38:@895.4]
  wire  _T_1357; // @[NV_NVDLA_CSC_dl_for_check.scala 734:78:@896.4]
  wire  _T_1358; // @[NV_NVDLA_CSC_dl_for_check.scala 734:58:@897.4]
  wire  dat_req_sub_h_addr_en_0; // @[NV_NVDLA_CSC_dl_for_check.scala 734:17:@898.4]
  wire  _T_1362; // @[NV_NVDLA_CSC_dl_for_check.scala 734:78:@900.4]
  wire  _T_1363; // @[NV_NVDLA_CSC_dl_for_check.scala 734:58:@901.4]
  wire  dat_req_sub_h_addr_en_1; // @[NV_NVDLA_CSC_dl_for_check.scala 734:17:@902.4]
  wire  _T_1367; // @[NV_NVDLA_CSC_dl_for_check.scala 734:78:@904.4]
  wire  _T_1368; // @[NV_NVDLA_CSC_dl_for_check.scala 734:58:@905.4]
  wire  dat_req_sub_h_addr_en_2; // @[NV_NVDLA_CSC_dl_for_check.scala 734:17:@906.4]
  wire  _T_1372; // @[NV_NVDLA_CSC_dl_for_check.scala 734:78:@908.4]
  wire  _T_1373; // @[NV_NVDLA_CSC_dl_for_check.scala 734:58:@909.4]
  wire  dat_req_sub_h_addr_en_3; // @[NV_NVDLA_CSC_dl_for_check.scala 734:17:@910.4]
  wire [14:0] _GEN_96; // @[NV_NVDLA_CSC_dl_for_check.scala 741:35:@916.4]
  wire [14:0] _GEN_97; // @[NV_NVDLA_CSC_dl_for_check.scala 741:35:@919.4]
  wire [14:0] _GEN_98; // @[NV_NVDLA_CSC_dl_for_check.scala 741:35:@922.4]
  wire [14:0] _GEN_99; // @[NV_NVDLA_CSC_dl_for_check.scala 741:35:@925.4]
  wire  _T_1384; // @[NV_NVDLA_CSC_dl_for_check.scala 747:14:@929.4]
  wire [14:0] _GEN_100; // @[NV_NVDLA_CSC_dl_for_check.scala 747:34:@930.4]
  wire [1:0] _GEN_101; // @[NV_NVDLA_CSC_dl_for_check.scala 754:24:@937.4]
  wire [1:0] _GEN_102; // @[NV_NVDLA_CSC_dl_for_check.scala 754:24:@937.4]
  wire  _GEN_103; // @[NV_NVDLA_CSC_dl_for_check.scala 754:24:@937.4]
  wire  _GEN_104; // @[NV_NVDLA_CSC_dl_for_check.scala 754:24:@937.4]
  wire [7:0] _GEN_105; // @[NV_NVDLA_CSC_dl_for_check.scala 754:24:@937.4]
  wire  _GEN_106; // @[NV_NVDLA_CSC_dl_for_check.scala 754:24:@937.4]
  wire [1:0] _GEN_107; // @[NV_NVDLA_CSC_dl_for_check.scala 754:24:@937.4]
  wire  _GEN_108; // @[NV_NVDLA_CSC_dl_for_check.scala 754:24:@937.4]
  wire  _GEN_109; // @[NV_NVDLA_CSC_dl_for_check.scala 754:24:@937.4]
  wire [8:0] _GEN_110; // @[NV_NVDLA_CSC_dl_for_check.scala 754:24:@937.4]
  wire [6:0] _T_1394; // @[Cat.scala 30:58:@957.4]
  wire [28:0] dat_req_pipe_pd; // @[Cat.scala 30:58:@963.4]
  reg  _T_1404; // @[NV_NVDLA_CSC_dl_for_check.scala 781:73:@965.4]
  reg [31:0] _RAND_121;
  reg  _T_1407; // @[NV_NVDLA_CSC_dl_for_check.scala 781:73:@966.4]
  reg [31:0] _RAND_122;
  reg  _T_1410; // @[NV_NVDLA_CSC_dl_for_check.scala 781:73:@967.4]
  reg [31:0] _RAND_123;
  reg  _T_1413; // @[NV_NVDLA_CSC_dl_for_check.scala 781:73:@968.4]
  reg [31:0] _RAND_124;
  reg  _T_1416; // @[NV_NVDLA_CSC_dl_for_check.scala 781:73:@969.4]
  reg [31:0] _RAND_125;
  reg  dat_rsp_pipe_pvld; // @[NV_NVDLA_CSC_dl_for_check.scala 781:73:@970.4]
  reg [31:0] _RAND_126;
  reg [28:0] _T_1423; // @[NV_NVDLA_CSC_dl_for_check.scala 783:71:@972.4]
  reg [31:0] _RAND_127;
  reg [28:0] _T_1426; // @[NV_NVDLA_CSC_dl_for_check.scala 783:71:@973.4]
  reg [31:0] _RAND_128;
  reg [28:0] _T_1429; // @[NV_NVDLA_CSC_dl_for_check.scala 783:71:@974.4]
  reg [31:0] _RAND_129;
  reg [28:0] _T_1432; // @[NV_NVDLA_CSC_dl_for_check.scala 783:71:@975.4]
  reg [31:0] _RAND_130;
  reg [28:0] _T_1435; // @[NV_NVDLA_CSC_dl_for_check.scala 783:71:@976.4]
  reg [31:0] _RAND_131;
  reg [28:0] dat_rsp_pipe_pd; // @[NV_NVDLA_CSC_dl_for_check.scala 783:71:@977.4]
  reg [31:0] _RAND_132;
  wire [28:0] _GEN_111; // @[NV_NVDLA_CSC_dl_for_check.scala 799:33:@1005.4]
  wire [28:0] _GEN_114; // @[NV_NVDLA_CSC_dl_for_check.scala 799:33:@1014.4]
  wire [28:0] _GEN_117; // @[NV_NVDLA_CSC_dl_for_check.scala 799:33:@1023.4]
  wire [28:0] _GEN_120; // @[NV_NVDLA_CSC_dl_for_check.scala 799:33:@1032.4]
  wire [28:0] _GEN_123; // @[NV_NVDLA_CSC_dl_for_check.scala 799:33:@1041.4]
  wire [28:0] _GEN_126; // @[NV_NVDLA_CSC_dl_for_check.scala 799:33:@1050.4]
  wire [1:0] dat_rsp_pipe_sub_w; // @[NV_NVDLA_CSC_dl_for_check.scala 816:41:@1058.4]
  wire [1:0] dat_rsp_pipe_sub_h; // @[NV_NVDLA_CSC_dl_for_check.scala 817:41:@1059.4]
  wire  dat_rsp_pipe_sub_c; // @[NV_NVDLA_CSC_dl_for_check.scala 818:41:@1060.4]
  wire  dat_rsp_pipe_ch_end; // @[NV_NVDLA_CSC_dl_for_check.scala 819:42:@1061.4]
  wire [7:0] dat_rsp_pipe_bytes; // @[NV_NVDLA_CSC_dl_for_check.scala 820:41:@1062.4]
  wire [1:0] dat_rsp_pipe_cur_sub_h; // @[NV_NVDLA_CSC_dl_for_check.scala 821:45:@1063.4]
  wire  dat_rsp_pipe_rls; // @[NV_NVDLA_CSC_dl_for_check.scala 824:39:@1066.4]
  wire [8:0] dat_rsp_pipe_flag; // @[NV_NVDLA_CSC_dl_for_check.scala 825:40:@1067.4]
  reg  dat_l0c0_dummy; // @[NV_NVDLA_CSC_dl_for_check.scala 830:29:@1068.4]
  reg [31:0] _RAND_133;
  reg  dat_l0c1_dummy; // @[NV_NVDLA_CSC_dl_for_check.scala 834:29:@1072.4]
  reg [31:0] _RAND_134;
  reg [511:0] dat_l0c0; // @[NV_NVDLA_CSC_dl_for_check.scala 839:19:@1076.4]
  reg [511:0] _RAND_135;
  reg [511:0] dat_l0c1; // @[NV_NVDLA_CSC_dl_for_check.scala 843:19:@1080.4]
  reg [511:0] _RAND_136;
  wire  _T_1530; // @[NV_NVDLA_CSC_dl_for_check.scala 855:69:@1095.4]
  wire  _T_1531; // @[NV_NVDLA_CSC_dl_for_check.scala 855:74:@1096.4]
  wire  _T_1532; // @[NV_NVDLA_CSC_dl_for_check.scala 855:90:@1097.4]
  wire  dat_l0c1_en; // @[NV_NVDLA_CSC_dl_for_check.scala 855:88:@1098.4]
  wire  _T_1561; // @[NV_NVDLA_CSC_dl_for_check.scala 870:22:@1132.4]
  wire  _T_1575; // @[NV_NVDLA_CSC_dl_for_check.scala 874:48:@1143.4]
  wire  _T_1576; // @[NV_NVDLA_CSC_dl_for_check.scala 874:22:@1144.4]
  reg [7:0] rsp_sft_cnt_l0; // @[NV_NVDLA_CSC_dl_for_check.scala 891:29:@1185.4]
  reg [31:0] _RAND_137;
  reg [7:0] rsp_sft_cnt_l1; // @[NV_NVDLA_CSC_dl_for_check.scala 892:29:@1186.4]
  reg [31:0] _RAND_138;
  reg [7:0] rsp_sft_cnt_l2; // @[NV_NVDLA_CSC_dl_for_check.scala 893:29:@1187.4]
  reg [31:0] _RAND_139;
  reg [7:0] rsp_sft_cnt_l3; // @[NV_NVDLA_CSC_dl_for_check.scala 894:29:@1188.4]
  reg [31:0] _RAND_140;
  reg [7:0] rsp_sft_cnt_l0_ori; // @[NV_NVDLA_CSC_dl_for_check.scala 895:33:@1189.4]
  reg [31:0] _RAND_141;
  reg [7:0] rsp_sft_cnt_l1_ori; // @[NV_NVDLA_CSC_dl_for_check.scala 896:33:@1190.4]
  reg [31:0] _RAND_142;
  reg [7:0] rsp_sft_cnt_l2_ori; // @[NV_NVDLA_CSC_dl_for_check.scala 897:33:@1191.4]
  reg [31:0] _RAND_143;
  reg [7:0] rsp_sft_cnt_l3_ori; // @[NV_NVDLA_CSC_dl_for_check.scala 898:33:@1192.4]
  reg [31:0] _RAND_144;
  reg  dat_rsp_l2_pvld; // @[NV_NVDLA_CSC_dl_for_check.scala 903:41:@1196.4]
  reg [31:0] _RAND_145;
  reg [26:0] _T_1629; // @[NV_NVDLA_CSC_dl_for_check.scala 905:41:@1201.4]
  reg [31:0] _RAND_146;
  wire [26:0] _T_1641; // @[Cat.scala 30:58:@1211.4]
  wire [26:0] _GEN_137; // @[NV_NVDLA_CSC_dl_for_check.scala 913:28:@1214.4]
  wire [26:0] _GEN_138; // @[NV_NVDLA_CSC_dl_for_check.scala 913:28:@1218.4]
  wire [26:0] _GEN_139; // @[NV_NVDLA_CSC_dl_for_check.scala 913:28:@1222.4]
  wire [26:0] _GEN_140; // @[NV_NVDLA_CSC_dl_for_check.scala 913:28:@1226.4]
  wire  dat_rsp_l0_sub_c; // @[NV_NVDLA_CSC_dl_for_check.scala 931:39:@1252.4]
  wire  dat_rsp_l1_sub_c; // @[NV_NVDLA_CSC_dl_for_check.scala 932:39:@1253.4]
  wire  dat_rsp_l2_sub_c; // @[NV_NVDLA_CSC_dl_for_check.scala 933:39:@1254.4]
  wire  dat_rsp_l3_sub_c; // @[NV_NVDLA_CSC_dl_for_check.scala 934:39:@1255.4]
  wire [8:0] dat_rsp_l0_flag; // @[NV_NVDLA_CSC_dl_for_check.scala 936:38:@1256.4]
  wire [8:0] dat_rsp_l1_flag; // @[NV_NVDLA_CSC_dl_for_check.scala 937:38:@1257.4]
  wire [8:0] dat_rsp_l2_flag; // @[NV_NVDLA_CSC_dl_for_check.scala 938:38:@1258.4]
  wire [8:0] dat_rsp_l3_flag; // @[NV_NVDLA_CSC_dl_for_check.scala 939:38:@1259.4]
  wire  dat_rsp_l0_stripe_end; // @[NV_NVDLA_CSC_dl_for_check.scala 941:44:@1260.4]
  wire  dat_rsp_l1_stripe_end; // @[NV_NVDLA_CSC_dl_for_check.scala 942:44:@1261.4]
  wire  dat_rsp_l2_stripe_end; // @[NV_NVDLA_CSC_dl_for_check.scala 943:44:@1262.4]
  wire  dat_rsp_l3_stripe_end; // @[NV_NVDLA_CSC_dl_for_check.scala 944:44:@1263.4]
  wire [1:0] dat_rsp_sub_w; // @[NV_NVDLA_CSC_dl_for_check.scala 947:31:@1264.4]
  wire [7:0] dat_rsp_bytes; // @[NV_NVDLA_CSC_dl_for_check.scala 951:31:@1268.4]
  wire [1:0] dat_rsp_cur_sub_h; // @[NV_NVDLA_CSC_dl_for_check.scala 952:35:@1269.4]
  wire [7:0] rsp_sft_cnt_l0_sub; // @[NV_NVDLA_CSC_dl_for_check.scala 963:29:@1278.4]
  wire  _T_1679; // @[NV_NVDLA_CSC_dl_for_check.scala 968:50:@1282.4]
  wire [7:0] _GEN_713; // @[NV_NVDLA_CSC_dl_for_check.scala 968:111:@1283.4]
  wire [8:0] _T_1681; // @[NV_NVDLA_CSC_dl_for_check.scala 968:111:@1283.4]
  wire [7:0] _T_1682; // @[NV_NVDLA_CSC_dl_for_check.scala 968:111:@1284.4]
  wire [8:0] _T_1683; // @[NV_NVDLA_CSC_dl_for_check.scala 968:133:@1285.4]
  wire [8:0] _T_1684; // @[NV_NVDLA_CSC_dl_for_check.scala 968:133:@1286.4]
  wire [7:0] _T_1685; // @[NV_NVDLA_CSC_dl_for_check.scala 968:133:@1287.4]
  wire [7:0] rsp_sft_cnt_l0_inc; // @[NV_NVDLA_CSC_dl_for_check.scala 968:29:@1288.4]
  wire [8:0] _T_1689; // @[NV_NVDLA_CSC_dl_for_check.scala 969:111:@1290.4]
  wire [7:0] _T_1690; // @[NV_NVDLA_CSC_dl_for_check.scala 969:111:@1291.4]
  wire [8:0] _T_1691; // @[NV_NVDLA_CSC_dl_for_check.scala 969:133:@1292.4]
  wire [8:0] _T_1692; // @[NV_NVDLA_CSC_dl_for_check.scala 969:133:@1293.4]
  wire [7:0] _T_1693; // @[NV_NVDLA_CSC_dl_for_check.scala 969:133:@1294.4]
  wire [7:0] rsp_sft_cnt_l1_inc; // @[NV_NVDLA_CSC_dl_for_check.scala 969:29:@1295.4]
  wire [8:0] _T_1697; // @[NV_NVDLA_CSC_dl_for_check.scala 970:111:@1297.4]
  wire [7:0] _T_1698; // @[NV_NVDLA_CSC_dl_for_check.scala 970:111:@1298.4]
  wire [8:0] _T_1699; // @[NV_NVDLA_CSC_dl_for_check.scala 970:133:@1299.4]
  wire [8:0] _T_1700; // @[NV_NVDLA_CSC_dl_for_check.scala 970:133:@1300.4]
  wire [7:0] _T_1701; // @[NV_NVDLA_CSC_dl_for_check.scala 970:133:@1301.4]
  wire [7:0] rsp_sft_cnt_l2_inc; // @[NV_NVDLA_CSC_dl_for_check.scala 970:29:@1302.4]
  wire [8:0] _T_1705; // @[NV_NVDLA_CSC_dl_for_check.scala 971:111:@1304.4]
  wire [7:0] _T_1706; // @[NV_NVDLA_CSC_dl_for_check.scala 971:111:@1305.4]
  wire [8:0] _T_1707; // @[NV_NVDLA_CSC_dl_for_check.scala 971:133:@1306.4]
  wire [8:0] _T_1708; // @[NV_NVDLA_CSC_dl_for_check.scala 971:133:@1307.4]
  wire [7:0] _T_1709; // @[NV_NVDLA_CSC_dl_for_check.scala 971:133:@1308.4]
  wire [7:0] rsp_sft_cnt_l3_inc; // @[NV_NVDLA_CSC_dl_for_check.scala 971:29:@1309.4]
  wire  _T_1711; // @[NV_NVDLA_CSC_dl_for_check.scala 980:52:@1310.4]
  wire  _T_1712; // @[NV_NVDLA_CSC_dl_for_check.scala 980:50:@1311.4]
  wire  _T_1713; // @[NV_NVDLA_CSC_dl_for_check.scala 981:50:@1312.4]
  wire [7:0] _T_1718; // @[NV_NVDLA_CSC_dl_for_check.scala 981:27:@1315.4]
  wire [7:0] _T_1719; // @[NV_NVDLA_CSC_dl_for_check.scala 980:27:@1316.4]
  wire [7:0] rsp_sft_cnt_l0_w; // @[NV_NVDLA_CSC_dl_for_check.scala 979:27:@1317.4]
  wire  _T_1721; // @[NV_NVDLA_CSC_dl_for_check.scala 985:52:@1318.4]
  wire  _T_1722; // @[NV_NVDLA_CSC_dl_for_check.scala 985:50:@1319.4]
  wire  _T_1723; // @[NV_NVDLA_CSC_dl_for_check.scala 986:50:@1320.4]
  wire [7:0] _T_1728; // @[NV_NVDLA_CSC_dl_for_check.scala 986:27:@1323.4]
  wire [7:0] _T_1729; // @[NV_NVDLA_CSC_dl_for_check.scala 985:27:@1324.4]
  wire [7:0] rsp_sft_cnt_l1_w; // @[NV_NVDLA_CSC_dl_for_check.scala 984:27:@1325.4]
  wire  _T_1731; // @[NV_NVDLA_CSC_dl_for_check.scala 990:52:@1326.4]
  wire  _T_1732; // @[NV_NVDLA_CSC_dl_for_check.scala 990:50:@1327.4]
  wire  _T_1733; // @[NV_NVDLA_CSC_dl_for_check.scala 991:50:@1328.4]
  wire [7:0] _T_1738; // @[NV_NVDLA_CSC_dl_for_check.scala 991:27:@1331.4]
  wire [7:0] _T_1739; // @[NV_NVDLA_CSC_dl_for_check.scala 990:27:@1332.4]
  wire [7:0] rsp_sft_cnt_l2_w; // @[NV_NVDLA_CSC_dl_for_check.scala 989:27:@1333.4]
  wire  _T_1741; // @[NV_NVDLA_CSC_dl_for_check.scala 995:52:@1334.4]
  wire  _T_1742; // @[NV_NVDLA_CSC_dl_for_check.scala 995:50:@1335.4]
  wire  _T_1743; // @[NV_NVDLA_CSC_dl_for_check.scala 996:50:@1336.4]
  wire [7:0] _T_1748; // @[NV_NVDLA_CSC_dl_for_check.scala 996:27:@1339.4]
  wire [7:0] _T_1749; // @[NV_NVDLA_CSC_dl_for_check.scala 995:27:@1340.4]
  wire [7:0] rsp_sft_cnt_l3_w; // @[NV_NVDLA_CSC_dl_for_check.scala 994:27:@1341.4]
  wire  _T_1750; // @[NV_NVDLA_CSC_dl_for_check.scala 1000:46:@1342.4]
  wire  _T_1751; // @[NV_NVDLA_CSC_dl_for_check.scala 1000:51:@1343.4]
  wire  rsp_sft_cnt_l0_en; // @[NV_NVDLA_CSC_dl_for_check.scala 1000:34:@1344.4]
  wire  _T_1752; // @[NV_NVDLA_CSC_dl_for_check.scala 1001:46:@1345.4]
  wire  _T_1753; // @[NV_NVDLA_CSC_dl_for_check.scala 1001:51:@1346.4]
  wire  _T_1755; // @[NV_NVDLA_CSC_dl_for_check.scala 1001:87:@1347.4]
  wire  _T_1756; // @[NV_NVDLA_CSC_dl_for_check.scala 1001:69:@1348.4]
  wire  rsp_sft_cnt_l1_en; // @[NV_NVDLA_CSC_dl_for_check.scala 1001:34:@1349.4]
  wire  _T_1757; // @[NV_NVDLA_CSC_dl_for_check.scala 1002:46:@1350.4]
  wire  _T_1758; // @[NV_NVDLA_CSC_dl_for_check.scala 1002:51:@1351.4]
  wire  _T_1760; // @[NV_NVDLA_CSC_dl_for_check.scala 1002:87:@1352.4]
  wire  _T_1761; // @[NV_NVDLA_CSC_dl_for_check.scala 1002:69:@1353.4]
  wire  rsp_sft_cnt_l2_en; // @[NV_NVDLA_CSC_dl_for_check.scala 1002:34:@1354.4]
  wire  _T_1762; // @[NV_NVDLA_CSC_dl_for_check.scala 1003:46:@1355.4]
  wire  _T_1763; // @[NV_NVDLA_CSC_dl_for_check.scala 1003:51:@1356.4]
  wire  _T_1766; // @[NV_NVDLA_CSC_dl_for_check.scala 1003:69:@1358.4]
  wire  rsp_sft_cnt_l3_en; // @[NV_NVDLA_CSC_dl_for_check.scala 1003:34:@1359.4]
  wire  _T_1767; // @[NV_NVDLA_CSC_dl_for_check.scala 1005:50:@1360.4]
  wire  _T_1768; // @[NV_NVDLA_CSC_dl_for_check.scala 1005:55:@1361.4]
  wire  _T_1769; // @[NV_NVDLA_CSC_dl_for_check.scala 1005:73:@1362.4]
  wire  _T_1770; // @[NV_NVDLA_CSC_dl_for_check.scala 1005:97:@1363.4]
  wire  rsp_sft_cnt_l0_ori_en; // @[NV_NVDLA_CSC_dl_for_check.scala 1005:38:@1364.4]
  wire  _T_1771; // @[NV_NVDLA_CSC_dl_for_check.scala 1006:50:@1365.4]
  wire  _T_1772; // @[NV_NVDLA_CSC_dl_for_check.scala 1006:55:@1366.4]
  wire  _T_1773; // @[NV_NVDLA_CSC_dl_for_check.scala 1006:73:@1367.4]
  wire  _T_1774; // @[NV_NVDLA_CSC_dl_for_check.scala 1006:97:@1368.4]
  wire  _T_1776; // @[NV_NVDLA_CSC_dl_for_check.scala 1006:138:@1369.4]
  wire  _T_1777; // @[NV_NVDLA_CSC_dl_for_check.scala 1006:120:@1370.4]
  wire  rsp_sft_cnt_l1_ori_en; // @[NV_NVDLA_CSC_dl_for_check.scala 1006:38:@1371.4]
  wire  _T_1778; // @[NV_NVDLA_CSC_dl_for_check.scala 1007:50:@1372.4]
  wire  _T_1779; // @[NV_NVDLA_CSC_dl_for_check.scala 1007:55:@1373.4]
  wire  _T_1780; // @[NV_NVDLA_CSC_dl_for_check.scala 1007:73:@1374.4]
  wire  _T_1781; // @[NV_NVDLA_CSC_dl_for_check.scala 1007:97:@1375.4]
  wire  _T_1783; // @[NV_NVDLA_CSC_dl_for_check.scala 1007:138:@1376.4]
  wire  _T_1784; // @[NV_NVDLA_CSC_dl_for_check.scala 1007:120:@1377.4]
  wire  rsp_sft_cnt_l2_ori_en; // @[NV_NVDLA_CSC_dl_for_check.scala 1007:38:@1378.4]
  wire  _T_1785; // @[NV_NVDLA_CSC_dl_for_check.scala 1008:50:@1379.4]
  wire  _T_1786; // @[NV_NVDLA_CSC_dl_for_check.scala 1008:55:@1380.4]
  wire  _T_1787; // @[NV_NVDLA_CSC_dl_for_check.scala 1008:73:@1381.4]
  wire  _T_1788; // @[NV_NVDLA_CSC_dl_for_check.scala 1008:97:@1382.4]
  wire  _T_1791; // @[NV_NVDLA_CSC_dl_for_check.scala 1008:120:@1384.4]
  wire  rsp_sft_cnt_l3_ori_en; // @[NV_NVDLA_CSC_dl_for_check.scala 1008:38:@1385.4]
  wire [7:0] _GEN_141; // @[NV_NVDLA_CSC_dl_for_check.scala 1010:24:@1386.4]
  wire [7:0] _GEN_142; // @[NV_NVDLA_CSC_dl_for_check.scala 1011:24:@1389.4]
  wire [7:0] _GEN_143; // @[NV_NVDLA_CSC_dl_for_check.scala 1012:24:@1392.4]
  wire [7:0] _GEN_144; // @[NV_NVDLA_CSC_dl_for_check.scala 1013:24:@1395.4]
  wire [7:0] _GEN_145; // @[NV_NVDLA_CSC_dl_for_check.scala 1014:28:@1398.4]
  wire [7:0] _GEN_146; // @[NV_NVDLA_CSC_dl_for_check.scala 1015:28:@1401.4]
  wire [7:0] _GEN_147; // @[NV_NVDLA_CSC_dl_for_check.scala 1016:28:@1404.4]
  wire [7:0] _GEN_148; // @[NV_NVDLA_CSC_dl_for_check.scala 1017:28:@1407.4]
  wire [7:0] _T_1792; // @[NV_NVDLA_CSC_dl_for_check.scala 1026:55:@1410.4]
  wire [63:0] _T_1795; // @[Cat.scala 30:58:@1413.4]
  wire [127:0] _T_1796; // @[Cat.scala 30:58:@1414.4]
  wire [255:0] _T_1797; // @[Cat.scala 30:58:@1415.4]
  wire [511:0] dat_rsp_pad_value; // @[Cat.scala 30:58:@1416.4]
  wire [511:0] dat_rsp_l0c0; // @[NV_NVDLA_CSC_dl_for_check.scala 1028:23:@1417.4]
  wire [511:0] dat_rsp_l0c1; // @[NV_NVDLA_CSC_dl_for_check.scala 1033:23:@1421.4]
  wire  _T_1799; // @[NV_NVDLA_CSC_dl_for_check.scala 1046:37:@1426.4]
  wire  _T_1802; // @[NV_NVDLA_CSC_dl_for_check.scala 1047:43:@1427.4]
  wire  _T_1803; // @[NV_NVDLA_CSC_dl_for_check.scala 1047:87:@1428.4]
  wire  _T_1805; // @[NV_NVDLA_CSC_dl_for_check.scala 1047:91:@1429.4]
  wire  _T_1806; // @[NV_NVDLA_CSC_dl_for_check.scala 1047:72:@1430.4]
  wire [255:0] _T_1808; // @[NV_NVDLA_CSC_dl_for_check.scala 1047:171:@1431.4]
  wire [511:0] _T_1809; // @[Cat.scala 30:58:@1432.4]
  wire  _T_1815; // @[NV_NVDLA_CSC_dl_for_check.scala 1048:72:@1436.4]
  wire [255:0] _T_1817; // @[NV_NVDLA_CSC_dl_for_check.scala 1048:171:@1437.4]
  wire [511:0] _T_1818; // @[Cat.scala 30:58:@1438.4]
  wire [511:0] _T_1819; // @[NV_NVDLA_CSC_dl_for_check.scala 1048:27:@1439.4]
  wire [511:0] _T_1820; // @[NV_NVDLA_CSC_dl_for_check.scala 1047:27:@1440.4]
  wire [511:0] dat_rsp_conv_8b; // @[NV_NVDLA_CSC_dl_for_check.scala 1046:27:@1441.4]
  wire [7:0] dat_rsp_conv_0; // @[NV_NVDLA_CSC_dl_for_check.scala 1064:39:@1444.4]
  wire [7:0] dat_rsp_conv_1; // @[NV_NVDLA_CSC_dl_for_check.scala 1064:39:@1446.4]
  wire [7:0] dat_rsp_conv_2; // @[NV_NVDLA_CSC_dl_for_check.scala 1064:39:@1448.4]
  wire [7:0] dat_rsp_conv_3; // @[NV_NVDLA_CSC_dl_for_check.scala 1064:39:@1450.4]
  wire [7:0] dat_rsp_conv_4; // @[NV_NVDLA_CSC_dl_for_check.scala 1064:39:@1452.4]
  wire [7:0] dat_rsp_conv_5; // @[NV_NVDLA_CSC_dl_for_check.scala 1064:39:@1454.4]
  wire [7:0] dat_rsp_conv_6; // @[NV_NVDLA_CSC_dl_for_check.scala 1064:39:@1456.4]
  wire [7:0] dat_rsp_conv_7; // @[NV_NVDLA_CSC_dl_for_check.scala 1064:39:@1458.4]
  wire [7:0] dat_rsp_conv_8; // @[NV_NVDLA_CSC_dl_for_check.scala 1064:39:@1460.4]
  wire [7:0] dat_rsp_conv_9; // @[NV_NVDLA_CSC_dl_for_check.scala 1064:39:@1462.4]
  wire [7:0] dat_rsp_conv_10; // @[NV_NVDLA_CSC_dl_for_check.scala 1064:39:@1464.4]
  wire [7:0] dat_rsp_conv_11; // @[NV_NVDLA_CSC_dl_for_check.scala 1064:39:@1466.4]
  wire [7:0] dat_rsp_conv_12; // @[NV_NVDLA_CSC_dl_for_check.scala 1064:39:@1468.4]
  wire [7:0] dat_rsp_conv_13; // @[NV_NVDLA_CSC_dl_for_check.scala 1064:39:@1470.4]
  wire [7:0] dat_rsp_conv_14; // @[NV_NVDLA_CSC_dl_for_check.scala 1064:39:@1472.4]
  wire [7:0] dat_rsp_conv_15; // @[NV_NVDLA_CSC_dl_for_check.scala 1064:39:@1474.4]
  wire [7:0] dat_rsp_conv_16; // @[NV_NVDLA_CSC_dl_for_check.scala 1064:39:@1476.4]
  wire [7:0] dat_rsp_conv_17; // @[NV_NVDLA_CSC_dl_for_check.scala 1064:39:@1478.4]
  wire [7:0] dat_rsp_conv_18; // @[NV_NVDLA_CSC_dl_for_check.scala 1064:39:@1480.4]
  wire [7:0] dat_rsp_conv_19; // @[NV_NVDLA_CSC_dl_for_check.scala 1064:39:@1482.4]
  wire [7:0] dat_rsp_conv_20; // @[NV_NVDLA_CSC_dl_for_check.scala 1064:39:@1484.4]
  wire [7:0] dat_rsp_conv_21; // @[NV_NVDLA_CSC_dl_for_check.scala 1064:39:@1486.4]
  wire [7:0] dat_rsp_conv_22; // @[NV_NVDLA_CSC_dl_for_check.scala 1064:39:@1488.4]
  wire [7:0] dat_rsp_conv_23; // @[NV_NVDLA_CSC_dl_for_check.scala 1064:39:@1490.4]
  wire [7:0] dat_rsp_conv_24; // @[NV_NVDLA_CSC_dl_for_check.scala 1064:39:@1492.4]
  wire [7:0] dat_rsp_conv_25; // @[NV_NVDLA_CSC_dl_for_check.scala 1064:39:@1494.4]
  wire [7:0] dat_rsp_conv_26; // @[NV_NVDLA_CSC_dl_for_check.scala 1064:39:@1496.4]
  wire [7:0] dat_rsp_conv_27; // @[NV_NVDLA_CSC_dl_for_check.scala 1064:39:@1498.4]
  wire [7:0] dat_rsp_conv_28; // @[NV_NVDLA_CSC_dl_for_check.scala 1064:39:@1500.4]
  wire [7:0] dat_rsp_conv_29; // @[NV_NVDLA_CSC_dl_for_check.scala 1064:39:@1502.4]
  wire [7:0] dat_rsp_conv_30; // @[NV_NVDLA_CSC_dl_for_check.scala 1064:39:@1504.4]
  wire [7:0] dat_rsp_conv_31; // @[NV_NVDLA_CSC_dl_for_check.scala 1064:39:@1506.4]
  wire [7:0] dat_rsp_conv_32; // @[NV_NVDLA_CSC_dl_for_check.scala 1064:39:@1508.4]
  wire [7:0] dat_rsp_conv_33; // @[NV_NVDLA_CSC_dl_for_check.scala 1064:39:@1510.4]
  wire [7:0] dat_rsp_conv_34; // @[NV_NVDLA_CSC_dl_for_check.scala 1064:39:@1512.4]
  wire [7:0] dat_rsp_conv_35; // @[NV_NVDLA_CSC_dl_for_check.scala 1064:39:@1514.4]
  wire [7:0] dat_rsp_conv_36; // @[NV_NVDLA_CSC_dl_for_check.scala 1064:39:@1516.4]
  wire [7:0] dat_rsp_conv_37; // @[NV_NVDLA_CSC_dl_for_check.scala 1064:39:@1518.4]
  wire [7:0] dat_rsp_conv_38; // @[NV_NVDLA_CSC_dl_for_check.scala 1064:39:@1520.4]
  wire [7:0] dat_rsp_conv_39; // @[NV_NVDLA_CSC_dl_for_check.scala 1064:39:@1522.4]
  wire [7:0] dat_rsp_conv_40; // @[NV_NVDLA_CSC_dl_for_check.scala 1064:39:@1524.4]
  wire [7:0] dat_rsp_conv_41; // @[NV_NVDLA_CSC_dl_for_check.scala 1064:39:@1526.4]
  wire [7:0] dat_rsp_conv_42; // @[NV_NVDLA_CSC_dl_for_check.scala 1064:39:@1528.4]
  wire [7:0] dat_rsp_conv_43; // @[NV_NVDLA_CSC_dl_for_check.scala 1064:39:@1530.4]
  wire [7:0] dat_rsp_conv_44; // @[NV_NVDLA_CSC_dl_for_check.scala 1064:39:@1532.4]
  wire [7:0] dat_rsp_conv_45; // @[NV_NVDLA_CSC_dl_for_check.scala 1064:39:@1534.4]
  wire [7:0] dat_rsp_conv_46; // @[NV_NVDLA_CSC_dl_for_check.scala 1064:39:@1536.4]
  wire [7:0] dat_rsp_conv_47; // @[NV_NVDLA_CSC_dl_for_check.scala 1064:39:@1538.4]
  wire [7:0] dat_rsp_conv_48; // @[NV_NVDLA_CSC_dl_for_check.scala 1064:39:@1540.4]
  wire [7:0] dat_rsp_conv_49; // @[NV_NVDLA_CSC_dl_for_check.scala 1064:39:@1542.4]
  wire [7:0] dat_rsp_conv_50; // @[NV_NVDLA_CSC_dl_for_check.scala 1064:39:@1544.4]
  wire [7:0] dat_rsp_conv_51; // @[NV_NVDLA_CSC_dl_for_check.scala 1064:39:@1546.4]
  wire [7:0] dat_rsp_conv_52; // @[NV_NVDLA_CSC_dl_for_check.scala 1064:39:@1548.4]
  wire [7:0] dat_rsp_conv_53; // @[NV_NVDLA_CSC_dl_for_check.scala 1064:39:@1550.4]
  wire [7:0] dat_rsp_conv_54; // @[NV_NVDLA_CSC_dl_for_check.scala 1064:39:@1552.4]
  wire [7:0] dat_rsp_conv_55; // @[NV_NVDLA_CSC_dl_for_check.scala 1064:39:@1554.4]
  wire [7:0] dat_rsp_conv_56; // @[NV_NVDLA_CSC_dl_for_check.scala 1064:39:@1556.4]
  wire [7:0] dat_rsp_conv_57; // @[NV_NVDLA_CSC_dl_for_check.scala 1064:39:@1558.4]
  wire [7:0] dat_rsp_conv_58; // @[NV_NVDLA_CSC_dl_for_check.scala 1064:39:@1560.4]
  wire [7:0] dat_rsp_conv_59; // @[NV_NVDLA_CSC_dl_for_check.scala 1064:39:@1562.4]
  wire [7:0] dat_rsp_conv_60; // @[NV_NVDLA_CSC_dl_for_check.scala 1064:39:@1564.4]
  wire [7:0] dat_rsp_conv_61; // @[NV_NVDLA_CSC_dl_for_check.scala 1064:39:@1566.4]
  wire [7:0] dat_rsp_conv_62; // @[NV_NVDLA_CSC_dl_for_check.scala 1064:39:@1568.4]
  wire [7:0] dat_rsp_conv_63; // @[NV_NVDLA_CSC_dl_for_check.scala 1064:39:@1570.4]
  reg [255:0] dat_rsp_l0_sft_d1; // @[NV_NVDLA_CSC_dl_for_check.scala 1068:28:@1572.4]
  reg [255:0] _RAND_147;
  reg [127:0] dat_rsp_l0_sft_d2; // @[NV_NVDLA_CSC_dl_for_check.scala 1069:28:@1573.4]
  reg [127:0] _RAND_148;
  reg [127:0] dat_rsp_l0_sft_d3; // @[NV_NVDLA_CSC_dl_for_check.scala 1070:28:@1574.4]
  reg [127:0] _RAND_149;
  reg [127:0] dat_rsp_l1_sft_d2; // @[NV_NVDLA_CSC_dl_for_check.scala 1072:28:@1575.4]
  reg [127:0] _RAND_150;
  reg [127:0] dat_rsp_l1_sft_d3; // @[NV_NVDLA_CSC_dl_for_check.scala 1073:28:@1576.4]
  reg [127:0] _RAND_151;
  reg [127:0] dat_rsp_l2_sft_d3; // @[NV_NVDLA_CSC_dl_for_check.scala 1075:28:@1577.4]
  reg [127:0] _RAND_152;
  wire  _T_1961; // @[NV_NVDLA_CSC_dl_for_check.scala 1077:39:@1578.4]
  wire  _T_1962; // @[NV_NVDLA_CSC_dl_for_check.scala 1077:29:@1579.4]
  wire [1023:0] _T_1964; // @[Cat.scala 30:58:@1580.4]
  wire [1023:0] dat_rsp_l0_sft_in; // @[NV_NVDLA_CSC_dl_for_check.scala 1077:28:@1581.4]
  wire  _T_1965; // @[NV_NVDLA_CSC_dl_for_check.scala 1078:39:@1582.4]
  wire  _T_1966; // @[NV_NVDLA_CSC_dl_for_check.scala 1078:29:@1583.4]
  wire [1023:0] _T_1968; // @[Cat.scala 30:58:@1584.4]
  wire [1023:0] dat_rsp_l1_sft_in; // @[NV_NVDLA_CSC_dl_for_check.scala 1078:28:@1585.4]
  wire  _T_1969; // @[NV_NVDLA_CSC_dl_for_check.scala 1079:39:@1586.4]
  wire  _T_1970; // @[NV_NVDLA_CSC_dl_for_check.scala 1079:29:@1587.4]
  wire [1023:0] dat_rsp_l2_sft_in; // @[NV_NVDLA_CSC_dl_for_check.scala 1079:28:@1589.4]
  wire  _T_1973; // @[NV_NVDLA_CSC_dl_for_check.scala 1080:39:@1590.4]
  wire  _T_1974; // @[NV_NVDLA_CSC_dl_for_check.scala 1080:29:@1591.4]
  wire [1023:0] dat_rsp_l3_sft_in; // @[NV_NVDLA_CSC_dl_for_check.scala 1080:28:@1593.4]
  wire [10:0] _T_1978; // @[Cat.scala 30:58:@1594.4]
  wire [1023:0] _T_1979; // @[NV_NVDLA_CSC_dl_for_check.scala 1082:41:@1595.4]
  wire [511:0] dat_rsp_l0_sft; // @[NV_NVDLA_CSC_dl_for_check.scala 1082:82:@1596.4]
  wire [10:0] _T_1981; // @[Cat.scala 30:58:@1597.4]
  wire [1023:0] _T_1982; // @[NV_NVDLA_CSC_dl_for_check.scala 1083:41:@1598.4]
  wire [511:0] dat_rsp_l1_sft; // @[NV_NVDLA_CSC_dl_for_check.scala 1083:82:@1599.4]
  wire [10:0] _T_1984; // @[Cat.scala 30:58:@1600.4]
  wire [1023:0] _T_1985; // @[NV_NVDLA_CSC_dl_for_check.scala 1084:41:@1601.4]
  wire [511:0] dat_rsp_l2_sft; // @[NV_NVDLA_CSC_dl_for_check.scala 1084:82:@1602.4]
  wire [10:0] _T_1987; // @[Cat.scala 30:58:@1603.4]
  wire [1023:0] _T_1988; // @[NV_NVDLA_CSC_dl_for_check.scala 1085:41:@1604.4]
  wire [511:0] dat_rsp_l3_sft; // @[NV_NVDLA_CSC_dl_for_check.scala 1085:82:@1605.4]
  wire  _T_1989; // @[NV_NVDLA_CSC_dl_for_check.scala 1087:36:@1606.4]
  wire  _T_1990; // @[NV_NVDLA_CSC_dl_for_check.scala 1087:26:@1607.4]
  wire  _T_1993; // @[NV_NVDLA_CSC_dl_for_check.scala 1088:41:@1608.4]
  wire [127:0] _T_1994; // @[NV_NVDLA_CSC_dl_for_check.scala 1088:81:@1609.4]
  wire [511:0] _T_2000; // @[Cat.scala 30:58:@1615.4]
  wire  _T_2002; // @[NV_NVDLA_CSC_dl_for_check.scala 1089:41:@1616.4]
  wire [255:0] _T_2003; // @[NV_NVDLA_CSC_dl_for_check.scala 1089:81:@1617.4]
  wire [511:0] _T_2005; // @[Cat.scala 30:58:@1619.4]
  wire [511:0] _T_2007; // @[NV_NVDLA_CSC_dl_for_check.scala 1089:25:@1621.4]
  wire [511:0] _T_2008; // @[NV_NVDLA_CSC_dl_for_check.scala 1088:25:@1622.4]
  wire [511:0] dat_rsp_img_8b; // @[NV_NVDLA_CSC_dl_for_check.scala 1087:25:@1623.4]
  wire [7:0] dat_rsp_img_0; // @[NV_NVDLA_CSC_dl_for_check.scala 1095:37:@1625.4]
  wire [7:0] dat_rsp_img_1; // @[NV_NVDLA_CSC_dl_for_check.scala 1095:37:@1627.4]
  wire [7:0] dat_rsp_img_2; // @[NV_NVDLA_CSC_dl_for_check.scala 1095:37:@1629.4]
  wire [7:0] dat_rsp_img_3; // @[NV_NVDLA_CSC_dl_for_check.scala 1095:37:@1631.4]
  wire [7:0] dat_rsp_img_4; // @[NV_NVDLA_CSC_dl_for_check.scala 1095:37:@1633.4]
  wire [7:0] dat_rsp_img_5; // @[NV_NVDLA_CSC_dl_for_check.scala 1095:37:@1635.4]
  wire [7:0] dat_rsp_img_6; // @[NV_NVDLA_CSC_dl_for_check.scala 1095:37:@1637.4]
  wire [7:0] dat_rsp_img_7; // @[NV_NVDLA_CSC_dl_for_check.scala 1095:37:@1639.4]
  wire [7:0] dat_rsp_img_8; // @[NV_NVDLA_CSC_dl_for_check.scala 1095:37:@1641.4]
  wire [7:0] dat_rsp_img_9; // @[NV_NVDLA_CSC_dl_for_check.scala 1095:37:@1643.4]
  wire [7:0] dat_rsp_img_10; // @[NV_NVDLA_CSC_dl_for_check.scala 1095:37:@1645.4]
  wire [7:0] dat_rsp_img_11; // @[NV_NVDLA_CSC_dl_for_check.scala 1095:37:@1647.4]
  wire [7:0] dat_rsp_img_12; // @[NV_NVDLA_CSC_dl_for_check.scala 1095:37:@1649.4]
  wire [7:0] dat_rsp_img_13; // @[NV_NVDLA_CSC_dl_for_check.scala 1095:37:@1651.4]
  wire [7:0] dat_rsp_img_14; // @[NV_NVDLA_CSC_dl_for_check.scala 1095:37:@1653.4]
  wire [7:0] dat_rsp_img_15; // @[NV_NVDLA_CSC_dl_for_check.scala 1095:37:@1655.4]
  wire [7:0] dat_rsp_img_16; // @[NV_NVDLA_CSC_dl_for_check.scala 1095:37:@1657.4]
  wire [7:0] dat_rsp_img_17; // @[NV_NVDLA_CSC_dl_for_check.scala 1095:37:@1659.4]
  wire [7:0] dat_rsp_img_18; // @[NV_NVDLA_CSC_dl_for_check.scala 1095:37:@1661.4]
  wire [7:0] dat_rsp_img_19; // @[NV_NVDLA_CSC_dl_for_check.scala 1095:37:@1663.4]
  wire [7:0] dat_rsp_img_20; // @[NV_NVDLA_CSC_dl_for_check.scala 1095:37:@1665.4]
  wire [7:0] dat_rsp_img_21; // @[NV_NVDLA_CSC_dl_for_check.scala 1095:37:@1667.4]
  wire [7:0] dat_rsp_img_22; // @[NV_NVDLA_CSC_dl_for_check.scala 1095:37:@1669.4]
  wire [7:0] dat_rsp_img_23; // @[NV_NVDLA_CSC_dl_for_check.scala 1095:37:@1671.4]
  wire [7:0] dat_rsp_img_24; // @[NV_NVDLA_CSC_dl_for_check.scala 1095:37:@1673.4]
  wire [7:0] dat_rsp_img_25; // @[NV_NVDLA_CSC_dl_for_check.scala 1095:37:@1675.4]
  wire [7:0] dat_rsp_img_26; // @[NV_NVDLA_CSC_dl_for_check.scala 1095:37:@1677.4]
  wire [7:0] dat_rsp_img_27; // @[NV_NVDLA_CSC_dl_for_check.scala 1095:37:@1679.4]
  wire [7:0] dat_rsp_img_28; // @[NV_NVDLA_CSC_dl_for_check.scala 1095:37:@1681.4]
  wire [7:0] dat_rsp_img_29; // @[NV_NVDLA_CSC_dl_for_check.scala 1095:37:@1683.4]
  wire [7:0] dat_rsp_img_30; // @[NV_NVDLA_CSC_dl_for_check.scala 1095:37:@1685.4]
  wire [7:0] dat_rsp_img_31; // @[NV_NVDLA_CSC_dl_for_check.scala 1095:37:@1687.4]
  wire [7:0] dat_rsp_img_32; // @[NV_NVDLA_CSC_dl_for_check.scala 1095:37:@1689.4]
  wire [7:0] dat_rsp_img_33; // @[NV_NVDLA_CSC_dl_for_check.scala 1095:37:@1691.4]
  wire [7:0] dat_rsp_img_34; // @[NV_NVDLA_CSC_dl_for_check.scala 1095:37:@1693.4]
  wire [7:0] dat_rsp_img_35; // @[NV_NVDLA_CSC_dl_for_check.scala 1095:37:@1695.4]
  wire [7:0] dat_rsp_img_36; // @[NV_NVDLA_CSC_dl_for_check.scala 1095:37:@1697.4]
  wire [7:0] dat_rsp_img_37; // @[NV_NVDLA_CSC_dl_for_check.scala 1095:37:@1699.4]
  wire [7:0] dat_rsp_img_38; // @[NV_NVDLA_CSC_dl_for_check.scala 1095:37:@1701.4]
  wire [7:0] dat_rsp_img_39; // @[NV_NVDLA_CSC_dl_for_check.scala 1095:37:@1703.4]
  wire [7:0] dat_rsp_img_40; // @[NV_NVDLA_CSC_dl_for_check.scala 1095:37:@1705.4]
  wire [7:0] dat_rsp_img_41; // @[NV_NVDLA_CSC_dl_for_check.scala 1095:37:@1707.4]
  wire [7:0] dat_rsp_img_42; // @[NV_NVDLA_CSC_dl_for_check.scala 1095:37:@1709.4]
  wire [7:0] dat_rsp_img_43; // @[NV_NVDLA_CSC_dl_for_check.scala 1095:37:@1711.4]
  wire [7:0] dat_rsp_img_44; // @[NV_NVDLA_CSC_dl_for_check.scala 1095:37:@1713.4]
  wire [7:0] dat_rsp_img_45; // @[NV_NVDLA_CSC_dl_for_check.scala 1095:37:@1715.4]
  wire [7:0] dat_rsp_img_46; // @[NV_NVDLA_CSC_dl_for_check.scala 1095:37:@1717.4]
  wire [7:0] dat_rsp_img_47; // @[NV_NVDLA_CSC_dl_for_check.scala 1095:37:@1719.4]
  wire [7:0] dat_rsp_img_48; // @[NV_NVDLA_CSC_dl_for_check.scala 1095:37:@1721.4]
  wire [7:0] dat_rsp_img_49; // @[NV_NVDLA_CSC_dl_for_check.scala 1095:37:@1723.4]
  wire [7:0] dat_rsp_img_50; // @[NV_NVDLA_CSC_dl_for_check.scala 1095:37:@1725.4]
  wire [7:0] dat_rsp_img_51; // @[NV_NVDLA_CSC_dl_for_check.scala 1095:37:@1727.4]
  wire [7:0] dat_rsp_img_52; // @[NV_NVDLA_CSC_dl_for_check.scala 1095:37:@1729.4]
  wire [7:0] dat_rsp_img_53; // @[NV_NVDLA_CSC_dl_for_check.scala 1095:37:@1731.4]
  wire [7:0] dat_rsp_img_54; // @[NV_NVDLA_CSC_dl_for_check.scala 1095:37:@1733.4]
  wire [7:0] dat_rsp_img_55; // @[NV_NVDLA_CSC_dl_for_check.scala 1095:37:@1735.4]
  wire [7:0] dat_rsp_img_56; // @[NV_NVDLA_CSC_dl_for_check.scala 1095:37:@1737.4]
  wire [7:0] dat_rsp_img_57; // @[NV_NVDLA_CSC_dl_for_check.scala 1095:37:@1739.4]
  wire [7:0] dat_rsp_img_58; // @[NV_NVDLA_CSC_dl_for_check.scala 1095:37:@1741.4]
  wire [7:0] dat_rsp_img_59; // @[NV_NVDLA_CSC_dl_for_check.scala 1095:37:@1743.4]
  wire [7:0] dat_rsp_img_60; // @[NV_NVDLA_CSC_dl_for_check.scala 1095:37:@1745.4]
  wire [7:0] dat_rsp_img_61; // @[NV_NVDLA_CSC_dl_for_check.scala 1095:37:@1747.4]
  wire [7:0] dat_rsp_img_62; // @[NV_NVDLA_CSC_dl_for_check.scala 1095:37:@1749.4]
  wire [7:0] dat_rsp_img_63; // @[NV_NVDLA_CSC_dl_for_check.scala 1095:37:@1751.4]
  wire  _T_2143; // @[NV_NVDLA_CSC_dl_for_check.scala 1098:59:@1753.4]
  wire  dat_rsp_sft_d1_en; // @[NV_NVDLA_CSC_dl_for_check.scala 1098:41:@1754.4]
  wire  _T_2145; // @[NV_NVDLA_CSC_dl_for_check.scala 1099:59:@1755.4]
  wire  dat_rsp_sft_d2_en; // @[NV_NVDLA_CSC_dl_for_check.scala 1099:41:@1756.4]
  wire  dat_rsp_sft_d3_en; // @[NV_NVDLA_CSC_dl_for_check.scala 1100:41:@1758.4]
  wire [511:0] _GEN_149; // @[NV_NVDLA_CSC_dl_for_check.scala 1102:24:@1759.4]
  wire [255:0] _GEN_150; // @[NV_NVDLA_CSC_dl_for_check.scala 1105:24:@1762.4]
  wire [511:0] _GEN_151; // @[NV_NVDLA_CSC_dl_for_check.scala 1105:24:@1762.4]
  wire [511:0] _GEN_154; // @[NV_NVDLA_CSC_dl_for_check.scala 1109:24:@1766.4]
  wire [318:0] _T_2153; // @[NV_NVDLA_CSC_dl_for_check.scala 1118:56:@1772.4]
  wire [63:0] _T_2154; // @[NV_NVDLA_CSC_dl_for_check.scala 1118:73:@1773.4]
  wire [63:0] dat_rsp_ori_mask; // @[NV_NVDLA_CSC_dl_for_check.scala 1118:24:@1774.4]
  wire  _T_2156; // @[NV_NVDLA_CSC_dl_for_check.scala 1120:51:@1775.4]
  wire [63:0] dat_rsp_cur_h_mask_p1; // @[NV_NVDLA_CSC_dl_for_check.scala 1120:32:@1777.4]
  wire  _T_2164; // @[NV_NVDLA_CSC_dl_for_check.scala 1121:51:@1778.4]
  wire [31:0] dat_rsp_cur_h_mask_p2; // @[NV_NVDLA_CSC_dl_for_check.scala 1121:32:@1780.4]
  wire  _T_2172; // @[NV_NVDLA_CSC_dl_for_check.scala 1122:51:@1781.4]
  wire [31:0] dat_rsp_cur_h_mask_p3; // @[NV_NVDLA_CSC_dl_for_check.scala 1122:32:@1783.4]
  wire [31:0] _T_2179; // @[NV_NVDLA_CSC_dl_for_check.scala 1124:57:@1784.4]
  wire [63:0] dat_rsp_cur_h_e2_mask_8b; // @[Cat.scala 30:58:@1786.4]
  wire [15:0] _T_2185; // @[NV_NVDLA_CSC_dl_for_check.scala 1125:57:@1787.4]
  wire [15:0] _T_2186; // @[NV_NVDLA_CSC_dl_for_check.scala 1125:106:@1788.4]
  wire [15:0] _T_2187; // @[NV_NVDLA_CSC_dl_for_check.scala 1125:155:@1789.4]
  wire [63:0] dat_rsp_cur_h_e4_mask_8b; // @[Cat.scala 30:58:@1793.4]
  wire  _T_2196; // @[NV_NVDLA_CSC_dl_for_check.scala 1127:43:@1794.4]
  wire [15:0] _T_2197; // @[NV_NVDLA_CSC_dl_for_check.scala 1127:89:@1795.4]
  wire [63:0] _T_2199; // @[Cat.scala 30:58:@1797.4]
  wire [63:0] _T_2200; // @[NV_NVDLA_CSC_dl_for_check.scala 1127:116:@1798.4]
  wire  _T_2202; // @[NV_NVDLA_CSC_dl_for_check.scala 1128:43:@1799.4]
  wire [31:0] _T_2203; // @[NV_NVDLA_CSC_dl_for_check.scala 1128:89:@1800.4]
  wire [63:0] _T_2204; // @[Cat.scala 30:58:@1801.4]
  wire [63:0] _T_2205; // @[NV_NVDLA_CSC_dl_for_check.scala 1128:116:@1802.4]
  wire [63:0] _T_2206; // @[NV_NVDLA_CSC_dl_for_check.scala 1128:26:@1803.4]
  wire [63:0] dat_rsp_mask_8b; // @[NV_NVDLA_CSC_dl_for_check.scala 1127:26:@1804.4]
  wire  _T_2207; // @[NV_NVDLA_CSC_dl_for_check.scala 1132:35:@1805.4]
  wire [7:0] dat_rsp_data_w_0; // @[NV_NVDLA_CSC_dl_for_check.scala 1132:25:@1806.4]
  wire [7:0] dat_rsp_data_w_1; // @[NV_NVDLA_CSC_dl_for_check.scala 1132:25:@1806.4]
  wire [7:0] dat_rsp_data_w_2; // @[NV_NVDLA_CSC_dl_for_check.scala 1132:25:@1806.4]
  wire [7:0] dat_rsp_data_w_3; // @[NV_NVDLA_CSC_dl_for_check.scala 1132:25:@1806.4]
  wire [7:0] dat_rsp_data_w_4; // @[NV_NVDLA_CSC_dl_for_check.scala 1132:25:@1806.4]
  wire [7:0] dat_rsp_data_w_5; // @[NV_NVDLA_CSC_dl_for_check.scala 1132:25:@1806.4]
  wire [7:0] dat_rsp_data_w_6; // @[NV_NVDLA_CSC_dl_for_check.scala 1132:25:@1806.4]
  wire [7:0] dat_rsp_data_w_7; // @[NV_NVDLA_CSC_dl_for_check.scala 1132:25:@1806.4]
  wire [7:0] dat_rsp_data_w_8; // @[NV_NVDLA_CSC_dl_for_check.scala 1132:25:@1806.4]
  wire [7:0] dat_rsp_data_w_9; // @[NV_NVDLA_CSC_dl_for_check.scala 1132:25:@1806.4]
  wire [7:0] dat_rsp_data_w_10; // @[NV_NVDLA_CSC_dl_for_check.scala 1132:25:@1806.4]
  wire [7:0] dat_rsp_data_w_11; // @[NV_NVDLA_CSC_dl_for_check.scala 1132:25:@1806.4]
  wire [7:0] dat_rsp_data_w_12; // @[NV_NVDLA_CSC_dl_for_check.scala 1132:25:@1806.4]
  wire [7:0] dat_rsp_data_w_13; // @[NV_NVDLA_CSC_dl_for_check.scala 1132:25:@1806.4]
  wire [7:0] dat_rsp_data_w_14; // @[NV_NVDLA_CSC_dl_for_check.scala 1132:25:@1806.4]
  wire [7:0] dat_rsp_data_w_15; // @[NV_NVDLA_CSC_dl_for_check.scala 1132:25:@1806.4]
  wire [7:0] dat_rsp_data_w_16; // @[NV_NVDLA_CSC_dl_for_check.scala 1132:25:@1806.4]
  wire [7:0] dat_rsp_data_w_17; // @[NV_NVDLA_CSC_dl_for_check.scala 1132:25:@1806.4]
  wire [7:0] dat_rsp_data_w_18; // @[NV_NVDLA_CSC_dl_for_check.scala 1132:25:@1806.4]
  wire [7:0] dat_rsp_data_w_19; // @[NV_NVDLA_CSC_dl_for_check.scala 1132:25:@1806.4]
  wire [7:0] dat_rsp_data_w_20; // @[NV_NVDLA_CSC_dl_for_check.scala 1132:25:@1806.4]
  wire [7:0] dat_rsp_data_w_21; // @[NV_NVDLA_CSC_dl_for_check.scala 1132:25:@1806.4]
  wire [7:0] dat_rsp_data_w_22; // @[NV_NVDLA_CSC_dl_for_check.scala 1132:25:@1806.4]
  wire [7:0] dat_rsp_data_w_23; // @[NV_NVDLA_CSC_dl_for_check.scala 1132:25:@1806.4]
  wire [7:0] dat_rsp_data_w_24; // @[NV_NVDLA_CSC_dl_for_check.scala 1132:25:@1806.4]
  wire [7:0] dat_rsp_data_w_25; // @[NV_NVDLA_CSC_dl_for_check.scala 1132:25:@1806.4]
  wire [7:0] dat_rsp_data_w_26; // @[NV_NVDLA_CSC_dl_for_check.scala 1132:25:@1806.4]
  wire [7:0] dat_rsp_data_w_27; // @[NV_NVDLA_CSC_dl_for_check.scala 1132:25:@1806.4]
  wire [7:0] dat_rsp_data_w_28; // @[NV_NVDLA_CSC_dl_for_check.scala 1132:25:@1806.4]
  wire [7:0] dat_rsp_data_w_29; // @[NV_NVDLA_CSC_dl_for_check.scala 1132:25:@1806.4]
  wire [7:0] dat_rsp_data_w_30; // @[NV_NVDLA_CSC_dl_for_check.scala 1132:25:@1806.4]
  wire [7:0] dat_rsp_data_w_31; // @[NV_NVDLA_CSC_dl_for_check.scala 1132:25:@1806.4]
  wire [7:0] dat_rsp_data_w_32; // @[NV_NVDLA_CSC_dl_for_check.scala 1132:25:@1806.4]
  wire [7:0] dat_rsp_data_w_33; // @[NV_NVDLA_CSC_dl_for_check.scala 1132:25:@1806.4]
  wire [7:0] dat_rsp_data_w_34; // @[NV_NVDLA_CSC_dl_for_check.scala 1132:25:@1806.4]
  wire [7:0] dat_rsp_data_w_35; // @[NV_NVDLA_CSC_dl_for_check.scala 1132:25:@1806.4]
  wire [7:0] dat_rsp_data_w_36; // @[NV_NVDLA_CSC_dl_for_check.scala 1132:25:@1806.4]
  wire [7:0] dat_rsp_data_w_37; // @[NV_NVDLA_CSC_dl_for_check.scala 1132:25:@1806.4]
  wire [7:0] dat_rsp_data_w_38; // @[NV_NVDLA_CSC_dl_for_check.scala 1132:25:@1806.4]
  wire [7:0] dat_rsp_data_w_39; // @[NV_NVDLA_CSC_dl_for_check.scala 1132:25:@1806.4]
  wire [7:0] dat_rsp_data_w_40; // @[NV_NVDLA_CSC_dl_for_check.scala 1132:25:@1806.4]
  wire [7:0] dat_rsp_data_w_41; // @[NV_NVDLA_CSC_dl_for_check.scala 1132:25:@1806.4]
  wire [7:0] dat_rsp_data_w_42; // @[NV_NVDLA_CSC_dl_for_check.scala 1132:25:@1806.4]
  wire [7:0] dat_rsp_data_w_43; // @[NV_NVDLA_CSC_dl_for_check.scala 1132:25:@1806.4]
  wire [7:0] dat_rsp_data_w_44; // @[NV_NVDLA_CSC_dl_for_check.scala 1132:25:@1806.4]
  wire [7:0] dat_rsp_data_w_45; // @[NV_NVDLA_CSC_dl_for_check.scala 1132:25:@1806.4]
  wire [7:0] dat_rsp_data_w_46; // @[NV_NVDLA_CSC_dl_for_check.scala 1132:25:@1806.4]
  wire [7:0] dat_rsp_data_w_47; // @[NV_NVDLA_CSC_dl_for_check.scala 1132:25:@1806.4]
  wire [7:0] dat_rsp_data_w_48; // @[NV_NVDLA_CSC_dl_for_check.scala 1132:25:@1806.4]
  wire [7:0] dat_rsp_data_w_49; // @[NV_NVDLA_CSC_dl_for_check.scala 1132:25:@1806.4]
  wire [7:0] dat_rsp_data_w_50; // @[NV_NVDLA_CSC_dl_for_check.scala 1132:25:@1806.4]
  wire [7:0] dat_rsp_data_w_51; // @[NV_NVDLA_CSC_dl_for_check.scala 1132:25:@1806.4]
  wire [7:0] dat_rsp_data_w_52; // @[NV_NVDLA_CSC_dl_for_check.scala 1132:25:@1806.4]
  wire [7:0] dat_rsp_data_w_53; // @[NV_NVDLA_CSC_dl_for_check.scala 1132:25:@1806.4]
  wire [7:0] dat_rsp_data_w_54; // @[NV_NVDLA_CSC_dl_for_check.scala 1132:25:@1806.4]
  wire [7:0] dat_rsp_data_w_55; // @[NV_NVDLA_CSC_dl_for_check.scala 1132:25:@1806.4]
  wire [7:0] dat_rsp_data_w_56; // @[NV_NVDLA_CSC_dl_for_check.scala 1132:25:@1806.4]
  wire [7:0] dat_rsp_data_w_57; // @[NV_NVDLA_CSC_dl_for_check.scala 1132:25:@1806.4]
  wire [7:0] dat_rsp_data_w_58; // @[NV_NVDLA_CSC_dl_for_check.scala 1132:25:@1806.4]
  wire [7:0] dat_rsp_data_w_59; // @[NV_NVDLA_CSC_dl_for_check.scala 1132:25:@1806.4]
  wire [7:0] dat_rsp_data_w_60; // @[NV_NVDLA_CSC_dl_for_check.scala 1132:25:@1806.4]
  wire [7:0] dat_rsp_data_w_61; // @[NV_NVDLA_CSC_dl_for_check.scala 1132:25:@1806.4]
  wire [7:0] dat_rsp_data_w_62; // @[NV_NVDLA_CSC_dl_for_check.scala 1132:25:@1806.4]
  wire [7:0] dat_rsp_data_w_63; // @[NV_NVDLA_CSC_dl_for_check.scala 1132:25:@1806.4]
  wire  dat_rsp_mask_val_int8_0; // @[NV_NVDLA_CSC_dl_for_check.scala 1133:97:@1807.4]
  wire  dat_rsp_mask_val_int8_1; // @[NV_NVDLA_CSC_dl_for_check.scala 1133:97:@1808.4]
  wire  dat_rsp_mask_val_int8_2; // @[NV_NVDLA_CSC_dl_for_check.scala 1133:97:@1809.4]
  wire  dat_rsp_mask_val_int8_3; // @[NV_NVDLA_CSC_dl_for_check.scala 1133:97:@1810.4]
  wire  dat_rsp_mask_val_int8_4; // @[NV_NVDLA_CSC_dl_for_check.scala 1133:97:@1811.4]
  wire  dat_rsp_mask_val_int8_5; // @[NV_NVDLA_CSC_dl_for_check.scala 1133:97:@1812.4]
  wire  dat_rsp_mask_val_int8_6; // @[NV_NVDLA_CSC_dl_for_check.scala 1133:97:@1813.4]
  wire  dat_rsp_mask_val_int8_7; // @[NV_NVDLA_CSC_dl_for_check.scala 1133:97:@1814.4]
  wire  dat_rsp_mask_val_int8_8; // @[NV_NVDLA_CSC_dl_for_check.scala 1133:97:@1815.4]
  wire  dat_rsp_mask_val_int8_9; // @[NV_NVDLA_CSC_dl_for_check.scala 1133:97:@1816.4]
  wire  dat_rsp_mask_val_int8_10; // @[NV_NVDLA_CSC_dl_for_check.scala 1133:97:@1817.4]
  wire  dat_rsp_mask_val_int8_11; // @[NV_NVDLA_CSC_dl_for_check.scala 1133:97:@1818.4]
  wire  dat_rsp_mask_val_int8_12; // @[NV_NVDLA_CSC_dl_for_check.scala 1133:97:@1819.4]
  wire  dat_rsp_mask_val_int8_13; // @[NV_NVDLA_CSC_dl_for_check.scala 1133:97:@1820.4]
  wire  dat_rsp_mask_val_int8_14; // @[NV_NVDLA_CSC_dl_for_check.scala 1133:97:@1821.4]
  wire  dat_rsp_mask_val_int8_15; // @[NV_NVDLA_CSC_dl_for_check.scala 1133:97:@1822.4]
  wire  dat_rsp_mask_val_int8_16; // @[NV_NVDLA_CSC_dl_for_check.scala 1133:97:@1823.4]
  wire  dat_rsp_mask_val_int8_17; // @[NV_NVDLA_CSC_dl_for_check.scala 1133:97:@1824.4]
  wire  dat_rsp_mask_val_int8_18; // @[NV_NVDLA_CSC_dl_for_check.scala 1133:97:@1825.4]
  wire  dat_rsp_mask_val_int8_19; // @[NV_NVDLA_CSC_dl_for_check.scala 1133:97:@1826.4]
  wire  dat_rsp_mask_val_int8_20; // @[NV_NVDLA_CSC_dl_for_check.scala 1133:97:@1827.4]
  wire  dat_rsp_mask_val_int8_21; // @[NV_NVDLA_CSC_dl_for_check.scala 1133:97:@1828.4]
  wire  dat_rsp_mask_val_int8_22; // @[NV_NVDLA_CSC_dl_for_check.scala 1133:97:@1829.4]
  wire  dat_rsp_mask_val_int8_23; // @[NV_NVDLA_CSC_dl_for_check.scala 1133:97:@1830.4]
  wire  dat_rsp_mask_val_int8_24; // @[NV_NVDLA_CSC_dl_for_check.scala 1133:97:@1831.4]
  wire  dat_rsp_mask_val_int8_25; // @[NV_NVDLA_CSC_dl_for_check.scala 1133:97:@1832.4]
  wire  dat_rsp_mask_val_int8_26; // @[NV_NVDLA_CSC_dl_for_check.scala 1133:97:@1833.4]
  wire  dat_rsp_mask_val_int8_27; // @[NV_NVDLA_CSC_dl_for_check.scala 1133:97:@1834.4]
  wire  dat_rsp_mask_val_int8_28; // @[NV_NVDLA_CSC_dl_for_check.scala 1133:97:@1835.4]
  wire  dat_rsp_mask_val_int8_29; // @[NV_NVDLA_CSC_dl_for_check.scala 1133:97:@1836.4]
  wire  dat_rsp_mask_val_int8_30; // @[NV_NVDLA_CSC_dl_for_check.scala 1133:97:@1837.4]
  wire  dat_rsp_mask_val_int8_31; // @[NV_NVDLA_CSC_dl_for_check.scala 1133:97:@1838.4]
  wire  dat_rsp_mask_val_int8_32; // @[NV_NVDLA_CSC_dl_for_check.scala 1133:97:@1839.4]
  wire  dat_rsp_mask_val_int8_33; // @[NV_NVDLA_CSC_dl_for_check.scala 1133:97:@1840.4]
  wire  dat_rsp_mask_val_int8_34; // @[NV_NVDLA_CSC_dl_for_check.scala 1133:97:@1841.4]
  wire  dat_rsp_mask_val_int8_35; // @[NV_NVDLA_CSC_dl_for_check.scala 1133:97:@1842.4]
  wire  dat_rsp_mask_val_int8_36; // @[NV_NVDLA_CSC_dl_for_check.scala 1133:97:@1843.4]
  wire  dat_rsp_mask_val_int8_37; // @[NV_NVDLA_CSC_dl_for_check.scala 1133:97:@1844.4]
  wire  dat_rsp_mask_val_int8_38; // @[NV_NVDLA_CSC_dl_for_check.scala 1133:97:@1845.4]
  wire  dat_rsp_mask_val_int8_39; // @[NV_NVDLA_CSC_dl_for_check.scala 1133:97:@1846.4]
  wire  dat_rsp_mask_val_int8_40; // @[NV_NVDLA_CSC_dl_for_check.scala 1133:97:@1847.4]
  wire  dat_rsp_mask_val_int8_41; // @[NV_NVDLA_CSC_dl_for_check.scala 1133:97:@1848.4]
  wire  dat_rsp_mask_val_int8_42; // @[NV_NVDLA_CSC_dl_for_check.scala 1133:97:@1849.4]
  wire  dat_rsp_mask_val_int8_43; // @[NV_NVDLA_CSC_dl_for_check.scala 1133:97:@1850.4]
  wire  dat_rsp_mask_val_int8_44; // @[NV_NVDLA_CSC_dl_for_check.scala 1133:97:@1851.4]
  wire  dat_rsp_mask_val_int8_45; // @[NV_NVDLA_CSC_dl_for_check.scala 1133:97:@1852.4]
  wire  dat_rsp_mask_val_int8_46; // @[NV_NVDLA_CSC_dl_for_check.scala 1133:97:@1853.4]
  wire  dat_rsp_mask_val_int8_47; // @[NV_NVDLA_CSC_dl_for_check.scala 1133:97:@1854.4]
  wire  dat_rsp_mask_val_int8_48; // @[NV_NVDLA_CSC_dl_for_check.scala 1133:97:@1855.4]
  wire  dat_rsp_mask_val_int8_49; // @[NV_NVDLA_CSC_dl_for_check.scala 1133:97:@1856.4]
  wire  dat_rsp_mask_val_int8_50; // @[NV_NVDLA_CSC_dl_for_check.scala 1133:97:@1857.4]
  wire  dat_rsp_mask_val_int8_51; // @[NV_NVDLA_CSC_dl_for_check.scala 1133:97:@1858.4]
  wire  dat_rsp_mask_val_int8_52; // @[NV_NVDLA_CSC_dl_for_check.scala 1133:97:@1859.4]
  wire  dat_rsp_mask_val_int8_53; // @[NV_NVDLA_CSC_dl_for_check.scala 1133:97:@1860.4]
  wire  dat_rsp_mask_val_int8_54; // @[NV_NVDLA_CSC_dl_for_check.scala 1133:97:@1861.4]
  wire  dat_rsp_mask_val_int8_55; // @[NV_NVDLA_CSC_dl_for_check.scala 1133:97:@1862.4]
  wire  dat_rsp_mask_val_int8_56; // @[NV_NVDLA_CSC_dl_for_check.scala 1133:97:@1863.4]
  wire  dat_rsp_mask_val_int8_57; // @[NV_NVDLA_CSC_dl_for_check.scala 1133:97:@1864.4]
  wire  dat_rsp_mask_val_int8_58; // @[NV_NVDLA_CSC_dl_for_check.scala 1133:97:@1865.4]
  wire  dat_rsp_mask_val_int8_59; // @[NV_NVDLA_CSC_dl_for_check.scala 1133:97:@1866.4]
  wire  dat_rsp_mask_val_int8_60; // @[NV_NVDLA_CSC_dl_for_check.scala 1133:97:@1867.4]
  wire  dat_rsp_mask_val_int8_61; // @[NV_NVDLA_CSC_dl_for_check.scala 1133:97:@1868.4]
  wire  dat_rsp_mask_val_int8_62; // @[NV_NVDLA_CSC_dl_for_check.scala 1133:97:@1869.4]
  wire  dat_rsp_mask_val_int8_63; // @[NV_NVDLA_CSC_dl_for_check.scala 1133:97:@1870.4]
  wire  _T_2536; // @[NV_NVDLA_CSC_dl_for_check.scala 1134:80:@1936.4]
  wire  dat_rsp_mask_w_0; // @[NV_NVDLA_CSC_dl_for_check.scala 1134:83:@1937.4]
  wire  _T_2538; // @[NV_NVDLA_CSC_dl_for_check.scala 1134:80:@1938.4]
  wire  dat_rsp_mask_w_1; // @[NV_NVDLA_CSC_dl_for_check.scala 1134:83:@1939.4]
  wire  _T_2540; // @[NV_NVDLA_CSC_dl_for_check.scala 1134:80:@1940.4]
  wire  dat_rsp_mask_w_2; // @[NV_NVDLA_CSC_dl_for_check.scala 1134:83:@1941.4]
  wire  _T_2542; // @[NV_NVDLA_CSC_dl_for_check.scala 1134:80:@1942.4]
  wire  dat_rsp_mask_w_3; // @[NV_NVDLA_CSC_dl_for_check.scala 1134:83:@1943.4]
  wire  _T_2544; // @[NV_NVDLA_CSC_dl_for_check.scala 1134:80:@1944.4]
  wire  dat_rsp_mask_w_4; // @[NV_NVDLA_CSC_dl_for_check.scala 1134:83:@1945.4]
  wire  _T_2546; // @[NV_NVDLA_CSC_dl_for_check.scala 1134:80:@1946.4]
  wire  dat_rsp_mask_w_5; // @[NV_NVDLA_CSC_dl_for_check.scala 1134:83:@1947.4]
  wire  _T_2548; // @[NV_NVDLA_CSC_dl_for_check.scala 1134:80:@1948.4]
  wire  dat_rsp_mask_w_6; // @[NV_NVDLA_CSC_dl_for_check.scala 1134:83:@1949.4]
  wire  _T_2550; // @[NV_NVDLA_CSC_dl_for_check.scala 1134:80:@1950.4]
  wire  dat_rsp_mask_w_7; // @[NV_NVDLA_CSC_dl_for_check.scala 1134:83:@1951.4]
  wire  _T_2552; // @[NV_NVDLA_CSC_dl_for_check.scala 1134:80:@1952.4]
  wire  dat_rsp_mask_w_8; // @[NV_NVDLA_CSC_dl_for_check.scala 1134:83:@1953.4]
  wire  _T_2554; // @[NV_NVDLA_CSC_dl_for_check.scala 1134:80:@1954.4]
  wire  dat_rsp_mask_w_9; // @[NV_NVDLA_CSC_dl_for_check.scala 1134:83:@1955.4]
  wire  _T_2556; // @[NV_NVDLA_CSC_dl_for_check.scala 1134:80:@1956.4]
  wire  dat_rsp_mask_w_10; // @[NV_NVDLA_CSC_dl_for_check.scala 1134:83:@1957.4]
  wire  _T_2558; // @[NV_NVDLA_CSC_dl_for_check.scala 1134:80:@1958.4]
  wire  dat_rsp_mask_w_11; // @[NV_NVDLA_CSC_dl_for_check.scala 1134:83:@1959.4]
  wire  _T_2560; // @[NV_NVDLA_CSC_dl_for_check.scala 1134:80:@1960.4]
  wire  dat_rsp_mask_w_12; // @[NV_NVDLA_CSC_dl_for_check.scala 1134:83:@1961.4]
  wire  _T_2562; // @[NV_NVDLA_CSC_dl_for_check.scala 1134:80:@1962.4]
  wire  dat_rsp_mask_w_13; // @[NV_NVDLA_CSC_dl_for_check.scala 1134:83:@1963.4]
  wire  _T_2564; // @[NV_NVDLA_CSC_dl_for_check.scala 1134:80:@1964.4]
  wire  dat_rsp_mask_w_14; // @[NV_NVDLA_CSC_dl_for_check.scala 1134:83:@1965.4]
  wire  _T_2566; // @[NV_NVDLA_CSC_dl_for_check.scala 1134:80:@1966.4]
  wire  dat_rsp_mask_w_15; // @[NV_NVDLA_CSC_dl_for_check.scala 1134:83:@1967.4]
  wire  _T_2568; // @[NV_NVDLA_CSC_dl_for_check.scala 1134:80:@1968.4]
  wire  dat_rsp_mask_w_16; // @[NV_NVDLA_CSC_dl_for_check.scala 1134:83:@1969.4]
  wire  _T_2570; // @[NV_NVDLA_CSC_dl_for_check.scala 1134:80:@1970.4]
  wire  dat_rsp_mask_w_17; // @[NV_NVDLA_CSC_dl_for_check.scala 1134:83:@1971.4]
  wire  _T_2572; // @[NV_NVDLA_CSC_dl_for_check.scala 1134:80:@1972.4]
  wire  dat_rsp_mask_w_18; // @[NV_NVDLA_CSC_dl_for_check.scala 1134:83:@1973.4]
  wire  _T_2574; // @[NV_NVDLA_CSC_dl_for_check.scala 1134:80:@1974.4]
  wire  dat_rsp_mask_w_19; // @[NV_NVDLA_CSC_dl_for_check.scala 1134:83:@1975.4]
  wire  _T_2576; // @[NV_NVDLA_CSC_dl_for_check.scala 1134:80:@1976.4]
  wire  dat_rsp_mask_w_20; // @[NV_NVDLA_CSC_dl_for_check.scala 1134:83:@1977.4]
  wire  _T_2578; // @[NV_NVDLA_CSC_dl_for_check.scala 1134:80:@1978.4]
  wire  dat_rsp_mask_w_21; // @[NV_NVDLA_CSC_dl_for_check.scala 1134:83:@1979.4]
  wire  _T_2580; // @[NV_NVDLA_CSC_dl_for_check.scala 1134:80:@1980.4]
  wire  dat_rsp_mask_w_22; // @[NV_NVDLA_CSC_dl_for_check.scala 1134:83:@1981.4]
  wire  _T_2582; // @[NV_NVDLA_CSC_dl_for_check.scala 1134:80:@1982.4]
  wire  dat_rsp_mask_w_23; // @[NV_NVDLA_CSC_dl_for_check.scala 1134:83:@1983.4]
  wire  _T_2584; // @[NV_NVDLA_CSC_dl_for_check.scala 1134:80:@1984.4]
  wire  dat_rsp_mask_w_24; // @[NV_NVDLA_CSC_dl_for_check.scala 1134:83:@1985.4]
  wire  _T_2586; // @[NV_NVDLA_CSC_dl_for_check.scala 1134:80:@1986.4]
  wire  dat_rsp_mask_w_25; // @[NV_NVDLA_CSC_dl_for_check.scala 1134:83:@1987.4]
  wire  _T_2588; // @[NV_NVDLA_CSC_dl_for_check.scala 1134:80:@1988.4]
  wire  dat_rsp_mask_w_26; // @[NV_NVDLA_CSC_dl_for_check.scala 1134:83:@1989.4]
  wire  _T_2590; // @[NV_NVDLA_CSC_dl_for_check.scala 1134:80:@1990.4]
  wire  dat_rsp_mask_w_27; // @[NV_NVDLA_CSC_dl_for_check.scala 1134:83:@1991.4]
  wire  _T_2592; // @[NV_NVDLA_CSC_dl_for_check.scala 1134:80:@1992.4]
  wire  dat_rsp_mask_w_28; // @[NV_NVDLA_CSC_dl_for_check.scala 1134:83:@1993.4]
  wire  _T_2594; // @[NV_NVDLA_CSC_dl_for_check.scala 1134:80:@1994.4]
  wire  dat_rsp_mask_w_29; // @[NV_NVDLA_CSC_dl_for_check.scala 1134:83:@1995.4]
  wire  _T_2596; // @[NV_NVDLA_CSC_dl_for_check.scala 1134:80:@1996.4]
  wire  dat_rsp_mask_w_30; // @[NV_NVDLA_CSC_dl_for_check.scala 1134:83:@1997.4]
  wire  _T_2598; // @[NV_NVDLA_CSC_dl_for_check.scala 1134:80:@1998.4]
  wire  dat_rsp_mask_w_31; // @[NV_NVDLA_CSC_dl_for_check.scala 1134:83:@1999.4]
  wire  _T_2600; // @[NV_NVDLA_CSC_dl_for_check.scala 1134:80:@2000.4]
  wire  dat_rsp_mask_w_32; // @[NV_NVDLA_CSC_dl_for_check.scala 1134:83:@2001.4]
  wire  _T_2602; // @[NV_NVDLA_CSC_dl_for_check.scala 1134:80:@2002.4]
  wire  dat_rsp_mask_w_33; // @[NV_NVDLA_CSC_dl_for_check.scala 1134:83:@2003.4]
  wire  _T_2604; // @[NV_NVDLA_CSC_dl_for_check.scala 1134:80:@2004.4]
  wire  dat_rsp_mask_w_34; // @[NV_NVDLA_CSC_dl_for_check.scala 1134:83:@2005.4]
  wire  _T_2606; // @[NV_NVDLA_CSC_dl_for_check.scala 1134:80:@2006.4]
  wire  dat_rsp_mask_w_35; // @[NV_NVDLA_CSC_dl_for_check.scala 1134:83:@2007.4]
  wire  _T_2608; // @[NV_NVDLA_CSC_dl_for_check.scala 1134:80:@2008.4]
  wire  dat_rsp_mask_w_36; // @[NV_NVDLA_CSC_dl_for_check.scala 1134:83:@2009.4]
  wire  _T_2610; // @[NV_NVDLA_CSC_dl_for_check.scala 1134:80:@2010.4]
  wire  dat_rsp_mask_w_37; // @[NV_NVDLA_CSC_dl_for_check.scala 1134:83:@2011.4]
  wire  _T_2612; // @[NV_NVDLA_CSC_dl_for_check.scala 1134:80:@2012.4]
  wire  dat_rsp_mask_w_38; // @[NV_NVDLA_CSC_dl_for_check.scala 1134:83:@2013.4]
  wire  _T_2614; // @[NV_NVDLA_CSC_dl_for_check.scala 1134:80:@2014.4]
  wire  dat_rsp_mask_w_39; // @[NV_NVDLA_CSC_dl_for_check.scala 1134:83:@2015.4]
  wire  _T_2616; // @[NV_NVDLA_CSC_dl_for_check.scala 1134:80:@2016.4]
  wire  dat_rsp_mask_w_40; // @[NV_NVDLA_CSC_dl_for_check.scala 1134:83:@2017.4]
  wire  _T_2618; // @[NV_NVDLA_CSC_dl_for_check.scala 1134:80:@2018.4]
  wire  dat_rsp_mask_w_41; // @[NV_NVDLA_CSC_dl_for_check.scala 1134:83:@2019.4]
  wire  _T_2620; // @[NV_NVDLA_CSC_dl_for_check.scala 1134:80:@2020.4]
  wire  dat_rsp_mask_w_42; // @[NV_NVDLA_CSC_dl_for_check.scala 1134:83:@2021.4]
  wire  _T_2622; // @[NV_NVDLA_CSC_dl_for_check.scala 1134:80:@2022.4]
  wire  dat_rsp_mask_w_43; // @[NV_NVDLA_CSC_dl_for_check.scala 1134:83:@2023.4]
  wire  _T_2624; // @[NV_NVDLA_CSC_dl_for_check.scala 1134:80:@2024.4]
  wire  dat_rsp_mask_w_44; // @[NV_NVDLA_CSC_dl_for_check.scala 1134:83:@2025.4]
  wire  _T_2626; // @[NV_NVDLA_CSC_dl_for_check.scala 1134:80:@2026.4]
  wire  dat_rsp_mask_w_45; // @[NV_NVDLA_CSC_dl_for_check.scala 1134:83:@2027.4]
  wire  _T_2628; // @[NV_NVDLA_CSC_dl_for_check.scala 1134:80:@2028.4]
  wire  dat_rsp_mask_w_46; // @[NV_NVDLA_CSC_dl_for_check.scala 1134:83:@2029.4]
  wire  _T_2630; // @[NV_NVDLA_CSC_dl_for_check.scala 1134:80:@2030.4]
  wire  dat_rsp_mask_w_47; // @[NV_NVDLA_CSC_dl_for_check.scala 1134:83:@2031.4]
  wire  _T_2632; // @[NV_NVDLA_CSC_dl_for_check.scala 1134:80:@2032.4]
  wire  dat_rsp_mask_w_48; // @[NV_NVDLA_CSC_dl_for_check.scala 1134:83:@2033.4]
  wire  _T_2634; // @[NV_NVDLA_CSC_dl_for_check.scala 1134:80:@2034.4]
  wire  dat_rsp_mask_w_49; // @[NV_NVDLA_CSC_dl_for_check.scala 1134:83:@2035.4]
  wire  _T_2636; // @[NV_NVDLA_CSC_dl_for_check.scala 1134:80:@2036.4]
  wire  dat_rsp_mask_w_50; // @[NV_NVDLA_CSC_dl_for_check.scala 1134:83:@2037.4]
  wire  _T_2638; // @[NV_NVDLA_CSC_dl_for_check.scala 1134:80:@2038.4]
  wire  dat_rsp_mask_w_51; // @[NV_NVDLA_CSC_dl_for_check.scala 1134:83:@2039.4]
  wire  _T_2640; // @[NV_NVDLA_CSC_dl_for_check.scala 1134:80:@2040.4]
  wire  dat_rsp_mask_w_52; // @[NV_NVDLA_CSC_dl_for_check.scala 1134:83:@2041.4]
  wire  _T_2642; // @[NV_NVDLA_CSC_dl_for_check.scala 1134:80:@2042.4]
  wire  dat_rsp_mask_w_53; // @[NV_NVDLA_CSC_dl_for_check.scala 1134:83:@2043.4]
  wire  _T_2644; // @[NV_NVDLA_CSC_dl_for_check.scala 1134:80:@2044.4]
  wire  dat_rsp_mask_w_54; // @[NV_NVDLA_CSC_dl_for_check.scala 1134:83:@2045.4]
  wire  _T_2646; // @[NV_NVDLA_CSC_dl_for_check.scala 1134:80:@2046.4]
  wire  dat_rsp_mask_w_55; // @[NV_NVDLA_CSC_dl_for_check.scala 1134:83:@2047.4]
  wire  _T_2648; // @[NV_NVDLA_CSC_dl_for_check.scala 1134:80:@2048.4]
  wire  dat_rsp_mask_w_56; // @[NV_NVDLA_CSC_dl_for_check.scala 1134:83:@2049.4]
  wire  _T_2650; // @[NV_NVDLA_CSC_dl_for_check.scala 1134:80:@2050.4]
  wire  dat_rsp_mask_w_57; // @[NV_NVDLA_CSC_dl_for_check.scala 1134:83:@2051.4]
  wire  _T_2652; // @[NV_NVDLA_CSC_dl_for_check.scala 1134:80:@2052.4]
  wire  dat_rsp_mask_w_58; // @[NV_NVDLA_CSC_dl_for_check.scala 1134:83:@2053.4]
  wire  _T_2654; // @[NV_NVDLA_CSC_dl_for_check.scala 1134:80:@2054.4]
  wire  dat_rsp_mask_w_59; // @[NV_NVDLA_CSC_dl_for_check.scala 1134:83:@2055.4]
  wire  _T_2656; // @[NV_NVDLA_CSC_dl_for_check.scala 1134:80:@2056.4]
  wire  dat_rsp_mask_w_60; // @[NV_NVDLA_CSC_dl_for_check.scala 1134:83:@2057.4]
  wire  _T_2658; // @[NV_NVDLA_CSC_dl_for_check.scala 1134:80:@2058.4]
  wire  dat_rsp_mask_w_61; // @[NV_NVDLA_CSC_dl_for_check.scala 1134:83:@2059.4]
  wire  _T_2660; // @[NV_NVDLA_CSC_dl_for_check.scala 1134:80:@2060.4]
  wire  dat_rsp_mask_w_62; // @[NV_NVDLA_CSC_dl_for_check.scala 1134:83:@2061.4]
  wire  _T_2662; // @[NV_NVDLA_CSC_dl_for_check.scala 1134:80:@2062.4]
  wire  dat_rsp_mask_w_63; // @[NV_NVDLA_CSC_dl_for_check.scala 1134:83:@2063.4]
  reg  dat_out_pvld; // @[NV_NVDLA_CSC_dl_for_check.scala 1141:27:@2129.4]
  reg [31:0] _RAND_153;
  reg  dat_out_bypass_mask_0; // @[NV_NVDLA_CSC_dl_for_check.scala 1143:34:@2196.4]
  reg [31:0] _RAND_154;
  reg  dat_out_bypass_mask_1; // @[NV_NVDLA_CSC_dl_for_check.scala 1143:34:@2196.4]
  reg [31:0] _RAND_155;
  reg  dat_out_bypass_mask_2; // @[NV_NVDLA_CSC_dl_for_check.scala 1143:34:@2196.4]
  reg [31:0] _RAND_156;
  reg  dat_out_bypass_mask_3; // @[NV_NVDLA_CSC_dl_for_check.scala 1143:34:@2196.4]
  reg [31:0] _RAND_157;
  reg  dat_out_bypass_mask_4; // @[NV_NVDLA_CSC_dl_for_check.scala 1143:34:@2196.4]
  reg [31:0] _RAND_158;
  reg  dat_out_bypass_mask_5; // @[NV_NVDLA_CSC_dl_for_check.scala 1143:34:@2196.4]
  reg [31:0] _RAND_159;
  reg  dat_out_bypass_mask_6; // @[NV_NVDLA_CSC_dl_for_check.scala 1143:34:@2196.4]
  reg [31:0] _RAND_160;
  reg  dat_out_bypass_mask_7; // @[NV_NVDLA_CSC_dl_for_check.scala 1143:34:@2196.4]
  reg [31:0] _RAND_161;
  reg  dat_out_bypass_mask_8; // @[NV_NVDLA_CSC_dl_for_check.scala 1143:34:@2196.4]
  reg [31:0] _RAND_162;
  reg  dat_out_bypass_mask_9; // @[NV_NVDLA_CSC_dl_for_check.scala 1143:34:@2196.4]
  reg [31:0] _RAND_163;
  reg  dat_out_bypass_mask_10; // @[NV_NVDLA_CSC_dl_for_check.scala 1143:34:@2196.4]
  reg [31:0] _RAND_164;
  reg  dat_out_bypass_mask_11; // @[NV_NVDLA_CSC_dl_for_check.scala 1143:34:@2196.4]
  reg [31:0] _RAND_165;
  reg  dat_out_bypass_mask_12; // @[NV_NVDLA_CSC_dl_for_check.scala 1143:34:@2196.4]
  reg [31:0] _RAND_166;
  reg  dat_out_bypass_mask_13; // @[NV_NVDLA_CSC_dl_for_check.scala 1143:34:@2196.4]
  reg [31:0] _RAND_167;
  reg  dat_out_bypass_mask_14; // @[NV_NVDLA_CSC_dl_for_check.scala 1143:34:@2196.4]
  reg [31:0] _RAND_168;
  reg  dat_out_bypass_mask_15; // @[NV_NVDLA_CSC_dl_for_check.scala 1143:34:@2196.4]
  reg [31:0] _RAND_169;
  reg  dat_out_bypass_mask_16; // @[NV_NVDLA_CSC_dl_for_check.scala 1143:34:@2196.4]
  reg [31:0] _RAND_170;
  reg  dat_out_bypass_mask_17; // @[NV_NVDLA_CSC_dl_for_check.scala 1143:34:@2196.4]
  reg [31:0] _RAND_171;
  reg  dat_out_bypass_mask_18; // @[NV_NVDLA_CSC_dl_for_check.scala 1143:34:@2196.4]
  reg [31:0] _RAND_172;
  reg  dat_out_bypass_mask_19; // @[NV_NVDLA_CSC_dl_for_check.scala 1143:34:@2196.4]
  reg [31:0] _RAND_173;
  reg  dat_out_bypass_mask_20; // @[NV_NVDLA_CSC_dl_for_check.scala 1143:34:@2196.4]
  reg [31:0] _RAND_174;
  reg  dat_out_bypass_mask_21; // @[NV_NVDLA_CSC_dl_for_check.scala 1143:34:@2196.4]
  reg [31:0] _RAND_175;
  reg  dat_out_bypass_mask_22; // @[NV_NVDLA_CSC_dl_for_check.scala 1143:34:@2196.4]
  reg [31:0] _RAND_176;
  reg  dat_out_bypass_mask_23; // @[NV_NVDLA_CSC_dl_for_check.scala 1143:34:@2196.4]
  reg [31:0] _RAND_177;
  reg  dat_out_bypass_mask_24; // @[NV_NVDLA_CSC_dl_for_check.scala 1143:34:@2196.4]
  reg [31:0] _RAND_178;
  reg  dat_out_bypass_mask_25; // @[NV_NVDLA_CSC_dl_for_check.scala 1143:34:@2196.4]
  reg [31:0] _RAND_179;
  reg  dat_out_bypass_mask_26; // @[NV_NVDLA_CSC_dl_for_check.scala 1143:34:@2196.4]
  reg [31:0] _RAND_180;
  reg  dat_out_bypass_mask_27; // @[NV_NVDLA_CSC_dl_for_check.scala 1143:34:@2196.4]
  reg [31:0] _RAND_181;
  reg  dat_out_bypass_mask_28; // @[NV_NVDLA_CSC_dl_for_check.scala 1143:34:@2196.4]
  reg [31:0] _RAND_182;
  reg  dat_out_bypass_mask_29; // @[NV_NVDLA_CSC_dl_for_check.scala 1143:34:@2196.4]
  reg [31:0] _RAND_183;
  reg  dat_out_bypass_mask_30; // @[NV_NVDLA_CSC_dl_for_check.scala 1143:34:@2196.4]
  reg [31:0] _RAND_184;
  reg  dat_out_bypass_mask_31; // @[NV_NVDLA_CSC_dl_for_check.scala 1143:34:@2196.4]
  reg [31:0] _RAND_185;
  reg  dat_out_bypass_mask_32; // @[NV_NVDLA_CSC_dl_for_check.scala 1143:34:@2196.4]
  reg [31:0] _RAND_186;
  reg  dat_out_bypass_mask_33; // @[NV_NVDLA_CSC_dl_for_check.scala 1143:34:@2196.4]
  reg [31:0] _RAND_187;
  reg  dat_out_bypass_mask_34; // @[NV_NVDLA_CSC_dl_for_check.scala 1143:34:@2196.4]
  reg [31:0] _RAND_188;
  reg  dat_out_bypass_mask_35; // @[NV_NVDLA_CSC_dl_for_check.scala 1143:34:@2196.4]
  reg [31:0] _RAND_189;
  reg  dat_out_bypass_mask_36; // @[NV_NVDLA_CSC_dl_for_check.scala 1143:34:@2196.4]
  reg [31:0] _RAND_190;
  reg  dat_out_bypass_mask_37; // @[NV_NVDLA_CSC_dl_for_check.scala 1143:34:@2196.4]
  reg [31:0] _RAND_191;
  reg  dat_out_bypass_mask_38; // @[NV_NVDLA_CSC_dl_for_check.scala 1143:34:@2196.4]
  reg [31:0] _RAND_192;
  reg  dat_out_bypass_mask_39; // @[NV_NVDLA_CSC_dl_for_check.scala 1143:34:@2196.4]
  reg [31:0] _RAND_193;
  reg  dat_out_bypass_mask_40; // @[NV_NVDLA_CSC_dl_for_check.scala 1143:34:@2196.4]
  reg [31:0] _RAND_194;
  reg  dat_out_bypass_mask_41; // @[NV_NVDLA_CSC_dl_for_check.scala 1143:34:@2196.4]
  reg [31:0] _RAND_195;
  reg  dat_out_bypass_mask_42; // @[NV_NVDLA_CSC_dl_for_check.scala 1143:34:@2196.4]
  reg [31:0] _RAND_196;
  reg  dat_out_bypass_mask_43; // @[NV_NVDLA_CSC_dl_for_check.scala 1143:34:@2196.4]
  reg [31:0] _RAND_197;
  reg  dat_out_bypass_mask_44; // @[NV_NVDLA_CSC_dl_for_check.scala 1143:34:@2196.4]
  reg [31:0] _RAND_198;
  reg  dat_out_bypass_mask_45; // @[NV_NVDLA_CSC_dl_for_check.scala 1143:34:@2196.4]
  reg [31:0] _RAND_199;
  reg  dat_out_bypass_mask_46; // @[NV_NVDLA_CSC_dl_for_check.scala 1143:34:@2196.4]
  reg [31:0] _RAND_200;
  reg  dat_out_bypass_mask_47; // @[NV_NVDLA_CSC_dl_for_check.scala 1143:34:@2196.4]
  reg [31:0] _RAND_201;
  reg  dat_out_bypass_mask_48; // @[NV_NVDLA_CSC_dl_for_check.scala 1143:34:@2196.4]
  reg [31:0] _RAND_202;
  reg  dat_out_bypass_mask_49; // @[NV_NVDLA_CSC_dl_for_check.scala 1143:34:@2196.4]
  reg [31:0] _RAND_203;
  reg  dat_out_bypass_mask_50; // @[NV_NVDLA_CSC_dl_for_check.scala 1143:34:@2196.4]
  reg [31:0] _RAND_204;
  reg  dat_out_bypass_mask_51; // @[NV_NVDLA_CSC_dl_for_check.scala 1143:34:@2196.4]
  reg [31:0] _RAND_205;
  reg  dat_out_bypass_mask_52; // @[NV_NVDLA_CSC_dl_for_check.scala 1143:34:@2196.4]
  reg [31:0] _RAND_206;
  reg  dat_out_bypass_mask_53; // @[NV_NVDLA_CSC_dl_for_check.scala 1143:34:@2196.4]
  reg [31:0] _RAND_207;
  reg  dat_out_bypass_mask_54; // @[NV_NVDLA_CSC_dl_for_check.scala 1143:34:@2196.4]
  reg [31:0] _RAND_208;
  reg  dat_out_bypass_mask_55; // @[NV_NVDLA_CSC_dl_for_check.scala 1143:34:@2196.4]
  reg [31:0] _RAND_209;
  reg  dat_out_bypass_mask_56; // @[NV_NVDLA_CSC_dl_for_check.scala 1143:34:@2196.4]
  reg [31:0] _RAND_210;
  reg  dat_out_bypass_mask_57; // @[NV_NVDLA_CSC_dl_for_check.scala 1143:34:@2196.4]
  reg [31:0] _RAND_211;
  reg  dat_out_bypass_mask_58; // @[NV_NVDLA_CSC_dl_for_check.scala 1143:34:@2196.4]
  reg [31:0] _RAND_212;
  reg  dat_out_bypass_mask_59; // @[NV_NVDLA_CSC_dl_for_check.scala 1143:34:@2196.4]
  reg [31:0] _RAND_213;
  reg  dat_out_bypass_mask_60; // @[NV_NVDLA_CSC_dl_for_check.scala 1143:34:@2196.4]
  reg [31:0] _RAND_214;
  reg  dat_out_bypass_mask_61; // @[NV_NVDLA_CSC_dl_for_check.scala 1143:34:@2196.4]
  reg [31:0] _RAND_215;
  reg  dat_out_bypass_mask_62; // @[NV_NVDLA_CSC_dl_for_check.scala 1143:34:@2196.4]
  reg [31:0] _RAND_216;
  reg  dat_out_bypass_mask_63; // @[NV_NVDLA_CSC_dl_for_check.scala 1143:34:@2196.4]
  reg [31:0] _RAND_217;
  reg [7:0] dat_out_bypass_data_0; // @[NV_NVDLA_CSC_dl_for_check.scala 1144:30:@2197.4]
  reg [31:0] _RAND_218;
  reg [7:0] dat_out_bypass_data_1; // @[NV_NVDLA_CSC_dl_for_check.scala 1144:30:@2197.4]
  reg [31:0] _RAND_219;
  reg [7:0] dat_out_bypass_data_2; // @[NV_NVDLA_CSC_dl_for_check.scala 1144:30:@2197.4]
  reg [31:0] _RAND_220;
  reg [7:0] dat_out_bypass_data_3; // @[NV_NVDLA_CSC_dl_for_check.scala 1144:30:@2197.4]
  reg [31:0] _RAND_221;
  reg [7:0] dat_out_bypass_data_4; // @[NV_NVDLA_CSC_dl_for_check.scala 1144:30:@2197.4]
  reg [31:0] _RAND_222;
  reg [7:0] dat_out_bypass_data_5; // @[NV_NVDLA_CSC_dl_for_check.scala 1144:30:@2197.4]
  reg [31:0] _RAND_223;
  reg [7:0] dat_out_bypass_data_6; // @[NV_NVDLA_CSC_dl_for_check.scala 1144:30:@2197.4]
  reg [31:0] _RAND_224;
  reg [7:0] dat_out_bypass_data_7; // @[NV_NVDLA_CSC_dl_for_check.scala 1144:30:@2197.4]
  reg [31:0] _RAND_225;
  reg [7:0] dat_out_bypass_data_8; // @[NV_NVDLA_CSC_dl_for_check.scala 1144:30:@2197.4]
  reg [31:0] _RAND_226;
  reg [7:0] dat_out_bypass_data_9; // @[NV_NVDLA_CSC_dl_for_check.scala 1144:30:@2197.4]
  reg [31:0] _RAND_227;
  reg [7:0] dat_out_bypass_data_10; // @[NV_NVDLA_CSC_dl_for_check.scala 1144:30:@2197.4]
  reg [31:0] _RAND_228;
  reg [7:0] dat_out_bypass_data_11; // @[NV_NVDLA_CSC_dl_for_check.scala 1144:30:@2197.4]
  reg [31:0] _RAND_229;
  reg [7:0] dat_out_bypass_data_12; // @[NV_NVDLA_CSC_dl_for_check.scala 1144:30:@2197.4]
  reg [31:0] _RAND_230;
  reg [7:0] dat_out_bypass_data_13; // @[NV_NVDLA_CSC_dl_for_check.scala 1144:30:@2197.4]
  reg [31:0] _RAND_231;
  reg [7:0] dat_out_bypass_data_14; // @[NV_NVDLA_CSC_dl_for_check.scala 1144:30:@2197.4]
  reg [31:0] _RAND_232;
  reg [7:0] dat_out_bypass_data_15; // @[NV_NVDLA_CSC_dl_for_check.scala 1144:30:@2197.4]
  reg [31:0] _RAND_233;
  reg [7:0] dat_out_bypass_data_16; // @[NV_NVDLA_CSC_dl_for_check.scala 1144:30:@2197.4]
  reg [31:0] _RAND_234;
  reg [7:0] dat_out_bypass_data_17; // @[NV_NVDLA_CSC_dl_for_check.scala 1144:30:@2197.4]
  reg [31:0] _RAND_235;
  reg [7:0] dat_out_bypass_data_18; // @[NV_NVDLA_CSC_dl_for_check.scala 1144:30:@2197.4]
  reg [31:0] _RAND_236;
  reg [7:0] dat_out_bypass_data_19; // @[NV_NVDLA_CSC_dl_for_check.scala 1144:30:@2197.4]
  reg [31:0] _RAND_237;
  reg [7:0] dat_out_bypass_data_20; // @[NV_NVDLA_CSC_dl_for_check.scala 1144:30:@2197.4]
  reg [31:0] _RAND_238;
  reg [7:0] dat_out_bypass_data_21; // @[NV_NVDLA_CSC_dl_for_check.scala 1144:30:@2197.4]
  reg [31:0] _RAND_239;
  reg [7:0] dat_out_bypass_data_22; // @[NV_NVDLA_CSC_dl_for_check.scala 1144:30:@2197.4]
  reg [31:0] _RAND_240;
  reg [7:0] dat_out_bypass_data_23; // @[NV_NVDLA_CSC_dl_for_check.scala 1144:30:@2197.4]
  reg [31:0] _RAND_241;
  reg [7:0] dat_out_bypass_data_24; // @[NV_NVDLA_CSC_dl_for_check.scala 1144:30:@2197.4]
  reg [31:0] _RAND_242;
  reg [7:0] dat_out_bypass_data_25; // @[NV_NVDLA_CSC_dl_for_check.scala 1144:30:@2197.4]
  reg [31:0] _RAND_243;
  reg [7:0] dat_out_bypass_data_26; // @[NV_NVDLA_CSC_dl_for_check.scala 1144:30:@2197.4]
  reg [31:0] _RAND_244;
  reg [7:0] dat_out_bypass_data_27; // @[NV_NVDLA_CSC_dl_for_check.scala 1144:30:@2197.4]
  reg [31:0] _RAND_245;
  reg [7:0] dat_out_bypass_data_28; // @[NV_NVDLA_CSC_dl_for_check.scala 1144:30:@2197.4]
  reg [31:0] _RAND_246;
  reg [7:0] dat_out_bypass_data_29; // @[NV_NVDLA_CSC_dl_for_check.scala 1144:30:@2197.4]
  reg [31:0] _RAND_247;
  reg [7:0] dat_out_bypass_data_30; // @[NV_NVDLA_CSC_dl_for_check.scala 1144:30:@2197.4]
  reg [31:0] _RAND_248;
  reg [7:0] dat_out_bypass_data_31; // @[NV_NVDLA_CSC_dl_for_check.scala 1144:30:@2197.4]
  reg [31:0] _RAND_249;
  reg [7:0] dat_out_bypass_data_32; // @[NV_NVDLA_CSC_dl_for_check.scala 1144:30:@2197.4]
  reg [31:0] _RAND_250;
  reg [7:0] dat_out_bypass_data_33; // @[NV_NVDLA_CSC_dl_for_check.scala 1144:30:@2197.4]
  reg [31:0] _RAND_251;
  reg [7:0] dat_out_bypass_data_34; // @[NV_NVDLA_CSC_dl_for_check.scala 1144:30:@2197.4]
  reg [31:0] _RAND_252;
  reg [7:0] dat_out_bypass_data_35; // @[NV_NVDLA_CSC_dl_for_check.scala 1144:30:@2197.4]
  reg [31:0] _RAND_253;
  reg [7:0] dat_out_bypass_data_36; // @[NV_NVDLA_CSC_dl_for_check.scala 1144:30:@2197.4]
  reg [31:0] _RAND_254;
  reg [7:0] dat_out_bypass_data_37; // @[NV_NVDLA_CSC_dl_for_check.scala 1144:30:@2197.4]
  reg [31:0] _RAND_255;
  reg [7:0] dat_out_bypass_data_38; // @[NV_NVDLA_CSC_dl_for_check.scala 1144:30:@2197.4]
  reg [31:0] _RAND_256;
  reg [7:0] dat_out_bypass_data_39; // @[NV_NVDLA_CSC_dl_for_check.scala 1144:30:@2197.4]
  reg [31:0] _RAND_257;
  reg [7:0] dat_out_bypass_data_40; // @[NV_NVDLA_CSC_dl_for_check.scala 1144:30:@2197.4]
  reg [31:0] _RAND_258;
  reg [7:0] dat_out_bypass_data_41; // @[NV_NVDLA_CSC_dl_for_check.scala 1144:30:@2197.4]
  reg [31:0] _RAND_259;
  reg [7:0] dat_out_bypass_data_42; // @[NV_NVDLA_CSC_dl_for_check.scala 1144:30:@2197.4]
  reg [31:0] _RAND_260;
  reg [7:0] dat_out_bypass_data_43; // @[NV_NVDLA_CSC_dl_for_check.scala 1144:30:@2197.4]
  reg [31:0] _RAND_261;
  reg [7:0] dat_out_bypass_data_44; // @[NV_NVDLA_CSC_dl_for_check.scala 1144:30:@2197.4]
  reg [31:0] _RAND_262;
  reg [7:0] dat_out_bypass_data_45; // @[NV_NVDLA_CSC_dl_for_check.scala 1144:30:@2197.4]
  reg [31:0] _RAND_263;
  reg [7:0] dat_out_bypass_data_46; // @[NV_NVDLA_CSC_dl_for_check.scala 1144:30:@2197.4]
  reg [31:0] _RAND_264;
  reg [7:0] dat_out_bypass_data_47; // @[NV_NVDLA_CSC_dl_for_check.scala 1144:30:@2197.4]
  reg [31:0] _RAND_265;
  reg [7:0] dat_out_bypass_data_48; // @[NV_NVDLA_CSC_dl_for_check.scala 1144:30:@2197.4]
  reg [31:0] _RAND_266;
  reg [7:0] dat_out_bypass_data_49; // @[NV_NVDLA_CSC_dl_for_check.scala 1144:30:@2197.4]
  reg [31:0] _RAND_267;
  reg [7:0] dat_out_bypass_data_50; // @[NV_NVDLA_CSC_dl_for_check.scala 1144:30:@2197.4]
  reg [31:0] _RAND_268;
  reg [7:0] dat_out_bypass_data_51; // @[NV_NVDLA_CSC_dl_for_check.scala 1144:30:@2197.4]
  reg [31:0] _RAND_269;
  reg [7:0] dat_out_bypass_data_52; // @[NV_NVDLA_CSC_dl_for_check.scala 1144:30:@2197.4]
  reg [31:0] _RAND_270;
  reg [7:0] dat_out_bypass_data_53; // @[NV_NVDLA_CSC_dl_for_check.scala 1144:30:@2197.4]
  reg [31:0] _RAND_271;
  reg [7:0] dat_out_bypass_data_54; // @[NV_NVDLA_CSC_dl_for_check.scala 1144:30:@2197.4]
  reg [31:0] _RAND_272;
  reg [7:0] dat_out_bypass_data_55; // @[NV_NVDLA_CSC_dl_for_check.scala 1144:30:@2197.4]
  reg [31:0] _RAND_273;
  reg [7:0] dat_out_bypass_data_56; // @[NV_NVDLA_CSC_dl_for_check.scala 1144:30:@2197.4]
  reg [31:0] _RAND_274;
  reg [7:0] dat_out_bypass_data_57; // @[NV_NVDLA_CSC_dl_for_check.scala 1144:30:@2197.4]
  reg [31:0] _RAND_275;
  reg [7:0] dat_out_bypass_data_58; // @[NV_NVDLA_CSC_dl_for_check.scala 1144:30:@2197.4]
  reg [31:0] _RAND_276;
  reg [7:0] dat_out_bypass_data_59; // @[NV_NVDLA_CSC_dl_for_check.scala 1144:30:@2197.4]
  reg [31:0] _RAND_277;
  reg [7:0] dat_out_bypass_data_60; // @[NV_NVDLA_CSC_dl_for_check.scala 1144:30:@2197.4]
  reg [31:0] _RAND_278;
  reg [7:0] dat_out_bypass_data_61; // @[NV_NVDLA_CSC_dl_for_check.scala 1144:30:@2197.4]
  reg [31:0] _RAND_279;
  reg [7:0] dat_out_bypass_data_62; // @[NV_NVDLA_CSC_dl_for_check.scala 1144:30:@2197.4]
  reg [31:0] _RAND_280;
  reg [7:0] dat_out_bypass_data_63; // @[NV_NVDLA_CSC_dl_for_check.scala 1144:30:@2197.4]
  reg [31:0] _RAND_281;
  wire  _GEN_156; // @[NV_NVDLA_CSC_dl_for_check.scala 1157:30:@2202.4]
  wire  _GEN_157; // @[NV_NVDLA_CSC_dl_for_check.scala 1157:30:@2202.4]
  wire  _GEN_158; // @[NV_NVDLA_CSC_dl_for_check.scala 1157:30:@2202.4]
  wire  _GEN_159; // @[NV_NVDLA_CSC_dl_for_check.scala 1157:30:@2202.4]
  wire  _GEN_160; // @[NV_NVDLA_CSC_dl_for_check.scala 1157:30:@2202.4]
  wire  _GEN_161; // @[NV_NVDLA_CSC_dl_for_check.scala 1157:30:@2202.4]
  wire  _GEN_162; // @[NV_NVDLA_CSC_dl_for_check.scala 1157:30:@2202.4]
  wire  _GEN_163; // @[NV_NVDLA_CSC_dl_for_check.scala 1157:30:@2202.4]
  wire  _GEN_164; // @[NV_NVDLA_CSC_dl_for_check.scala 1157:30:@2202.4]
  wire  _GEN_165; // @[NV_NVDLA_CSC_dl_for_check.scala 1157:30:@2202.4]
  wire  _GEN_166; // @[NV_NVDLA_CSC_dl_for_check.scala 1157:30:@2202.4]
  wire  _GEN_167; // @[NV_NVDLA_CSC_dl_for_check.scala 1157:30:@2202.4]
  wire  _GEN_168; // @[NV_NVDLA_CSC_dl_for_check.scala 1157:30:@2202.4]
  wire  _GEN_169; // @[NV_NVDLA_CSC_dl_for_check.scala 1157:30:@2202.4]
  wire  _GEN_170; // @[NV_NVDLA_CSC_dl_for_check.scala 1157:30:@2202.4]
  wire  _GEN_171; // @[NV_NVDLA_CSC_dl_for_check.scala 1157:30:@2202.4]
  wire  _GEN_172; // @[NV_NVDLA_CSC_dl_for_check.scala 1157:30:@2202.4]
  wire  _GEN_173; // @[NV_NVDLA_CSC_dl_for_check.scala 1157:30:@2202.4]
  wire  _GEN_174; // @[NV_NVDLA_CSC_dl_for_check.scala 1157:30:@2202.4]
  wire  _GEN_175; // @[NV_NVDLA_CSC_dl_for_check.scala 1157:30:@2202.4]
  wire  _GEN_176; // @[NV_NVDLA_CSC_dl_for_check.scala 1157:30:@2202.4]
  wire  _GEN_177; // @[NV_NVDLA_CSC_dl_for_check.scala 1157:30:@2202.4]
  wire  _GEN_178; // @[NV_NVDLA_CSC_dl_for_check.scala 1157:30:@2202.4]
  wire  _GEN_179; // @[NV_NVDLA_CSC_dl_for_check.scala 1157:30:@2202.4]
  wire  _GEN_180; // @[NV_NVDLA_CSC_dl_for_check.scala 1157:30:@2202.4]
  wire  _GEN_181; // @[NV_NVDLA_CSC_dl_for_check.scala 1157:30:@2202.4]
  wire  _GEN_182; // @[NV_NVDLA_CSC_dl_for_check.scala 1157:30:@2202.4]
  wire  _GEN_183; // @[NV_NVDLA_CSC_dl_for_check.scala 1157:30:@2202.4]
  wire  _GEN_184; // @[NV_NVDLA_CSC_dl_for_check.scala 1157:30:@2202.4]
  wire  _GEN_185; // @[NV_NVDLA_CSC_dl_for_check.scala 1157:30:@2202.4]
  wire  _GEN_186; // @[NV_NVDLA_CSC_dl_for_check.scala 1157:30:@2202.4]
  wire  _GEN_187; // @[NV_NVDLA_CSC_dl_for_check.scala 1157:30:@2202.4]
  wire  _GEN_188; // @[NV_NVDLA_CSC_dl_for_check.scala 1157:30:@2202.4]
  wire  _GEN_189; // @[NV_NVDLA_CSC_dl_for_check.scala 1157:30:@2202.4]
  wire  _GEN_190; // @[NV_NVDLA_CSC_dl_for_check.scala 1157:30:@2202.4]
  wire  _GEN_191; // @[NV_NVDLA_CSC_dl_for_check.scala 1157:30:@2202.4]
  wire  _GEN_192; // @[NV_NVDLA_CSC_dl_for_check.scala 1157:30:@2202.4]
  wire  _GEN_193; // @[NV_NVDLA_CSC_dl_for_check.scala 1157:30:@2202.4]
  wire  _GEN_194; // @[NV_NVDLA_CSC_dl_for_check.scala 1157:30:@2202.4]
  wire  _GEN_195; // @[NV_NVDLA_CSC_dl_for_check.scala 1157:30:@2202.4]
  wire  _GEN_196; // @[NV_NVDLA_CSC_dl_for_check.scala 1157:30:@2202.4]
  wire  _GEN_197; // @[NV_NVDLA_CSC_dl_for_check.scala 1157:30:@2202.4]
  wire  _GEN_198; // @[NV_NVDLA_CSC_dl_for_check.scala 1157:30:@2202.4]
  wire  _GEN_199; // @[NV_NVDLA_CSC_dl_for_check.scala 1157:30:@2202.4]
  wire  _GEN_200; // @[NV_NVDLA_CSC_dl_for_check.scala 1157:30:@2202.4]
  wire  _GEN_201; // @[NV_NVDLA_CSC_dl_for_check.scala 1157:30:@2202.4]
  wire  _GEN_202; // @[NV_NVDLA_CSC_dl_for_check.scala 1157:30:@2202.4]
  wire  _GEN_203; // @[NV_NVDLA_CSC_dl_for_check.scala 1157:30:@2202.4]
  wire  _GEN_204; // @[NV_NVDLA_CSC_dl_for_check.scala 1157:30:@2202.4]
  wire  _GEN_205; // @[NV_NVDLA_CSC_dl_for_check.scala 1157:30:@2202.4]
  wire  _GEN_206; // @[NV_NVDLA_CSC_dl_for_check.scala 1157:30:@2202.4]
  wire  _GEN_207; // @[NV_NVDLA_CSC_dl_for_check.scala 1157:30:@2202.4]
  wire  _GEN_208; // @[NV_NVDLA_CSC_dl_for_check.scala 1157:30:@2202.4]
  wire  _GEN_209; // @[NV_NVDLA_CSC_dl_for_check.scala 1157:30:@2202.4]
  wire  _GEN_210; // @[NV_NVDLA_CSC_dl_for_check.scala 1157:30:@2202.4]
  wire  _GEN_211; // @[NV_NVDLA_CSC_dl_for_check.scala 1157:30:@2202.4]
  wire  _GEN_212; // @[NV_NVDLA_CSC_dl_for_check.scala 1157:30:@2202.4]
  wire  _GEN_213; // @[NV_NVDLA_CSC_dl_for_check.scala 1157:30:@2202.4]
  wire  _GEN_214; // @[NV_NVDLA_CSC_dl_for_check.scala 1157:30:@2202.4]
  wire  _GEN_215; // @[NV_NVDLA_CSC_dl_for_check.scala 1157:30:@2202.4]
  wire  _GEN_216; // @[NV_NVDLA_CSC_dl_for_check.scala 1157:30:@2202.4]
  wire  _GEN_217; // @[NV_NVDLA_CSC_dl_for_check.scala 1157:30:@2202.4]
  wire  _GEN_218; // @[NV_NVDLA_CSC_dl_for_check.scala 1157:30:@2202.4]
  wire  _GEN_219; // @[NV_NVDLA_CSC_dl_for_check.scala 1157:30:@2202.4]
  wire  _T_3268; // @[NV_NVDLA_CSC_dl_for_check.scala 1161:34:@2268.4]
  wire  _T_3269; // @[NV_NVDLA_CSC_dl_for_check.scala 1161:34:@2272.4]
  wire  _T_3270; // @[NV_NVDLA_CSC_dl_for_check.scala 1161:34:@2276.4]
  wire  _T_3271; // @[NV_NVDLA_CSC_dl_for_check.scala 1161:34:@2280.4]
  wire  _T_3272; // @[NV_NVDLA_CSC_dl_for_check.scala 1161:34:@2284.4]
  wire  _T_3273; // @[NV_NVDLA_CSC_dl_for_check.scala 1161:34:@2288.4]
  wire  _T_3274; // @[NV_NVDLA_CSC_dl_for_check.scala 1161:34:@2292.4]
  wire  _T_3275; // @[NV_NVDLA_CSC_dl_for_check.scala 1161:34:@2296.4]
  wire  _T_3276; // @[NV_NVDLA_CSC_dl_for_check.scala 1161:34:@2300.4]
  wire  _T_3277; // @[NV_NVDLA_CSC_dl_for_check.scala 1161:34:@2304.4]
  wire  _T_3278; // @[NV_NVDLA_CSC_dl_for_check.scala 1161:34:@2308.4]
  wire  _T_3279; // @[NV_NVDLA_CSC_dl_for_check.scala 1161:34:@2312.4]
  wire  _T_3280; // @[NV_NVDLA_CSC_dl_for_check.scala 1161:34:@2316.4]
  wire  _T_3281; // @[NV_NVDLA_CSC_dl_for_check.scala 1161:34:@2320.4]
  wire  _T_3282; // @[NV_NVDLA_CSC_dl_for_check.scala 1161:34:@2324.4]
  wire  _T_3283; // @[NV_NVDLA_CSC_dl_for_check.scala 1161:34:@2328.4]
  wire  _T_3284; // @[NV_NVDLA_CSC_dl_for_check.scala 1161:34:@2332.4]
  wire  _T_3285; // @[NV_NVDLA_CSC_dl_for_check.scala 1161:34:@2336.4]
  wire  _T_3286; // @[NV_NVDLA_CSC_dl_for_check.scala 1161:34:@2340.4]
  wire  _T_3287; // @[NV_NVDLA_CSC_dl_for_check.scala 1161:34:@2344.4]
  wire  _T_3288; // @[NV_NVDLA_CSC_dl_for_check.scala 1161:34:@2348.4]
  wire  _T_3289; // @[NV_NVDLA_CSC_dl_for_check.scala 1161:34:@2352.4]
  wire  _T_3290; // @[NV_NVDLA_CSC_dl_for_check.scala 1161:34:@2356.4]
  wire  _T_3291; // @[NV_NVDLA_CSC_dl_for_check.scala 1161:34:@2360.4]
  wire  _T_3292; // @[NV_NVDLA_CSC_dl_for_check.scala 1161:34:@2364.4]
  wire  _T_3293; // @[NV_NVDLA_CSC_dl_for_check.scala 1161:34:@2368.4]
  wire  _T_3294; // @[NV_NVDLA_CSC_dl_for_check.scala 1161:34:@2372.4]
  wire  _T_3295; // @[NV_NVDLA_CSC_dl_for_check.scala 1161:34:@2376.4]
  wire  _T_3296; // @[NV_NVDLA_CSC_dl_for_check.scala 1161:34:@2380.4]
  wire  _T_3297; // @[NV_NVDLA_CSC_dl_for_check.scala 1161:34:@2384.4]
  wire  _T_3298; // @[NV_NVDLA_CSC_dl_for_check.scala 1161:34:@2388.4]
  wire  _T_3299; // @[NV_NVDLA_CSC_dl_for_check.scala 1161:34:@2392.4]
  wire  _T_3300; // @[NV_NVDLA_CSC_dl_for_check.scala 1161:34:@2396.4]
  wire  _T_3301; // @[NV_NVDLA_CSC_dl_for_check.scala 1161:34:@2400.4]
  wire  _T_3302; // @[NV_NVDLA_CSC_dl_for_check.scala 1161:34:@2404.4]
  wire  _T_3303; // @[NV_NVDLA_CSC_dl_for_check.scala 1161:34:@2408.4]
  wire  _T_3304; // @[NV_NVDLA_CSC_dl_for_check.scala 1161:34:@2412.4]
  wire  _T_3305; // @[NV_NVDLA_CSC_dl_for_check.scala 1161:34:@2416.4]
  wire  _T_3306; // @[NV_NVDLA_CSC_dl_for_check.scala 1161:34:@2420.4]
  wire  _T_3307; // @[NV_NVDLA_CSC_dl_for_check.scala 1161:34:@2424.4]
  wire  _T_3308; // @[NV_NVDLA_CSC_dl_for_check.scala 1161:34:@2428.4]
  wire  _T_3309; // @[NV_NVDLA_CSC_dl_for_check.scala 1161:34:@2432.4]
  wire  _T_3310; // @[NV_NVDLA_CSC_dl_for_check.scala 1161:34:@2436.4]
  wire  _T_3311; // @[NV_NVDLA_CSC_dl_for_check.scala 1161:34:@2440.4]
  wire  _T_3312; // @[NV_NVDLA_CSC_dl_for_check.scala 1161:34:@2444.4]
  wire  _T_3313; // @[NV_NVDLA_CSC_dl_for_check.scala 1161:34:@2448.4]
  wire  _T_3314; // @[NV_NVDLA_CSC_dl_for_check.scala 1161:34:@2452.4]
  wire  _T_3315; // @[NV_NVDLA_CSC_dl_for_check.scala 1161:34:@2456.4]
  wire  _T_3316; // @[NV_NVDLA_CSC_dl_for_check.scala 1161:34:@2460.4]
  wire  _T_3317; // @[NV_NVDLA_CSC_dl_for_check.scala 1161:34:@2464.4]
  wire  _T_3318; // @[NV_NVDLA_CSC_dl_for_check.scala 1161:34:@2468.4]
  wire  _T_3319; // @[NV_NVDLA_CSC_dl_for_check.scala 1161:34:@2472.4]
  wire  _T_3320; // @[NV_NVDLA_CSC_dl_for_check.scala 1161:34:@2476.4]
  wire  _T_3321; // @[NV_NVDLA_CSC_dl_for_check.scala 1161:34:@2480.4]
  wire  _T_3322; // @[NV_NVDLA_CSC_dl_for_check.scala 1161:34:@2484.4]
  wire  _T_3323; // @[NV_NVDLA_CSC_dl_for_check.scala 1161:34:@2488.4]
  wire  _T_3324; // @[NV_NVDLA_CSC_dl_for_check.scala 1161:34:@2492.4]
  wire  _T_3325; // @[NV_NVDLA_CSC_dl_for_check.scala 1161:34:@2496.4]
  wire  _T_3326; // @[NV_NVDLA_CSC_dl_for_check.scala 1161:34:@2500.4]
  wire  _T_3327; // @[NV_NVDLA_CSC_dl_for_check.scala 1161:34:@2504.4]
  wire  _T_3328; // @[NV_NVDLA_CSC_dl_for_check.scala 1161:34:@2508.4]
  wire  _T_3329; // @[NV_NVDLA_CSC_dl_for_check.scala 1161:34:@2512.4]
  wire  _T_3330; // @[NV_NVDLA_CSC_dl_for_check.scala 1161:34:@2516.4]
  wire  _T_3331; // @[NV_NVDLA_CSC_dl_for_check.scala 1161:34:@2520.4]
  reg  dl_out_pvld; // @[NV_NVDLA_CSC_dl_for_check.scala 1169:26:@2524.4]
  reg [31:0] _RAND_282;
  reg  dl_out_mask_0; // @[NV_NVDLA_CSC_dl_for_check.scala 1170:26:@2590.4]
  reg [31:0] _RAND_283;
  reg  dl_out_mask_1; // @[NV_NVDLA_CSC_dl_for_check.scala 1170:26:@2590.4]
  reg [31:0] _RAND_284;
  reg  dl_out_mask_2; // @[NV_NVDLA_CSC_dl_for_check.scala 1170:26:@2590.4]
  reg [31:0] _RAND_285;
  reg  dl_out_mask_3; // @[NV_NVDLA_CSC_dl_for_check.scala 1170:26:@2590.4]
  reg [31:0] _RAND_286;
  reg  dl_out_mask_4; // @[NV_NVDLA_CSC_dl_for_check.scala 1170:26:@2590.4]
  reg [31:0] _RAND_287;
  reg  dl_out_mask_5; // @[NV_NVDLA_CSC_dl_for_check.scala 1170:26:@2590.4]
  reg [31:0] _RAND_288;
  reg  dl_out_mask_6; // @[NV_NVDLA_CSC_dl_for_check.scala 1170:26:@2590.4]
  reg [31:0] _RAND_289;
  reg  dl_out_mask_7; // @[NV_NVDLA_CSC_dl_for_check.scala 1170:26:@2590.4]
  reg [31:0] _RAND_290;
  reg  dl_out_mask_8; // @[NV_NVDLA_CSC_dl_for_check.scala 1170:26:@2590.4]
  reg [31:0] _RAND_291;
  reg  dl_out_mask_9; // @[NV_NVDLA_CSC_dl_for_check.scala 1170:26:@2590.4]
  reg [31:0] _RAND_292;
  reg  dl_out_mask_10; // @[NV_NVDLA_CSC_dl_for_check.scala 1170:26:@2590.4]
  reg [31:0] _RAND_293;
  reg  dl_out_mask_11; // @[NV_NVDLA_CSC_dl_for_check.scala 1170:26:@2590.4]
  reg [31:0] _RAND_294;
  reg  dl_out_mask_12; // @[NV_NVDLA_CSC_dl_for_check.scala 1170:26:@2590.4]
  reg [31:0] _RAND_295;
  reg  dl_out_mask_13; // @[NV_NVDLA_CSC_dl_for_check.scala 1170:26:@2590.4]
  reg [31:0] _RAND_296;
  reg  dl_out_mask_14; // @[NV_NVDLA_CSC_dl_for_check.scala 1170:26:@2590.4]
  reg [31:0] _RAND_297;
  reg  dl_out_mask_15; // @[NV_NVDLA_CSC_dl_for_check.scala 1170:26:@2590.4]
  reg [31:0] _RAND_298;
  reg  dl_out_mask_16; // @[NV_NVDLA_CSC_dl_for_check.scala 1170:26:@2590.4]
  reg [31:0] _RAND_299;
  reg  dl_out_mask_17; // @[NV_NVDLA_CSC_dl_for_check.scala 1170:26:@2590.4]
  reg [31:0] _RAND_300;
  reg  dl_out_mask_18; // @[NV_NVDLA_CSC_dl_for_check.scala 1170:26:@2590.4]
  reg [31:0] _RAND_301;
  reg  dl_out_mask_19; // @[NV_NVDLA_CSC_dl_for_check.scala 1170:26:@2590.4]
  reg [31:0] _RAND_302;
  reg  dl_out_mask_20; // @[NV_NVDLA_CSC_dl_for_check.scala 1170:26:@2590.4]
  reg [31:0] _RAND_303;
  reg  dl_out_mask_21; // @[NV_NVDLA_CSC_dl_for_check.scala 1170:26:@2590.4]
  reg [31:0] _RAND_304;
  reg  dl_out_mask_22; // @[NV_NVDLA_CSC_dl_for_check.scala 1170:26:@2590.4]
  reg [31:0] _RAND_305;
  reg  dl_out_mask_23; // @[NV_NVDLA_CSC_dl_for_check.scala 1170:26:@2590.4]
  reg [31:0] _RAND_306;
  reg  dl_out_mask_24; // @[NV_NVDLA_CSC_dl_for_check.scala 1170:26:@2590.4]
  reg [31:0] _RAND_307;
  reg  dl_out_mask_25; // @[NV_NVDLA_CSC_dl_for_check.scala 1170:26:@2590.4]
  reg [31:0] _RAND_308;
  reg  dl_out_mask_26; // @[NV_NVDLA_CSC_dl_for_check.scala 1170:26:@2590.4]
  reg [31:0] _RAND_309;
  reg  dl_out_mask_27; // @[NV_NVDLA_CSC_dl_for_check.scala 1170:26:@2590.4]
  reg [31:0] _RAND_310;
  reg  dl_out_mask_28; // @[NV_NVDLA_CSC_dl_for_check.scala 1170:26:@2590.4]
  reg [31:0] _RAND_311;
  reg  dl_out_mask_29; // @[NV_NVDLA_CSC_dl_for_check.scala 1170:26:@2590.4]
  reg [31:0] _RAND_312;
  reg  dl_out_mask_30; // @[NV_NVDLA_CSC_dl_for_check.scala 1170:26:@2590.4]
  reg [31:0] _RAND_313;
  reg  dl_out_mask_31; // @[NV_NVDLA_CSC_dl_for_check.scala 1170:26:@2590.4]
  reg [31:0] _RAND_314;
  reg  dl_out_mask_32; // @[NV_NVDLA_CSC_dl_for_check.scala 1170:26:@2590.4]
  reg [31:0] _RAND_315;
  reg  dl_out_mask_33; // @[NV_NVDLA_CSC_dl_for_check.scala 1170:26:@2590.4]
  reg [31:0] _RAND_316;
  reg  dl_out_mask_34; // @[NV_NVDLA_CSC_dl_for_check.scala 1170:26:@2590.4]
  reg [31:0] _RAND_317;
  reg  dl_out_mask_35; // @[NV_NVDLA_CSC_dl_for_check.scala 1170:26:@2590.4]
  reg [31:0] _RAND_318;
  reg  dl_out_mask_36; // @[NV_NVDLA_CSC_dl_for_check.scala 1170:26:@2590.4]
  reg [31:0] _RAND_319;
  reg  dl_out_mask_37; // @[NV_NVDLA_CSC_dl_for_check.scala 1170:26:@2590.4]
  reg [31:0] _RAND_320;
  reg  dl_out_mask_38; // @[NV_NVDLA_CSC_dl_for_check.scala 1170:26:@2590.4]
  reg [31:0] _RAND_321;
  reg  dl_out_mask_39; // @[NV_NVDLA_CSC_dl_for_check.scala 1170:26:@2590.4]
  reg [31:0] _RAND_322;
  reg  dl_out_mask_40; // @[NV_NVDLA_CSC_dl_for_check.scala 1170:26:@2590.4]
  reg [31:0] _RAND_323;
  reg  dl_out_mask_41; // @[NV_NVDLA_CSC_dl_for_check.scala 1170:26:@2590.4]
  reg [31:0] _RAND_324;
  reg  dl_out_mask_42; // @[NV_NVDLA_CSC_dl_for_check.scala 1170:26:@2590.4]
  reg [31:0] _RAND_325;
  reg  dl_out_mask_43; // @[NV_NVDLA_CSC_dl_for_check.scala 1170:26:@2590.4]
  reg [31:0] _RAND_326;
  reg  dl_out_mask_44; // @[NV_NVDLA_CSC_dl_for_check.scala 1170:26:@2590.4]
  reg [31:0] _RAND_327;
  reg  dl_out_mask_45; // @[NV_NVDLA_CSC_dl_for_check.scala 1170:26:@2590.4]
  reg [31:0] _RAND_328;
  reg  dl_out_mask_46; // @[NV_NVDLA_CSC_dl_for_check.scala 1170:26:@2590.4]
  reg [31:0] _RAND_329;
  reg  dl_out_mask_47; // @[NV_NVDLA_CSC_dl_for_check.scala 1170:26:@2590.4]
  reg [31:0] _RAND_330;
  reg  dl_out_mask_48; // @[NV_NVDLA_CSC_dl_for_check.scala 1170:26:@2590.4]
  reg [31:0] _RAND_331;
  reg  dl_out_mask_49; // @[NV_NVDLA_CSC_dl_for_check.scala 1170:26:@2590.4]
  reg [31:0] _RAND_332;
  reg  dl_out_mask_50; // @[NV_NVDLA_CSC_dl_for_check.scala 1170:26:@2590.4]
  reg [31:0] _RAND_333;
  reg  dl_out_mask_51; // @[NV_NVDLA_CSC_dl_for_check.scala 1170:26:@2590.4]
  reg [31:0] _RAND_334;
  reg  dl_out_mask_52; // @[NV_NVDLA_CSC_dl_for_check.scala 1170:26:@2590.4]
  reg [31:0] _RAND_335;
  reg  dl_out_mask_53; // @[NV_NVDLA_CSC_dl_for_check.scala 1170:26:@2590.4]
  reg [31:0] _RAND_336;
  reg  dl_out_mask_54; // @[NV_NVDLA_CSC_dl_for_check.scala 1170:26:@2590.4]
  reg [31:0] _RAND_337;
  reg  dl_out_mask_55; // @[NV_NVDLA_CSC_dl_for_check.scala 1170:26:@2590.4]
  reg [31:0] _RAND_338;
  reg  dl_out_mask_56; // @[NV_NVDLA_CSC_dl_for_check.scala 1170:26:@2590.4]
  reg [31:0] _RAND_339;
  reg  dl_out_mask_57; // @[NV_NVDLA_CSC_dl_for_check.scala 1170:26:@2590.4]
  reg [31:0] _RAND_340;
  reg  dl_out_mask_58; // @[NV_NVDLA_CSC_dl_for_check.scala 1170:26:@2590.4]
  reg [31:0] _RAND_341;
  reg  dl_out_mask_59; // @[NV_NVDLA_CSC_dl_for_check.scala 1170:26:@2590.4]
  reg [31:0] _RAND_342;
  reg  dl_out_mask_60; // @[NV_NVDLA_CSC_dl_for_check.scala 1170:26:@2590.4]
  reg [31:0] _RAND_343;
  reg  dl_out_mask_61; // @[NV_NVDLA_CSC_dl_for_check.scala 1170:26:@2590.4]
  reg [31:0] _RAND_344;
  reg  dl_out_mask_62; // @[NV_NVDLA_CSC_dl_for_check.scala 1170:26:@2590.4]
  reg [31:0] _RAND_345;
  reg  dl_out_mask_63; // @[NV_NVDLA_CSC_dl_for_check.scala 1170:26:@2590.4]
  reg [31:0] _RAND_346;
  reg [8:0] dl_out_flag; // @[NV_NVDLA_CSC_dl_for_check.scala 1171:26:@2591.4]
  reg [31:0] _RAND_347;
  reg [7:0] dl_out_data_0; // @[NV_NVDLA_CSC_dl_for_check.scala 1172:22:@2592.4]
  reg [31:0] _RAND_348;
  reg [7:0] dl_out_data_1; // @[NV_NVDLA_CSC_dl_for_check.scala 1172:22:@2592.4]
  reg [31:0] _RAND_349;
  reg [7:0] dl_out_data_2; // @[NV_NVDLA_CSC_dl_for_check.scala 1172:22:@2592.4]
  reg [31:0] _RAND_350;
  reg [7:0] dl_out_data_3; // @[NV_NVDLA_CSC_dl_for_check.scala 1172:22:@2592.4]
  reg [31:0] _RAND_351;
  reg [7:0] dl_out_data_4; // @[NV_NVDLA_CSC_dl_for_check.scala 1172:22:@2592.4]
  reg [31:0] _RAND_352;
  reg [7:0] dl_out_data_5; // @[NV_NVDLA_CSC_dl_for_check.scala 1172:22:@2592.4]
  reg [31:0] _RAND_353;
  reg [7:0] dl_out_data_6; // @[NV_NVDLA_CSC_dl_for_check.scala 1172:22:@2592.4]
  reg [31:0] _RAND_354;
  reg [7:0] dl_out_data_7; // @[NV_NVDLA_CSC_dl_for_check.scala 1172:22:@2592.4]
  reg [31:0] _RAND_355;
  reg [7:0] dl_out_data_8; // @[NV_NVDLA_CSC_dl_for_check.scala 1172:22:@2592.4]
  reg [31:0] _RAND_356;
  reg [7:0] dl_out_data_9; // @[NV_NVDLA_CSC_dl_for_check.scala 1172:22:@2592.4]
  reg [31:0] _RAND_357;
  reg [7:0] dl_out_data_10; // @[NV_NVDLA_CSC_dl_for_check.scala 1172:22:@2592.4]
  reg [31:0] _RAND_358;
  reg [7:0] dl_out_data_11; // @[NV_NVDLA_CSC_dl_for_check.scala 1172:22:@2592.4]
  reg [31:0] _RAND_359;
  reg [7:0] dl_out_data_12; // @[NV_NVDLA_CSC_dl_for_check.scala 1172:22:@2592.4]
  reg [31:0] _RAND_360;
  reg [7:0] dl_out_data_13; // @[NV_NVDLA_CSC_dl_for_check.scala 1172:22:@2592.4]
  reg [31:0] _RAND_361;
  reg [7:0] dl_out_data_14; // @[NV_NVDLA_CSC_dl_for_check.scala 1172:22:@2592.4]
  reg [31:0] _RAND_362;
  reg [7:0] dl_out_data_15; // @[NV_NVDLA_CSC_dl_for_check.scala 1172:22:@2592.4]
  reg [31:0] _RAND_363;
  reg [7:0] dl_out_data_16; // @[NV_NVDLA_CSC_dl_for_check.scala 1172:22:@2592.4]
  reg [31:0] _RAND_364;
  reg [7:0] dl_out_data_17; // @[NV_NVDLA_CSC_dl_for_check.scala 1172:22:@2592.4]
  reg [31:0] _RAND_365;
  reg [7:0] dl_out_data_18; // @[NV_NVDLA_CSC_dl_for_check.scala 1172:22:@2592.4]
  reg [31:0] _RAND_366;
  reg [7:0] dl_out_data_19; // @[NV_NVDLA_CSC_dl_for_check.scala 1172:22:@2592.4]
  reg [31:0] _RAND_367;
  reg [7:0] dl_out_data_20; // @[NV_NVDLA_CSC_dl_for_check.scala 1172:22:@2592.4]
  reg [31:0] _RAND_368;
  reg [7:0] dl_out_data_21; // @[NV_NVDLA_CSC_dl_for_check.scala 1172:22:@2592.4]
  reg [31:0] _RAND_369;
  reg [7:0] dl_out_data_22; // @[NV_NVDLA_CSC_dl_for_check.scala 1172:22:@2592.4]
  reg [31:0] _RAND_370;
  reg [7:0] dl_out_data_23; // @[NV_NVDLA_CSC_dl_for_check.scala 1172:22:@2592.4]
  reg [31:0] _RAND_371;
  reg [7:0] dl_out_data_24; // @[NV_NVDLA_CSC_dl_for_check.scala 1172:22:@2592.4]
  reg [31:0] _RAND_372;
  reg [7:0] dl_out_data_25; // @[NV_NVDLA_CSC_dl_for_check.scala 1172:22:@2592.4]
  reg [31:0] _RAND_373;
  reg [7:0] dl_out_data_26; // @[NV_NVDLA_CSC_dl_for_check.scala 1172:22:@2592.4]
  reg [31:0] _RAND_374;
  reg [7:0] dl_out_data_27; // @[NV_NVDLA_CSC_dl_for_check.scala 1172:22:@2592.4]
  reg [31:0] _RAND_375;
  reg [7:0] dl_out_data_28; // @[NV_NVDLA_CSC_dl_for_check.scala 1172:22:@2592.4]
  reg [31:0] _RAND_376;
  reg [7:0] dl_out_data_29; // @[NV_NVDLA_CSC_dl_for_check.scala 1172:22:@2592.4]
  reg [31:0] _RAND_377;
  reg [7:0] dl_out_data_30; // @[NV_NVDLA_CSC_dl_for_check.scala 1172:22:@2592.4]
  reg [31:0] _RAND_378;
  reg [7:0] dl_out_data_31; // @[NV_NVDLA_CSC_dl_for_check.scala 1172:22:@2592.4]
  reg [31:0] _RAND_379;
  reg [7:0] dl_out_data_32; // @[NV_NVDLA_CSC_dl_for_check.scala 1172:22:@2592.4]
  reg [31:0] _RAND_380;
  reg [7:0] dl_out_data_33; // @[NV_NVDLA_CSC_dl_for_check.scala 1172:22:@2592.4]
  reg [31:0] _RAND_381;
  reg [7:0] dl_out_data_34; // @[NV_NVDLA_CSC_dl_for_check.scala 1172:22:@2592.4]
  reg [31:0] _RAND_382;
  reg [7:0] dl_out_data_35; // @[NV_NVDLA_CSC_dl_for_check.scala 1172:22:@2592.4]
  reg [31:0] _RAND_383;
  reg [7:0] dl_out_data_36; // @[NV_NVDLA_CSC_dl_for_check.scala 1172:22:@2592.4]
  reg [31:0] _RAND_384;
  reg [7:0] dl_out_data_37; // @[NV_NVDLA_CSC_dl_for_check.scala 1172:22:@2592.4]
  reg [31:0] _RAND_385;
  reg [7:0] dl_out_data_38; // @[NV_NVDLA_CSC_dl_for_check.scala 1172:22:@2592.4]
  reg [31:0] _RAND_386;
  reg [7:0] dl_out_data_39; // @[NV_NVDLA_CSC_dl_for_check.scala 1172:22:@2592.4]
  reg [31:0] _RAND_387;
  reg [7:0] dl_out_data_40; // @[NV_NVDLA_CSC_dl_for_check.scala 1172:22:@2592.4]
  reg [31:0] _RAND_388;
  reg [7:0] dl_out_data_41; // @[NV_NVDLA_CSC_dl_for_check.scala 1172:22:@2592.4]
  reg [31:0] _RAND_389;
  reg [7:0] dl_out_data_42; // @[NV_NVDLA_CSC_dl_for_check.scala 1172:22:@2592.4]
  reg [31:0] _RAND_390;
  reg [7:0] dl_out_data_43; // @[NV_NVDLA_CSC_dl_for_check.scala 1172:22:@2592.4]
  reg [31:0] _RAND_391;
  reg [7:0] dl_out_data_44; // @[NV_NVDLA_CSC_dl_for_check.scala 1172:22:@2592.4]
  reg [31:0] _RAND_392;
  reg [7:0] dl_out_data_45; // @[NV_NVDLA_CSC_dl_for_check.scala 1172:22:@2592.4]
  reg [31:0] _RAND_393;
  reg [7:0] dl_out_data_46; // @[NV_NVDLA_CSC_dl_for_check.scala 1172:22:@2592.4]
  reg [31:0] _RAND_394;
  reg [7:0] dl_out_data_47; // @[NV_NVDLA_CSC_dl_for_check.scala 1172:22:@2592.4]
  reg [31:0] _RAND_395;
  reg [7:0] dl_out_data_48; // @[NV_NVDLA_CSC_dl_for_check.scala 1172:22:@2592.4]
  reg [31:0] _RAND_396;
  reg [7:0] dl_out_data_49; // @[NV_NVDLA_CSC_dl_for_check.scala 1172:22:@2592.4]
  reg [31:0] _RAND_397;
  reg [7:0] dl_out_data_50; // @[NV_NVDLA_CSC_dl_for_check.scala 1172:22:@2592.4]
  reg [31:0] _RAND_398;
  reg [7:0] dl_out_data_51; // @[NV_NVDLA_CSC_dl_for_check.scala 1172:22:@2592.4]
  reg [31:0] _RAND_399;
  reg [7:0] dl_out_data_52; // @[NV_NVDLA_CSC_dl_for_check.scala 1172:22:@2592.4]
  reg [31:0] _RAND_400;
  reg [7:0] dl_out_data_53; // @[NV_NVDLA_CSC_dl_for_check.scala 1172:22:@2592.4]
  reg [31:0] _RAND_401;
  reg [7:0] dl_out_data_54; // @[NV_NVDLA_CSC_dl_for_check.scala 1172:22:@2592.4]
  reg [31:0] _RAND_402;
  reg [7:0] dl_out_data_55; // @[NV_NVDLA_CSC_dl_for_check.scala 1172:22:@2592.4]
  reg [31:0] _RAND_403;
  reg [7:0] dl_out_data_56; // @[NV_NVDLA_CSC_dl_for_check.scala 1172:22:@2592.4]
  reg [31:0] _RAND_404;
  reg [7:0] dl_out_data_57; // @[NV_NVDLA_CSC_dl_for_check.scala 1172:22:@2592.4]
  reg [31:0] _RAND_405;
  reg [7:0] dl_out_data_58; // @[NV_NVDLA_CSC_dl_for_check.scala 1172:22:@2592.4]
  reg [31:0] _RAND_406;
  reg [7:0] dl_out_data_59; // @[NV_NVDLA_CSC_dl_for_check.scala 1172:22:@2592.4]
  reg [31:0] _RAND_407;
  reg [7:0] dl_out_data_60; // @[NV_NVDLA_CSC_dl_for_check.scala 1172:22:@2592.4]
  reg [31:0] _RAND_408;
  reg [7:0] dl_out_data_61; // @[NV_NVDLA_CSC_dl_for_check.scala 1172:22:@2592.4]
  reg [31:0] _RAND_409;
  reg [7:0] dl_out_data_62; // @[NV_NVDLA_CSC_dl_for_check.scala 1172:22:@2592.4]
  reg [31:0] _RAND_410;
  reg [7:0] dl_out_data_63; // @[NV_NVDLA_CSC_dl_for_check.scala 1172:22:@2592.4]
  reg [31:0] _RAND_411;
  wire  _T_3867; // @[NV_NVDLA_CSC_dl_for_check.scala 1175:24:@2593.4]
  wire  dat_out_mask_0; // @[NV_NVDLA_CSC_dl_for_check.scala 1175:23:@2659.4]
  wire  dat_out_mask_1; // @[NV_NVDLA_CSC_dl_for_check.scala 1175:23:@2659.4]
  wire  dat_out_mask_2; // @[NV_NVDLA_CSC_dl_for_check.scala 1175:23:@2659.4]
  wire  dat_out_mask_3; // @[NV_NVDLA_CSC_dl_for_check.scala 1175:23:@2659.4]
  wire  dat_out_mask_4; // @[NV_NVDLA_CSC_dl_for_check.scala 1175:23:@2659.4]
  wire  dat_out_mask_5; // @[NV_NVDLA_CSC_dl_for_check.scala 1175:23:@2659.4]
  wire  dat_out_mask_6; // @[NV_NVDLA_CSC_dl_for_check.scala 1175:23:@2659.4]
  wire  dat_out_mask_7; // @[NV_NVDLA_CSC_dl_for_check.scala 1175:23:@2659.4]
  wire  dat_out_mask_8; // @[NV_NVDLA_CSC_dl_for_check.scala 1175:23:@2659.4]
  wire  dat_out_mask_9; // @[NV_NVDLA_CSC_dl_for_check.scala 1175:23:@2659.4]
  wire  dat_out_mask_10; // @[NV_NVDLA_CSC_dl_for_check.scala 1175:23:@2659.4]
  wire  dat_out_mask_11; // @[NV_NVDLA_CSC_dl_for_check.scala 1175:23:@2659.4]
  wire  dat_out_mask_12; // @[NV_NVDLA_CSC_dl_for_check.scala 1175:23:@2659.4]
  wire  dat_out_mask_13; // @[NV_NVDLA_CSC_dl_for_check.scala 1175:23:@2659.4]
  wire  dat_out_mask_14; // @[NV_NVDLA_CSC_dl_for_check.scala 1175:23:@2659.4]
  wire  dat_out_mask_15; // @[NV_NVDLA_CSC_dl_for_check.scala 1175:23:@2659.4]
  wire  dat_out_mask_16; // @[NV_NVDLA_CSC_dl_for_check.scala 1175:23:@2659.4]
  wire  dat_out_mask_17; // @[NV_NVDLA_CSC_dl_for_check.scala 1175:23:@2659.4]
  wire  dat_out_mask_18; // @[NV_NVDLA_CSC_dl_for_check.scala 1175:23:@2659.4]
  wire  dat_out_mask_19; // @[NV_NVDLA_CSC_dl_for_check.scala 1175:23:@2659.4]
  wire  dat_out_mask_20; // @[NV_NVDLA_CSC_dl_for_check.scala 1175:23:@2659.4]
  wire  dat_out_mask_21; // @[NV_NVDLA_CSC_dl_for_check.scala 1175:23:@2659.4]
  wire  dat_out_mask_22; // @[NV_NVDLA_CSC_dl_for_check.scala 1175:23:@2659.4]
  wire  dat_out_mask_23; // @[NV_NVDLA_CSC_dl_for_check.scala 1175:23:@2659.4]
  wire  dat_out_mask_24; // @[NV_NVDLA_CSC_dl_for_check.scala 1175:23:@2659.4]
  wire  dat_out_mask_25; // @[NV_NVDLA_CSC_dl_for_check.scala 1175:23:@2659.4]
  wire  dat_out_mask_26; // @[NV_NVDLA_CSC_dl_for_check.scala 1175:23:@2659.4]
  wire  dat_out_mask_27; // @[NV_NVDLA_CSC_dl_for_check.scala 1175:23:@2659.4]
  wire  dat_out_mask_28; // @[NV_NVDLA_CSC_dl_for_check.scala 1175:23:@2659.4]
  wire  dat_out_mask_29; // @[NV_NVDLA_CSC_dl_for_check.scala 1175:23:@2659.4]
  wire  dat_out_mask_30; // @[NV_NVDLA_CSC_dl_for_check.scala 1175:23:@2659.4]
  wire  dat_out_mask_31; // @[NV_NVDLA_CSC_dl_for_check.scala 1175:23:@2659.4]
  wire  dat_out_mask_32; // @[NV_NVDLA_CSC_dl_for_check.scala 1175:23:@2659.4]
  wire  dat_out_mask_33; // @[NV_NVDLA_CSC_dl_for_check.scala 1175:23:@2659.4]
  wire  dat_out_mask_34; // @[NV_NVDLA_CSC_dl_for_check.scala 1175:23:@2659.4]
  wire  dat_out_mask_35; // @[NV_NVDLA_CSC_dl_for_check.scala 1175:23:@2659.4]
  wire  dat_out_mask_36; // @[NV_NVDLA_CSC_dl_for_check.scala 1175:23:@2659.4]
  wire  dat_out_mask_37; // @[NV_NVDLA_CSC_dl_for_check.scala 1175:23:@2659.4]
  wire  dat_out_mask_38; // @[NV_NVDLA_CSC_dl_for_check.scala 1175:23:@2659.4]
  wire  dat_out_mask_39; // @[NV_NVDLA_CSC_dl_for_check.scala 1175:23:@2659.4]
  wire  dat_out_mask_40; // @[NV_NVDLA_CSC_dl_for_check.scala 1175:23:@2659.4]
  wire  dat_out_mask_41; // @[NV_NVDLA_CSC_dl_for_check.scala 1175:23:@2659.4]
  wire  dat_out_mask_42; // @[NV_NVDLA_CSC_dl_for_check.scala 1175:23:@2659.4]
  wire  dat_out_mask_43; // @[NV_NVDLA_CSC_dl_for_check.scala 1175:23:@2659.4]
  wire  dat_out_mask_44; // @[NV_NVDLA_CSC_dl_for_check.scala 1175:23:@2659.4]
  wire  dat_out_mask_45; // @[NV_NVDLA_CSC_dl_for_check.scala 1175:23:@2659.4]
  wire  dat_out_mask_46; // @[NV_NVDLA_CSC_dl_for_check.scala 1175:23:@2659.4]
  wire  dat_out_mask_47; // @[NV_NVDLA_CSC_dl_for_check.scala 1175:23:@2659.4]
  wire  dat_out_mask_48; // @[NV_NVDLA_CSC_dl_for_check.scala 1175:23:@2659.4]
  wire  dat_out_mask_49; // @[NV_NVDLA_CSC_dl_for_check.scala 1175:23:@2659.4]
  wire  dat_out_mask_50; // @[NV_NVDLA_CSC_dl_for_check.scala 1175:23:@2659.4]
  wire  dat_out_mask_51; // @[NV_NVDLA_CSC_dl_for_check.scala 1175:23:@2659.4]
  wire  dat_out_mask_52; // @[NV_NVDLA_CSC_dl_for_check.scala 1175:23:@2659.4]
  wire  dat_out_mask_53; // @[NV_NVDLA_CSC_dl_for_check.scala 1175:23:@2659.4]
  wire  dat_out_mask_54; // @[NV_NVDLA_CSC_dl_for_check.scala 1175:23:@2659.4]
  wire  dat_out_mask_55; // @[NV_NVDLA_CSC_dl_for_check.scala 1175:23:@2659.4]
  wire  dat_out_mask_56; // @[NV_NVDLA_CSC_dl_for_check.scala 1175:23:@2659.4]
  wire  dat_out_mask_57; // @[NV_NVDLA_CSC_dl_for_check.scala 1175:23:@2659.4]
  wire  dat_out_mask_58; // @[NV_NVDLA_CSC_dl_for_check.scala 1175:23:@2659.4]
  wire  dat_out_mask_59; // @[NV_NVDLA_CSC_dl_for_check.scala 1175:23:@2659.4]
  wire  dat_out_mask_60; // @[NV_NVDLA_CSC_dl_for_check.scala 1175:23:@2659.4]
  wire  dat_out_mask_61; // @[NV_NVDLA_CSC_dl_for_check.scala 1175:23:@2659.4]
  wire  dat_out_mask_62; // @[NV_NVDLA_CSC_dl_for_check.scala 1175:23:@2659.4]
  wire  dat_out_mask_63; // @[NV_NVDLA_CSC_dl_for_check.scala 1175:23:@2659.4]
  wire  _T_4133; // @[NV_NVDLA_CSC_dl_for_check.scala 1179:19:@2661.4]
  wire  _GEN_284; // @[NV_NVDLA_CSC_dl_for_check.scala 1179:33:@2662.4]
  wire  _GEN_285; // @[NV_NVDLA_CSC_dl_for_check.scala 1179:33:@2662.4]
  wire  _GEN_286; // @[NV_NVDLA_CSC_dl_for_check.scala 1179:33:@2662.4]
  wire  _GEN_287; // @[NV_NVDLA_CSC_dl_for_check.scala 1179:33:@2662.4]
  wire  _GEN_288; // @[NV_NVDLA_CSC_dl_for_check.scala 1179:33:@2662.4]
  wire  _GEN_289; // @[NV_NVDLA_CSC_dl_for_check.scala 1179:33:@2662.4]
  wire  _GEN_290; // @[NV_NVDLA_CSC_dl_for_check.scala 1179:33:@2662.4]
  wire  _GEN_291; // @[NV_NVDLA_CSC_dl_for_check.scala 1179:33:@2662.4]
  wire  _GEN_292; // @[NV_NVDLA_CSC_dl_for_check.scala 1179:33:@2662.4]
  wire  _GEN_293; // @[NV_NVDLA_CSC_dl_for_check.scala 1179:33:@2662.4]
  wire  _GEN_294; // @[NV_NVDLA_CSC_dl_for_check.scala 1179:33:@2662.4]
  wire  _GEN_295; // @[NV_NVDLA_CSC_dl_for_check.scala 1179:33:@2662.4]
  wire  _GEN_296; // @[NV_NVDLA_CSC_dl_for_check.scala 1179:33:@2662.4]
  wire  _GEN_297; // @[NV_NVDLA_CSC_dl_for_check.scala 1179:33:@2662.4]
  wire  _GEN_298; // @[NV_NVDLA_CSC_dl_for_check.scala 1179:33:@2662.4]
  wire  _GEN_299; // @[NV_NVDLA_CSC_dl_for_check.scala 1179:33:@2662.4]
  wire  _GEN_300; // @[NV_NVDLA_CSC_dl_for_check.scala 1179:33:@2662.4]
  wire  _GEN_301; // @[NV_NVDLA_CSC_dl_for_check.scala 1179:33:@2662.4]
  wire  _GEN_302; // @[NV_NVDLA_CSC_dl_for_check.scala 1179:33:@2662.4]
  wire  _GEN_303; // @[NV_NVDLA_CSC_dl_for_check.scala 1179:33:@2662.4]
  wire  _GEN_304; // @[NV_NVDLA_CSC_dl_for_check.scala 1179:33:@2662.4]
  wire  _GEN_305; // @[NV_NVDLA_CSC_dl_for_check.scala 1179:33:@2662.4]
  wire  _GEN_306; // @[NV_NVDLA_CSC_dl_for_check.scala 1179:33:@2662.4]
  wire  _GEN_307; // @[NV_NVDLA_CSC_dl_for_check.scala 1179:33:@2662.4]
  wire  _GEN_308; // @[NV_NVDLA_CSC_dl_for_check.scala 1179:33:@2662.4]
  wire  _GEN_309; // @[NV_NVDLA_CSC_dl_for_check.scala 1179:33:@2662.4]
  wire  _GEN_310; // @[NV_NVDLA_CSC_dl_for_check.scala 1179:33:@2662.4]
  wire  _GEN_311; // @[NV_NVDLA_CSC_dl_for_check.scala 1179:33:@2662.4]
  wire  _GEN_312; // @[NV_NVDLA_CSC_dl_for_check.scala 1179:33:@2662.4]
  wire  _GEN_313; // @[NV_NVDLA_CSC_dl_for_check.scala 1179:33:@2662.4]
  wire  _GEN_314; // @[NV_NVDLA_CSC_dl_for_check.scala 1179:33:@2662.4]
  wire  _GEN_315; // @[NV_NVDLA_CSC_dl_for_check.scala 1179:33:@2662.4]
  wire  _GEN_316; // @[NV_NVDLA_CSC_dl_for_check.scala 1179:33:@2662.4]
  wire  _GEN_317; // @[NV_NVDLA_CSC_dl_for_check.scala 1179:33:@2662.4]
  wire  _GEN_318; // @[NV_NVDLA_CSC_dl_for_check.scala 1179:33:@2662.4]
  wire  _GEN_319; // @[NV_NVDLA_CSC_dl_for_check.scala 1179:33:@2662.4]
  wire  _GEN_320; // @[NV_NVDLA_CSC_dl_for_check.scala 1179:33:@2662.4]
  wire  _GEN_321; // @[NV_NVDLA_CSC_dl_for_check.scala 1179:33:@2662.4]
  wire  _GEN_322; // @[NV_NVDLA_CSC_dl_for_check.scala 1179:33:@2662.4]
  wire  _GEN_323; // @[NV_NVDLA_CSC_dl_for_check.scala 1179:33:@2662.4]
  wire  _GEN_324; // @[NV_NVDLA_CSC_dl_for_check.scala 1179:33:@2662.4]
  wire  _GEN_325; // @[NV_NVDLA_CSC_dl_for_check.scala 1179:33:@2662.4]
  wire  _GEN_326; // @[NV_NVDLA_CSC_dl_for_check.scala 1179:33:@2662.4]
  wire  _GEN_327; // @[NV_NVDLA_CSC_dl_for_check.scala 1179:33:@2662.4]
  wire  _GEN_328; // @[NV_NVDLA_CSC_dl_for_check.scala 1179:33:@2662.4]
  wire  _GEN_329; // @[NV_NVDLA_CSC_dl_for_check.scala 1179:33:@2662.4]
  wire  _GEN_330; // @[NV_NVDLA_CSC_dl_for_check.scala 1179:33:@2662.4]
  wire  _GEN_331; // @[NV_NVDLA_CSC_dl_for_check.scala 1179:33:@2662.4]
  wire  _GEN_332; // @[NV_NVDLA_CSC_dl_for_check.scala 1179:33:@2662.4]
  wire  _GEN_333; // @[NV_NVDLA_CSC_dl_for_check.scala 1179:33:@2662.4]
  wire  _GEN_334; // @[NV_NVDLA_CSC_dl_for_check.scala 1179:33:@2662.4]
  wire  _GEN_335; // @[NV_NVDLA_CSC_dl_for_check.scala 1179:33:@2662.4]
  wire  _GEN_336; // @[NV_NVDLA_CSC_dl_for_check.scala 1179:33:@2662.4]
  wire  _GEN_337; // @[NV_NVDLA_CSC_dl_for_check.scala 1179:33:@2662.4]
  wire  _GEN_338; // @[NV_NVDLA_CSC_dl_for_check.scala 1179:33:@2662.4]
  wire  _GEN_339; // @[NV_NVDLA_CSC_dl_for_check.scala 1179:33:@2662.4]
  wire  _GEN_340; // @[NV_NVDLA_CSC_dl_for_check.scala 1179:33:@2662.4]
  wire  _GEN_341; // @[NV_NVDLA_CSC_dl_for_check.scala 1179:33:@2662.4]
  wire  _GEN_342; // @[NV_NVDLA_CSC_dl_for_check.scala 1179:33:@2662.4]
  wire  _GEN_343; // @[NV_NVDLA_CSC_dl_for_check.scala 1179:33:@2662.4]
  wire  _GEN_344; // @[NV_NVDLA_CSC_dl_for_check.scala 1179:33:@2662.4]
  wire  _GEN_345; // @[NV_NVDLA_CSC_dl_for_check.scala 1179:33:@2662.4]
  wire  _GEN_346; // @[NV_NVDLA_CSC_dl_for_check.scala 1179:33:@2662.4]
  wire  _GEN_347; // @[NV_NVDLA_CSC_dl_for_check.scala 1179:33:@2662.4]
  wire [8:0] _GEN_348; // @[NV_NVDLA_CSC_dl_for_check.scala 1182:19:@2728.4]
  reg  dl_out_pvld_d1; // @[NV_NVDLA_CSC_dl_for_check.scala 1195:29:@2923.4]
  reg [31:0] _RAND_412;
  wire  _T_4136; // @[NV_NVDLA_CSC_dl_for_check.scala 1196:27:@2925.4]
  wire [8:0] sc2mac_dat_pd_w; // @[NV_NVDLA_CSC_dl_for_check.scala 1196:26:@2926.4]
  reg  _T_4140; // @[NV_NVDLA_CSC_dl_for_check.scala 1198:33:@2927.4]
  reg [31:0] _RAND_413;
  reg  _T_4143; // @[NV_NVDLA_CSC_dl_for_check.scala 1199:33:@2930.4]
  reg [31:0] _RAND_414;
  wire  _T_4145; // @[NV_NVDLA_CSC_dl_for_check.scala 1200:85:@2933.4]
  reg [8:0] _T_4147; // @[Reg.scala 19:20:@2934.4]
  reg [31:0] _RAND_415;
  wire [8:0] _GEN_413; // @[Reg.scala 20:19:@2935.4]
  reg [8:0] _T_4151; // @[Reg.scala 19:20:@2940.4]
  reg [31:0] _RAND_416;
  wire [8:0] _GEN_414; // @[Reg.scala 20:19:@2941.4]
  reg  _T_4419_0; // @[Reg.scala 19:20:@3011.4]
  reg [31:0] _RAND_417;
  reg  _T_4419_1; // @[Reg.scala 19:20:@3011.4]
  reg [31:0] _RAND_418;
  reg  _T_4419_2; // @[Reg.scala 19:20:@3011.4]
  reg [31:0] _RAND_419;
  reg  _T_4419_3; // @[Reg.scala 19:20:@3011.4]
  reg [31:0] _RAND_420;
  reg  _T_4419_4; // @[Reg.scala 19:20:@3011.4]
  reg [31:0] _RAND_421;
  reg  _T_4419_5; // @[Reg.scala 19:20:@3011.4]
  reg [31:0] _RAND_422;
  reg  _T_4419_6; // @[Reg.scala 19:20:@3011.4]
  reg [31:0] _RAND_423;
  reg  _T_4419_7; // @[Reg.scala 19:20:@3011.4]
  reg [31:0] _RAND_424;
  reg  _T_4419_8; // @[Reg.scala 19:20:@3011.4]
  reg [31:0] _RAND_425;
  reg  _T_4419_9; // @[Reg.scala 19:20:@3011.4]
  reg [31:0] _RAND_426;
  reg  _T_4419_10; // @[Reg.scala 19:20:@3011.4]
  reg [31:0] _RAND_427;
  reg  _T_4419_11; // @[Reg.scala 19:20:@3011.4]
  reg [31:0] _RAND_428;
  reg  _T_4419_12; // @[Reg.scala 19:20:@3011.4]
  reg [31:0] _RAND_429;
  reg  _T_4419_13; // @[Reg.scala 19:20:@3011.4]
  reg [31:0] _RAND_430;
  reg  _T_4419_14; // @[Reg.scala 19:20:@3011.4]
  reg [31:0] _RAND_431;
  reg  _T_4419_15; // @[Reg.scala 19:20:@3011.4]
  reg [31:0] _RAND_432;
  reg  _T_4419_16; // @[Reg.scala 19:20:@3011.4]
  reg [31:0] _RAND_433;
  reg  _T_4419_17; // @[Reg.scala 19:20:@3011.4]
  reg [31:0] _RAND_434;
  reg  _T_4419_18; // @[Reg.scala 19:20:@3011.4]
  reg [31:0] _RAND_435;
  reg  _T_4419_19; // @[Reg.scala 19:20:@3011.4]
  reg [31:0] _RAND_436;
  reg  _T_4419_20; // @[Reg.scala 19:20:@3011.4]
  reg [31:0] _RAND_437;
  reg  _T_4419_21; // @[Reg.scala 19:20:@3011.4]
  reg [31:0] _RAND_438;
  reg  _T_4419_22; // @[Reg.scala 19:20:@3011.4]
  reg [31:0] _RAND_439;
  reg  _T_4419_23; // @[Reg.scala 19:20:@3011.4]
  reg [31:0] _RAND_440;
  reg  _T_4419_24; // @[Reg.scala 19:20:@3011.4]
  reg [31:0] _RAND_441;
  reg  _T_4419_25; // @[Reg.scala 19:20:@3011.4]
  reg [31:0] _RAND_442;
  reg  _T_4419_26; // @[Reg.scala 19:20:@3011.4]
  reg [31:0] _RAND_443;
  reg  _T_4419_27; // @[Reg.scala 19:20:@3011.4]
  reg [31:0] _RAND_444;
  reg  _T_4419_28; // @[Reg.scala 19:20:@3011.4]
  reg [31:0] _RAND_445;
  reg  _T_4419_29; // @[Reg.scala 19:20:@3011.4]
  reg [31:0] _RAND_446;
  reg  _T_4419_30; // @[Reg.scala 19:20:@3011.4]
  reg [31:0] _RAND_447;
  reg  _T_4419_31; // @[Reg.scala 19:20:@3011.4]
  reg [31:0] _RAND_448;
  reg  _T_4419_32; // @[Reg.scala 19:20:@3011.4]
  reg [31:0] _RAND_449;
  reg  _T_4419_33; // @[Reg.scala 19:20:@3011.4]
  reg [31:0] _RAND_450;
  reg  _T_4419_34; // @[Reg.scala 19:20:@3011.4]
  reg [31:0] _RAND_451;
  reg  _T_4419_35; // @[Reg.scala 19:20:@3011.4]
  reg [31:0] _RAND_452;
  reg  _T_4419_36; // @[Reg.scala 19:20:@3011.4]
  reg [31:0] _RAND_453;
  reg  _T_4419_37; // @[Reg.scala 19:20:@3011.4]
  reg [31:0] _RAND_454;
  reg  _T_4419_38; // @[Reg.scala 19:20:@3011.4]
  reg [31:0] _RAND_455;
  reg  _T_4419_39; // @[Reg.scala 19:20:@3011.4]
  reg [31:0] _RAND_456;
  reg  _T_4419_40; // @[Reg.scala 19:20:@3011.4]
  reg [31:0] _RAND_457;
  reg  _T_4419_41; // @[Reg.scala 19:20:@3011.4]
  reg [31:0] _RAND_458;
  reg  _T_4419_42; // @[Reg.scala 19:20:@3011.4]
  reg [31:0] _RAND_459;
  reg  _T_4419_43; // @[Reg.scala 19:20:@3011.4]
  reg [31:0] _RAND_460;
  reg  _T_4419_44; // @[Reg.scala 19:20:@3011.4]
  reg [31:0] _RAND_461;
  reg  _T_4419_45; // @[Reg.scala 19:20:@3011.4]
  reg [31:0] _RAND_462;
  reg  _T_4419_46; // @[Reg.scala 19:20:@3011.4]
  reg [31:0] _RAND_463;
  reg  _T_4419_47; // @[Reg.scala 19:20:@3011.4]
  reg [31:0] _RAND_464;
  reg  _T_4419_48; // @[Reg.scala 19:20:@3011.4]
  reg [31:0] _RAND_465;
  reg  _T_4419_49; // @[Reg.scala 19:20:@3011.4]
  reg [31:0] _RAND_466;
  reg  _T_4419_50; // @[Reg.scala 19:20:@3011.4]
  reg [31:0] _RAND_467;
  reg  _T_4419_51; // @[Reg.scala 19:20:@3011.4]
  reg [31:0] _RAND_468;
  reg  _T_4419_52; // @[Reg.scala 19:20:@3011.4]
  reg [31:0] _RAND_469;
  reg  _T_4419_53; // @[Reg.scala 19:20:@3011.4]
  reg [31:0] _RAND_470;
  reg  _T_4419_54; // @[Reg.scala 19:20:@3011.4]
  reg [31:0] _RAND_471;
  reg  _T_4419_55; // @[Reg.scala 19:20:@3011.4]
  reg [31:0] _RAND_472;
  reg  _T_4419_56; // @[Reg.scala 19:20:@3011.4]
  reg [31:0] _RAND_473;
  reg  _T_4419_57; // @[Reg.scala 19:20:@3011.4]
  reg [31:0] _RAND_474;
  reg  _T_4419_58; // @[Reg.scala 19:20:@3011.4]
  reg [31:0] _RAND_475;
  reg  _T_4419_59; // @[Reg.scala 19:20:@3011.4]
  reg [31:0] _RAND_476;
  reg  _T_4419_60; // @[Reg.scala 19:20:@3011.4]
  reg [31:0] _RAND_477;
  reg  _T_4419_61; // @[Reg.scala 19:20:@3011.4]
  reg [31:0] _RAND_478;
  reg  _T_4419_62; // @[Reg.scala 19:20:@3011.4]
  reg [31:0] _RAND_479;
  reg  _T_4419_63; // @[Reg.scala 19:20:@3011.4]
  reg [31:0] _RAND_480;
  wire  _GEN_415; // @[Reg.scala 20:19:@3012.4]
  wire  _GEN_416; // @[Reg.scala 20:19:@3012.4]
  wire  _GEN_417; // @[Reg.scala 20:19:@3012.4]
  wire  _GEN_418; // @[Reg.scala 20:19:@3012.4]
  wire  _GEN_419; // @[Reg.scala 20:19:@3012.4]
  wire  _GEN_420; // @[Reg.scala 20:19:@3012.4]
  wire  _GEN_421; // @[Reg.scala 20:19:@3012.4]
  wire  _GEN_422; // @[Reg.scala 20:19:@3012.4]
  wire  _GEN_423; // @[Reg.scala 20:19:@3012.4]
  wire  _GEN_424; // @[Reg.scala 20:19:@3012.4]
  wire  _GEN_425; // @[Reg.scala 20:19:@3012.4]
  wire  _GEN_426; // @[Reg.scala 20:19:@3012.4]
  wire  _GEN_427; // @[Reg.scala 20:19:@3012.4]
  wire  _GEN_428; // @[Reg.scala 20:19:@3012.4]
  wire  _GEN_429; // @[Reg.scala 20:19:@3012.4]
  wire  _GEN_430; // @[Reg.scala 20:19:@3012.4]
  wire  _GEN_431; // @[Reg.scala 20:19:@3012.4]
  wire  _GEN_432; // @[Reg.scala 20:19:@3012.4]
  wire  _GEN_433; // @[Reg.scala 20:19:@3012.4]
  wire  _GEN_434; // @[Reg.scala 20:19:@3012.4]
  wire  _GEN_435; // @[Reg.scala 20:19:@3012.4]
  wire  _GEN_436; // @[Reg.scala 20:19:@3012.4]
  wire  _GEN_437; // @[Reg.scala 20:19:@3012.4]
  wire  _GEN_438; // @[Reg.scala 20:19:@3012.4]
  wire  _GEN_439; // @[Reg.scala 20:19:@3012.4]
  wire  _GEN_440; // @[Reg.scala 20:19:@3012.4]
  wire  _GEN_441; // @[Reg.scala 20:19:@3012.4]
  wire  _GEN_442; // @[Reg.scala 20:19:@3012.4]
  wire  _GEN_443; // @[Reg.scala 20:19:@3012.4]
  wire  _GEN_444; // @[Reg.scala 20:19:@3012.4]
  wire  _GEN_445; // @[Reg.scala 20:19:@3012.4]
  wire  _GEN_446; // @[Reg.scala 20:19:@3012.4]
  wire  _GEN_447; // @[Reg.scala 20:19:@3012.4]
  wire  _GEN_448; // @[Reg.scala 20:19:@3012.4]
  wire  _GEN_449; // @[Reg.scala 20:19:@3012.4]
  wire  _GEN_450; // @[Reg.scala 20:19:@3012.4]
  wire  _GEN_451; // @[Reg.scala 20:19:@3012.4]
  wire  _GEN_452; // @[Reg.scala 20:19:@3012.4]
  wire  _GEN_453; // @[Reg.scala 20:19:@3012.4]
  wire  _GEN_454; // @[Reg.scala 20:19:@3012.4]
  wire  _GEN_455; // @[Reg.scala 20:19:@3012.4]
  wire  _GEN_456; // @[Reg.scala 20:19:@3012.4]
  wire  _GEN_457; // @[Reg.scala 20:19:@3012.4]
  wire  _GEN_458; // @[Reg.scala 20:19:@3012.4]
  wire  _GEN_459; // @[Reg.scala 20:19:@3012.4]
  wire  _GEN_460; // @[Reg.scala 20:19:@3012.4]
  wire  _GEN_461; // @[Reg.scala 20:19:@3012.4]
  wire  _GEN_462; // @[Reg.scala 20:19:@3012.4]
  wire  _GEN_463; // @[Reg.scala 20:19:@3012.4]
  wire  _GEN_464; // @[Reg.scala 20:19:@3012.4]
  wire  _GEN_465; // @[Reg.scala 20:19:@3012.4]
  wire  _GEN_466; // @[Reg.scala 20:19:@3012.4]
  wire  _GEN_467; // @[Reg.scala 20:19:@3012.4]
  wire  _GEN_468; // @[Reg.scala 20:19:@3012.4]
  wire  _GEN_469; // @[Reg.scala 20:19:@3012.4]
  wire  _GEN_470; // @[Reg.scala 20:19:@3012.4]
  wire  _GEN_471; // @[Reg.scala 20:19:@3012.4]
  wire  _GEN_472; // @[Reg.scala 20:19:@3012.4]
  wire  _GEN_473; // @[Reg.scala 20:19:@3012.4]
  wire  _GEN_474; // @[Reg.scala 20:19:@3012.4]
  wire  _GEN_475; // @[Reg.scala 20:19:@3012.4]
  wire  _GEN_476; // @[Reg.scala 20:19:@3012.4]
  wire  _GEN_477; // @[Reg.scala 20:19:@3012.4]
  wire  _GEN_478; // @[Reg.scala 20:19:@3012.4]
  wire [7:0] _T_4622; // @[NV_NVDLA_CSC_dl_for_check.scala 1202:127:@3084.4]
  wire [15:0] _T_4630; // @[NV_NVDLA_CSC_dl_for_check.scala 1202:127:@3092.4]
  wire [7:0] _T_4637; // @[NV_NVDLA_CSC_dl_for_check.scala 1202:127:@3099.4]
  wire [31:0] _T_4646; // @[NV_NVDLA_CSC_dl_for_check.scala 1202:127:@3108.4]
  wire [7:0] _T_4653; // @[NV_NVDLA_CSC_dl_for_check.scala 1202:127:@3115.4]
  wire [15:0] _T_4661; // @[NV_NVDLA_CSC_dl_for_check.scala 1202:127:@3123.4]
  wire [7:0] _T_4668; // @[NV_NVDLA_CSC_dl_for_check.scala 1202:127:@3130.4]
  wire [31:0] _T_4677; // @[NV_NVDLA_CSC_dl_for_check.scala 1202:127:@3139.4]
  reg  _T_4946_0; // @[Reg.scala 19:20:@3208.4]
  reg [31:0] _RAND_481;
  reg  _T_4946_1; // @[Reg.scala 19:20:@3208.4]
  reg [31:0] _RAND_482;
  reg  _T_4946_2; // @[Reg.scala 19:20:@3208.4]
  reg [31:0] _RAND_483;
  reg  _T_4946_3; // @[Reg.scala 19:20:@3208.4]
  reg [31:0] _RAND_484;
  reg  _T_4946_4; // @[Reg.scala 19:20:@3208.4]
  reg [31:0] _RAND_485;
  reg  _T_4946_5; // @[Reg.scala 19:20:@3208.4]
  reg [31:0] _RAND_486;
  reg  _T_4946_6; // @[Reg.scala 19:20:@3208.4]
  reg [31:0] _RAND_487;
  reg  _T_4946_7; // @[Reg.scala 19:20:@3208.4]
  reg [31:0] _RAND_488;
  reg  _T_4946_8; // @[Reg.scala 19:20:@3208.4]
  reg [31:0] _RAND_489;
  reg  _T_4946_9; // @[Reg.scala 19:20:@3208.4]
  reg [31:0] _RAND_490;
  reg  _T_4946_10; // @[Reg.scala 19:20:@3208.4]
  reg [31:0] _RAND_491;
  reg  _T_4946_11; // @[Reg.scala 19:20:@3208.4]
  reg [31:0] _RAND_492;
  reg  _T_4946_12; // @[Reg.scala 19:20:@3208.4]
  reg [31:0] _RAND_493;
  reg  _T_4946_13; // @[Reg.scala 19:20:@3208.4]
  reg [31:0] _RAND_494;
  reg  _T_4946_14; // @[Reg.scala 19:20:@3208.4]
  reg [31:0] _RAND_495;
  reg  _T_4946_15; // @[Reg.scala 19:20:@3208.4]
  reg [31:0] _RAND_496;
  reg  _T_4946_16; // @[Reg.scala 19:20:@3208.4]
  reg [31:0] _RAND_497;
  reg  _T_4946_17; // @[Reg.scala 19:20:@3208.4]
  reg [31:0] _RAND_498;
  reg  _T_4946_18; // @[Reg.scala 19:20:@3208.4]
  reg [31:0] _RAND_499;
  reg  _T_4946_19; // @[Reg.scala 19:20:@3208.4]
  reg [31:0] _RAND_500;
  reg  _T_4946_20; // @[Reg.scala 19:20:@3208.4]
  reg [31:0] _RAND_501;
  reg  _T_4946_21; // @[Reg.scala 19:20:@3208.4]
  reg [31:0] _RAND_502;
  reg  _T_4946_22; // @[Reg.scala 19:20:@3208.4]
  reg [31:0] _RAND_503;
  reg  _T_4946_23; // @[Reg.scala 19:20:@3208.4]
  reg [31:0] _RAND_504;
  reg  _T_4946_24; // @[Reg.scala 19:20:@3208.4]
  reg [31:0] _RAND_505;
  reg  _T_4946_25; // @[Reg.scala 19:20:@3208.4]
  reg [31:0] _RAND_506;
  reg  _T_4946_26; // @[Reg.scala 19:20:@3208.4]
  reg [31:0] _RAND_507;
  reg  _T_4946_27; // @[Reg.scala 19:20:@3208.4]
  reg [31:0] _RAND_508;
  reg  _T_4946_28; // @[Reg.scala 19:20:@3208.4]
  reg [31:0] _RAND_509;
  reg  _T_4946_29; // @[Reg.scala 19:20:@3208.4]
  reg [31:0] _RAND_510;
  reg  _T_4946_30; // @[Reg.scala 19:20:@3208.4]
  reg [31:0] _RAND_511;
  reg  _T_4946_31; // @[Reg.scala 19:20:@3208.4]
  reg [31:0] _RAND_512;
  reg  _T_4946_32; // @[Reg.scala 19:20:@3208.4]
  reg [31:0] _RAND_513;
  reg  _T_4946_33; // @[Reg.scala 19:20:@3208.4]
  reg [31:0] _RAND_514;
  reg  _T_4946_34; // @[Reg.scala 19:20:@3208.4]
  reg [31:0] _RAND_515;
  reg  _T_4946_35; // @[Reg.scala 19:20:@3208.4]
  reg [31:0] _RAND_516;
  reg  _T_4946_36; // @[Reg.scala 19:20:@3208.4]
  reg [31:0] _RAND_517;
  reg  _T_4946_37; // @[Reg.scala 19:20:@3208.4]
  reg [31:0] _RAND_518;
  reg  _T_4946_38; // @[Reg.scala 19:20:@3208.4]
  reg [31:0] _RAND_519;
  reg  _T_4946_39; // @[Reg.scala 19:20:@3208.4]
  reg [31:0] _RAND_520;
  reg  _T_4946_40; // @[Reg.scala 19:20:@3208.4]
  reg [31:0] _RAND_521;
  reg  _T_4946_41; // @[Reg.scala 19:20:@3208.4]
  reg [31:0] _RAND_522;
  reg  _T_4946_42; // @[Reg.scala 19:20:@3208.4]
  reg [31:0] _RAND_523;
  reg  _T_4946_43; // @[Reg.scala 19:20:@3208.4]
  reg [31:0] _RAND_524;
  reg  _T_4946_44; // @[Reg.scala 19:20:@3208.4]
  reg [31:0] _RAND_525;
  reg  _T_4946_45; // @[Reg.scala 19:20:@3208.4]
  reg [31:0] _RAND_526;
  reg  _T_4946_46; // @[Reg.scala 19:20:@3208.4]
  reg [31:0] _RAND_527;
  reg  _T_4946_47; // @[Reg.scala 19:20:@3208.4]
  reg [31:0] _RAND_528;
  reg  _T_4946_48; // @[Reg.scala 19:20:@3208.4]
  reg [31:0] _RAND_529;
  reg  _T_4946_49; // @[Reg.scala 19:20:@3208.4]
  reg [31:0] _RAND_530;
  reg  _T_4946_50; // @[Reg.scala 19:20:@3208.4]
  reg [31:0] _RAND_531;
  reg  _T_4946_51; // @[Reg.scala 19:20:@3208.4]
  reg [31:0] _RAND_532;
  reg  _T_4946_52; // @[Reg.scala 19:20:@3208.4]
  reg [31:0] _RAND_533;
  reg  _T_4946_53; // @[Reg.scala 19:20:@3208.4]
  reg [31:0] _RAND_534;
  reg  _T_4946_54; // @[Reg.scala 19:20:@3208.4]
  reg [31:0] _RAND_535;
  reg  _T_4946_55; // @[Reg.scala 19:20:@3208.4]
  reg [31:0] _RAND_536;
  reg  _T_4946_56; // @[Reg.scala 19:20:@3208.4]
  reg [31:0] _RAND_537;
  reg  _T_4946_57; // @[Reg.scala 19:20:@3208.4]
  reg [31:0] _RAND_538;
  reg  _T_4946_58; // @[Reg.scala 19:20:@3208.4]
  reg [31:0] _RAND_539;
  reg  _T_4946_59; // @[Reg.scala 19:20:@3208.4]
  reg [31:0] _RAND_540;
  reg  _T_4946_60; // @[Reg.scala 19:20:@3208.4]
  reg [31:0] _RAND_541;
  reg  _T_4946_61; // @[Reg.scala 19:20:@3208.4]
  reg [31:0] _RAND_542;
  reg  _T_4946_62; // @[Reg.scala 19:20:@3208.4]
  reg [31:0] _RAND_543;
  reg  _T_4946_63; // @[Reg.scala 19:20:@3208.4]
  reg [31:0] _RAND_544;
  wire  _GEN_479; // @[Reg.scala 20:19:@3209.4]
  wire  _GEN_480; // @[Reg.scala 20:19:@3209.4]
  wire  _GEN_481; // @[Reg.scala 20:19:@3209.4]
  wire  _GEN_482; // @[Reg.scala 20:19:@3209.4]
  wire  _GEN_483; // @[Reg.scala 20:19:@3209.4]
  wire  _GEN_484; // @[Reg.scala 20:19:@3209.4]
  wire  _GEN_485; // @[Reg.scala 20:19:@3209.4]
  wire  _GEN_486; // @[Reg.scala 20:19:@3209.4]
  wire  _GEN_487; // @[Reg.scala 20:19:@3209.4]
  wire  _GEN_488; // @[Reg.scala 20:19:@3209.4]
  wire  _GEN_489; // @[Reg.scala 20:19:@3209.4]
  wire  _GEN_490; // @[Reg.scala 20:19:@3209.4]
  wire  _GEN_491; // @[Reg.scala 20:19:@3209.4]
  wire  _GEN_492; // @[Reg.scala 20:19:@3209.4]
  wire  _GEN_493; // @[Reg.scala 20:19:@3209.4]
  wire  _GEN_494; // @[Reg.scala 20:19:@3209.4]
  wire  _GEN_495; // @[Reg.scala 20:19:@3209.4]
  wire  _GEN_496; // @[Reg.scala 20:19:@3209.4]
  wire  _GEN_497; // @[Reg.scala 20:19:@3209.4]
  wire  _GEN_498; // @[Reg.scala 20:19:@3209.4]
  wire  _GEN_499; // @[Reg.scala 20:19:@3209.4]
  wire  _GEN_500; // @[Reg.scala 20:19:@3209.4]
  wire  _GEN_501; // @[Reg.scala 20:19:@3209.4]
  wire  _GEN_502; // @[Reg.scala 20:19:@3209.4]
  wire  _GEN_503; // @[Reg.scala 20:19:@3209.4]
  wire  _GEN_504; // @[Reg.scala 20:19:@3209.4]
  wire  _GEN_505; // @[Reg.scala 20:19:@3209.4]
  wire  _GEN_506; // @[Reg.scala 20:19:@3209.4]
  wire  _GEN_507; // @[Reg.scala 20:19:@3209.4]
  wire  _GEN_508; // @[Reg.scala 20:19:@3209.4]
  wire  _GEN_509; // @[Reg.scala 20:19:@3209.4]
  wire  _GEN_510; // @[Reg.scala 20:19:@3209.4]
  wire  _GEN_511; // @[Reg.scala 20:19:@3209.4]
  wire  _GEN_512; // @[Reg.scala 20:19:@3209.4]
  wire  _GEN_513; // @[Reg.scala 20:19:@3209.4]
  wire  _GEN_514; // @[Reg.scala 20:19:@3209.4]
  wire  _GEN_515; // @[Reg.scala 20:19:@3209.4]
  wire  _GEN_516; // @[Reg.scala 20:19:@3209.4]
  wire  _GEN_517; // @[Reg.scala 20:19:@3209.4]
  wire  _GEN_518; // @[Reg.scala 20:19:@3209.4]
  wire  _GEN_519; // @[Reg.scala 20:19:@3209.4]
  wire  _GEN_520; // @[Reg.scala 20:19:@3209.4]
  wire  _GEN_521; // @[Reg.scala 20:19:@3209.4]
  wire  _GEN_522; // @[Reg.scala 20:19:@3209.4]
  wire  _GEN_523; // @[Reg.scala 20:19:@3209.4]
  wire  _GEN_524; // @[Reg.scala 20:19:@3209.4]
  wire  _GEN_525; // @[Reg.scala 20:19:@3209.4]
  wire  _GEN_526; // @[Reg.scala 20:19:@3209.4]
  wire  _GEN_527; // @[Reg.scala 20:19:@3209.4]
  wire  _GEN_528; // @[Reg.scala 20:19:@3209.4]
  wire  _GEN_529; // @[Reg.scala 20:19:@3209.4]
  wire  _GEN_530; // @[Reg.scala 20:19:@3209.4]
  wire  _GEN_531; // @[Reg.scala 20:19:@3209.4]
  wire  _GEN_532; // @[Reg.scala 20:19:@3209.4]
  wire  _GEN_533; // @[Reg.scala 20:19:@3209.4]
  wire  _GEN_534; // @[Reg.scala 20:19:@3209.4]
  wire  _GEN_535; // @[Reg.scala 20:19:@3209.4]
  wire  _GEN_536; // @[Reg.scala 20:19:@3209.4]
  wire  _GEN_537; // @[Reg.scala 20:19:@3209.4]
  wire  _GEN_538; // @[Reg.scala 20:19:@3209.4]
  wire  _GEN_539; // @[Reg.scala 20:19:@3209.4]
  wire  _GEN_540; // @[Reg.scala 20:19:@3209.4]
  wire  _GEN_541; // @[Reg.scala 20:19:@3209.4]
  wire  _GEN_542; // @[Reg.scala 20:19:@3209.4]
  wire [7:0] _T_5149; // @[NV_NVDLA_CSC_dl_for_check.scala 1203:127:@3281.4]
  wire [15:0] _T_5157; // @[NV_NVDLA_CSC_dl_for_check.scala 1203:127:@3289.4]
  wire [7:0] _T_5164; // @[NV_NVDLA_CSC_dl_for_check.scala 1203:127:@3296.4]
  wire [31:0] _T_5173; // @[NV_NVDLA_CSC_dl_for_check.scala 1203:127:@3305.4]
  wire [7:0] _T_5180; // @[NV_NVDLA_CSC_dl_for_check.scala 1203:127:@3312.4]
  wire [15:0] _T_5188; // @[NV_NVDLA_CSC_dl_for_check.scala 1203:127:@3320.4]
  wire [7:0] _T_5195; // @[NV_NVDLA_CSC_dl_for_check.scala 1203:127:@3327.4]
  wire [31:0] _T_5204; // @[NV_NVDLA_CSC_dl_for_check.scala 1203:127:@3336.4]
  reg [7:0] _T_5207; // @[Reg.scala 11:16:@3339.4]
  reg [31:0] _RAND_545;
  reg [7:0] _T_5209; // @[Reg.scala 11:16:@3344.4]
  reg [31:0] _RAND_546;
  reg [7:0] _T_5211; // @[Reg.scala 11:16:@3349.4]
  reg [31:0] _RAND_547;
  reg [7:0] _T_5213; // @[Reg.scala 11:16:@3354.4]
  reg [31:0] _RAND_548;
  reg [7:0] _T_5215; // @[Reg.scala 11:16:@3359.4]
  reg [31:0] _RAND_549;
  reg [7:0] _T_5217; // @[Reg.scala 11:16:@3364.4]
  reg [31:0] _RAND_550;
  reg [7:0] _T_5219; // @[Reg.scala 11:16:@3369.4]
  reg [31:0] _RAND_551;
  reg [7:0] _T_5221; // @[Reg.scala 11:16:@3374.4]
  reg [31:0] _RAND_552;
  reg [7:0] _T_5223; // @[Reg.scala 11:16:@3379.4]
  reg [31:0] _RAND_553;
  reg [7:0] _T_5225; // @[Reg.scala 11:16:@3384.4]
  reg [31:0] _RAND_554;
  reg [7:0] _T_5227; // @[Reg.scala 11:16:@3389.4]
  reg [31:0] _RAND_555;
  reg [7:0] _T_5229; // @[Reg.scala 11:16:@3394.4]
  reg [31:0] _RAND_556;
  reg [7:0] _T_5231; // @[Reg.scala 11:16:@3399.4]
  reg [31:0] _RAND_557;
  reg [7:0] _T_5233; // @[Reg.scala 11:16:@3404.4]
  reg [31:0] _RAND_558;
  reg [7:0] _T_5235; // @[Reg.scala 11:16:@3409.4]
  reg [31:0] _RAND_559;
  reg [7:0] _T_5237; // @[Reg.scala 11:16:@3414.4]
  reg [31:0] _RAND_560;
  reg [7:0] _T_5239; // @[Reg.scala 11:16:@3419.4]
  reg [31:0] _RAND_561;
  reg [7:0] _T_5241; // @[Reg.scala 11:16:@3424.4]
  reg [31:0] _RAND_562;
  reg [7:0] _T_5243; // @[Reg.scala 11:16:@3429.4]
  reg [31:0] _RAND_563;
  reg [7:0] _T_5245; // @[Reg.scala 11:16:@3434.4]
  reg [31:0] _RAND_564;
  reg [7:0] _T_5247; // @[Reg.scala 11:16:@3439.4]
  reg [31:0] _RAND_565;
  reg [7:0] _T_5249; // @[Reg.scala 11:16:@3444.4]
  reg [31:0] _RAND_566;
  reg [7:0] _T_5251; // @[Reg.scala 11:16:@3449.4]
  reg [31:0] _RAND_567;
  reg [7:0] _T_5253; // @[Reg.scala 11:16:@3454.4]
  reg [31:0] _RAND_568;
  reg [7:0] _T_5255; // @[Reg.scala 11:16:@3459.4]
  reg [31:0] _RAND_569;
  reg [7:0] _T_5257; // @[Reg.scala 11:16:@3464.4]
  reg [31:0] _RAND_570;
  reg [7:0] _T_5259; // @[Reg.scala 11:16:@3469.4]
  reg [31:0] _RAND_571;
  reg [7:0] _T_5261; // @[Reg.scala 11:16:@3474.4]
  reg [31:0] _RAND_572;
  reg [7:0] _T_5263; // @[Reg.scala 11:16:@3479.4]
  reg [31:0] _RAND_573;
  reg [7:0] _T_5265; // @[Reg.scala 11:16:@3484.4]
  reg [31:0] _RAND_574;
  reg [7:0] _T_5267; // @[Reg.scala 11:16:@3489.4]
  reg [31:0] _RAND_575;
  reg [7:0] _T_5269; // @[Reg.scala 11:16:@3494.4]
  reg [31:0] _RAND_576;
  reg [7:0] _T_5271; // @[Reg.scala 11:16:@3499.4]
  reg [31:0] _RAND_577;
  reg [7:0] _T_5273; // @[Reg.scala 11:16:@3504.4]
  reg [31:0] _RAND_578;
  reg [7:0] _T_5275; // @[Reg.scala 11:16:@3509.4]
  reg [31:0] _RAND_579;
  reg [7:0] _T_5277; // @[Reg.scala 11:16:@3514.4]
  reg [31:0] _RAND_580;
  reg [7:0] _T_5279; // @[Reg.scala 11:16:@3519.4]
  reg [31:0] _RAND_581;
  reg [7:0] _T_5281; // @[Reg.scala 11:16:@3524.4]
  reg [31:0] _RAND_582;
  reg [7:0] _T_5283; // @[Reg.scala 11:16:@3529.4]
  reg [31:0] _RAND_583;
  reg [7:0] _T_5285; // @[Reg.scala 11:16:@3534.4]
  reg [31:0] _RAND_584;
  reg [7:0] _T_5287; // @[Reg.scala 11:16:@3539.4]
  reg [31:0] _RAND_585;
  reg [7:0] _T_5289; // @[Reg.scala 11:16:@3544.4]
  reg [31:0] _RAND_586;
  reg [7:0] _T_5291; // @[Reg.scala 11:16:@3549.4]
  reg [31:0] _RAND_587;
  reg [7:0] _T_5293; // @[Reg.scala 11:16:@3554.4]
  reg [31:0] _RAND_588;
  reg [7:0] _T_5295; // @[Reg.scala 11:16:@3559.4]
  reg [31:0] _RAND_589;
  reg [7:0] _T_5297; // @[Reg.scala 11:16:@3564.4]
  reg [31:0] _RAND_590;
  reg [7:0] _T_5299; // @[Reg.scala 11:16:@3569.4]
  reg [31:0] _RAND_591;
  reg [7:0] _T_5301; // @[Reg.scala 11:16:@3574.4]
  reg [31:0] _RAND_592;
  reg [7:0] _T_5303; // @[Reg.scala 11:16:@3579.4]
  reg [31:0] _RAND_593;
  reg [7:0] _T_5305; // @[Reg.scala 11:16:@3584.4]
  reg [31:0] _RAND_594;
  reg [7:0] _T_5307; // @[Reg.scala 11:16:@3589.4]
  reg [31:0] _RAND_595;
  reg [7:0] _T_5309; // @[Reg.scala 11:16:@3594.4]
  reg [31:0] _RAND_596;
  reg [7:0] _T_5311; // @[Reg.scala 11:16:@3599.4]
  reg [31:0] _RAND_597;
  reg [7:0] _T_5313; // @[Reg.scala 11:16:@3604.4]
  reg [31:0] _RAND_598;
  reg [7:0] _T_5315; // @[Reg.scala 11:16:@3609.4]
  reg [31:0] _RAND_599;
  reg [7:0] _T_5317; // @[Reg.scala 11:16:@3614.4]
  reg [31:0] _RAND_600;
  reg [7:0] _T_5319; // @[Reg.scala 11:16:@3619.4]
  reg [31:0] _RAND_601;
  reg [7:0] _T_5321; // @[Reg.scala 11:16:@3624.4]
  reg [31:0] _RAND_602;
  reg [7:0] _T_5323; // @[Reg.scala 11:16:@3629.4]
  reg [31:0] _RAND_603;
  reg [7:0] _T_5325; // @[Reg.scala 11:16:@3634.4]
  reg [31:0] _RAND_604;
  reg [7:0] _T_5327; // @[Reg.scala 11:16:@3639.4]
  reg [31:0] _RAND_605;
  reg [7:0] _T_5329; // @[Reg.scala 11:16:@3644.4]
  reg [31:0] _RAND_606;
  reg [7:0] _T_5331; // @[Reg.scala 11:16:@3649.4]
  reg [31:0] _RAND_607;
  reg [7:0] _T_5333; // @[Reg.scala 11:16:@3654.4]
  reg [31:0] _RAND_608;
  reg [7:0] _T_5335; // @[Reg.scala 11:16:@3659.4]
  reg [31:0] _RAND_609;
  reg [7:0] _T_5337; // @[Reg.scala 11:16:@3664.4]
  reg [31:0] _RAND_610;
  reg [7:0] _T_5339; // @[Reg.scala 11:16:@3669.4]
  reg [31:0] _RAND_611;
  reg [7:0] _T_5341; // @[Reg.scala 11:16:@3674.4]
  reg [31:0] _RAND_612;
  reg [7:0] _T_5343; // @[Reg.scala 11:16:@3679.4]
  reg [31:0] _RAND_613;
  reg [7:0] _T_5345; // @[Reg.scala 11:16:@3684.4]
  reg [31:0] _RAND_614;
  reg [7:0] _T_5347; // @[Reg.scala 11:16:@3689.4]
  reg [31:0] _RAND_615;
  reg [7:0] _T_5349; // @[Reg.scala 11:16:@3694.4]
  reg [31:0] _RAND_616;
  reg [7:0] _T_5351; // @[Reg.scala 11:16:@3699.4]
  reg [31:0] _RAND_617;
  reg [7:0] _T_5353; // @[Reg.scala 11:16:@3704.4]
  reg [31:0] _RAND_618;
  reg [7:0] _T_5355; // @[Reg.scala 11:16:@3709.4]
  reg [31:0] _RAND_619;
  reg [7:0] _T_5357; // @[Reg.scala 11:16:@3714.4]
  reg [31:0] _RAND_620;
  reg [7:0] _T_5359; // @[Reg.scala 11:16:@3719.4]
  reg [31:0] _RAND_621;
  reg [7:0] _T_5361; // @[Reg.scala 11:16:@3724.4]
  reg [31:0] _RAND_622;
  reg [7:0] _T_5363; // @[Reg.scala 11:16:@3729.4]
  reg [31:0] _RAND_623;
  reg [7:0] _T_5365; // @[Reg.scala 11:16:@3734.4]
  reg [31:0] _RAND_624;
  reg [7:0] _T_5367; // @[Reg.scala 11:16:@3739.4]
  reg [31:0] _RAND_625;
  reg [7:0] _T_5369; // @[Reg.scala 11:16:@3744.4]
  reg [31:0] _RAND_626;
  reg [7:0] _T_5371; // @[Reg.scala 11:16:@3749.4]
  reg [31:0] _RAND_627;
  reg [7:0] _T_5373; // @[Reg.scala 11:16:@3754.4]
  reg [31:0] _RAND_628;
  reg [7:0] _T_5375; // @[Reg.scala 11:16:@3759.4]
  reg [31:0] _RAND_629;
  reg [7:0] _T_5377; // @[Reg.scala 11:16:@3764.4]
  reg [31:0] _RAND_630;
  reg [7:0] _T_5379; // @[Reg.scala 11:16:@3769.4]
  reg [31:0] _RAND_631;
  reg [7:0] _T_5381; // @[Reg.scala 11:16:@3774.4]
  reg [31:0] _RAND_632;
  reg [7:0] _T_5383; // @[Reg.scala 11:16:@3779.4]
  reg [31:0] _RAND_633;
  reg [7:0] _T_5385; // @[Reg.scala 11:16:@3784.4]
  reg [31:0] _RAND_634;
  reg [7:0] _T_5387; // @[Reg.scala 11:16:@3789.4]
  reg [31:0] _RAND_635;
  reg [7:0] _T_5389; // @[Reg.scala 11:16:@3794.4]
  reg [31:0] _RAND_636;
  reg [7:0] _T_5391; // @[Reg.scala 11:16:@3799.4]
  reg [31:0] _RAND_637;
  reg [7:0] _T_5393; // @[Reg.scala 11:16:@3804.4]
  reg [31:0] _RAND_638;
  reg [7:0] _T_5395; // @[Reg.scala 11:16:@3809.4]
  reg [31:0] _RAND_639;
  reg [7:0] _T_5397; // @[Reg.scala 11:16:@3814.4]
  reg [31:0] _RAND_640;
  reg [7:0] _T_5399; // @[Reg.scala 11:16:@3819.4]
  reg [31:0] _RAND_641;
  reg [7:0] _T_5401; // @[Reg.scala 11:16:@3824.4]
  reg [31:0] _RAND_642;
  reg [7:0] _T_5403; // @[Reg.scala 11:16:@3829.4]
  reg [31:0] _RAND_643;
  reg [7:0] _T_5405; // @[Reg.scala 11:16:@3834.4]
  reg [31:0] _RAND_644;
  reg [7:0] _T_5407; // @[Reg.scala 11:16:@3839.4]
  reg [31:0] _RAND_645;
  reg [7:0] _T_5409; // @[Reg.scala 11:16:@3844.4]
  reg [31:0] _RAND_646;
  reg [7:0] _T_5411; // @[Reg.scala 11:16:@3849.4]
  reg [31:0] _RAND_647;
  reg [7:0] _T_5413; // @[Reg.scala 11:16:@3854.4]
  reg [31:0] _RAND_648;
  reg [7:0] _T_5415; // @[Reg.scala 11:16:@3859.4]
  reg [31:0] _RAND_649;
  reg [7:0] _T_5417; // @[Reg.scala 11:16:@3864.4]
  reg [31:0] _RAND_650;
  reg [7:0] _T_5419; // @[Reg.scala 11:16:@3869.4]
  reg [31:0] _RAND_651;
  reg [7:0] _T_5421; // @[Reg.scala 11:16:@3874.4]
  reg [31:0] _RAND_652;
  reg [7:0] _T_5423; // @[Reg.scala 11:16:@3879.4]
  reg [31:0] _RAND_653;
  reg [7:0] _T_5425; // @[Reg.scala 11:16:@3884.4]
  reg [31:0] _RAND_654;
  reg [7:0] _T_5427; // @[Reg.scala 11:16:@3889.4]
  reg [31:0] _RAND_655;
  reg [7:0] _T_5429; // @[Reg.scala 11:16:@3894.4]
  reg [31:0] _RAND_656;
  reg [7:0] _T_5431; // @[Reg.scala 11:16:@3899.4]
  reg [31:0] _RAND_657;
  reg [7:0] _T_5433; // @[Reg.scala 11:16:@3904.4]
  reg [31:0] _RAND_658;
  reg [7:0] _T_5435; // @[Reg.scala 11:16:@3909.4]
  reg [31:0] _RAND_659;
  reg [7:0] _T_5437; // @[Reg.scala 11:16:@3914.4]
  reg [31:0] _RAND_660;
  reg [7:0] _T_5439; // @[Reg.scala 11:16:@3919.4]
  reg [31:0] _RAND_661;
  reg [7:0] _T_5441; // @[Reg.scala 11:16:@3924.4]
  reg [31:0] _RAND_662;
  reg [7:0] _T_5443; // @[Reg.scala 11:16:@3929.4]
  reg [31:0] _RAND_663;
  reg [7:0] _T_5445; // @[Reg.scala 11:16:@3934.4]
  reg [31:0] _RAND_664;
  reg [7:0] _T_5447; // @[Reg.scala 11:16:@3939.4]
  reg [31:0] _RAND_665;
  reg [7:0] _T_5449; // @[Reg.scala 11:16:@3944.4]
  reg [31:0] _RAND_666;
  reg [7:0] _T_5451; // @[Reg.scala 11:16:@3949.4]
  reg [31:0] _RAND_667;
  reg [7:0] _T_5453; // @[Reg.scala 11:16:@3954.4]
  reg [31:0] _RAND_668;
  reg [7:0] _T_5455; // @[Reg.scala 11:16:@3959.4]
  reg [31:0] _RAND_669;
  reg [7:0] _T_5457; // @[Reg.scala 11:16:@3964.4]
  reg [31:0] _RAND_670;
  reg [7:0] _T_5459; // @[Reg.scala 11:16:@3969.4]
  reg [31:0] _RAND_671;
  reg [7:0] _T_5461; // @[Reg.scala 11:16:@3974.4]
  reg [31:0] _RAND_672;
  assign _T_337 = nvdla_core_rstn == 1'h0; // @[NV_NVDLA_CSC_dl_for_check.scala 95:38:@8.4]
  assign is_sg_idle = sc_state == 2'h0; // @[NV_NVDLA_CSC_dl_for_check.scala 99:31:@9.4]
  assign is_sg_done = sc_state == 2'h3; // @[NV_NVDLA_CSC_dl_for_check.scala 101:31:@11.4]
  assign layer_st = reg2dp_op_en & is_sg_idle; // @[NV_NVDLA_CSC_dl_for_check.scala 108:32:@14.4]
  assign is_conv = reg2dp_conv_mode == 1'h0; // @[NV_NVDLA_CSC_dl_for_check.scala 110:35:@16.4]
  assign is_img = is_conv & reg2dp_datain_format; // @[NV_NVDLA_CSC_dl_for_check.scala 111:22:@17.4]
  assign _T_346 = 7'h9 << reg2dp_y_extension; // @[NV_NVDLA_CSC_dl_for_check.scala 118:53:@18.4]
  assign _T_348 = is_img ? _T_346 : 7'h8; // @[NV_NVDLA_CSC_dl_for_check.scala 118:24:@19.4]
  assign sub_h_total_w = _T_348[5:3]; // @[NV_NVDLA_CSC_dl_for_check.scala 118:100:@20.4]
  assign sub_h_cmp_w = is_img ? sub_h_total_w : 3'h1; // @[NV_NVDLA_CSC_dl_for_check.scala 119:22:@21.4]
  assign _T_351 = sub_h_cmp_w - 3'h1; // @[NV_NVDLA_CSC_dl_for_check.scala 120:34:@22.4]
  assign dataout_w_init = $unsigned(_T_351); // @[NV_NVDLA_CSC_dl_for_check.scala 120:34:@23.4]
  assign conv_x_stride_w = reg2dp_conv_x_stride_ext + 3'h1; // @[NV_NVDLA_CSC_dl_for_check.scala 121:51:@24.4]
  assign _T_353 = reg2dp_datain_channel_ext[1:0]; // @[NV_NVDLA_CSC_dl_for_check.scala 122:62:@25.4]
  assign _T_356 = {conv_x_stride_w,2'h0}; // @[Cat.scala 30:58:@26.4]
  assign _T_359 = {conv_x_stride_w,1'h0}; // @[Cat.scala 30:58:@27.4]
  assign _GEN_671 = {{1'd0}, conv_x_stride_w}; // @[NV_NVDLA_CSC_dl_for_check.scala 124:74:@28.4]
  assign _T_360 = _T_359 + _GEN_671; // @[NV_NVDLA_CSC_dl_for_check.scala 124:74:@28.4]
  assign _T_361 = 2'h2 == _T_353; // @[Mux.scala 46:19:@29.4]
  assign _T_362 = _T_361 ? _T_360 : {{2'd0}, conv_x_stride_w}; // @[Mux.scala 46:16:@30.4]
  assign _T_363 = 2'h3 == _T_353; // @[Mux.scala 46:19:@31.4]
  assign pixel_x_stride_w = _T_363 ? _T_356 : _T_362; // @[Mux.scala 46:16:@32.4]
  assign _T_365 = reg2dp_weight_channel_ext >= 13'h40; // @[NV_NVDLA_CSC_dl_for_check.scala 126:88:@33.4]
  assign _T_371 = reg2dp_weight_channel_ext[5:0]; // @[NV_NVDLA_CSC_dl_for_check.scala 126:172:@35.4]
  assign _T_372 = _T_365 ? 6'h3f : _T_371; // @[NV_NVDLA_CSC_dl_for_check.scala 126:58:@36.4]
  assign _T_375 = {pixel_x_stride_w,1'h0}; // @[Cat.scala 30:58:@37.4]
  assign _GEN_672 = {{1'd0}, pixel_x_stride_w}; // @[NV_NVDLA_CSC_dl_for_check.scala 127:81:@38.4]
  assign _T_376 = _T_375 + _GEN_672; // @[NV_NVDLA_CSC_dl_for_check.scala 127:81:@38.4]
  assign _T_377 = _T_375 + _GEN_672; // @[NV_NVDLA_CSC_dl_for_check.scala 127:81:@39.4]
  assign _GEN_673 = {{1'd0}, _T_371}; // @[NV_NVDLA_CSC_dl_for_check.scala 127:100:@41.4]
  assign _T_379 = _T_377 + _GEN_673; // @[NV_NVDLA_CSC_dl_for_check.scala 127:100:@41.4]
  assign _T_380 = _T_377 + _GEN_673; // @[NV_NVDLA_CSC_dl_for_check.scala 127:100:@42.4]
  assign _T_383 = pixel_x_stride_w + _T_371; // @[NV_NVDLA_CSC_dl_for_check.scala 128:58:@44.4]
  assign _T_384 = pixel_x_stride_w + _T_371; // @[NV_NVDLA_CSC_dl_for_check.scala 128:58:@45.4]
  assign _T_385 = 2'h1 == reg2dp_y_extension; // @[Mux.scala 46:19:@46.4]
  assign _T_386 = _T_385 ? _T_384 : _T_372; // @[Mux.scala 46:16:@47.4]
  assign _T_387 = 2'h2 == reg2dp_y_extension; // @[Mux.scala 46:19:@48.4]
  assign pixel_x_init_w = _T_387 ? _T_380 : {{1'd0}, _T_386}; // @[Mux.scala 46:16:@49.4]
  assign pixel_x_init_offset_w = _T_371 + 6'h1; // @[NV_NVDLA_CSC_dl_for_check.scala 129:80:@51.4]
  assign _T_392 = {pixel_x_stride_w,2'h0}; // @[Cat.scala 30:58:@52.4]
  assign _T_397 = _T_385 ? _T_375 : {{1'd0}, pixel_x_stride_w}; // @[Mux.scala 46:16:@55.4]
  assign pixel_x_add_w = _T_387 ? _T_392 : {{1'd0}, _T_397}; // @[Mux.scala 46:16:@57.4]
  assign pixel_ch_stride_w = {pixel_x_stride_w,6'h0}; // @[Cat.scala 30:58:@58.4]
  assign conv_y_stride_w = reg2dp_conv_y_stride_ext + 3'h1; // @[NV_NVDLA_CSC_dl_for_check.scala 139:52:@59.4]
  assign _T_403 = reg2dp_x_dilation_ext + 5'h1; // @[NV_NVDLA_CSC_dl_for_check.scala 140:60:@60.4]
  assign x_dilate_w = is_img ? 6'h1 : _T_403; // @[NV_NVDLA_CSC_dl_for_check.scala 140:21:@61.4]
  assign _T_406 = reg2dp_y_dilation_ext + 5'h1; // @[NV_NVDLA_CSC_dl_for_check.scala 141:60:@62.4]
  assign y_dilate_w = is_img ? 6'h1 : _T_406; // @[NV_NVDLA_CSC_dl_for_check.scala 141:21:@63.4]
  assign entries_single_w = reg2dp_entries + 14'h1; // @[NV_NVDLA_CSC_dl_for_check.scala 157:43:@87.4]
  assign _T_477 = entries_single_w * 15'h1; // @[NV_NVDLA_CSC_dl_for_check.scala 158:41:@89.4]
  assign entries_batch_w = _T_477[14:0]; // @[NV_NVDLA_CSC_dl_for_check.scala 158:56:@90.4]
  assign h_offset_slice_w = 6'h1 * y_dilate_w; // @[NV_NVDLA_CSC_dl_for_check.scala 160:37:@91.4]
  assign _GEN_674 = {{9'd0}, data_batch}; // @[NV_NVDLA_CSC_dl_for_check.scala 161:34:@92.4]
  assign _T_478 = entries * _GEN_674; // @[NV_NVDLA_CSC_dl_for_check.scala 161:34:@92.4]
  assign h_bias_0_stride_w = _T_478[11:0]; // @[NV_NVDLA_CSC_dl_for_check.scala 161:47:@93.4]
  assign _GEN_675 = {{1'd0}, h_offset_slice}; // @[NV_NVDLA_CSC_dl_for_check.scala 162:34:@94.4]
  assign _T_479 = entries * _GEN_675; // @[NV_NVDLA_CSC_dl_for_check.scala 162:34:@94.4]
  assign h_bias_1_stride_w = _T_479[11:0]; // @[NV_NVDLA_CSC_dl_for_check.scala 162:51:@95.4]
  assign _T_481 = reg2dp_rls_slices + 12'h1; // @[NV_NVDLA_CSC_dl_for_check.scala 163:41:@96.4]
  assign rls_slices_w = reg2dp_rls_slices + 12'h1; // @[NV_NVDLA_CSC_dl_for_check.scala 163:41:@97.4]
  assign _T_483 = reg2dp_datain_height_ext + 13'h1; // @[NV_NVDLA_CSC_dl_for_check.scala 164:77:@98.4]
  assign _GEN_676 = {{1'd0}, reg2dp_rls_slices}; // @[NV_NVDLA_CSC_dl_for_check.scala 164:113:@99.4]
  assign _T_484 = reg2dp_datain_height_ext - _GEN_676; // @[NV_NVDLA_CSC_dl_for_check.scala 164:113:@99.4]
  assign _T_485 = $unsigned(_T_484); // @[NV_NVDLA_CSC_dl_for_check.scala 164:113:@100.4]
  assign slice_left_w = reg2dp_skip_data_rls ? _T_483 : _T_485; // @[NV_NVDLA_CSC_dl_for_check.scala 164:23:@101.4]
  assign slices_oprand = layer_st_d1 ? rls_slices : slice_left; // @[NV_NVDLA_CSC_dl_for_check.scala 165:24:@102.4]
  assign _GEN_677 = {{1'd0}, slices_oprand}; // @[NV_NVDLA_CSC_dl_for_check.scala 166:38:@103.4]
  assign _T_486 = entries_batch * _GEN_677; // @[NV_NVDLA_CSC_dl_for_check.scala 166:38:@103.4]
  assign slice_entries_w = _T_486[14:0]; // @[NV_NVDLA_CSC_dl_for_check.scala 166:54:@104.4]
  assign _T_671 = is_img ? 34'h3ffffffff : 34'h0; // @[Bitwise.scala 72:12:@175.6]
  assign _T_673 = reg2dp_data_bank + 5'h1; // @[NV_NVDLA_CSC_dl_for_check.scala 215:38:@177.6]
  assign _T_674 = reg2dp_data_bank + 5'h1; // @[NV_NVDLA_CSC_dl_for_check.scala 215:38:@178.6]
  assign _T_676 = reg2dp_datain_width_ext + 13'h1; // @[NV_NVDLA_CSC_dl_for_check.scala 216:48:@180.6]
  assign _T_682 = reg2dp_weight_channel_ext[12:6]; // @[NV_NVDLA_CSC_dl_for_check.scala 219:93:@185.6]
  assign _T_683 = {4'h0,_T_682}; // @[Cat.scala 30:58:@186.6]
  assign _T_687 = {1'h0,reg2dp_entries}; // @[Cat.scala 30:58:@219.6]
  assign _GEN_1 = layer_st ? _T_671 : is_img_d1; // @[NV_NVDLA_CSC_dl_for_check.scala 212:15:@171.4]
  assign _GEN_2 = layer_st ? _T_674 : data_bank; // @[NV_NVDLA_CSC_dl_for_check.scala 212:15:@171.4]
  assign _GEN_3 = layer_st ? _T_676 : datain_width; // @[NV_NVDLA_CSC_dl_for_check.scala 212:15:@171.4]
  assign _GEN_4 = layer_st ? reg2dp_datain_width_ext : datain_width_cmp; // @[NV_NVDLA_CSC_dl_for_check.scala 212:15:@171.4]
  assign _GEN_5 = layer_st ? reg2dp_datain_height_ext : datain_height_cmp; // @[NV_NVDLA_CSC_dl_for_check.scala 212:15:@171.4]
  assign _GEN_6 = layer_st ? _T_683 : datain_channel_cmp; // @[NV_NVDLA_CSC_dl_for_check.scala 212:15:@171.4]
  assign _GEN_7 = layer_st ? sub_h_total_w : sub_h_total_g0; // @[NV_NVDLA_CSC_dl_for_check.scala 212:15:@171.4]
  assign _GEN_8 = layer_st ? sub_h_total_w : sub_h_total_g1; // @[NV_NVDLA_CSC_dl_for_check.scala 212:15:@171.4]
  assign _GEN_10 = layer_st ? sub_h_total_w : sub_h_total_g3; // @[NV_NVDLA_CSC_dl_for_check.scala 212:15:@171.4]
  assign _GEN_11 = layer_st ? sub_h_total_w : sub_h_total_g4; // @[NV_NVDLA_CSC_dl_for_check.scala 212:15:@171.4]
  assign _GEN_12 = layer_st ? sub_h_total_w : sub_h_total_g5; // @[NV_NVDLA_CSC_dl_for_check.scala 212:15:@171.4]
  assign _GEN_13 = layer_st ? sub_h_total_w : sub_h_total_g6; // @[NV_NVDLA_CSC_dl_for_check.scala 212:15:@171.4]
  assign _GEN_15 = layer_st ? sub_h_total_w : sub_h_total_g8; // @[NV_NVDLA_CSC_dl_for_check.scala 212:15:@171.4]
  assign _GEN_16 = layer_st ? sub_h_total_w : sub_h_total_g9; // @[NV_NVDLA_CSC_dl_for_check.scala 212:15:@171.4]
  assign _GEN_18 = layer_st ? sub_h_total_w : sub_h_total_g11; // @[NV_NVDLA_CSC_dl_for_check.scala 212:15:@171.4]
  assign _GEN_19 = layer_st ? sub_h_cmp_w : sub_h_cmp_g0; // @[NV_NVDLA_CSC_dl_for_check.scala 212:15:@171.4]
  assign _GEN_20 = layer_st ? sub_h_cmp_w : sub_h_cmp_g1; // @[NV_NVDLA_CSC_dl_for_check.scala 212:15:@171.4]
  assign _GEN_21 = layer_st ? conv_x_stride_w : conv_x_stride; // @[NV_NVDLA_CSC_dl_for_check.scala 212:15:@171.4]
  assign _GEN_22 = layer_st ? conv_y_stride_w : conv_y_stride; // @[NV_NVDLA_CSC_dl_for_check.scala 212:15:@171.4]
  assign _GEN_24 = layer_st ? 6'h1 : data_batch; // @[NV_NVDLA_CSC_dl_for_check.scala 212:15:@171.4]
  assign _GEN_25 = layer_st ? 5'h0 : batch_cmp; // @[NV_NVDLA_CSC_dl_for_check.scala 212:15:@171.4]
  assign _GEN_26 = layer_st ? pixel_x_init_w : pixel_x_init; // @[NV_NVDLA_CSC_dl_for_check.scala 212:15:@171.4]
  assign _GEN_27 = layer_st ? pixel_x_init_offset_w : pixel_x_init_offset; // @[NV_NVDLA_CSC_dl_for_check.scala 212:15:@171.4]
  assign _GEN_28 = layer_st ? pixel_x_add_w : pixel_x_add; // @[NV_NVDLA_CSC_dl_for_check.scala 212:15:@171.4]
  assign _GEN_29 = layer_st ? {{1'd0}, pixel_x_stride_w} : pixel_x_byte_stride; // @[NV_NVDLA_CSC_dl_for_check.scala 212:15:@171.4]
  assign _GEN_30 = layer_st ? pixel_ch_stride_w : pixel_ch_stride; // @[NV_NVDLA_CSC_dl_for_check.scala 212:15:@171.4]
  assign _GEN_31 = layer_st ? x_dilate_w : x_dilate; // @[NV_NVDLA_CSC_dl_for_check.scala 212:15:@171.4]
  assign _GEN_32 = layer_st ? y_dilate_w : y_dilate; // @[NV_NVDLA_CSC_dl_for_check.scala 212:15:@171.4]
  assign _GEN_33 = layer_st ? reg2dp_pad_value : pad_value; // @[NV_NVDLA_CSC_dl_for_check.scala 212:15:@171.4]
  assign _GEN_34 = layer_st ? entries_single_w : entries; // @[NV_NVDLA_CSC_dl_for_check.scala 212:15:@171.4]
  assign _GEN_35 = layer_st ? entries_batch_w : entries_batch; // @[NV_NVDLA_CSC_dl_for_check.scala 212:15:@171.4]
  assign _GEN_36 = layer_st ? _T_687 : entries_cmp; // @[NV_NVDLA_CSC_dl_for_check.scala 212:15:@171.4]
  assign _GEN_37 = layer_st ? {{2'd0}, h_offset_slice_w} : h_offset_slice; // @[NV_NVDLA_CSC_dl_for_check.scala 212:15:@171.4]
  assign _GEN_38 = layer_st ? {{2'd0}, rls_slices_w} : rls_slices; // @[NV_NVDLA_CSC_dl_for_check.scala 212:15:@171.4]
  assign _GEN_39 = layer_st ? slice_left_w : slice_left; // @[NV_NVDLA_CSC_dl_for_check.scala 212:15:@171.4]
  assign _GEN_40 = layer_st ? reg2dp_dataout_width : dataout_width_cmp; // @[NV_NVDLA_CSC_dl_for_check.scala 212:15:@171.4]
  assign _GEN_43 = layer_st_d1 ? h_bias_0_stride_w : h_bias_0_stride; // @[NV_NVDLA_CSC_dl_for_check.scala 257:18:@232.4]
  assign _GEN_44 = layer_st_d1 ? h_bias_1_stride_w : h_bias_1_stride; // @[NV_NVDLA_CSC_dl_for_check.scala 257:18:@232.4]
  assign _GEN_45 = layer_st_d1 ? entries : h_bias_2_stride; // @[NV_NVDLA_CSC_dl_for_check.scala 257:18:@232.4]
  assign _GEN_46 = layer_st_d1 ? entries : h_bias_3_stride; // @[NV_NVDLA_CSC_dl_for_check.scala 257:18:@232.4]
  assign _GEN_47 = layer_st_d1 ? slice_entries_w : rls_entries; // @[NV_NVDLA_CSC_dl_for_check.scala 257:18:@232.4]
  assign _GEN_48 = is_sg_done ? slice_left : last_slices; // @[NV_NVDLA_CSC_dl_for_check.scala 264:17:@239.4]
  assign _GEN_49 = is_sg_done ? slice_entries_w : last_entries; // @[NV_NVDLA_CSC_dl_for_check.scala 264:17:@239.4]
  assign _T_764 = last_slices != 14'h0; // @[NV_NVDLA_CSC_dl_for_check.scala 328:37:@314.4]
  assign _T_765 = sg2dl_reuse_rls & _T_764; // @[NV_NVDLA_CSC_dl_for_check.scala 328:23:@315.4]
  assign _T_1642 = sub_h_total_g3[2]; // @[NV_NVDLA_CSC_dl_for_check.scala 918:32:@1229.4]
  assign _T_1643 = _T_1642 & dat_rsp_l3_pvld; // @[NV_NVDLA_CSC_dl_for_check.scala 918:36:@1230.4]
  assign _T_1644 = sub_h_total_g3[1]; // @[NV_NVDLA_CSC_dl_for_check.scala 919:35:@1231.4]
  assign _T_1645 = _T_1644 & dat_rsp_l1_pvld; // @[NV_NVDLA_CSC_dl_for_check.scala 919:39:@1232.4]
  assign _T_1646 = _T_1643 | _T_1645; // @[NV_NVDLA_CSC_dl_for_check.scala 918:57:@1233.4]
  assign _T_1647 = sub_h_total_g3[0]; // @[NV_NVDLA_CSC_dl_for_check.scala 920:35:@1234.4]
  assign _T_1648 = _T_1647 & dat_rsp_l0_pvld; // @[NV_NVDLA_CSC_dl_for_check.scala 920:39:@1235.4]
  assign dat_rsp_pvld = _T_1646 | _T_1648; // @[NV_NVDLA_CSC_dl_for_check.scala 919:60:@1236.4]
  assign _T_1650 = sub_h_total_g4[2]; // @[NV_NVDLA_CSC_dl_for_check.scala 927:42:@1238.4]
  assign _T_1654 = _T_1650 ? 27'h7ffffff : 27'h0; // @[Bitwise.scala 72:12:@1240.4]
  assign _T_1655 = _T_1654 & _T_1632; // @[NV_NVDLA_CSC_dl_for_check.scala 927:47:@1241.4]
  assign _T_1656 = sub_h_total_g4[1]; // @[NV_NVDLA_CSC_dl_for_check.scala 928:42:@1242.4]
  assign _T_1660 = _T_1656 ? 27'h7ffffff : 27'h0; // @[Bitwise.scala 72:12:@1244.4]
  assign _T_1661 = _T_1660 & _T_1626; // @[NV_NVDLA_CSC_dl_for_check.scala 928:47:@1245.4]
  assign _T_1662 = _T_1655 | _T_1661; // @[NV_NVDLA_CSC_dl_for_check.scala 927:66:@1246.4]
  assign _T_1663 = sub_h_total_g4[0]; // @[NV_NVDLA_CSC_dl_for_check.scala 929:42:@1247.4]
  assign _T_1667 = _T_1663 ? 27'h7ffffff : 27'h0; // @[Bitwise.scala 72:12:@1249.4]
  assign _T_1668 = _T_1667 & _T_1623; // @[NV_NVDLA_CSC_dl_for_check.scala 929:47:@1250.4]
  assign dat_rsp_pd = _T_1662 | _T_1668; // @[NV_NVDLA_CSC_dl_for_check.scala 928:66:@1251.4]
  assign dat_rsp_rls = dat_rsp_pd[17]; // @[NV_NVDLA_CSC_dl_for_check.scala 953:26:@1270.4]
  assign sub_rls = dat_rsp_pvld & dat_rsp_rls; // @[NV_NVDLA_CSC_dl_for_check.scala 325:29:@313.4]
  assign _T_767 = rls_slices != 14'h0; // @[NV_NVDLA_CSC_dl_for_check.scala 328:66:@316.4]
  assign _T_768 = sub_rls & _T_767; // @[NV_NVDLA_CSC_dl_for_check.scala 328:53:@317.4]
  assign dat_rls = _T_765 | _T_768; // @[NV_NVDLA_CSC_dl_for_check.scala 328:42:@318.4]
  assign sc2cdma_dat_slices_w = sub_rls ? rls_slices : last_slices; // @[NV_NVDLA_CSC_dl_for_check.scala 329:28:@320.4]
  assign sc2cdma_dat_entries_w = sub_rls ? rls_entries : last_entries; // @[NV_NVDLA_CSC_dl_for_check.scala 330:29:@322.4]
  assign dat_entry_avl_sub = dat_rls ? sc2cdma_dat_entries_w : 15'h0; // @[NV_NVDLA_CSC_dl_for_check.scala 297:28:@262.4]
  assign _T_721 = dat_entry_st + dat_entry_avl_sub; // @[NV_NVDLA_CSC_dl_for_check.scala 302:37:@269.4]
  assign dat_entry_st_inc = dat_entry_st + dat_entry_avl_sub; // @[NV_NVDLA_CSC_dl_for_check.scala 302:37:@270.4]
  assign _T_727 = {data_bank,9'h0}; // @[Cat.scala 30:58:@272.4]
  assign _GEN_678 = {{1'd0}, _T_727}; // @[NV_NVDLA_CSC_dl_for_check.scala 303:46:@273.4]
  assign _T_728 = dat_entry_st_inc - _GEN_678; // @[NV_NVDLA_CSC_dl_for_check.scala 303:46:@273.4]
  assign _T_729 = $unsigned(_T_728); // @[NV_NVDLA_CSC_dl_for_check.scala 303:46:@274.4]
  assign dat_entry_st_inc_wrap = _T_729[14:0]; // @[NV_NVDLA_CSC_dl_for_check.scala 303:46:@275.4]
  assign is_dat_entry_st_wrap = dat_entry_st_inc >= _GEN_678; // @[NV_NVDLA_CSC_dl_for_check.scala 304:45:@278.4]
  assign _T_737 = is_dat_entry_st_wrap ? dat_entry_st_inc_wrap : dat_entry_st_inc; // @[NV_NVDLA_CSC_dl_for_check.scala 305:83:@279.4]
  assign dat_entry_st_w = sc2cdma_dat_pending_req ? 15'h0 : _T_737; // @[NV_NVDLA_CSC_dl_for_check.scala 305:25:@280.4]
  assign _T_759 = dat_rls | sc2cdma_dat_pending_req; // @[NV_NVDLA_CSC_dl_for_check.scala 316:13:@303.4]
  assign _GEN_52 = _T_759 ? dat_entry_st_w : dat_entry_st; // @[NV_NVDLA_CSC_dl_for_check.scala 316:25:@304.4]
  assign _GEN_54 = dat_rls ? sc2cdma_dat_slices_w : _T_777; // @[Reg.scala 20:19:@328.4]
  assign _GEN_55 = dat_rls ? sc2cdma_dat_entries_w : _T_780; // @[Reg.scala 20:19:@333.4]
  assign _T_829 = {{30'd0}, dl_in_pvld}; // @[NV_NVDLA_CSC_dl_for_check.scala 365:19:@376.4 NV_NVDLA_CSC_dl_for_check.scala 369:12:@382.4]
  assign _GEN_61 = dl_in_pvld ? _T_829 : _T_832; // @[NV_NVDLA_CSC_dl_for_check.scala 373:23:@384.4]
  assign _GEN_62 = _T_818 ? _T_832 : _T_835; // @[NV_NVDLA_CSC_dl_for_check.scala 373:23:@388.4]
  assign _GEN_63 = _T_821 ? _T_835 : _T_838; // @[NV_NVDLA_CSC_dl_for_check.scala 373:23:@392.4]
  assign _GEN_64 = _T_824 ? _T_838 : _T_841; // @[NV_NVDLA_CSC_dl_for_check.scala 373:23:@396.4]
  assign _T_842 = sub_h_total_g0[2]; // @[NV_NVDLA_CSC_dl_for_check.scala 378:30:@399.4]
  assign _T_843 = _T_842 & _T_818; // @[NV_NVDLA_CSC_dl_for_check.scala 378:34:@400.4]
  assign _T_844 = sub_h_total_g0[1]; // @[NV_NVDLA_CSC_dl_for_check.scala 379:30:@401.4]
  assign _T_845 = _T_844 & _T_824; // @[NV_NVDLA_CSC_dl_for_check.scala 379:34:@402.4]
  assign _T_846 = _T_843 | _T_845; // @[NV_NVDLA_CSC_dl_for_check.scala 378:50:@403.4]
  assign _T_847 = sub_h_total_g0[0]; // @[NV_NVDLA_CSC_dl_for_check.scala 380:30:@404.4]
  assign _T_848 = _T_847 & _T_827; // @[NV_NVDLA_CSC_dl_for_check.scala 380:34:@405.4]
  assign dl_pvld = _T_846 | _T_848; // @[NV_NVDLA_CSC_dl_for_check.scala 379:50:@406.4]
  assign _T_849 = sub_h_total_g1[2]; // @[NV_NVDLA_CSC_dl_for_check.scala 382:37:@407.4]
  assign _T_853 = _T_849 ? 31'h7fffffff : 31'h0; // @[Bitwise.scala 72:12:@409.4]
  assign _T_854 = _T_853 & _T_832; // @[NV_NVDLA_CSC_dl_for_check.scala 382:42:@410.4]
  assign _T_855 = sub_h_total_g1[1]; // @[NV_NVDLA_CSC_dl_for_check.scala 383:37:@411.4]
  assign _T_859 = _T_855 ? 31'h7fffffff : 31'h0; // @[Bitwise.scala 72:12:@413.4]
  assign _T_860 = _T_859 & _T_838; // @[NV_NVDLA_CSC_dl_for_check.scala 383:42:@414.4]
  assign _T_861 = _T_854 | _T_860; // @[NV_NVDLA_CSC_dl_for_check.scala 382:56:@415.4]
  assign _T_862 = sub_h_total_g1[0]; // @[NV_NVDLA_CSC_dl_for_check.scala 384:37:@416.4]
  assign _T_866 = _T_862 ? 31'h7fffffff : 31'h0; // @[Bitwise.scala 72:12:@418.4]
  assign _T_867 = _T_866 & _T_841; // @[NV_NVDLA_CSC_dl_for_check.scala 384:42:@419.4]
  assign dl_pd = _T_861 | _T_867; // @[NV_NVDLA_CSC_dl_for_check.scala 383:56:@420.4]
  assign dl_w_offset = dl_pd[4:0]; // @[NV_NVDLA_CSC_dl_for_check.scala 387:24:@421.4]
  assign dl_h_offset = dl_pd[9:5]; // @[NV_NVDLA_CSC_dl_for_check.scala 388:24:@422.4]
  assign dl_channel_size = dl_pd[16:10]; // @[NV_NVDLA_CSC_dl_for_check.scala 389:28:@423.4]
  assign dl_stripe_length = dl_pd[23:17]; // @[NV_NVDLA_CSC_dl_for_check.scala 390:29:@424.4]
  assign dl_cur_sub_h = dl_pd[25:24]; // @[NV_NVDLA_CSC_dl_for_check.scala 391:25:@425.4]
  assign dl_block_end = dl_pd[26]; // @[NV_NVDLA_CSC_dl_for_check.scala 392:25:@426.4]
  assign dl_channel_end = dl_pd[27]; // @[NV_NVDLA_CSC_dl_for_check.scala 393:27:@427.4]
  assign dl_group_end = dl_pd[28]; // @[NV_NVDLA_CSC_dl_for_check.scala 394:25:@428.4]
  assign dl_layer_end = dl_pd[29]; // @[NV_NVDLA_CSC_dl_for_check.scala 395:25:@429.4]
  assign dl_dat_release = dl_pd[30]; // @[NV_NVDLA_CSC_dl_for_check.scala 396:27:@430.4]
  assign _T_875 = batch_cnt + 5'h1; // @[NV_NVDLA_CSC_dl_for_check.scala 405:24:@434.4]
  assign _T_876 = batch_cnt + 5'h1; // @[NV_NVDLA_CSC_dl_for_check.scala 405:24:@435.4]
  assign is_batch_end = batch_cnt == batch_cmp; // @[NV_NVDLA_CSC_dl_for_check.scala 407:27:@439.4]
  assign _T_877 = is_batch_end ? 5'h0 : _T_876; // @[NV_NVDLA_CSC_dl_for_check.scala 404:17:@436.4]
  assign _T_878 = layer_st ? 5'h0 : _T_877; // @[NV_NVDLA_CSC_dl_for_check.scala 403:17:@437.4]
  assign _T_884 = sub_h_cnt + 2'h1; // @[NV_NVDLA_CSC_dl_for_check.scala 413:31:@443.4]
  assign sub_h_cnt_inc = sub_h_cnt + 2'h1; // @[NV_NVDLA_CSC_dl_for_check.scala 413:31:@444.4]
  assign _GEN_682 = {{1'd0}, sub_h_cnt_inc}; // @[NV_NVDLA_CSC_dl_for_check.scala 414:32:@445.4]
  assign is_sub_h_end = _GEN_682 == sub_h_cmp_g0; // @[NV_NVDLA_CSC_dl_for_check.scala 414:32:@445.4]
  assign _T_887 = reg2dp_y_extension != 2'h0; // @[NV_NVDLA_CSC_dl_for_check.scala 415:61:@447.4]
  assign _T_924 = stripe_cnt != 7'h0; // @[NV_NVDLA_CSC_dl_for_check.scala 448:37:@484.4]
  assign _T_925 = ~ _T_924; // @[NV_NVDLA_CSC_dl_for_check.scala 448:24:@485.4]
  assign _T_927 = sub_h_cnt != 2'h0; // @[NV_NVDLA_CSC_dl_for_check.scala 448:56:@486.4]
  assign _T_928 = ~ _T_927; // @[NV_NVDLA_CSC_dl_for_check.scala 448:44:@487.4]
  assign _T_929 = _T_925 & _T_928; // @[NV_NVDLA_CSC_dl_for_check.scala 448:42:@488.4]
  assign _T_931 = batch_cnt != 5'h0; // @[NV_NVDLA_CSC_dl_for_check.scala 448:75:@489.4]
  assign _T_932 = ~ _T_931; // @[NV_NVDLA_CSC_dl_for_check.scala 448:63:@490.4]
  assign _T_933 = _T_929 & _T_932; // @[NV_NVDLA_CSC_dl_for_check.scala 448:61:@491.4]
  assign _T_935 = _T_933 ? 1'h0 : dat_exec_valid_d1; // @[NV_NVDLA_CSC_dl_for_check.scala 448:22:@492.4]
  assign dat_exec_valid = dl_pvld ? 1'h1 : _T_935; // @[NV_NVDLA_CSC_dl_for_check.scala 447:22:@493.4]
  assign _T_888 = _T_887 & dat_exec_valid; // @[NV_NVDLA_CSC_dl_for_check.scala 415:66:@448.4]
  assign sub_h_cnt_reg_en = layer_st | _T_888; // @[NV_NVDLA_CSC_dl_for_check.scala 415:33:@449.4]
  assign _T_889 = layer_st | is_sub_h_end; // @[NV_NVDLA_CSC_dl_for_check.scala 417:31:@451.6]
  assign _T_891 = _T_889 ? 2'h0 : sub_h_cnt_inc; // @[NV_NVDLA_CSC_dl_for_check.scala 417:21:@452.6]
  assign _GEN_65 = sub_h_cnt_reg_en ? _T_891 : sub_h_cnt; // @[NV_NVDLA_CSC_dl_for_check.scala 416:23:@450.4]
  assign _T_897 = stripe_cnt + 7'h1; // @[NV_NVDLA_CSC_dl_for_check.scala 425:33:@458.4]
  assign stripe_cnt_inc = stripe_cnt + 7'h1; // @[NV_NVDLA_CSC_dl_for_check.scala 425:33:@459.4]
  assign _T_898 = stripe_cnt_inc == dl_stripe_length; // @[NV_NVDLA_CSC_dl_for_check.scala 426:51:@460.4]
  assign is_stripe_equal = is_batch_end & _T_898; // @[NV_NVDLA_CSC_dl_for_check.scala 426:33:@461.4]
  assign is_stripe_end = is_stripe_equal & is_sub_h_end; // @[NV_NVDLA_CSC_dl_for_check.scala 427:34:@463.4]
  assign _T_901 = dat_exec_valid & is_batch_end; // @[NV_NVDLA_CSC_dl_for_check.scala 428:52:@465.4]
  assign stripe_cnt_reg_en = layer_st | _T_901; // @[NV_NVDLA_CSC_dl_for_check.scala 428:34:@466.4]
  assign _T_903 = ~ is_sub_h_end; // @[NV_NVDLA_CSC_dl_for_check.scala 432:41:@468.6]
  assign _T_904 = is_stripe_equal & _T_903; // @[NV_NVDLA_CSC_dl_for_check.scala 432:39:@469.6]
  assign _T_907 = is_stripe_end ? 7'h0 : stripe_cnt_inc; // @[NV_NVDLA_CSC_dl_for_check.scala 433:22:@470.6]
  assign _T_908 = _T_904 ? 7'h0 : _T_907; // @[NV_NVDLA_CSC_dl_for_check.scala 432:22:@471.6]
  assign _T_909 = layer_st ? 7'h0 : _T_908; // @[NV_NVDLA_CSC_dl_for_check.scala 431:22:@472.6]
  assign _GEN_66 = stripe_cnt_reg_en ? _T_909 : stripe_cnt; // @[NV_NVDLA_CSC_dl_for_check.scala 430:24:@467.4]
  assign dat_pipe_valid = dl_pvld | dat_pipe_local_valid; // @[NV_NVDLA_CSC_dl_for_check.scala 446:27:@482.4]
  assign _T_917 = dat_pipe_valid & is_stripe_equal; // @[NV_NVDLA_CSC_dl_for_check.scala 443:49:@479.4]
  assign _T_920 = dl_pvld ? 1'h1 : dat_pipe_local_valid; // @[NV_NVDLA_CSC_dl_for_check.scala 444:32:@480.4]
  assign dat_pipe_local_valid_w = _T_917 ? 1'h0 : _T_920; // @[NV_NVDLA_CSC_dl_for_check.scala 443:33:@481.4]
  assign dat_req_bytes = {1'h0,dl_channel_size}; // @[Cat.scala 30:58:@499.4]
  assign _GEN_67 = dat_exec_valid ? dat_req_bytes : dat_req_bytes_d1; // @[NV_NVDLA_CSC_dl_for_check.scala 458:21:@500.4]
  assign _GEN_683 = {{10'd0}, sub_h_cmp_g1}; // @[NV_NVDLA_CSC_dl_for_check.scala 468:39:@505.4]
  assign _T_944 = dataout_w_cnt + _GEN_683; // @[NV_NVDLA_CSC_dl_for_check.scala 468:39:@505.4]
  assign dataout_w_cnt_inc = dataout_w_cnt + _GEN_683; // @[NV_NVDLA_CSC_dl_for_check.scala 468:39:@506.4]
  assign _T_945 = is_batch_end & is_sub_h_end; // @[NV_NVDLA_CSC_dl_for_check.scala 469:29:@507.4]
  assign _T_946 = dataout_w_cnt >= dataout_width_cmp; // @[NV_NVDLA_CSC_dl_for_check.scala 469:61:@508.4]
  assign is_w_end = _T_945 & _T_946; // @[NV_NVDLA_CSC_dl_for_check.scala 469:44:@509.4]
  assign _T_948 = ~ dl_channel_end; // @[NV_NVDLA_CSC_dl_for_check.scala 472:43:@512.4]
  assign _T_949 = is_stripe_end & _T_948; // @[NV_NVDLA_CSC_dl_for_check.scala 472:41:@513.4]
  assign _T_950 = is_w_end ? {{9'd0}, dataout_w_init} : dataout_w_cnt_inc; // @[NV_NVDLA_CSC_dl_for_check.scala 473:26:@514.4]
  assign _T_951 = _T_949 ? dataout_w_ori : _T_950; // @[NV_NVDLA_CSC_dl_for_check.scala 472:26:@515.4]
  assign dataout_w_cnt_w = layer_st ? {{9'd0}, dataout_w_init} : _T_951; // @[NV_NVDLA_CSC_dl_for_check.scala 471:26:@516.4]
  assign _T_953 = _T_901 & is_sub_h_end; // @[NV_NVDLA_CSC_dl_for_check.scala 474:70:@518.4]
  assign dataout_w_cnt_reg_en = layer_st | _T_953; // @[NV_NVDLA_CSC_dl_for_check.scala 474:37:@519.4]
  assign _T_954 = dat_exec_valid & is_stripe_end; // @[NV_NVDLA_CSC_dl_for_check.scala 475:55:@520.4]
  assign _T_955 = _T_954 & dl_channel_end; // @[NV_NVDLA_CSC_dl_for_check.scala 475:71:@521.4]
  assign dataout_w_ori_reg_en = layer_st | _T_955; // @[NV_NVDLA_CSC_dl_for_check.scala 475:37:@522.4]
  assign _GEN_68 = dataout_w_cnt_reg_en ? dataout_w_cnt_w : dataout_w_cnt; // @[NV_NVDLA_CSC_dl_for_check.scala 477:27:@523.4]
  assign _GEN_69 = dataout_w_ori_reg_en ? dataout_w_cnt_w : dataout_w_ori; // @[NV_NVDLA_CSC_dl_for_check.scala 480:27:@526.4]
  assign is_last_channel = datain_c_cnt == datain_channel_cmp; // @[NV_NVDLA_CSC_dl_for_check.scala 487:37:@530.4]
  assign _T_959 = _T_954 & dl_block_end; // @[NV_NVDLA_CSC_dl_for_check.scala 488:70:@532.4]
  assign datain_c_cnt_reg_en = layer_st | _T_959; // @[NV_NVDLA_CSC_dl_for_check.scala 488:36:@533.4]
  assign _T_963 = datain_c_cnt + 11'h1; // @[NV_NVDLA_CSC_dl_for_check.scala 493:34:@535.6]
  assign _T_964 = datain_c_cnt + 11'h1; // @[NV_NVDLA_CSC_dl_for_check.scala 493:34:@536.6]
  assign _T_965 = dl_channel_end ? 11'h0 : _T_964; // @[NV_NVDLA_CSC_dl_for_check.scala 492:24:@537.6]
  assign _T_966 = layer_st ? 11'h0 : _T_965; // @[NV_NVDLA_CSC_dl_for_check.scala 491:24:@538.6]
  assign _GEN_70 = datain_c_cnt_reg_en ? _T_966 : datain_c_cnt; // @[NV_NVDLA_CSC_dl_for_check.scala 490:26:@534.4]
  assign _GEN_684 = {{8'd0}, reg2dp_pad_left}; // @[NV_NVDLA_CSC_dl_for_check.scala 508:41:@550.4]
  assign _T_986 = 13'h0 - _GEN_684; // @[NV_NVDLA_CSC_dl_for_check.scala 508:41:@550.4]
  assign _T_987 = $unsigned(_T_986); // @[NV_NVDLA_CSC_dl_for_check.scala 508:41:@551.4]
  assign datain_w_cnt_st = is_img ? 14'h0 : _T_987; // @[NV_NVDLA_CSC_dl_for_check.scala 507:26:@552.4]
  assign _GEN_685 = {{10'd0}, conv_x_stride}; // @[NV_NVDLA_CSC_dl_for_check.scala 509:37:@553.4]
  assign _T_988 = datain_w_cnt + _GEN_685; // @[NV_NVDLA_CSC_dl_for_check.scala 509:37:@553.4]
  assign datain_w_cnt_inc = datain_w_cnt + _GEN_685; // @[NV_NVDLA_CSC_dl_for_check.scala 509:37:@554.4]
  assign _T_991 = is_w_end ? datain_w_cnt_st : datain_w_cnt_inc; // @[NV_NVDLA_CSC_dl_for_check.scala 514:25:@557.4]
  assign _T_992 = _T_949 ? datain_w_ori : _T_991; // @[NV_NVDLA_CSC_dl_for_check.scala 513:25:@558.4]
  assign datain_w_cnt_w = layer_st ? datain_w_cnt_st : _T_992; // @[NV_NVDLA_CSC_dl_for_check.scala 512:25:@559.4]
  assign _GEN_686 = {{1'd0}, dl_w_offset}; // @[NV_NVDLA_CSC_dl_for_check.scala 516:35:@560.4]
  assign dl_w_offset_ext = _GEN_686 * x_dilate; // @[NV_NVDLA_CSC_dl_for_check.scala 516:35:@560.4]
  assign _GEN_687 = {{3'd0}, dl_w_offset_ext}; // @[NV_NVDLA_CSC_dl_for_check.scala 517:33:@561.4]
  assign _T_993 = datain_w_cnt + _GEN_687; // @[NV_NVDLA_CSC_dl_for_check.scala 517:33:@561.4]
  assign datain_w_cur = datain_w_cnt + _GEN_687; // @[NV_NVDLA_CSC_dl_for_check.scala 517:33:@562.4]
  assign _T_996 = is_img_d1[0]; // @[NV_NVDLA_CSC_dl_for_check.scala 518:96:@565.4]
  assign _T_997 = ~ _T_996; // @[NV_NVDLA_CSC_dl_for_check.scala 518:86:@566.4]
  assign _T_998 = _T_953 & _T_997; // @[NV_NVDLA_CSC_dl_for_check.scala 518:84:@567.4]
  assign datain_w_cnt_reg_en = layer_st | _T_998; // @[NV_NVDLA_CSC_dl_for_check.scala 518:36:@568.4]
  assign _T_1001 = is_img_d1[1]; // @[NV_NVDLA_CSC_dl_for_check.scala 519:99:@571.4]
  assign _T_1002 = ~ _T_1001; // @[NV_NVDLA_CSC_dl_for_check.scala 519:89:@572.4]
  assign _T_1003 = _T_955 & _T_1002; // @[NV_NVDLA_CSC_dl_for_check.scala 519:87:@573.4]
  assign datain_w_ori_reg_en = layer_st | _T_1003; // @[NV_NVDLA_CSC_dl_for_check.scala 519:36:@574.4]
  assign pixel_x_cnt_add = is_sub_h_end ? pixel_x_add : 8'h0; // @[NV_NVDLA_CSC_dl_for_check.scala 522:26:@575.4]
  assign _T_1007 = _T_371 == 6'h0; // @[NV_NVDLA_CSC_dl_for_check.scala 524:79:@577.4]
  assign _T_1011 = _T_682 + 7'h1; // @[NV_NVDLA_CSC_dl_for_check.scala 525:74:@580.4]
  assign _T_1012 = _T_682 + 7'h1; // @[NV_NVDLA_CSC_dl_for_check.scala 525:74:@581.4]
  assign total_channel_op = _T_1007 ? _T_682 : _T_1012; // @[NV_NVDLA_CSC_dl_for_check.scala 524:27:@582.4]
  assign _T_1013 = dl_channel_end & is_stripe_end; // @[NV_NVDLA_CSC_dl_for_check.scala 526:37:@583.4]
  assign _T_1015 = dl_block_end & is_stripe_end; // @[NV_NVDLA_CSC_dl_for_check.scala 527:35:@584.4]
  assign _T_1017 = channel_op_cnt + 13'h1; // @[NV_NVDLA_CSC_dl_for_check.scala 527:66:@585.4]
  assign _T_1018 = channel_op_cnt + 13'h1; // @[NV_NVDLA_CSC_dl_for_check.scala 527:66:@586.4]
  assign _T_1019 = _T_1015 ? _T_1018 : channel_op_cnt; // @[NV_NVDLA_CSC_dl_for_check.scala 527:22:@587.4]
  assign _T_1020 = _T_1013 ? 13'h2 : _T_1019; // @[NV_NVDLA_CSC_dl_for_check.scala 526:22:@588.4]
  assign _GEN_688 = {{6'd0}, total_channel_op}; // @[NV_NVDLA_CSC_dl_for_check.scala 529:44:@590.4]
  assign next_is_last_channel = channel_op_cnt >= _GEN_688; // @[NV_NVDLA_CSC_dl_for_check.scala 529:44:@590.4]
  assign _T_1021 = is_stripe_end & dl_block_end; // @[NV_NVDLA_CSC_dl_for_check.scala 533:39:@591.4]
  assign _T_1022 = _T_1021 & dl_channel_end; // @[NV_NVDLA_CSC_dl_for_check.scala 533:54:@592.4]
  assign _T_1023 = _T_1022 & is_w_end; // @[NV_NVDLA_CSC_dl_for_check.scala 533:71:@593.4]
  assign _T_1026 = ~ is_w_end; // @[NV_NVDLA_CSC_dl_for_check.scala 534:73:@596.4]
  assign _T_1027 = _T_1022 & _T_1026; // @[NV_NVDLA_CSC_dl_for_check.scala 534:71:@597.4]
  assign _GEN_689 = {{4'd0}, pixel_ch_stride}; // @[NV_NVDLA_CSC_dl_for_check.scala 534:99:@598.4]
  assign _T_1028 = pixel_w_ch_ori + _GEN_689; // @[NV_NVDLA_CSC_dl_for_check.scala 534:99:@598.4]
  assign _T_1029 = pixel_w_ch_ori + _GEN_689; // @[NV_NVDLA_CSC_dl_for_check.scala 534:99:@599.4]
  assign _T_1031 = _T_1021 & next_is_last_channel; // @[NV_NVDLA_CSC_dl_for_check.scala 535:54:@601.4]
  assign _GEN_690 = {{9'd0}, pixel_x_init_offset}; // @[NV_NVDLA_CSC_dl_for_check.scala 535:90:@602.4]
  assign _T_1032 = pixel_w_ori + _GEN_690; // @[NV_NVDLA_CSC_dl_for_check.scala 535:90:@602.4]
  assign _T_1033 = pixel_w_ori + _GEN_690; // @[NV_NVDLA_CSC_dl_for_check.scala 535:90:@603.4]
  assign _T_1035 = ~ next_is_last_channel; // @[NV_NVDLA_CSC_dl_for_check.scala 536:56:@605.4]
  assign _T_1036 = _T_1021 & _T_1035; // @[NV_NVDLA_CSC_dl_for_check.scala 536:54:@606.4]
  assign _T_1038 = pixel_w_ori + 16'h40; // @[NV_NVDLA_CSC_dl_for_check.scala 536:91:@607.4]
  assign _T_1039 = pixel_w_ori + 16'h40; // @[NV_NVDLA_CSC_dl_for_check.scala 536:91:@608.4]
  assign _T_1040 = ~ dl_block_end; // @[NV_NVDLA_CSC_dl_for_check.scala 537:41:@609.4]
  assign _T_1041 = is_stripe_end & _T_1040; // @[NV_NVDLA_CSC_dl_for_check.scala 537:39:@610.4]
  assign _GEN_691 = {{8'd0}, pixel_x_cnt_add}; // @[NV_NVDLA_CSC_dl_for_check.scala 537:81:@611.4]
  assign _T_1042 = pixel_w_cnt + _GEN_691; // @[NV_NVDLA_CSC_dl_for_check.scala 537:81:@611.4]
  assign _T_1043 = pixel_w_cnt + _GEN_691; // @[NV_NVDLA_CSC_dl_for_check.scala 537:81:@612.4]
  assign _T_1044 = _T_1041 ? pixel_w_ori : _T_1043; // @[NV_NVDLA_CSC_dl_for_check.scala 537:24:@613.4]
  assign _T_1045 = _T_1036 ? _T_1039 : _T_1044; // @[NV_NVDLA_CSC_dl_for_check.scala 536:24:@614.4]
  assign _T_1046 = _T_1031 ? _T_1033 : _T_1045; // @[NV_NVDLA_CSC_dl_for_check.scala 535:24:@615.4]
  assign _T_1047 = _T_1027 ? _T_1029 : _T_1046; // @[NV_NVDLA_CSC_dl_for_check.scala 534:24:@616.4]
  assign _T_1048 = _T_1023 ? {{9'd0}, pixel_x_init} : _T_1047; // @[NV_NVDLA_CSC_dl_for_check.scala 533:24:@617.4]
  assign pixel_w_cnt_w = layer_st_d1 ? {{9'd0}, pixel_x_init} : _T_1048; // @[NV_NVDLA_CSC_dl_for_check.scala 532:24:@618.4]
  assign _T_1054 = pixel_w_cnt[15:6]; // @[NV_NVDLA_CSC_dl_for_check.scala 539:68:@620.4]
  assign pixel_w_cur = {5'h0,_T_1054}; // @[Cat.scala 30:58:@621.4]
  assign _T_1063 = is_img_d1[4]; // @[NV_NVDLA_CSC_dl_for_check.scala 542:68:@632.4]
  assign _T_1064 = dat_exec_valid & _T_1063; // @[NV_NVDLA_CSC_dl_for_check.scala 542:57:@633.4]
  assign _T_1065 = _T_1064 & is_stripe_end; // @[NV_NVDLA_CSC_dl_for_check.scala 542:72:@634.4]
  assign _T_1066 = _T_1065 & dl_block_end; // @[NV_NVDLA_CSC_dl_for_check.scala 542:88:@635.4]
  assign _T_1067 = _T_1066 & dl_channel_end; // @[NV_NVDLA_CSC_dl_for_check.scala 542:103:@636.4]
  assign pixel_ch_ori_reg_en = layer_st_d1 | _T_1067; // @[NV_NVDLA_CSC_dl_for_check.scala 542:39:@637.4]
  assign _T_1069 = _T_996 & dl_pvld; // @[NV_NVDLA_CSC_dl_for_check.scala 544:42:@639.4]
  assign _T_1072 = pixel_force_clr_d1 ? 1'h0 : pixel_force_fetch_d1; // @[NV_NVDLA_CSC_dl_for_check.scala 544:74:@640.4]
  assign pixel_force_fetch = _T_1069 ? 1'h1 : _T_1072; // @[NV_NVDLA_CSC_dl_for_check.scala 544:28:@641.4]
  assign _T_1074 = _T_996 & is_sub_h_end; // @[NV_NVDLA_CSC_dl_for_check.scala 545:36:@643.4]
  assign _T_1075 = pixel_force_fetch | pixel_force_fetch_d1; // @[NV_NVDLA_CSC_dl_for_check.scala 545:72:@644.4]
  assign pixel_force_clr = _T_1074 & _T_1075; // @[NV_NVDLA_CSC_dl_for_check.scala 545:51:@645.4]
  assign _GEN_71 = datain_w_cnt_reg_en ? datain_w_cnt_w : datain_w_cnt; // @[NV_NVDLA_CSC_dl_for_check.scala 547:26:@646.4]
  assign _GEN_72 = datain_w_cnt_reg_en ? pixel_w_cnt_w : pixel_w_cnt; // @[NV_NVDLA_CSC_dl_for_check.scala 547:26:@646.4]
  assign _GEN_73 = datain_w_ori_reg_en ? datain_w_cnt_w : datain_w_ori; // @[NV_NVDLA_CSC_dl_for_check.scala 551:26:@650.4]
  assign _GEN_74 = datain_w_ori_reg_en ? pixel_w_cnt_w : pixel_w_ori; // @[NV_NVDLA_CSC_dl_for_check.scala 551:26:@650.4]
  assign _GEN_75 = pixel_ch_ori_reg_en ? pixel_w_cnt_w : pixel_w_ch_ori; // @[NV_NVDLA_CSC_dl_for_check.scala 555:26:@654.4]
  assign _GEN_692 = {{9'd0}, reg2dp_pad_top}; // @[NV_NVDLA_CSC_dl_for_check.scala 564:41:@659.4]
  assign _T_1081 = 14'h0 - _GEN_692; // @[NV_NVDLA_CSC_dl_for_check.scala 564:41:@659.4]
  assign _T_1082 = $unsigned(_T_1081); // @[NV_NVDLA_CSC_dl_for_check.scala 564:41:@660.4]
  assign datain_h_cnt_st = _T_1082[13:0]; // @[NV_NVDLA_CSC_dl_for_check.scala 564:41:@661.4]
  assign _GEN_693 = {{10'd0}, conv_y_stride}; // @[NV_NVDLA_CSC_dl_for_check.scala 565:37:@662.4]
  assign _T_1083 = datain_h_cnt + _GEN_693; // @[NV_NVDLA_CSC_dl_for_check.scala 565:37:@662.4]
  assign datain_h_cnt_inc = datain_h_cnt + _GEN_693; // @[NV_NVDLA_CSC_dl_for_check.scala 565:37:@663.4]
  assign _T_1084 = is_stripe_end & dl_group_end; // @[NV_NVDLA_CSC_dl_for_check.scala 566:52:@664.4]
  assign _T_1085 = layer_st | _T_1084; // @[NV_NVDLA_CSC_dl_for_check.scala 566:35:@665.4]
  assign _T_1088 = is_w_end ? datain_h_cnt_inc : datain_h_cnt; // @[NV_NVDLA_CSC_dl_for_check.scala 568:25:@668.4]
  assign _T_1089 = _T_949 ? datain_h_ori : _T_1088; // @[NV_NVDLA_CSC_dl_for_check.scala 567:25:@669.4]
  assign datain_h_cnt_w = _T_1085 ? datain_h_cnt_st : _T_1089; // @[NV_NVDLA_CSC_dl_for_check.scala 566:25:@670.4]
  assign _T_1092 = _T_949 | is_w_end; // @[NV_NVDLA_CSC_dl_for_check.scala 569:91:@673.4]
  assign _T_1093 = dat_exec_valid & _T_1092; // @[NV_NVDLA_CSC_dl_for_check.scala 569:54:@674.4]
  assign datain_h_cnt_reg_en = layer_st | _T_1093; // @[NV_NVDLA_CSC_dl_for_check.scala 569:36:@675.4]
  assign _GEN_694 = {{1'd0}, dl_h_offset}; // @[NV_NVDLA_CSC_dl_for_check.scala 571:35:@679.4]
  assign dl_h_offset_ext = _GEN_694 * y_dilate; // @[NV_NVDLA_CSC_dl_for_check.scala 571:35:@679.4]
  assign _GEN_695 = {{3'd0}, dl_h_offset_ext}; // @[NV_NVDLA_CSC_dl_for_check.scala 572:33:@680.4]
  assign _T_1096 = datain_h_cnt + _GEN_695; // @[NV_NVDLA_CSC_dl_for_check.scala 572:33:@680.4]
  assign _T_1097 = datain_h_cnt + _GEN_695; // @[NV_NVDLA_CSC_dl_for_check.scala 572:33:@681.4]
  assign _GEN_696 = {{12'd0}, sub_h_cnt}; // @[NV_NVDLA_CSC_dl_for_check.scala 572:51:@682.4]
  assign _T_1098 = _T_1097 + _GEN_696; // @[NV_NVDLA_CSC_dl_for_check.scala 572:51:@682.4]
  assign datain_h_cur = _T_1097 + _GEN_696; // @[NV_NVDLA_CSC_dl_for_check.scala 572:51:@683.4]
  assign _GEN_76 = datain_h_cnt_reg_en ? datain_h_cnt_w : datain_h_cnt; // @[NV_NVDLA_CSC_dl_for_check.scala 574:26:@684.4]
  assign _GEN_77 = dataout_w_ori_reg_en ? datain_h_cnt_w : datain_h_ori; // @[NV_NVDLA_CSC_dl_for_check.scala 575:26:@687.4]
  assign _T_1099 = datain_w_cur[13]; // @[NV_NVDLA_CSC_dl_for_check.scala 578:39:@690.4]
  assign _GEN_697 = {{1'd0}, datain_width_cmp}; // @[NV_NVDLA_CSC_dl_for_check.scala 578:59:@691.4]
  assign _T_1100 = datain_w_cur > _GEN_697; // @[NV_NVDLA_CSC_dl_for_check.scala 578:59:@691.4]
  assign _T_1101 = _T_1099 | _T_1100; // @[NV_NVDLA_CSC_dl_for_check.scala 578:44:@692.4]
  assign _T_1102 = datain_h_cur[13]; // @[NV_NVDLA_CSC_dl_for_check.scala 578:92:@693.4]
  assign _T_1103 = _T_1101 | _T_1102; // @[NV_NVDLA_CSC_dl_for_check.scala 578:78:@694.4]
  assign _GEN_698 = {{1'd0}, datain_height_cmp}; // @[NV_NVDLA_CSC_dl_for_check.scala 578:112:@695.4]
  assign _T_1104 = datain_h_cur > _GEN_698; // @[NV_NVDLA_CSC_dl_for_check.scala 578:112:@695.4]
  assign dat_conv_req_dummy = _T_1103 | _T_1104; // @[NV_NVDLA_CSC_dl_for_check.scala 578:97:@696.4]
  assign dat_img_req_dummy = _T_1102 | _T_1104; // @[NV_NVDLA_CSC_dl_for_check.scala 581:42:@706.4]
  assign _T_1187 = is_img_d1[10]; // @[NV_NVDLA_CSC_dl_for_check.scala 666:33:@792.4]
  assign _T_1188 = ~ is_last_channel; // @[NV_NVDLA_CSC_dl_for_check.scala 667:24:@793.4]
  assign _T_1190 = datain_w_cur[12:0]; // @[NV_NVDLA_CSC_dl_for_check.scala 667:77:@794.4]
  assign _T_1191 = {2'h0,_T_1190}; // @[Cat.scala 30:58:@795.4]
  assign _T_1193 = dat_req_bytes > 8'h20; // @[NV_NVDLA_CSC_dl_for_check.scala 668:38:@796.4]
  assign _T_1198 = datain_w_cur[12:1]; // @[NV_NVDLA_CSC_dl_for_check.scala 669:54:@799.4]
  assign _T_1199 = {3'h0,_T_1198}; // @[Cat.scala 30:58:@800.4]
  assign _T_1200 = _T_1193 ? _T_1191 : _T_1199; // @[NV_NVDLA_CSC_dl_for_check.scala 668:23:@801.4]
  assign _T_1201 = _T_1188 ? _T_1191 : _T_1200; // @[NV_NVDLA_CSC_dl_for_check.scala 667:23:@802.4]
  assign w_bias_int8 = _T_1187 ? pixel_w_cur : _T_1201; // @[NV_NVDLA_CSC_dl_for_check.scala 666:23:@803.4]
  assign w_bias_w = w_bias_int8[13:0]; // @[NV_NVDLA_CSC_dl_for_check.scala 678:24:@805.4]
  assign _T_1116 = w_bias_w[13:2]; // @[NV_NVDLA_CSC_dl_for_check.scala 585:32:@708.4]
  assign _GEN_700 = {{3'd0}, _T_1116}; // @[NV_NVDLA_CSC_dl_for_check.scala 585:40:@709.4]
  assign dat_img_req_skip = _GEN_700 > entries_cmp; // @[NV_NVDLA_CSC_dl_for_check.scala 585:40:@709.4]
  assign _T_1117 = is_img_d1[5]; // @[NV_NVDLA_CSC_dl_for_check.scala 586:34:@710.4]
  assign dat_req_dummy = _T_1117 ? dat_img_req_dummy : dat_conv_req_dummy; // @[NV_NVDLA_CSC_dl_for_check.scala 586:24:@711.4]
  assign _T_1118 = is_img_d1[6]; // @[NV_NVDLA_CSC_dl_for_check.scala 587:29:@712.4]
  assign dat_req_skip = _T_1118 & dat_img_req_skip; // @[NV_NVDLA_CSC_dl_for_check.scala 587:33:@713.4]
  assign _T_1119 = ~ dat_req_dummy; // @[NV_NVDLA_CSC_dl_for_check.scala 588:39:@714.4]
  assign _T_1120 = dat_exec_valid & _T_1119; // @[NV_NVDLA_CSC_dl_for_check.scala 588:37:@715.4]
  assign _T_1121 = ~ dat_req_skip; // @[NV_NVDLA_CSC_dl_for_check.scala 588:56:@716.4]
  assign dat_req_valid = _T_1120 & _T_1121; // @[NV_NVDLA_CSC_dl_for_check.scala 588:54:@717.4]
  assign _T_1122 = is_img_d1[7]; // @[NV_NVDLA_CSC_dl_for_check.scala 591:37:@718.4]
  assign _T_1123 = ~ _T_1122; // @[NV_NVDLA_CSC_dl_for_check.scala 591:27:@719.4]
  assign _T_1124 = datain_c_cnt[0]; // @[NV_NVDLA_CSC_dl_for_check.scala 591:54:@720.4]
  assign dat_req_sub_c_w = _T_1123 ? _T_1124 : dl_block_end; // @[NV_NVDLA_CSC_dl_for_check.scala 591:26:@721.4]
  assign dat_req_sub_w_w = datain_w_cur[1:0]; // @[NV_NVDLA_CSC_dl_for_check.scala 592:35:@722.4]
  assign _T_1126 = sub_h_cnt == 2'h0; // @[NV_NVDLA_CSC_dl_for_check.scala 593:55:@723.4]
  assign dat_req_sub_w_st_en = dat_exec_valid & _T_1126; // @[NV_NVDLA_CSC_dl_for_check.scala 593:42:@724.4]
  assign dat_req_stripe_end = is_stripe_equal & dat_pipe_valid; // @[NV_NVDLA_CSC_dl_for_check.scala 596:42:@726.4]
  assign dat_req_flag_w = {dl_layer_end,dl_channel_end,dat_req_stripe_end,dl_pvld,batch_cnt}; // @[Cat.scala 30:58:@730.4]
  assign _T_1150 = dl_dat_release & is_stripe_equal; // @[NV_NVDLA_CSC_dl_for_check.scala 623:38:@750.6]
  assign _T_1151 = _T_1150 & dat_pipe_valid; // @[NV_NVDLA_CSC_dl_for_check.scala 623:56:@751.6]
  assign _GEN_78 = dat_exec_valid ? dat_req_sub_w_w : dat_req_sub_w_d1; // @[NV_NVDLA_CSC_dl_for_check.scala 615:21:@742.4]
  assign _GEN_79 = dat_exec_valid ? sub_h_cnt : dat_req_sub_h_d1; // @[NV_NVDLA_CSC_dl_for_check.scala 615:21:@742.4]
  assign _GEN_80 = dat_exec_valid ? dat_req_sub_c_w : dat_req_sub_c_d1; // @[NV_NVDLA_CSC_dl_for_check.scala 615:21:@742.4]
  assign _GEN_81 = dat_exec_valid ? is_last_channel : dat_req_ch_end_d1; // @[NV_NVDLA_CSC_dl_for_check.scala 615:21:@742.4]
  assign _GEN_82 = dat_exec_valid ? dat_exec_valid : dat_req_dummy_d1; // @[NV_NVDLA_CSC_dl_for_check.scala 615:21:@742.4]
  assign _GEN_83 = dat_exec_valid ? dl_cur_sub_h : dat_req_cur_sub_h_d1; // @[NV_NVDLA_CSC_dl_for_check.scala 615:21:@742.4]
  assign _GEN_84 = dat_exec_valid ? dat_req_flag_w : dat_req_flag_d1; // @[NV_NVDLA_CSC_dl_for_check.scala 615:21:@742.4]
  assign _GEN_85 = dat_exec_valid ? _T_1151 : dat_req_rls_d1; // @[NV_NVDLA_CSC_dl_for_check.scala 615:21:@742.4]
  assign _GEN_86 = dat_exec_valid ? pixel_force_fetch : pixel_force_fetch_d1; // @[NV_NVDLA_CSC_dl_for_check.scala 615:21:@742.4]
  assign _GEN_87 = dat_exec_valid ? pixel_force_clr : pixel_force_clr_d1; // @[NV_NVDLA_CSC_dl_for_check.scala 615:21:@742.4]
  assign _GEN_88 = dat_req_sub_w_st_en ? dl_pvld : dat_req_sub_w_st_d1; // @[NV_NVDLA_CSC_dl_for_check.scala 627:26:@756.4]
  assign _T_1166 = is_img_d1[8]; // @[NV_NVDLA_CSC_dl_for_check.scala 644:32:@766.4]
  assign _T_1167 = ~ _T_1166; // @[NV_NVDLA_CSC_dl_for_check.scala 644:22:@767.4]
  assign _T_1168 = datain_width[11:0]; // @[NV_NVDLA_CSC_dl_for_check.scala 644:49:@768.4]
  assign c_bias_add = _T_1167 ? _T_1168 : 12'h0; // @[NV_NVDLA_CSC_dl_for_check.scala 644:21:@769.4]
  assign _T_1171 = is_stripe_end & dl_channel_end; // @[NV_NVDLA_CSC_dl_for_check.scala 646:34:@770.4]
  assign _GEN_701 = {{1'd0}, c_bias_add}; // @[NV_NVDLA_CSC_dl_for_check.scala 646:64:@771.4]
  assign _T_1173 = c_bias + _GEN_701; // @[NV_NVDLA_CSC_dl_for_check.scala 646:64:@771.4]
  assign _T_1174 = c_bias + _GEN_701; // @[NV_NVDLA_CSC_dl_for_check.scala 646:64:@772.4]
  assign _T_1175 = _T_1171 ? 13'h0 : _T_1174; // @[NV_NVDLA_CSC_dl_for_check.scala 646:19:@773.4]
  assign c_bias_w = layer_st ? 13'h0 : _T_1175; // @[NV_NVDLA_CSC_dl_for_check.scala 645:19:@774.4]
  assign c_bias_d1_reg_en = c_bias != c_bias_d1; // @[NV_NVDLA_CSC_dl_for_check.scala 648:31:@778.4]
  assign _GEN_702 = {{2'd0}, h_bias_0_stride}; // @[NV_NVDLA_CSC_dl_for_check.scala 651:32:@779.4]
  assign _T_1178 = datain_h_cnt * _GEN_702; // @[NV_NVDLA_CSC_dl_for_check.scala 651:32:@779.4]
  assign h_bias_0_w = _T_1178[12:0]; // @[NV_NVDLA_CSC_dl_for_check.scala 651:50:@780.4]
  assign _GEN_703 = {{7'd0}, dl_h_offset}; // @[NV_NVDLA_CSC_dl_for_check.scala 652:31:@781.4]
  assign _T_1179 = _GEN_703 * h_bias_1_stride; // @[NV_NVDLA_CSC_dl_for_check.scala 652:31:@781.4]
  assign h_bias_1_w = _T_1179[12:0]; // @[NV_NVDLA_CSC_dl_for_check.scala 652:49:@782.4]
  assign _GEN_704 = {{10'd0}, batch_cnt}; // @[NV_NVDLA_CSC_dl_for_check.scala 653:29:@783.4]
  assign _T_1180 = _GEN_704 * h_bias_2_stride; // @[NV_NVDLA_CSC_dl_for_check.scala 653:29:@783.4]
  assign h_bias_2_w = _T_1180[12:0]; // @[NV_NVDLA_CSC_dl_for_check.scala 653:47:@784.4]
  assign _GEN_705 = {{13'd0}, sub_h_cnt}; // @[NV_NVDLA_CSC_dl_for_check.scala 654:47:@785.4]
  assign _T_1182 = _GEN_705 * h_bias_3_stride; // @[NV_NVDLA_CSC_dl_for_check.scala 654:47:@785.4]
  assign _T_1183 = layer_st ? 17'h0 : _T_1182; // @[NV_NVDLA_CSC_dl_for_check.scala 654:21:@786.4]
  assign h_bias_3_w = _T_1183[12:0]; // @[NV_NVDLA_CSC_dl_for_check.scala 654:65:@787.4]
  assign _T_1184 = is_img_d1[9]; // @[NV_NVDLA_CSC_dl_for_check.scala 655:45:@788.4]
  assign _T_1185 = layer_st | _T_1184; // @[NV_NVDLA_CSC_dl_for_check.scala 655:34:@789.4]
  assign h_bias_reg_en = {_T_1185,dat_exec_valid}; // @[Cat.scala 30:58:@790.4]
  assign _GEN_89 = datain_c_cnt_reg_en ? c_bias_w : c_bias; // @[NV_NVDLA_CSC_dl_for_check.scala 682:20:@807.4]
  assign _GEN_90 = c_bias_d1_reg_en ? c_bias : c_bias_d1; // @[NV_NVDLA_CSC_dl_for_check.scala 685:23:@810.4]
  assign _T_1204 = h_bias_reg_en[0]; // @[NV_NVDLA_CSC_dl_for_check.scala 688:19:@813.4]
  assign _GEN_91 = _T_1204 ? h_bias_0_w : h_bias_0_d1; // @[NV_NVDLA_CSC_dl_for_check.scala 688:23:@814.4]
  assign _GEN_92 = _T_1204 ? h_bias_1_w : h_bias_1_d1; // @[NV_NVDLA_CSC_dl_for_check.scala 688:23:@814.4]
  assign _GEN_93 = _T_1204 ? h_bias_2_w : h_bias_2_d1; // @[NV_NVDLA_CSC_dl_for_check.scala 688:23:@814.4]
  assign _T_1205 = h_bias_reg_en[1]; // @[NV_NVDLA_CSC_dl_for_check.scala 693:19:@819.4]
  assign _GEN_94 = _T_1205 ? h_bias_3_w : h_bias_3_d1; // @[NV_NVDLA_CSC_dl_for_check.scala 693:23:@820.4]
  assign _GEN_95 = dat_exec_valid ? w_bias_w : {{1'd0}, w_bias_d1}; // @[NV_NVDLA_CSC_dl_for_check.scala 696:20:@823.4]
  assign _T_1296 = h_bias_0_d1 + h_bias_1_d1; // @[NV_NVDLA_CSC_dl_for_check.scala 720:29:@851.4]
  assign _T_1297 = h_bias_0_d1 + h_bias_1_d1; // @[NV_NVDLA_CSC_dl_for_check.scala 720:29:@852.4]
  assign _T_1298 = _T_1297 + h_bias_2_d1; // @[NV_NVDLA_CSC_dl_for_check.scala 720:43:@853.4]
  assign _T_1299 = _T_1297 + h_bias_2_d1; // @[NV_NVDLA_CSC_dl_for_check.scala 720:43:@854.4]
  assign _T_1300 = _T_1299 + h_bias_3_d1; // @[NV_NVDLA_CSC_dl_for_check.scala 720:57:@855.4]
  assign h_bias_d1 = _T_1299 + h_bias_3_d1; // @[NV_NVDLA_CSC_dl_for_check.scala 720:57:@856.4]
  assign _GEN_706 = {{2'd0}, c_bias_d1}; // @[NV_NVDLA_CSC_dl_for_check.scala 721:40:@857.4]
  assign _T_1301 = dat_entry_st + _GEN_706; // @[NV_NVDLA_CSC_dl_for_check.scala 721:40:@857.4]
  assign _T_1302 = dat_entry_st + _GEN_706; // @[NV_NVDLA_CSC_dl_for_check.scala 721:40:@858.4]
  assign _GEN_707 = {{2'd0}, h_bias_d1}; // @[NV_NVDLA_CSC_dl_for_check.scala 721:52:@859.4]
  assign _T_1303 = _T_1302 + _GEN_707; // @[NV_NVDLA_CSC_dl_for_check.scala 721:52:@859.4]
  assign _T_1304 = _T_1302 + _GEN_707; // @[NV_NVDLA_CSC_dl_for_check.scala 721:52:@860.4]
  assign _GEN_708 = {{2'd0}, w_bias_d1}; // @[NV_NVDLA_CSC_dl_for_check.scala 721:64:@861.4]
  assign _T_1305 = _T_1304 + _GEN_708; // @[NV_NVDLA_CSC_dl_for_check.scala 721:64:@861.4]
  assign dat_req_addr_sum = _T_1304 + _GEN_708; // @[NV_NVDLA_CSC_dl_for_check.scala 721:64:@862.4]
  assign is_dat_req_addr_wrap = dat_req_addr_sum >= _GEN_678; // @[NV_NVDLA_CSC_dl_for_check.scala 722:45:@865.4]
  assign _T_1318 = dat_req_addr_sum - _GEN_678; // @[NV_NVDLA_CSC_dl_for_check.scala 723:42:@868.4]
  assign _T_1319 = $unsigned(_T_1318); // @[NV_NVDLA_CSC_dl_for_check.scala 723:42:@869.4]
  assign dat_req_addr_wrap = _T_1319[14:0]; // @[NV_NVDLA_CSC_dl_for_check.scala 723:42:@870.4]
  assign _T_1320 = layer_st | dat_req_dummy_d1; // @[NV_NVDLA_CSC_dl_for_check.scala 724:35:@871.4]
  assign _T_1326 = is_dat_req_addr_wrap ? dat_req_addr_wrap : dat_req_addr_sum; // @[NV_NVDLA_CSC_dl_for_check.scala 725:25:@873.4]
  assign dat_req_addr_w = _T_1320 ? 15'h1fff : _T_1326; // @[NV_NVDLA_CSC_dl_for_check.scala 724:25:@874.4]
  assign _T_1346 = 2'h3 == dat_req_sub_h_d1; // @[Mux.scala 46:19:@884.4]
  assign _T_1347 = _T_1346 ? dat_req_sub_h_addr_3 : 13'h0; // @[Mux.scala 46:16:@885.4]
  assign _T_1348 = 2'h2 == dat_req_sub_h_d1; // @[Mux.scala 46:19:@886.4]
  assign _T_1349 = _T_1348 ? dat_req_sub_h_addr_2 : _T_1347; // @[Mux.scala 46:16:@887.4]
  assign _T_1350 = 2'h1 == dat_req_sub_h_d1; // @[Mux.scala 46:19:@888.4]
  assign _T_1351 = _T_1350 ? dat_req_sub_h_addr_1 : _T_1349; // @[Mux.scala 46:16:@889.4]
  assign _T_1352 = 2'h0 == dat_req_sub_h_d1; // @[Mux.scala 46:19:@890.4]
  assign dat_req_addr_last = _T_1352 ? dat_req_sub_h_addr_0 : _T_1351; // @[Mux.scala 46:16:@891.4]
  assign _GEN_712 = {{2'd0}, dat_req_addr_last}; // @[NV_NVDLA_CSC_dl_for_check.scala 732:65:@892.4]
  assign _T_1353 = _GEN_712 != dat_req_addr_w; // @[NV_NVDLA_CSC_dl_for_check.scala 732:65:@892.4]
  assign _T_1354 = _T_1353 | pixel_force_fetch_d1; // @[NV_NVDLA_CSC_dl_for_check.scala 732:85:@893.4]
  assign sc2buf_dat_rd_en_w = dat_req_valid_d1 & _T_1354; // @[NV_NVDLA_CSC_dl_for_check.scala 732:43:@894.4]
  assign _T_1355 = dat_req_valid_d1 | dat_req_dummy_d1; // @[NV_NVDLA_CSC_dl_for_check.scala 734:38:@895.4]
  assign _T_1357 = dat_req_sub_h_d1 == 2'h0; // @[NV_NVDLA_CSC_dl_for_check.scala 734:78:@896.4]
  assign _T_1358 = _T_1355 & _T_1357; // @[NV_NVDLA_CSC_dl_for_check.scala 734:58:@897.4]
  assign dat_req_sub_h_addr_en_0 = layer_st | _T_1358; // @[NV_NVDLA_CSC_dl_for_check.scala 734:17:@898.4]
  assign _T_1362 = dat_req_sub_h_d1 == 2'h1; // @[NV_NVDLA_CSC_dl_for_check.scala 734:78:@900.4]
  assign _T_1363 = _T_1355 & _T_1362; // @[NV_NVDLA_CSC_dl_for_check.scala 734:58:@901.4]
  assign dat_req_sub_h_addr_en_1 = layer_st | _T_1363; // @[NV_NVDLA_CSC_dl_for_check.scala 734:17:@902.4]
  assign _T_1367 = dat_req_sub_h_d1 == 2'h2; // @[NV_NVDLA_CSC_dl_for_check.scala 734:78:@904.4]
  assign _T_1368 = _T_1355 & _T_1367; // @[NV_NVDLA_CSC_dl_for_check.scala 734:58:@905.4]
  assign dat_req_sub_h_addr_en_2 = layer_st | _T_1368; // @[NV_NVDLA_CSC_dl_for_check.scala 734:17:@906.4]
  assign _T_1372 = dat_req_sub_h_d1 == 2'h3; // @[NV_NVDLA_CSC_dl_for_check.scala 734:78:@908.4]
  assign _T_1373 = _T_1355 & _T_1372; // @[NV_NVDLA_CSC_dl_for_check.scala 734:58:@909.4]
  assign dat_req_sub_h_addr_en_3 = layer_st | _T_1373; // @[NV_NVDLA_CSC_dl_for_check.scala 734:17:@910.4]
  assign _GEN_96 = dat_req_sub_h_addr_en_0 ? dat_req_addr_w : {{2'd0}, dat_req_sub_h_addr_0}; // @[NV_NVDLA_CSC_dl_for_check.scala 741:35:@916.4]
  assign _GEN_97 = dat_req_sub_h_addr_en_1 ? dat_req_addr_w : {{2'd0}, dat_req_sub_h_addr_1}; // @[NV_NVDLA_CSC_dl_for_check.scala 741:35:@919.4]
  assign _GEN_98 = dat_req_sub_h_addr_en_2 ? dat_req_addr_w : {{2'd0}, dat_req_sub_h_addr_2}; // @[NV_NVDLA_CSC_dl_for_check.scala 741:35:@922.4]
  assign _GEN_99 = dat_req_sub_h_addr_en_3 ? dat_req_addr_w : {{2'd0}, dat_req_sub_h_addr_3}; // @[NV_NVDLA_CSC_dl_for_check.scala 741:35:@925.4]
  assign _T_1384 = layer_st | sc2buf_dat_rd_en_w; // @[NV_NVDLA_CSC_dl_for_check.scala 747:14:@929.4]
  assign _GEN_100 = _T_1384 ? dat_req_addr_w : sc2buf_dat_rd_addr_out; // @[NV_NVDLA_CSC_dl_for_check.scala 747:34:@930.4]
  assign _GEN_101 = dat_exec_valid_d1 ? dat_req_sub_w_d1 : dat_req_pipe_sub_w; // @[NV_NVDLA_CSC_dl_for_check.scala 754:24:@937.4]
  assign _GEN_102 = dat_exec_valid_d1 ? dat_req_sub_h_d1 : dat_req_pipe_sub_h; // @[NV_NVDLA_CSC_dl_for_check.scala 754:24:@937.4]
  assign _GEN_103 = dat_exec_valid_d1 ? dat_req_sub_c_d1 : dat_req_pipe_sub_c; // @[NV_NVDLA_CSC_dl_for_check.scala 754:24:@937.4]
  assign _GEN_104 = dat_exec_valid_d1 ? dat_req_ch_end_d1 : dat_req_pipe_ch_end; // @[NV_NVDLA_CSC_dl_for_check.scala 754:24:@937.4]
  assign _GEN_105 = dat_exec_valid_d1 ? dat_req_bytes_d1 : dat_req_pipe_bytes; // @[NV_NVDLA_CSC_dl_for_check.scala 754:24:@937.4]
  assign _GEN_106 = dat_exec_valid_d1 ? dat_req_dummy_d1 : dat_req_pipe_dummy; // @[NV_NVDLA_CSC_dl_for_check.scala 754:24:@937.4]
  assign _GEN_107 = dat_exec_valid_d1 ? dat_req_cur_sub_h_d1 : dat_req_pipe_cur_sub_h; // @[NV_NVDLA_CSC_dl_for_check.scala 754:24:@937.4]
  assign _GEN_108 = dat_exec_valid_d1 ? dat_req_sub_w_st_d1 : dat_req_pipe_sub_w_st; // @[NV_NVDLA_CSC_dl_for_check.scala 754:24:@937.4]
  assign _GEN_109 = dat_exec_valid_d1 ? dat_req_rls_d1 : dat_req_pipe_rls; // @[NV_NVDLA_CSC_dl_for_check.scala 754:24:@937.4]
  assign _GEN_110 = dat_exec_valid_d1 ? dat_req_flag_d1 : {{8'd0}, dat_exec_valid_d1}; // @[NV_NVDLA_CSC_dl_for_check.scala 754:24:@937.4]
  assign _T_1394 = {1'h0,dat_req_pipe_ch_end,dat_req_pipe_sub_c,dat_req_pipe_sub_h,dat_req_pipe_sub_w}; // @[Cat.scala 30:58:@957.4]
  assign dat_req_pipe_pd = {dat_req_pipe_flag,dat_req_pipe_rls,dat_req_pipe_sub_w_st,dat_req_pipe_dummy,dat_req_pipe_cur_sub_h,dat_req_pipe_bytes,_T_1394}; // @[Cat.scala 30:58:@963.4]
  assign _GEN_111 = dat_req_pipe_pvld ? dat_req_pipe_pd : _T_1423; // @[NV_NVDLA_CSC_dl_for_check.scala 799:33:@1005.4]
  assign _GEN_114 = _T_1404 ? _T_1423 : _T_1426; // @[NV_NVDLA_CSC_dl_for_check.scala 799:33:@1014.4]
  assign _GEN_117 = _T_1407 ? _T_1426 : _T_1429; // @[NV_NVDLA_CSC_dl_for_check.scala 799:33:@1023.4]
  assign _GEN_120 = _T_1410 ? _T_1429 : _T_1432; // @[NV_NVDLA_CSC_dl_for_check.scala 799:33:@1032.4]
  assign _GEN_123 = _T_1413 ? _T_1432 : _T_1435; // @[NV_NVDLA_CSC_dl_for_check.scala 799:33:@1041.4]
  assign _GEN_126 = _T_1416 ? _T_1435 : dat_rsp_pipe_pd; // @[NV_NVDLA_CSC_dl_for_check.scala 799:33:@1050.4]
  assign dat_rsp_pipe_sub_w = dat_rsp_pipe_pd[1:0]; // @[NV_NVDLA_CSC_dl_for_check.scala 816:41:@1058.4]
  assign dat_rsp_pipe_sub_h = dat_rsp_pipe_pd[3:2]; // @[NV_NVDLA_CSC_dl_for_check.scala 817:41:@1059.4]
  assign dat_rsp_pipe_sub_c = dat_rsp_pipe_pd[4]; // @[NV_NVDLA_CSC_dl_for_check.scala 818:41:@1060.4]
  assign dat_rsp_pipe_ch_end = dat_rsp_pipe_pd[5]; // @[NV_NVDLA_CSC_dl_for_check.scala 819:42:@1061.4]
  assign dat_rsp_pipe_bytes = dat_rsp_pipe_pd[14:7]; // @[NV_NVDLA_CSC_dl_for_check.scala 820:41:@1062.4]
  assign dat_rsp_pipe_cur_sub_h = dat_rsp_pipe_pd[16:15]; // @[NV_NVDLA_CSC_dl_for_check.scala 821:45:@1063.4]
  assign dat_rsp_pipe_rls = dat_rsp_pipe_pd[19]; // @[NV_NVDLA_CSC_dl_for_check.scala 824:39:@1066.4]
  assign dat_rsp_pipe_flag = dat_rsp_pipe_pd[28:20]; // @[NV_NVDLA_CSC_dl_for_check.scala 825:40:@1067.4]
  assign _T_1530 = is_img_d1[12]; // @[NV_NVDLA_CSC_dl_for_check.scala 855:69:@1095.4]
  assign _T_1531 = _T_1530 & sc2buf_dat_rd_valid; // @[NV_NVDLA_CSC_dl_for_check.scala 855:74:@1096.4]
  assign _T_1532 = ~ dat_l0c0_dummy; // @[NV_NVDLA_CSC_dl_for_check.scala 855:90:@1097.4]
  assign dat_l0c1_en = _T_1531 & _T_1532; // @[NV_NVDLA_CSC_dl_for_check.scala 855:88:@1098.4]
  assign _T_1561 = sc2buf_dat_rd_valid ? 1'h0 : dat_l0c0_dummy; // @[NV_NVDLA_CSC_dl_for_check.scala 870:22:@1132.4]
  assign _T_1575 = sc2buf_dat_rd_valid ? dat_l0c0_dummy : dat_l0c1_dummy; // @[NV_NVDLA_CSC_dl_for_check.scala 874:48:@1143.4]
  assign _T_1576 = dat_l0c1_en ? 1'h0 : _T_1575; // @[NV_NVDLA_CSC_dl_for_check.scala 874:22:@1144.4]
  assign _T_1641 = {dat_rsp_pipe_flag,dat_rsp_pipe_rls,dat_rsp_pipe_cur_sub_h,dat_rsp_pipe_bytes,1'h0,dat_rsp_pipe_ch_end,dat_rsp_pipe_sub_c,dat_rsp_pipe_sub_h,dat_rsp_pipe_sub_w}; // @[Cat.scala 30:58:@1211.4]
  assign _GEN_137 = dat_rsp_pipe_pvld ? _T_1641 : _T_1623; // @[NV_NVDLA_CSC_dl_for_check.scala 913:28:@1214.4]
  assign _GEN_138 = dat_rsp_l0_pvld ? _T_1623 : _T_1626; // @[NV_NVDLA_CSC_dl_for_check.scala 913:28:@1218.4]
  assign _GEN_139 = dat_rsp_l1_pvld ? _T_1626 : _T_1629; // @[NV_NVDLA_CSC_dl_for_check.scala 913:28:@1222.4]
  assign _GEN_140 = dat_rsp_l2_pvld ? _T_1629 : _T_1632; // @[NV_NVDLA_CSC_dl_for_check.scala 913:28:@1226.4]
  assign dat_rsp_l0_sub_c = _T_1623[4]; // @[NV_NVDLA_CSC_dl_for_check.scala 931:39:@1252.4]
  assign dat_rsp_l1_sub_c = _T_1626[4]; // @[NV_NVDLA_CSC_dl_for_check.scala 932:39:@1253.4]
  assign dat_rsp_l2_sub_c = _T_1629[4]; // @[NV_NVDLA_CSC_dl_for_check.scala 933:39:@1254.4]
  assign dat_rsp_l3_sub_c = _T_1632[4]; // @[NV_NVDLA_CSC_dl_for_check.scala 934:39:@1255.4]
  assign dat_rsp_l0_flag = _T_1623[26:18]; // @[NV_NVDLA_CSC_dl_for_check.scala 936:38:@1256.4]
  assign dat_rsp_l1_flag = _T_1626[26:18]; // @[NV_NVDLA_CSC_dl_for_check.scala 937:38:@1257.4]
  assign dat_rsp_l2_flag = _T_1629[26:18]; // @[NV_NVDLA_CSC_dl_for_check.scala 938:38:@1258.4]
  assign dat_rsp_l3_flag = _T_1632[26:18]; // @[NV_NVDLA_CSC_dl_for_check.scala 939:38:@1259.4]
  assign dat_rsp_l0_stripe_end = dat_rsp_l0_flag[6]; // @[NV_NVDLA_CSC_dl_for_check.scala 941:44:@1260.4]
  assign dat_rsp_l1_stripe_end = dat_rsp_l1_flag[6]; // @[NV_NVDLA_CSC_dl_for_check.scala 942:44:@1261.4]
  assign dat_rsp_l2_stripe_end = dat_rsp_l2_flag[6]; // @[NV_NVDLA_CSC_dl_for_check.scala 943:44:@1262.4]
  assign dat_rsp_l3_stripe_end = dat_rsp_l3_flag[6]; // @[NV_NVDLA_CSC_dl_for_check.scala 944:44:@1263.4]
  assign dat_rsp_sub_w = dat_rsp_pd[1:0]; // @[NV_NVDLA_CSC_dl_for_check.scala 947:31:@1264.4]
  assign dat_rsp_bytes = dat_rsp_pd[14:7]; // @[NV_NVDLA_CSC_dl_for_check.scala 951:31:@1268.4]
  assign dat_rsp_cur_sub_h = dat_rsp_pd[16:15]; // @[NV_NVDLA_CSC_dl_for_check.scala 952:35:@1269.4]
  assign rsp_sft_cnt_l0_sub = sc2buf_dat_rd_valid ? 8'h40 : 8'h0; // @[NV_NVDLA_CSC_dl_for_check.scala 963:29:@1278.4]
  assign _T_1679 = pixel_x_byte_stride > 7'h40; // @[NV_NVDLA_CSC_dl_for_check.scala 968:50:@1282.4]
  assign _GEN_713 = {{1'd0}, pixel_x_byte_stride}; // @[NV_NVDLA_CSC_dl_for_check.scala 968:111:@1283.4]
  assign _T_1681 = rsp_sft_cnt_l0 + _GEN_713; // @[NV_NVDLA_CSC_dl_for_check.scala 968:111:@1283.4]
  assign _T_1682 = rsp_sft_cnt_l0 + _GEN_713; // @[NV_NVDLA_CSC_dl_for_check.scala 968:111:@1284.4]
  assign _T_1683 = _T_1682 - rsp_sft_cnt_l0_sub; // @[NV_NVDLA_CSC_dl_for_check.scala 968:133:@1285.4]
  assign _T_1684 = $unsigned(_T_1683); // @[NV_NVDLA_CSC_dl_for_check.scala 968:133:@1286.4]
  assign _T_1685 = _T_1684[7:0]; // @[NV_NVDLA_CSC_dl_for_check.scala 968:133:@1287.4]
  assign rsp_sft_cnt_l0_inc = _T_1679 ? 8'h40 : _T_1685; // @[NV_NVDLA_CSC_dl_for_check.scala 968:29:@1288.4]
  assign _T_1689 = rsp_sft_cnt_l1 + _GEN_713; // @[NV_NVDLA_CSC_dl_for_check.scala 969:111:@1290.4]
  assign _T_1690 = rsp_sft_cnt_l1 + _GEN_713; // @[NV_NVDLA_CSC_dl_for_check.scala 969:111:@1291.4]
  assign _T_1691 = _T_1690 - 8'h0; // @[NV_NVDLA_CSC_dl_for_check.scala 969:133:@1292.4]
  assign _T_1692 = $unsigned(_T_1691); // @[NV_NVDLA_CSC_dl_for_check.scala 969:133:@1293.4]
  assign _T_1693 = _T_1692[7:0]; // @[NV_NVDLA_CSC_dl_for_check.scala 969:133:@1294.4]
  assign rsp_sft_cnt_l1_inc = _T_1679 ? 8'h40 : _T_1693; // @[NV_NVDLA_CSC_dl_for_check.scala 969:29:@1295.4]
  assign _T_1697 = rsp_sft_cnt_l2 + _GEN_713; // @[NV_NVDLA_CSC_dl_for_check.scala 970:111:@1297.4]
  assign _T_1698 = rsp_sft_cnt_l2 + _GEN_713; // @[NV_NVDLA_CSC_dl_for_check.scala 970:111:@1298.4]
  assign _T_1699 = _T_1698 - 8'h0; // @[NV_NVDLA_CSC_dl_for_check.scala 970:133:@1299.4]
  assign _T_1700 = $unsigned(_T_1699); // @[NV_NVDLA_CSC_dl_for_check.scala 970:133:@1300.4]
  assign _T_1701 = _T_1700[7:0]; // @[NV_NVDLA_CSC_dl_for_check.scala 970:133:@1301.4]
  assign rsp_sft_cnt_l2_inc = _T_1679 ? 8'h40 : _T_1701; // @[NV_NVDLA_CSC_dl_for_check.scala 970:29:@1302.4]
  assign _T_1705 = rsp_sft_cnt_l3 + _GEN_713; // @[NV_NVDLA_CSC_dl_for_check.scala 971:111:@1304.4]
  assign _T_1706 = rsp_sft_cnt_l3 + _GEN_713; // @[NV_NVDLA_CSC_dl_for_check.scala 971:111:@1305.4]
  assign _T_1707 = _T_1706 - 8'h0; // @[NV_NVDLA_CSC_dl_for_check.scala 971:133:@1306.4]
  assign _T_1708 = $unsigned(_T_1707); // @[NV_NVDLA_CSC_dl_for_check.scala 971:133:@1307.4]
  assign _T_1709 = _T_1708[7:0]; // @[NV_NVDLA_CSC_dl_for_check.scala 971:133:@1308.4]
  assign rsp_sft_cnt_l3_inc = _T_1679 ? 8'h40 : _T_1709; // @[NV_NVDLA_CSC_dl_for_check.scala 971:29:@1309.4]
  assign _T_1711 = ~ dat_rsp_l0_sub_c; // @[NV_NVDLA_CSC_dl_for_check.scala 980:52:@1310.4]
  assign _T_1712 = dat_rsp_l0_stripe_end & _T_1711; // @[NV_NVDLA_CSC_dl_for_check.scala 980:50:@1311.4]
  assign _T_1713 = dat_rsp_l0_stripe_end & dat_rsp_l0_sub_c; // @[NV_NVDLA_CSC_dl_for_check.scala 981:50:@1312.4]
  assign _T_1718 = _T_1713 ? 8'h40 : rsp_sft_cnt_l0_inc; // @[NV_NVDLA_CSC_dl_for_check.scala 981:27:@1315.4]
  assign _T_1719 = _T_1712 ? rsp_sft_cnt_l0_ori : _T_1718; // @[NV_NVDLA_CSC_dl_for_check.scala 980:27:@1316.4]
  assign rsp_sft_cnt_l0_w = layer_st ? 8'h40 : _T_1719; // @[NV_NVDLA_CSC_dl_for_check.scala 979:27:@1317.4]
  assign _T_1721 = ~ dat_rsp_l1_sub_c; // @[NV_NVDLA_CSC_dl_for_check.scala 985:52:@1318.4]
  assign _T_1722 = dat_rsp_l1_stripe_end & _T_1721; // @[NV_NVDLA_CSC_dl_for_check.scala 985:50:@1319.4]
  assign _T_1723 = dat_rsp_l1_stripe_end & dat_rsp_l1_sub_c; // @[NV_NVDLA_CSC_dl_for_check.scala 986:50:@1320.4]
  assign _T_1728 = _T_1723 ? 8'h40 : rsp_sft_cnt_l1_inc; // @[NV_NVDLA_CSC_dl_for_check.scala 986:27:@1323.4]
  assign _T_1729 = _T_1722 ? rsp_sft_cnt_l1_ori : _T_1728; // @[NV_NVDLA_CSC_dl_for_check.scala 985:27:@1324.4]
  assign rsp_sft_cnt_l1_w = layer_st ? 8'h40 : _T_1729; // @[NV_NVDLA_CSC_dl_for_check.scala 984:27:@1325.4]
  assign _T_1731 = ~ dat_rsp_l2_sub_c; // @[NV_NVDLA_CSC_dl_for_check.scala 990:52:@1326.4]
  assign _T_1732 = dat_rsp_l2_stripe_end & _T_1731; // @[NV_NVDLA_CSC_dl_for_check.scala 990:50:@1327.4]
  assign _T_1733 = dat_rsp_l2_stripe_end & dat_rsp_l2_sub_c; // @[NV_NVDLA_CSC_dl_for_check.scala 991:50:@1328.4]
  assign _T_1738 = _T_1733 ? 8'h40 : rsp_sft_cnt_l2_inc; // @[NV_NVDLA_CSC_dl_for_check.scala 991:27:@1331.4]
  assign _T_1739 = _T_1732 ? rsp_sft_cnt_l2_ori : _T_1738; // @[NV_NVDLA_CSC_dl_for_check.scala 990:27:@1332.4]
  assign rsp_sft_cnt_l2_w = layer_st ? 8'h40 : _T_1739; // @[NV_NVDLA_CSC_dl_for_check.scala 989:27:@1333.4]
  assign _T_1741 = ~ dat_rsp_l3_sub_c; // @[NV_NVDLA_CSC_dl_for_check.scala 995:52:@1334.4]
  assign _T_1742 = dat_rsp_l3_stripe_end & _T_1741; // @[NV_NVDLA_CSC_dl_for_check.scala 995:50:@1335.4]
  assign _T_1743 = dat_rsp_l3_stripe_end & dat_rsp_l3_sub_c; // @[NV_NVDLA_CSC_dl_for_check.scala 996:50:@1336.4]
  assign _T_1748 = _T_1743 ? 8'h40 : rsp_sft_cnt_l3_inc; // @[NV_NVDLA_CSC_dl_for_check.scala 996:27:@1339.4]
  assign _T_1749 = _T_1742 ? rsp_sft_cnt_l3_ori : _T_1748; // @[NV_NVDLA_CSC_dl_for_check.scala 995:27:@1340.4]
  assign rsp_sft_cnt_l3_w = layer_st ? 8'h40 : _T_1749; // @[NV_NVDLA_CSC_dl_for_check.scala 994:27:@1341.4]
  assign _T_1750 = is_img_d1[17]; // @[NV_NVDLA_CSC_dl_for_check.scala 1000:46:@1342.4]
  assign _T_1751 = _T_1750 & dat_rsp_l0_pvld; // @[NV_NVDLA_CSC_dl_for_check.scala 1000:51:@1343.4]
  assign rsp_sft_cnt_l0_en = layer_st | _T_1751; // @[NV_NVDLA_CSC_dl_for_check.scala 1000:34:@1344.4]
  assign _T_1752 = is_img_d1[18]; // @[NV_NVDLA_CSC_dl_for_check.scala 1001:46:@1345.4]
  assign _T_1753 = _T_1752 & dat_rsp_l1_pvld; // @[NV_NVDLA_CSC_dl_for_check.scala 1001:51:@1346.4]
  assign _T_1755 = sub_h_total_g5 != 3'h1; // @[NV_NVDLA_CSC_dl_for_check.scala 1001:87:@1347.4]
  assign _T_1756 = _T_1753 & _T_1755; // @[NV_NVDLA_CSC_dl_for_check.scala 1001:69:@1348.4]
  assign rsp_sft_cnt_l1_en = layer_st | _T_1756; // @[NV_NVDLA_CSC_dl_for_check.scala 1001:34:@1349.4]
  assign _T_1757 = is_img_d1[19]; // @[NV_NVDLA_CSC_dl_for_check.scala 1002:46:@1350.4]
  assign _T_1758 = _T_1757 & dat_rsp_l2_pvld; // @[NV_NVDLA_CSC_dl_for_check.scala 1002:51:@1351.4]
  assign _T_1760 = sub_h_total_g5 == 3'h4; // @[NV_NVDLA_CSC_dl_for_check.scala 1002:87:@1352.4]
  assign _T_1761 = _T_1758 & _T_1760; // @[NV_NVDLA_CSC_dl_for_check.scala 1002:69:@1353.4]
  assign rsp_sft_cnt_l2_en = layer_st | _T_1761; // @[NV_NVDLA_CSC_dl_for_check.scala 1002:34:@1354.4]
  assign _T_1762 = is_img_d1[20]; // @[NV_NVDLA_CSC_dl_for_check.scala 1003:46:@1355.4]
  assign _T_1763 = _T_1762 & dat_rsp_l3_pvld; // @[NV_NVDLA_CSC_dl_for_check.scala 1003:51:@1356.4]
  assign _T_1766 = _T_1763 & _T_1760; // @[NV_NVDLA_CSC_dl_for_check.scala 1003:69:@1358.4]
  assign rsp_sft_cnt_l3_en = layer_st | _T_1766; // @[NV_NVDLA_CSC_dl_for_check.scala 1003:34:@1359.4]
  assign _T_1767 = is_img_d1[21]; // @[NV_NVDLA_CSC_dl_for_check.scala 1005:50:@1360.4]
  assign _T_1768 = _T_1767 & dat_rsp_l0_pvld; // @[NV_NVDLA_CSC_dl_for_check.scala 1005:55:@1361.4]
  assign _T_1769 = _T_1768 & dat_rsp_l0_stripe_end; // @[NV_NVDLA_CSC_dl_for_check.scala 1005:73:@1362.4]
  assign _T_1770 = _T_1769 & dat_rsp_l0_sub_c; // @[NV_NVDLA_CSC_dl_for_check.scala 1005:97:@1363.4]
  assign rsp_sft_cnt_l0_ori_en = layer_st | _T_1770; // @[NV_NVDLA_CSC_dl_for_check.scala 1005:38:@1364.4]
  assign _T_1771 = is_img_d1[22]; // @[NV_NVDLA_CSC_dl_for_check.scala 1006:50:@1365.4]
  assign _T_1772 = _T_1771 & dat_rsp_l1_pvld; // @[NV_NVDLA_CSC_dl_for_check.scala 1006:55:@1366.4]
  assign _T_1773 = _T_1772 & dat_rsp_l1_stripe_end; // @[NV_NVDLA_CSC_dl_for_check.scala 1006:73:@1367.4]
  assign _T_1774 = _T_1773 & dat_rsp_l1_sub_c; // @[NV_NVDLA_CSC_dl_for_check.scala 1006:97:@1368.4]
  assign _T_1776 = sub_h_total_g6 != 3'h1; // @[NV_NVDLA_CSC_dl_for_check.scala 1006:138:@1369.4]
  assign _T_1777 = _T_1774 & _T_1776; // @[NV_NVDLA_CSC_dl_for_check.scala 1006:120:@1370.4]
  assign rsp_sft_cnt_l1_ori_en = layer_st | _T_1777; // @[NV_NVDLA_CSC_dl_for_check.scala 1006:38:@1371.4]
  assign _T_1778 = is_img_d1[23]; // @[NV_NVDLA_CSC_dl_for_check.scala 1007:50:@1372.4]
  assign _T_1779 = _T_1778 & dat_rsp_l2_pvld; // @[NV_NVDLA_CSC_dl_for_check.scala 1007:55:@1373.4]
  assign _T_1780 = _T_1779 & dat_rsp_l2_stripe_end; // @[NV_NVDLA_CSC_dl_for_check.scala 1007:73:@1374.4]
  assign _T_1781 = _T_1780 & dat_rsp_l2_sub_c; // @[NV_NVDLA_CSC_dl_for_check.scala 1007:97:@1375.4]
  assign _T_1783 = sub_h_total_g6 == 3'h4; // @[NV_NVDLA_CSC_dl_for_check.scala 1007:138:@1376.4]
  assign _T_1784 = _T_1781 & _T_1783; // @[NV_NVDLA_CSC_dl_for_check.scala 1007:120:@1377.4]
  assign rsp_sft_cnt_l2_ori_en = layer_st | _T_1784; // @[NV_NVDLA_CSC_dl_for_check.scala 1007:38:@1378.4]
  assign _T_1785 = is_img_d1[24]; // @[NV_NVDLA_CSC_dl_for_check.scala 1008:50:@1379.4]
  assign _T_1786 = _T_1785 & dat_rsp_l3_pvld; // @[NV_NVDLA_CSC_dl_for_check.scala 1008:55:@1380.4]
  assign _T_1787 = _T_1786 & dat_rsp_l3_stripe_end; // @[NV_NVDLA_CSC_dl_for_check.scala 1008:73:@1381.4]
  assign _T_1788 = _T_1787 & dat_rsp_l3_sub_c; // @[NV_NVDLA_CSC_dl_for_check.scala 1008:97:@1382.4]
  assign _T_1791 = _T_1788 & _T_1783; // @[NV_NVDLA_CSC_dl_for_check.scala 1008:120:@1384.4]
  assign rsp_sft_cnt_l3_ori_en = layer_st | _T_1791; // @[NV_NVDLA_CSC_dl_for_check.scala 1008:38:@1385.4]
  assign _GEN_141 = rsp_sft_cnt_l0_en ? rsp_sft_cnt_l0_w : rsp_sft_cnt_l0; // @[NV_NVDLA_CSC_dl_for_check.scala 1010:24:@1386.4]
  assign _GEN_142 = rsp_sft_cnt_l1_en ? rsp_sft_cnt_l1_w : rsp_sft_cnt_l1; // @[NV_NVDLA_CSC_dl_for_check.scala 1011:24:@1389.4]
  assign _GEN_143 = rsp_sft_cnt_l2_en ? rsp_sft_cnt_l2_w : rsp_sft_cnt_l2; // @[NV_NVDLA_CSC_dl_for_check.scala 1012:24:@1392.4]
  assign _GEN_144 = rsp_sft_cnt_l3_en ? rsp_sft_cnt_l3_w : rsp_sft_cnt_l3; // @[NV_NVDLA_CSC_dl_for_check.scala 1013:24:@1395.4]
  assign _GEN_145 = rsp_sft_cnt_l0_ori_en ? rsp_sft_cnt_l0_w : rsp_sft_cnt_l0_ori; // @[NV_NVDLA_CSC_dl_for_check.scala 1014:28:@1398.4]
  assign _GEN_146 = rsp_sft_cnt_l1_ori_en ? rsp_sft_cnt_l1_w : rsp_sft_cnt_l1_ori; // @[NV_NVDLA_CSC_dl_for_check.scala 1015:28:@1401.4]
  assign _GEN_147 = rsp_sft_cnt_l2_ori_en ? rsp_sft_cnt_l2_w : rsp_sft_cnt_l2_ori; // @[NV_NVDLA_CSC_dl_for_check.scala 1016:28:@1404.4]
  assign _GEN_148 = rsp_sft_cnt_l3_ori_en ? rsp_sft_cnt_l3_w : rsp_sft_cnt_l3_ori; // @[NV_NVDLA_CSC_dl_for_check.scala 1017:28:@1407.4]
  assign _T_1792 = pad_value[7:0]; // @[NV_NVDLA_CSC_dl_for_check.scala 1026:55:@1410.4]
  assign _T_1795 = {_T_1792,_T_1792,_T_1792,_T_1792,_T_1792,_T_1792,_T_1792,_T_1792}; // @[Cat.scala 30:58:@1413.4]
  assign _T_1796 = {_T_1792,_T_1792,_T_1792,_T_1792,_T_1792,_T_1792,_T_1792,_T_1792,_T_1795}; // @[Cat.scala 30:58:@1414.4]
  assign _T_1797 = {_T_1792,_T_1792,_T_1792,_T_1792,_T_1792,_T_1792,_T_1792,_T_1792,_T_1795,_T_1796}; // @[Cat.scala 30:58:@1415.4]
  assign dat_rsp_pad_value = {_T_1797,_T_1797}; // @[Cat.scala 30:58:@1416.4]
  assign dat_rsp_l0c0 = dat_l0c0_dummy ? dat_rsp_pad_value : dat_l0c0; // @[NV_NVDLA_CSC_dl_for_check.scala 1028:23:@1417.4]
  assign dat_rsp_l0c1 = dat_l0c1_dummy ? dat_rsp_pad_value : dat_l0c1; // @[NV_NVDLA_CSC_dl_for_check.scala 1033:23:@1421.4]
  assign _T_1799 = is_img_d1[26]; // @[NV_NVDLA_CSC_dl_for_check.scala 1046:37:@1426.4]
  assign _T_1802 = dat_rsp_bytes <= 8'h20; // @[NV_NVDLA_CSC_dl_for_check.scala 1047:43:@1427.4]
  assign _T_1803 = dat_rsp_sub_w[0]; // @[NV_NVDLA_CSC_dl_for_check.scala 1047:87:@1428.4]
  assign _T_1805 = _T_1803 == 1'h0; // @[NV_NVDLA_CSC_dl_for_check.scala 1047:91:@1429.4]
  assign _T_1806 = _T_1802 & _T_1805; // @[NV_NVDLA_CSC_dl_for_check.scala 1047:72:@1430.4]
  assign _T_1808 = dat_rsp_l0c0[255:0]; // @[NV_NVDLA_CSC_dl_for_check.scala 1047:171:@1431.4]
  assign _T_1809 = {256'h0,_T_1808}; // @[Cat.scala 30:58:@1432.4]
  assign _T_1815 = _T_1802 & _T_1803; // @[NV_NVDLA_CSC_dl_for_check.scala 1048:72:@1436.4]
  assign _T_1817 = dat_rsp_l0c0[511:256]; // @[NV_NVDLA_CSC_dl_for_check.scala 1048:171:@1437.4]
  assign _T_1818 = {256'h0,_T_1817}; // @[Cat.scala 30:58:@1438.4]
  assign _T_1819 = _T_1815 ? _T_1818 : dat_rsp_l0c0; // @[NV_NVDLA_CSC_dl_for_check.scala 1048:27:@1439.4]
  assign _T_1820 = _T_1806 ? _T_1809 : _T_1819; // @[NV_NVDLA_CSC_dl_for_check.scala 1047:27:@1440.4]
  assign dat_rsp_conv_8b = _T_1799 ? 512'h0 : _T_1820; // @[NV_NVDLA_CSC_dl_for_check.scala 1046:27:@1441.4]
  assign dat_rsp_conv_0 = dat_rsp_conv_8b[7:0]; // @[NV_NVDLA_CSC_dl_for_check.scala 1064:39:@1444.4]
  assign dat_rsp_conv_1 = dat_rsp_conv_8b[15:8]; // @[NV_NVDLA_CSC_dl_for_check.scala 1064:39:@1446.4]
  assign dat_rsp_conv_2 = dat_rsp_conv_8b[23:16]; // @[NV_NVDLA_CSC_dl_for_check.scala 1064:39:@1448.4]
  assign dat_rsp_conv_3 = dat_rsp_conv_8b[31:24]; // @[NV_NVDLA_CSC_dl_for_check.scala 1064:39:@1450.4]
  assign dat_rsp_conv_4 = dat_rsp_conv_8b[39:32]; // @[NV_NVDLA_CSC_dl_for_check.scala 1064:39:@1452.4]
  assign dat_rsp_conv_5 = dat_rsp_conv_8b[47:40]; // @[NV_NVDLA_CSC_dl_for_check.scala 1064:39:@1454.4]
  assign dat_rsp_conv_6 = dat_rsp_conv_8b[55:48]; // @[NV_NVDLA_CSC_dl_for_check.scala 1064:39:@1456.4]
  assign dat_rsp_conv_7 = dat_rsp_conv_8b[63:56]; // @[NV_NVDLA_CSC_dl_for_check.scala 1064:39:@1458.4]
  assign dat_rsp_conv_8 = dat_rsp_conv_8b[71:64]; // @[NV_NVDLA_CSC_dl_for_check.scala 1064:39:@1460.4]
  assign dat_rsp_conv_9 = dat_rsp_conv_8b[79:72]; // @[NV_NVDLA_CSC_dl_for_check.scala 1064:39:@1462.4]
  assign dat_rsp_conv_10 = dat_rsp_conv_8b[87:80]; // @[NV_NVDLA_CSC_dl_for_check.scala 1064:39:@1464.4]
  assign dat_rsp_conv_11 = dat_rsp_conv_8b[95:88]; // @[NV_NVDLA_CSC_dl_for_check.scala 1064:39:@1466.4]
  assign dat_rsp_conv_12 = dat_rsp_conv_8b[103:96]; // @[NV_NVDLA_CSC_dl_for_check.scala 1064:39:@1468.4]
  assign dat_rsp_conv_13 = dat_rsp_conv_8b[111:104]; // @[NV_NVDLA_CSC_dl_for_check.scala 1064:39:@1470.4]
  assign dat_rsp_conv_14 = dat_rsp_conv_8b[119:112]; // @[NV_NVDLA_CSC_dl_for_check.scala 1064:39:@1472.4]
  assign dat_rsp_conv_15 = dat_rsp_conv_8b[127:120]; // @[NV_NVDLA_CSC_dl_for_check.scala 1064:39:@1474.4]
  assign dat_rsp_conv_16 = dat_rsp_conv_8b[135:128]; // @[NV_NVDLA_CSC_dl_for_check.scala 1064:39:@1476.4]
  assign dat_rsp_conv_17 = dat_rsp_conv_8b[143:136]; // @[NV_NVDLA_CSC_dl_for_check.scala 1064:39:@1478.4]
  assign dat_rsp_conv_18 = dat_rsp_conv_8b[151:144]; // @[NV_NVDLA_CSC_dl_for_check.scala 1064:39:@1480.4]
  assign dat_rsp_conv_19 = dat_rsp_conv_8b[159:152]; // @[NV_NVDLA_CSC_dl_for_check.scala 1064:39:@1482.4]
  assign dat_rsp_conv_20 = dat_rsp_conv_8b[167:160]; // @[NV_NVDLA_CSC_dl_for_check.scala 1064:39:@1484.4]
  assign dat_rsp_conv_21 = dat_rsp_conv_8b[175:168]; // @[NV_NVDLA_CSC_dl_for_check.scala 1064:39:@1486.4]
  assign dat_rsp_conv_22 = dat_rsp_conv_8b[183:176]; // @[NV_NVDLA_CSC_dl_for_check.scala 1064:39:@1488.4]
  assign dat_rsp_conv_23 = dat_rsp_conv_8b[191:184]; // @[NV_NVDLA_CSC_dl_for_check.scala 1064:39:@1490.4]
  assign dat_rsp_conv_24 = dat_rsp_conv_8b[199:192]; // @[NV_NVDLA_CSC_dl_for_check.scala 1064:39:@1492.4]
  assign dat_rsp_conv_25 = dat_rsp_conv_8b[207:200]; // @[NV_NVDLA_CSC_dl_for_check.scala 1064:39:@1494.4]
  assign dat_rsp_conv_26 = dat_rsp_conv_8b[215:208]; // @[NV_NVDLA_CSC_dl_for_check.scala 1064:39:@1496.4]
  assign dat_rsp_conv_27 = dat_rsp_conv_8b[223:216]; // @[NV_NVDLA_CSC_dl_for_check.scala 1064:39:@1498.4]
  assign dat_rsp_conv_28 = dat_rsp_conv_8b[231:224]; // @[NV_NVDLA_CSC_dl_for_check.scala 1064:39:@1500.4]
  assign dat_rsp_conv_29 = dat_rsp_conv_8b[239:232]; // @[NV_NVDLA_CSC_dl_for_check.scala 1064:39:@1502.4]
  assign dat_rsp_conv_30 = dat_rsp_conv_8b[247:240]; // @[NV_NVDLA_CSC_dl_for_check.scala 1064:39:@1504.4]
  assign dat_rsp_conv_31 = dat_rsp_conv_8b[255:248]; // @[NV_NVDLA_CSC_dl_for_check.scala 1064:39:@1506.4]
  assign dat_rsp_conv_32 = dat_rsp_conv_8b[263:256]; // @[NV_NVDLA_CSC_dl_for_check.scala 1064:39:@1508.4]
  assign dat_rsp_conv_33 = dat_rsp_conv_8b[271:264]; // @[NV_NVDLA_CSC_dl_for_check.scala 1064:39:@1510.4]
  assign dat_rsp_conv_34 = dat_rsp_conv_8b[279:272]; // @[NV_NVDLA_CSC_dl_for_check.scala 1064:39:@1512.4]
  assign dat_rsp_conv_35 = dat_rsp_conv_8b[287:280]; // @[NV_NVDLA_CSC_dl_for_check.scala 1064:39:@1514.4]
  assign dat_rsp_conv_36 = dat_rsp_conv_8b[295:288]; // @[NV_NVDLA_CSC_dl_for_check.scala 1064:39:@1516.4]
  assign dat_rsp_conv_37 = dat_rsp_conv_8b[303:296]; // @[NV_NVDLA_CSC_dl_for_check.scala 1064:39:@1518.4]
  assign dat_rsp_conv_38 = dat_rsp_conv_8b[311:304]; // @[NV_NVDLA_CSC_dl_for_check.scala 1064:39:@1520.4]
  assign dat_rsp_conv_39 = dat_rsp_conv_8b[319:312]; // @[NV_NVDLA_CSC_dl_for_check.scala 1064:39:@1522.4]
  assign dat_rsp_conv_40 = dat_rsp_conv_8b[327:320]; // @[NV_NVDLA_CSC_dl_for_check.scala 1064:39:@1524.4]
  assign dat_rsp_conv_41 = dat_rsp_conv_8b[335:328]; // @[NV_NVDLA_CSC_dl_for_check.scala 1064:39:@1526.4]
  assign dat_rsp_conv_42 = dat_rsp_conv_8b[343:336]; // @[NV_NVDLA_CSC_dl_for_check.scala 1064:39:@1528.4]
  assign dat_rsp_conv_43 = dat_rsp_conv_8b[351:344]; // @[NV_NVDLA_CSC_dl_for_check.scala 1064:39:@1530.4]
  assign dat_rsp_conv_44 = dat_rsp_conv_8b[359:352]; // @[NV_NVDLA_CSC_dl_for_check.scala 1064:39:@1532.4]
  assign dat_rsp_conv_45 = dat_rsp_conv_8b[367:360]; // @[NV_NVDLA_CSC_dl_for_check.scala 1064:39:@1534.4]
  assign dat_rsp_conv_46 = dat_rsp_conv_8b[375:368]; // @[NV_NVDLA_CSC_dl_for_check.scala 1064:39:@1536.4]
  assign dat_rsp_conv_47 = dat_rsp_conv_8b[383:376]; // @[NV_NVDLA_CSC_dl_for_check.scala 1064:39:@1538.4]
  assign dat_rsp_conv_48 = dat_rsp_conv_8b[391:384]; // @[NV_NVDLA_CSC_dl_for_check.scala 1064:39:@1540.4]
  assign dat_rsp_conv_49 = dat_rsp_conv_8b[399:392]; // @[NV_NVDLA_CSC_dl_for_check.scala 1064:39:@1542.4]
  assign dat_rsp_conv_50 = dat_rsp_conv_8b[407:400]; // @[NV_NVDLA_CSC_dl_for_check.scala 1064:39:@1544.4]
  assign dat_rsp_conv_51 = dat_rsp_conv_8b[415:408]; // @[NV_NVDLA_CSC_dl_for_check.scala 1064:39:@1546.4]
  assign dat_rsp_conv_52 = dat_rsp_conv_8b[423:416]; // @[NV_NVDLA_CSC_dl_for_check.scala 1064:39:@1548.4]
  assign dat_rsp_conv_53 = dat_rsp_conv_8b[431:424]; // @[NV_NVDLA_CSC_dl_for_check.scala 1064:39:@1550.4]
  assign dat_rsp_conv_54 = dat_rsp_conv_8b[439:432]; // @[NV_NVDLA_CSC_dl_for_check.scala 1064:39:@1552.4]
  assign dat_rsp_conv_55 = dat_rsp_conv_8b[447:440]; // @[NV_NVDLA_CSC_dl_for_check.scala 1064:39:@1554.4]
  assign dat_rsp_conv_56 = dat_rsp_conv_8b[455:448]; // @[NV_NVDLA_CSC_dl_for_check.scala 1064:39:@1556.4]
  assign dat_rsp_conv_57 = dat_rsp_conv_8b[463:456]; // @[NV_NVDLA_CSC_dl_for_check.scala 1064:39:@1558.4]
  assign dat_rsp_conv_58 = dat_rsp_conv_8b[471:464]; // @[NV_NVDLA_CSC_dl_for_check.scala 1064:39:@1560.4]
  assign dat_rsp_conv_59 = dat_rsp_conv_8b[479:472]; // @[NV_NVDLA_CSC_dl_for_check.scala 1064:39:@1562.4]
  assign dat_rsp_conv_60 = dat_rsp_conv_8b[487:480]; // @[NV_NVDLA_CSC_dl_for_check.scala 1064:39:@1564.4]
  assign dat_rsp_conv_61 = dat_rsp_conv_8b[495:488]; // @[NV_NVDLA_CSC_dl_for_check.scala 1064:39:@1566.4]
  assign dat_rsp_conv_62 = dat_rsp_conv_8b[503:496]; // @[NV_NVDLA_CSC_dl_for_check.scala 1064:39:@1568.4]
  assign dat_rsp_conv_63 = dat_rsp_conv_8b[511:504]; // @[NV_NVDLA_CSC_dl_for_check.scala 1064:39:@1570.4]
  assign _T_1961 = is_img_d1[27]; // @[NV_NVDLA_CSC_dl_for_check.scala 1077:39:@1578.4]
  assign _T_1962 = ~ _T_1961; // @[NV_NVDLA_CSC_dl_for_check.scala 1077:29:@1579.4]
  assign _T_1964 = {dat_rsp_l0c0,dat_rsp_l0c1}; // @[Cat.scala 30:58:@1580.4]
  assign dat_rsp_l0_sft_in = _T_1962 ? 1024'h0 : _T_1964; // @[NV_NVDLA_CSC_dl_for_check.scala 1077:28:@1581.4]
  assign _T_1965 = is_img_d1[28]; // @[NV_NVDLA_CSC_dl_for_check.scala 1078:39:@1582.4]
  assign _T_1966 = ~ _T_1965; // @[NV_NVDLA_CSC_dl_for_check.scala 1078:29:@1583.4]
  assign _T_1968 = {_T_1797,_T_1797,_T_1797,_T_1797}; // @[Cat.scala 30:58:@1584.4]
  assign dat_rsp_l1_sft_in = _T_1966 ? 1024'h0 : _T_1968; // @[NV_NVDLA_CSC_dl_for_check.scala 1078:28:@1585.4]
  assign _T_1969 = is_img_d1[29]; // @[NV_NVDLA_CSC_dl_for_check.scala 1079:39:@1586.4]
  assign _T_1970 = ~ _T_1969; // @[NV_NVDLA_CSC_dl_for_check.scala 1079:29:@1587.4]
  assign dat_rsp_l2_sft_in = _T_1970 ? 1024'h0 : _T_1968; // @[NV_NVDLA_CSC_dl_for_check.scala 1079:28:@1589.4]
  assign _T_1973 = is_img_d1[30]; // @[NV_NVDLA_CSC_dl_for_check.scala 1080:39:@1590.4]
  assign _T_1974 = ~ _T_1973; // @[NV_NVDLA_CSC_dl_for_check.scala 1080:29:@1591.4]
  assign dat_rsp_l3_sft_in = _T_1974 ? 1024'h0 : _T_1968; // @[NV_NVDLA_CSC_dl_for_check.scala 1080:28:@1593.4]
  assign _T_1978 = {rsp_sft_cnt_l0,3'h0}; // @[Cat.scala 30:58:@1594.4]
  assign _T_1979 = dat_rsp_l0_sft_in >> _T_1978; // @[NV_NVDLA_CSC_dl_for_check.scala 1082:41:@1595.4]
  assign dat_rsp_l0_sft = _T_1979[511:0]; // @[NV_NVDLA_CSC_dl_for_check.scala 1082:82:@1596.4]
  assign _T_1981 = {rsp_sft_cnt_l1,3'h0}; // @[Cat.scala 30:58:@1597.4]
  assign _T_1982 = dat_rsp_l1_sft_in >> _T_1981; // @[NV_NVDLA_CSC_dl_for_check.scala 1083:41:@1598.4]
  assign dat_rsp_l1_sft = _T_1982[511:0]; // @[NV_NVDLA_CSC_dl_for_check.scala 1083:82:@1599.4]
  assign _T_1984 = {rsp_sft_cnt_l2,3'h0}; // @[Cat.scala 30:58:@1600.4]
  assign _T_1985 = dat_rsp_l2_sft_in >> _T_1984; // @[NV_NVDLA_CSC_dl_for_check.scala 1084:41:@1601.4]
  assign dat_rsp_l2_sft = _T_1985[511:0]; // @[NV_NVDLA_CSC_dl_for_check.scala 1084:82:@1602.4]
  assign _T_1987 = {rsp_sft_cnt_l3,3'h0}; // @[Cat.scala 30:58:@1603.4]
  assign _T_1988 = dat_rsp_l3_sft_in >> _T_1987; // @[NV_NVDLA_CSC_dl_for_check.scala 1085:41:@1604.4]
  assign dat_rsp_l3_sft = _T_1988[511:0]; // @[NV_NVDLA_CSC_dl_for_check.scala 1085:82:@1605.4]
  assign _T_1989 = is_img_d1[32]; // @[NV_NVDLA_CSC_dl_for_check.scala 1087:36:@1606.4]
  assign _T_1990 = ~ _T_1989; // @[NV_NVDLA_CSC_dl_for_check.scala 1087:26:@1607.4]
  assign _T_1993 = sub_h_total_g8 == 3'h4; // @[NV_NVDLA_CSC_dl_for_check.scala 1088:41:@1608.4]
  assign _T_1994 = dat_rsp_l3_sft[127:0]; // @[NV_NVDLA_CSC_dl_for_check.scala 1088:81:@1609.4]
  assign _T_2000 = {_T_1994,dat_rsp_l2_sft_d3,dat_rsp_l1_sft_d3,dat_rsp_l0_sft_d3}; // @[Cat.scala 30:58:@1615.4]
  assign _T_2002 = sub_h_total_g8 == 3'h2; // @[NV_NVDLA_CSC_dl_for_check.scala 1089:41:@1616.4]
  assign _T_2003 = dat_rsp_l1_sft[255:0]; // @[NV_NVDLA_CSC_dl_for_check.scala 1089:81:@1617.4]
  assign _T_2005 = {_T_2003,dat_rsp_l0_sft_d1}; // @[Cat.scala 30:58:@1619.4]
  assign _T_2007 = _T_2002 ? _T_2005 : dat_rsp_l0_sft; // @[NV_NVDLA_CSC_dl_for_check.scala 1089:25:@1621.4]
  assign _T_2008 = _T_1993 ? _T_2000 : _T_2007; // @[NV_NVDLA_CSC_dl_for_check.scala 1088:25:@1622.4]
  assign dat_rsp_img_8b = _T_1990 ? 512'h0 : _T_2008; // @[NV_NVDLA_CSC_dl_for_check.scala 1087:25:@1623.4]
  assign dat_rsp_img_0 = dat_rsp_img_8b[7:0]; // @[NV_NVDLA_CSC_dl_for_check.scala 1095:37:@1625.4]
  assign dat_rsp_img_1 = dat_rsp_img_8b[15:8]; // @[NV_NVDLA_CSC_dl_for_check.scala 1095:37:@1627.4]
  assign dat_rsp_img_2 = dat_rsp_img_8b[23:16]; // @[NV_NVDLA_CSC_dl_for_check.scala 1095:37:@1629.4]
  assign dat_rsp_img_3 = dat_rsp_img_8b[31:24]; // @[NV_NVDLA_CSC_dl_for_check.scala 1095:37:@1631.4]
  assign dat_rsp_img_4 = dat_rsp_img_8b[39:32]; // @[NV_NVDLA_CSC_dl_for_check.scala 1095:37:@1633.4]
  assign dat_rsp_img_5 = dat_rsp_img_8b[47:40]; // @[NV_NVDLA_CSC_dl_for_check.scala 1095:37:@1635.4]
  assign dat_rsp_img_6 = dat_rsp_img_8b[55:48]; // @[NV_NVDLA_CSC_dl_for_check.scala 1095:37:@1637.4]
  assign dat_rsp_img_7 = dat_rsp_img_8b[63:56]; // @[NV_NVDLA_CSC_dl_for_check.scala 1095:37:@1639.4]
  assign dat_rsp_img_8 = dat_rsp_img_8b[71:64]; // @[NV_NVDLA_CSC_dl_for_check.scala 1095:37:@1641.4]
  assign dat_rsp_img_9 = dat_rsp_img_8b[79:72]; // @[NV_NVDLA_CSC_dl_for_check.scala 1095:37:@1643.4]
  assign dat_rsp_img_10 = dat_rsp_img_8b[87:80]; // @[NV_NVDLA_CSC_dl_for_check.scala 1095:37:@1645.4]
  assign dat_rsp_img_11 = dat_rsp_img_8b[95:88]; // @[NV_NVDLA_CSC_dl_for_check.scala 1095:37:@1647.4]
  assign dat_rsp_img_12 = dat_rsp_img_8b[103:96]; // @[NV_NVDLA_CSC_dl_for_check.scala 1095:37:@1649.4]
  assign dat_rsp_img_13 = dat_rsp_img_8b[111:104]; // @[NV_NVDLA_CSC_dl_for_check.scala 1095:37:@1651.4]
  assign dat_rsp_img_14 = dat_rsp_img_8b[119:112]; // @[NV_NVDLA_CSC_dl_for_check.scala 1095:37:@1653.4]
  assign dat_rsp_img_15 = dat_rsp_img_8b[127:120]; // @[NV_NVDLA_CSC_dl_for_check.scala 1095:37:@1655.4]
  assign dat_rsp_img_16 = dat_rsp_img_8b[135:128]; // @[NV_NVDLA_CSC_dl_for_check.scala 1095:37:@1657.4]
  assign dat_rsp_img_17 = dat_rsp_img_8b[143:136]; // @[NV_NVDLA_CSC_dl_for_check.scala 1095:37:@1659.4]
  assign dat_rsp_img_18 = dat_rsp_img_8b[151:144]; // @[NV_NVDLA_CSC_dl_for_check.scala 1095:37:@1661.4]
  assign dat_rsp_img_19 = dat_rsp_img_8b[159:152]; // @[NV_NVDLA_CSC_dl_for_check.scala 1095:37:@1663.4]
  assign dat_rsp_img_20 = dat_rsp_img_8b[167:160]; // @[NV_NVDLA_CSC_dl_for_check.scala 1095:37:@1665.4]
  assign dat_rsp_img_21 = dat_rsp_img_8b[175:168]; // @[NV_NVDLA_CSC_dl_for_check.scala 1095:37:@1667.4]
  assign dat_rsp_img_22 = dat_rsp_img_8b[183:176]; // @[NV_NVDLA_CSC_dl_for_check.scala 1095:37:@1669.4]
  assign dat_rsp_img_23 = dat_rsp_img_8b[191:184]; // @[NV_NVDLA_CSC_dl_for_check.scala 1095:37:@1671.4]
  assign dat_rsp_img_24 = dat_rsp_img_8b[199:192]; // @[NV_NVDLA_CSC_dl_for_check.scala 1095:37:@1673.4]
  assign dat_rsp_img_25 = dat_rsp_img_8b[207:200]; // @[NV_NVDLA_CSC_dl_for_check.scala 1095:37:@1675.4]
  assign dat_rsp_img_26 = dat_rsp_img_8b[215:208]; // @[NV_NVDLA_CSC_dl_for_check.scala 1095:37:@1677.4]
  assign dat_rsp_img_27 = dat_rsp_img_8b[223:216]; // @[NV_NVDLA_CSC_dl_for_check.scala 1095:37:@1679.4]
  assign dat_rsp_img_28 = dat_rsp_img_8b[231:224]; // @[NV_NVDLA_CSC_dl_for_check.scala 1095:37:@1681.4]
  assign dat_rsp_img_29 = dat_rsp_img_8b[239:232]; // @[NV_NVDLA_CSC_dl_for_check.scala 1095:37:@1683.4]
  assign dat_rsp_img_30 = dat_rsp_img_8b[247:240]; // @[NV_NVDLA_CSC_dl_for_check.scala 1095:37:@1685.4]
  assign dat_rsp_img_31 = dat_rsp_img_8b[255:248]; // @[NV_NVDLA_CSC_dl_for_check.scala 1095:37:@1687.4]
  assign dat_rsp_img_32 = dat_rsp_img_8b[263:256]; // @[NV_NVDLA_CSC_dl_for_check.scala 1095:37:@1689.4]
  assign dat_rsp_img_33 = dat_rsp_img_8b[271:264]; // @[NV_NVDLA_CSC_dl_for_check.scala 1095:37:@1691.4]
  assign dat_rsp_img_34 = dat_rsp_img_8b[279:272]; // @[NV_NVDLA_CSC_dl_for_check.scala 1095:37:@1693.4]
  assign dat_rsp_img_35 = dat_rsp_img_8b[287:280]; // @[NV_NVDLA_CSC_dl_for_check.scala 1095:37:@1695.4]
  assign dat_rsp_img_36 = dat_rsp_img_8b[295:288]; // @[NV_NVDLA_CSC_dl_for_check.scala 1095:37:@1697.4]
  assign dat_rsp_img_37 = dat_rsp_img_8b[303:296]; // @[NV_NVDLA_CSC_dl_for_check.scala 1095:37:@1699.4]
  assign dat_rsp_img_38 = dat_rsp_img_8b[311:304]; // @[NV_NVDLA_CSC_dl_for_check.scala 1095:37:@1701.4]
  assign dat_rsp_img_39 = dat_rsp_img_8b[319:312]; // @[NV_NVDLA_CSC_dl_for_check.scala 1095:37:@1703.4]
  assign dat_rsp_img_40 = dat_rsp_img_8b[327:320]; // @[NV_NVDLA_CSC_dl_for_check.scala 1095:37:@1705.4]
  assign dat_rsp_img_41 = dat_rsp_img_8b[335:328]; // @[NV_NVDLA_CSC_dl_for_check.scala 1095:37:@1707.4]
  assign dat_rsp_img_42 = dat_rsp_img_8b[343:336]; // @[NV_NVDLA_CSC_dl_for_check.scala 1095:37:@1709.4]
  assign dat_rsp_img_43 = dat_rsp_img_8b[351:344]; // @[NV_NVDLA_CSC_dl_for_check.scala 1095:37:@1711.4]
  assign dat_rsp_img_44 = dat_rsp_img_8b[359:352]; // @[NV_NVDLA_CSC_dl_for_check.scala 1095:37:@1713.4]
  assign dat_rsp_img_45 = dat_rsp_img_8b[367:360]; // @[NV_NVDLA_CSC_dl_for_check.scala 1095:37:@1715.4]
  assign dat_rsp_img_46 = dat_rsp_img_8b[375:368]; // @[NV_NVDLA_CSC_dl_for_check.scala 1095:37:@1717.4]
  assign dat_rsp_img_47 = dat_rsp_img_8b[383:376]; // @[NV_NVDLA_CSC_dl_for_check.scala 1095:37:@1719.4]
  assign dat_rsp_img_48 = dat_rsp_img_8b[391:384]; // @[NV_NVDLA_CSC_dl_for_check.scala 1095:37:@1721.4]
  assign dat_rsp_img_49 = dat_rsp_img_8b[399:392]; // @[NV_NVDLA_CSC_dl_for_check.scala 1095:37:@1723.4]
  assign dat_rsp_img_50 = dat_rsp_img_8b[407:400]; // @[NV_NVDLA_CSC_dl_for_check.scala 1095:37:@1725.4]
  assign dat_rsp_img_51 = dat_rsp_img_8b[415:408]; // @[NV_NVDLA_CSC_dl_for_check.scala 1095:37:@1727.4]
  assign dat_rsp_img_52 = dat_rsp_img_8b[423:416]; // @[NV_NVDLA_CSC_dl_for_check.scala 1095:37:@1729.4]
  assign dat_rsp_img_53 = dat_rsp_img_8b[431:424]; // @[NV_NVDLA_CSC_dl_for_check.scala 1095:37:@1731.4]
  assign dat_rsp_img_54 = dat_rsp_img_8b[439:432]; // @[NV_NVDLA_CSC_dl_for_check.scala 1095:37:@1733.4]
  assign dat_rsp_img_55 = dat_rsp_img_8b[447:440]; // @[NV_NVDLA_CSC_dl_for_check.scala 1095:37:@1735.4]
  assign dat_rsp_img_56 = dat_rsp_img_8b[455:448]; // @[NV_NVDLA_CSC_dl_for_check.scala 1095:37:@1737.4]
  assign dat_rsp_img_57 = dat_rsp_img_8b[463:456]; // @[NV_NVDLA_CSC_dl_for_check.scala 1095:37:@1739.4]
  assign dat_rsp_img_58 = dat_rsp_img_8b[471:464]; // @[NV_NVDLA_CSC_dl_for_check.scala 1095:37:@1741.4]
  assign dat_rsp_img_59 = dat_rsp_img_8b[479:472]; // @[NV_NVDLA_CSC_dl_for_check.scala 1095:37:@1743.4]
  assign dat_rsp_img_60 = dat_rsp_img_8b[487:480]; // @[NV_NVDLA_CSC_dl_for_check.scala 1095:37:@1745.4]
  assign dat_rsp_img_61 = dat_rsp_img_8b[495:488]; // @[NV_NVDLA_CSC_dl_for_check.scala 1095:37:@1747.4]
  assign dat_rsp_img_62 = dat_rsp_img_8b[503:496]; // @[NV_NVDLA_CSC_dl_for_check.scala 1095:37:@1749.4]
  assign dat_rsp_img_63 = dat_rsp_img_8b[511:504]; // @[NV_NVDLA_CSC_dl_for_check.scala 1095:37:@1751.4]
  assign _T_2143 = sub_h_total_g9 != 3'h1; // @[NV_NVDLA_CSC_dl_for_check.scala 1098:59:@1753.4]
  assign dat_rsp_sft_d1_en = dat_rsp_l0_pvld & _T_2143; // @[NV_NVDLA_CSC_dl_for_check.scala 1098:41:@1754.4]
  assign _T_2145 = sub_h_total_g9 == 3'h4; // @[NV_NVDLA_CSC_dl_for_check.scala 1099:59:@1755.4]
  assign dat_rsp_sft_d2_en = dat_rsp_l1_pvld & _T_2145; // @[NV_NVDLA_CSC_dl_for_check.scala 1099:41:@1756.4]
  assign dat_rsp_sft_d3_en = dat_rsp_l2_pvld & _T_2145; // @[NV_NVDLA_CSC_dl_for_check.scala 1100:41:@1758.4]
  assign _GEN_149 = dat_rsp_sft_d1_en ? dat_rsp_l0_sft : {{256'd0}, dat_rsp_l0_sft_d1}; // @[NV_NVDLA_CSC_dl_for_check.scala 1102:24:@1759.4]
  assign _GEN_150 = dat_rsp_sft_d2_en ? dat_rsp_l0_sft_d1 : {{128'd0}, dat_rsp_l0_sft_d2}; // @[NV_NVDLA_CSC_dl_for_check.scala 1105:24:@1762.4]
  assign _GEN_151 = dat_rsp_sft_d2_en ? dat_rsp_l1_sft : {{384'd0}, dat_rsp_l1_sft_d2}; // @[NV_NVDLA_CSC_dl_for_check.scala 1105:24:@1762.4]
  assign _GEN_154 = dat_rsp_sft_d3_en ? dat_rsp_l2_sft : {{384'd0}, dat_rsp_l2_sft_d3}; // @[NV_NVDLA_CSC_dl_for_check.scala 1109:24:@1766.4]
  assign _T_2153 = 319'hffffffffffffffff << dat_rsp_bytes; // @[NV_NVDLA_CSC_dl_for_check.scala 1118:56:@1772.4]
  assign _T_2154 = _T_2153[63:0]; // @[NV_NVDLA_CSC_dl_for_check.scala 1118:73:@1773.4]
  assign dat_rsp_ori_mask = ~ _T_2154; // @[NV_NVDLA_CSC_dl_for_check.scala 1118:24:@1774.4]
  assign _T_2156 = dat_rsp_cur_sub_h >= 2'h1; // @[NV_NVDLA_CSC_dl_for_check.scala 1120:51:@1775.4]
  assign dat_rsp_cur_h_mask_p1 = _T_2156 ? 64'hffffffffffffffff : 64'h0; // @[NV_NVDLA_CSC_dl_for_check.scala 1120:32:@1777.4]
  assign _T_2164 = dat_rsp_cur_sub_h >= 2'h2; // @[NV_NVDLA_CSC_dl_for_check.scala 1121:51:@1778.4]
  assign dat_rsp_cur_h_mask_p2 = _T_2164 ? 32'hffffffff : 32'h0; // @[NV_NVDLA_CSC_dl_for_check.scala 1121:32:@1780.4]
  assign _T_2172 = dat_rsp_cur_sub_h == 2'h3; // @[NV_NVDLA_CSC_dl_for_check.scala 1122:51:@1781.4]
  assign dat_rsp_cur_h_mask_p3 = _T_2172 ? 32'hffffffff : 32'h0; // @[NV_NVDLA_CSC_dl_for_check.scala 1122:32:@1783.4]
  assign _T_2179 = dat_rsp_cur_h_mask_p1[31:0]; // @[NV_NVDLA_CSC_dl_for_check.scala 1124:57:@1784.4]
  assign dat_rsp_cur_h_e2_mask_8b = {_T_2179,32'hffffffff}; // @[Cat.scala 30:58:@1786.4]
  assign _T_2185 = dat_rsp_cur_h_mask_p3[15:0]; // @[NV_NVDLA_CSC_dl_for_check.scala 1125:57:@1787.4]
  assign _T_2186 = dat_rsp_cur_h_mask_p2[15:0]; // @[NV_NVDLA_CSC_dl_for_check.scala 1125:106:@1788.4]
  assign _T_2187 = dat_rsp_cur_h_mask_p1[15:0]; // @[NV_NVDLA_CSC_dl_for_check.scala 1125:155:@1789.4]
  assign dat_rsp_cur_h_e4_mask_8b = {_T_2185,_T_2186,_T_2187,16'hffff}; // @[Cat.scala 30:58:@1793.4]
  assign _T_2196 = sub_h_total_g11 == 3'h4; // @[NV_NVDLA_CSC_dl_for_check.scala 1127:43:@1794.4]
  assign _T_2197 = dat_rsp_ori_mask[15:0]; // @[NV_NVDLA_CSC_dl_for_check.scala 1127:89:@1795.4]
  assign _T_2199 = {_T_2197,_T_2197,_T_2197,_T_2197}; // @[Cat.scala 30:58:@1797.4]
  assign _T_2200 = _T_2199 & dat_rsp_cur_h_e4_mask_8b; // @[NV_NVDLA_CSC_dl_for_check.scala 1127:116:@1798.4]
  assign _T_2202 = sub_h_total_g11 == 3'h2; // @[NV_NVDLA_CSC_dl_for_check.scala 1128:43:@1799.4]
  assign _T_2203 = dat_rsp_ori_mask[31:0]; // @[NV_NVDLA_CSC_dl_for_check.scala 1128:89:@1800.4]
  assign _T_2204 = {_T_2203,_T_2203}; // @[Cat.scala 30:58:@1801.4]
  assign _T_2205 = _T_2204 & dat_rsp_cur_h_e2_mask_8b; // @[NV_NVDLA_CSC_dl_for_check.scala 1128:116:@1802.4]
  assign _T_2206 = _T_2202 ? _T_2205 : dat_rsp_ori_mask; // @[NV_NVDLA_CSC_dl_for_check.scala 1128:26:@1803.4]
  assign dat_rsp_mask_8b = _T_2196 ? _T_2200 : _T_2206; // @[NV_NVDLA_CSC_dl_for_check.scala 1127:26:@1804.4]
  assign _T_2207 = is_img_d1[33]; // @[NV_NVDLA_CSC_dl_for_check.scala 1132:35:@1805.4]
  assign dat_rsp_data_w_0 = _T_2207 ? dat_rsp_img_0 : dat_rsp_conv_0; // @[NV_NVDLA_CSC_dl_for_check.scala 1132:25:@1806.4]
  assign dat_rsp_data_w_1 = _T_2207 ? dat_rsp_img_1 : dat_rsp_conv_1; // @[NV_NVDLA_CSC_dl_for_check.scala 1132:25:@1806.4]
  assign dat_rsp_data_w_2 = _T_2207 ? dat_rsp_img_2 : dat_rsp_conv_2; // @[NV_NVDLA_CSC_dl_for_check.scala 1132:25:@1806.4]
  assign dat_rsp_data_w_3 = _T_2207 ? dat_rsp_img_3 : dat_rsp_conv_3; // @[NV_NVDLA_CSC_dl_for_check.scala 1132:25:@1806.4]
  assign dat_rsp_data_w_4 = _T_2207 ? dat_rsp_img_4 : dat_rsp_conv_4; // @[NV_NVDLA_CSC_dl_for_check.scala 1132:25:@1806.4]
  assign dat_rsp_data_w_5 = _T_2207 ? dat_rsp_img_5 : dat_rsp_conv_5; // @[NV_NVDLA_CSC_dl_for_check.scala 1132:25:@1806.4]
  assign dat_rsp_data_w_6 = _T_2207 ? dat_rsp_img_6 : dat_rsp_conv_6; // @[NV_NVDLA_CSC_dl_for_check.scala 1132:25:@1806.4]
  assign dat_rsp_data_w_7 = _T_2207 ? dat_rsp_img_7 : dat_rsp_conv_7; // @[NV_NVDLA_CSC_dl_for_check.scala 1132:25:@1806.4]
  assign dat_rsp_data_w_8 = _T_2207 ? dat_rsp_img_8 : dat_rsp_conv_8; // @[NV_NVDLA_CSC_dl_for_check.scala 1132:25:@1806.4]
  assign dat_rsp_data_w_9 = _T_2207 ? dat_rsp_img_9 : dat_rsp_conv_9; // @[NV_NVDLA_CSC_dl_for_check.scala 1132:25:@1806.4]
  assign dat_rsp_data_w_10 = _T_2207 ? dat_rsp_img_10 : dat_rsp_conv_10; // @[NV_NVDLA_CSC_dl_for_check.scala 1132:25:@1806.4]
  assign dat_rsp_data_w_11 = _T_2207 ? dat_rsp_img_11 : dat_rsp_conv_11; // @[NV_NVDLA_CSC_dl_for_check.scala 1132:25:@1806.4]
  assign dat_rsp_data_w_12 = _T_2207 ? dat_rsp_img_12 : dat_rsp_conv_12; // @[NV_NVDLA_CSC_dl_for_check.scala 1132:25:@1806.4]
  assign dat_rsp_data_w_13 = _T_2207 ? dat_rsp_img_13 : dat_rsp_conv_13; // @[NV_NVDLA_CSC_dl_for_check.scala 1132:25:@1806.4]
  assign dat_rsp_data_w_14 = _T_2207 ? dat_rsp_img_14 : dat_rsp_conv_14; // @[NV_NVDLA_CSC_dl_for_check.scala 1132:25:@1806.4]
  assign dat_rsp_data_w_15 = _T_2207 ? dat_rsp_img_15 : dat_rsp_conv_15; // @[NV_NVDLA_CSC_dl_for_check.scala 1132:25:@1806.4]
  assign dat_rsp_data_w_16 = _T_2207 ? dat_rsp_img_16 : dat_rsp_conv_16; // @[NV_NVDLA_CSC_dl_for_check.scala 1132:25:@1806.4]
  assign dat_rsp_data_w_17 = _T_2207 ? dat_rsp_img_17 : dat_rsp_conv_17; // @[NV_NVDLA_CSC_dl_for_check.scala 1132:25:@1806.4]
  assign dat_rsp_data_w_18 = _T_2207 ? dat_rsp_img_18 : dat_rsp_conv_18; // @[NV_NVDLA_CSC_dl_for_check.scala 1132:25:@1806.4]
  assign dat_rsp_data_w_19 = _T_2207 ? dat_rsp_img_19 : dat_rsp_conv_19; // @[NV_NVDLA_CSC_dl_for_check.scala 1132:25:@1806.4]
  assign dat_rsp_data_w_20 = _T_2207 ? dat_rsp_img_20 : dat_rsp_conv_20; // @[NV_NVDLA_CSC_dl_for_check.scala 1132:25:@1806.4]
  assign dat_rsp_data_w_21 = _T_2207 ? dat_rsp_img_21 : dat_rsp_conv_21; // @[NV_NVDLA_CSC_dl_for_check.scala 1132:25:@1806.4]
  assign dat_rsp_data_w_22 = _T_2207 ? dat_rsp_img_22 : dat_rsp_conv_22; // @[NV_NVDLA_CSC_dl_for_check.scala 1132:25:@1806.4]
  assign dat_rsp_data_w_23 = _T_2207 ? dat_rsp_img_23 : dat_rsp_conv_23; // @[NV_NVDLA_CSC_dl_for_check.scala 1132:25:@1806.4]
  assign dat_rsp_data_w_24 = _T_2207 ? dat_rsp_img_24 : dat_rsp_conv_24; // @[NV_NVDLA_CSC_dl_for_check.scala 1132:25:@1806.4]
  assign dat_rsp_data_w_25 = _T_2207 ? dat_rsp_img_25 : dat_rsp_conv_25; // @[NV_NVDLA_CSC_dl_for_check.scala 1132:25:@1806.4]
  assign dat_rsp_data_w_26 = _T_2207 ? dat_rsp_img_26 : dat_rsp_conv_26; // @[NV_NVDLA_CSC_dl_for_check.scala 1132:25:@1806.4]
  assign dat_rsp_data_w_27 = _T_2207 ? dat_rsp_img_27 : dat_rsp_conv_27; // @[NV_NVDLA_CSC_dl_for_check.scala 1132:25:@1806.4]
  assign dat_rsp_data_w_28 = _T_2207 ? dat_rsp_img_28 : dat_rsp_conv_28; // @[NV_NVDLA_CSC_dl_for_check.scala 1132:25:@1806.4]
  assign dat_rsp_data_w_29 = _T_2207 ? dat_rsp_img_29 : dat_rsp_conv_29; // @[NV_NVDLA_CSC_dl_for_check.scala 1132:25:@1806.4]
  assign dat_rsp_data_w_30 = _T_2207 ? dat_rsp_img_30 : dat_rsp_conv_30; // @[NV_NVDLA_CSC_dl_for_check.scala 1132:25:@1806.4]
  assign dat_rsp_data_w_31 = _T_2207 ? dat_rsp_img_31 : dat_rsp_conv_31; // @[NV_NVDLA_CSC_dl_for_check.scala 1132:25:@1806.4]
  assign dat_rsp_data_w_32 = _T_2207 ? dat_rsp_img_32 : dat_rsp_conv_32; // @[NV_NVDLA_CSC_dl_for_check.scala 1132:25:@1806.4]
  assign dat_rsp_data_w_33 = _T_2207 ? dat_rsp_img_33 : dat_rsp_conv_33; // @[NV_NVDLA_CSC_dl_for_check.scala 1132:25:@1806.4]
  assign dat_rsp_data_w_34 = _T_2207 ? dat_rsp_img_34 : dat_rsp_conv_34; // @[NV_NVDLA_CSC_dl_for_check.scala 1132:25:@1806.4]
  assign dat_rsp_data_w_35 = _T_2207 ? dat_rsp_img_35 : dat_rsp_conv_35; // @[NV_NVDLA_CSC_dl_for_check.scala 1132:25:@1806.4]
  assign dat_rsp_data_w_36 = _T_2207 ? dat_rsp_img_36 : dat_rsp_conv_36; // @[NV_NVDLA_CSC_dl_for_check.scala 1132:25:@1806.4]
  assign dat_rsp_data_w_37 = _T_2207 ? dat_rsp_img_37 : dat_rsp_conv_37; // @[NV_NVDLA_CSC_dl_for_check.scala 1132:25:@1806.4]
  assign dat_rsp_data_w_38 = _T_2207 ? dat_rsp_img_38 : dat_rsp_conv_38; // @[NV_NVDLA_CSC_dl_for_check.scala 1132:25:@1806.4]
  assign dat_rsp_data_w_39 = _T_2207 ? dat_rsp_img_39 : dat_rsp_conv_39; // @[NV_NVDLA_CSC_dl_for_check.scala 1132:25:@1806.4]
  assign dat_rsp_data_w_40 = _T_2207 ? dat_rsp_img_40 : dat_rsp_conv_40; // @[NV_NVDLA_CSC_dl_for_check.scala 1132:25:@1806.4]
  assign dat_rsp_data_w_41 = _T_2207 ? dat_rsp_img_41 : dat_rsp_conv_41; // @[NV_NVDLA_CSC_dl_for_check.scala 1132:25:@1806.4]
  assign dat_rsp_data_w_42 = _T_2207 ? dat_rsp_img_42 : dat_rsp_conv_42; // @[NV_NVDLA_CSC_dl_for_check.scala 1132:25:@1806.4]
  assign dat_rsp_data_w_43 = _T_2207 ? dat_rsp_img_43 : dat_rsp_conv_43; // @[NV_NVDLA_CSC_dl_for_check.scala 1132:25:@1806.4]
  assign dat_rsp_data_w_44 = _T_2207 ? dat_rsp_img_44 : dat_rsp_conv_44; // @[NV_NVDLA_CSC_dl_for_check.scala 1132:25:@1806.4]
  assign dat_rsp_data_w_45 = _T_2207 ? dat_rsp_img_45 : dat_rsp_conv_45; // @[NV_NVDLA_CSC_dl_for_check.scala 1132:25:@1806.4]
  assign dat_rsp_data_w_46 = _T_2207 ? dat_rsp_img_46 : dat_rsp_conv_46; // @[NV_NVDLA_CSC_dl_for_check.scala 1132:25:@1806.4]
  assign dat_rsp_data_w_47 = _T_2207 ? dat_rsp_img_47 : dat_rsp_conv_47; // @[NV_NVDLA_CSC_dl_for_check.scala 1132:25:@1806.4]
  assign dat_rsp_data_w_48 = _T_2207 ? dat_rsp_img_48 : dat_rsp_conv_48; // @[NV_NVDLA_CSC_dl_for_check.scala 1132:25:@1806.4]
  assign dat_rsp_data_w_49 = _T_2207 ? dat_rsp_img_49 : dat_rsp_conv_49; // @[NV_NVDLA_CSC_dl_for_check.scala 1132:25:@1806.4]
  assign dat_rsp_data_w_50 = _T_2207 ? dat_rsp_img_50 : dat_rsp_conv_50; // @[NV_NVDLA_CSC_dl_for_check.scala 1132:25:@1806.4]
  assign dat_rsp_data_w_51 = _T_2207 ? dat_rsp_img_51 : dat_rsp_conv_51; // @[NV_NVDLA_CSC_dl_for_check.scala 1132:25:@1806.4]
  assign dat_rsp_data_w_52 = _T_2207 ? dat_rsp_img_52 : dat_rsp_conv_52; // @[NV_NVDLA_CSC_dl_for_check.scala 1132:25:@1806.4]
  assign dat_rsp_data_w_53 = _T_2207 ? dat_rsp_img_53 : dat_rsp_conv_53; // @[NV_NVDLA_CSC_dl_for_check.scala 1132:25:@1806.4]
  assign dat_rsp_data_w_54 = _T_2207 ? dat_rsp_img_54 : dat_rsp_conv_54; // @[NV_NVDLA_CSC_dl_for_check.scala 1132:25:@1806.4]
  assign dat_rsp_data_w_55 = _T_2207 ? dat_rsp_img_55 : dat_rsp_conv_55; // @[NV_NVDLA_CSC_dl_for_check.scala 1132:25:@1806.4]
  assign dat_rsp_data_w_56 = _T_2207 ? dat_rsp_img_56 : dat_rsp_conv_56; // @[NV_NVDLA_CSC_dl_for_check.scala 1132:25:@1806.4]
  assign dat_rsp_data_w_57 = _T_2207 ? dat_rsp_img_57 : dat_rsp_conv_57; // @[NV_NVDLA_CSC_dl_for_check.scala 1132:25:@1806.4]
  assign dat_rsp_data_w_58 = _T_2207 ? dat_rsp_img_58 : dat_rsp_conv_58; // @[NV_NVDLA_CSC_dl_for_check.scala 1132:25:@1806.4]
  assign dat_rsp_data_w_59 = _T_2207 ? dat_rsp_img_59 : dat_rsp_conv_59; // @[NV_NVDLA_CSC_dl_for_check.scala 1132:25:@1806.4]
  assign dat_rsp_data_w_60 = _T_2207 ? dat_rsp_img_60 : dat_rsp_conv_60; // @[NV_NVDLA_CSC_dl_for_check.scala 1132:25:@1806.4]
  assign dat_rsp_data_w_61 = _T_2207 ? dat_rsp_img_61 : dat_rsp_conv_61; // @[NV_NVDLA_CSC_dl_for_check.scala 1132:25:@1806.4]
  assign dat_rsp_data_w_62 = _T_2207 ? dat_rsp_img_62 : dat_rsp_conv_62; // @[NV_NVDLA_CSC_dl_for_check.scala 1132:25:@1806.4]
  assign dat_rsp_data_w_63 = _T_2207 ? dat_rsp_img_63 : dat_rsp_conv_63; // @[NV_NVDLA_CSC_dl_for_check.scala 1132:25:@1806.4]
  assign dat_rsp_mask_val_int8_0 = dat_rsp_data_w_0 != 8'h0; // @[NV_NVDLA_CSC_dl_for_check.scala 1133:97:@1807.4]
  assign dat_rsp_mask_val_int8_1 = dat_rsp_data_w_1 != 8'h0; // @[NV_NVDLA_CSC_dl_for_check.scala 1133:97:@1808.4]
  assign dat_rsp_mask_val_int8_2 = dat_rsp_data_w_2 != 8'h0; // @[NV_NVDLA_CSC_dl_for_check.scala 1133:97:@1809.4]
  assign dat_rsp_mask_val_int8_3 = dat_rsp_data_w_3 != 8'h0; // @[NV_NVDLA_CSC_dl_for_check.scala 1133:97:@1810.4]
  assign dat_rsp_mask_val_int8_4 = dat_rsp_data_w_4 != 8'h0; // @[NV_NVDLA_CSC_dl_for_check.scala 1133:97:@1811.4]
  assign dat_rsp_mask_val_int8_5 = dat_rsp_data_w_5 != 8'h0; // @[NV_NVDLA_CSC_dl_for_check.scala 1133:97:@1812.4]
  assign dat_rsp_mask_val_int8_6 = dat_rsp_data_w_6 != 8'h0; // @[NV_NVDLA_CSC_dl_for_check.scala 1133:97:@1813.4]
  assign dat_rsp_mask_val_int8_7 = dat_rsp_data_w_7 != 8'h0; // @[NV_NVDLA_CSC_dl_for_check.scala 1133:97:@1814.4]
  assign dat_rsp_mask_val_int8_8 = dat_rsp_data_w_8 != 8'h0; // @[NV_NVDLA_CSC_dl_for_check.scala 1133:97:@1815.4]
  assign dat_rsp_mask_val_int8_9 = dat_rsp_data_w_9 != 8'h0; // @[NV_NVDLA_CSC_dl_for_check.scala 1133:97:@1816.4]
  assign dat_rsp_mask_val_int8_10 = dat_rsp_data_w_10 != 8'h0; // @[NV_NVDLA_CSC_dl_for_check.scala 1133:97:@1817.4]
  assign dat_rsp_mask_val_int8_11 = dat_rsp_data_w_11 != 8'h0; // @[NV_NVDLA_CSC_dl_for_check.scala 1133:97:@1818.4]
  assign dat_rsp_mask_val_int8_12 = dat_rsp_data_w_12 != 8'h0; // @[NV_NVDLA_CSC_dl_for_check.scala 1133:97:@1819.4]
  assign dat_rsp_mask_val_int8_13 = dat_rsp_data_w_13 != 8'h0; // @[NV_NVDLA_CSC_dl_for_check.scala 1133:97:@1820.4]
  assign dat_rsp_mask_val_int8_14 = dat_rsp_data_w_14 != 8'h0; // @[NV_NVDLA_CSC_dl_for_check.scala 1133:97:@1821.4]
  assign dat_rsp_mask_val_int8_15 = dat_rsp_data_w_15 != 8'h0; // @[NV_NVDLA_CSC_dl_for_check.scala 1133:97:@1822.4]
  assign dat_rsp_mask_val_int8_16 = dat_rsp_data_w_16 != 8'h0; // @[NV_NVDLA_CSC_dl_for_check.scala 1133:97:@1823.4]
  assign dat_rsp_mask_val_int8_17 = dat_rsp_data_w_17 != 8'h0; // @[NV_NVDLA_CSC_dl_for_check.scala 1133:97:@1824.4]
  assign dat_rsp_mask_val_int8_18 = dat_rsp_data_w_18 != 8'h0; // @[NV_NVDLA_CSC_dl_for_check.scala 1133:97:@1825.4]
  assign dat_rsp_mask_val_int8_19 = dat_rsp_data_w_19 != 8'h0; // @[NV_NVDLA_CSC_dl_for_check.scala 1133:97:@1826.4]
  assign dat_rsp_mask_val_int8_20 = dat_rsp_data_w_20 != 8'h0; // @[NV_NVDLA_CSC_dl_for_check.scala 1133:97:@1827.4]
  assign dat_rsp_mask_val_int8_21 = dat_rsp_data_w_21 != 8'h0; // @[NV_NVDLA_CSC_dl_for_check.scala 1133:97:@1828.4]
  assign dat_rsp_mask_val_int8_22 = dat_rsp_data_w_22 != 8'h0; // @[NV_NVDLA_CSC_dl_for_check.scala 1133:97:@1829.4]
  assign dat_rsp_mask_val_int8_23 = dat_rsp_data_w_23 != 8'h0; // @[NV_NVDLA_CSC_dl_for_check.scala 1133:97:@1830.4]
  assign dat_rsp_mask_val_int8_24 = dat_rsp_data_w_24 != 8'h0; // @[NV_NVDLA_CSC_dl_for_check.scala 1133:97:@1831.4]
  assign dat_rsp_mask_val_int8_25 = dat_rsp_data_w_25 != 8'h0; // @[NV_NVDLA_CSC_dl_for_check.scala 1133:97:@1832.4]
  assign dat_rsp_mask_val_int8_26 = dat_rsp_data_w_26 != 8'h0; // @[NV_NVDLA_CSC_dl_for_check.scala 1133:97:@1833.4]
  assign dat_rsp_mask_val_int8_27 = dat_rsp_data_w_27 != 8'h0; // @[NV_NVDLA_CSC_dl_for_check.scala 1133:97:@1834.4]
  assign dat_rsp_mask_val_int8_28 = dat_rsp_data_w_28 != 8'h0; // @[NV_NVDLA_CSC_dl_for_check.scala 1133:97:@1835.4]
  assign dat_rsp_mask_val_int8_29 = dat_rsp_data_w_29 != 8'h0; // @[NV_NVDLA_CSC_dl_for_check.scala 1133:97:@1836.4]
  assign dat_rsp_mask_val_int8_30 = dat_rsp_data_w_30 != 8'h0; // @[NV_NVDLA_CSC_dl_for_check.scala 1133:97:@1837.4]
  assign dat_rsp_mask_val_int8_31 = dat_rsp_data_w_31 != 8'h0; // @[NV_NVDLA_CSC_dl_for_check.scala 1133:97:@1838.4]
  assign dat_rsp_mask_val_int8_32 = dat_rsp_data_w_32 != 8'h0; // @[NV_NVDLA_CSC_dl_for_check.scala 1133:97:@1839.4]
  assign dat_rsp_mask_val_int8_33 = dat_rsp_data_w_33 != 8'h0; // @[NV_NVDLA_CSC_dl_for_check.scala 1133:97:@1840.4]
  assign dat_rsp_mask_val_int8_34 = dat_rsp_data_w_34 != 8'h0; // @[NV_NVDLA_CSC_dl_for_check.scala 1133:97:@1841.4]
  assign dat_rsp_mask_val_int8_35 = dat_rsp_data_w_35 != 8'h0; // @[NV_NVDLA_CSC_dl_for_check.scala 1133:97:@1842.4]
  assign dat_rsp_mask_val_int8_36 = dat_rsp_data_w_36 != 8'h0; // @[NV_NVDLA_CSC_dl_for_check.scala 1133:97:@1843.4]
  assign dat_rsp_mask_val_int8_37 = dat_rsp_data_w_37 != 8'h0; // @[NV_NVDLA_CSC_dl_for_check.scala 1133:97:@1844.4]
  assign dat_rsp_mask_val_int8_38 = dat_rsp_data_w_38 != 8'h0; // @[NV_NVDLA_CSC_dl_for_check.scala 1133:97:@1845.4]
  assign dat_rsp_mask_val_int8_39 = dat_rsp_data_w_39 != 8'h0; // @[NV_NVDLA_CSC_dl_for_check.scala 1133:97:@1846.4]
  assign dat_rsp_mask_val_int8_40 = dat_rsp_data_w_40 != 8'h0; // @[NV_NVDLA_CSC_dl_for_check.scala 1133:97:@1847.4]
  assign dat_rsp_mask_val_int8_41 = dat_rsp_data_w_41 != 8'h0; // @[NV_NVDLA_CSC_dl_for_check.scala 1133:97:@1848.4]
  assign dat_rsp_mask_val_int8_42 = dat_rsp_data_w_42 != 8'h0; // @[NV_NVDLA_CSC_dl_for_check.scala 1133:97:@1849.4]
  assign dat_rsp_mask_val_int8_43 = dat_rsp_data_w_43 != 8'h0; // @[NV_NVDLA_CSC_dl_for_check.scala 1133:97:@1850.4]
  assign dat_rsp_mask_val_int8_44 = dat_rsp_data_w_44 != 8'h0; // @[NV_NVDLA_CSC_dl_for_check.scala 1133:97:@1851.4]
  assign dat_rsp_mask_val_int8_45 = dat_rsp_data_w_45 != 8'h0; // @[NV_NVDLA_CSC_dl_for_check.scala 1133:97:@1852.4]
  assign dat_rsp_mask_val_int8_46 = dat_rsp_data_w_46 != 8'h0; // @[NV_NVDLA_CSC_dl_for_check.scala 1133:97:@1853.4]
  assign dat_rsp_mask_val_int8_47 = dat_rsp_data_w_47 != 8'h0; // @[NV_NVDLA_CSC_dl_for_check.scala 1133:97:@1854.4]
  assign dat_rsp_mask_val_int8_48 = dat_rsp_data_w_48 != 8'h0; // @[NV_NVDLA_CSC_dl_for_check.scala 1133:97:@1855.4]
  assign dat_rsp_mask_val_int8_49 = dat_rsp_data_w_49 != 8'h0; // @[NV_NVDLA_CSC_dl_for_check.scala 1133:97:@1856.4]
  assign dat_rsp_mask_val_int8_50 = dat_rsp_data_w_50 != 8'h0; // @[NV_NVDLA_CSC_dl_for_check.scala 1133:97:@1857.4]
  assign dat_rsp_mask_val_int8_51 = dat_rsp_data_w_51 != 8'h0; // @[NV_NVDLA_CSC_dl_for_check.scala 1133:97:@1858.4]
  assign dat_rsp_mask_val_int8_52 = dat_rsp_data_w_52 != 8'h0; // @[NV_NVDLA_CSC_dl_for_check.scala 1133:97:@1859.4]
  assign dat_rsp_mask_val_int8_53 = dat_rsp_data_w_53 != 8'h0; // @[NV_NVDLA_CSC_dl_for_check.scala 1133:97:@1860.4]
  assign dat_rsp_mask_val_int8_54 = dat_rsp_data_w_54 != 8'h0; // @[NV_NVDLA_CSC_dl_for_check.scala 1133:97:@1861.4]
  assign dat_rsp_mask_val_int8_55 = dat_rsp_data_w_55 != 8'h0; // @[NV_NVDLA_CSC_dl_for_check.scala 1133:97:@1862.4]
  assign dat_rsp_mask_val_int8_56 = dat_rsp_data_w_56 != 8'h0; // @[NV_NVDLA_CSC_dl_for_check.scala 1133:97:@1863.4]
  assign dat_rsp_mask_val_int8_57 = dat_rsp_data_w_57 != 8'h0; // @[NV_NVDLA_CSC_dl_for_check.scala 1133:97:@1864.4]
  assign dat_rsp_mask_val_int8_58 = dat_rsp_data_w_58 != 8'h0; // @[NV_NVDLA_CSC_dl_for_check.scala 1133:97:@1865.4]
  assign dat_rsp_mask_val_int8_59 = dat_rsp_data_w_59 != 8'h0; // @[NV_NVDLA_CSC_dl_for_check.scala 1133:97:@1866.4]
  assign dat_rsp_mask_val_int8_60 = dat_rsp_data_w_60 != 8'h0; // @[NV_NVDLA_CSC_dl_for_check.scala 1133:97:@1867.4]
  assign dat_rsp_mask_val_int8_61 = dat_rsp_data_w_61 != 8'h0; // @[NV_NVDLA_CSC_dl_for_check.scala 1133:97:@1868.4]
  assign dat_rsp_mask_val_int8_62 = dat_rsp_data_w_62 != 8'h0; // @[NV_NVDLA_CSC_dl_for_check.scala 1133:97:@1869.4]
  assign dat_rsp_mask_val_int8_63 = dat_rsp_data_w_63 != 8'h0; // @[NV_NVDLA_CSC_dl_for_check.scala 1133:97:@1870.4]
  assign _T_2536 = dat_rsp_mask_8b[0]; // @[NV_NVDLA_CSC_dl_for_check.scala 1134:80:@1936.4]
  assign dat_rsp_mask_w_0 = _T_2536 & dat_rsp_mask_val_int8_0; // @[NV_NVDLA_CSC_dl_for_check.scala 1134:83:@1937.4]
  assign _T_2538 = dat_rsp_mask_8b[1]; // @[NV_NVDLA_CSC_dl_for_check.scala 1134:80:@1938.4]
  assign dat_rsp_mask_w_1 = _T_2538 & dat_rsp_mask_val_int8_1; // @[NV_NVDLA_CSC_dl_for_check.scala 1134:83:@1939.4]
  assign _T_2540 = dat_rsp_mask_8b[2]; // @[NV_NVDLA_CSC_dl_for_check.scala 1134:80:@1940.4]
  assign dat_rsp_mask_w_2 = _T_2540 & dat_rsp_mask_val_int8_2; // @[NV_NVDLA_CSC_dl_for_check.scala 1134:83:@1941.4]
  assign _T_2542 = dat_rsp_mask_8b[3]; // @[NV_NVDLA_CSC_dl_for_check.scala 1134:80:@1942.4]
  assign dat_rsp_mask_w_3 = _T_2542 & dat_rsp_mask_val_int8_3; // @[NV_NVDLA_CSC_dl_for_check.scala 1134:83:@1943.4]
  assign _T_2544 = dat_rsp_mask_8b[4]; // @[NV_NVDLA_CSC_dl_for_check.scala 1134:80:@1944.4]
  assign dat_rsp_mask_w_4 = _T_2544 & dat_rsp_mask_val_int8_4; // @[NV_NVDLA_CSC_dl_for_check.scala 1134:83:@1945.4]
  assign _T_2546 = dat_rsp_mask_8b[5]; // @[NV_NVDLA_CSC_dl_for_check.scala 1134:80:@1946.4]
  assign dat_rsp_mask_w_5 = _T_2546 & dat_rsp_mask_val_int8_5; // @[NV_NVDLA_CSC_dl_for_check.scala 1134:83:@1947.4]
  assign _T_2548 = dat_rsp_mask_8b[6]; // @[NV_NVDLA_CSC_dl_for_check.scala 1134:80:@1948.4]
  assign dat_rsp_mask_w_6 = _T_2548 & dat_rsp_mask_val_int8_6; // @[NV_NVDLA_CSC_dl_for_check.scala 1134:83:@1949.4]
  assign _T_2550 = dat_rsp_mask_8b[7]; // @[NV_NVDLA_CSC_dl_for_check.scala 1134:80:@1950.4]
  assign dat_rsp_mask_w_7 = _T_2550 & dat_rsp_mask_val_int8_7; // @[NV_NVDLA_CSC_dl_for_check.scala 1134:83:@1951.4]
  assign _T_2552 = dat_rsp_mask_8b[8]; // @[NV_NVDLA_CSC_dl_for_check.scala 1134:80:@1952.4]
  assign dat_rsp_mask_w_8 = _T_2552 & dat_rsp_mask_val_int8_8; // @[NV_NVDLA_CSC_dl_for_check.scala 1134:83:@1953.4]
  assign _T_2554 = dat_rsp_mask_8b[9]; // @[NV_NVDLA_CSC_dl_for_check.scala 1134:80:@1954.4]
  assign dat_rsp_mask_w_9 = _T_2554 & dat_rsp_mask_val_int8_9; // @[NV_NVDLA_CSC_dl_for_check.scala 1134:83:@1955.4]
  assign _T_2556 = dat_rsp_mask_8b[10]; // @[NV_NVDLA_CSC_dl_for_check.scala 1134:80:@1956.4]
  assign dat_rsp_mask_w_10 = _T_2556 & dat_rsp_mask_val_int8_10; // @[NV_NVDLA_CSC_dl_for_check.scala 1134:83:@1957.4]
  assign _T_2558 = dat_rsp_mask_8b[11]; // @[NV_NVDLA_CSC_dl_for_check.scala 1134:80:@1958.4]
  assign dat_rsp_mask_w_11 = _T_2558 & dat_rsp_mask_val_int8_11; // @[NV_NVDLA_CSC_dl_for_check.scala 1134:83:@1959.4]
  assign _T_2560 = dat_rsp_mask_8b[12]; // @[NV_NVDLA_CSC_dl_for_check.scala 1134:80:@1960.4]
  assign dat_rsp_mask_w_12 = _T_2560 & dat_rsp_mask_val_int8_12; // @[NV_NVDLA_CSC_dl_for_check.scala 1134:83:@1961.4]
  assign _T_2562 = dat_rsp_mask_8b[13]; // @[NV_NVDLA_CSC_dl_for_check.scala 1134:80:@1962.4]
  assign dat_rsp_mask_w_13 = _T_2562 & dat_rsp_mask_val_int8_13; // @[NV_NVDLA_CSC_dl_for_check.scala 1134:83:@1963.4]
  assign _T_2564 = dat_rsp_mask_8b[14]; // @[NV_NVDLA_CSC_dl_for_check.scala 1134:80:@1964.4]
  assign dat_rsp_mask_w_14 = _T_2564 & dat_rsp_mask_val_int8_14; // @[NV_NVDLA_CSC_dl_for_check.scala 1134:83:@1965.4]
  assign _T_2566 = dat_rsp_mask_8b[15]; // @[NV_NVDLA_CSC_dl_for_check.scala 1134:80:@1966.4]
  assign dat_rsp_mask_w_15 = _T_2566 & dat_rsp_mask_val_int8_15; // @[NV_NVDLA_CSC_dl_for_check.scala 1134:83:@1967.4]
  assign _T_2568 = dat_rsp_mask_8b[16]; // @[NV_NVDLA_CSC_dl_for_check.scala 1134:80:@1968.4]
  assign dat_rsp_mask_w_16 = _T_2568 & dat_rsp_mask_val_int8_16; // @[NV_NVDLA_CSC_dl_for_check.scala 1134:83:@1969.4]
  assign _T_2570 = dat_rsp_mask_8b[17]; // @[NV_NVDLA_CSC_dl_for_check.scala 1134:80:@1970.4]
  assign dat_rsp_mask_w_17 = _T_2570 & dat_rsp_mask_val_int8_17; // @[NV_NVDLA_CSC_dl_for_check.scala 1134:83:@1971.4]
  assign _T_2572 = dat_rsp_mask_8b[18]; // @[NV_NVDLA_CSC_dl_for_check.scala 1134:80:@1972.4]
  assign dat_rsp_mask_w_18 = _T_2572 & dat_rsp_mask_val_int8_18; // @[NV_NVDLA_CSC_dl_for_check.scala 1134:83:@1973.4]
  assign _T_2574 = dat_rsp_mask_8b[19]; // @[NV_NVDLA_CSC_dl_for_check.scala 1134:80:@1974.4]
  assign dat_rsp_mask_w_19 = _T_2574 & dat_rsp_mask_val_int8_19; // @[NV_NVDLA_CSC_dl_for_check.scala 1134:83:@1975.4]
  assign _T_2576 = dat_rsp_mask_8b[20]; // @[NV_NVDLA_CSC_dl_for_check.scala 1134:80:@1976.4]
  assign dat_rsp_mask_w_20 = _T_2576 & dat_rsp_mask_val_int8_20; // @[NV_NVDLA_CSC_dl_for_check.scala 1134:83:@1977.4]
  assign _T_2578 = dat_rsp_mask_8b[21]; // @[NV_NVDLA_CSC_dl_for_check.scala 1134:80:@1978.4]
  assign dat_rsp_mask_w_21 = _T_2578 & dat_rsp_mask_val_int8_21; // @[NV_NVDLA_CSC_dl_for_check.scala 1134:83:@1979.4]
  assign _T_2580 = dat_rsp_mask_8b[22]; // @[NV_NVDLA_CSC_dl_for_check.scala 1134:80:@1980.4]
  assign dat_rsp_mask_w_22 = _T_2580 & dat_rsp_mask_val_int8_22; // @[NV_NVDLA_CSC_dl_for_check.scala 1134:83:@1981.4]
  assign _T_2582 = dat_rsp_mask_8b[23]; // @[NV_NVDLA_CSC_dl_for_check.scala 1134:80:@1982.4]
  assign dat_rsp_mask_w_23 = _T_2582 & dat_rsp_mask_val_int8_23; // @[NV_NVDLA_CSC_dl_for_check.scala 1134:83:@1983.4]
  assign _T_2584 = dat_rsp_mask_8b[24]; // @[NV_NVDLA_CSC_dl_for_check.scala 1134:80:@1984.4]
  assign dat_rsp_mask_w_24 = _T_2584 & dat_rsp_mask_val_int8_24; // @[NV_NVDLA_CSC_dl_for_check.scala 1134:83:@1985.4]
  assign _T_2586 = dat_rsp_mask_8b[25]; // @[NV_NVDLA_CSC_dl_for_check.scala 1134:80:@1986.4]
  assign dat_rsp_mask_w_25 = _T_2586 & dat_rsp_mask_val_int8_25; // @[NV_NVDLA_CSC_dl_for_check.scala 1134:83:@1987.4]
  assign _T_2588 = dat_rsp_mask_8b[26]; // @[NV_NVDLA_CSC_dl_for_check.scala 1134:80:@1988.4]
  assign dat_rsp_mask_w_26 = _T_2588 & dat_rsp_mask_val_int8_26; // @[NV_NVDLA_CSC_dl_for_check.scala 1134:83:@1989.4]
  assign _T_2590 = dat_rsp_mask_8b[27]; // @[NV_NVDLA_CSC_dl_for_check.scala 1134:80:@1990.4]
  assign dat_rsp_mask_w_27 = _T_2590 & dat_rsp_mask_val_int8_27; // @[NV_NVDLA_CSC_dl_for_check.scala 1134:83:@1991.4]
  assign _T_2592 = dat_rsp_mask_8b[28]; // @[NV_NVDLA_CSC_dl_for_check.scala 1134:80:@1992.4]
  assign dat_rsp_mask_w_28 = _T_2592 & dat_rsp_mask_val_int8_28; // @[NV_NVDLA_CSC_dl_for_check.scala 1134:83:@1993.4]
  assign _T_2594 = dat_rsp_mask_8b[29]; // @[NV_NVDLA_CSC_dl_for_check.scala 1134:80:@1994.4]
  assign dat_rsp_mask_w_29 = _T_2594 & dat_rsp_mask_val_int8_29; // @[NV_NVDLA_CSC_dl_for_check.scala 1134:83:@1995.4]
  assign _T_2596 = dat_rsp_mask_8b[30]; // @[NV_NVDLA_CSC_dl_for_check.scala 1134:80:@1996.4]
  assign dat_rsp_mask_w_30 = _T_2596 & dat_rsp_mask_val_int8_30; // @[NV_NVDLA_CSC_dl_for_check.scala 1134:83:@1997.4]
  assign _T_2598 = dat_rsp_mask_8b[31]; // @[NV_NVDLA_CSC_dl_for_check.scala 1134:80:@1998.4]
  assign dat_rsp_mask_w_31 = _T_2598 & dat_rsp_mask_val_int8_31; // @[NV_NVDLA_CSC_dl_for_check.scala 1134:83:@1999.4]
  assign _T_2600 = dat_rsp_mask_8b[32]; // @[NV_NVDLA_CSC_dl_for_check.scala 1134:80:@2000.4]
  assign dat_rsp_mask_w_32 = _T_2600 & dat_rsp_mask_val_int8_32; // @[NV_NVDLA_CSC_dl_for_check.scala 1134:83:@2001.4]
  assign _T_2602 = dat_rsp_mask_8b[33]; // @[NV_NVDLA_CSC_dl_for_check.scala 1134:80:@2002.4]
  assign dat_rsp_mask_w_33 = _T_2602 & dat_rsp_mask_val_int8_33; // @[NV_NVDLA_CSC_dl_for_check.scala 1134:83:@2003.4]
  assign _T_2604 = dat_rsp_mask_8b[34]; // @[NV_NVDLA_CSC_dl_for_check.scala 1134:80:@2004.4]
  assign dat_rsp_mask_w_34 = _T_2604 & dat_rsp_mask_val_int8_34; // @[NV_NVDLA_CSC_dl_for_check.scala 1134:83:@2005.4]
  assign _T_2606 = dat_rsp_mask_8b[35]; // @[NV_NVDLA_CSC_dl_for_check.scala 1134:80:@2006.4]
  assign dat_rsp_mask_w_35 = _T_2606 & dat_rsp_mask_val_int8_35; // @[NV_NVDLA_CSC_dl_for_check.scala 1134:83:@2007.4]
  assign _T_2608 = dat_rsp_mask_8b[36]; // @[NV_NVDLA_CSC_dl_for_check.scala 1134:80:@2008.4]
  assign dat_rsp_mask_w_36 = _T_2608 & dat_rsp_mask_val_int8_36; // @[NV_NVDLA_CSC_dl_for_check.scala 1134:83:@2009.4]
  assign _T_2610 = dat_rsp_mask_8b[37]; // @[NV_NVDLA_CSC_dl_for_check.scala 1134:80:@2010.4]
  assign dat_rsp_mask_w_37 = _T_2610 & dat_rsp_mask_val_int8_37; // @[NV_NVDLA_CSC_dl_for_check.scala 1134:83:@2011.4]
  assign _T_2612 = dat_rsp_mask_8b[38]; // @[NV_NVDLA_CSC_dl_for_check.scala 1134:80:@2012.4]
  assign dat_rsp_mask_w_38 = _T_2612 & dat_rsp_mask_val_int8_38; // @[NV_NVDLA_CSC_dl_for_check.scala 1134:83:@2013.4]
  assign _T_2614 = dat_rsp_mask_8b[39]; // @[NV_NVDLA_CSC_dl_for_check.scala 1134:80:@2014.4]
  assign dat_rsp_mask_w_39 = _T_2614 & dat_rsp_mask_val_int8_39; // @[NV_NVDLA_CSC_dl_for_check.scala 1134:83:@2015.4]
  assign _T_2616 = dat_rsp_mask_8b[40]; // @[NV_NVDLA_CSC_dl_for_check.scala 1134:80:@2016.4]
  assign dat_rsp_mask_w_40 = _T_2616 & dat_rsp_mask_val_int8_40; // @[NV_NVDLA_CSC_dl_for_check.scala 1134:83:@2017.4]
  assign _T_2618 = dat_rsp_mask_8b[41]; // @[NV_NVDLA_CSC_dl_for_check.scala 1134:80:@2018.4]
  assign dat_rsp_mask_w_41 = _T_2618 & dat_rsp_mask_val_int8_41; // @[NV_NVDLA_CSC_dl_for_check.scala 1134:83:@2019.4]
  assign _T_2620 = dat_rsp_mask_8b[42]; // @[NV_NVDLA_CSC_dl_for_check.scala 1134:80:@2020.4]
  assign dat_rsp_mask_w_42 = _T_2620 & dat_rsp_mask_val_int8_42; // @[NV_NVDLA_CSC_dl_for_check.scala 1134:83:@2021.4]
  assign _T_2622 = dat_rsp_mask_8b[43]; // @[NV_NVDLA_CSC_dl_for_check.scala 1134:80:@2022.4]
  assign dat_rsp_mask_w_43 = _T_2622 & dat_rsp_mask_val_int8_43; // @[NV_NVDLA_CSC_dl_for_check.scala 1134:83:@2023.4]
  assign _T_2624 = dat_rsp_mask_8b[44]; // @[NV_NVDLA_CSC_dl_for_check.scala 1134:80:@2024.4]
  assign dat_rsp_mask_w_44 = _T_2624 & dat_rsp_mask_val_int8_44; // @[NV_NVDLA_CSC_dl_for_check.scala 1134:83:@2025.4]
  assign _T_2626 = dat_rsp_mask_8b[45]; // @[NV_NVDLA_CSC_dl_for_check.scala 1134:80:@2026.4]
  assign dat_rsp_mask_w_45 = _T_2626 & dat_rsp_mask_val_int8_45; // @[NV_NVDLA_CSC_dl_for_check.scala 1134:83:@2027.4]
  assign _T_2628 = dat_rsp_mask_8b[46]; // @[NV_NVDLA_CSC_dl_for_check.scala 1134:80:@2028.4]
  assign dat_rsp_mask_w_46 = _T_2628 & dat_rsp_mask_val_int8_46; // @[NV_NVDLA_CSC_dl_for_check.scala 1134:83:@2029.4]
  assign _T_2630 = dat_rsp_mask_8b[47]; // @[NV_NVDLA_CSC_dl_for_check.scala 1134:80:@2030.4]
  assign dat_rsp_mask_w_47 = _T_2630 & dat_rsp_mask_val_int8_47; // @[NV_NVDLA_CSC_dl_for_check.scala 1134:83:@2031.4]
  assign _T_2632 = dat_rsp_mask_8b[48]; // @[NV_NVDLA_CSC_dl_for_check.scala 1134:80:@2032.4]
  assign dat_rsp_mask_w_48 = _T_2632 & dat_rsp_mask_val_int8_48; // @[NV_NVDLA_CSC_dl_for_check.scala 1134:83:@2033.4]
  assign _T_2634 = dat_rsp_mask_8b[49]; // @[NV_NVDLA_CSC_dl_for_check.scala 1134:80:@2034.4]
  assign dat_rsp_mask_w_49 = _T_2634 & dat_rsp_mask_val_int8_49; // @[NV_NVDLA_CSC_dl_for_check.scala 1134:83:@2035.4]
  assign _T_2636 = dat_rsp_mask_8b[50]; // @[NV_NVDLA_CSC_dl_for_check.scala 1134:80:@2036.4]
  assign dat_rsp_mask_w_50 = _T_2636 & dat_rsp_mask_val_int8_50; // @[NV_NVDLA_CSC_dl_for_check.scala 1134:83:@2037.4]
  assign _T_2638 = dat_rsp_mask_8b[51]; // @[NV_NVDLA_CSC_dl_for_check.scala 1134:80:@2038.4]
  assign dat_rsp_mask_w_51 = _T_2638 & dat_rsp_mask_val_int8_51; // @[NV_NVDLA_CSC_dl_for_check.scala 1134:83:@2039.4]
  assign _T_2640 = dat_rsp_mask_8b[52]; // @[NV_NVDLA_CSC_dl_for_check.scala 1134:80:@2040.4]
  assign dat_rsp_mask_w_52 = _T_2640 & dat_rsp_mask_val_int8_52; // @[NV_NVDLA_CSC_dl_for_check.scala 1134:83:@2041.4]
  assign _T_2642 = dat_rsp_mask_8b[53]; // @[NV_NVDLA_CSC_dl_for_check.scala 1134:80:@2042.4]
  assign dat_rsp_mask_w_53 = _T_2642 & dat_rsp_mask_val_int8_53; // @[NV_NVDLA_CSC_dl_for_check.scala 1134:83:@2043.4]
  assign _T_2644 = dat_rsp_mask_8b[54]; // @[NV_NVDLA_CSC_dl_for_check.scala 1134:80:@2044.4]
  assign dat_rsp_mask_w_54 = _T_2644 & dat_rsp_mask_val_int8_54; // @[NV_NVDLA_CSC_dl_for_check.scala 1134:83:@2045.4]
  assign _T_2646 = dat_rsp_mask_8b[55]; // @[NV_NVDLA_CSC_dl_for_check.scala 1134:80:@2046.4]
  assign dat_rsp_mask_w_55 = _T_2646 & dat_rsp_mask_val_int8_55; // @[NV_NVDLA_CSC_dl_for_check.scala 1134:83:@2047.4]
  assign _T_2648 = dat_rsp_mask_8b[56]; // @[NV_NVDLA_CSC_dl_for_check.scala 1134:80:@2048.4]
  assign dat_rsp_mask_w_56 = _T_2648 & dat_rsp_mask_val_int8_56; // @[NV_NVDLA_CSC_dl_for_check.scala 1134:83:@2049.4]
  assign _T_2650 = dat_rsp_mask_8b[57]; // @[NV_NVDLA_CSC_dl_for_check.scala 1134:80:@2050.4]
  assign dat_rsp_mask_w_57 = _T_2650 & dat_rsp_mask_val_int8_57; // @[NV_NVDLA_CSC_dl_for_check.scala 1134:83:@2051.4]
  assign _T_2652 = dat_rsp_mask_8b[58]; // @[NV_NVDLA_CSC_dl_for_check.scala 1134:80:@2052.4]
  assign dat_rsp_mask_w_58 = _T_2652 & dat_rsp_mask_val_int8_58; // @[NV_NVDLA_CSC_dl_for_check.scala 1134:83:@2053.4]
  assign _T_2654 = dat_rsp_mask_8b[59]; // @[NV_NVDLA_CSC_dl_for_check.scala 1134:80:@2054.4]
  assign dat_rsp_mask_w_59 = _T_2654 & dat_rsp_mask_val_int8_59; // @[NV_NVDLA_CSC_dl_for_check.scala 1134:83:@2055.4]
  assign _T_2656 = dat_rsp_mask_8b[60]; // @[NV_NVDLA_CSC_dl_for_check.scala 1134:80:@2056.4]
  assign dat_rsp_mask_w_60 = _T_2656 & dat_rsp_mask_val_int8_60; // @[NV_NVDLA_CSC_dl_for_check.scala 1134:83:@2057.4]
  assign _T_2658 = dat_rsp_mask_8b[61]; // @[NV_NVDLA_CSC_dl_for_check.scala 1134:80:@2058.4]
  assign dat_rsp_mask_w_61 = _T_2658 & dat_rsp_mask_val_int8_61; // @[NV_NVDLA_CSC_dl_for_check.scala 1134:83:@2059.4]
  assign _T_2660 = dat_rsp_mask_8b[62]; // @[NV_NVDLA_CSC_dl_for_check.scala 1134:80:@2060.4]
  assign dat_rsp_mask_w_62 = _T_2660 & dat_rsp_mask_val_int8_62; // @[NV_NVDLA_CSC_dl_for_check.scala 1134:83:@2061.4]
  assign _T_2662 = dat_rsp_mask_8b[63]; // @[NV_NVDLA_CSC_dl_for_check.scala 1134:80:@2062.4]
  assign dat_rsp_mask_w_63 = _T_2662 & dat_rsp_mask_val_int8_63; // @[NV_NVDLA_CSC_dl_for_check.scala 1134:83:@2063.4]
  assign _GEN_156 = dat_rsp_pvld ? dat_rsp_mask_w_0 : dat_out_bypass_mask_0; // @[NV_NVDLA_CSC_dl_for_check.scala 1157:30:@2202.4]
  assign _GEN_157 = dat_rsp_pvld ? dat_rsp_mask_w_1 : dat_out_bypass_mask_1; // @[NV_NVDLA_CSC_dl_for_check.scala 1157:30:@2202.4]
  assign _GEN_158 = dat_rsp_pvld ? dat_rsp_mask_w_2 : dat_out_bypass_mask_2; // @[NV_NVDLA_CSC_dl_for_check.scala 1157:30:@2202.4]
  assign _GEN_159 = dat_rsp_pvld ? dat_rsp_mask_w_3 : dat_out_bypass_mask_3; // @[NV_NVDLA_CSC_dl_for_check.scala 1157:30:@2202.4]
  assign _GEN_160 = dat_rsp_pvld ? dat_rsp_mask_w_4 : dat_out_bypass_mask_4; // @[NV_NVDLA_CSC_dl_for_check.scala 1157:30:@2202.4]
  assign _GEN_161 = dat_rsp_pvld ? dat_rsp_mask_w_5 : dat_out_bypass_mask_5; // @[NV_NVDLA_CSC_dl_for_check.scala 1157:30:@2202.4]
  assign _GEN_162 = dat_rsp_pvld ? dat_rsp_mask_w_6 : dat_out_bypass_mask_6; // @[NV_NVDLA_CSC_dl_for_check.scala 1157:30:@2202.4]
  assign _GEN_163 = dat_rsp_pvld ? dat_rsp_mask_w_7 : dat_out_bypass_mask_7; // @[NV_NVDLA_CSC_dl_for_check.scala 1157:30:@2202.4]
  assign _GEN_164 = dat_rsp_pvld ? dat_rsp_mask_w_8 : dat_out_bypass_mask_8; // @[NV_NVDLA_CSC_dl_for_check.scala 1157:30:@2202.4]
  assign _GEN_165 = dat_rsp_pvld ? dat_rsp_mask_w_9 : dat_out_bypass_mask_9; // @[NV_NVDLA_CSC_dl_for_check.scala 1157:30:@2202.4]
  assign _GEN_166 = dat_rsp_pvld ? dat_rsp_mask_w_10 : dat_out_bypass_mask_10; // @[NV_NVDLA_CSC_dl_for_check.scala 1157:30:@2202.4]
  assign _GEN_167 = dat_rsp_pvld ? dat_rsp_mask_w_11 : dat_out_bypass_mask_11; // @[NV_NVDLA_CSC_dl_for_check.scala 1157:30:@2202.4]
  assign _GEN_168 = dat_rsp_pvld ? dat_rsp_mask_w_12 : dat_out_bypass_mask_12; // @[NV_NVDLA_CSC_dl_for_check.scala 1157:30:@2202.4]
  assign _GEN_169 = dat_rsp_pvld ? dat_rsp_mask_w_13 : dat_out_bypass_mask_13; // @[NV_NVDLA_CSC_dl_for_check.scala 1157:30:@2202.4]
  assign _GEN_170 = dat_rsp_pvld ? dat_rsp_mask_w_14 : dat_out_bypass_mask_14; // @[NV_NVDLA_CSC_dl_for_check.scala 1157:30:@2202.4]
  assign _GEN_171 = dat_rsp_pvld ? dat_rsp_mask_w_15 : dat_out_bypass_mask_15; // @[NV_NVDLA_CSC_dl_for_check.scala 1157:30:@2202.4]
  assign _GEN_172 = dat_rsp_pvld ? dat_rsp_mask_w_16 : dat_out_bypass_mask_16; // @[NV_NVDLA_CSC_dl_for_check.scala 1157:30:@2202.4]
  assign _GEN_173 = dat_rsp_pvld ? dat_rsp_mask_w_17 : dat_out_bypass_mask_17; // @[NV_NVDLA_CSC_dl_for_check.scala 1157:30:@2202.4]
  assign _GEN_174 = dat_rsp_pvld ? dat_rsp_mask_w_18 : dat_out_bypass_mask_18; // @[NV_NVDLA_CSC_dl_for_check.scala 1157:30:@2202.4]
  assign _GEN_175 = dat_rsp_pvld ? dat_rsp_mask_w_19 : dat_out_bypass_mask_19; // @[NV_NVDLA_CSC_dl_for_check.scala 1157:30:@2202.4]
  assign _GEN_176 = dat_rsp_pvld ? dat_rsp_mask_w_20 : dat_out_bypass_mask_20; // @[NV_NVDLA_CSC_dl_for_check.scala 1157:30:@2202.4]
  assign _GEN_177 = dat_rsp_pvld ? dat_rsp_mask_w_21 : dat_out_bypass_mask_21; // @[NV_NVDLA_CSC_dl_for_check.scala 1157:30:@2202.4]
  assign _GEN_178 = dat_rsp_pvld ? dat_rsp_mask_w_22 : dat_out_bypass_mask_22; // @[NV_NVDLA_CSC_dl_for_check.scala 1157:30:@2202.4]
  assign _GEN_179 = dat_rsp_pvld ? dat_rsp_mask_w_23 : dat_out_bypass_mask_23; // @[NV_NVDLA_CSC_dl_for_check.scala 1157:30:@2202.4]
  assign _GEN_180 = dat_rsp_pvld ? dat_rsp_mask_w_24 : dat_out_bypass_mask_24; // @[NV_NVDLA_CSC_dl_for_check.scala 1157:30:@2202.4]
  assign _GEN_181 = dat_rsp_pvld ? dat_rsp_mask_w_25 : dat_out_bypass_mask_25; // @[NV_NVDLA_CSC_dl_for_check.scala 1157:30:@2202.4]
  assign _GEN_182 = dat_rsp_pvld ? dat_rsp_mask_w_26 : dat_out_bypass_mask_26; // @[NV_NVDLA_CSC_dl_for_check.scala 1157:30:@2202.4]
  assign _GEN_183 = dat_rsp_pvld ? dat_rsp_mask_w_27 : dat_out_bypass_mask_27; // @[NV_NVDLA_CSC_dl_for_check.scala 1157:30:@2202.4]
  assign _GEN_184 = dat_rsp_pvld ? dat_rsp_mask_w_28 : dat_out_bypass_mask_28; // @[NV_NVDLA_CSC_dl_for_check.scala 1157:30:@2202.4]
  assign _GEN_185 = dat_rsp_pvld ? dat_rsp_mask_w_29 : dat_out_bypass_mask_29; // @[NV_NVDLA_CSC_dl_for_check.scala 1157:30:@2202.4]
  assign _GEN_186 = dat_rsp_pvld ? dat_rsp_mask_w_30 : dat_out_bypass_mask_30; // @[NV_NVDLA_CSC_dl_for_check.scala 1157:30:@2202.4]
  assign _GEN_187 = dat_rsp_pvld ? dat_rsp_mask_w_31 : dat_out_bypass_mask_31; // @[NV_NVDLA_CSC_dl_for_check.scala 1157:30:@2202.4]
  assign _GEN_188 = dat_rsp_pvld ? dat_rsp_mask_w_32 : dat_out_bypass_mask_32; // @[NV_NVDLA_CSC_dl_for_check.scala 1157:30:@2202.4]
  assign _GEN_189 = dat_rsp_pvld ? dat_rsp_mask_w_33 : dat_out_bypass_mask_33; // @[NV_NVDLA_CSC_dl_for_check.scala 1157:30:@2202.4]
  assign _GEN_190 = dat_rsp_pvld ? dat_rsp_mask_w_34 : dat_out_bypass_mask_34; // @[NV_NVDLA_CSC_dl_for_check.scala 1157:30:@2202.4]
  assign _GEN_191 = dat_rsp_pvld ? dat_rsp_mask_w_35 : dat_out_bypass_mask_35; // @[NV_NVDLA_CSC_dl_for_check.scala 1157:30:@2202.4]
  assign _GEN_192 = dat_rsp_pvld ? dat_rsp_mask_w_36 : dat_out_bypass_mask_36; // @[NV_NVDLA_CSC_dl_for_check.scala 1157:30:@2202.4]
  assign _GEN_193 = dat_rsp_pvld ? dat_rsp_mask_w_37 : dat_out_bypass_mask_37; // @[NV_NVDLA_CSC_dl_for_check.scala 1157:30:@2202.4]
  assign _GEN_194 = dat_rsp_pvld ? dat_rsp_mask_w_38 : dat_out_bypass_mask_38; // @[NV_NVDLA_CSC_dl_for_check.scala 1157:30:@2202.4]
  assign _GEN_195 = dat_rsp_pvld ? dat_rsp_mask_w_39 : dat_out_bypass_mask_39; // @[NV_NVDLA_CSC_dl_for_check.scala 1157:30:@2202.4]
  assign _GEN_196 = dat_rsp_pvld ? dat_rsp_mask_w_40 : dat_out_bypass_mask_40; // @[NV_NVDLA_CSC_dl_for_check.scala 1157:30:@2202.4]
  assign _GEN_197 = dat_rsp_pvld ? dat_rsp_mask_w_41 : dat_out_bypass_mask_41; // @[NV_NVDLA_CSC_dl_for_check.scala 1157:30:@2202.4]
  assign _GEN_198 = dat_rsp_pvld ? dat_rsp_mask_w_42 : dat_out_bypass_mask_42; // @[NV_NVDLA_CSC_dl_for_check.scala 1157:30:@2202.4]
  assign _GEN_199 = dat_rsp_pvld ? dat_rsp_mask_w_43 : dat_out_bypass_mask_43; // @[NV_NVDLA_CSC_dl_for_check.scala 1157:30:@2202.4]
  assign _GEN_200 = dat_rsp_pvld ? dat_rsp_mask_w_44 : dat_out_bypass_mask_44; // @[NV_NVDLA_CSC_dl_for_check.scala 1157:30:@2202.4]
  assign _GEN_201 = dat_rsp_pvld ? dat_rsp_mask_w_45 : dat_out_bypass_mask_45; // @[NV_NVDLA_CSC_dl_for_check.scala 1157:30:@2202.4]
  assign _GEN_202 = dat_rsp_pvld ? dat_rsp_mask_w_46 : dat_out_bypass_mask_46; // @[NV_NVDLA_CSC_dl_for_check.scala 1157:30:@2202.4]
  assign _GEN_203 = dat_rsp_pvld ? dat_rsp_mask_w_47 : dat_out_bypass_mask_47; // @[NV_NVDLA_CSC_dl_for_check.scala 1157:30:@2202.4]
  assign _GEN_204 = dat_rsp_pvld ? dat_rsp_mask_w_48 : dat_out_bypass_mask_48; // @[NV_NVDLA_CSC_dl_for_check.scala 1157:30:@2202.4]
  assign _GEN_205 = dat_rsp_pvld ? dat_rsp_mask_w_49 : dat_out_bypass_mask_49; // @[NV_NVDLA_CSC_dl_for_check.scala 1157:30:@2202.4]
  assign _GEN_206 = dat_rsp_pvld ? dat_rsp_mask_w_50 : dat_out_bypass_mask_50; // @[NV_NVDLA_CSC_dl_for_check.scala 1157:30:@2202.4]
  assign _GEN_207 = dat_rsp_pvld ? dat_rsp_mask_w_51 : dat_out_bypass_mask_51; // @[NV_NVDLA_CSC_dl_for_check.scala 1157:30:@2202.4]
  assign _GEN_208 = dat_rsp_pvld ? dat_rsp_mask_w_52 : dat_out_bypass_mask_52; // @[NV_NVDLA_CSC_dl_for_check.scala 1157:30:@2202.4]
  assign _GEN_209 = dat_rsp_pvld ? dat_rsp_mask_w_53 : dat_out_bypass_mask_53; // @[NV_NVDLA_CSC_dl_for_check.scala 1157:30:@2202.4]
  assign _GEN_210 = dat_rsp_pvld ? dat_rsp_mask_w_54 : dat_out_bypass_mask_54; // @[NV_NVDLA_CSC_dl_for_check.scala 1157:30:@2202.4]
  assign _GEN_211 = dat_rsp_pvld ? dat_rsp_mask_w_55 : dat_out_bypass_mask_55; // @[NV_NVDLA_CSC_dl_for_check.scala 1157:30:@2202.4]
  assign _GEN_212 = dat_rsp_pvld ? dat_rsp_mask_w_56 : dat_out_bypass_mask_56; // @[NV_NVDLA_CSC_dl_for_check.scala 1157:30:@2202.4]
  assign _GEN_213 = dat_rsp_pvld ? dat_rsp_mask_w_57 : dat_out_bypass_mask_57; // @[NV_NVDLA_CSC_dl_for_check.scala 1157:30:@2202.4]
  assign _GEN_214 = dat_rsp_pvld ? dat_rsp_mask_w_58 : dat_out_bypass_mask_58; // @[NV_NVDLA_CSC_dl_for_check.scala 1157:30:@2202.4]
  assign _GEN_215 = dat_rsp_pvld ? dat_rsp_mask_w_59 : dat_out_bypass_mask_59; // @[NV_NVDLA_CSC_dl_for_check.scala 1157:30:@2202.4]
  assign _GEN_216 = dat_rsp_pvld ? dat_rsp_mask_w_60 : dat_out_bypass_mask_60; // @[NV_NVDLA_CSC_dl_for_check.scala 1157:30:@2202.4]
  assign _GEN_217 = dat_rsp_pvld ? dat_rsp_mask_w_61 : dat_out_bypass_mask_61; // @[NV_NVDLA_CSC_dl_for_check.scala 1157:30:@2202.4]
  assign _GEN_218 = dat_rsp_pvld ? dat_rsp_mask_w_62 : dat_out_bypass_mask_62; // @[NV_NVDLA_CSC_dl_for_check.scala 1157:30:@2202.4]
  assign _GEN_219 = dat_rsp_pvld ? dat_rsp_mask_w_63 : dat_out_bypass_mask_63; // @[NV_NVDLA_CSC_dl_for_check.scala 1157:30:@2202.4]
  assign _T_3268 = dat_rsp_pvld & dat_rsp_mask_w_0; // @[NV_NVDLA_CSC_dl_for_check.scala 1161:34:@2268.4]
  assign _T_3269 = dat_rsp_pvld & dat_rsp_mask_w_1; // @[NV_NVDLA_CSC_dl_for_check.scala 1161:34:@2272.4]
  assign _T_3270 = dat_rsp_pvld & dat_rsp_mask_w_2; // @[NV_NVDLA_CSC_dl_for_check.scala 1161:34:@2276.4]
  assign _T_3271 = dat_rsp_pvld & dat_rsp_mask_w_3; // @[NV_NVDLA_CSC_dl_for_check.scala 1161:34:@2280.4]
  assign _T_3272 = dat_rsp_pvld & dat_rsp_mask_w_4; // @[NV_NVDLA_CSC_dl_for_check.scala 1161:34:@2284.4]
  assign _T_3273 = dat_rsp_pvld & dat_rsp_mask_w_5; // @[NV_NVDLA_CSC_dl_for_check.scala 1161:34:@2288.4]
  assign _T_3274 = dat_rsp_pvld & dat_rsp_mask_w_6; // @[NV_NVDLA_CSC_dl_for_check.scala 1161:34:@2292.4]
  assign _T_3275 = dat_rsp_pvld & dat_rsp_mask_w_7; // @[NV_NVDLA_CSC_dl_for_check.scala 1161:34:@2296.4]
  assign _T_3276 = dat_rsp_pvld & dat_rsp_mask_w_8; // @[NV_NVDLA_CSC_dl_for_check.scala 1161:34:@2300.4]
  assign _T_3277 = dat_rsp_pvld & dat_rsp_mask_w_9; // @[NV_NVDLA_CSC_dl_for_check.scala 1161:34:@2304.4]
  assign _T_3278 = dat_rsp_pvld & dat_rsp_mask_w_10; // @[NV_NVDLA_CSC_dl_for_check.scala 1161:34:@2308.4]
  assign _T_3279 = dat_rsp_pvld & dat_rsp_mask_w_11; // @[NV_NVDLA_CSC_dl_for_check.scala 1161:34:@2312.4]
  assign _T_3280 = dat_rsp_pvld & dat_rsp_mask_w_12; // @[NV_NVDLA_CSC_dl_for_check.scala 1161:34:@2316.4]
  assign _T_3281 = dat_rsp_pvld & dat_rsp_mask_w_13; // @[NV_NVDLA_CSC_dl_for_check.scala 1161:34:@2320.4]
  assign _T_3282 = dat_rsp_pvld & dat_rsp_mask_w_14; // @[NV_NVDLA_CSC_dl_for_check.scala 1161:34:@2324.4]
  assign _T_3283 = dat_rsp_pvld & dat_rsp_mask_w_15; // @[NV_NVDLA_CSC_dl_for_check.scala 1161:34:@2328.4]
  assign _T_3284 = dat_rsp_pvld & dat_rsp_mask_w_16; // @[NV_NVDLA_CSC_dl_for_check.scala 1161:34:@2332.4]
  assign _T_3285 = dat_rsp_pvld & dat_rsp_mask_w_17; // @[NV_NVDLA_CSC_dl_for_check.scala 1161:34:@2336.4]
  assign _T_3286 = dat_rsp_pvld & dat_rsp_mask_w_18; // @[NV_NVDLA_CSC_dl_for_check.scala 1161:34:@2340.4]
  assign _T_3287 = dat_rsp_pvld & dat_rsp_mask_w_19; // @[NV_NVDLA_CSC_dl_for_check.scala 1161:34:@2344.4]
  assign _T_3288 = dat_rsp_pvld & dat_rsp_mask_w_20; // @[NV_NVDLA_CSC_dl_for_check.scala 1161:34:@2348.4]
  assign _T_3289 = dat_rsp_pvld & dat_rsp_mask_w_21; // @[NV_NVDLA_CSC_dl_for_check.scala 1161:34:@2352.4]
  assign _T_3290 = dat_rsp_pvld & dat_rsp_mask_w_22; // @[NV_NVDLA_CSC_dl_for_check.scala 1161:34:@2356.4]
  assign _T_3291 = dat_rsp_pvld & dat_rsp_mask_w_23; // @[NV_NVDLA_CSC_dl_for_check.scala 1161:34:@2360.4]
  assign _T_3292 = dat_rsp_pvld & dat_rsp_mask_w_24; // @[NV_NVDLA_CSC_dl_for_check.scala 1161:34:@2364.4]
  assign _T_3293 = dat_rsp_pvld & dat_rsp_mask_w_25; // @[NV_NVDLA_CSC_dl_for_check.scala 1161:34:@2368.4]
  assign _T_3294 = dat_rsp_pvld & dat_rsp_mask_w_26; // @[NV_NVDLA_CSC_dl_for_check.scala 1161:34:@2372.4]
  assign _T_3295 = dat_rsp_pvld & dat_rsp_mask_w_27; // @[NV_NVDLA_CSC_dl_for_check.scala 1161:34:@2376.4]
  assign _T_3296 = dat_rsp_pvld & dat_rsp_mask_w_28; // @[NV_NVDLA_CSC_dl_for_check.scala 1161:34:@2380.4]
  assign _T_3297 = dat_rsp_pvld & dat_rsp_mask_w_29; // @[NV_NVDLA_CSC_dl_for_check.scala 1161:34:@2384.4]
  assign _T_3298 = dat_rsp_pvld & dat_rsp_mask_w_30; // @[NV_NVDLA_CSC_dl_for_check.scala 1161:34:@2388.4]
  assign _T_3299 = dat_rsp_pvld & dat_rsp_mask_w_31; // @[NV_NVDLA_CSC_dl_for_check.scala 1161:34:@2392.4]
  assign _T_3300 = dat_rsp_pvld & dat_rsp_mask_w_32; // @[NV_NVDLA_CSC_dl_for_check.scala 1161:34:@2396.4]
  assign _T_3301 = dat_rsp_pvld & dat_rsp_mask_w_33; // @[NV_NVDLA_CSC_dl_for_check.scala 1161:34:@2400.4]
  assign _T_3302 = dat_rsp_pvld & dat_rsp_mask_w_34; // @[NV_NVDLA_CSC_dl_for_check.scala 1161:34:@2404.4]
  assign _T_3303 = dat_rsp_pvld & dat_rsp_mask_w_35; // @[NV_NVDLA_CSC_dl_for_check.scala 1161:34:@2408.4]
  assign _T_3304 = dat_rsp_pvld & dat_rsp_mask_w_36; // @[NV_NVDLA_CSC_dl_for_check.scala 1161:34:@2412.4]
  assign _T_3305 = dat_rsp_pvld & dat_rsp_mask_w_37; // @[NV_NVDLA_CSC_dl_for_check.scala 1161:34:@2416.4]
  assign _T_3306 = dat_rsp_pvld & dat_rsp_mask_w_38; // @[NV_NVDLA_CSC_dl_for_check.scala 1161:34:@2420.4]
  assign _T_3307 = dat_rsp_pvld & dat_rsp_mask_w_39; // @[NV_NVDLA_CSC_dl_for_check.scala 1161:34:@2424.4]
  assign _T_3308 = dat_rsp_pvld & dat_rsp_mask_w_40; // @[NV_NVDLA_CSC_dl_for_check.scala 1161:34:@2428.4]
  assign _T_3309 = dat_rsp_pvld & dat_rsp_mask_w_41; // @[NV_NVDLA_CSC_dl_for_check.scala 1161:34:@2432.4]
  assign _T_3310 = dat_rsp_pvld & dat_rsp_mask_w_42; // @[NV_NVDLA_CSC_dl_for_check.scala 1161:34:@2436.4]
  assign _T_3311 = dat_rsp_pvld & dat_rsp_mask_w_43; // @[NV_NVDLA_CSC_dl_for_check.scala 1161:34:@2440.4]
  assign _T_3312 = dat_rsp_pvld & dat_rsp_mask_w_44; // @[NV_NVDLA_CSC_dl_for_check.scala 1161:34:@2444.4]
  assign _T_3313 = dat_rsp_pvld & dat_rsp_mask_w_45; // @[NV_NVDLA_CSC_dl_for_check.scala 1161:34:@2448.4]
  assign _T_3314 = dat_rsp_pvld & dat_rsp_mask_w_46; // @[NV_NVDLA_CSC_dl_for_check.scala 1161:34:@2452.4]
  assign _T_3315 = dat_rsp_pvld & dat_rsp_mask_w_47; // @[NV_NVDLA_CSC_dl_for_check.scala 1161:34:@2456.4]
  assign _T_3316 = dat_rsp_pvld & dat_rsp_mask_w_48; // @[NV_NVDLA_CSC_dl_for_check.scala 1161:34:@2460.4]
  assign _T_3317 = dat_rsp_pvld & dat_rsp_mask_w_49; // @[NV_NVDLA_CSC_dl_for_check.scala 1161:34:@2464.4]
  assign _T_3318 = dat_rsp_pvld & dat_rsp_mask_w_50; // @[NV_NVDLA_CSC_dl_for_check.scala 1161:34:@2468.4]
  assign _T_3319 = dat_rsp_pvld & dat_rsp_mask_w_51; // @[NV_NVDLA_CSC_dl_for_check.scala 1161:34:@2472.4]
  assign _T_3320 = dat_rsp_pvld & dat_rsp_mask_w_52; // @[NV_NVDLA_CSC_dl_for_check.scala 1161:34:@2476.4]
  assign _T_3321 = dat_rsp_pvld & dat_rsp_mask_w_53; // @[NV_NVDLA_CSC_dl_for_check.scala 1161:34:@2480.4]
  assign _T_3322 = dat_rsp_pvld & dat_rsp_mask_w_54; // @[NV_NVDLA_CSC_dl_for_check.scala 1161:34:@2484.4]
  assign _T_3323 = dat_rsp_pvld & dat_rsp_mask_w_55; // @[NV_NVDLA_CSC_dl_for_check.scala 1161:34:@2488.4]
  assign _T_3324 = dat_rsp_pvld & dat_rsp_mask_w_56; // @[NV_NVDLA_CSC_dl_for_check.scala 1161:34:@2492.4]
  assign _T_3325 = dat_rsp_pvld & dat_rsp_mask_w_57; // @[NV_NVDLA_CSC_dl_for_check.scala 1161:34:@2496.4]
  assign _T_3326 = dat_rsp_pvld & dat_rsp_mask_w_58; // @[NV_NVDLA_CSC_dl_for_check.scala 1161:34:@2500.4]
  assign _T_3327 = dat_rsp_pvld & dat_rsp_mask_w_59; // @[NV_NVDLA_CSC_dl_for_check.scala 1161:34:@2504.4]
  assign _T_3328 = dat_rsp_pvld & dat_rsp_mask_w_60; // @[NV_NVDLA_CSC_dl_for_check.scala 1161:34:@2508.4]
  assign _T_3329 = dat_rsp_pvld & dat_rsp_mask_w_61; // @[NV_NVDLA_CSC_dl_for_check.scala 1161:34:@2512.4]
  assign _T_3330 = dat_rsp_pvld & dat_rsp_mask_w_62; // @[NV_NVDLA_CSC_dl_for_check.scala 1161:34:@2516.4]
  assign _T_3331 = dat_rsp_pvld & dat_rsp_mask_w_63; // @[NV_NVDLA_CSC_dl_for_check.scala 1161:34:@2520.4]
  assign _T_3867 = ~ dat_out_pvld; // @[NV_NVDLA_CSC_dl_for_check.scala 1175:24:@2593.4]
  assign dat_out_mask_0 = _T_3867 ? 1'h0 : dat_out_bypass_mask_0; // @[NV_NVDLA_CSC_dl_for_check.scala 1175:23:@2659.4]
  assign dat_out_mask_1 = _T_3867 ? 1'h0 : dat_out_bypass_mask_1; // @[NV_NVDLA_CSC_dl_for_check.scala 1175:23:@2659.4]
  assign dat_out_mask_2 = _T_3867 ? 1'h0 : dat_out_bypass_mask_2; // @[NV_NVDLA_CSC_dl_for_check.scala 1175:23:@2659.4]
  assign dat_out_mask_3 = _T_3867 ? 1'h0 : dat_out_bypass_mask_3; // @[NV_NVDLA_CSC_dl_for_check.scala 1175:23:@2659.4]
  assign dat_out_mask_4 = _T_3867 ? 1'h0 : dat_out_bypass_mask_4; // @[NV_NVDLA_CSC_dl_for_check.scala 1175:23:@2659.4]
  assign dat_out_mask_5 = _T_3867 ? 1'h0 : dat_out_bypass_mask_5; // @[NV_NVDLA_CSC_dl_for_check.scala 1175:23:@2659.4]
  assign dat_out_mask_6 = _T_3867 ? 1'h0 : dat_out_bypass_mask_6; // @[NV_NVDLA_CSC_dl_for_check.scala 1175:23:@2659.4]
  assign dat_out_mask_7 = _T_3867 ? 1'h0 : dat_out_bypass_mask_7; // @[NV_NVDLA_CSC_dl_for_check.scala 1175:23:@2659.4]
  assign dat_out_mask_8 = _T_3867 ? 1'h0 : dat_out_bypass_mask_8; // @[NV_NVDLA_CSC_dl_for_check.scala 1175:23:@2659.4]
  assign dat_out_mask_9 = _T_3867 ? 1'h0 : dat_out_bypass_mask_9; // @[NV_NVDLA_CSC_dl_for_check.scala 1175:23:@2659.4]
  assign dat_out_mask_10 = _T_3867 ? 1'h0 : dat_out_bypass_mask_10; // @[NV_NVDLA_CSC_dl_for_check.scala 1175:23:@2659.4]
  assign dat_out_mask_11 = _T_3867 ? 1'h0 : dat_out_bypass_mask_11; // @[NV_NVDLA_CSC_dl_for_check.scala 1175:23:@2659.4]
  assign dat_out_mask_12 = _T_3867 ? 1'h0 : dat_out_bypass_mask_12; // @[NV_NVDLA_CSC_dl_for_check.scala 1175:23:@2659.4]
  assign dat_out_mask_13 = _T_3867 ? 1'h0 : dat_out_bypass_mask_13; // @[NV_NVDLA_CSC_dl_for_check.scala 1175:23:@2659.4]
  assign dat_out_mask_14 = _T_3867 ? 1'h0 : dat_out_bypass_mask_14; // @[NV_NVDLA_CSC_dl_for_check.scala 1175:23:@2659.4]
  assign dat_out_mask_15 = _T_3867 ? 1'h0 : dat_out_bypass_mask_15; // @[NV_NVDLA_CSC_dl_for_check.scala 1175:23:@2659.4]
  assign dat_out_mask_16 = _T_3867 ? 1'h0 : dat_out_bypass_mask_16; // @[NV_NVDLA_CSC_dl_for_check.scala 1175:23:@2659.4]
  assign dat_out_mask_17 = _T_3867 ? 1'h0 : dat_out_bypass_mask_17; // @[NV_NVDLA_CSC_dl_for_check.scala 1175:23:@2659.4]
  assign dat_out_mask_18 = _T_3867 ? 1'h0 : dat_out_bypass_mask_18; // @[NV_NVDLA_CSC_dl_for_check.scala 1175:23:@2659.4]
  assign dat_out_mask_19 = _T_3867 ? 1'h0 : dat_out_bypass_mask_19; // @[NV_NVDLA_CSC_dl_for_check.scala 1175:23:@2659.4]
  assign dat_out_mask_20 = _T_3867 ? 1'h0 : dat_out_bypass_mask_20; // @[NV_NVDLA_CSC_dl_for_check.scala 1175:23:@2659.4]
  assign dat_out_mask_21 = _T_3867 ? 1'h0 : dat_out_bypass_mask_21; // @[NV_NVDLA_CSC_dl_for_check.scala 1175:23:@2659.4]
  assign dat_out_mask_22 = _T_3867 ? 1'h0 : dat_out_bypass_mask_22; // @[NV_NVDLA_CSC_dl_for_check.scala 1175:23:@2659.4]
  assign dat_out_mask_23 = _T_3867 ? 1'h0 : dat_out_bypass_mask_23; // @[NV_NVDLA_CSC_dl_for_check.scala 1175:23:@2659.4]
  assign dat_out_mask_24 = _T_3867 ? 1'h0 : dat_out_bypass_mask_24; // @[NV_NVDLA_CSC_dl_for_check.scala 1175:23:@2659.4]
  assign dat_out_mask_25 = _T_3867 ? 1'h0 : dat_out_bypass_mask_25; // @[NV_NVDLA_CSC_dl_for_check.scala 1175:23:@2659.4]
  assign dat_out_mask_26 = _T_3867 ? 1'h0 : dat_out_bypass_mask_26; // @[NV_NVDLA_CSC_dl_for_check.scala 1175:23:@2659.4]
  assign dat_out_mask_27 = _T_3867 ? 1'h0 : dat_out_bypass_mask_27; // @[NV_NVDLA_CSC_dl_for_check.scala 1175:23:@2659.4]
  assign dat_out_mask_28 = _T_3867 ? 1'h0 : dat_out_bypass_mask_28; // @[NV_NVDLA_CSC_dl_for_check.scala 1175:23:@2659.4]
  assign dat_out_mask_29 = _T_3867 ? 1'h0 : dat_out_bypass_mask_29; // @[NV_NVDLA_CSC_dl_for_check.scala 1175:23:@2659.4]
  assign dat_out_mask_30 = _T_3867 ? 1'h0 : dat_out_bypass_mask_30; // @[NV_NVDLA_CSC_dl_for_check.scala 1175:23:@2659.4]
  assign dat_out_mask_31 = _T_3867 ? 1'h0 : dat_out_bypass_mask_31; // @[NV_NVDLA_CSC_dl_for_check.scala 1175:23:@2659.4]
  assign dat_out_mask_32 = _T_3867 ? 1'h0 : dat_out_bypass_mask_32; // @[NV_NVDLA_CSC_dl_for_check.scala 1175:23:@2659.4]
  assign dat_out_mask_33 = _T_3867 ? 1'h0 : dat_out_bypass_mask_33; // @[NV_NVDLA_CSC_dl_for_check.scala 1175:23:@2659.4]
  assign dat_out_mask_34 = _T_3867 ? 1'h0 : dat_out_bypass_mask_34; // @[NV_NVDLA_CSC_dl_for_check.scala 1175:23:@2659.4]
  assign dat_out_mask_35 = _T_3867 ? 1'h0 : dat_out_bypass_mask_35; // @[NV_NVDLA_CSC_dl_for_check.scala 1175:23:@2659.4]
  assign dat_out_mask_36 = _T_3867 ? 1'h0 : dat_out_bypass_mask_36; // @[NV_NVDLA_CSC_dl_for_check.scala 1175:23:@2659.4]
  assign dat_out_mask_37 = _T_3867 ? 1'h0 : dat_out_bypass_mask_37; // @[NV_NVDLA_CSC_dl_for_check.scala 1175:23:@2659.4]
  assign dat_out_mask_38 = _T_3867 ? 1'h0 : dat_out_bypass_mask_38; // @[NV_NVDLA_CSC_dl_for_check.scala 1175:23:@2659.4]
  assign dat_out_mask_39 = _T_3867 ? 1'h0 : dat_out_bypass_mask_39; // @[NV_NVDLA_CSC_dl_for_check.scala 1175:23:@2659.4]
  assign dat_out_mask_40 = _T_3867 ? 1'h0 : dat_out_bypass_mask_40; // @[NV_NVDLA_CSC_dl_for_check.scala 1175:23:@2659.4]
  assign dat_out_mask_41 = _T_3867 ? 1'h0 : dat_out_bypass_mask_41; // @[NV_NVDLA_CSC_dl_for_check.scala 1175:23:@2659.4]
  assign dat_out_mask_42 = _T_3867 ? 1'h0 : dat_out_bypass_mask_42; // @[NV_NVDLA_CSC_dl_for_check.scala 1175:23:@2659.4]
  assign dat_out_mask_43 = _T_3867 ? 1'h0 : dat_out_bypass_mask_43; // @[NV_NVDLA_CSC_dl_for_check.scala 1175:23:@2659.4]
  assign dat_out_mask_44 = _T_3867 ? 1'h0 : dat_out_bypass_mask_44; // @[NV_NVDLA_CSC_dl_for_check.scala 1175:23:@2659.4]
  assign dat_out_mask_45 = _T_3867 ? 1'h0 : dat_out_bypass_mask_45; // @[NV_NVDLA_CSC_dl_for_check.scala 1175:23:@2659.4]
  assign dat_out_mask_46 = _T_3867 ? 1'h0 : dat_out_bypass_mask_46; // @[NV_NVDLA_CSC_dl_for_check.scala 1175:23:@2659.4]
  assign dat_out_mask_47 = _T_3867 ? 1'h0 : dat_out_bypass_mask_47; // @[NV_NVDLA_CSC_dl_for_check.scala 1175:23:@2659.4]
  assign dat_out_mask_48 = _T_3867 ? 1'h0 : dat_out_bypass_mask_48; // @[NV_NVDLA_CSC_dl_for_check.scala 1175:23:@2659.4]
  assign dat_out_mask_49 = _T_3867 ? 1'h0 : dat_out_bypass_mask_49; // @[NV_NVDLA_CSC_dl_for_check.scala 1175:23:@2659.4]
  assign dat_out_mask_50 = _T_3867 ? 1'h0 : dat_out_bypass_mask_50; // @[NV_NVDLA_CSC_dl_for_check.scala 1175:23:@2659.4]
  assign dat_out_mask_51 = _T_3867 ? 1'h0 : dat_out_bypass_mask_51; // @[NV_NVDLA_CSC_dl_for_check.scala 1175:23:@2659.4]
  assign dat_out_mask_52 = _T_3867 ? 1'h0 : dat_out_bypass_mask_52; // @[NV_NVDLA_CSC_dl_for_check.scala 1175:23:@2659.4]
  assign dat_out_mask_53 = _T_3867 ? 1'h0 : dat_out_bypass_mask_53; // @[NV_NVDLA_CSC_dl_for_check.scala 1175:23:@2659.4]
  assign dat_out_mask_54 = _T_3867 ? 1'h0 : dat_out_bypass_mask_54; // @[NV_NVDLA_CSC_dl_for_check.scala 1175:23:@2659.4]
  assign dat_out_mask_55 = _T_3867 ? 1'h0 : dat_out_bypass_mask_55; // @[NV_NVDLA_CSC_dl_for_check.scala 1175:23:@2659.4]
  assign dat_out_mask_56 = _T_3867 ? 1'h0 : dat_out_bypass_mask_56; // @[NV_NVDLA_CSC_dl_for_check.scala 1175:23:@2659.4]
  assign dat_out_mask_57 = _T_3867 ? 1'h0 : dat_out_bypass_mask_57; // @[NV_NVDLA_CSC_dl_for_check.scala 1175:23:@2659.4]
  assign dat_out_mask_58 = _T_3867 ? 1'h0 : dat_out_bypass_mask_58; // @[NV_NVDLA_CSC_dl_for_check.scala 1175:23:@2659.4]
  assign dat_out_mask_59 = _T_3867 ? 1'h0 : dat_out_bypass_mask_59; // @[NV_NVDLA_CSC_dl_for_check.scala 1175:23:@2659.4]
  assign dat_out_mask_60 = _T_3867 ? 1'h0 : dat_out_bypass_mask_60; // @[NV_NVDLA_CSC_dl_for_check.scala 1175:23:@2659.4]
  assign dat_out_mask_61 = _T_3867 ? 1'h0 : dat_out_bypass_mask_61; // @[NV_NVDLA_CSC_dl_for_check.scala 1175:23:@2659.4]
  assign dat_out_mask_62 = _T_3867 ? 1'h0 : dat_out_bypass_mask_62; // @[NV_NVDLA_CSC_dl_for_check.scala 1175:23:@2659.4]
  assign dat_out_mask_63 = _T_3867 ? 1'h0 : dat_out_bypass_mask_63; // @[NV_NVDLA_CSC_dl_for_check.scala 1175:23:@2659.4]
  assign _T_4133 = dat_out_pvld | dl_out_pvld; // @[NV_NVDLA_CSC_dl_for_check.scala 1179:19:@2661.4]
  assign _GEN_284 = _T_4133 ? dat_out_mask_0 : dl_out_mask_0; // @[NV_NVDLA_CSC_dl_for_check.scala 1179:33:@2662.4]
  assign _GEN_285 = _T_4133 ? dat_out_mask_1 : dl_out_mask_1; // @[NV_NVDLA_CSC_dl_for_check.scala 1179:33:@2662.4]
  assign _GEN_286 = _T_4133 ? dat_out_mask_2 : dl_out_mask_2; // @[NV_NVDLA_CSC_dl_for_check.scala 1179:33:@2662.4]
  assign _GEN_287 = _T_4133 ? dat_out_mask_3 : dl_out_mask_3; // @[NV_NVDLA_CSC_dl_for_check.scala 1179:33:@2662.4]
  assign _GEN_288 = _T_4133 ? dat_out_mask_4 : dl_out_mask_4; // @[NV_NVDLA_CSC_dl_for_check.scala 1179:33:@2662.4]
  assign _GEN_289 = _T_4133 ? dat_out_mask_5 : dl_out_mask_5; // @[NV_NVDLA_CSC_dl_for_check.scala 1179:33:@2662.4]
  assign _GEN_290 = _T_4133 ? dat_out_mask_6 : dl_out_mask_6; // @[NV_NVDLA_CSC_dl_for_check.scala 1179:33:@2662.4]
  assign _GEN_291 = _T_4133 ? dat_out_mask_7 : dl_out_mask_7; // @[NV_NVDLA_CSC_dl_for_check.scala 1179:33:@2662.4]
  assign _GEN_292 = _T_4133 ? dat_out_mask_8 : dl_out_mask_8; // @[NV_NVDLA_CSC_dl_for_check.scala 1179:33:@2662.4]
  assign _GEN_293 = _T_4133 ? dat_out_mask_9 : dl_out_mask_9; // @[NV_NVDLA_CSC_dl_for_check.scala 1179:33:@2662.4]
  assign _GEN_294 = _T_4133 ? dat_out_mask_10 : dl_out_mask_10; // @[NV_NVDLA_CSC_dl_for_check.scala 1179:33:@2662.4]
  assign _GEN_295 = _T_4133 ? dat_out_mask_11 : dl_out_mask_11; // @[NV_NVDLA_CSC_dl_for_check.scala 1179:33:@2662.4]
  assign _GEN_296 = _T_4133 ? dat_out_mask_12 : dl_out_mask_12; // @[NV_NVDLA_CSC_dl_for_check.scala 1179:33:@2662.4]
  assign _GEN_297 = _T_4133 ? dat_out_mask_13 : dl_out_mask_13; // @[NV_NVDLA_CSC_dl_for_check.scala 1179:33:@2662.4]
  assign _GEN_298 = _T_4133 ? dat_out_mask_14 : dl_out_mask_14; // @[NV_NVDLA_CSC_dl_for_check.scala 1179:33:@2662.4]
  assign _GEN_299 = _T_4133 ? dat_out_mask_15 : dl_out_mask_15; // @[NV_NVDLA_CSC_dl_for_check.scala 1179:33:@2662.4]
  assign _GEN_300 = _T_4133 ? dat_out_mask_16 : dl_out_mask_16; // @[NV_NVDLA_CSC_dl_for_check.scala 1179:33:@2662.4]
  assign _GEN_301 = _T_4133 ? dat_out_mask_17 : dl_out_mask_17; // @[NV_NVDLA_CSC_dl_for_check.scala 1179:33:@2662.4]
  assign _GEN_302 = _T_4133 ? dat_out_mask_18 : dl_out_mask_18; // @[NV_NVDLA_CSC_dl_for_check.scala 1179:33:@2662.4]
  assign _GEN_303 = _T_4133 ? dat_out_mask_19 : dl_out_mask_19; // @[NV_NVDLA_CSC_dl_for_check.scala 1179:33:@2662.4]
  assign _GEN_304 = _T_4133 ? dat_out_mask_20 : dl_out_mask_20; // @[NV_NVDLA_CSC_dl_for_check.scala 1179:33:@2662.4]
  assign _GEN_305 = _T_4133 ? dat_out_mask_21 : dl_out_mask_21; // @[NV_NVDLA_CSC_dl_for_check.scala 1179:33:@2662.4]
  assign _GEN_306 = _T_4133 ? dat_out_mask_22 : dl_out_mask_22; // @[NV_NVDLA_CSC_dl_for_check.scala 1179:33:@2662.4]
  assign _GEN_307 = _T_4133 ? dat_out_mask_23 : dl_out_mask_23; // @[NV_NVDLA_CSC_dl_for_check.scala 1179:33:@2662.4]
  assign _GEN_308 = _T_4133 ? dat_out_mask_24 : dl_out_mask_24; // @[NV_NVDLA_CSC_dl_for_check.scala 1179:33:@2662.4]
  assign _GEN_309 = _T_4133 ? dat_out_mask_25 : dl_out_mask_25; // @[NV_NVDLA_CSC_dl_for_check.scala 1179:33:@2662.4]
  assign _GEN_310 = _T_4133 ? dat_out_mask_26 : dl_out_mask_26; // @[NV_NVDLA_CSC_dl_for_check.scala 1179:33:@2662.4]
  assign _GEN_311 = _T_4133 ? dat_out_mask_27 : dl_out_mask_27; // @[NV_NVDLA_CSC_dl_for_check.scala 1179:33:@2662.4]
  assign _GEN_312 = _T_4133 ? dat_out_mask_28 : dl_out_mask_28; // @[NV_NVDLA_CSC_dl_for_check.scala 1179:33:@2662.4]
  assign _GEN_313 = _T_4133 ? dat_out_mask_29 : dl_out_mask_29; // @[NV_NVDLA_CSC_dl_for_check.scala 1179:33:@2662.4]
  assign _GEN_314 = _T_4133 ? dat_out_mask_30 : dl_out_mask_30; // @[NV_NVDLA_CSC_dl_for_check.scala 1179:33:@2662.4]
  assign _GEN_315 = _T_4133 ? dat_out_mask_31 : dl_out_mask_31; // @[NV_NVDLA_CSC_dl_for_check.scala 1179:33:@2662.4]
  assign _GEN_316 = _T_4133 ? dat_out_mask_32 : dl_out_mask_32; // @[NV_NVDLA_CSC_dl_for_check.scala 1179:33:@2662.4]
  assign _GEN_317 = _T_4133 ? dat_out_mask_33 : dl_out_mask_33; // @[NV_NVDLA_CSC_dl_for_check.scala 1179:33:@2662.4]
  assign _GEN_318 = _T_4133 ? dat_out_mask_34 : dl_out_mask_34; // @[NV_NVDLA_CSC_dl_for_check.scala 1179:33:@2662.4]
  assign _GEN_319 = _T_4133 ? dat_out_mask_35 : dl_out_mask_35; // @[NV_NVDLA_CSC_dl_for_check.scala 1179:33:@2662.4]
  assign _GEN_320 = _T_4133 ? dat_out_mask_36 : dl_out_mask_36; // @[NV_NVDLA_CSC_dl_for_check.scala 1179:33:@2662.4]
  assign _GEN_321 = _T_4133 ? dat_out_mask_37 : dl_out_mask_37; // @[NV_NVDLA_CSC_dl_for_check.scala 1179:33:@2662.4]
  assign _GEN_322 = _T_4133 ? dat_out_mask_38 : dl_out_mask_38; // @[NV_NVDLA_CSC_dl_for_check.scala 1179:33:@2662.4]
  assign _GEN_323 = _T_4133 ? dat_out_mask_39 : dl_out_mask_39; // @[NV_NVDLA_CSC_dl_for_check.scala 1179:33:@2662.4]
  assign _GEN_324 = _T_4133 ? dat_out_mask_40 : dl_out_mask_40; // @[NV_NVDLA_CSC_dl_for_check.scala 1179:33:@2662.4]
  assign _GEN_325 = _T_4133 ? dat_out_mask_41 : dl_out_mask_41; // @[NV_NVDLA_CSC_dl_for_check.scala 1179:33:@2662.4]
  assign _GEN_326 = _T_4133 ? dat_out_mask_42 : dl_out_mask_42; // @[NV_NVDLA_CSC_dl_for_check.scala 1179:33:@2662.4]
  assign _GEN_327 = _T_4133 ? dat_out_mask_43 : dl_out_mask_43; // @[NV_NVDLA_CSC_dl_for_check.scala 1179:33:@2662.4]
  assign _GEN_328 = _T_4133 ? dat_out_mask_44 : dl_out_mask_44; // @[NV_NVDLA_CSC_dl_for_check.scala 1179:33:@2662.4]
  assign _GEN_329 = _T_4133 ? dat_out_mask_45 : dl_out_mask_45; // @[NV_NVDLA_CSC_dl_for_check.scala 1179:33:@2662.4]
  assign _GEN_330 = _T_4133 ? dat_out_mask_46 : dl_out_mask_46; // @[NV_NVDLA_CSC_dl_for_check.scala 1179:33:@2662.4]
  assign _GEN_331 = _T_4133 ? dat_out_mask_47 : dl_out_mask_47; // @[NV_NVDLA_CSC_dl_for_check.scala 1179:33:@2662.4]
  assign _GEN_332 = _T_4133 ? dat_out_mask_48 : dl_out_mask_48; // @[NV_NVDLA_CSC_dl_for_check.scala 1179:33:@2662.4]
  assign _GEN_333 = _T_4133 ? dat_out_mask_49 : dl_out_mask_49; // @[NV_NVDLA_CSC_dl_for_check.scala 1179:33:@2662.4]
  assign _GEN_334 = _T_4133 ? dat_out_mask_50 : dl_out_mask_50; // @[NV_NVDLA_CSC_dl_for_check.scala 1179:33:@2662.4]
  assign _GEN_335 = _T_4133 ? dat_out_mask_51 : dl_out_mask_51; // @[NV_NVDLA_CSC_dl_for_check.scala 1179:33:@2662.4]
  assign _GEN_336 = _T_4133 ? dat_out_mask_52 : dl_out_mask_52; // @[NV_NVDLA_CSC_dl_for_check.scala 1179:33:@2662.4]
  assign _GEN_337 = _T_4133 ? dat_out_mask_53 : dl_out_mask_53; // @[NV_NVDLA_CSC_dl_for_check.scala 1179:33:@2662.4]
  assign _GEN_338 = _T_4133 ? dat_out_mask_54 : dl_out_mask_54; // @[NV_NVDLA_CSC_dl_for_check.scala 1179:33:@2662.4]
  assign _GEN_339 = _T_4133 ? dat_out_mask_55 : dl_out_mask_55; // @[NV_NVDLA_CSC_dl_for_check.scala 1179:33:@2662.4]
  assign _GEN_340 = _T_4133 ? dat_out_mask_56 : dl_out_mask_56; // @[NV_NVDLA_CSC_dl_for_check.scala 1179:33:@2662.4]
  assign _GEN_341 = _T_4133 ? dat_out_mask_57 : dl_out_mask_57; // @[NV_NVDLA_CSC_dl_for_check.scala 1179:33:@2662.4]
  assign _GEN_342 = _T_4133 ? dat_out_mask_58 : dl_out_mask_58; // @[NV_NVDLA_CSC_dl_for_check.scala 1179:33:@2662.4]
  assign _GEN_343 = _T_4133 ? dat_out_mask_59 : dl_out_mask_59; // @[NV_NVDLA_CSC_dl_for_check.scala 1179:33:@2662.4]
  assign _GEN_344 = _T_4133 ? dat_out_mask_60 : dl_out_mask_60; // @[NV_NVDLA_CSC_dl_for_check.scala 1179:33:@2662.4]
  assign _GEN_345 = _T_4133 ? dat_out_mask_61 : dl_out_mask_61; // @[NV_NVDLA_CSC_dl_for_check.scala 1179:33:@2662.4]
  assign _GEN_346 = _T_4133 ? dat_out_mask_62 : dl_out_mask_62; // @[NV_NVDLA_CSC_dl_for_check.scala 1179:33:@2662.4]
  assign _GEN_347 = _T_4133 ? dat_out_mask_63 : dl_out_mask_63; // @[NV_NVDLA_CSC_dl_for_check.scala 1179:33:@2662.4]
  assign _GEN_348 = dat_out_pvld ? {{8'd0}, dat_out_pvld} : dl_out_flag; // @[NV_NVDLA_CSC_dl_for_check.scala 1182:19:@2728.4]
  assign _T_4136 = ~ dl_out_pvld; // @[NV_NVDLA_CSC_dl_for_check.scala 1196:27:@2925.4]
  assign sc2mac_dat_pd_w = _T_4136 ? 9'h0 : dl_out_flag; // @[NV_NVDLA_CSC_dl_for_check.scala 1196:26:@2926.4]
  assign _T_4145 = dl_out_pvld | dl_out_pvld_d1; // @[NV_NVDLA_CSC_dl_for_check.scala 1200:85:@2933.4]
  assign _GEN_413 = _T_4145 ? sc2mac_dat_pd_w : _T_4147; // @[Reg.scala 20:19:@2935.4]
  assign _GEN_414 = _T_4145 ? sc2mac_dat_pd_w : _T_4151; // @[Reg.scala 20:19:@2941.4]
  assign _GEN_415 = _T_4145 ? dl_out_mask_0 : _T_4419_0; // @[Reg.scala 20:19:@3012.4]
  assign _GEN_416 = _T_4145 ? dl_out_mask_1 : _T_4419_1; // @[Reg.scala 20:19:@3012.4]
  assign _GEN_417 = _T_4145 ? dl_out_mask_2 : _T_4419_2; // @[Reg.scala 20:19:@3012.4]
  assign _GEN_418 = _T_4145 ? dl_out_mask_3 : _T_4419_3; // @[Reg.scala 20:19:@3012.4]
  assign _GEN_419 = _T_4145 ? dl_out_mask_4 : _T_4419_4; // @[Reg.scala 20:19:@3012.4]
  assign _GEN_420 = _T_4145 ? dl_out_mask_5 : _T_4419_5; // @[Reg.scala 20:19:@3012.4]
  assign _GEN_421 = _T_4145 ? dl_out_mask_6 : _T_4419_6; // @[Reg.scala 20:19:@3012.4]
  assign _GEN_422 = _T_4145 ? dl_out_mask_7 : _T_4419_7; // @[Reg.scala 20:19:@3012.4]
  assign _GEN_423 = _T_4145 ? dl_out_mask_8 : _T_4419_8; // @[Reg.scala 20:19:@3012.4]
  assign _GEN_424 = _T_4145 ? dl_out_mask_9 : _T_4419_9; // @[Reg.scala 20:19:@3012.4]
  assign _GEN_425 = _T_4145 ? dl_out_mask_10 : _T_4419_10; // @[Reg.scala 20:19:@3012.4]
  assign _GEN_426 = _T_4145 ? dl_out_mask_11 : _T_4419_11; // @[Reg.scala 20:19:@3012.4]
  assign _GEN_427 = _T_4145 ? dl_out_mask_12 : _T_4419_12; // @[Reg.scala 20:19:@3012.4]
  assign _GEN_428 = _T_4145 ? dl_out_mask_13 : _T_4419_13; // @[Reg.scala 20:19:@3012.4]
  assign _GEN_429 = _T_4145 ? dl_out_mask_14 : _T_4419_14; // @[Reg.scala 20:19:@3012.4]
  assign _GEN_430 = _T_4145 ? dl_out_mask_15 : _T_4419_15; // @[Reg.scala 20:19:@3012.4]
  assign _GEN_431 = _T_4145 ? dl_out_mask_16 : _T_4419_16; // @[Reg.scala 20:19:@3012.4]
  assign _GEN_432 = _T_4145 ? dl_out_mask_17 : _T_4419_17; // @[Reg.scala 20:19:@3012.4]
  assign _GEN_433 = _T_4145 ? dl_out_mask_18 : _T_4419_18; // @[Reg.scala 20:19:@3012.4]
  assign _GEN_434 = _T_4145 ? dl_out_mask_19 : _T_4419_19; // @[Reg.scala 20:19:@3012.4]
  assign _GEN_435 = _T_4145 ? dl_out_mask_20 : _T_4419_20; // @[Reg.scala 20:19:@3012.4]
  assign _GEN_436 = _T_4145 ? dl_out_mask_21 : _T_4419_21; // @[Reg.scala 20:19:@3012.4]
  assign _GEN_437 = _T_4145 ? dl_out_mask_22 : _T_4419_22; // @[Reg.scala 20:19:@3012.4]
  assign _GEN_438 = _T_4145 ? dl_out_mask_23 : _T_4419_23; // @[Reg.scala 20:19:@3012.4]
  assign _GEN_439 = _T_4145 ? dl_out_mask_24 : _T_4419_24; // @[Reg.scala 20:19:@3012.4]
  assign _GEN_440 = _T_4145 ? dl_out_mask_25 : _T_4419_25; // @[Reg.scala 20:19:@3012.4]
  assign _GEN_441 = _T_4145 ? dl_out_mask_26 : _T_4419_26; // @[Reg.scala 20:19:@3012.4]
  assign _GEN_442 = _T_4145 ? dl_out_mask_27 : _T_4419_27; // @[Reg.scala 20:19:@3012.4]
  assign _GEN_443 = _T_4145 ? dl_out_mask_28 : _T_4419_28; // @[Reg.scala 20:19:@3012.4]
  assign _GEN_444 = _T_4145 ? dl_out_mask_29 : _T_4419_29; // @[Reg.scala 20:19:@3012.4]
  assign _GEN_445 = _T_4145 ? dl_out_mask_30 : _T_4419_30; // @[Reg.scala 20:19:@3012.4]
  assign _GEN_446 = _T_4145 ? dl_out_mask_31 : _T_4419_31; // @[Reg.scala 20:19:@3012.4]
  assign _GEN_447 = _T_4145 ? dl_out_mask_32 : _T_4419_32; // @[Reg.scala 20:19:@3012.4]
  assign _GEN_448 = _T_4145 ? dl_out_mask_33 : _T_4419_33; // @[Reg.scala 20:19:@3012.4]
  assign _GEN_449 = _T_4145 ? dl_out_mask_34 : _T_4419_34; // @[Reg.scala 20:19:@3012.4]
  assign _GEN_450 = _T_4145 ? dl_out_mask_35 : _T_4419_35; // @[Reg.scala 20:19:@3012.4]
  assign _GEN_451 = _T_4145 ? dl_out_mask_36 : _T_4419_36; // @[Reg.scala 20:19:@3012.4]
  assign _GEN_452 = _T_4145 ? dl_out_mask_37 : _T_4419_37; // @[Reg.scala 20:19:@3012.4]
  assign _GEN_453 = _T_4145 ? dl_out_mask_38 : _T_4419_38; // @[Reg.scala 20:19:@3012.4]
  assign _GEN_454 = _T_4145 ? dl_out_mask_39 : _T_4419_39; // @[Reg.scala 20:19:@3012.4]
  assign _GEN_455 = _T_4145 ? dl_out_mask_40 : _T_4419_40; // @[Reg.scala 20:19:@3012.4]
  assign _GEN_456 = _T_4145 ? dl_out_mask_41 : _T_4419_41; // @[Reg.scala 20:19:@3012.4]
  assign _GEN_457 = _T_4145 ? dl_out_mask_42 : _T_4419_42; // @[Reg.scala 20:19:@3012.4]
  assign _GEN_458 = _T_4145 ? dl_out_mask_43 : _T_4419_43; // @[Reg.scala 20:19:@3012.4]
  assign _GEN_459 = _T_4145 ? dl_out_mask_44 : _T_4419_44; // @[Reg.scala 20:19:@3012.4]
  assign _GEN_460 = _T_4145 ? dl_out_mask_45 : _T_4419_45; // @[Reg.scala 20:19:@3012.4]
  assign _GEN_461 = _T_4145 ? dl_out_mask_46 : _T_4419_46; // @[Reg.scala 20:19:@3012.4]
  assign _GEN_462 = _T_4145 ? dl_out_mask_47 : _T_4419_47; // @[Reg.scala 20:19:@3012.4]
  assign _GEN_463 = _T_4145 ? dl_out_mask_48 : _T_4419_48; // @[Reg.scala 20:19:@3012.4]
  assign _GEN_464 = _T_4145 ? dl_out_mask_49 : _T_4419_49; // @[Reg.scala 20:19:@3012.4]
  assign _GEN_465 = _T_4145 ? dl_out_mask_50 : _T_4419_50; // @[Reg.scala 20:19:@3012.4]
  assign _GEN_466 = _T_4145 ? dl_out_mask_51 : _T_4419_51; // @[Reg.scala 20:19:@3012.4]
  assign _GEN_467 = _T_4145 ? dl_out_mask_52 : _T_4419_52; // @[Reg.scala 20:19:@3012.4]
  assign _GEN_468 = _T_4145 ? dl_out_mask_53 : _T_4419_53; // @[Reg.scala 20:19:@3012.4]
  assign _GEN_469 = _T_4145 ? dl_out_mask_54 : _T_4419_54; // @[Reg.scala 20:19:@3012.4]
  assign _GEN_470 = _T_4145 ? dl_out_mask_55 : _T_4419_55; // @[Reg.scala 20:19:@3012.4]
  assign _GEN_471 = _T_4145 ? dl_out_mask_56 : _T_4419_56; // @[Reg.scala 20:19:@3012.4]
  assign _GEN_472 = _T_4145 ? dl_out_mask_57 : _T_4419_57; // @[Reg.scala 20:19:@3012.4]
  assign _GEN_473 = _T_4145 ? dl_out_mask_58 : _T_4419_58; // @[Reg.scala 20:19:@3012.4]
  assign _GEN_474 = _T_4145 ? dl_out_mask_59 : _T_4419_59; // @[Reg.scala 20:19:@3012.4]
  assign _GEN_475 = _T_4145 ? dl_out_mask_60 : _T_4419_60; // @[Reg.scala 20:19:@3012.4]
  assign _GEN_476 = _T_4145 ? dl_out_mask_61 : _T_4419_61; // @[Reg.scala 20:19:@3012.4]
  assign _GEN_477 = _T_4145 ? dl_out_mask_62 : _T_4419_62; // @[Reg.scala 20:19:@3012.4]
  assign _GEN_478 = _T_4145 ? dl_out_mask_63 : _T_4419_63; // @[Reg.scala 20:19:@3012.4]
  assign _T_4622 = {_T_4419_7,_T_4419_6,_T_4419_5,_T_4419_4,_T_4419_3,_T_4419_2,_T_4419_1,_T_4419_0}; // @[NV_NVDLA_CSC_dl_for_check.scala 1202:127:@3084.4]
  assign _T_4630 = {_T_4419_15,_T_4419_14,_T_4419_13,_T_4419_12,_T_4419_11,_T_4419_10,_T_4419_9,_T_4419_8,_T_4622}; // @[NV_NVDLA_CSC_dl_for_check.scala 1202:127:@3092.4]
  assign _T_4637 = {_T_4419_23,_T_4419_22,_T_4419_21,_T_4419_20,_T_4419_19,_T_4419_18,_T_4419_17,_T_4419_16}; // @[NV_NVDLA_CSC_dl_for_check.scala 1202:127:@3099.4]
  assign _T_4646 = {_T_4419_31,_T_4419_30,_T_4419_29,_T_4419_28,_T_4419_27,_T_4419_26,_T_4419_25,_T_4419_24,_T_4637,_T_4630}; // @[NV_NVDLA_CSC_dl_for_check.scala 1202:127:@3108.4]
  assign _T_4653 = {_T_4419_39,_T_4419_38,_T_4419_37,_T_4419_36,_T_4419_35,_T_4419_34,_T_4419_33,_T_4419_32}; // @[NV_NVDLA_CSC_dl_for_check.scala 1202:127:@3115.4]
  assign _T_4661 = {_T_4419_47,_T_4419_46,_T_4419_45,_T_4419_44,_T_4419_43,_T_4419_42,_T_4419_41,_T_4419_40,_T_4653}; // @[NV_NVDLA_CSC_dl_for_check.scala 1202:127:@3123.4]
  assign _T_4668 = {_T_4419_55,_T_4419_54,_T_4419_53,_T_4419_52,_T_4419_51,_T_4419_50,_T_4419_49,_T_4419_48}; // @[NV_NVDLA_CSC_dl_for_check.scala 1202:127:@3130.4]
  assign _T_4677 = {_T_4419_63,_T_4419_62,_T_4419_61,_T_4419_60,_T_4419_59,_T_4419_58,_T_4419_57,_T_4419_56,_T_4668,_T_4661}; // @[NV_NVDLA_CSC_dl_for_check.scala 1202:127:@3139.4]
  assign _GEN_479 = _T_4145 ? dl_out_mask_0 : _T_4946_0; // @[Reg.scala 20:19:@3209.4]
  assign _GEN_480 = _T_4145 ? dl_out_mask_1 : _T_4946_1; // @[Reg.scala 20:19:@3209.4]
  assign _GEN_481 = _T_4145 ? dl_out_mask_2 : _T_4946_2; // @[Reg.scala 20:19:@3209.4]
  assign _GEN_482 = _T_4145 ? dl_out_mask_3 : _T_4946_3; // @[Reg.scala 20:19:@3209.4]
  assign _GEN_483 = _T_4145 ? dl_out_mask_4 : _T_4946_4; // @[Reg.scala 20:19:@3209.4]
  assign _GEN_484 = _T_4145 ? dl_out_mask_5 : _T_4946_5; // @[Reg.scala 20:19:@3209.4]
  assign _GEN_485 = _T_4145 ? dl_out_mask_6 : _T_4946_6; // @[Reg.scala 20:19:@3209.4]
  assign _GEN_486 = _T_4145 ? dl_out_mask_7 : _T_4946_7; // @[Reg.scala 20:19:@3209.4]
  assign _GEN_487 = _T_4145 ? dl_out_mask_8 : _T_4946_8; // @[Reg.scala 20:19:@3209.4]
  assign _GEN_488 = _T_4145 ? dl_out_mask_9 : _T_4946_9; // @[Reg.scala 20:19:@3209.4]
  assign _GEN_489 = _T_4145 ? dl_out_mask_10 : _T_4946_10; // @[Reg.scala 20:19:@3209.4]
  assign _GEN_490 = _T_4145 ? dl_out_mask_11 : _T_4946_11; // @[Reg.scala 20:19:@3209.4]
  assign _GEN_491 = _T_4145 ? dl_out_mask_12 : _T_4946_12; // @[Reg.scala 20:19:@3209.4]
  assign _GEN_492 = _T_4145 ? dl_out_mask_13 : _T_4946_13; // @[Reg.scala 20:19:@3209.4]
  assign _GEN_493 = _T_4145 ? dl_out_mask_14 : _T_4946_14; // @[Reg.scala 20:19:@3209.4]
  assign _GEN_494 = _T_4145 ? dl_out_mask_15 : _T_4946_15; // @[Reg.scala 20:19:@3209.4]
  assign _GEN_495 = _T_4145 ? dl_out_mask_16 : _T_4946_16; // @[Reg.scala 20:19:@3209.4]
  assign _GEN_496 = _T_4145 ? dl_out_mask_17 : _T_4946_17; // @[Reg.scala 20:19:@3209.4]
  assign _GEN_497 = _T_4145 ? dl_out_mask_18 : _T_4946_18; // @[Reg.scala 20:19:@3209.4]
  assign _GEN_498 = _T_4145 ? dl_out_mask_19 : _T_4946_19; // @[Reg.scala 20:19:@3209.4]
  assign _GEN_499 = _T_4145 ? dl_out_mask_20 : _T_4946_20; // @[Reg.scala 20:19:@3209.4]
  assign _GEN_500 = _T_4145 ? dl_out_mask_21 : _T_4946_21; // @[Reg.scala 20:19:@3209.4]
  assign _GEN_501 = _T_4145 ? dl_out_mask_22 : _T_4946_22; // @[Reg.scala 20:19:@3209.4]
  assign _GEN_502 = _T_4145 ? dl_out_mask_23 : _T_4946_23; // @[Reg.scala 20:19:@3209.4]
  assign _GEN_503 = _T_4145 ? dl_out_mask_24 : _T_4946_24; // @[Reg.scala 20:19:@3209.4]
  assign _GEN_504 = _T_4145 ? dl_out_mask_25 : _T_4946_25; // @[Reg.scala 20:19:@3209.4]
  assign _GEN_505 = _T_4145 ? dl_out_mask_26 : _T_4946_26; // @[Reg.scala 20:19:@3209.4]
  assign _GEN_506 = _T_4145 ? dl_out_mask_27 : _T_4946_27; // @[Reg.scala 20:19:@3209.4]
  assign _GEN_507 = _T_4145 ? dl_out_mask_28 : _T_4946_28; // @[Reg.scala 20:19:@3209.4]
  assign _GEN_508 = _T_4145 ? dl_out_mask_29 : _T_4946_29; // @[Reg.scala 20:19:@3209.4]
  assign _GEN_509 = _T_4145 ? dl_out_mask_30 : _T_4946_30; // @[Reg.scala 20:19:@3209.4]
  assign _GEN_510 = _T_4145 ? dl_out_mask_31 : _T_4946_31; // @[Reg.scala 20:19:@3209.4]
  assign _GEN_511 = _T_4145 ? dl_out_mask_32 : _T_4946_32; // @[Reg.scala 20:19:@3209.4]
  assign _GEN_512 = _T_4145 ? dl_out_mask_33 : _T_4946_33; // @[Reg.scala 20:19:@3209.4]
  assign _GEN_513 = _T_4145 ? dl_out_mask_34 : _T_4946_34; // @[Reg.scala 20:19:@3209.4]
  assign _GEN_514 = _T_4145 ? dl_out_mask_35 : _T_4946_35; // @[Reg.scala 20:19:@3209.4]
  assign _GEN_515 = _T_4145 ? dl_out_mask_36 : _T_4946_36; // @[Reg.scala 20:19:@3209.4]
  assign _GEN_516 = _T_4145 ? dl_out_mask_37 : _T_4946_37; // @[Reg.scala 20:19:@3209.4]
  assign _GEN_517 = _T_4145 ? dl_out_mask_38 : _T_4946_38; // @[Reg.scala 20:19:@3209.4]
  assign _GEN_518 = _T_4145 ? dl_out_mask_39 : _T_4946_39; // @[Reg.scala 20:19:@3209.4]
  assign _GEN_519 = _T_4145 ? dl_out_mask_40 : _T_4946_40; // @[Reg.scala 20:19:@3209.4]
  assign _GEN_520 = _T_4145 ? dl_out_mask_41 : _T_4946_41; // @[Reg.scala 20:19:@3209.4]
  assign _GEN_521 = _T_4145 ? dl_out_mask_42 : _T_4946_42; // @[Reg.scala 20:19:@3209.4]
  assign _GEN_522 = _T_4145 ? dl_out_mask_43 : _T_4946_43; // @[Reg.scala 20:19:@3209.4]
  assign _GEN_523 = _T_4145 ? dl_out_mask_44 : _T_4946_44; // @[Reg.scala 20:19:@3209.4]
  assign _GEN_524 = _T_4145 ? dl_out_mask_45 : _T_4946_45; // @[Reg.scala 20:19:@3209.4]
  assign _GEN_525 = _T_4145 ? dl_out_mask_46 : _T_4946_46; // @[Reg.scala 20:19:@3209.4]
  assign _GEN_526 = _T_4145 ? dl_out_mask_47 : _T_4946_47; // @[Reg.scala 20:19:@3209.4]
  assign _GEN_527 = _T_4145 ? dl_out_mask_48 : _T_4946_48; // @[Reg.scala 20:19:@3209.4]
  assign _GEN_528 = _T_4145 ? dl_out_mask_49 : _T_4946_49; // @[Reg.scala 20:19:@3209.4]
  assign _GEN_529 = _T_4145 ? dl_out_mask_50 : _T_4946_50; // @[Reg.scala 20:19:@3209.4]
  assign _GEN_530 = _T_4145 ? dl_out_mask_51 : _T_4946_51; // @[Reg.scala 20:19:@3209.4]
  assign _GEN_531 = _T_4145 ? dl_out_mask_52 : _T_4946_52; // @[Reg.scala 20:19:@3209.4]
  assign _GEN_532 = _T_4145 ? dl_out_mask_53 : _T_4946_53; // @[Reg.scala 20:19:@3209.4]
  assign _GEN_533 = _T_4145 ? dl_out_mask_54 : _T_4946_54; // @[Reg.scala 20:19:@3209.4]
  assign _GEN_534 = _T_4145 ? dl_out_mask_55 : _T_4946_55; // @[Reg.scala 20:19:@3209.4]
  assign _GEN_535 = _T_4145 ? dl_out_mask_56 : _T_4946_56; // @[Reg.scala 20:19:@3209.4]
  assign _GEN_536 = _T_4145 ? dl_out_mask_57 : _T_4946_57; // @[Reg.scala 20:19:@3209.4]
  assign _GEN_537 = _T_4145 ? dl_out_mask_58 : _T_4946_58; // @[Reg.scala 20:19:@3209.4]
  assign _GEN_538 = _T_4145 ? dl_out_mask_59 : _T_4946_59; // @[Reg.scala 20:19:@3209.4]
  assign _GEN_539 = _T_4145 ? dl_out_mask_60 : _T_4946_60; // @[Reg.scala 20:19:@3209.4]
  assign _GEN_540 = _T_4145 ? dl_out_mask_61 : _T_4946_61; // @[Reg.scala 20:19:@3209.4]
  assign _GEN_541 = _T_4145 ? dl_out_mask_62 : _T_4946_62; // @[Reg.scala 20:19:@3209.4]
  assign _GEN_542 = _T_4145 ? dl_out_mask_63 : _T_4946_63; // @[Reg.scala 20:19:@3209.4]
  assign _T_5149 = {_T_4946_7,_T_4946_6,_T_4946_5,_T_4946_4,_T_4946_3,_T_4946_2,_T_4946_1,_T_4946_0}; // @[NV_NVDLA_CSC_dl_for_check.scala 1203:127:@3281.4]
  assign _T_5157 = {_T_4946_15,_T_4946_14,_T_4946_13,_T_4946_12,_T_4946_11,_T_4946_10,_T_4946_9,_T_4946_8,_T_5149}; // @[NV_NVDLA_CSC_dl_for_check.scala 1203:127:@3289.4]
  assign _T_5164 = {_T_4946_23,_T_4946_22,_T_4946_21,_T_4946_20,_T_4946_19,_T_4946_18,_T_4946_17,_T_4946_16}; // @[NV_NVDLA_CSC_dl_for_check.scala 1203:127:@3296.4]
  assign _T_5173 = {_T_4946_31,_T_4946_30,_T_4946_29,_T_4946_28,_T_4946_27,_T_4946_26,_T_4946_25,_T_4946_24,_T_5164,_T_5157}; // @[NV_NVDLA_CSC_dl_for_check.scala 1203:127:@3305.4]
  assign _T_5180 = {_T_4946_39,_T_4946_38,_T_4946_37,_T_4946_36,_T_4946_35,_T_4946_34,_T_4946_33,_T_4946_32}; // @[NV_NVDLA_CSC_dl_for_check.scala 1203:127:@3312.4]
  assign _T_5188 = {_T_4946_47,_T_4946_46,_T_4946_45,_T_4946_44,_T_4946_43,_T_4946_42,_T_4946_41,_T_4946_40,_T_5180}; // @[NV_NVDLA_CSC_dl_for_check.scala 1203:127:@3320.4]
  assign _T_5195 = {_T_4946_55,_T_4946_54,_T_4946_53,_T_4946_52,_T_4946_51,_T_4946_50,_T_4946_49,_T_4946_48}; // @[NV_NVDLA_CSC_dl_for_check.scala 1203:127:@3327.4]
  assign _T_5204 = {_T_4946_63,_T_4946_62,_T_4946_61,_T_4946_60,_T_4946_59,_T_4946_58,_T_4946_57,_T_4946_56,_T_5195,_T_5188}; // @[NV_NVDLA_CSC_dl_for_check.scala 1203:127:@3336.4]
  assign sc2cdma_dat_updt = _T_774; // @[NV_NVDLA_CSC_dl_for_check.scala 332:21:@326.4]
  assign sc2cdma_dat_entries = _T_780; // @[NV_NVDLA_CSC_dl_for_check.scala 334:24:@336.4]
  assign sc2cdma_dat_slices = _T_777; // @[NV_NVDLA_CSC_dl_for_check.scala 333:23:@331.4]
  assign sc2buf_dat_rd_en = sc2buf_dat_rd_en_out; // @[NV_NVDLA_CSC_dl_for_check.scala 749:29:@933.4]
  assign sc2buf_dat_rd_addr = sc2buf_dat_rd_addr_out[12:0]; // @[NV_NVDLA_CSC_dl_for_check.scala 750:28:@934.4]
  assign sc2mac_dat_a_pvld = _T_4140; // @[NV_NVDLA_CSC_dl_for_check.scala 1198:23:@2929.4]
  assign sc2mac_dat_a_bits_mask = {_T_4677,_T_4646}; // @[NV_NVDLA_CSC_dl_for_check.scala 1202:27:@3141.4]
  assign sc2mac_dat_a_bits_data0 = _T_5207; // @[NV_NVDLA_CSC_dl_for_check.scala 1205:34:@3343.4]
  assign sc2mac_dat_a_bits_data1 = _T_5211; // @[NV_NVDLA_CSC_dl_for_check.scala 1205:34:@3353.4]
  assign sc2mac_dat_a_bits_data2 = _T_5215; // @[NV_NVDLA_CSC_dl_for_check.scala 1205:34:@3363.4]
  assign sc2mac_dat_a_bits_data3 = _T_5219; // @[NV_NVDLA_CSC_dl_for_check.scala 1205:34:@3373.4]
  assign sc2mac_dat_a_bits_data4 = _T_5223; // @[NV_NVDLA_CSC_dl_for_check.scala 1205:34:@3383.4]
  assign sc2mac_dat_a_bits_data5 = _T_5227; // @[NV_NVDLA_CSC_dl_for_check.scala 1205:34:@3393.4]
  assign sc2mac_dat_a_bits_data6 = _T_5231; // @[NV_NVDLA_CSC_dl_for_check.scala 1205:34:@3403.4]
  assign sc2mac_dat_a_bits_data7 = _T_5235; // @[NV_NVDLA_CSC_dl_for_check.scala 1205:34:@3413.4]
  assign sc2mac_dat_a_bits_data8 = _T_5239; // @[NV_NVDLA_CSC_dl_for_check.scala 1205:34:@3423.4]
  assign sc2mac_dat_a_bits_data9 = _T_5243; // @[NV_NVDLA_CSC_dl_for_check.scala 1205:34:@3433.4]
  assign sc2mac_dat_a_bits_data10 = _T_5247; // @[NV_NVDLA_CSC_dl_for_check.scala 1205:34:@3443.4]
  assign sc2mac_dat_a_bits_data11 = _T_5251; // @[NV_NVDLA_CSC_dl_for_check.scala 1205:34:@3453.4]
  assign sc2mac_dat_a_bits_data12 = _T_5255; // @[NV_NVDLA_CSC_dl_for_check.scala 1205:34:@3463.4]
  assign sc2mac_dat_a_bits_data13 = _T_5259; // @[NV_NVDLA_CSC_dl_for_check.scala 1205:34:@3473.4]
  assign sc2mac_dat_a_bits_data14 = _T_5263; // @[NV_NVDLA_CSC_dl_for_check.scala 1205:34:@3483.4]
  assign sc2mac_dat_a_bits_data15 = _T_5267; // @[NV_NVDLA_CSC_dl_for_check.scala 1205:34:@3493.4]
  assign sc2mac_dat_a_bits_data16 = _T_5271; // @[NV_NVDLA_CSC_dl_for_check.scala 1205:34:@3503.4]
  assign sc2mac_dat_a_bits_data17 = _T_5275; // @[NV_NVDLA_CSC_dl_for_check.scala 1205:34:@3513.4]
  assign sc2mac_dat_a_bits_data18 = _T_5279; // @[NV_NVDLA_CSC_dl_for_check.scala 1205:34:@3523.4]
  assign sc2mac_dat_a_bits_data19 = _T_5283; // @[NV_NVDLA_CSC_dl_for_check.scala 1205:34:@3533.4]
  assign sc2mac_dat_a_bits_data20 = _T_5287; // @[NV_NVDLA_CSC_dl_for_check.scala 1205:34:@3543.4]
  assign sc2mac_dat_a_bits_data21 = _T_5291; // @[NV_NVDLA_CSC_dl_for_check.scala 1205:34:@3553.4]
  assign sc2mac_dat_a_bits_data22 = _T_5295; // @[NV_NVDLA_CSC_dl_for_check.scala 1205:34:@3563.4]
  assign sc2mac_dat_a_bits_data23 = _T_5299; // @[NV_NVDLA_CSC_dl_for_check.scala 1205:34:@3573.4]
  assign sc2mac_dat_a_bits_data24 = _T_5303; // @[NV_NVDLA_CSC_dl_for_check.scala 1205:34:@3583.4]
  assign sc2mac_dat_a_bits_data25 = _T_5307; // @[NV_NVDLA_CSC_dl_for_check.scala 1205:34:@3593.4]
  assign sc2mac_dat_a_bits_data26 = _T_5311; // @[NV_NVDLA_CSC_dl_for_check.scala 1205:34:@3603.4]
  assign sc2mac_dat_a_bits_data27 = _T_5315; // @[NV_NVDLA_CSC_dl_for_check.scala 1205:34:@3613.4]
  assign sc2mac_dat_a_bits_data28 = _T_5319; // @[NV_NVDLA_CSC_dl_for_check.scala 1205:34:@3623.4]
  assign sc2mac_dat_a_bits_data29 = _T_5323; // @[NV_NVDLA_CSC_dl_for_check.scala 1205:34:@3633.4]
  assign sc2mac_dat_a_bits_data30 = _T_5327; // @[NV_NVDLA_CSC_dl_for_check.scala 1205:34:@3643.4]
  assign sc2mac_dat_a_bits_data31 = _T_5331; // @[NV_NVDLA_CSC_dl_for_check.scala 1205:34:@3653.4]
  assign sc2mac_dat_a_bits_data32 = _T_5335; // @[NV_NVDLA_CSC_dl_for_check.scala 1205:34:@3663.4]
  assign sc2mac_dat_a_bits_data33 = _T_5339; // @[NV_NVDLA_CSC_dl_for_check.scala 1205:34:@3673.4]
  assign sc2mac_dat_a_bits_data34 = _T_5343; // @[NV_NVDLA_CSC_dl_for_check.scala 1205:34:@3683.4]
  assign sc2mac_dat_a_bits_data35 = _T_5347; // @[NV_NVDLA_CSC_dl_for_check.scala 1205:34:@3693.4]
  assign sc2mac_dat_a_bits_data36 = _T_5351; // @[NV_NVDLA_CSC_dl_for_check.scala 1205:34:@3703.4]
  assign sc2mac_dat_a_bits_data37 = _T_5355; // @[NV_NVDLA_CSC_dl_for_check.scala 1205:34:@3713.4]
  assign sc2mac_dat_a_bits_data38 = _T_5359; // @[NV_NVDLA_CSC_dl_for_check.scala 1205:34:@3723.4]
  assign sc2mac_dat_a_bits_data39 = _T_5363; // @[NV_NVDLA_CSC_dl_for_check.scala 1205:34:@3733.4]
  assign sc2mac_dat_a_bits_data40 = _T_5367; // @[NV_NVDLA_CSC_dl_for_check.scala 1205:34:@3743.4]
  assign sc2mac_dat_a_bits_data41 = _T_5371; // @[NV_NVDLA_CSC_dl_for_check.scala 1205:34:@3753.4]
  assign sc2mac_dat_a_bits_data42 = _T_5375; // @[NV_NVDLA_CSC_dl_for_check.scala 1205:34:@3763.4]
  assign sc2mac_dat_a_bits_data43 = _T_5379; // @[NV_NVDLA_CSC_dl_for_check.scala 1205:34:@3773.4]
  assign sc2mac_dat_a_bits_data44 = _T_5383; // @[NV_NVDLA_CSC_dl_for_check.scala 1205:34:@3783.4]
  assign sc2mac_dat_a_bits_data45 = _T_5387; // @[NV_NVDLA_CSC_dl_for_check.scala 1205:34:@3793.4]
  assign sc2mac_dat_a_bits_data46 = _T_5391; // @[NV_NVDLA_CSC_dl_for_check.scala 1205:34:@3803.4]
  assign sc2mac_dat_a_bits_data47 = _T_5395; // @[NV_NVDLA_CSC_dl_for_check.scala 1205:34:@3813.4]
  assign sc2mac_dat_a_bits_data48 = _T_5399; // @[NV_NVDLA_CSC_dl_for_check.scala 1205:34:@3823.4]
  assign sc2mac_dat_a_bits_data49 = _T_5403; // @[NV_NVDLA_CSC_dl_for_check.scala 1205:34:@3833.4]
  assign sc2mac_dat_a_bits_data50 = _T_5407; // @[NV_NVDLA_CSC_dl_for_check.scala 1205:34:@3843.4]
  assign sc2mac_dat_a_bits_data51 = _T_5411; // @[NV_NVDLA_CSC_dl_for_check.scala 1205:34:@3853.4]
  assign sc2mac_dat_a_bits_data52 = _T_5415; // @[NV_NVDLA_CSC_dl_for_check.scala 1205:34:@3863.4]
  assign sc2mac_dat_a_bits_data53 = _T_5419; // @[NV_NVDLA_CSC_dl_for_check.scala 1205:34:@3873.4]
  assign sc2mac_dat_a_bits_data54 = _T_5423; // @[NV_NVDLA_CSC_dl_for_check.scala 1205:34:@3883.4]
  assign sc2mac_dat_a_bits_data55 = _T_5427; // @[NV_NVDLA_CSC_dl_for_check.scala 1205:34:@3893.4]
  assign sc2mac_dat_a_bits_data56 = _T_5431; // @[NV_NVDLA_CSC_dl_for_check.scala 1205:34:@3903.4]
  assign sc2mac_dat_a_bits_data57 = _T_5435; // @[NV_NVDLA_CSC_dl_for_check.scala 1205:34:@3913.4]
  assign sc2mac_dat_a_bits_data58 = _T_5439; // @[NV_NVDLA_CSC_dl_for_check.scala 1205:34:@3923.4]
  assign sc2mac_dat_a_bits_data59 = _T_5443; // @[NV_NVDLA_CSC_dl_for_check.scala 1205:34:@3933.4]
  assign sc2mac_dat_a_bits_data60 = _T_5447; // @[NV_NVDLA_CSC_dl_for_check.scala 1205:34:@3943.4]
  assign sc2mac_dat_a_bits_data61 = _T_5451; // @[NV_NVDLA_CSC_dl_for_check.scala 1205:34:@3953.4]
  assign sc2mac_dat_a_bits_data62 = _T_5455; // @[NV_NVDLA_CSC_dl_for_check.scala 1205:34:@3963.4]
  assign sc2mac_dat_a_bits_data63 = _T_5459; // @[NV_NVDLA_CSC_dl_for_check.scala 1205:34:@3973.4]
  assign sc2mac_dat_a_pd = _T_4147; // @[NV_NVDLA_CSC_dl_for_check.scala 1200:25:@2938.4]
  assign sc2mac_dat_b_pvld = _T_4143; // @[NV_NVDLA_CSC_dl_for_check.scala 1199:23:@2932.4]
  assign sc2mac_dat_b_bits_mask = {_T_5204,_T_5173}; // @[NV_NVDLA_CSC_dl_for_check.scala 1203:27:@3338.4]
  assign sc2mac_dat_b_bits_data0 = _T_5209; // @[NV_NVDLA_CSC_dl_for_check.scala 1206:34:@3348.4]
  assign sc2mac_dat_b_bits_data1 = _T_5213; // @[NV_NVDLA_CSC_dl_for_check.scala 1206:34:@3358.4]
  assign sc2mac_dat_b_bits_data2 = _T_5217; // @[NV_NVDLA_CSC_dl_for_check.scala 1206:34:@3368.4]
  assign sc2mac_dat_b_bits_data3 = _T_5221; // @[NV_NVDLA_CSC_dl_for_check.scala 1206:34:@3378.4]
  assign sc2mac_dat_b_bits_data4 = _T_5225; // @[NV_NVDLA_CSC_dl_for_check.scala 1206:34:@3388.4]
  assign sc2mac_dat_b_bits_data5 = _T_5229; // @[NV_NVDLA_CSC_dl_for_check.scala 1206:34:@3398.4]
  assign sc2mac_dat_b_bits_data6 = _T_5233; // @[NV_NVDLA_CSC_dl_for_check.scala 1206:34:@3408.4]
  assign sc2mac_dat_b_bits_data7 = _T_5237; // @[NV_NVDLA_CSC_dl_for_check.scala 1206:34:@3418.4]
  assign sc2mac_dat_b_bits_data8 = _T_5241; // @[NV_NVDLA_CSC_dl_for_check.scala 1206:34:@3428.4]
  assign sc2mac_dat_b_bits_data9 = _T_5245; // @[NV_NVDLA_CSC_dl_for_check.scala 1206:34:@3438.4]
  assign sc2mac_dat_b_bits_data10 = _T_5249; // @[NV_NVDLA_CSC_dl_for_check.scala 1206:34:@3448.4]
  assign sc2mac_dat_b_bits_data11 = _T_5253; // @[NV_NVDLA_CSC_dl_for_check.scala 1206:34:@3458.4]
  assign sc2mac_dat_b_bits_data12 = _T_5257; // @[NV_NVDLA_CSC_dl_for_check.scala 1206:34:@3468.4]
  assign sc2mac_dat_b_bits_data13 = _T_5261; // @[NV_NVDLA_CSC_dl_for_check.scala 1206:34:@3478.4]
  assign sc2mac_dat_b_bits_data14 = _T_5265; // @[NV_NVDLA_CSC_dl_for_check.scala 1206:34:@3488.4]
  assign sc2mac_dat_b_bits_data15 = _T_5269; // @[NV_NVDLA_CSC_dl_for_check.scala 1206:34:@3498.4]
  assign sc2mac_dat_b_bits_data16 = _T_5273; // @[NV_NVDLA_CSC_dl_for_check.scala 1206:34:@3508.4]
  assign sc2mac_dat_b_bits_data17 = _T_5277; // @[NV_NVDLA_CSC_dl_for_check.scala 1206:34:@3518.4]
  assign sc2mac_dat_b_bits_data18 = _T_5281; // @[NV_NVDLA_CSC_dl_for_check.scala 1206:34:@3528.4]
  assign sc2mac_dat_b_bits_data19 = _T_5285; // @[NV_NVDLA_CSC_dl_for_check.scala 1206:34:@3538.4]
  assign sc2mac_dat_b_bits_data20 = _T_5289; // @[NV_NVDLA_CSC_dl_for_check.scala 1206:34:@3548.4]
  assign sc2mac_dat_b_bits_data21 = _T_5293; // @[NV_NVDLA_CSC_dl_for_check.scala 1206:34:@3558.4]
  assign sc2mac_dat_b_bits_data22 = _T_5297; // @[NV_NVDLA_CSC_dl_for_check.scala 1206:34:@3568.4]
  assign sc2mac_dat_b_bits_data23 = _T_5301; // @[NV_NVDLA_CSC_dl_for_check.scala 1206:34:@3578.4]
  assign sc2mac_dat_b_bits_data24 = _T_5305; // @[NV_NVDLA_CSC_dl_for_check.scala 1206:34:@3588.4]
  assign sc2mac_dat_b_bits_data25 = _T_5309; // @[NV_NVDLA_CSC_dl_for_check.scala 1206:34:@3598.4]
  assign sc2mac_dat_b_bits_data26 = _T_5313; // @[NV_NVDLA_CSC_dl_for_check.scala 1206:34:@3608.4]
  assign sc2mac_dat_b_bits_data27 = _T_5317; // @[NV_NVDLA_CSC_dl_for_check.scala 1206:34:@3618.4]
  assign sc2mac_dat_b_bits_data28 = _T_5321; // @[NV_NVDLA_CSC_dl_for_check.scala 1206:34:@3628.4]
  assign sc2mac_dat_b_bits_data29 = _T_5325; // @[NV_NVDLA_CSC_dl_for_check.scala 1206:34:@3638.4]
  assign sc2mac_dat_b_bits_data30 = _T_5329; // @[NV_NVDLA_CSC_dl_for_check.scala 1206:34:@3648.4]
  assign sc2mac_dat_b_bits_data31 = _T_5333; // @[NV_NVDLA_CSC_dl_for_check.scala 1206:34:@3658.4]
  assign sc2mac_dat_b_bits_data32 = _T_5337; // @[NV_NVDLA_CSC_dl_for_check.scala 1206:34:@3668.4]
  assign sc2mac_dat_b_bits_data33 = _T_5341; // @[NV_NVDLA_CSC_dl_for_check.scala 1206:34:@3678.4]
  assign sc2mac_dat_b_bits_data34 = _T_5345; // @[NV_NVDLA_CSC_dl_for_check.scala 1206:34:@3688.4]
  assign sc2mac_dat_b_bits_data35 = _T_5349; // @[NV_NVDLA_CSC_dl_for_check.scala 1206:34:@3698.4]
  assign sc2mac_dat_b_bits_data36 = _T_5353; // @[NV_NVDLA_CSC_dl_for_check.scala 1206:34:@3708.4]
  assign sc2mac_dat_b_bits_data37 = _T_5357; // @[NV_NVDLA_CSC_dl_for_check.scala 1206:34:@3718.4]
  assign sc2mac_dat_b_bits_data38 = _T_5361; // @[NV_NVDLA_CSC_dl_for_check.scala 1206:34:@3728.4]
  assign sc2mac_dat_b_bits_data39 = _T_5365; // @[NV_NVDLA_CSC_dl_for_check.scala 1206:34:@3738.4]
  assign sc2mac_dat_b_bits_data40 = _T_5369; // @[NV_NVDLA_CSC_dl_for_check.scala 1206:34:@3748.4]
  assign sc2mac_dat_b_bits_data41 = _T_5373; // @[NV_NVDLA_CSC_dl_for_check.scala 1206:34:@3758.4]
  assign sc2mac_dat_b_bits_data42 = _T_5377; // @[NV_NVDLA_CSC_dl_for_check.scala 1206:34:@3768.4]
  assign sc2mac_dat_b_bits_data43 = _T_5381; // @[NV_NVDLA_CSC_dl_for_check.scala 1206:34:@3778.4]
  assign sc2mac_dat_b_bits_data44 = _T_5385; // @[NV_NVDLA_CSC_dl_for_check.scala 1206:34:@3788.4]
  assign sc2mac_dat_b_bits_data45 = _T_5389; // @[NV_NVDLA_CSC_dl_for_check.scala 1206:34:@3798.4]
  assign sc2mac_dat_b_bits_data46 = _T_5393; // @[NV_NVDLA_CSC_dl_for_check.scala 1206:34:@3808.4]
  assign sc2mac_dat_b_bits_data47 = _T_5397; // @[NV_NVDLA_CSC_dl_for_check.scala 1206:34:@3818.4]
  assign sc2mac_dat_b_bits_data48 = _T_5401; // @[NV_NVDLA_CSC_dl_for_check.scala 1206:34:@3828.4]
  assign sc2mac_dat_b_bits_data49 = _T_5405; // @[NV_NVDLA_CSC_dl_for_check.scala 1206:34:@3838.4]
  assign sc2mac_dat_b_bits_data50 = _T_5409; // @[NV_NVDLA_CSC_dl_for_check.scala 1206:34:@3848.4]
  assign sc2mac_dat_b_bits_data51 = _T_5413; // @[NV_NVDLA_CSC_dl_for_check.scala 1206:34:@3858.4]
  assign sc2mac_dat_b_bits_data52 = _T_5417; // @[NV_NVDLA_CSC_dl_for_check.scala 1206:34:@3868.4]
  assign sc2mac_dat_b_bits_data53 = _T_5421; // @[NV_NVDLA_CSC_dl_for_check.scala 1206:34:@3878.4]
  assign sc2mac_dat_b_bits_data54 = _T_5425; // @[NV_NVDLA_CSC_dl_for_check.scala 1206:34:@3888.4]
  assign sc2mac_dat_b_bits_data55 = _T_5429; // @[NV_NVDLA_CSC_dl_for_check.scala 1206:34:@3898.4]
  assign sc2mac_dat_b_bits_data56 = _T_5433; // @[NV_NVDLA_CSC_dl_for_check.scala 1206:34:@3908.4]
  assign sc2mac_dat_b_bits_data57 = _T_5437; // @[NV_NVDLA_CSC_dl_for_check.scala 1206:34:@3918.4]
  assign sc2mac_dat_b_bits_data58 = _T_5441; // @[NV_NVDLA_CSC_dl_for_check.scala 1206:34:@3928.4]
  assign sc2mac_dat_b_bits_data59 = _T_5445; // @[NV_NVDLA_CSC_dl_for_check.scala 1206:34:@3938.4]
  assign sc2mac_dat_b_bits_data60 = _T_5449; // @[NV_NVDLA_CSC_dl_for_check.scala 1206:34:@3948.4]
  assign sc2mac_dat_b_bits_data61 = _T_5453; // @[NV_NVDLA_CSC_dl_for_check.scala 1206:34:@3958.4]
  assign sc2mac_dat_b_bits_data62 = _T_5457; // @[NV_NVDLA_CSC_dl_for_check.scala 1206:34:@3968.4]
  assign sc2mac_dat_b_bits_data63 = _T_5461; // @[NV_NVDLA_CSC_dl_for_check.scala 1206:34:@3978.4]
  assign sc2mac_dat_b_pd = _T_4151; // @[NV_NVDLA_CSC_dl_for_check.scala 1201:25:@2944.4]
  assign slcg_wg_en = 1'h0; // @[NV_NVDLA_CSC_dl_for_check.scala 273:15:@243.4]
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
  layer_st_d1 = _RAND_0[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_1 = {1{`RANDOM}};
  data_batch = _RAND_1[5:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_2 = {1{`RANDOM}};
  rls_slices = _RAND_2[13:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_3 = {1{`RANDOM}};
  h_offset_slice = _RAND_3[13:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_4 = {1{`RANDOM}};
  entries = _RAND_4[14:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_5 = {1{`RANDOM}};
  entries_batch = _RAND_5[14:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_6 = {1{`RANDOM}};
  dataout_width_cmp = _RAND_6[12:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_7 = {1{`RANDOM}};
  rls_entries = _RAND_7[14:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_8 = {1{`RANDOM}};
  h_bias_0_stride = _RAND_8[11:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_9 = {1{`RANDOM}};
  h_bias_1_stride = _RAND_9[11:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_10 = {1{`RANDOM}};
  slice_left = _RAND_10[13:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_11 = {2{`RANDOM}};
  is_img_d1 = _RAND_11[33:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_12 = {1{`RANDOM}};
  data_bank = _RAND_12[4:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_13 = {1{`RANDOM}};
  datain_width = _RAND_13[13:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_14 = {1{`RANDOM}};
  datain_width_cmp = _RAND_14[12:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_15 = {1{`RANDOM}};
  datain_height_cmp = _RAND_15[12:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_16 = {1{`RANDOM}};
  datain_channel_cmp = _RAND_16[10:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_17 = {1{`RANDOM}};
  sub_h_total_g0 = _RAND_17[2:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_18 = {1{`RANDOM}};
  sub_h_total_g1 = _RAND_18[2:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_19 = {1{`RANDOM}};
  sub_h_total_g3 = _RAND_19[2:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_20 = {1{`RANDOM}};
  sub_h_total_g4 = _RAND_20[2:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_21 = {1{`RANDOM}};
  sub_h_total_g5 = _RAND_21[2:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_22 = {1{`RANDOM}};
  sub_h_total_g6 = _RAND_22[2:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_23 = {1{`RANDOM}};
  sub_h_total_g8 = _RAND_23[2:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_24 = {1{`RANDOM}};
  sub_h_total_g9 = _RAND_24[2:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_25 = {1{`RANDOM}};
  sub_h_total_g11 = _RAND_25[2:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_26 = {1{`RANDOM}};
  sub_h_cmp_g0 = _RAND_26[2:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_27 = {1{`RANDOM}};
  sub_h_cmp_g1 = _RAND_27[2:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_28 = {1{`RANDOM}};
  conv_x_stride = _RAND_28[3:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_29 = {1{`RANDOM}};
  conv_y_stride = _RAND_29[3:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_30 = {1{`RANDOM}};
  batch_cmp = _RAND_30[4:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_31 = {1{`RANDOM}};
  pixel_x_init = _RAND_31[6:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_32 = {1{`RANDOM}};
  pixel_x_init_offset = _RAND_32[6:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_33 = {1{`RANDOM}};
  pixel_x_add = _RAND_33[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_34 = {1{`RANDOM}};
  pixel_x_byte_stride = _RAND_34[6:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_35 = {1{`RANDOM}};
  pixel_ch_stride = _RAND_35[11:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_36 = {1{`RANDOM}};
  x_dilate = _RAND_36[5:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_37 = {1{`RANDOM}};
  y_dilate = _RAND_37[5:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_38 = {1{`RANDOM}};
  pad_value = _RAND_38[15:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_39 = {1{`RANDOM}};
  entries_cmp = _RAND_39[14:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_40 = {1{`RANDOM}};
  h_bias_2_stride = _RAND_40[14:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_41 = {1{`RANDOM}};
  h_bias_3_stride = _RAND_41[14:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_42 = {1{`RANDOM}};
  last_slices = _RAND_42[13:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_43 = {1{`RANDOM}};
  last_entries = _RAND_43[14:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_44 = {1{`RANDOM}};
  dat_entry_st = _RAND_44[14:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_45 = {1{`RANDOM}};
  dat_rsp_l3_pvld = _RAND_45[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_46 = {1{`RANDOM}};
  dat_rsp_l1_pvld = _RAND_46[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_47 = {1{`RANDOM}};
  dat_rsp_l0_pvld = _RAND_47[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_48 = {1{`RANDOM}};
  _T_1632 = _RAND_48[26:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_49 = {1{`RANDOM}};
  _T_1626 = _RAND_49[26:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_50 = {1{`RANDOM}};
  _T_1623 = _RAND_50[26:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_51 = {1{`RANDOM}};
  _T_774 = _RAND_51[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_52 = {1{`RANDOM}};
  _T_777 = _RAND_52[13:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_53 = {1{`RANDOM}};
  _T_780 = _RAND_53[14:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_54 = {1{`RANDOM}};
  _T_785 = _RAND_54[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_55 = {1{`RANDOM}};
  _T_788 = _RAND_55[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_56 = {1{`RANDOM}};
  _T_791 = _RAND_56[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_57 = {1{`RANDOM}};
  _T_794 = _RAND_57[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_58 = {1{`RANDOM}};
  dl_in_pvld = _RAND_58[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_59 = {1{`RANDOM}};
  _T_818 = _RAND_59[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_60 = {1{`RANDOM}};
  _T_821 = _RAND_60[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_61 = {1{`RANDOM}};
  _T_824 = _RAND_61[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_62 = {1{`RANDOM}};
  _T_827 = _RAND_62[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_63 = {1{`RANDOM}};
  _T_832 = _RAND_63[30:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_64 = {1{`RANDOM}};
  _T_835 = _RAND_64[30:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_65 = {1{`RANDOM}};
  _T_838 = _RAND_65[30:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_66 = {1{`RANDOM}};
  _T_841 = _RAND_66[30:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_67 = {1{`RANDOM}};
  batch_cnt = _RAND_67[4:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_68 = {1{`RANDOM}};
  sub_h_cnt = _RAND_68[1:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_69 = {1{`RANDOM}};
  stripe_cnt = _RAND_69[6:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_70 = {1{`RANDOM}};
  dat_exec_valid_d1 = _RAND_70[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_71 = {1{`RANDOM}};
  dat_pipe_local_valid = _RAND_71[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_72 = {1{`RANDOM}};
  dat_pipe_valid_d1 = _RAND_72[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_73 = {1{`RANDOM}};
  dat_req_bytes_d1 = _RAND_73[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_74 = {1{`RANDOM}};
  dataout_w_cnt = _RAND_74[12:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_75 = {1{`RANDOM}};
  dataout_w_ori = _RAND_75[12:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_76 = {1{`RANDOM}};
  datain_c_cnt = _RAND_76[10:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_77 = {1{`RANDOM}};
  datain_w_cnt = _RAND_77[13:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_78 = {1{`RANDOM}};
  datain_w_ori = _RAND_78[13:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_79 = {1{`RANDOM}};
  pixel_w_cnt = _RAND_79[15:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_80 = {1{`RANDOM}};
  pixel_w_ori = _RAND_80[15:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_81 = {1{`RANDOM}};
  pixel_w_ch_ori = _RAND_81[15:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_82 = {1{`RANDOM}};
  channel_op_cnt = _RAND_82[12:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_83 = {1{`RANDOM}};
  pixel_force_clr_d1 = _RAND_83[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_84 = {1{`RANDOM}};
  pixel_force_fetch_d1 = _RAND_84[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_85 = {1{`RANDOM}};
  datain_h_cnt = _RAND_85[13:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_86 = {1{`RANDOM}};
  datain_h_ori = _RAND_86[13:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_87 = {1{`RANDOM}};
  dat_req_valid_d1 = _RAND_87[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_88 = {1{`RANDOM}};
  dat_req_sub_w_d1 = _RAND_88[1:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_89 = {1{`RANDOM}};
  dat_req_sub_h_d1 = _RAND_89[1:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_90 = {1{`RANDOM}};
  dat_req_sub_c_d1 = _RAND_90[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_91 = {1{`RANDOM}};
  dat_req_ch_end_d1 = _RAND_91[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_92 = {1{`RANDOM}};
  dat_req_dummy_d1 = _RAND_92[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_93 = {1{`RANDOM}};
  dat_req_cur_sub_h_d1 = _RAND_93[1:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_94 = {1{`RANDOM}};
  dat_req_sub_w_st_d1 = _RAND_94[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_95 = {1{`RANDOM}};
  dat_req_flag_d1 = _RAND_95[8:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_96 = {1{`RANDOM}};
  dat_req_rls_d1 = _RAND_96[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_97 = {1{`RANDOM}};
  c_bias = _RAND_97[12:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_98 = {1{`RANDOM}};
  c_bias_d1 = _RAND_98[12:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_99 = {1{`RANDOM}};
  h_bias_0_d1 = _RAND_99[12:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_100 = {1{`RANDOM}};
  h_bias_1_d1 = _RAND_100[12:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_101 = {1{`RANDOM}};
  h_bias_2_d1 = _RAND_101[12:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_102 = {1{`RANDOM}};
  h_bias_3_d1 = _RAND_102[12:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_103 = {1{`RANDOM}};
  w_bias_d1 = _RAND_103[12:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_104 = {1{`RANDOM}};
  dat_req_sub_h_addr_0 = _RAND_104[12:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_105 = {1{`RANDOM}};
  dat_req_sub_h_addr_1 = _RAND_105[12:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_106 = {1{`RANDOM}};
  dat_req_sub_h_addr_2 = _RAND_106[12:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_107 = {1{`RANDOM}};
  dat_req_sub_h_addr_3 = _RAND_107[12:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_108 = {1{`RANDOM}};
  sc2buf_dat_rd_en_out = _RAND_108[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_109 = {1{`RANDOM}};
  sc2buf_dat_rd_addr_out = _RAND_109[14:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_110 = {1{`RANDOM}};
  dat_req_pipe_pvld = _RAND_110[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_111 = {1{`RANDOM}};
  dat_req_pipe_sub_w = _RAND_111[1:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_112 = {1{`RANDOM}};
  dat_req_pipe_sub_h = _RAND_112[1:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_113 = {1{`RANDOM}};
  dat_req_pipe_sub_c = _RAND_113[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_114 = {1{`RANDOM}};
  dat_req_pipe_ch_end = _RAND_114[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_115 = {1{`RANDOM}};
  dat_req_pipe_bytes = _RAND_115[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_116 = {1{`RANDOM}};
  dat_req_pipe_dummy = _RAND_116[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_117 = {1{`RANDOM}};
  dat_req_pipe_cur_sub_h = _RAND_117[1:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_118 = {1{`RANDOM}};
  dat_req_pipe_sub_w_st = _RAND_118[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_119 = {1{`RANDOM}};
  dat_req_pipe_rls = _RAND_119[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_120 = {1{`RANDOM}};
  dat_req_pipe_flag = _RAND_120[8:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_121 = {1{`RANDOM}};
  _T_1404 = _RAND_121[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_122 = {1{`RANDOM}};
  _T_1407 = _RAND_122[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_123 = {1{`RANDOM}};
  _T_1410 = _RAND_123[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_124 = {1{`RANDOM}};
  _T_1413 = _RAND_124[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_125 = {1{`RANDOM}};
  _T_1416 = _RAND_125[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_126 = {1{`RANDOM}};
  dat_rsp_pipe_pvld = _RAND_126[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_127 = {1{`RANDOM}};
  _T_1423 = _RAND_127[28:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_128 = {1{`RANDOM}};
  _T_1426 = _RAND_128[28:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_129 = {1{`RANDOM}};
  _T_1429 = _RAND_129[28:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_130 = {1{`RANDOM}};
  _T_1432 = _RAND_130[28:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_131 = {1{`RANDOM}};
  _T_1435 = _RAND_131[28:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_132 = {1{`RANDOM}};
  dat_rsp_pipe_pd = _RAND_132[28:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_133 = {1{`RANDOM}};
  dat_l0c0_dummy = _RAND_133[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_134 = {1{`RANDOM}};
  dat_l0c1_dummy = _RAND_134[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_135 = {16{`RANDOM}};
  dat_l0c0 = _RAND_135[511:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_136 = {16{`RANDOM}};
  dat_l0c1 = _RAND_136[511:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_137 = {1{`RANDOM}};
  rsp_sft_cnt_l0 = _RAND_137[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_138 = {1{`RANDOM}};
  rsp_sft_cnt_l1 = _RAND_138[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_139 = {1{`RANDOM}};
  rsp_sft_cnt_l2 = _RAND_139[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_140 = {1{`RANDOM}};
  rsp_sft_cnt_l3 = _RAND_140[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_141 = {1{`RANDOM}};
  rsp_sft_cnt_l0_ori = _RAND_141[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_142 = {1{`RANDOM}};
  rsp_sft_cnt_l1_ori = _RAND_142[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_143 = {1{`RANDOM}};
  rsp_sft_cnt_l2_ori = _RAND_143[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_144 = {1{`RANDOM}};
  rsp_sft_cnt_l3_ori = _RAND_144[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_145 = {1{`RANDOM}};
  dat_rsp_l2_pvld = _RAND_145[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_146 = {1{`RANDOM}};
  _T_1629 = _RAND_146[26:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_147 = {8{`RANDOM}};
  dat_rsp_l0_sft_d1 = _RAND_147[255:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_148 = {4{`RANDOM}};
  dat_rsp_l0_sft_d2 = _RAND_148[127:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_149 = {4{`RANDOM}};
  dat_rsp_l0_sft_d3 = _RAND_149[127:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_150 = {4{`RANDOM}};
  dat_rsp_l1_sft_d2 = _RAND_150[127:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_151 = {4{`RANDOM}};
  dat_rsp_l1_sft_d3 = _RAND_151[127:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_152 = {4{`RANDOM}};
  dat_rsp_l2_sft_d3 = _RAND_152[127:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_153 = {1{`RANDOM}};
  dat_out_pvld = _RAND_153[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_154 = {1{`RANDOM}};
  dat_out_bypass_mask_0 = _RAND_154[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_155 = {1{`RANDOM}};
  dat_out_bypass_mask_1 = _RAND_155[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_156 = {1{`RANDOM}};
  dat_out_bypass_mask_2 = _RAND_156[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_157 = {1{`RANDOM}};
  dat_out_bypass_mask_3 = _RAND_157[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_158 = {1{`RANDOM}};
  dat_out_bypass_mask_4 = _RAND_158[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_159 = {1{`RANDOM}};
  dat_out_bypass_mask_5 = _RAND_159[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_160 = {1{`RANDOM}};
  dat_out_bypass_mask_6 = _RAND_160[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_161 = {1{`RANDOM}};
  dat_out_bypass_mask_7 = _RAND_161[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_162 = {1{`RANDOM}};
  dat_out_bypass_mask_8 = _RAND_162[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_163 = {1{`RANDOM}};
  dat_out_bypass_mask_9 = _RAND_163[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_164 = {1{`RANDOM}};
  dat_out_bypass_mask_10 = _RAND_164[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_165 = {1{`RANDOM}};
  dat_out_bypass_mask_11 = _RAND_165[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_166 = {1{`RANDOM}};
  dat_out_bypass_mask_12 = _RAND_166[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_167 = {1{`RANDOM}};
  dat_out_bypass_mask_13 = _RAND_167[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_168 = {1{`RANDOM}};
  dat_out_bypass_mask_14 = _RAND_168[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_169 = {1{`RANDOM}};
  dat_out_bypass_mask_15 = _RAND_169[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_170 = {1{`RANDOM}};
  dat_out_bypass_mask_16 = _RAND_170[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_171 = {1{`RANDOM}};
  dat_out_bypass_mask_17 = _RAND_171[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_172 = {1{`RANDOM}};
  dat_out_bypass_mask_18 = _RAND_172[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_173 = {1{`RANDOM}};
  dat_out_bypass_mask_19 = _RAND_173[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_174 = {1{`RANDOM}};
  dat_out_bypass_mask_20 = _RAND_174[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_175 = {1{`RANDOM}};
  dat_out_bypass_mask_21 = _RAND_175[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_176 = {1{`RANDOM}};
  dat_out_bypass_mask_22 = _RAND_176[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_177 = {1{`RANDOM}};
  dat_out_bypass_mask_23 = _RAND_177[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_178 = {1{`RANDOM}};
  dat_out_bypass_mask_24 = _RAND_178[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_179 = {1{`RANDOM}};
  dat_out_bypass_mask_25 = _RAND_179[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_180 = {1{`RANDOM}};
  dat_out_bypass_mask_26 = _RAND_180[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_181 = {1{`RANDOM}};
  dat_out_bypass_mask_27 = _RAND_181[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_182 = {1{`RANDOM}};
  dat_out_bypass_mask_28 = _RAND_182[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_183 = {1{`RANDOM}};
  dat_out_bypass_mask_29 = _RAND_183[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_184 = {1{`RANDOM}};
  dat_out_bypass_mask_30 = _RAND_184[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_185 = {1{`RANDOM}};
  dat_out_bypass_mask_31 = _RAND_185[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_186 = {1{`RANDOM}};
  dat_out_bypass_mask_32 = _RAND_186[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_187 = {1{`RANDOM}};
  dat_out_bypass_mask_33 = _RAND_187[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_188 = {1{`RANDOM}};
  dat_out_bypass_mask_34 = _RAND_188[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_189 = {1{`RANDOM}};
  dat_out_bypass_mask_35 = _RAND_189[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_190 = {1{`RANDOM}};
  dat_out_bypass_mask_36 = _RAND_190[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_191 = {1{`RANDOM}};
  dat_out_bypass_mask_37 = _RAND_191[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_192 = {1{`RANDOM}};
  dat_out_bypass_mask_38 = _RAND_192[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_193 = {1{`RANDOM}};
  dat_out_bypass_mask_39 = _RAND_193[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_194 = {1{`RANDOM}};
  dat_out_bypass_mask_40 = _RAND_194[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_195 = {1{`RANDOM}};
  dat_out_bypass_mask_41 = _RAND_195[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_196 = {1{`RANDOM}};
  dat_out_bypass_mask_42 = _RAND_196[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_197 = {1{`RANDOM}};
  dat_out_bypass_mask_43 = _RAND_197[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_198 = {1{`RANDOM}};
  dat_out_bypass_mask_44 = _RAND_198[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_199 = {1{`RANDOM}};
  dat_out_bypass_mask_45 = _RAND_199[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_200 = {1{`RANDOM}};
  dat_out_bypass_mask_46 = _RAND_200[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_201 = {1{`RANDOM}};
  dat_out_bypass_mask_47 = _RAND_201[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_202 = {1{`RANDOM}};
  dat_out_bypass_mask_48 = _RAND_202[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_203 = {1{`RANDOM}};
  dat_out_bypass_mask_49 = _RAND_203[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_204 = {1{`RANDOM}};
  dat_out_bypass_mask_50 = _RAND_204[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_205 = {1{`RANDOM}};
  dat_out_bypass_mask_51 = _RAND_205[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_206 = {1{`RANDOM}};
  dat_out_bypass_mask_52 = _RAND_206[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_207 = {1{`RANDOM}};
  dat_out_bypass_mask_53 = _RAND_207[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_208 = {1{`RANDOM}};
  dat_out_bypass_mask_54 = _RAND_208[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_209 = {1{`RANDOM}};
  dat_out_bypass_mask_55 = _RAND_209[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_210 = {1{`RANDOM}};
  dat_out_bypass_mask_56 = _RAND_210[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_211 = {1{`RANDOM}};
  dat_out_bypass_mask_57 = _RAND_211[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_212 = {1{`RANDOM}};
  dat_out_bypass_mask_58 = _RAND_212[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_213 = {1{`RANDOM}};
  dat_out_bypass_mask_59 = _RAND_213[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_214 = {1{`RANDOM}};
  dat_out_bypass_mask_60 = _RAND_214[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_215 = {1{`RANDOM}};
  dat_out_bypass_mask_61 = _RAND_215[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_216 = {1{`RANDOM}};
  dat_out_bypass_mask_62 = _RAND_216[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_217 = {1{`RANDOM}};
  dat_out_bypass_mask_63 = _RAND_217[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_218 = {1{`RANDOM}};
  dat_out_bypass_data_0 = _RAND_218[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_219 = {1{`RANDOM}};
  dat_out_bypass_data_1 = _RAND_219[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_220 = {1{`RANDOM}};
  dat_out_bypass_data_2 = _RAND_220[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_221 = {1{`RANDOM}};
  dat_out_bypass_data_3 = _RAND_221[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_222 = {1{`RANDOM}};
  dat_out_bypass_data_4 = _RAND_222[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_223 = {1{`RANDOM}};
  dat_out_bypass_data_5 = _RAND_223[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_224 = {1{`RANDOM}};
  dat_out_bypass_data_6 = _RAND_224[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_225 = {1{`RANDOM}};
  dat_out_bypass_data_7 = _RAND_225[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_226 = {1{`RANDOM}};
  dat_out_bypass_data_8 = _RAND_226[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_227 = {1{`RANDOM}};
  dat_out_bypass_data_9 = _RAND_227[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_228 = {1{`RANDOM}};
  dat_out_bypass_data_10 = _RAND_228[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_229 = {1{`RANDOM}};
  dat_out_bypass_data_11 = _RAND_229[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_230 = {1{`RANDOM}};
  dat_out_bypass_data_12 = _RAND_230[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_231 = {1{`RANDOM}};
  dat_out_bypass_data_13 = _RAND_231[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_232 = {1{`RANDOM}};
  dat_out_bypass_data_14 = _RAND_232[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_233 = {1{`RANDOM}};
  dat_out_bypass_data_15 = _RAND_233[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_234 = {1{`RANDOM}};
  dat_out_bypass_data_16 = _RAND_234[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_235 = {1{`RANDOM}};
  dat_out_bypass_data_17 = _RAND_235[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_236 = {1{`RANDOM}};
  dat_out_bypass_data_18 = _RAND_236[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_237 = {1{`RANDOM}};
  dat_out_bypass_data_19 = _RAND_237[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_238 = {1{`RANDOM}};
  dat_out_bypass_data_20 = _RAND_238[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_239 = {1{`RANDOM}};
  dat_out_bypass_data_21 = _RAND_239[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_240 = {1{`RANDOM}};
  dat_out_bypass_data_22 = _RAND_240[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_241 = {1{`RANDOM}};
  dat_out_bypass_data_23 = _RAND_241[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_242 = {1{`RANDOM}};
  dat_out_bypass_data_24 = _RAND_242[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_243 = {1{`RANDOM}};
  dat_out_bypass_data_25 = _RAND_243[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_244 = {1{`RANDOM}};
  dat_out_bypass_data_26 = _RAND_244[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_245 = {1{`RANDOM}};
  dat_out_bypass_data_27 = _RAND_245[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_246 = {1{`RANDOM}};
  dat_out_bypass_data_28 = _RAND_246[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_247 = {1{`RANDOM}};
  dat_out_bypass_data_29 = _RAND_247[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_248 = {1{`RANDOM}};
  dat_out_bypass_data_30 = _RAND_248[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_249 = {1{`RANDOM}};
  dat_out_bypass_data_31 = _RAND_249[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_250 = {1{`RANDOM}};
  dat_out_bypass_data_32 = _RAND_250[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_251 = {1{`RANDOM}};
  dat_out_bypass_data_33 = _RAND_251[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_252 = {1{`RANDOM}};
  dat_out_bypass_data_34 = _RAND_252[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_253 = {1{`RANDOM}};
  dat_out_bypass_data_35 = _RAND_253[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_254 = {1{`RANDOM}};
  dat_out_bypass_data_36 = _RAND_254[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_255 = {1{`RANDOM}};
  dat_out_bypass_data_37 = _RAND_255[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_256 = {1{`RANDOM}};
  dat_out_bypass_data_38 = _RAND_256[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_257 = {1{`RANDOM}};
  dat_out_bypass_data_39 = _RAND_257[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_258 = {1{`RANDOM}};
  dat_out_bypass_data_40 = _RAND_258[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_259 = {1{`RANDOM}};
  dat_out_bypass_data_41 = _RAND_259[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_260 = {1{`RANDOM}};
  dat_out_bypass_data_42 = _RAND_260[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_261 = {1{`RANDOM}};
  dat_out_bypass_data_43 = _RAND_261[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_262 = {1{`RANDOM}};
  dat_out_bypass_data_44 = _RAND_262[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_263 = {1{`RANDOM}};
  dat_out_bypass_data_45 = _RAND_263[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_264 = {1{`RANDOM}};
  dat_out_bypass_data_46 = _RAND_264[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_265 = {1{`RANDOM}};
  dat_out_bypass_data_47 = _RAND_265[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_266 = {1{`RANDOM}};
  dat_out_bypass_data_48 = _RAND_266[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_267 = {1{`RANDOM}};
  dat_out_bypass_data_49 = _RAND_267[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_268 = {1{`RANDOM}};
  dat_out_bypass_data_50 = _RAND_268[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_269 = {1{`RANDOM}};
  dat_out_bypass_data_51 = _RAND_269[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_270 = {1{`RANDOM}};
  dat_out_bypass_data_52 = _RAND_270[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_271 = {1{`RANDOM}};
  dat_out_bypass_data_53 = _RAND_271[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_272 = {1{`RANDOM}};
  dat_out_bypass_data_54 = _RAND_272[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_273 = {1{`RANDOM}};
  dat_out_bypass_data_55 = _RAND_273[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_274 = {1{`RANDOM}};
  dat_out_bypass_data_56 = _RAND_274[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_275 = {1{`RANDOM}};
  dat_out_bypass_data_57 = _RAND_275[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_276 = {1{`RANDOM}};
  dat_out_bypass_data_58 = _RAND_276[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_277 = {1{`RANDOM}};
  dat_out_bypass_data_59 = _RAND_277[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_278 = {1{`RANDOM}};
  dat_out_bypass_data_60 = _RAND_278[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_279 = {1{`RANDOM}};
  dat_out_bypass_data_61 = _RAND_279[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_280 = {1{`RANDOM}};
  dat_out_bypass_data_62 = _RAND_280[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_281 = {1{`RANDOM}};
  dat_out_bypass_data_63 = _RAND_281[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_282 = {1{`RANDOM}};
  dl_out_pvld = _RAND_282[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_283 = {1{`RANDOM}};
  dl_out_mask_0 = _RAND_283[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_284 = {1{`RANDOM}};
  dl_out_mask_1 = _RAND_284[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_285 = {1{`RANDOM}};
  dl_out_mask_2 = _RAND_285[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_286 = {1{`RANDOM}};
  dl_out_mask_3 = _RAND_286[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_287 = {1{`RANDOM}};
  dl_out_mask_4 = _RAND_287[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_288 = {1{`RANDOM}};
  dl_out_mask_5 = _RAND_288[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_289 = {1{`RANDOM}};
  dl_out_mask_6 = _RAND_289[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_290 = {1{`RANDOM}};
  dl_out_mask_7 = _RAND_290[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_291 = {1{`RANDOM}};
  dl_out_mask_8 = _RAND_291[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_292 = {1{`RANDOM}};
  dl_out_mask_9 = _RAND_292[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_293 = {1{`RANDOM}};
  dl_out_mask_10 = _RAND_293[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_294 = {1{`RANDOM}};
  dl_out_mask_11 = _RAND_294[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_295 = {1{`RANDOM}};
  dl_out_mask_12 = _RAND_295[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_296 = {1{`RANDOM}};
  dl_out_mask_13 = _RAND_296[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_297 = {1{`RANDOM}};
  dl_out_mask_14 = _RAND_297[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_298 = {1{`RANDOM}};
  dl_out_mask_15 = _RAND_298[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_299 = {1{`RANDOM}};
  dl_out_mask_16 = _RAND_299[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_300 = {1{`RANDOM}};
  dl_out_mask_17 = _RAND_300[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_301 = {1{`RANDOM}};
  dl_out_mask_18 = _RAND_301[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_302 = {1{`RANDOM}};
  dl_out_mask_19 = _RAND_302[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_303 = {1{`RANDOM}};
  dl_out_mask_20 = _RAND_303[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_304 = {1{`RANDOM}};
  dl_out_mask_21 = _RAND_304[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_305 = {1{`RANDOM}};
  dl_out_mask_22 = _RAND_305[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_306 = {1{`RANDOM}};
  dl_out_mask_23 = _RAND_306[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_307 = {1{`RANDOM}};
  dl_out_mask_24 = _RAND_307[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_308 = {1{`RANDOM}};
  dl_out_mask_25 = _RAND_308[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_309 = {1{`RANDOM}};
  dl_out_mask_26 = _RAND_309[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_310 = {1{`RANDOM}};
  dl_out_mask_27 = _RAND_310[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_311 = {1{`RANDOM}};
  dl_out_mask_28 = _RAND_311[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_312 = {1{`RANDOM}};
  dl_out_mask_29 = _RAND_312[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_313 = {1{`RANDOM}};
  dl_out_mask_30 = _RAND_313[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_314 = {1{`RANDOM}};
  dl_out_mask_31 = _RAND_314[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_315 = {1{`RANDOM}};
  dl_out_mask_32 = _RAND_315[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_316 = {1{`RANDOM}};
  dl_out_mask_33 = _RAND_316[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_317 = {1{`RANDOM}};
  dl_out_mask_34 = _RAND_317[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_318 = {1{`RANDOM}};
  dl_out_mask_35 = _RAND_318[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_319 = {1{`RANDOM}};
  dl_out_mask_36 = _RAND_319[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_320 = {1{`RANDOM}};
  dl_out_mask_37 = _RAND_320[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_321 = {1{`RANDOM}};
  dl_out_mask_38 = _RAND_321[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_322 = {1{`RANDOM}};
  dl_out_mask_39 = _RAND_322[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_323 = {1{`RANDOM}};
  dl_out_mask_40 = _RAND_323[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_324 = {1{`RANDOM}};
  dl_out_mask_41 = _RAND_324[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_325 = {1{`RANDOM}};
  dl_out_mask_42 = _RAND_325[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_326 = {1{`RANDOM}};
  dl_out_mask_43 = _RAND_326[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_327 = {1{`RANDOM}};
  dl_out_mask_44 = _RAND_327[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_328 = {1{`RANDOM}};
  dl_out_mask_45 = _RAND_328[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_329 = {1{`RANDOM}};
  dl_out_mask_46 = _RAND_329[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_330 = {1{`RANDOM}};
  dl_out_mask_47 = _RAND_330[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_331 = {1{`RANDOM}};
  dl_out_mask_48 = _RAND_331[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_332 = {1{`RANDOM}};
  dl_out_mask_49 = _RAND_332[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_333 = {1{`RANDOM}};
  dl_out_mask_50 = _RAND_333[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_334 = {1{`RANDOM}};
  dl_out_mask_51 = _RAND_334[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_335 = {1{`RANDOM}};
  dl_out_mask_52 = _RAND_335[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_336 = {1{`RANDOM}};
  dl_out_mask_53 = _RAND_336[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_337 = {1{`RANDOM}};
  dl_out_mask_54 = _RAND_337[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_338 = {1{`RANDOM}};
  dl_out_mask_55 = _RAND_338[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_339 = {1{`RANDOM}};
  dl_out_mask_56 = _RAND_339[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_340 = {1{`RANDOM}};
  dl_out_mask_57 = _RAND_340[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_341 = {1{`RANDOM}};
  dl_out_mask_58 = _RAND_341[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_342 = {1{`RANDOM}};
  dl_out_mask_59 = _RAND_342[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_343 = {1{`RANDOM}};
  dl_out_mask_60 = _RAND_343[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_344 = {1{`RANDOM}};
  dl_out_mask_61 = _RAND_344[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_345 = {1{`RANDOM}};
  dl_out_mask_62 = _RAND_345[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_346 = {1{`RANDOM}};
  dl_out_mask_63 = _RAND_346[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_347 = {1{`RANDOM}};
  dl_out_flag = _RAND_347[8:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_348 = {1{`RANDOM}};
  dl_out_data_0 = _RAND_348[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_349 = {1{`RANDOM}};
  dl_out_data_1 = _RAND_349[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_350 = {1{`RANDOM}};
  dl_out_data_2 = _RAND_350[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_351 = {1{`RANDOM}};
  dl_out_data_3 = _RAND_351[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_352 = {1{`RANDOM}};
  dl_out_data_4 = _RAND_352[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_353 = {1{`RANDOM}};
  dl_out_data_5 = _RAND_353[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_354 = {1{`RANDOM}};
  dl_out_data_6 = _RAND_354[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_355 = {1{`RANDOM}};
  dl_out_data_7 = _RAND_355[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_356 = {1{`RANDOM}};
  dl_out_data_8 = _RAND_356[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_357 = {1{`RANDOM}};
  dl_out_data_9 = _RAND_357[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_358 = {1{`RANDOM}};
  dl_out_data_10 = _RAND_358[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_359 = {1{`RANDOM}};
  dl_out_data_11 = _RAND_359[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_360 = {1{`RANDOM}};
  dl_out_data_12 = _RAND_360[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_361 = {1{`RANDOM}};
  dl_out_data_13 = _RAND_361[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_362 = {1{`RANDOM}};
  dl_out_data_14 = _RAND_362[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_363 = {1{`RANDOM}};
  dl_out_data_15 = _RAND_363[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_364 = {1{`RANDOM}};
  dl_out_data_16 = _RAND_364[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_365 = {1{`RANDOM}};
  dl_out_data_17 = _RAND_365[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_366 = {1{`RANDOM}};
  dl_out_data_18 = _RAND_366[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_367 = {1{`RANDOM}};
  dl_out_data_19 = _RAND_367[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_368 = {1{`RANDOM}};
  dl_out_data_20 = _RAND_368[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_369 = {1{`RANDOM}};
  dl_out_data_21 = _RAND_369[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_370 = {1{`RANDOM}};
  dl_out_data_22 = _RAND_370[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_371 = {1{`RANDOM}};
  dl_out_data_23 = _RAND_371[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_372 = {1{`RANDOM}};
  dl_out_data_24 = _RAND_372[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_373 = {1{`RANDOM}};
  dl_out_data_25 = _RAND_373[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_374 = {1{`RANDOM}};
  dl_out_data_26 = _RAND_374[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_375 = {1{`RANDOM}};
  dl_out_data_27 = _RAND_375[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_376 = {1{`RANDOM}};
  dl_out_data_28 = _RAND_376[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_377 = {1{`RANDOM}};
  dl_out_data_29 = _RAND_377[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_378 = {1{`RANDOM}};
  dl_out_data_30 = _RAND_378[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_379 = {1{`RANDOM}};
  dl_out_data_31 = _RAND_379[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_380 = {1{`RANDOM}};
  dl_out_data_32 = _RAND_380[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_381 = {1{`RANDOM}};
  dl_out_data_33 = _RAND_381[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_382 = {1{`RANDOM}};
  dl_out_data_34 = _RAND_382[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_383 = {1{`RANDOM}};
  dl_out_data_35 = _RAND_383[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_384 = {1{`RANDOM}};
  dl_out_data_36 = _RAND_384[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_385 = {1{`RANDOM}};
  dl_out_data_37 = _RAND_385[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_386 = {1{`RANDOM}};
  dl_out_data_38 = _RAND_386[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_387 = {1{`RANDOM}};
  dl_out_data_39 = _RAND_387[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_388 = {1{`RANDOM}};
  dl_out_data_40 = _RAND_388[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_389 = {1{`RANDOM}};
  dl_out_data_41 = _RAND_389[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_390 = {1{`RANDOM}};
  dl_out_data_42 = _RAND_390[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_391 = {1{`RANDOM}};
  dl_out_data_43 = _RAND_391[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_392 = {1{`RANDOM}};
  dl_out_data_44 = _RAND_392[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_393 = {1{`RANDOM}};
  dl_out_data_45 = _RAND_393[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_394 = {1{`RANDOM}};
  dl_out_data_46 = _RAND_394[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_395 = {1{`RANDOM}};
  dl_out_data_47 = _RAND_395[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_396 = {1{`RANDOM}};
  dl_out_data_48 = _RAND_396[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_397 = {1{`RANDOM}};
  dl_out_data_49 = _RAND_397[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_398 = {1{`RANDOM}};
  dl_out_data_50 = _RAND_398[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_399 = {1{`RANDOM}};
  dl_out_data_51 = _RAND_399[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_400 = {1{`RANDOM}};
  dl_out_data_52 = _RAND_400[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_401 = {1{`RANDOM}};
  dl_out_data_53 = _RAND_401[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_402 = {1{`RANDOM}};
  dl_out_data_54 = _RAND_402[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_403 = {1{`RANDOM}};
  dl_out_data_55 = _RAND_403[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_404 = {1{`RANDOM}};
  dl_out_data_56 = _RAND_404[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_405 = {1{`RANDOM}};
  dl_out_data_57 = _RAND_405[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_406 = {1{`RANDOM}};
  dl_out_data_58 = _RAND_406[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_407 = {1{`RANDOM}};
  dl_out_data_59 = _RAND_407[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_408 = {1{`RANDOM}};
  dl_out_data_60 = _RAND_408[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_409 = {1{`RANDOM}};
  dl_out_data_61 = _RAND_409[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_410 = {1{`RANDOM}};
  dl_out_data_62 = _RAND_410[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_411 = {1{`RANDOM}};
  dl_out_data_63 = _RAND_411[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_412 = {1{`RANDOM}};
  dl_out_pvld_d1 = _RAND_412[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_413 = {1{`RANDOM}};
  _T_4140 = _RAND_413[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_414 = {1{`RANDOM}};
  _T_4143 = _RAND_414[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_415 = {1{`RANDOM}};
  _T_4147 = _RAND_415[8:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_416 = {1{`RANDOM}};
  _T_4151 = _RAND_416[8:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_417 = {1{`RANDOM}};
  _T_4419_0 = _RAND_417[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_418 = {1{`RANDOM}};
  _T_4419_1 = _RAND_418[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_419 = {1{`RANDOM}};
  _T_4419_2 = _RAND_419[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_420 = {1{`RANDOM}};
  _T_4419_3 = _RAND_420[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_421 = {1{`RANDOM}};
  _T_4419_4 = _RAND_421[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_422 = {1{`RANDOM}};
  _T_4419_5 = _RAND_422[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_423 = {1{`RANDOM}};
  _T_4419_6 = _RAND_423[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_424 = {1{`RANDOM}};
  _T_4419_7 = _RAND_424[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_425 = {1{`RANDOM}};
  _T_4419_8 = _RAND_425[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_426 = {1{`RANDOM}};
  _T_4419_9 = _RAND_426[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_427 = {1{`RANDOM}};
  _T_4419_10 = _RAND_427[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_428 = {1{`RANDOM}};
  _T_4419_11 = _RAND_428[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_429 = {1{`RANDOM}};
  _T_4419_12 = _RAND_429[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_430 = {1{`RANDOM}};
  _T_4419_13 = _RAND_430[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_431 = {1{`RANDOM}};
  _T_4419_14 = _RAND_431[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_432 = {1{`RANDOM}};
  _T_4419_15 = _RAND_432[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_433 = {1{`RANDOM}};
  _T_4419_16 = _RAND_433[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_434 = {1{`RANDOM}};
  _T_4419_17 = _RAND_434[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_435 = {1{`RANDOM}};
  _T_4419_18 = _RAND_435[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_436 = {1{`RANDOM}};
  _T_4419_19 = _RAND_436[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_437 = {1{`RANDOM}};
  _T_4419_20 = _RAND_437[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_438 = {1{`RANDOM}};
  _T_4419_21 = _RAND_438[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_439 = {1{`RANDOM}};
  _T_4419_22 = _RAND_439[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_440 = {1{`RANDOM}};
  _T_4419_23 = _RAND_440[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_441 = {1{`RANDOM}};
  _T_4419_24 = _RAND_441[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_442 = {1{`RANDOM}};
  _T_4419_25 = _RAND_442[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_443 = {1{`RANDOM}};
  _T_4419_26 = _RAND_443[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_444 = {1{`RANDOM}};
  _T_4419_27 = _RAND_444[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_445 = {1{`RANDOM}};
  _T_4419_28 = _RAND_445[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_446 = {1{`RANDOM}};
  _T_4419_29 = _RAND_446[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_447 = {1{`RANDOM}};
  _T_4419_30 = _RAND_447[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_448 = {1{`RANDOM}};
  _T_4419_31 = _RAND_448[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_449 = {1{`RANDOM}};
  _T_4419_32 = _RAND_449[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_450 = {1{`RANDOM}};
  _T_4419_33 = _RAND_450[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_451 = {1{`RANDOM}};
  _T_4419_34 = _RAND_451[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_452 = {1{`RANDOM}};
  _T_4419_35 = _RAND_452[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_453 = {1{`RANDOM}};
  _T_4419_36 = _RAND_453[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_454 = {1{`RANDOM}};
  _T_4419_37 = _RAND_454[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_455 = {1{`RANDOM}};
  _T_4419_38 = _RAND_455[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_456 = {1{`RANDOM}};
  _T_4419_39 = _RAND_456[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_457 = {1{`RANDOM}};
  _T_4419_40 = _RAND_457[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_458 = {1{`RANDOM}};
  _T_4419_41 = _RAND_458[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_459 = {1{`RANDOM}};
  _T_4419_42 = _RAND_459[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_460 = {1{`RANDOM}};
  _T_4419_43 = _RAND_460[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_461 = {1{`RANDOM}};
  _T_4419_44 = _RAND_461[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_462 = {1{`RANDOM}};
  _T_4419_45 = _RAND_462[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_463 = {1{`RANDOM}};
  _T_4419_46 = _RAND_463[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_464 = {1{`RANDOM}};
  _T_4419_47 = _RAND_464[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_465 = {1{`RANDOM}};
  _T_4419_48 = _RAND_465[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_466 = {1{`RANDOM}};
  _T_4419_49 = _RAND_466[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_467 = {1{`RANDOM}};
  _T_4419_50 = _RAND_467[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_468 = {1{`RANDOM}};
  _T_4419_51 = _RAND_468[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_469 = {1{`RANDOM}};
  _T_4419_52 = _RAND_469[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_470 = {1{`RANDOM}};
  _T_4419_53 = _RAND_470[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_471 = {1{`RANDOM}};
  _T_4419_54 = _RAND_471[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_472 = {1{`RANDOM}};
  _T_4419_55 = _RAND_472[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_473 = {1{`RANDOM}};
  _T_4419_56 = _RAND_473[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_474 = {1{`RANDOM}};
  _T_4419_57 = _RAND_474[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_475 = {1{`RANDOM}};
  _T_4419_58 = _RAND_475[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_476 = {1{`RANDOM}};
  _T_4419_59 = _RAND_476[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_477 = {1{`RANDOM}};
  _T_4419_60 = _RAND_477[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_478 = {1{`RANDOM}};
  _T_4419_61 = _RAND_478[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_479 = {1{`RANDOM}};
  _T_4419_62 = _RAND_479[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_480 = {1{`RANDOM}};
  _T_4419_63 = _RAND_480[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_481 = {1{`RANDOM}};
  _T_4946_0 = _RAND_481[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_482 = {1{`RANDOM}};
  _T_4946_1 = _RAND_482[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_483 = {1{`RANDOM}};
  _T_4946_2 = _RAND_483[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_484 = {1{`RANDOM}};
  _T_4946_3 = _RAND_484[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_485 = {1{`RANDOM}};
  _T_4946_4 = _RAND_485[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_486 = {1{`RANDOM}};
  _T_4946_5 = _RAND_486[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_487 = {1{`RANDOM}};
  _T_4946_6 = _RAND_487[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_488 = {1{`RANDOM}};
  _T_4946_7 = _RAND_488[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_489 = {1{`RANDOM}};
  _T_4946_8 = _RAND_489[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_490 = {1{`RANDOM}};
  _T_4946_9 = _RAND_490[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_491 = {1{`RANDOM}};
  _T_4946_10 = _RAND_491[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_492 = {1{`RANDOM}};
  _T_4946_11 = _RAND_492[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_493 = {1{`RANDOM}};
  _T_4946_12 = _RAND_493[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_494 = {1{`RANDOM}};
  _T_4946_13 = _RAND_494[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_495 = {1{`RANDOM}};
  _T_4946_14 = _RAND_495[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_496 = {1{`RANDOM}};
  _T_4946_15 = _RAND_496[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_497 = {1{`RANDOM}};
  _T_4946_16 = _RAND_497[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_498 = {1{`RANDOM}};
  _T_4946_17 = _RAND_498[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_499 = {1{`RANDOM}};
  _T_4946_18 = _RAND_499[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_500 = {1{`RANDOM}};
  _T_4946_19 = _RAND_500[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_501 = {1{`RANDOM}};
  _T_4946_20 = _RAND_501[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_502 = {1{`RANDOM}};
  _T_4946_21 = _RAND_502[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_503 = {1{`RANDOM}};
  _T_4946_22 = _RAND_503[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_504 = {1{`RANDOM}};
  _T_4946_23 = _RAND_504[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_505 = {1{`RANDOM}};
  _T_4946_24 = _RAND_505[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_506 = {1{`RANDOM}};
  _T_4946_25 = _RAND_506[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_507 = {1{`RANDOM}};
  _T_4946_26 = _RAND_507[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_508 = {1{`RANDOM}};
  _T_4946_27 = _RAND_508[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_509 = {1{`RANDOM}};
  _T_4946_28 = _RAND_509[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_510 = {1{`RANDOM}};
  _T_4946_29 = _RAND_510[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_511 = {1{`RANDOM}};
  _T_4946_30 = _RAND_511[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_512 = {1{`RANDOM}};
  _T_4946_31 = _RAND_512[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_513 = {1{`RANDOM}};
  _T_4946_32 = _RAND_513[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_514 = {1{`RANDOM}};
  _T_4946_33 = _RAND_514[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_515 = {1{`RANDOM}};
  _T_4946_34 = _RAND_515[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_516 = {1{`RANDOM}};
  _T_4946_35 = _RAND_516[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_517 = {1{`RANDOM}};
  _T_4946_36 = _RAND_517[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_518 = {1{`RANDOM}};
  _T_4946_37 = _RAND_518[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_519 = {1{`RANDOM}};
  _T_4946_38 = _RAND_519[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_520 = {1{`RANDOM}};
  _T_4946_39 = _RAND_520[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_521 = {1{`RANDOM}};
  _T_4946_40 = _RAND_521[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_522 = {1{`RANDOM}};
  _T_4946_41 = _RAND_522[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_523 = {1{`RANDOM}};
  _T_4946_42 = _RAND_523[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_524 = {1{`RANDOM}};
  _T_4946_43 = _RAND_524[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_525 = {1{`RANDOM}};
  _T_4946_44 = _RAND_525[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_526 = {1{`RANDOM}};
  _T_4946_45 = _RAND_526[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_527 = {1{`RANDOM}};
  _T_4946_46 = _RAND_527[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_528 = {1{`RANDOM}};
  _T_4946_47 = _RAND_528[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_529 = {1{`RANDOM}};
  _T_4946_48 = _RAND_529[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_530 = {1{`RANDOM}};
  _T_4946_49 = _RAND_530[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_531 = {1{`RANDOM}};
  _T_4946_50 = _RAND_531[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_532 = {1{`RANDOM}};
  _T_4946_51 = _RAND_532[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_533 = {1{`RANDOM}};
  _T_4946_52 = _RAND_533[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_534 = {1{`RANDOM}};
  _T_4946_53 = _RAND_534[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_535 = {1{`RANDOM}};
  _T_4946_54 = _RAND_535[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_536 = {1{`RANDOM}};
  _T_4946_55 = _RAND_536[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_537 = {1{`RANDOM}};
  _T_4946_56 = _RAND_537[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_538 = {1{`RANDOM}};
  _T_4946_57 = _RAND_538[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_539 = {1{`RANDOM}};
  _T_4946_58 = _RAND_539[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_540 = {1{`RANDOM}};
  _T_4946_59 = _RAND_540[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_541 = {1{`RANDOM}};
  _T_4946_60 = _RAND_541[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_542 = {1{`RANDOM}};
  _T_4946_61 = _RAND_542[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_543 = {1{`RANDOM}};
  _T_4946_62 = _RAND_543[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_544 = {1{`RANDOM}};
  _T_4946_63 = _RAND_544[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_545 = {1{`RANDOM}};
  _T_5207 = _RAND_545[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_546 = {1{`RANDOM}};
  _T_5209 = _RAND_546[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_547 = {1{`RANDOM}};
  _T_5211 = _RAND_547[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_548 = {1{`RANDOM}};
  _T_5213 = _RAND_548[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_549 = {1{`RANDOM}};
  _T_5215 = _RAND_549[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_550 = {1{`RANDOM}};
  _T_5217 = _RAND_550[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_551 = {1{`RANDOM}};
  _T_5219 = _RAND_551[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_552 = {1{`RANDOM}};
  _T_5221 = _RAND_552[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_553 = {1{`RANDOM}};
  _T_5223 = _RAND_553[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_554 = {1{`RANDOM}};
  _T_5225 = _RAND_554[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_555 = {1{`RANDOM}};
  _T_5227 = _RAND_555[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_556 = {1{`RANDOM}};
  _T_5229 = _RAND_556[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_557 = {1{`RANDOM}};
  _T_5231 = _RAND_557[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_558 = {1{`RANDOM}};
  _T_5233 = _RAND_558[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_559 = {1{`RANDOM}};
  _T_5235 = _RAND_559[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_560 = {1{`RANDOM}};
  _T_5237 = _RAND_560[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_561 = {1{`RANDOM}};
  _T_5239 = _RAND_561[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_562 = {1{`RANDOM}};
  _T_5241 = _RAND_562[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_563 = {1{`RANDOM}};
  _T_5243 = _RAND_563[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_564 = {1{`RANDOM}};
  _T_5245 = _RAND_564[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_565 = {1{`RANDOM}};
  _T_5247 = _RAND_565[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_566 = {1{`RANDOM}};
  _T_5249 = _RAND_566[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_567 = {1{`RANDOM}};
  _T_5251 = _RAND_567[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_568 = {1{`RANDOM}};
  _T_5253 = _RAND_568[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_569 = {1{`RANDOM}};
  _T_5255 = _RAND_569[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_570 = {1{`RANDOM}};
  _T_5257 = _RAND_570[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_571 = {1{`RANDOM}};
  _T_5259 = _RAND_571[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_572 = {1{`RANDOM}};
  _T_5261 = _RAND_572[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_573 = {1{`RANDOM}};
  _T_5263 = _RAND_573[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_574 = {1{`RANDOM}};
  _T_5265 = _RAND_574[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_575 = {1{`RANDOM}};
  _T_5267 = _RAND_575[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_576 = {1{`RANDOM}};
  _T_5269 = _RAND_576[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_577 = {1{`RANDOM}};
  _T_5271 = _RAND_577[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_578 = {1{`RANDOM}};
  _T_5273 = _RAND_578[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_579 = {1{`RANDOM}};
  _T_5275 = _RAND_579[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_580 = {1{`RANDOM}};
  _T_5277 = _RAND_580[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_581 = {1{`RANDOM}};
  _T_5279 = _RAND_581[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_582 = {1{`RANDOM}};
  _T_5281 = _RAND_582[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_583 = {1{`RANDOM}};
  _T_5283 = _RAND_583[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_584 = {1{`RANDOM}};
  _T_5285 = _RAND_584[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_585 = {1{`RANDOM}};
  _T_5287 = _RAND_585[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_586 = {1{`RANDOM}};
  _T_5289 = _RAND_586[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_587 = {1{`RANDOM}};
  _T_5291 = _RAND_587[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_588 = {1{`RANDOM}};
  _T_5293 = _RAND_588[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_589 = {1{`RANDOM}};
  _T_5295 = _RAND_589[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_590 = {1{`RANDOM}};
  _T_5297 = _RAND_590[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_591 = {1{`RANDOM}};
  _T_5299 = _RAND_591[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_592 = {1{`RANDOM}};
  _T_5301 = _RAND_592[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_593 = {1{`RANDOM}};
  _T_5303 = _RAND_593[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_594 = {1{`RANDOM}};
  _T_5305 = _RAND_594[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_595 = {1{`RANDOM}};
  _T_5307 = _RAND_595[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_596 = {1{`RANDOM}};
  _T_5309 = _RAND_596[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_597 = {1{`RANDOM}};
  _T_5311 = _RAND_597[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_598 = {1{`RANDOM}};
  _T_5313 = _RAND_598[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_599 = {1{`RANDOM}};
  _T_5315 = _RAND_599[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_600 = {1{`RANDOM}};
  _T_5317 = _RAND_600[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_601 = {1{`RANDOM}};
  _T_5319 = _RAND_601[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_602 = {1{`RANDOM}};
  _T_5321 = _RAND_602[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_603 = {1{`RANDOM}};
  _T_5323 = _RAND_603[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_604 = {1{`RANDOM}};
  _T_5325 = _RAND_604[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_605 = {1{`RANDOM}};
  _T_5327 = _RAND_605[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_606 = {1{`RANDOM}};
  _T_5329 = _RAND_606[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_607 = {1{`RANDOM}};
  _T_5331 = _RAND_607[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_608 = {1{`RANDOM}};
  _T_5333 = _RAND_608[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_609 = {1{`RANDOM}};
  _T_5335 = _RAND_609[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_610 = {1{`RANDOM}};
  _T_5337 = _RAND_610[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_611 = {1{`RANDOM}};
  _T_5339 = _RAND_611[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_612 = {1{`RANDOM}};
  _T_5341 = _RAND_612[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_613 = {1{`RANDOM}};
  _T_5343 = _RAND_613[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_614 = {1{`RANDOM}};
  _T_5345 = _RAND_614[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_615 = {1{`RANDOM}};
  _T_5347 = _RAND_615[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_616 = {1{`RANDOM}};
  _T_5349 = _RAND_616[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_617 = {1{`RANDOM}};
  _T_5351 = _RAND_617[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_618 = {1{`RANDOM}};
  _T_5353 = _RAND_618[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_619 = {1{`RANDOM}};
  _T_5355 = _RAND_619[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_620 = {1{`RANDOM}};
  _T_5357 = _RAND_620[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_621 = {1{`RANDOM}};
  _T_5359 = _RAND_621[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_622 = {1{`RANDOM}};
  _T_5361 = _RAND_622[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_623 = {1{`RANDOM}};
  _T_5363 = _RAND_623[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_624 = {1{`RANDOM}};
  _T_5365 = _RAND_624[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_625 = {1{`RANDOM}};
  _T_5367 = _RAND_625[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_626 = {1{`RANDOM}};
  _T_5369 = _RAND_626[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_627 = {1{`RANDOM}};
  _T_5371 = _RAND_627[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_628 = {1{`RANDOM}};
  _T_5373 = _RAND_628[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_629 = {1{`RANDOM}};
  _T_5375 = _RAND_629[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_630 = {1{`RANDOM}};
  _T_5377 = _RAND_630[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_631 = {1{`RANDOM}};
  _T_5379 = _RAND_631[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_632 = {1{`RANDOM}};
  _T_5381 = _RAND_632[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_633 = {1{`RANDOM}};
  _T_5383 = _RAND_633[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_634 = {1{`RANDOM}};
  _T_5385 = _RAND_634[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_635 = {1{`RANDOM}};
  _T_5387 = _RAND_635[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_636 = {1{`RANDOM}};
  _T_5389 = _RAND_636[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_637 = {1{`RANDOM}};
  _T_5391 = _RAND_637[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_638 = {1{`RANDOM}};
  _T_5393 = _RAND_638[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_639 = {1{`RANDOM}};
  _T_5395 = _RAND_639[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_640 = {1{`RANDOM}};
  _T_5397 = _RAND_640[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_641 = {1{`RANDOM}};
  _T_5399 = _RAND_641[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_642 = {1{`RANDOM}};
  _T_5401 = _RAND_642[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_643 = {1{`RANDOM}};
  _T_5403 = _RAND_643[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_644 = {1{`RANDOM}};
  _T_5405 = _RAND_644[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_645 = {1{`RANDOM}};
  _T_5407 = _RAND_645[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_646 = {1{`RANDOM}};
  _T_5409 = _RAND_646[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_647 = {1{`RANDOM}};
  _T_5411 = _RAND_647[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_648 = {1{`RANDOM}};
  _T_5413 = _RAND_648[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_649 = {1{`RANDOM}};
  _T_5415 = _RAND_649[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_650 = {1{`RANDOM}};
  _T_5417 = _RAND_650[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_651 = {1{`RANDOM}};
  _T_5419 = _RAND_651[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_652 = {1{`RANDOM}};
  _T_5421 = _RAND_652[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_653 = {1{`RANDOM}};
  _T_5423 = _RAND_653[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_654 = {1{`RANDOM}};
  _T_5425 = _RAND_654[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_655 = {1{`RANDOM}};
  _T_5427 = _RAND_655[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_656 = {1{`RANDOM}};
  _T_5429 = _RAND_656[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_657 = {1{`RANDOM}};
  _T_5431 = _RAND_657[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_658 = {1{`RANDOM}};
  _T_5433 = _RAND_658[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_659 = {1{`RANDOM}};
  _T_5435 = _RAND_659[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_660 = {1{`RANDOM}};
  _T_5437 = _RAND_660[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_661 = {1{`RANDOM}};
  _T_5439 = _RAND_661[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_662 = {1{`RANDOM}};
  _T_5441 = _RAND_662[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_663 = {1{`RANDOM}};
  _T_5443 = _RAND_663[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_664 = {1{`RANDOM}};
  _T_5445 = _RAND_664[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_665 = {1{`RANDOM}};
  _T_5447 = _RAND_665[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_666 = {1{`RANDOM}};
  _T_5449 = _RAND_666[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_667 = {1{`RANDOM}};
  _T_5451 = _RAND_667[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_668 = {1{`RANDOM}};
  _T_5453 = _RAND_668[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_669 = {1{`RANDOM}};
  _T_5455 = _RAND_669[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_670 = {1{`RANDOM}};
  _T_5457 = _RAND_670[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_671 = {1{`RANDOM}};
  _T_5459 = _RAND_671[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_672 = {1{`RANDOM}};
  _T_5461 = _RAND_672[7:0];
  `endif // RANDOMIZE_REG_INIT
  end
`endif // RANDOMIZE
  always @(posedge nvdla_core_clk) begin
    if (_T_337) begin
      layer_st_d1 <= 1'h0;
    end else begin
      layer_st_d1 <= layer_st;
    end
    if (_T_337) begin
      data_batch <= 6'h0;
    end else begin
      if (layer_st) begin
        data_batch <= 6'h1;
      end
    end
    if (_T_337) begin
      rls_slices <= 14'h0;
    end else begin
      if (layer_st) begin
        rls_slices <= {{2'd0}, rls_slices_w};
      end
    end
    if (_T_337) begin
      h_offset_slice <= 14'h0;
    end else begin
      if (layer_st) begin
        h_offset_slice <= {{2'd0}, h_offset_slice_w};
      end
    end
    if (_T_337) begin
      entries <= 15'h0;
    end else begin
      if (layer_st) begin
        entries <= entries_single_w;
      end
    end
    if (_T_337) begin
      entries_batch <= 15'h0;
    end else begin
      if (layer_st) begin
        entries_batch <= entries_batch_w;
      end
    end
    if (_T_337) begin
      dataout_width_cmp <= 13'h0;
    end else begin
      if (layer_st) begin
        dataout_width_cmp <= reg2dp_dataout_width;
      end
    end
    if (_T_337) begin
      rls_entries <= 15'h0;
    end else begin
      if (layer_st_d1) begin
        rls_entries <= slice_entries_w;
      end
    end
    if (_T_337) begin
      h_bias_0_stride <= 12'h0;
    end else begin
      if (layer_st_d1) begin
        h_bias_0_stride <= h_bias_0_stride_w;
      end
    end
    if (_T_337) begin
      h_bias_1_stride <= 12'h0;
    end else begin
      if (layer_st_d1) begin
        h_bias_1_stride <= h_bias_1_stride_w;
      end
    end
    if (_T_337) begin
      slice_left <= 14'h0;
    end else begin
      if (layer_st) begin
        if (reg2dp_skip_data_rls) begin
          slice_left <= _T_483;
        end else begin
          slice_left <= _T_485;
        end
      end
    end
    if (_T_337) begin
      is_img_d1 <= 34'h0;
    end else begin
      if (layer_st) begin
        if (is_img) begin
          is_img_d1 <= 34'h3ffffffff;
        end else begin
          is_img_d1 <= 34'h0;
        end
      end
    end
    if (_T_337) begin
      data_bank <= 5'h0;
    end else begin
      if (layer_st) begin
        data_bank <= _T_674;
      end
    end
    if (_T_337) begin
      datain_width <= 14'h0;
    end else begin
      if (layer_st) begin
        datain_width <= _T_676;
      end
    end
    if (_T_337) begin
      datain_width_cmp <= 13'h0;
    end else begin
      if (layer_st) begin
        datain_width_cmp <= reg2dp_datain_width_ext;
      end
    end
    if (_T_337) begin
      datain_height_cmp <= 13'h0;
    end else begin
      if (layer_st) begin
        datain_height_cmp <= reg2dp_datain_height_ext;
      end
    end
    if (_T_337) begin
      datain_channel_cmp <= 11'h0;
    end else begin
      if (layer_st) begin
        datain_channel_cmp <= _T_683;
      end
    end
    if (_T_337) begin
      sub_h_total_g0 <= 3'h1;
    end else begin
      if (layer_st) begin
        sub_h_total_g0 <= sub_h_total_w;
      end
    end
    if (_T_337) begin
      sub_h_total_g1 <= 3'h1;
    end else begin
      if (layer_st) begin
        sub_h_total_g1 <= sub_h_total_w;
      end
    end
    if (_T_337) begin
      sub_h_total_g3 <= 3'h1;
    end else begin
      if (layer_st) begin
        sub_h_total_g3 <= sub_h_total_w;
      end
    end
    if (_T_337) begin
      sub_h_total_g4 <= 3'h1;
    end else begin
      if (layer_st) begin
        sub_h_total_g4 <= sub_h_total_w;
      end
    end
    if (_T_337) begin
      sub_h_total_g5 <= 3'h1;
    end else begin
      if (layer_st) begin
        sub_h_total_g5 <= sub_h_total_w;
      end
    end
    if (_T_337) begin
      sub_h_total_g6 <= 3'h1;
    end else begin
      if (layer_st) begin
        sub_h_total_g6 <= sub_h_total_w;
      end
    end
    if (_T_337) begin
      sub_h_total_g8 <= 3'h1;
    end else begin
      if (layer_st) begin
        sub_h_total_g8 <= sub_h_total_w;
      end
    end
    if (_T_337) begin
      sub_h_total_g9 <= 3'h1;
    end else begin
      if (layer_st) begin
        sub_h_total_g9 <= sub_h_total_w;
      end
    end
    if (_T_337) begin
      sub_h_total_g11 <= 3'h1;
    end else begin
      if (layer_st) begin
        sub_h_total_g11 <= sub_h_total_w;
      end
    end
    if (_T_337) begin
      sub_h_cmp_g0 <= 3'h1;
    end else begin
      if (layer_st) begin
        if (is_img) begin
          sub_h_cmp_g0 <= sub_h_total_w;
        end else begin
          sub_h_cmp_g0 <= 3'h1;
        end
      end
    end
    if (_T_337) begin
      sub_h_cmp_g1 <= 3'h1;
    end else begin
      if (layer_st) begin
        if (is_img) begin
          sub_h_cmp_g1 <= sub_h_total_w;
        end else begin
          sub_h_cmp_g1 <= 3'h1;
        end
      end
    end
    if (_T_337) begin
      conv_x_stride <= 4'h0;
    end else begin
      if (layer_st) begin
        conv_x_stride <= conv_x_stride_w;
      end
    end
    if (_T_337) begin
      conv_y_stride <= 4'h0;
    end else begin
      if (layer_st) begin
        conv_y_stride <= conv_y_stride_w;
      end
    end
    if (_T_337) begin
      batch_cmp <= 5'h0;
    end else begin
      if (layer_st) begin
        batch_cmp <= 5'h0;
      end
    end
    if (_T_337) begin
      pixel_x_init <= 7'h0;
    end else begin
      if (layer_st) begin
        if (_T_387) begin
          pixel_x_init <= _T_380;
        end else begin
          pixel_x_init <= {{1'd0}, _T_386};
        end
      end
    end
    if (_T_337) begin
      pixel_x_init_offset <= 7'h0;
    end else begin
      if (layer_st) begin
        pixel_x_init_offset <= pixel_x_init_offset_w;
      end
    end
    if (_T_337) begin
      pixel_x_add <= 8'h0;
    end else begin
      if (layer_st) begin
        if (_T_387) begin
          pixel_x_add <= _T_392;
        end else begin
          pixel_x_add <= {{1'd0}, _T_397};
        end
      end
    end
    if (_T_337) begin
      pixel_x_byte_stride <= 7'h0;
    end else begin
      if (layer_st) begin
        pixel_x_byte_stride <= {{1'd0}, pixel_x_stride_w};
      end
    end
    if (_T_337) begin
      pixel_ch_stride <= 12'h0;
    end else begin
      if (layer_st) begin
        pixel_ch_stride <= pixel_ch_stride_w;
      end
    end
    if (_T_337) begin
      x_dilate <= 6'h0;
    end else begin
      if (layer_st) begin
        if (is_img) begin
          x_dilate <= 6'h1;
        end else begin
          x_dilate <= _T_403;
        end
      end
    end
    if (_T_337) begin
      y_dilate <= 6'h0;
    end else begin
      if (layer_st) begin
        if (is_img) begin
          y_dilate <= 6'h1;
        end else begin
          y_dilate <= _T_406;
        end
      end
    end
    if (_T_337) begin
      pad_value <= 16'h0;
    end else begin
      if (layer_st) begin
        pad_value <= reg2dp_pad_value;
      end
    end
    if (_T_337) begin
      entries_cmp <= 15'h0;
    end else begin
      if (layer_st) begin
        entries_cmp <= _T_687;
      end
    end
    if (_T_337) begin
      h_bias_2_stride <= 15'h0;
    end else begin
      if (layer_st_d1) begin
        h_bias_2_stride <= entries;
      end
    end
    if (_T_337) begin
      h_bias_3_stride <= 15'h0;
    end else begin
      if (layer_st_d1) begin
        h_bias_3_stride <= entries;
      end
    end
    if (_T_337) begin
      last_slices <= 14'h0;
    end else begin
      if (is_sg_done) begin
        last_slices <= slice_left;
      end
    end
    if (_T_337) begin
      last_entries <= 15'h0;
    end else begin
      if (is_sg_done) begin
        last_entries <= slice_entries_w;
      end
    end
    if (_T_337) begin
      dat_rsp_l3_pvld <= 1'h0;
    end else begin
      dat_rsp_l3_pvld <= dat_rsp_l2_pvld;
    end
    if (_T_337) begin
      dat_rsp_l1_pvld <= 1'h0;
    end else begin
      dat_rsp_l1_pvld <= dat_rsp_l0_pvld;
    end
    if (_T_337) begin
      dat_rsp_l0_pvld <= 1'h0;
    end else begin
      dat_rsp_l0_pvld <= dat_rsp_pipe_pvld;
    end
    if (_T_337) begin
      _T_1632 <= 27'h0;
    end else begin
      if (dat_rsp_l2_pvld) begin
        _T_1632 <= _T_1629;
      end
    end
    if (_T_337) begin
      _T_1626 <= 27'h0;
    end else begin
      if (dat_rsp_l0_pvld) begin
        _T_1626 <= _T_1623;
      end
    end
    if (_T_337) begin
      _T_1623 <= 27'h0;
    end else begin
      if (dat_rsp_pipe_pvld) begin
        _T_1623 <= _T_1641;
      end
    end
    if (_T_337) begin
      _T_774 <= 1'h0;
    end else begin
      _T_774 <= dat_rls;
    end
    if (_T_337) begin
      _T_777 <= 14'h0;
    end else begin
      if (dat_rls) begin
        if (sub_rls) begin
          _T_777 <= rls_slices;
        end else begin
          _T_777 <= last_slices;
        end
      end
    end
    if (_T_337) begin
      _T_780 <= 15'h0;
    end else begin
      if (dat_rls) begin
        if (sub_rls) begin
          _T_780 <= rls_entries;
        end else begin
          _T_780 <= last_entries;
        end
      end
    end
    if (_T_337) begin
      _T_785 <= 1'h0;
    end else begin
      _T_785 <= sg2dl_pvld;
    end
    if (_T_337) begin
      _T_788 <= 1'h0;
    end else begin
      _T_788 <= _T_785;
    end
    if (_T_337) begin
      _T_791 <= 1'h0;
    end else begin
      _T_791 <= _T_788;
    end
    if (_T_337) begin
      _T_794 <= 1'h0;
    end else begin
      _T_794 <= _T_791;
    end
    if (_T_337) begin
      dl_in_pvld <= 1'h0;
    end else begin
      dl_in_pvld <= _T_794;
    end
    if (_T_337) begin
      _T_818 <= 1'h0;
    end else begin
      _T_818 <= dl_in_pvld;
    end
    if (_T_337) begin
      _T_821 <= 1'h0;
    end else begin
      _T_821 <= _T_818;
    end
    if (_T_337) begin
      _T_824 <= 1'h0;
    end else begin
      _T_824 <= _T_821;
    end
    if (_T_337) begin
      _T_827 <= 1'h0;
    end else begin
      _T_827 <= _T_824;
    end
    if (_T_337) begin
      _T_832 <= 31'h0;
    end else begin
      if (dl_in_pvld) begin
        _T_832 <= _T_829;
      end
    end
    if (_T_337) begin
      _T_835 <= 31'h0;
    end else begin
      if (_T_818) begin
        _T_835 <= _T_832;
      end
    end
    if (_T_337) begin
      _T_838 <= 31'h0;
    end else begin
      if (_T_821) begin
        _T_838 <= _T_835;
      end
    end
    if (_T_337) begin
      _T_841 <= 31'h0;
    end else begin
      if (_T_824) begin
        _T_841 <= _T_838;
      end
    end
    if (_T_337) begin
      batch_cnt <= 5'h0;
    end else begin
      if (layer_st) begin
        batch_cnt <= 5'h0;
      end else begin
        if (is_batch_end) begin
          batch_cnt <= 5'h0;
        end else begin
          batch_cnt <= _T_876;
        end
      end
    end
    if (_T_337) begin
      sub_h_cnt <= 2'h0;
    end else begin
      if (sub_h_cnt_reg_en) begin
        if (_T_889) begin
          sub_h_cnt <= 2'h0;
        end else begin
          sub_h_cnt <= sub_h_cnt_inc;
        end
      end
    end
    if (_T_337) begin
      stripe_cnt <= 7'h0;
    end else begin
      if (stripe_cnt_reg_en) begin
        if (layer_st) begin
          stripe_cnt <= 7'h0;
        end else begin
          if (_T_904) begin
            stripe_cnt <= 7'h0;
          end else begin
            if (is_stripe_end) begin
              stripe_cnt <= 7'h0;
            end else begin
              stripe_cnt <= stripe_cnt_inc;
            end
          end
        end
      end
    end
    if (_T_337) begin
      dat_exec_valid_d1 <= 1'h0;
    end else begin
      if (dl_pvld) begin
        dat_exec_valid_d1 <= 1'h1;
      end else begin
        if (_T_933) begin
          dat_exec_valid_d1 <= 1'h0;
        end
      end
    end
    if (_T_337) begin
      dat_pipe_local_valid <= 1'h0;
    end else begin
      if (_T_917) begin
        dat_pipe_local_valid <= 1'h0;
      end else begin
        if (dl_pvld) begin
          dat_pipe_local_valid <= 1'h1;
        end
      end
    end
    if (_T_337) begin
      dat_pipe_valid_d1 <= 1'h0;
    end else begin
      dat_pipe_valid_d1 <= dat_pipe_valid;
    end
    if (_T_337) begin
      dat_req_bytes_d1 <= 8'h0;
    end else begin
      if (dat_exec_valid) begin
        dat_req_bytes_d1 <= dat_req_bytes;
      end
    end
    if (_T_337) begin
      dataout_w_cnt <= 13'h0;
    end else begin
      if (dataout_w_cnt_reg_en) begin
        if (layer_st) begin
          dataout_w_cnt <= {{9'd0}, dataout_w_init};
        end else begin
          if (_T_949) begin
            dataout_w_cnt <= dataout_w_ori;
          end else begin
            if (is_w_end) begin
              dataout_w_cnt <= {{9'd0}, dataout_w_init};
            end else begin
              dataout_w_cnt <= dataout_w_cnt_inc;
            end
          end
        end
      end
    end
    if (_T_337) begin
      dataout_w_ori <= 13'h0;
    end else begin
      if (dataout_w_ori_reg_en) begin
        if (layer_st) begin
          dataout_w_ori <= {{9'd0}, dataout_w_init};
        end else begin
          if (!(_T_949)) begin
            if (is_w_end) begin
              dataout_w_ori <= {{9'd0}, dataout_w_init};
            end else begin
              dataout_w_ori <= dataout_w_cnt_inc;
            end
          end
        end
      end
    end
    if (_T_337) begin
      datain_c_cnt <= 11'h0;
    end else begin
      if (datain_c_cnt_reg_en) begin
        if (layer_st) begin
          datain_c_cnt <= 11'h0;
        end else begin
          if (dl_channel_end) begin
            datain_c_cnt <= 11'h0;
          end else begin
            datain_c_cnt <= _T_964;
          end
        end
      end
    end
    if (_T_337) begin
      datain_w_cnt <= 14'h0;
    end else begin
      if (datain_w_cnt_reg_en) begin
        if (layer_st) begin
          if (is_img) begin
            datain_w_cnt <= 14'h0;
          end else begin
            datain_w_cnt <= _T_987;
          end
        end else begin
          if (_T_949) begin
            datain_w_cnt <= datain_w_ori;
          end else begin
            if (is_w_end) begin
              if (is_img) begin
                datain_w_cnt <= 14'h0;
              end else begin
                datain_w_cnt <= _T_987;
              end
            end else begin
              datain_w_cnt <= datain_w_cnt_inc;
            end
          end
        end
      end
    end
    if (_T_337) begin
      datain_w_ori <= 14'h0;
    end else begin
      if (datain_w_ori_reg_en) begin
        if (layer_st) begin
          if (is_img) begin
            datain_w_ori <= 14'h0;
          end else begin
            datain_w_ori <= _T_987;
          end
        end else begin
          if (!(_T_949)) begin
            if (is_w_end) begin
              if (is_img) begin
                datain_w_ori <= 14'h0;
              end else begin
                datain_w_ori <= _T_987;
              end
            end else begin
              datain_w_ori <= datain_w_cnt_inc;
            end
          end
        end
      end
    end
    if (_T_337) begin
      pixel_w_cnt <= 16'h0;
    end else begin
      if (datain_w_cnt_reg_en) begin
        if (layer_st_d1) begin
          pixel_w_cnt <= {{9'd0}, pixel_x_init};
        end else begin
          if (_T_1023) begin
            pixel_w_cnt <= {{9'd0}, pixel_x_init};
          end else begin
            if (_T_1027) begin
              pixel_w_cnt <= _T_1029;
            end else begin
              if (_T_1031) begin
                pixel_w_cnt <= _T_1033;
              end else begin
                if (_T_1036) begin
                  pixel_w_cnt <= _T_1039;
                end else begin
                  if (_T_1041) begin
                    pixel_w_cnt <= pixel_w_ori;
                  end else begin
                    pixel_w_cnt <= _T_1043;
                  end
                end
              end
            end
          end
        end
      end
    end
    if (_T_337) begin
      pixel_w_ori <= 16'h0;
    end else begin
      if (datain_w_ori_reg_en) begin
        if (layer_st_d1) begin
          pixel_w_ori <= {{9'd0}, pixel_x_init};
        end else begin
          if (_T_1023) begin
            pixel_w_ori <= {{9'd0}, pixel_x_init};
          end else begin
            if (_T_1027) begin
              pixel_w_ori <= _T_1029;
            end else begin
              if (_T_1031) begin
                pixel_w_ori <= _T_1033;
              end else begin
                if (_T_1036) begin
                  pixel_w_ori <= _T_1039;
                end else begin
                  if (!(_T_1041)) begin
                    pixel_w_ori <= _T_1043;
                  end
                end
              end
            end
          end
        end
      end
    end
    if (_T_337) begin
      pixel_w_ch_ori <= 16'h0;
    end else begin
      if (pixel_ch_ori_reg_en) begin
        if (layer_st_d1) begin
          pixel_w_ch_ori <= {{9'd0}, pixel_x_init};
        end else begin
          if (_T_1023) begin
            pixel_w_ch_ori <= {{9'd0}, pixel_x_init};
          end else begin
            if (_T_1027) begin
              pixel_w_ch_ori <= _T_1029;
            end else begin
              if (_T_1031) begin
                pixel_w_ch_ori <= _T_1033;
              end else begin
                if (_T_1036) begin
                  pixel_w_ch_ori <= _T_1039;
                end else begin
                  if (_T_1041) begin
                    pixel_w_ch_ori <= pixel_w_ori;
                  end else begin
                    pixel_w_ch_ori <= _T_1043;
                  end
                end
              end
            end
          end
        end
      end
    end
    if (_T_337) begin
      channel_op_cnt <= 13'h2;
    end else begin
      if (_T_1013) begin
        channel_op_cnt <= 13'h2;
      end else begin
        if (_T_1015) begin
          channel_op_cnt <= _T_1018;
        end
      end
    end
    if (_T_337) begin
      pixel_force_clr_d1 <= 1'h0;
    end else begin
      if (dat_exec_valid) begin
        pixel_force_clr_d1 <= pixel_force_clr;
      end
    end
    if (_T_337) begin
      pixel_force_fetch_d1 <= 1'h0;
    end else begin
      if (dat_exec_valid) begin
        if (_T_1069) begin
          pixel_force_fetch_d1 <= 1'h1;
        end else begin
          if (pixel_force_clr_d1) begin
            pixel_force_fetch_d1 <= 1'h0;
          end
        end
      end
    end
    if (_T_337) begin
      datain_h_cnt <= 14'h0;
    end else begin
      if (datain_h_cnt_reg_en) begin
        if (_T_1085) begin
          datain_h_cnt <= datain_h_cnt_st;
        end else begin
          if (_T_949) begin
            datain_h_cnt <= datain_h_ori;
          end else begin
            if (is_w_end) begin
              datain_h_cnt <= datain_h_cnt_inc;
            end
          end
        end
      end
    end
    if (_T_337) begin
      datain_h_ori <= 14'h0;
    end else begin
      if (dataout_w_ori_reg_en) begin
        if (_T_1085) begin
          datain_h_ori <= datain_h_cnt_st;
        end else begin
          if (!(_T_949)) begin
            if (is_w_end) begin
              datain_h_ori <= datain_h_cnt_inc;
            end else begin
              datain_h_ori <= datain_h_cnt;
            end
          end
        end
      end
    end
    if (_T_337) begin
      dat_req_valid_d1 <= 1'h0;
    end else begin
      dat_req_valid_d1 <= dat_req_valid;
    end
    if (_T_337) begin
      dat_req_sub_w_d1 <= 2'h0;
    end else begin
      if (dat_exec_valid) begin
        dat_req_sub_w_d1 <= dat_req_sub_w_w;
      end
    end
    if (_T_337) begin
      dat_req_sub_h_d1 <= 2'h0;
    end else begin
      if (dat_exec_valid) begin
        dat_req_sub_h_d1 <= sub_h_cnt;
      end
    end
    if (_T_337) begin
      dat_req_sub_c_d1 <= 1'h0;
    end else begin
      if (dat_exec_valid) begin
        if (_T_1123) begin
          dat_req_sub_c_d1 <= _T_1124;
        end else begin
          dat_req_sub_c_d1 <= dl_block_end;
        end
      end
    end
    if (_T_337) begin
      dat_req_ch_end_d1 <= 1'h0;
    end else begin
      if (dat_exec_valid) begin
        dat_req_ch_end_d1 <= is_last_channel;
      end
    end
    if (_T_337) begin
      dat_req_dummy_d1 <= 1'h0;
    end else begin
      if (dat_exec_valid) begin
        if (dl_pvld) begin
          dat_req_dummy_d1 <= 1'h1;
        end else begin
          if (_T_933) begin
            dat_req_dummy_d1 <= 1'h0;
          end else begin
            dat_req_dummy_d1 <= dat_exec_valid_d1;
          end
        end
      end
    end
    if (_T_337) begin
      dat_req_cur_sub_h_d1 <= 2'h0;
    end else begin
      if (dat_exec_valid) begin
        dat_req_cur_sub_h_d1 <= dl_cur_sub_h;
      end
    end
    if (_T_337) begin
      dat_req_sub_w_st_d1 <= 1'h0;
    end else begin
      if (dat_req_sub_w_st_en) begin
        dat_req_sub_w_st_d1 <= dl_pvld;
      end
    end
    if (_T_337) begin
      dat_req_flag_d1 <= 9'h0;
    end else begin
      if (dat_exec_valid) begin
        dat_req_flag_d1 <= dat_req_flag_w;
      end
    end
    if (_T_337) begin
      dat_req_rls_d1 <= 1'h0;
    end else begin
      if (dat_exec_valid) begin
        dat_req_rls_d1 <= _T_1151;
      end
    end
    if (_T_337) begin
      c_bias <= 13'h0;
    end else begin
      if (datain_c_cnt_reg_en) begin
        if (layer_st) begin
          c_bias <= 13'h0;
        end else begin
          if (_T_1171) begin
            c_bias <= 13'h0;
          end else begin
            c_bias <= _T_1174;
          end
        end
      end
    end
    if (_T_337) begin
      c_bias_d1 <= 13'h0;
    end else begin
      if (c_bias_d1_reg_en) begin
        c_bias_d1 <= c_bias;
      end
    end
    if (_T_337) begin
      h_bias_0_d1 <= 13'h0;
    end else begin
      if (_T_1204) begin
        h_bias_0_d1 <= h_bias_0_w;
      end
    end
    if (_T_337) begin
      h_bias_1_d1 <= 13'h0;
    end else begin
      if (_T_1204) begin
        h_bias_1_d1 <= h_bias_1_w;
      end
    end
    if (_T_337) begin
      h_bias_2_d1 <= 13'h0;
    end else begin
      if (_T_1204) begin
        h_bias_2_d1 <= h_bias_2_w;
      end
    end
    if (_T_337) begin
      h_bias_3_d1 <= 13'h0;
    end else begin
      if (_T_1205) begin
        h_bias_3_d1 <= h_bias_3_w;
      end
    end
    if (_T_337) begin
      w_bias_d1 <= 13'h0;
    end else begin
      w_bias_d1 <= _GEN_95[12:0];
    end
    if (_T_337) begin
      dat_req_sub_h_addr_0 <= 13'h1fff;
    end else begin
      dat_req_sub_h_addr_0 <= _GEN_96[12:0];
    end
    if (_T_337) begin
      dat_req_sub_h_addr_1 <= 13'h1fff;
    end else begin
      dat_req_sub_h_addr_1 <= _GEN_97[12:0];
    end
    if (_T_337) begin
      dat_req_sub_h_addr_2 <= 13'h1fff;
    end else begin
      dat_req_sub_h_addr_2 <= _GEN_98[12:0];
    end
    if (_T_337) begin
      dat_req_sub_h_addr_3 <= 13'h1fff;
    end else begin
      dat_req_sub_h_addr_3 <= _GEN_99[12:0];
    end
    if (_T_337) begin
      sc2buf_dat_rd_en_out <= 1'h0;
    end else begin
      sc2buf_dat_rd_en_out <= sc2buf_dat_rd_en_w;
    end
    if (_T_337) begin
      sc2buf_dat_rd_addr_out <= 15'h1fff;
    end else begin
      if (_T_1384) begin
        if (_T_1320) begin
          sc2buf_dat_rd_addr_out <= 15'h1fff;
        end else begin
          if (is_dat_req_addr_wrap) begin
            sc2buf_dat_rd_addr_out <= dat_req_addr_wrap;
          end else begin
            sc2buf_dat_rd_addr_out <= dat_req_addr_sum;
          end
        end
      end
    end
    if (_T_337) begin
      dat_req_pipe_pvld <= 1'h0;
    end else begin
      dat_req_pipe_pvld <= dat_pipe_valid_d1;
    end
    if (_T_337) begin
      dat_req_pipe_sub_w <= 2'h0;
    end else begin
      if (dat_exec_valid_d1) begin
        dat_req_pipe_sub_w <= dat_req_sub_w_d1;
      end
    end
    if (_T_337) begin
      dat_req_pipe_sub_h <= 2'h0;
    end else begin
      if (dat_exec_valid_d1) begin
        dat_req_pipe_sub_h <= dat_req_sub_h_d1;
      end
    end
    if (_T_337) begin
      dat_req_pipe_sub_c <= 1'h0;
    end else begin
      if (dat_exec_valid_d1) begin
        dat_req_pipe_sub_c <= dat_req_sub_c_d1;
      end
    end
    if (_T_337) begin
      dat_req_pipe_ch_end <= 1'h0;
    end else begin
      if (dat_exec_valid_d1) begin
        dat_req_pipe_ch_end <= dat_req_ch_end_d1;
      end
    end
    if (_T_337) begin
      dat_req_pipe_bytes <= 8'h0;
    end else begin
      if (dat_exec_valid_d1) begin
        dat_req_pipe_bytes <= dat_req_bytes_d1;
      end
    end
    if (_T_337) begin
      dat_req_pipe_dummy <= 1'h0;
    end else begin
      if (dat_exec_valid_d1) begin
        dat_req_pipe_dummy <= dat_req_dummy_d1;
      end
    end
    if (_T_337) begin
      dat_req_pipe_cur_sub_h <= 2'h0;
    end else begin
      if (dat_exec_valid_d1) begin
        dat_req_pipe_cur_sub_h <= dat_req_cur_sub_h_d1;
      end
    end
    if (_T_337) begin
      dat_req_pipe_sub_w_st <= 1'h0;
    end else begin
      if (dat_exec_valid_d1) begin
        dat_req_pipe_sub_w_st <= dat_req_sub_w_st_d1;
      end
    end
    if (_T_337) begin
      dat_req_pipe_rls <= 1'h0;
    end else begin
      if (dat_exec_valid_d1) begin
        dat_req_pipe_rls <= dat_req_rls_d1;
      end
    end
    if (_T_337) begin
      dat_req_pipe_flag <= 9'h0;
    end else begin
      if (dat_exec_valid_d1) begin
        dat_req_pipe_flag <= dat_req_flag_d1;
      end else begin
        dat_req_pipe_flag <= {{8'd0}, dat_exec_valid_d1};
      end
    end
    if (_T_337) begin
      _T_1404 <= 1'h0;
    end else begin
      _T_1404 <= dat_req_pipe_pvld;
    end
    if (_T_337) begin
      _T_1407 <= 1'h0;
    end else begin
      _T_1407 <= _T_1404;
    end
    if (_T_337) begin
      _T_1410 <= 1'h0;
    end else begin
      _T_1410 <= _T_1407;
    end
    if (_T_337) begin
      _T_1413 <= 1'h0;
    end else begin
      _T_1413 <= _T_1410;
    end
    if (_T_337) begin
      _T_1416 <= 1'h0;
    end else begin
      _T_1416 <= _T_1413;
    end
    if (_T_337) begin
      dat_rsp_pipe_pvld <= 1'h0;
    end else begin
      dat_rsp_pipe_pvld <= _T_1416;
    end
    if (_T_337) begin
      _T_1423 <= 29'h0;
    end else begin
      if (dat_req_pipe_pvld) begin
        _T_1423 <= dat_req_pipe_pd;
      end
    end
    if (_T_337) begin
      _T_1426 <= 29'h0;
    end else begin
      if (_T_1404) begin
        _T_1426 <= _T_1423;
      end
    end
    if (_T_337) begin
      _T_1429 <= 29'h0;
    end else begin
      if (_T_1407) begin
        _T_1429 <= _T_1426;
      end
    end
    if (_T_337) begin
      _T_1432 <= 29'h0;
    end else begin
      if (_T_1410) begin
        _T_1432 <= _T_1429;
      end
    end
    if (_T_337) begin
      _T_1435 <= 29'h0;
    end else begin
      if (_T_1413) begin
        _T_1435 <= _T_1432;
      end
    end
    if (_T_337) begin
      dat_rsp_pipe_pd <= 29'h0;
    end else begin
      if (_T_1416) begin
        dat_rsp_pipe_pd <= _T_1435;
      end
    end
    if (_T_337) begin
      dat_l0c0_dummy <= 1'h1;
    end else begin
      if (sc2buf_dat_rd_valid) begin
        dat_l0c0_dummy <= 1'h0;
      end
    end
    if (_T_337) begin
      dat_l0c1_dummy <= 1'h1;
    end else begin
      if (dat_l0c1_en) begin
        dat_l0c1_dummy <= 1'h0;
      end else begin
        if (sc2buf_dat_rd_valid) begin
          dat_l0c1_dummy <= dat_l0c0_dummy;
        end
      end
    end
    if (sc2buf_dat_rd_valid) begin
      dat_l0c0 <= sc2buf_dat_rd_data;
    end
    if (dat_l0c1_en) begin
      dat_l0c1 <= dat_l0c0;
    end
    if (_T_337) begin
      rsp_sft_cnt_l0 <= 8'h0;
    end else begin
      if (rsp_sft_cnt_l0_en) begin
        if (layer_st) begin
          rsp_sft_cnt_l0 <= 8'h40;
        end else begin
          if (_T_1712) begin
            rsp_sft_cnt_l0 <= rsp_sft_cnt_l0_ori;
          end else begin
            if (_T_1713) begin
              rsp_sft_cnt_l0 <= 8'h40;
            end else begin
              if (_T_1679) begin
                rsp_sft_cnt_l0 <= 8'h40;
              end else begin
                rsp_sft_cnt_l0 <= _T_1685;
              end
            end
          end
        end
      end
    end
    if (_T_337) begin
      rsp_sft_cnt_l1 <= 8'h0;
    end else begin
      if (rsp_sft_cnt_l1_en) begin
        if (layer_st) begin
          rsp_sft_cnt_l1 <= 8'h40;
        end else begin
          if (_T_1722) begin
            rsp_sft_cnt_l1 <= rsp_sft_cnt_l1_ori;
          end else begin
            if (_T_1723) begin
              rsp_sft_cnt_l1 <= 8'h40;
            end else begin
              if (_T_1679) begin
                rsp_sft_cnt_l1 <= 8'h40;
              end else begin
                rsp_sft_cnt_l1 <= _T_1693;
              end
            end
          end
        end
      end
    end
    if (_T_337) begin
      rsp_sft_cnt_l2 <= 8'h0;
    end else begin
      if (rsp_sft_cnt_l2_en) begin
        if (layer_st) begin
          rsp_sft_cnt_l2 <= 8'h40;
        end else begin
          if (_T_1732) begin
            rsp_sft_cnt_l2 <= rsp_sft_cnt_l2_ori;
          end else begin
            if (_T_1733) begin
              rsp_sft_cnt_l2 <= 8'h40;
            end else begin
              if (_T_1679) begin
                rsp_sft_cnt_l2 <= 8'h40;
              end else begin
                rsp_sft_cnt_l2 <= _T_1701;
              end
            end
          end
        end
      end
    end
    if (_T_337) begin
      rsp_sft_cnt_l3 <= 8'h0;
    end else begin
      if (rsp_sft_cnt_l3_en) begin
        if (layer_st) begin
          rsp_sft_cnt_l3 <= 8'h40;
        end else begin
          if (_T_1742) begin
            rsp_sft_cnt_l3 <= rsp_sft_cnt_l3_ori;
          end else begin
            if (_T_1743) begin
              rsp_sft_cnt_l3 <= 8'h40;
            end else begin
              if (_T_1679) begin
                rsp_sft_cnt_l3 <= 8'h40;
              end else begin
                rsp_sft_cnt_l3 <= _T_1709;
              end
            end
          end
        end
      end
    end
    if (_T_337) begin
      rsp_sft_cnt_l0_ori <= 8'h0;
    end else begin
      if (rsp_sft_cnt_l0_ori_en) begin
        if (layer_st) begin
          rsp_sft_cnt_l0_ori <= 8'h40;
        end else begin
          if (!(_T_1712)) begin
            if (_T_1713) begin
              rsp_sft_cnt_l0_ori <= 8'h40;
            end else begin
              if (_T_1679) begin
                rsp_sft_cnt_l0_ori <= 8'h40;
              end else begin
                rsp_sft_cnt_l0_ori <= _T_1685;
              end
            end
          end
        end
      end
    end
    if (_T_337) begin
      rsp_sft_cnt_l1_ori <= 8'h0;
    end else begin
      if (rsp_sft_cnt_l1_ori_en) begin
        if (layer_st) begin
          rsp_sft_cnt_l1_ori <= 8'h40;
        end else begin
          if (!(_T_1722)) begin
            if (_T_1723) begin
              rsp_sft_cnt_l1_ori <= 8'h40;
            end else begin
              if (_T_1679) begin
                rsp_sft_cnt_l1_ori <= 8'h40;
              end else begin
                rsp_sft_cnt_l1_ori <= _T_1693;
              end
            end
          end
        end
      end
    end
    if (_T_337) begin
      rsp_sft_cnt_l2_ori <= 8'h0;
    end else begin
      if (rsp_sft_cnt_l2_ori_en) begin
        if (layer_st) begin
          rsp_sft_cnt_l2_ori <= 8'h40;
        end else begin
          if (!(_T_1732)) begin
            if (_T_1733) begin
              rsp_sft_cnt_l2_ori <= 8'h40;
            end else begin
              if (_T_1679) begin
                rsp_sft_cnt_l2_ori <= 8'h40;
              end else begin
                rsp_sft_cnt_l2_ori <= _T_1701;
              end
            end
          end
        end
      end
    end
    if (_T_337) begin
      rsp_sft_cnt_l3_ori <= 8'h0;
    end else begin
      if (rsp_sft_cnt_l3_ori_en) begin
        if (layer_st) begin
          rsp_sft_cnt_l3_ori <= 8'h40;
        end else begin
          if (!(_T_1742)) begin
            if (_T_1743) begin
              rsp_sft_cnt_l3_ori <= 8'h40;
            end else begin
              if (_T_1679) begin
                rsp_sft_cnt_l3_ori <= 8'h40;
              end else begin
                rsp_sft_cnt_l3_ori <= _T_1709;
              end
            end
          end
        end
      end
    end
    if (_T_337) begin
      dat_rsp_l2_pvld <= 1'h0;
    end else begin
      dat_rsp_l2_pvld <= dat_rsp_l1_pvld;
    end
    if (_T_337) begin
      _T_1629 <= 27'h0;
    end else begin
      if (dat_rsp_l1_pvld) begin
        _T_1629 <= _T_1626;
      end
    end
    dat_rsp_l0_sft_d1 <= _GEN_149[255:0];
    dat_rsp_l0_sft_d2 <= _GEN_150[127:0];
    if (dat_rsp_sft_d3_en) begin
      dat_rsp_l0_sft_d3 <= dat_rsp_l0_sft_d2;
    end
    dat_rsp_l1_sft_d2 <= _GEN_151[127:0];
    if (dat_rsp_sft_d3_en) begin
      dat_rsp_l1_sft_d3 <= dat_rsp_l1_sft_d2;
    end
    dat_rsp_l2_sft_d3 <= _GEN_154[127:0];
    if (_T_337) begin
      dat_out_pvld <= 1'h0;
    end else begin
      dat_out_pvld <= dat_rsp_pvld;
    end
    if (_T_337) begin
      dat_out_bypass_mask_0 <= 1'h0;
    end else begin
      if (dat_rsp_pvld) begin
        dat_out_bypass_mask_0 <= dat_rsp_mask_w_0;
      end
    end
    if (_T_337) begin
      dat_out_bypass_mask_1 <= 1'h0;
    end else begin
      if (dat_rsp_pvld) begin
        dat_out_bypass_mask_1 <= dat_rsp_mask_w_1;
      end
    end
    if (_T_337) begin
      dat_out_bypass_mask_2 <= 1'h0;
    end else begin
      if (dat_rsp_pvld) begin
        dat_out_bypass_mask_2 <= dat_rsp_mask_w_2;
      end
    end
    if (_T_337) begin
      dat_out_bypass_mask_3 <= 1'h0;
    end else begin
      if (dat_rsp_pvld) begin
        dat_out_bypass_mask_3 <= dat_rsp_mask_w_3;
      end
    end
    if (_T_337) begin
      dat_out_bypass_mask_4 <= 1'h0;
    end else begin
      if (dat_rsp_pvld) begin
        dat_out_bypass_mask_4 <= dat_rsp_mask_w_4;
      end
    end
    if (_T_337) begin
      dat_out_bypass_mask_5 <= 1'h0;
    end else begin
      if (dat_rsp_pvld) begin
        dat_out_bypass_mask_5 <= dat_rsp_mask_w_5;
      end
    end
    if (_T_337) begin
      dat_out_bypass_mask_6 <= 1'h0;
    end else begin
      if (dat_rsp_pvld) begin
        dat_out_bypass_mask_6 <= dat_rsp_mask_w_6;
      end
    end
    if (_T_337) begin
      dat_out_bypass_mask_7 <= 1'h0;
    end else begin
      if (dat_rsp_pvld) begin
        dat_out_bypass_mask_7 <= dat_rsp_mask_w_7;
      end
    end
    if (_T_337) begin
      dat_out_bypass_mask_8 <= 1'h0;
    end else begin
      if (dat_rsp_pvld) begin
        dat_out_bypass_mask_8 <= dat_rsp_mask_w_8;
      end
    end
    if (_T_337) begin
      dat_out_bypass_mask_9 <= 1'h0;
    end else begin
      if (dat_rsp_pvld) begin
        dat_out_bypass_mask_9 <= dat_rsp_mask_w_9;
      end
    end
    if (_T_337) begin
      dat_out_bypass_mask_10 <= 1'h0;
    end else begin
      if (dat_rsp_pvld) begin
        dat_out_bypass_mask_10 <= dat_rsp_mask_w_10;
      end
    end
    if (_T_337) begin
      dat_out_bypass_mask_11 <= 1'h0;
    end else begin
      if (dat_rsp_pvld) begin
        dat_out_bypass_mask_11 <= dat_rsp_mask_w_11;
      end
    end
    if (_T_337) begin
      dat_out_bypass_mask_12 <= 1'h0;
    end else begin
      if (dat_rsp_pvld) begin
        dat_out_bypass_mask_12 <= dat_rsp_mask_w_12;
      end
    end
    if (_T_337) begin
      dat_out_bypass_mask_13 <= 1'h0;
    end else begin
      if (dat_rsp_pvld) begin
        dat_out_bypass_mask_13 <= dat_rsp_mask_w_13;
      end
    end
    if (_T_337) begin
      dat_out_bypass_mask_14 <= 1'h0;
    end else begin
      if (dat_rsp_pvld) begin
        dat_out_bypass_mask_14 <= dat_rsp_mask_w_14;
      end
    end
    if (_T_337) begin
      dat_out_bypass_mask_15 <= 1'h0;
    end else begin
      if (dat_rsp_pvld) begin
        dat_out_bypass_mask_15 <= dat_rsp_mask_w_15;
      end
    end
    if (_T_337) begin
      dat_out_bypass_mask_16 <= 1'h0;
    end else begin
      if (dat_rsp_pvld) begin
        dat_out_bypass_mask_16 <= dat_rsp_mask_w_16;
      end
    end
    if (_T_337) begin
      dat_out_bypass_mask_17 <= 1'h0;
    end else begin
      if (dat_rsp_pvld) begin
        dat_out_bypass_mask_17 <= dat_rsp_mask_w_17;
      end
    end
    if (_T_337) begin
      dat_out_bypass_mask_18 <= 1'h0;
    end else begin
      if (dat_rsp_pvld) begin
        dat_out_bypass_mask_18 <= dat_rsp_mask_w_18;
      end
    end
    if (_T_337) begin
      dat_out_bypass_mask_19 <= 1'h0;
    end else begin
      if (dat_rsp_pvld) begin
        dat_out_bypass_mask_19 <= dat_rsp_mask_w_19;
      end
    end
    if (_T_337) begin
      dat_out_bypass_mask_20 <= 1'h0;
    end else begin
      if (dat_rsp_pvld) begin
        dat_out_bypass_mask_20 <= dat_rsp_mask_w_20;
      end
    end
    if (_T_337) begin
      dat_out_bypass_mask_21 <= 1'h0;
    end else begin
      if (dat_rsp_pvld) begin
        dat_out_bypass_mask_21 <= dat_rsp_mask_w_21;
      end
    end
    if (_T_337) begin
      dat_out_bypass_mask_22 <= 1'h0;
    end else begin
      if (dat_rsp_pvld) begin
        dat_out_bypass_mask_22 <= dat_rsp_mask_w_22;
      end
    end
    if (_T_337) begin
      dat_out_bypass_mask_23 <= 1'h0;
    end else begin
      if (dat_rsp_pvld) begin
        dat_out_bypass_mask_23 <= dat_rsp_mask_w_23;
      end
    end
    if (_T_337) begin
      dat_out_bypass_mask_24 <= 1'h0;
    end else begin
      if (dat_rsp_pvld) begin
        dat_out_bypass_mask_24 <= dat_rsp_mask_w_24;
      end
    end
    if (_T_337) begin
      dat_out_bypass_mask_25 <= 1'h0;
    end else begin
      if (dat_rsp_pvld) begin
        dat_out_bypass_mask_25 <= dat_rsp_mask_w_25;
      end
    end
    if (_T_337) begin
      dat_out_bypass_mask_26 <= 1'h0;
    end else begin
      if (dat_rsp_pvld) begin
        dat_out_bypass_mask_26 <= dat_rsp_mask_w_26;
      end
    end
    if (_T_337) begin
      dat_out_bypass_mask_27 <= 1'h0;
    end else begin
      if (dat_rsp_pvld) begin
        dat_out_bypass_mask_27 <= dat_rsp_mask_w_27;
      end
    end
    if (_T_337) begin
      dat_out_bypass_mask_28 <= 1'h0;
    end else begin
      if (dat_rsp_pvld) begin
        dat_out_bypass_mask_28 <= dat_rsp_mask_w_28;
      end
    end
    if (_T_337) begin
      dat_out_bypass_mask_29 <= 1'h0;
    end else begin
      if (dat_rsp_pvld) begin
        dat_out_bypass_mask_29 <= dat_rsp_mask_w_29;
      end
    end
    if (_T_337) begin
      dat_out_bypass_mask_30 <= 1'h0;
    end else begin
      if (dat_rsp_pvld) begin
        dat_out_bypass_mask_30 <= dat_rsp_mask_w_30;
      end
    end
    if (_T_337) begin
      dat_out_bypass_mask_31 <= 1'h0;
    end else begin
      if (dat_rsp_pvld) begin
        dat_out_bypass_mask_31 <= dat_rsp_mask_w_31;
      end
    end
    if (_T_337) begin
      dat_out_bypass_mask_32 <= 1'h0;
    end else begin
      if (dat_rsp_pvld) begin
        dat_out_bypass_mask_32 <= dat_rsp_mask_w_32;
      end
    end
    if (_T_337) begin
      dat_out_bypass_mask_33 <= 1'h0;
    end else begin
      if (dat_rsp_pvld) begin
        dat_out_bypass_mask_33 <= dat_rsp_mask_w_33;
      end
    end
    if (_T_337) begin
      dat_out_bypass_mask_34 <= 1'h0;
    end else begin
      if (dat_rsp_pvld) begin
        dat_out_bypass_mask_34 <= dat_rsp_mask_w_34;
      end
    end
    if (_T_337) begin
      dat_out_bypass_mask_35 <= 1'h0;
    end else begin
      if (dat_rsp_pvld) begin
        dat_out_bypass_mask_35 <= dat_rsp_mask_w_35;
      end
    end
    if (_T_337) begin
      dat_out_bypass_mask_36 <= 1'h0;
    end else begin
      if (dat_rsp_pvld) begin
        dat_out_bypass_mask_36 <= dat_rsp_mask_w_36;
      end
    end
    if (_T_337) begin
      dat_out_bypass_mask_37 <= 1'h0;
    end else begin
      if (dat_rsp_pvld) begin
        dat_out_bypass_mask_37 <= dat_rsp_mask_w_37;
      end
    end
    if (_T_337) begin
      dat_out_bypass_mask_38 <= 1'h0;
    end else begin
      if (dat_rsp_pvld) begin
        dat_out_bypass_mask_38 <= dat_rsp_mask_w_38;
      end
    end
    if (_T_337) begin
      dat_out_bypass_mask_39 <= 1'h0;
    end else begin
      if (dat_rsp_pvld) begin
        dat_out_bypass_mask_39 <= dat_rsp_mask_w_39;
      end
    end
    if (_T_337) begin
      dat_out_bypass_mask_40 <= 1'h0;
    end else begin
      if (dat_rsp_pvld) begin
        dat_out_bypass_mask_40 <= dat_rsp_mask_w_40;
      end
    end
    if (_T_337) begin
      dat_out_bypass_mask_41 <= 1'h0;
    end else begin
      if (dat_rsp_pvld) begin
        dat_out_bypass_mask_41 <= dat_rsp_mask_w_41;
      end
    end
    if (_T_337) begin
      dat_out_bypass_mask_42 <= 1'h0;
    end else begin
      if (dat_rsp_pvld) begin
        dat_out_bypass_mask_42 <= dat_rsp_mask_w_42;
      end
    end
    if (_T_337) begin
      dat_out_bypass_mask_43 <= 1'h0;
    end else begin
      if (dat_rsp_pvld) begin
        dat_out_bypass_mask_43 <= dat_rsp_mask_w_43;
      end
    end
    if (_T_337) begin
      dat_out_bypass_mask_44 <= 1'h0;
    end else begin
      if (dat_rsp_pvld) begin
        dat_out_bypass_mask_44 <= dat_rsp_mask_w_44;
      end
    end
    if (_T_337) begin
      dat_out_bypass_mask_45 <= 1'h0;
    end else begin
      if (dat_rsp_pvld) begin
        dat_out_bypass_mask_45 <= dat_rsp_mask_w_45;
      end
    end
    if (_T_337) begin
      dat_out_bypass_mask_46 <= 1'h0;
    end else begin
      if (dat_rsp_pvld) begin
        dat_out_bypass_mask_46 <= dat_rsp_mask_w_46;
      end
    end
    if (_T_337) begin
      dat_out_bypass_mask_47 <= 1'h0;
    end else begin
      if (dat_rsp_pvld) begin
        dat_out_bypass_mask_47 <= dat_rsp_mask_w_47;
      end
    end
    if (_T_337) begin
      dat_out_bypass_mask_48 <= 1'h0;
    end else begin
      if (dat_rsp_pvld) begin
        dat_out_bypass_mask_48 <= dat_rsp_mask_w_48;
      end
    end
    if (_T_337) begin
      dat_out_bypass_mask_49 <= 1'h0;
    end else begin
      if (dat_rsp_pvld) begin
        dat_out_bypass_mask_49 <= dat_rsp_mask_w_49;
      end
    end
    if (_T_337) begin
      dat_out_bypass_mask_50 <= 1'h0;
    end else begin
      if (dat_rsp_pvld) begin
        dat_out_bypass_mask_50 <= dat_rsp_mask_w_50;
      end
    end
    if (_T_337) begin
      dat_out_bypass_mask_51 <= 1'h0;
    end else begin
      if (dat_rsp_pvld) begin
        dat_out_bypass_mask_51 <= dat_rsp_mask_w_51;
      end
    end
    if (_T_337) begin
      dat_out_bypass_mask_52 <= 1'h0;
    end else begin
      if (dat_rsp_pvld) begin
        dat_out_bypass_mask_52 <= dat_rsp_mask_w_52;
      end
    end
    if (_T_337) begin
      dat_out_bypass_mask_53 <= 1'h0;
    end else begin
      if (dat_rsp_pvld) begin
        dat_out_bypass_mask_53 <= dat_rsp_mask_w_53;
      end
    end
    if (_T_337) begin
      dat_out_bypass_mask_54 <= 1'h0;
    end else begin
      if (dat_rsp_pvld) begin
        dat_out_bypass_mask_54 <= dat_rsp_mask_w_54;
      end
    end
    if (_T_337) begin
      dat_out_bypass_mask_55 <= 1'h0;
    end else begin
      if (dat_rsp_pvld) begin
        dat_out_bypass_mask_55 <= dat_rsp_mask_w_55;
      end
    end
    if (_T_337) begin
      dat_out_bypass_mask_56 <= 1'h0;
    end else begin
      if (dat_rsp_pvld) begin
        dat_out_bypass_mask_56 <= dat_rsp_mask_w_56;
      end
    end
    if (_T_337) begin
      dat_out_bypass_mask_57 <= 1'h0;
    end else begin
      if (dat_rsp_pvld) begin
        dat_out_bypass_mask_57 <= dat_rsp_mask_w_57;
      end
    end
    if (_T_337) begin
      dat_out_bypass_mask_58 <= 1'h0;
    end else begin
      if (dat_rsp_pvld) begin
        dat_out_bypass_mask_58 <= dat_rsp_mask_w_58;
      end
    end
    if (_T_337) begin
      dat_out_bypass_mask_59 <= 1'h0;
    end else begin
      if (dat_rsp_pvld) begin
        dat_out_bypass_mask_59 <= dat_rsp_mask_w_59;
      end
    end
    if (_T_337) begin
      dat_out_bypass_mask_60 <= 1'h0;
    end else begin
      if (dat_rsp_pvld) begin
        dat_out_bypass_mask_60 <= dat_rsp_mask_w_60;
      end
    end
    if (_T_337) begin
      dat_out_bypass_mask_61 <= 1'h0;
    end else begin
      if (dat_rsp_pvld) begin
        dat_out_bypass_mask_61 <= dat_rsp_mask_w_61;
      end
    end
    if (_T_337) begin
      dat_out_bypass_mask_62 <= 1'h0;
    end else begin
      if (dat_rsp_pvld) begin
        dat_out_bypass_mask_62 <= dat_rsp_mask_w_62;
      end
    end
    if (_T_337) begin
      dat_out_bypass_mask_63 <= 1'h0;
    end else begin
      if (dat_rsp_pvld) begin
        dat_out_bypass_mask_63 <= dat_rsp_mask_w_63;
      end
    end
    if (_T_3268) begin
      if (_T_2207) begin
        dat_out_bypass_data_0 <= dat_rsp_img_0;
      end else begin
        dat_out_bypass_data_0 <= dat_rsp_conv_0;
      end
    end
    if (_T_3269) begin
      if (_T_2207) begin
        dat_out_bypass_data_1 <= dat_rsp_img_1;
      end else begin
        dat_out_bypass_data_1 <= dat_rsp_conv_1;
      end
    end
    if (_T_3270) begin
      if (_T_2207) begin
        dat_out_bypass_data_2 <= dat_rsp_img_2;
      end else begin
        dat_out_bypass_data_2 <= dat_rsp_conv_2;
      end
    end
    if (_T_3271) begin
      if (_T_2207) begin
        dat_out_bypass_data_3 <= dat_rsp_img_3;
      end else begin
        dat_out_bypass_data_3 <= dat_rsp_conv_3;
      end
    end
    if (_T_3272) begin
      if (_T_2207) begin
        dat_out_bypass_data_4 <= dat_rsp_img_4;
      end else begin
        dat_out_bypass_data_4 <= dat_rsp_conv_4;
      end
    end
    if (_T_3273) begin
      if (_T_2207) begin
        dat_out_bypass_data_5 <= dat_rsp_img_5;
      end else begin
        dat_out_bypass_data_5 <= dat_rsp_conv_5;
      end
    end
    if (_T_3274) begin
      if (_T_2207) begin
        dat_out_bypass_data_6 <= dat_rsp_img_6;
      end else begin
        dat_out_bypass_data_6 <= dat_rsp_conv_6;
      end
    end
    if (_T_3275) begin
      if (_T_2207) begin
        dat_out_bypass_data_7 <= dat_rsp_img_7;
      end else begin
        dat_out_bypass_data_7 <= dat_rsp_conv_7;
      end
    end
    if (_T_3276) begin
      if (_T_2207) begin
        dat_out_bypass_data_8 <= dat_rsp_img_8;
      end else begin
        dat_out_bypass_data_8 <= dat_rsp_conv_8;
      end
    end
    if (_T_3277) begin
      if (_T_2207) begin
        dat_out_bypass_data_9 <= dat_rsp_img_9;
      end else begin
        dat_out_bypass_data_9 <= dat_rsp_conv_9;
      end
    end
    if (_T_3278) begin
      if (_T_2207) begin
        dat_out_bypass_data_10 <= dat_rsp_img_10;
      end else begin
        dat_out_bypass_data_10 <= dat_rsp_conv_10;
      end
    end
    if (_T_3279) begin
      if (_T_2207) begin
        dat_out_bypass_data_11 <= dat_rsp_img_11;
      end else begin
        dat_out_bypass_data_11 <= dat_rsp_conv_11;
      end
    end
    if (_T_3280) begin
      if (_T_2207) begin
        dat_out_bypass_data_12 <= dat_rsp_img_12;
      end else begin
        dat_out_bypass_data_12 <= dat_rsp_conv_12;
      end
    end
    if (_T_3281) begin
      if (_T_2207) begin
        dat_out_bypass_data_13 <= dat_rsp_img_13;
      end else begin
        dat_out_bypass_data_13 <= dat_rsp_conv_13;
      end
    end
    if (_T_3282) begin
      if (_T_2207) begin
        dat_out_bypass_data_14 <= dat_rsp_img_14;
      end else begin
        dat_out_bypass_data_14 <= dat_rsp_conv_14;
      end
    end
    if (_T_3283) begin
      if (_T_2207) begin
        dat_out_bypass_data_15 <= dat_rsp_img_15;
      end else begin
        dat_out_bypass_data_15 <= dat_rsp_conv_15;
      end
    end
    if (_T_3284) begin
      if (_T_2207) begin
        dat_out_bypass_data_16 <= dat_rsp_img_16;
      end else begin
        dat_out_bypass_data_16 <= dat_rsp_conv_16;
      end
    end
    if (_T_3285) begin
      if (_T_2207) begin
        dat_out_bypass_data_17 <= dat_rsp_img_17;
      end else begin
        dat_out_bypass_data_17 <= dat_rsp_conv_17;
      end
    end
    if (_T_3286) begin
      if (_T_2207) begin
        dat_out_bypass_data_18 <= dat_rsp_img_18;
      end else begin
        dat_out_bypass_data_18 <= dat_rsp_conv_18;
      end
    end
    if (_T_3287) begin
      if (_T_2207) begin
        dat_out_bypass_data_19 <= dat_rsp_img_19;
      end else begin
        dat_out_bypass_data_19 <= dat_rsp_conv_19;
      end
    end
    if (_T_3288) begin
      if (_T_2207) begin
        dat_out_bypass_data_20 <= dat_rsp_img_20;
      end else begin
        dat_out_bypass_data_20 <= dat_rsp_conv_20;
      end
    end
    if (_T_3289) begin
      if (_T_2207) begin
        dat_out_bypass_data_21 <= dat_rsp_img_21;
      end else begin
        dat_out_bypass_data_21 <= dat_rsp_conv_21;
      end
    end
    if (_T_3290) begin
      if (_T_2207) begin
        dat_out_bypass_data_22 <= dat_rsp_img_22;
      end else begin
        dat_out_bypass_data_22 <= dat_rsp_conv_22;
      end
    end
    if (_T_3291) begin
      if (_T_2207) begin
        dat_out_bypass_data_23 <= dat_rsp_img_23;
      end else begin
        dat_out_bypass_data_23 <= dat_rsp_conv_23;
      end
    end
    if (_T_3292) begin
      if (_T_2207) begin
        dat_out_bypass_data_24 <= dat_rsp_img_24;
      end else begin
        dat_out_bypass_data_24 <= dat_rsp_conv_24;
      end
    end
    if (_T_3293) begin
      if (_T_2207) begin
        dat_out_bypass_data_25 <= dat_rsp_img_25;
      end else begin
        dat_out_bypass_data_25 <= dat_rsp_conv_25;
      end
    end
    if (_T_3294) begin
      if (_T_2207) begin
        dat_out_bypass_data_26 <= dat_rsp_img_26;
      end else begin
        dat_out_bypass_data_26 <= dat_rsp_conv_26;
      end
    end
    if (_T_3295) begin
      if (_T_2207) begin
        dat_out_bypass_data_27 <= dat_rsp_img_27;
      end else begin
        dat_out_bypass_data_27 <= dat_rsp_conv_27;
      end
    end
    if (_T_3296) begin
      if (_T_2207) begin
        dat_out_bypass_data_28 <= dat_rsp_img_28;
      end else begin
        dat_out_bypass_data_28 <= dat_rsp_conv_28;
      end
    end
    if (_T_3297) begin
      if (_T_2207) begin
        dat_out_bypass_data_29 <= dat_rsp_img_29;
      end else begin
        dat_out_bypass_data_29 <= dat_rsp_conv_29;
      end
    end
    if (_T_3298) begin
      if (_T_2207) begin
        dat_out_bypass_data_30 <= dat_rsp_img_30;
      end else begin
        dat_out_bypass_data_30 <= dat_rsp_conv_30;
      end
    end
    if (_T_3299) begin
      if (_T_2207) begin
        dat_out_bypass_data_31 <= dat_rsp_img_31;
      end else begin
        dat_out_bypass_data_31 <= dat_rsp_conv_31;
      end
    end
    if (_T_3300) begin
      if (_T_2207) begin
        dat_out_bypass_data_32 <= dat_rsp_img_32;
      end else begin
        dat_out_bypass_data_32 <= dat_rsp_conv_32;
      end
    end
    if (_T_3301) begin
      if (_T_2207) begin
        dat_out_bypass_data_33 <= dat_rsp_img_33;
      end else begin
        dat_out_bypass_data_33 <= dat_rsp_conv_33;
      end
    end
    if (_T_3302) begin
      if (_T_2207) begin
        dat_out_bypass_data_34 <= dat_rsp_img_34;
      end else begin
        dat_out_bypass_data_34 <= dat_rsp_conv_34;
      end
    end
    if (_T_3303) begin
      if (_T_2207) begin
        dat_out_bypass_data_35 <= dat_rsp_img_35;
      end else begin
        dat_out_bypass_data_35 <= dat_rsp_conv_35;
      end
    end
    if (_T_3304) begin
      if (_T_2207) begin
        dat_out_bypass_data_36 <= dat_rsp_img_36;
      end else begin
        dat_out_bypass_data_36 <= dat_rsp_conv_36;
      end
    end
    if (_T_3305) begin
      if (_T_2207) begin
        dat_out_bypass_data_37 <= dat_rsp_img_37;
      end else begin
        dat_out_bypass_data_37 <= dat_rsp_conv_37;
      end
    end
    if (_T_3306) begin
      if (_T_2207) begin
        dat_out_bypass_data_38 <= dat_rsp_img_38;
      end else begin
        dat_out_bypass_data_38 <= dat_rsp_conv_38;
      end
    end
    if (_T_3307) begin
      if (_T_2207) begin
        dat_out_bypass_data_39 <= dat_rsp_img_39;
      end else begin
        dat_out_bypass_data_39 <= dat_rsp_conv_39;
      end
    end
    if (_T_3308) begin
      if (_T_2207) begin
        dat_out_bypass_data_40 <= dat_rsp_img_40;
      end else begin
        dat_out_bypass_data_40 <= dat_rsp_conv_40;
      end
    end
    if (_T_3309) begin
      if (_T_2207) begin
        dat_out_bypass_data_41 <= dat_rsp_img_41;
      end else begin
        dat_out_bypass_data_41 <= dat_rsp_conv_41;
      end
    end
    if (_T_3310) begin
      if (_T_2207) begin
        dat_out_bypass_data_42 <= dat_rsp_img_42;
      end else begin
        dat_out_bypass_data_42 <= dat_rsp_conv_42;
      end
    end
    if (_T_3311) begin
      if (_T_2207) begin
        dat_out_bypass_data_43 <= dat_rsp_img_43;
      end else begin
        dat_out_bypass_data_43 <= dat_rsp_conv_43;
      end
    end
    if (_T_3312) begin
      if (_T_2207) begin
        dat_out_bypass_data_44 <= dat_rsp_img_44;
      end else begin
        dat_out_bypass_data_44 <= dat_rsp_conv_44;
      end
    end
    if (_T_3313) begin
      if (_T_2207) begin
        dat_out_bypass_data_45 <= dat_rsp_img_45;
      end else begin
        dat_out_bypass_data_45 <= dat_rsp_conv_45;
      end
    end
    if (_T_3314) begin
      if (_T_2207) begin
        dat_out_bypass_data_46 <= dat_rsp_img_46;
      end else begin
        dat_out_bypass_data_46 <= dat_rsp_conv_46;
      end
    end
    if (_T_3315) begin
      if (_T_2207) begin
        dat_out_bypass_data_47 <= dat_rsp_img_47;
      end else begin
        dat_out_bypass_data_47 <= dat_rsp_conv_47;
      end
    end
    if (_T_3316) begin
      if (_T_2207) begin
        dat_out_bypass_data_48 <= dat_rsp_img_48;
      end else begin
        dat_out_bypass_data_48 <= dat_rsp_conv_48;
      end
    end
    if (_T_3317) begin
      if (_T_2207) begin
        dat_out_bypass_data_49 <= dat_rsp_img_49;
      end else begin
        dat_out_bypass_data_49 <= dat_rsp_conv_49;
      end
    end
    if (_T_3318) begin
      if (_T_2207) begin
        dat_out_bypass_data_50 <= dat_rsp_img_50;
      end else begin
        dat_out_bypass_data_50 <= dat_rsp_conv_50;
      end
    end
    if (_T_3319) begin
      if (_T_2207) begin
        dat_out_bypass_data_51 <= dat_rsp_img_51;
      end else begin
        dat_out_bypass_data_51 <= dat_rsp_conv_51;
      end
    end
    if (_T_3320) begin
      if (_T_2207) begin
        dat_out_bypass_data_52 <= dat_rsp_img_52;
      end else begin
        dat_out_bypass_data_52 <= dat_rsp_conv_52;
      end
    end
    if (_T_3321) begin
      if (_T_2207) begin
        dat_out_bypass_data_53 <= dat_rsp_img_53;
      end else begin
        dat_out_bypass_data_53 <= dat_rsp_conv_53;
      end
    end
    if (_T_3322) begin
      if (_T_2207) begin
        dat_out_bypass_data_54 <= dat_rsp_img_54;
      end else begin
        dat_out_bypass_data_54 <= dat_rsp_conv_54;
      end
    end
    if (_T_3323) begin
      if (_T_2207) begin
        dat_out_bypass_data_55 <= dat_rsp_img_55;
      end else begin
        dat_out_bypass_data_55 <= dat_rsp_conv_55;
      end
    end
    if (_T_3324) begin
      if (_T_2207) begin
        dat_out_bypass_data_56 <= dat_rsp_img_56;
      end else begin
        dat_out_bypass_data_56 <= dat_rsp_conv_56;
      end
    end
    if (_T_3325) begin
      if (_T_2207) begin
        dat_out_bypass_data_57 <= dat_rsp_img_57;
      end else begin
        dat_out_bypass_data_57 <= dat_rsp_conv_57;
      end
    end
    if (_T_3326) begin
      if (_T_2207) begin
        dat_out_bypass_data_58 <= dat_rsp_img_58;
      end else begin
        dat_out_bypass_data_58 <= dat_rsp_conv_58;
      end
    end
    if (_T_3327) begin
      if (_T_2207) begin
        dat_out_bypass_data_59 <= dat_rsp_img_59;
      end else begin
        dat_out_bypass_data_59 <= dat_rsp_conv_59;
      end
    end
    if (_T_3328) begin
      if (_T_2207) begin
        dat_out_bypass_data_60 <= dat_rsp_img_60;
      end else begin
        dat_out_bypass_data_60 <= dat_rsp_conv_60;
      end
    end
    if (_T_3329) begin
      if (_T_2207) begin
        dat_out_bypass_data_61 <= dat_rsp_img_61;
      end else begin
        dat_out_bypass_data_61 <= dat_rsp_conv_61;
      end
    end
    if (_T_3330) begin
      if (_T_2207) begin
        dat_out_bypass_data_62 <= dat_rsp_img_62;
      end else begin
        dat_out_bypass_data_62 <= dat_rsp_conv_62;
      end
    end
    if (_T_3331) begin
      if (_T_2207) begin
        dat_out_bypass_data_63 <= dat_rsp_img_63;
      end else begin
        dat_out_bypass_data_63 <= dat_rsp_conv_63;
      end
    end
    if (_T_337) begin
      dl_out_pvld <= 1'h0;
    end else begin
      dl_out_pvld <= dat_out_pvld;
    end
    if (_T_337) begin
      dl_out_mask_0 <= 1'h0;
    end else begin
      if (_T_4133) begin
        if (_T_3867) begin
          dl_out_mask_0 <= 1'h0;
        end else begin
          dl_out_mask_0 <= dat_out_bypass_mask_0;
        end
      end
    end
    if (_T_337) begin
      dl_out_mask_1 <= 1'h0;
    end else begin
      if (_T_4133) begin
        if (_T_3867) begin
          dl_out_mask_1 <= 1'h0;
        end else begin
          dl_out_mask_1 <= dat_out_bypass_mask_1;
        end
      end
    end
    if (_T_337) begin
      dl_out_mask_2 <= 1'h0;
    end else begin
      if (_T_4133) begin
        if (_T_3867) begin
          dl_out_mask_2 <= 1'h0;
        end else begin
          dl_out_mask_2 <= dat_out_bypass_mask_2;
        end
      end
    end
    if (_T_337) begin
      dl_out_mask_3 <= 1'h0;
    end else begin
      if (_T_4133) begin
        if (_T_3867) begin
          dl_out_mask_3 <= 1'h0;
        end else begin
          dl_out_mask_3 <= dat_out_bypass_mask_3;
        end
      end
    end
    if (_T_337) begin
      dl_out_mask_4 <= 1'h0;
    end else begin
      if (_T_4133) begin
        if (_T_3867) begin
          dl_out_mask_4 <= 1'h0;
        end else begin
          dl_out_mask_4 <= dat_out_bypass_mask_4;
        end
      end
    end
    if (_T_337) begin
      dl_out_mask_5 <= 1'h0;
    end else begin
      if (_T_4133) begin
        if (_T_3867) begin
          dl_out_mask_5 <= 1'h0;
        end else begin
          dl_out_mask_5 <= dat_out_bypass_mask_5;
        end
      end
    end
    if (_T_337) begin
      dl_out_mask_6 <= 1'h0;
    end else begin
      if (_T_4133) begin
        if (_T_3867) begin
          dl_out_mask_6 <= 1'h0;
        end else begin
          dl_out_mask_6 <= dat_out_bypass_mask_6;
        end
      end
    end
    if (_T_337) begin
      dl_out_mask_7 <= 1'h0;
    end else begin
      if (_T_4133) begin
        if (_T_3867) begin
          dl_out_mask_7 <= 1'h0;
        end else begin
          dl_out_mask_7 <= dat_out_bypass_mask_7;
        end
      end
    end
    if (_T_337) begin
      dl_out_mask_8 <= 1'h0;
    end else begin
      if (_T_4133) begin
        if (_T_3867) begin
          dl_out_mask_8 <= 1'h0;
        end else begin
          dl_out_mask_8 <= dat_out_bypass_mask_8;
        end
      end
    end
    if (_T_337) begin
      dl_out_mask_9 <= 1'h0;
    end else begin
      if (_T_4133) begin
        if (_T_3867) begin
          dl_out_mask_9 <= 1'h0;
        end else begin
          dl_out_mask_9 <= dat_out_bypass_mask_9;
        end
      end
    end
    if (_T_337) begin
      dl_out_mask_10 <= 1'h0;
    end else begin
      if (_T_4133) begin
        if (_T_3867) begin
          dl_out_mask_10 <= 1'h0;
        end else begin
          dl_out_mask_10 <= dat_out_bypass_mask_10;
        end
      end
    end
    if (_T_337) begin
      dl_out_mask_11 <= 1'h0;
    end else begin
      if (_T_4133) begin
        if (_T_3867) begin
          dl_out_mask_11 <= 1'h0;
        end else begin
          dl_out_mask_11 <= dat_out_bypass_mask_11;
        end
      end
    end
    if (_T_337) begin
      dl_out_mask_12 <= 1'h0;
    end else begin
      if (_T_4133) begin
        if (_T_3867) begin
          dl_out_mask_12 <= 1'h0;
        end else begin
          dl_out_mask_12 <= dat_out_bypass_mask_12;
        end
      end
    end
    if (_T_337) begin
      dl_out_mask_13 <= 1'h0;
    end else begin
      if (_T_4133) begin
        if (_T_3867) begin
          dl_out_mask_13 <= 1'h0;
        end else begin
          dl_out_mask_13 <= dat_out_bypass_mask_13;
        end
      end
    end
    if (_T_337) begin
      dl_out_mask_14 <= 1'h0;
    end else begin
      if (_T_4133) begin
        if (_T_3867) begin
          dl_out_mask_14 <= 1'h0;
        end else begin
          dl_out_mask_14 <= dat_out_bypass_mask_14;
        end
      end
    end
    if (_T_337) begin
      dl_out_mask_15 <= 1'h0;
    end else begin
      if (_T_4133) begin
        if (_T_3867) begin
          dl_out_mask_15 <= 1'h0;
        end else begin
          dl_out_mask_15 <= dat_out_bypass_mask_15;
        end
      end
    end
    if (_T_337) begin
      dl_out_mask_16 <= 1'h0;
    end else begin
      if (_T_4133) begin
        if (_T_3867) begin
          dl_out_mask_16 <= 1'h0;
        end else begin
          dl_out_mask_16 <= dat_out_bypass_mask_16;
        end
      end
    end
    if (_T_337) begin
      dl_out_mask_17 <= 1'h0;
    end else begin
      if (_T_4133) begin
        if (_T_3867) begin
          dl_out_mask_17 <= 1'h0;
        end else begin
          dl_out_mask_17 <= dat_out_bypass_mask_17;
        end
      end
    end
    if (_T_337) begin
      dl_out_mask_18 <= 1'h0;
    end else begin
      if (_T_4133) begin
        if (_T_3867) begin
          dl_out_mask_18 <= 1'h0;
        end else begin
          dl_out_mask_18 <= dat_out_bypass_mask_18;
        end
      end
    end
    if (_T_337) begin
      dl_out_mask_19 <= 1'h0;
    end else begin
      if (_T_4133) begin
        if (_T_3867) begin
          dl_out_mask_19 <= 1'h0;
        end else begin
          dl_out_mask_19 <= dat_out_bypass_mask_19;
        end
      end
    end
    if (_T_337) begin
      dl_out_mask_20 <= 1'h0;
    end else begin
      if (_T_4133) begin
        if (_T_3867) begin
          dl_out_mask_20 <= 1'h0;
        end else begin
          dl_out_mask_20 <= dat_out_bypass_mask_20;
        end
      end
    end
    if (_T_337) begin
      dl_out_mask_21 <= 1'h0;
    end else begin
      if (_T_4133) begin
        if (_T_3867) begin
          dl_out_mask_21 <= 1'h0;
        end else begin
          dl_out_mask_21 <= dat_out_bypass_mask_21;
        end
      end
    end
    if (_T_337) begin
      dl_out_mask_22 <= 1'h0;
    end else begin
      if (_T_4133) begin
        if (_T_3867) begin
          dl_out_mask_22 <= 1'h0;
        end else begin
          dl_out_mask_22 <= dat_out_bypass_mask_22;
        end
      end
    end
    if (_T_337) begin
      dl_out_mask_23 <= 1'h0;
    end else begin
      if (_T_4133) begin
        if (_T_3867) begin
          dl_out_mask_23 <= 1'h0;
        end else begin
          dl_out_mask_23 <= dat_out_bypass_mask_23;
        end
      end
    end
    if (_T_337) begin
      dl_out_mask_24 <= 1'h0;
    end else begin
      if (_T_4133) begin
        if (_T_3867) begin
          dl_out_mask_24 <= 1'h0;
        end else begin
          dl_out_mask_24 <= dat_out_bypass_mask_24;
        end
      end
    end
    if (_T_337) begin
      dl_out_mask_25 <= 1'h0;
    end else begin
      if (_T_4133) begin
        if (_T_3867) begin
          dl_out_mask_25 <= 1'h0;
        end else begin
          dl_out_mask_25 <= dat_out_bypass_mask_25;
        end
      end
    end
    if (_T_337) begin
      dl_out_mask_26 <= 1'h0;
    end else begin
      if (_T_4133) begin
        if (_T_3867) begin
          dl_out_mask_26 <= 1'h0;
        end else begin
          dl_out_mask_26 <= dat_out_bypass_mask_26;
        end
      end
    end
    if (_T_337) begin
      dl_out_mask_27 <= 1'h0;
    end else begin
      if (_T_4133) begin
        if (_T_3867) begin
          dl_out_mask_27 <= 1'h0;
        end else begin
          dl_out_mask_27 <= dat_out_bypass_mask_27;
        end
      end
    end
    if (_T_337) begin
      dl_out_mask_28 <= 1'h0;
    end else begin
      if (_T_4133) begin
        if (_T_3867) begin
          dl_out_mask_28 <= 1'h0;
        end else begin
          dl_out_mask_28 <= dat_out_bypass_mask_28;
        end
      end
    end
    if (_T_337) begin
      dl_out_mask_29 <= 1'h0;
    end else begin
      if (_T_4133) begin
        if (_T_3867) begin
          dl_out_mask_29 <= 1'h0;
        end else begin
          dl_out_mask_29 <= dat_out_bypass_mask_29;
        end
      end
    end
    if (_T_337) begin
      dl_out_mask_30 <= 1'h0;
    end else begin
      if (_T_4133) begin
        if (_T_3867) begin
          dl_out_mask_30 <= 1'h0;
        end else begin
          dl_out_mask_30 <= dat_out_bypass_mask_30;
        end
      end
    end
    if (_T_337) begin
      dl_out_mask_31 <= 1'h0;
    end else begin
      if (_T_4133) begin
        if (_T_3867) begin
          dl_out_mask_31 <= 1'h0;
        end else begin
          dl_out_mask_31 <= dat_out_bypass_mask_31;
        end
      end
    end
    if (_T_337) begin
      dl_out_mask_32 <= 1'h0;
    end else begin
      if (_T_4133) begin
        if (_T_3867) begin
          dl_out_mask_32 <= 1'h0;
        end else begin
          dl_out_mask_32 <= dat_out_bypass_mask_32;
        end
      end
    end
    if (_T_337) begin
      dl_out_mask_33 <= 1'h0;
    end else begin
      if (_T_4133) begin
        if (_T_3867) begin
          dl_out_mask_33 <= 1'h0;
        end else begin
          dl_out_mask_33 <= dat_out_bypass_mask_33;
        end
      end
    end
    if (_T_337) begin
      dl_out_mask_34 <= 1'h0;
    end else begin
      if (_T_4133) begin
        if (_T_3867) begin
          dl_out_mask_34 <= 1'h0;
        end else begin
          dl_out_mask_34 <= dat_out_bypass_mask_34;
        end
      end
    end
    if (_T_337) begin
      dl_out_mask_35 <= 1'h0;
    end else begin
      if (_T_4133) begin
        if (_T_3867) begin
          dl_out_mask_35 <= 1'h0;
        end else begin
          dl_out_mask_35 <= dat_out_bypass_mask_35;
        end
      end
    end
    if (_T_337) begin
      dl_out_mask_36 <= 1'h0;
    end else begin
      if (_T_4133) begin
        if (_T_3867) begin
          dl_out_mask_36 <= 1'h0;
        end else begin
          dl_out_mask_36 <= dat_out_bypass_mask_36;
        end
      end
    end
    if (_T_337) begin
      dl_out_mask_37 <= 1'h0;
    end else begin
      if (_T_4133) begin
        if (_T_3867) begin
          dl_out_mask_37 <= 1'h0;
        end else begin
          dl_out_mask_37 <= dat_out_bypass_mask_37;
        end
      end
    end
    if (_T_337) begin
      dl_out_mask_38 <= 1'h0;
    end else begin
      if (_T_4133) begin
        if (_T_3867) begin
          dl_out_mask_38 <= 1'h0;
        end else begin
          dl_out_mask_38 <= dat_out_bypass_mask_38;
        end
      end
    end
    if (_T_337) begin
      dl_out_mask_39 <= 1'h0;
    end else begin
      if (_T_4133) begin
        if (_T_3867) begin
          dl_out_mask_39 <= 1'h0;
        end else begin
          dl_out_mask_39 <= dat_out_bypass_mask_39;
        end
      end
    end
    if (_T_337) begin
      dl_out_mask_40 <= 1'h0;
    end else begin
      if (_T_4133) begin
        if (_T_3867) begin
          dl_out_mask_40 <= 1'h0;
        end else begin
          dl_out_mask_40 <= dat_out_bypass_mask_40;
        end
      end
    end
    if (_T_337) begin
      dl_out_mask_41 <= 1'h0;
    end else begin
      if (_T_4133) begin
        if (_T_3867) begin
          dl_out_mask_41 <= 1'h0;
        end else begin
          dl_out_mask_41 <= dat_out_bypass_mask_41;
        end
      end
    end
    if (_T_337) begin
      dl_out_mask_42 <= 1'h0;
    end else begin
      if (_T_4133) begin
        if (_T_3867) begin
          dl_out_mask_42 <= 1'h0;
        end else begin
          dl_out_mask_42 <= dat_out_bypass_mask_42;
        end
      end
    end
    if (_T_337) begin
      dl_out_mask_43 <= 1'h0;
    end else begin
      if (_T_4133) begin
        if (_T_3867) begin
          dl_out_mask_43 <= 1'h0;
        end else begin
          dl_out_mask_43 <= dat_out_bypass_mask_43;
        end
      end
    end
    if (_T_337) begin
      dl_out_mask_44 <= 1'h0;
    end else begin
      if (_T_4133) begin
        if (_T_3867) begin
          dl_out_mask_44 <= 1'h0;
        end else begin
          dl_out_mask_44 <= dat_out_bypass_mask_44;
        end
      end
    end
    if (_T_337) begin
      dl_out_mask_45 <= 1'h0;
    end else begin
      if (_T_4133) begin
        if (_T_3867) begin
          dl_out_mask_45 <= 1'h0;
        end else begin
          dl_out_mask_45 <= dat_out_bypass_mask_45;
        end
      end
    end
    if (_T_337) begin
      dl_out_mask_46 <= 1'h0;
    end else begin
      if (_T_4133) begin
        if (_T_3867) begin
          dl_out_mask_46 <= 1'h0;
        end else begin
          dl_out_mask_46 <= dat_out_bypass_mask_46;
        end
      end
    end
    if (_T_337) begin
      dl_out_mask_47 <= 1'h0;
    end else begin
      if (_T_4133) begin
        if (_T_3867) begin
          dl_out_mask_47 <= 1'h0;
        end else begin
          dl_out_mask_47 <= dat_out_bypass_mask_47;
        end
      end
    end
    if (_T_337) begin
      dl_out_mask_48 <= 1'h0;
    end else begin
      if (_T_4133) begin
        if (_T_3867) begin
          dl_out_mask_48 <= 1'h0;
        end else begin
          dl_out_mask_48 <= dat_out_bypass_mask_48;
        end
      end
    end
    if (_T_337) begin
      dl_out_mask_49 <= 1'h0;
    end else begin
      if (_T_4133) begin
        if (_T_3867) begin
          dl_out_mask_49 <= 1'h0;
        end else begin
          dl_out_mask_49 <= dat_out_bypass_mask_49;
        end
      end
    end
    if (_T_337) begin
      dl_out_mask_50 <= 1'h0;
    end else begin
      if (_T_4133) begin
        if (_T_3867) begin
          dl_out_mask_50 <= 1'h0;
        end else begin
          dl_out_mask_50 <= dat_out_bypass_mask_50;
        end
      end
    end
    if (_T_337) begin
      dl_out_mask_51 <= 1'h0;
    end else begin
      if (_T_4133) begin
        if (_T_3867) begin
          dl_out_mask_51 <= 1'h0;
        end else begin
          dl_out_mask_51 <= dat_out_bypass_mask_51;
        end
      end
    end
    if (_T_337) begin
      dl_out_mask_52 <= 1'h0;
    end else begin
      if (_T_4133) begin
        if (_T_3867) begin
          dl_out_mask_52 <= 1'h0;
        end else begin
          dl_out_mask_52 <= dat_out_bypass_mask_52;
        end
      end
    end
    if (_T_337) begin
      dl_out_mask_53 <= 1'h0;
    end else begin
      if (_T_4133) begin
        if (_T_3867) begin
          dl_out_mask_53 <= 1'h0;
        end else begin
          dl_out_mask_53 <= dat_out_bypass_mask_53;
        end
      end
    end
    if (_T_337) begin
      dl_out_mask_54 <= 1'h0;
    end else begin
      if (_T_4133) begin
        if (_T_3867) begin
          dl_out_mask_54 <= 1'h0;
        end else begin
          dl_out_mask_54 <= dat_out_bypass_mask_54;
        end
      end
    end
    if (_T_337) begin
      dl_out_mask_55 <= 1'h0;
    end else begin
      if (_T_4133) begin
        if (_T_3867) begin
          dl_out_mask_55 <= 1'h0;
        end else begin
          dl_out_mask_55 <= dat_out_bypass_mask_55;
        end
      end
    end
    if (_T_337) begin
      dl_out_mask_56 <= 1'h0;
    end else begin
      if (_T_4133) begin
        if (_T_3867) begin
          dl_out_mask_56 <= 1'h0;
        end else begin
          dl_out_mask_56 <= dat_out_bypass_mask_56;
        end
      end
    end
    if (_T_337) begin
      dl_out_mask_57 <= 1'h0;
    end else begin
      if (_T_4133) begin
        if (_T_3867) begin
          dl_out_mask_57 <= 1'h0;
        end else begin
          dl_out_mask_57 <= dat_out_bypass_mask_57;
        end
      end
    end
    if (_T_337) begin
      dl_out_mask_58 <= 1'h0;
    end else begin
      if (_T_4133) begin
        if (_T_3867) begin
          dl_out_mask_58 <= 1'h0;
        end else begin
          dl_out_mask_58 <= dat_out_bypass_mask_58;
        end
      end
    end
    if (_T_337) begin
      dl_out_mask_59 <= 1'h0;
    end else begin
      if (_T_4133) begin
        if (_T_3867) begin
          dl_out_mask_59 <= 1'h0;
        end else begin
          dl_out_mask_59 <= dat_out_bypass_mask_59;
        end
      end
    end
    if (_T_337) begin
      dl_out_mask_60 <= 1'h0;
    end else begin
      if (_T_4133) begin
        if (_T_3867) begin
          dl_out_mask_60 <= 1'h0;
        end else begin
          dl_out_mask_60 <= dat_out_bypass_mask_60;
        end
      end
    end
    if (_T_337) begin
      dl_out_mask_61 <= 1'h0;
    end else begin
      if (_T_4133) begin
        if (_T_3867) begin
          dl_out_mask_61 <= 1'h0;
        end else begin
          dl_out_mask_61 <= dat_out_bypass_mask_61;
        end
      end
    end
    if (_T_337) begin
      dl_out_mask_62 <= 1'h0;
    end else begin
      if (_T_4133) begin
        if (_T_3867) begin
          dl_out_mask_62 <= 1'h0;
        end else begin
          dl_out_mask_62 <= dat_out_bypass_mask_62;
        end
      end
    end
    if (_T_337) begin
      dl_out_mask_63 <= 1'h0;
    end else begin
      if (_T_4133) begin
        if (_T_3867) begin
          dl_out_mask_63 <= 1'h0;
        end else begin
          dl_out_mask_63 <= dat_out_bypass_mask_63;
        end
      end
    end
    if (_T_337) begin
      dl_out_flag <= 9'h0;
    end else begin
      if (dat_out_pvld) begin
        dl_out_flag <= {{8'd0}, dat_out_pvld};
      end
    end
    if (dat_out_mask_0) begin
      dl_out_data_0 <= dat_out_bypass_data_0;
    end
    if (dat_out_mask_1) begin
      dl_out_data_1 <= dat_out_bypass_data_1;
    end
    if (dat_out_mask_2) begin
      dl_out_data_2 <= dat_out_bypass_data_2;
    end
    if (dat_out_mask_3) begin
      dl_out_data_3 <= dat_out_bypass_data_3;
    end
    if (dat_out_mask_4) begin
      dl_out_data_4 <= dat_out_bypass_data_4;
    end
    if (dat_out_mask_5) begin
      dl_out_data_5 <= dat_out_bypass_data_5;
    end
    if (dat_out_mask_6) begin
      dl_out_data_6 <= dat_out_bypass_data_6;
    end
    if (dat_out_mask_7) begin
      dl_out_data_7 <= dat_out_bypass_data_7;
    end
    if (dat_out_mask_8) begin
      dl_out_data_8 <= dat_out_bypass_data_8;
    end
    if (dat_out_mask_9) begin
      dl_out_data_9 <= dat_out_bypass_data_9;
    end
    if (dat_out_mask_10) begin
      dl_out_data_10 <= dat_out_bypass_data_10;
    end
    if (dat_out_mask_11) begin
      dl_out_data_11 <= dat_out_bypass_data_11;
    end
    if (dat_out_mask_12) begin
      dl_out_data_12 <= dat_out_bypass_data_12;
    end
    if (dat_out_mask_13) begin
      dl_out_data_13 <= dat_out_bypass_data_13;
    end
    if (dat_out_mask_14) begin
      dl_out_data_14 <= dat_out_bypass_data_14;
    end
    if (dat_out_mask_15) begin
      dl_out_data_15 <= dat_out_bypass_data_15;
    end
    if (dat_out_mask_16) begin
      dl_out_data_16 <= dat_out_bypass_data_16;
    end
    if (dat_out_mask_17) begin
      dl_out_data_17 <= dat_out_bypass_data_17;
    end
    if (dat_out_mask_18) begin
      dl_out_data_18 <= dat_out_bypass_data_18;
    end
    if (dat_out_mask_19) begin
      dl_out_data_19 <= dat_out_bypass_data_19;
    end
    if (dat_out_mask_20) begin
      dl_out_data_20 <= dat_out_bypass_data_20;
    end
    if (dat_out_mask_21) begin
      dl_out_data_21 <= dat_out_bypass_data_21;
    end
    if (dat_out_mask_22) begin
      dl_out_data_22 <= dat_out_bypass_data_22;
    end
    if (dat_out_mask_23) begin
      dl_out_data_23 <= dat_out_bypass_data_23;
    end
    if (dat_out_mask_24) begin
      dl_out_data_24 <= dat_out_bypass_data_24;
    end
    if (dat_out_mask_25) begin
      dl_out_data_25 <= dat_out_bypass_data_25;
    end
    if (dat_out_mask_26) begin
      dl_out_data_26 <= dat_out_bypass_data_26;
    end
    if (dat_out_mask_27) begin
      dl_out_data_27 <= dat_out_bypass_data_27;
    end
    if (dat_out_mask_28) begin
      dl_out_data_28 <= dat_out_bypass_data_28;
    end
    if (dat_out_mask_29) begin
      dl_out_data_29 <= dat_out_bypass_data_29;
    end
    if (dat_out_mask_30) begin
      dl_out_data_30 <= dat_out_bypass_data_30;
    end
    if (dat_out_mask_31) begin
      dl_out_data_31 <= dat_out_bypass_data_31;
    end
    if (dat_out_mask_32) begin
      dl_out_data_32 <= dat_out_bypass_data_32;
    end
    if (dat_out_mask_33) begin
      dl_out_data_33 <= dat_out_bypass_data_33;
    end
    if (dat_out_mask_34) begin
      dl_out_data_34 <= dat_out_bypass_data_34;
    end
    if (dat_out_mask_35) begin
      dl_out_data_35 <= dat_out_bypass_data_35;
    end
    if (dat_out_mask_36) begin
      dl_out_data_36 <= dat_out_bypass_data_36;
    end
    if (dat_out_mask_37) begin
      dl_out_data_37 <= dat_out_bypass_data_37;
    end
    if (dat_out_mask_38) begin
      dl_out_data_38 <= dat_out_bypass_data_38;
    end
    if (dat_out_mask_39) begin
      dl_out_data_39 <= dat_out_bypass_data_39;
    end
    if (dat_out_mask_40) begin
      dl_out_data_40 <= dat_out_bypass_data_40;
    end
    if (dat_out_mask_41) begin
      dl_out_data_41 <= dat_out_bypass_data_41;
    end
    if (dat_out_mask_42) begin
      dl_out_data_42 <= dat_out_bypass_data_42;
    end
    if (dat_out_mask_43) begin
      dl_out_data_43 <= dat_out_bypass_data_43;
    end
    if (dat_out_mask_44) begin
      dl_out_data_44 <= dat_out_bypass_data_44;
    end
    if (dat_out_mask_45) begin
      dl_out_data_45 <= dat_out_bypass_data_45;
    end
    if (dat_out_mask_46) begin
      dl_out_data_46 <= dat_out_bypass_data_46;
    end
    if (dat_out_mask_47) begin
      dl_out_data_47 <= dat_out_bypass_data_47;
    end
    if (dat_out_mask_48) begin
      dl_out_data_48 <= dat_out_bypass_data_48;
    end
    if (dat_out_mask_49) begin
      dl_out_data_49 <= dat_out_bypass_data_49;
    end
    if (dat_out_mask_50) begin
      dl_out_data_50 <= dat_out_bypass_data_50;
    end
    if (dat_out_mask_51) begin
      dl_out_data_51 <= dat_out_bypass_data_51;
    end
    if (dat_out_mask_52) begin
      dl_out_data_52 <= dat_out_bypass_data_52;
    end
    if (dat_out_mask_53) begin
      dl_out_data_53 <= dat_out_bypass_data_53;
    end
    if (dat_out_mask_54) begin
      dl_out_data_54 <= dat_out_bypass_data_54;
    end
    if (dat_out_mask_55) begin
      dl_out_data_55 <= dat_out_bypass_data_55;
    end
    if (dat_out_mask_56) begin
      dl_out_data_56 <= dat_out_bypass_data_56;
    end
    if (dat_out_mask_57) begin
      dl_out_data_57 <= dat_out_bypass_data_57;
    end
    if (dat_out_mask_58) begin
      dl_out_data_58 <= dat_out_bypass_data_58;
    end
    if (dat_out_mask_59) begin
      dl_out_data_59 <= dat_out_bypass_data_59;
    end
    if (dat_out_mask_60) begin
      dl_out_data_60 <= dat_out_bypass_data_60;
    end
    if (dat_out_mask_61) begin
      dl_out_data_61 <= dat_out_bypass_data_61;
    end
    if (dat_out_mask_62) begin
      dl_out_data_62 <= dat_out_bypass_data_62;
    end
    if (dat_out_mask_63) begin
      dl_out_data_63 <= dat_out_bypass_data_63;
    end
    if (_T_337) begin
      dl_out_pvld_d1 <= 1'h0;
    end else begin
      dl_out_pvld_d1 <= dl_out_pvld;
    end
    if (_T_337) begin
      _T_4140 <= 1'h0;
    end else begin
      _T_4140 <= dl_out_pvld;
    end
    if (_T_337) begin
      _T_4143 <= 1'h0;
    end else begin
      _T_4143 <= dl_out_pvld;
    end
    if (_T_337) begin
      _T_4147 <= 9'h0;
    end else begin
      if (_T_4145) begin
        if (_T_4136) begin
          _T_4147 <= 9'h0;
        end else begin
          _T_4147 <= dl_out_flag;
        end
      end
    end
    if (_T_337) begin
      _T_4151 <= 9'h0;
    end else begin
      if (_T_4145) begin
        if (_T_4136) begin
          _T_4151 <= 9'h0;
        end else begin
          _T_4151 <= dl_out_flag;
        end
      end
    end
    if (_T_337) begin
      _T_4419_0 <= 1'h0;
    end else begin
      if (_T_4145) begin
        _T_4419_0 <= dl_out_mask_0;
      end
    end
    if (_T_337) begin
      _T_4419_1 <= 1'h0;
    end else begin
      if (_T_4145) begin
        _T_4419_1 <= dl_out_mask_1;
      end
    end
    if (_T_337) begin
      _T_4419_2 <= 1'h0;
    end else begin
      if (_T_4145) begin
        _T_4419_2 <= dl_out_mask_2;
      end
    end
    if (_T_337) begin
      _T_4419_3 <= 1'h0;
    end else begin
      if (_T_4145) begin
        _T_4419_3 <= dl_out_mask_3;
      end
    end
    if (_T_337) begin
      _T_4419_4 <= 1'h0;
    end else begin
      if (_T_4145) begin
        _T_4419_4 <= dl_out_mask_4;
      end
    end
    if (_T_337) begin
      _T_4419_5 <= 1'h0;
    end else begin
      if (_T_4145) begin
        _T_4419_5 <= dl_out_mask_5;
      end
    end
    if (_T_337) begin
      _T_4419_6 <= 1'h0;
    end else begin
      if (_T_4145) begin
        _T_4419_6 <= dl_out_mask_6;
      end
    end
    if (_T_337) begin
      _T_4419_7 <= 1'h0;
    end else begin
      if (_T_4145) begin
        _T_4419_7 <= dl_out_mask_7;
      end
    end
    if (_T_337) begin
      _T_4419_8 <= 1'h0;
    end else begin
      if (_T_4145) begin
        _T_4419_8 <= dl_out_mask_8;
      end
    end
    if (_T_337) begin
      _T_4419_9 <= 1'h0;
    end else begin
      if (_T_4145) begin
        _T_4419_9 <= dl_out_mask_9;
      end
    end
    if (_T_337) begin
      _T_4419_10 <= 1'h0;
    end else begin
      if (_T_4145) begin
        _T_4419_10 <= dl_out_mask_10;
      end
    end
    if (_T_337) begin
      _T_4419_11 <= 1'h0;
    end else begin
      if (_T_4145) begin
        _T_4419_11 <= dl_out_mask_11;
      end
    end
    if (_T_337) begin
      _T_4419_12 <= 1'h0;
    end else begin
      if (_T_4145) begin
        _T_4419_12 <= dl_out_mask_12;
      end
    end
    if (_T_337) begin
      _T_4419_13 <= 1'h0;
    end else begin
      if (_T_4145) begin
        _T_4419_13 <= dl_out_mask_13;
      end
    end
    if (_T_337) begin
      _T_4419_14 <= 1'h0;
    end else begin
      if (_T_4145) begin
        _T_4419_14 <= dl_out_mask_14;
      end
    end
    if (_T_337) begin
      _T_4419_15 <= 1'h0;
    end else begin
      if (_T_4145) begin
        _T_4419_15 <= dl_out_mask_15;
      end
    end
    if (_T_337) begin
      _T_4419_16 <= 1'h0;
    end else begin
      if (_T_4145) begin
        _T_4419_16 <= dl_out_mask_16;
      end
    end
    if (_T_337) begin
      _T_4419_17 <= 1'h0;
    end else begin
      if (_T_4145) begin
        _T_4419_17 <= dl_out_mask_17;
      end
    end
    if (_T_337) begin
      _T_4419_18 <= 1'h0;
    end else begin
      if (_T_4145) begin
        _T_4419_18 <= dl_out_mask_18;
      end
    end
    if (_T_337) begin
      _T_4419_19 <= 1'h0;
    end else begin
      if (_T_4145) begin
        _T_4419_19 <= dl_out_mask_19;
      end
    end
    if (_T_337) begin
      _T_4419_20 <= 1'h0;
    end else begin
      if (_T_4145) begin
        _T_4419_20 <= dl_out_mask_20;
      end
    end
    if (_T_337) begin
      _T_4419_21 <= 1'h0;
    end else begin
      if (_T_4145) begin
        _T_4419_21 <= dl_out_mask_21;
      end
    end
    if (_T_337) begin
      _T_4419_22 <= 1'h0;
    end else begin
      if (_T_4145) begin
        _T_4419_22 <= dl_out_mask_22;
      end
    end
    if (_T_337) begin
      _T_4419_23 <= 1'h0;
    end else begin
      if (_T_4145) begin
        _T_4419_23 <= dl_out_mask_23;
      end
    end
    if (_T_337) begin
      _T_4419_24 <= 1'h0;
    end else begin
      if (_T_4145) begin
        _T_4419_24 <= dl_out_mask_24;
      end
    end
    if (_T_337) begin
      _T_4419_25 <= 1'h0;
    end else begin
      if (_T_4145) begin
        _T_4419_25 <= dl_out_mask_25;
      end
    end
    if (_T_337) begin
      _T_4419_26 <= 1'h0;
    end else begin
      if (_T_4145) begin
        _T_4419_26 <= dl_out_mask_26;
      end
    end
    if (_T_337) begin
      _T_4419_27 <= 1'h0;
    end else begin
      if (_T_4145) begin
        _T_4419_27 <= dl_out_mask_27;
      end
    end
    if (_T_337) begin
      _T_4419_28 <= 1'h0;
    end else begin
      if (_T_4145) begin
        _T_4419_28 <= dl_out_mask_28;
      end
    end
    if (_T_337) begin
      _T_4419_29 <= 1'h0;
    end else begin
      if (_T_4145) begin
        _T_4419_29 <= dl_out_mask_29;
      end
    end
    if (_T_337) begin
      _T_4419_30 <= 1'h0;
    end else begin
      if (_T_4145) begin
        _T_4419_30 <= dl_out_mask_30;
      end
    end
    if (_T_337) begin
      _T_4419_31 <= 1'h0;
    end else begin
      if (_T_4145) begin
        _T_4419_31 <= dl_out_mask_31;
      end
    end
    if (_T_337) begin
      _T_4419_32 <= 1'h0;
    end else begin
      if (_T_4145) begin
        _T_4419_32 <= dl_out_mask_32;
      end
    end
    if (_T_337) begin
      _T_4419_33 <= 1'h0;
    end else begin
      if (_T_4145) begin
        _T_4419_33 <= dl_out_mask_33;
      end
    end
    if (_T_337) begin
      _T_4419_34 <= 1'h0;
    end else begin
      if (_T_4145) begin
        _T_4419_34 <= dl_out_mask_34;
      end
    end
    if (_T_337) begin
      _T_4419_35 <= 1'h0;
    end else begin
      if (_T_4145) begin
        _T_4419_35 <= dl_out_mask_35;
      end
    end
    if (_T_337) begin
      _T_4419_36 <= 1'h0;
    end else begin
      if (_T_4145) begin
        _T_4419_36 <= dl_out_mask_36;
      end
    end
    if (_T_337) begin
      _T_4419_37 <= 1'h0;
    end else begin
      if (_T_4145) begin
        _T_4419_37 <= dl_out_mask_37;
      end
    end
    if (_T_337) begin
      _T_4419_38 <= 1'h0;
    end else begin
      if (_T_4145) begin
        _T_4419_38 <= dl_out_mask_38;
      end
    end
    if (_T_337) begin
      _T_4419_39 <= 1'h0;
    end else begin
      if (_T_4145) begin
        _T_4419_39 <= dl_out_mask_39;
      end
    end
    if (_T_337) begin
      _T_4419_40 <= 1'h0;
    end else begin
      if (_T_4145) begin
        _T_4419_40 <= dl_out_mask_40;
      end
    end
    if (_T_337) begin
      _T_4419_41 <= 1'h0;
    end else begin
      if (_T_4145) begin
        _T_4419_41 <= dl_out_mask_41;
      end
    end
    if (_T_337) begin
      _T_4419_42 <= 1'h0;
    end else begin
      if (_T_4145) begin
        _T_4419_42 <= dl_out_mask_42;
      end
    end
    if (_T_337) begin
      _T_4419_43 <= 1'h0;
    end else begin
      if (_T_4145) begin
        _T_4419_43 <= dl_out_mask_43;
      end
    end
    if (_T_337) begin
      _T_4419_44 <= 1'h0;
    end else begin
      if (_T_4145) begin
        _T_4419_44 <= dl_out_mask_44;
      end
    end
    if (_T_337) begin
      _T_4419_45 <= 1'h0;
    end else begin
      if (_T_4145) begin
        _T_4419_45 <= dl_out_mask_45;
      end
    end
    if (_T_337) begin
      _T_4419_46 <= 1'h0;
    end else begin
      if (_T_4145) begin
        _T_4419_46 <= dl_out_mask_46;
      end
    end
    if (_T_337) begin
      _T_4419_47 <= 1'h0;
    end else begin
      if (_T_4145) begin
        _T_4419_47 <= dl_out_mask_47;
      end
    end
    if (_T_337) begin
      _T_4419_48 <= 1'h0;
    end else begin
      if (_T_4145) begin
        _T_4419_48 <= dl_out_mask_48;
      end
    end
    if (_T_337) begin
      _T_4419_49 <= 1'h0;
    end else begin
      if (_T_4145) begin
        _T_4419_49 <= dl_out_mask_49;
      end
    end
    if (_T_337) begin
      _T_4419_50 <= 1'h0;
    end else begin
      if (_T_4145) begin
        _T_4419_50 <= dl_out_mask_50;
      end
    end
    if (_T_337) begin
      _T_4419_51 <= 1'h0;
    end else begin
      if (_T_4145) begin
        _T_4419_51 <= dl_out_mask_51;
      end
    end
    if (_T_337) begin
      _T_4419_52 <= 1'h0;
    end else begin
      if (_T_4145) begin
        _T_4419_52 <= dl_out_mask_52;
      end
    end
    if (_T_337) begin
      _T_4419_53 <= 1'h0;
    end else begin
      if (_T_4145) begin
        _T_4419_53 <= dl_out_mask_53;
      end
    end
    if (_T_337) begin
      _T_4419_54 <= 1'h0;
    end else begin
      if (_T_4145) begin
        _T_4419_54 <= dl_out_mask_54;
      end
    end
    if (_T_337) begin
      _T_4419_55 <= 1'h0;
    end else begin
      if (_T_4145) begin
        _T_4419_55 <= dl_out_mask_55;
      end
    end
    if (_T_337) begin
      _T_4419_56 <= 1'h0;
    end else begin
      if (_T_4145) begin
        _T_4419_56 <= dl_out_mask_56;
      end
    end
    if (_T_337) begin
      _T_4419_57 <= 1'h0;
    end else begin
      if (_T_4145) begin
        _T_4419_57 <= dl_out_mask_57;
      end
    end
    if (_T_337) begin
      _T_4419_58 <= 1'h0;
    end else begin
      if (_T_4145) begin
        _T_4419_58 <= dl_out_mask_58;
      end
    end
    if (_T_337) begin
      _T_4419_59 <= 1'h0;
    end else begin
      if (_T_4145) begin
        _T_4419_59 <= dl_out_mask_59;
      end
    end
    if (_T_337) begin
      _T_4419_60 <= 1'h0;
    end else begin
      if (_T_4145) begin
        _T_4419_60 <= dl_out_mask_60;
      end
    end
    if (_T_337) begin
      _T_4419_61 <= 1'h0;
    end else begin
      if (_T_4145) begin
        _T_4419_61 <= dl_out_mask_61;
      end
    end
    if (_T_337) begin
      _T_4419_62 <= 1'h0;
    end else begin
      if (_T_4145) begin
        _T_4419_62 <= dl_out_mask_62;
      end
    end
    if (_T_337) begin
      _T_4419_63 <= 1'h0;
    end else begin
      if (_T_4145) begin
        _T_4419_63 <= dl_out_mask_63;
      end
    end
    if (_T_337) begin
      _T_4946_0 <= 1'h0;
    end else begin
      if (_T_4145) begin
        _T_4946_0 <= dl_out_mask_0;
      end
    end
    if (_T_337) begin
      _T_4946_1 <= 1'h0;
    end else begin
      if (_T_4145) begin
        _T_4946_1 <= dl_out_mask_1;
      end
    end
    if (_T_337) begin
      _T_4946_2 <= 1'h0;
    end else begin
      if (_T_4145) begin
        _T_4946_2 <= dl_out_mask_2;
      end
    end
    if (_T_337) begin
      _T_4946_3 <= 1'h0;
    end else begin
      if (_T_4145) begin
        _T_4946_3 <= dl_out_mask_3;
      end
    end
    if (_T_337) begin
      _T_4946_4 <= 1'h0;
    end else begin
      if (_T_4145) begin
        _T_4946_4 <= dl_out_mask_4;
      end
    end
    if (_T_337) begin
      _T_4946_5 <= 1'h0;
    end else begin
      if (_T_4145) begin
        _T_4946_5 <= dl_out_mask_5;
      end
    end
    if (_T_337) begin
      _T_4946_6 <= 1'h0;
    end else begin
      if (_T_4145) begin
        _T_4946_6 <= dl_out_mask_6;
      end
    end
    if (_T_337) begin
      _T_4946_7 <= 1'h0;
    end else begin
      if (_T_4145) begin
        _T_4946_7 <= dl_out_mask_7;
      end
    end
    if (_T_337) begin
      _T_4946_8 <= 1'h0;
    end else begin
      if (_T_4145) begin
        _T_4946_8 <= dl_out_mask_8;
      end
    end
    if (_T_337) begin
      _T_4946_9 <= 1'h0;
    end else begin
      if (_T_4145) begin
        _T_4946_9 <= dl_out_mask_9;
      end
    end
    if (_T_337) begin
      _T_4946_10 <= 1'h0;
    end else begin
      if (_T_4145) begin
        _T_4946_10 <= dl_out_mask_10;
      end
    end
    if (_T_337) begin
      _T_4946_11 <= 1'h0;
    end else begin
      if (_T_4145) begin
        _T_4946_11 <= dl_out_mask_11;
      end
    end
    if (_T_337) begin
      _T_4946_12 <= 1'h0;
    end else begin
      if (_T_4145) begin
        _T_4946_12 <= dl_out_mask_12;
      end
    end
    if (_T_337) begin
      _T_4946_13 <= 1'h0;
    end else begin
      if (_T_4145) begin
        _T_4946_13 <= dl_out_mask_13;
      end
    end
    if (_T_337) begin
      _T_4946_14 <= 1'h0;
    end else begin
      if (_T_4145) begin
        _T_4946_14 <= dl_out_mask_14;
      end
    end
    if (_T_337) begin
      _T_4946_15 <= 1'h0;
    end else begin
      if (_T_4145) begin
        _T_4946_15 <= dl_out_mask_15;
      end
    end
    if (_T_337) begin
      _T_4946_16 <= 1'h0;
    end else begin
      if (_T_4145) begin
        _T_4946_16 <= dl_out_mask_16;
      end
    end
    if (_T_337) begin
      _T_4946_17 <= 1'h0;
    end else begin
      if (_T_4145) begin
        _T_4946_17 <= dl_out_mask_17;
      end
    end
    if (_T_337) begin
      _T_4946_18 <= 1'h0;
    end else begin
      if (_T_4145) begin
        _T_4946_18 <= dl_out_mask_18;
      end
    end
    if (_T_337) begin
      _T_4946_19 <= 1'h0;
    end else begin
      if (_T_4145) begin
        _T_4946_19 <= dl_out_mask_19;
      end
    end
    if (_T_337) begin
      _T_4946_20 <= 1'h0;
    end else begin
      if (_T_4145) begin
        _T_4946_20 <= dl_out_mask_20;
      end
    end
    if (_T_337) begin
      _T_4946_21 <= 1'h0;
    end else begin
      if (_T_4145) begin
        _T_4946_21 <= dl_out_mask_21;
      end
    end
    if (_T_337) begin
      _T_4946_22 <= 1'h0;
    end else begin
      if (_T_4145) begin
        _T_4946_22 <= dl_out_mask_22;
      end
    end
    if (_T_337) begin
      _T_4946_23 <= 1'h0;
    end else begin
      if (_T_4145) begin
        _T_4946_23 <= dl_out_mask_23;
      end
    end
    if (_T_337) begin
      _T_4946_24 <= 1'h0;
    end else begin
      if (_T_4145) begin
        _T_4946_24 <= dl_out_mask_24;
      end
    end
    if (_T_337) begin
      _T_4946_25 <= 1'h0;
    end else begin
      if (_T_4145) begin
        _T_4946_25 <= dl_out_mask_25;
      end
    end
    if (_T_337) begin
      _T_4946_26 <= 1'h0;
    end else begin
      if (_T_4145) begin
        _T_4946_26 <= dl_out_mask_26;
      end
    end
    if (_T_337) begin
      _T_4946_27 <= 1'h0;
    end else begin
      if (_T_4145) begin
        _T_4946_27 <= dl_out_mask_27;
      end
    end
    if (_T_337) begin
      _T_4946_28 <= 1'h0;
    end else begin
      if (_T_4145) begin
        _T_4946_28 <= dl_out_mask_28;
      end
    end
    if (_T_337) begin
      _T_4946_29 <= 1'h0;
    end else begin
      if (_T_4145) begin
        _T_4946_29 <= dl_out_mask_29;
      end
    end
    if (_T_337) begin
      _T_4946_30 <= 1'h0;
    end else begin
      if (_T_4145) begin
        _T_4946_30 <= dl_out_mask_30;
      end
    end
    if (_T_337) begin
      _T_4946_31 <= 1'h0;
    end else begin
      if (_T_4145) begin
        _T_4946_31 <= dl_out_mask_31;
      end
    end
    if (_T_337) begin
      _T_4946_32 <= 1'h0;
    end else begin
      if (_T_4145) begin
        _T_4946_32 <= dl_out_mask_32;
      end
    end
    if (_T_337) begin
      _T_4946_33 <= 1'h0;
    end else begin
      if (_T_4145) begin
        _T_4946_33 <= dl_out_mask_33;
      end
    end
    if (_T_337) begin
      _T_4946_34 <= 1'h0;
    end else begin
      if (_T_4145) begin
        _T_4946_34 <= dl_out_mask_34;
      end
    end
    if (_T_337) begin
      _T_4946_35 <= 1'h0;
    end else begin
      if (_T_4145) begin
        _T_4946_35 <= dl_out_mask_35;
      end
    end
    if (_T_337) begin
      _T_4946_36 <= 1'h0;
    end else begin
      if (_T_4145) begin
        _T_4946_36 <= dl_out_mask_36;
      end
    end
    if (_T_337) begin
      _T_4946_37 <= 1'h0;
    end else begin
      if (_T_4145) begin
        _T_4946_37 <= dl_out_mask_37;
      end
    end
    if (_T_337) begin
      _T_4946_38 <= 1'h0;
    end else begin
      if (_T_4145) begin
        _T_4946_38 <= dl_out_mask_38;
      end
    end
    if (_T_337) begin
      _T_4946_39 <= 1'h0;
    end else begin
      if (_T_4145) begin
        _T_4946_39 <= dl_out_mask_39;
      end
    end
    if (_T_337) begin
      _T_4946_40 <= 1'h0;
    end else begin
      if (_T_4145) begin
        _T_4946_40 <= dl_out_mask_40;
      end
    end
    if (_T_337) begin
      _T_4946_41 <= 1'h0;
    end else begin
      if (_T_4145) begin
        _T_4946_41 <= dl_out_mask_41;
      end
    end
    if (_T_337) begin
      _T_4946_42 <= 1'h0;
    end else begin
      if (_T_4145) begin
        _T_4946_42 <= dl_out_mask_42;
      end
    end
    if (_T_337) begin
      _T_4946_43 <= 1'h0;
    end else begin
      if (_T_4145) begin
        _T_4946_43 <= dl_out_mask_43;
      end
    end
    if (_T_337) begin
      _T_4946_44 <= 1'h0;
    end else begin
      if (_T_4145) begin
        _T_4946_44 <= dl_out_mask_44;
      end
    end
    if (_T_337) begin
      _T_4946_45 <= 1'h0;
    end else begin
      if (_T_4145) begin
        _T_4946_45 <= dl_out_mask_45;
      end
    end
    if (_T_337) begin
      _T_4946_46 <= 1'h0;
    end else begin
      if (_T_4145) begin
        _T_4946_46 <= dl_out_mask_46;
      end
    end
    if (_T_337) begin
      _T_4946_47 <= 1'h0;
    end else begin
      if (_T_4145) begin
        _T_4946_47 <= dl_out_mask_47;
      end
    end
    if (_T_337) begin
      _T_4946_48 <= 1'h0;
    end else begin
      if (_T_4145) begin
        _T_4946_48 <= dl_out_mask_48;
      end
    end
    if (_T_337) begin
      _T_4946_49 <= 1'h0;
    end else begin
      if (_T_4145) begin
        _T_4946_49 <= dl_out_mask_49;
      end
    end
    if (_T_337) begin
      _T_4946_50 <= 1'h0;
    end else begin
      if (_T_4145) begin
        _T_4946_50 <= dl_out_mask_50;
      end
    end
    if (_T_337) begin
      _T_4946_51 <= 1'h0;
    end else begin
      if (_T_4145) begin
        _T_4946_51 <= dl_out_mask_51;
      end
    end
    if (_T_337) begin
      _T_4946_52 <= 1'h0;
    end else begin
      if (_T_4145) begin
        _T_4946_52 <= dl_out_mask_52;
      end
    end
    if (_T_337) begin
      _T_4946_53 <= 1'h0;
    end else begin
      if (_T_4145) begin
        _T_4946_53 <= dl_out_mask_53;
      end
    end
    if (_T_337) begin
      _T_4946_54 <= 1'h0;
    end else begin
      if (_T_4145) begin
        _T_4946_54 <= dl_out_mask_54;
      end
    end
    if (_T_337) begin
      _T_4946_55 <= 1'h0;
    end else begin
      if (_T_4145) begin
        _T_4946_55 <= dl_out_mask_55;
      end
    end
    if (_T_337) begin
      _T_4946_56 <= 1'h0;
    end else begin
      if (_T_4145) begin
        _T_4946_56 <= dl_out_mask_56;
      end
    end
    if (_T_337) begin
      _T_4946_57 <= 1'h0;
    end else begin
      if (_T_4145) begin
        _T_4946_57 <= dl_out_mask_57;
      end
    end
    if (_T_337) begin
      _T_4946_58 <= 1'h0;
    end else begin
      if (_T_4145) begin
        _T_4946_58 <= dl_out_mask_58;
      end
    end
    if (_T_337) begin
      _T_4946_59 <= 1'h0;
    end else begin
      if (_T_4145) begin
        _T_4946_59 <= dl_out_mask_59;
      end
    end
    if (_T_337) begin
      _T_4946_60 <= 1'h0;
    end else begin
      if (_T_4145) begin
        _T_4946_60 <= dl_out_mask_60;
      end
    end
    if (_T_337) begin
      _T_4946_61 <= 1'h0;
    end else begin
      if (_T_4145) begin
        _T_4946_61 <= dl_out_mask_61;
      end
    end
    if (_T_337) begin
      _T_4946_62 <= 1'h0;
    end else begin
      if (_T_4145) begin
        _T_4946_62 <= dl_out_mask_62;
      end
    end
    if (_T_337) begin
      _T_4946_63 <= 1'h0;
    end else begin
      if (_T_4145) begin
        _T_4946_63 <= dl_out_mask_63;
      end
    end
    if (dl_out_mask_0) begin
      _T_5207 <= dl_out_data_0;
    end
    if (dl_out_mask_0) begin
      _T_5209 <= dl_out_data_0;
    end
    if (dl_out_mask_1) begin
      _T_5211 <= dl_out_data_1;
    end
    if (dl_out_mask_1) begin
      _T_5213 <= dl_out_data_1;
    end
    if (dl_out_mask_2) begin
      _T_5215 <= dl_out_data_2;
    end
    if (dl_out_mask_2) begin
      _T_5217 <= dl_out_data_2;
    end
    if (dl_out_mask_3) begin
      _T_5219 <= dl_out_data_3;
    end
    if (dl_out_mask_3) begin
      _T_5221 <= dl_out_data_3;
    end
    if (dl_out_mask_4) begin
      _T_5223 <= dl_out_data_4;
    end
    if (dl_out_mask_4) begin
      _T_5225 <= dl_out_data_4;
    end
    if (dl_out_mask_5) begin
      _T_5227 <= dl_out_data_5;
    end
    if (dl_out_mask_5) begin
      _T_5229 <= dl_out_data_5;
    end
    if (dl_out_mask_6) begin
      _T_5231 <= dl_out_data_6;
    end
    if (dl_out_mask_6) begin
      _T_5233 <= dl_out_data_6;
    end
    if (dl_out_mask_7) begin
      _T_5235 <= dl_out_data_7;
    end
    if (dl_out_mask_7) begin
      _T_5237 <= dl_out_data_7;
    end
    if (dl_out_mask_8) begin
      _T_5239 <= dl_out_data_8;
    end
    if (dl_out_mask_8) begin
      _T_5241 <= dl_out_data_8;
    end
    if (dl_out_mask_9) begin
      _T_5243 <= dl_out_data_9;
    end
    if (dl_out_mask_9) begin
      _T_5245 <= dl_out_data_9;
    end
    if (dl_out_mask_10) begin
      _T_5247 <= dl_out_data_10;
    end
    if (dl_out_mask_10) begin
      _T_5249 <= dl_out_data_10;
    end
    if (dl_out_mask_11) begin
      _T_5251 <= dl_out_data_11;
    end
    if (dl_out_mask_11) begin
      _T_5253 <= dl_out_data_11;
    end
    if (dl_out_mask_12) begin
      _T_5255 <= dl_out_data_12;
    end
    if (dl_out_mask_12) begin
      _T_5257 <= dl_out_data_12;
    end
    if (dl_out_mask_13) begin
      _T_5259 <= dl_out_data_13;
    end
    if (dl_out_mask_13) begin
      _T_5261 <= dl_out_data_13;
    end
    if (dl_out_mask_14) begin
      _T_5263 <= dl_out_data_14;
    end
    if (dl_out_mask_14) begin
      _T_5265 <= dl_out_data_14;
    end
    if (dl_out_mask_15) begin
      _T_5267 <= dl_out_data_15;
    end
    if (dl_out_mask_15) begin
      _T_5269 <= dl_out_data_15;
    end
    if (dl_out_mask_16) begin
      _T_5271 <= dl_out_data_16;
    end
    if (dl_out_mask_16) begin
      _T_5273 <= dl_out_data_16;
    end
    if (dl_out_mask_17) begin
      _T_5275 <= dl_out_data_17;
    end
    if (dl_out_mask_17) begin
      _T_5277 <= dl_out_data_17;
    end
    if (dl_out_mask_18) begin
      _T_5279 <= dl_out_data_18;
    end
    if (dl_out_mask_18) begin
      _T_5281 <= dl_out_data_18;
    end
    if (dl_out_mask_19) begin
      _T_5283 <= dl_out_data_19;
    end
    if (dl_out_mask_19) begin
      _T_5285 <= dl_out_data_19;
    end
    if (dl_out_mask_20) begin
      _T_5287 <= dl_out_data_20;
    end
    if (dl_out_mask_20) begin
      _T_5289 <= dl_out_data_20;
    end
    if (dl_out_mask_21) begin
      _T_5291 <= dl_out_data_21;
    end
    if (dl_out_mask_21) begin
      _T_5293 <= dl_out_data_21;
    end
    if (dl_out_mask_22) begin
      _T_5295 <= dl_out_data_22;
    end
    if (dl_out_mask_22) begin
      _T_5297 <= dl_out_data_22;
    end
    if (dl_out_mask_23) begin
      _T_5299 <= dl_out_data_23;
    end
    if (dl_out_mask_23) begin
      _T_5301 <= dl_out_data_23;
    end
    if (dl_out_mask_24) begin
      _T_5303 <= dl_out_data_24;
    end
    if (dl_out_mask_24) begin
      _T_5305 <= dl_out_data_24;
    end
    if (dl_out_mask_25) begin
      _T_5307 <= dl_out_data_25;
    end
    if (dl_out_mask_25) begin
      _T_5309 <= dl_out_data_25;
    end
    if (dl_out_mask_26) begin
      _T_5311 <= dl_out_data_26;
    end
    if (dl_out_mask_26) begin
      _T_5313 <= dl_out_data_26;
    end
    if (dl_out_mask_27) begin
      _T_5315 <= dl_out_data_27;
    end
    if (dl_out_mask_27) begin
      _T_5317 <= dl_out_data_27;
    end
    if (dl_out_mask_28) begin
      _T_5319 <= dl_out_data_28;
    end
    if (dl_out_mask_28) begin
      _T_5321 <= dl_out_data_28;
    end
    if (dl_out_mask_29) begin
      _T_5323 <= dl_out_data_29;
    end
    if (dl_out_mask_29) begin
      _T_5325 <= dl_out_data_29;
    end
    if (dl_out_mask_30) begin
      _T_5327 <= dl_out_data_30;
    end
    if (dl_out_mask_30) begin
      _T_5329 <= dl_out_data_30;
    end
    if (dl_out_mask_31) begin
      _T_5331 <= dl_out_data_31;
    end
    if (dl_out_mask_31) begin
      _T_5333 <= dl_out_data_31;
    end
    if (dl_out_mask_32) begin
      _T_5335 <= dl_out_data_32;
    end
    if (dl_out_mask_32) begin
      _T_5337 <= dl_out_data_32;
    end
    if (dl_out_mask_33) begin
      _T_5339 <= dl_out_data_33;
    end
    if (dl_out_mask_33) begin
      _T_5341 <= dl_out_data_33;
    end
    if (dl_out_mask_34) begin
      _T_5343 <= dl_out_data_34;
    end
    if (dl_out_mask_34) begin
      _T_5345 <= dl_out_data_34;
    end
    if (dl_out_mask_35) begin
      _T_5347 <= dl_out_data_35;
    end
    if (dl_out_mask_35) begin
      _T_5349 <= dl_out_data_35;
    end
    if (dl_out_mask_36) begin
      _T_5351 <= dl_out_data_36;
    end
    if (dl_out_mask_36) begin
      _T_5353 <= dl_out_data_36;
    end
    if (dl_out_mask_37) begin
      _T_5355 <= dl_out_data_37;
    end
    if (dl_out_mask_37) begin
      _T_5357 <= dl_out_data_37;
    end
    if (dl_out_mask_38) begin
      _T_5359 <= dl_out_data_38;
    end
    if (dl_out_mask_38) begin
      _T_5361 <= dl_out_data_38;
    end
    if (dl_out_mask_39) begin
      _T_5363 <= dl_out_data_39;
    end
    if (dl_out_mask_39) begin
      _T_5365 <= dl_out_data_39;
    end
    if (dl_out_mask_40) begin
      _T_5367 <= dl_out_data_40;
    end
    if (dl_out_mask_40) begin
      _T_5369 <= dl_out_data_40;
    end
    if (dl_out_mask_41) begin
      _T_5371 <= dl_out_data_41;
    end
    if (dl_out_mask_41) begin
      _T_5373 <= dl_out_data_41;
    end
    if (dl_out_mask_42) begin
      _T_5375 <= dl_out_data_42;
    end
    if (dl_out_mask_42) begin
      _T_5377 <= dl_out_data_42;
    end
    if (dl_out_mask_43) begin
      _T_5379 <= dl_out_data_43;
    end
    if (dl_out_mask_43) begin
      _T_5381 <= dl_out_data_43;
    end
    if (dl_out_mask_44) begin
      _T_5383 <= dl_out_data_44;
    end
    if (dl_out_mask_44) begin
      _T_5385 <= dl_out_data_44;
    end
    if (dl_out_mask_45) begin
      _T_5387 <= dl_out_data_45;
    end
    if (dl_out_mask_45) begin
      _T_5389 <= dl_out_data_45;
    end
    if (dl_out_mask_46) begin
      _T_5391 <= dl_out_data_46;
    end
    if (dl_out_mask_46) begin
      _T_5393 <= dl_out_data_46;
    end
    if (dl_out_mask_47) begin
      _T_5395 <= dl_out_data_47;
    end
    if (dl_out_mask_47) begin
      _T_5397 <= dl_out_data_47;
    end
    if (dl_out_mask_48) begin
      _T_5399 <= dl_out_data_48;
    end
    if (dl_out_mask_48) begin
      _T_5401 <= dl_out_data_48;
    end
    if (dl_out_mask_49) begin
      _T_5403 <= dl_out_data_49;
    end
    if (dl_out_mask_49) begin
      _T_5405 <= dl_out_data_49;
    end
    if (dl_out_mask_50) begin
      _T_5407 <= dl_out_data_50;
    end
    if (dl_out_mask_50) begin
      _T_5409 <= dl_out_data_50;
    end
    if (dl_out_mask_51) begin
      _T_5411 <= dl_out_data_51;
    end
    if (dl_out_mask_51) begin
      _T_5413 <= dl_out_data_51;
    end
    if (dl_out_mask_52) begin
      _T_5415 <= dl_out_data_52;
    end
    if (dl_out_mask_52) begin
      _T_5417 <= dl_out_data_52;
    end
    if (dl_out_mask_53) begin
      _T_5419 <= dl_out_data_53;
    end
    if (dl_out_mask_53) begin
      _T_5421 <= dl_out_data_53;
    end
    if (dl_out_mask_54) begin
      _T_5423 <= dl_out_data_54;
    end
    if (dl_out_mask_54) begin
      _T_5425 <= dl_out_data_54;
    end
    if (dl_out_mask_55) begin
      _T_5427 <= dl_out_data_55;
    end
    if (dl_out_mask_55) begin
      _T_5429 <= dl_out_data_55;
    end
    if (dl_out_mask_56) begin
      _T_5431 <= dl_out_data_56;
    end
    if (dl_out_mask_56) begin
      _T_5433 <= dl_out_data_56;
    end
    if (dl_out_mask_57) begin
      _T_5435 <= dl_out_data_57;
    end
    if (dl_out_mask_57) begin
      _T_5437 <= dl_out_data_57;
    end
    if (dl_out_mask_58) begin
      _T_5439 <= dl_out_data_58;
    end
    if (dl_out_mask_58) begin
      _T_5441 <= dl_out_data_58;
    end
    if (dl_out_mask_59) begin
      _T_5443 <= dl_out_data_59;
    end
    if (dl_out_mask_59) begin
      _T_5445 <= dl_out_data_59;
    end
    if (dl_out_mask_60) begin
      _T_5447 <= dl_out_data_60;
    end
    if (dl_out_mask_60) begin
      _T_5449 <= dl_out_data_60;
    end
    if (dl_out_mask_61) begin
      _T_5451 <= dl_out_data_61;
    end
    if (dl_out_mask_61) begin
      _T_5453 <= dl_out_data_61;
    end
    if (dl_out_mask_62) begin
      _T_5455 <= dl_out_data_62;
    end
    if (dl_out_mask_62) begin
      _T_5457 <= dl_out_data_62;
    end
    if (dl_out_mask_63) begin
      _T_5459 <= dl_out_data_63;
    end
    if (dl_out_mask_63) begin
      _T_5461 <= dl_out_data_63;
    end
  end
  always @(posedge nvdla_core_ng_clk) begin
    if (_T_337) begin
      dat_entry_st <= 15'h0;
    end else begin
      if (_T_759) begin
        if (sc2cdma_dat_pending_req) begin
          dat_entry_st <= 15'h0;
        end else begin
          if (is_dat_entry_st_wrap) begin
            dat_entry_st <= dat_entry_st_inc_wrap;
          end else begin
            dat_entry_st <= dat_entry_st_inc;
          end
        end
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
// File Name: NV_NVDLA_CSC_dl.v
// ================================================================
// NVDLA Open Source Project
// 
// Copyright(c) 2016 - 2017 NVIDIA Corporation.  Licensed under the
// NVDLA Open Hardware License; Check "LICENSE" which comes with 
// this distribution for more information.
// ================================================================
// File Name: NV_NVDLA_CSC.h

module NV_NVDLA_CSC_dl (
   nvdla_core_clk //|< i
  ,nvdla_core_rstn //|< i
  ,sg2dl_pvld //|< i
  ,sg2dl_pd //|< i
  ,sc_state //|< i
  ,sg2dl_reuse_rls //|< i
  ,sc2cdma_dat_pending_req //|< i
  ,cdma2sc_dat_updt //|< i
  ,cdma2sc_dat_entries //|< i
  ,cdma2sc_dat_slices //|< i
  ,sc2cdma_dat_updt //|> o
  ,sc2cdma_dat_entries //|> o
  ,sc2cdma_dat_slices //|> o
  ,sc2buf_dat_rd_en //|> o
  ,sc2buf_dat_rd_addr //|> o
  ,sc2buf_dat_rd_valid //|< i
  ,sc2buf_dat_rd_data //|< i
  ,sc2mac_dat_a_pvld //|> o
  ,sc2mac_dat_a_mask //|> o
//: for(my $i=0; $i<64 ; $i++){
//: print qq(
//: ,sc2mac_dat_a_data${i} //|> o )
//: }
//| eperl: generated_beg (DO NOT EDIT BELOW)

,sc2mac_dat_a_data0 //|> o 
,sc2mac_dat_a_data1 //|> o 
,sc2mac_dat_a_data2 //|> o 
,sc2mac_dat_a_data3 //|> o 
,sc2mac_dat_a_data4 //|> o 
,sc2mac_dat_a_data5 //|> o 
,sc2mac_dat_a_data6 //|> o 
,sc2mac_dat_a_data7 //|> o 
,sc2mac_dat_a_data8 //|> o 
,sc2mac_dat_a_data9 //|> o 
,sc2mac_dat_a_data10 //|> o 
,sc2mac_dat_a_data11 //|> o 
,sc2mac_dat_a_data12 //|> o 
,sc2mac_dat_a_data13 //|> o 
,sc2mac_dat_a_data14 //|> o 
,sc2mac_dat_a_data15 //|> o 
,sc2mac_dat_a_data16 //|> o 
,sc2mac_dat_a_data17 //|> o 
,sc2mac_dat_a_data18 //|> o 
,sc2mac_dat_a_data19 //|> o 
,sc2mac_dat_a_data20 //|> o 
,sc2mac_dat_a_data21 //|> o 
,sc2mac_dat_a_data22 //|> o 
,sc2mac_dat_a_data23 //|> o 
,sc2mac_dat_a_data24 //|> o 
,sc2mac_dat_a_data25 //|> o 
,sc2mac_dat_a_data26 //|> o 
,sc2mac_dat_a_data27 //|> o 
,sc2mac_dat_a_data28 //|> o 
,sc2mac_dat_a_data29 //|> o 
,sc2mac_dat_a_data30 //|> o 
,sc2mac_dat_a_data31 //|> o 
,sc2mac_dat_a_data32 //|> o 
,sc2mac_dat_a_data33 //|> o 
,sc2mac_dat_a_data34 //|> o 
,sc2mac_dat_a_data35 //|> o 
,sc2mac_dat_a_data36 //|> o 
,sc2mac_dat_a_data37 //|> o 
,sc2mac_dat_a_data38 //|> o 
,sc2mac_dat_a_data39 //|> o 
,sc2mac_dat_a_data40 //|> o 
,sc2mac_dat_a_data41 //|> o 
,sc2mac_dat_a_data42 //|> o 
,sc2mac_dat_a_data43 //|> o 
,sc2mac_dat_a_data44 //|> o 
,sc2mac_dat_a_data45 //|> o 
,sc2mac_dat_a_data46 //|> o 
,sc2mac_dat_a_data47 //|> o 
,sc2mac_dat_a_data48 //|> o 
,sc2mac_dat_a_data49 //|> o 
,sc2mac_dat_a_data50 //|> o 
,sc2mac_dat_a_data51 //|> o 
,sc2mac_dat_a_data52 //|> o 
,sc2mac_dat_a_data53 //|> o 
,sc2mac_dat_a_data54 //|> o 
,sc2mac_dat_a_data55 //|> o 
,sc2mac_dat_a_data56 //|> o 
,sc2mac_dat_a_data57 //|> o 
,sc2mac_dat_a_data58 //|> o 
,sc2mac_dat_a_data59 //|> o 
,sc2mac_dat_a_data60 //|> o 
,sc2mac_dat_a_data61 //|> o 
,sc2mac_dat_a_data62 //|> o 
,sc2mac_dat_a_data63 //|> o 
//| eperl: generated_end (DO NOT EDIT ABOVE)
  ,sc2mac_dat_a_pd //|> o
  ,sc2mac_dat_b_pvld //|> o
  ,sc2mac_dat_b_mask //|> o
//: for(my $i=0; $i<64 ; $i++){
//: print qq(
//: ,sc2mac_dat_b_data${i} //|> o )
//: }
//| eperl: generated_beg (DO NOT EDIT BELOW)

,sc2mac_dat_b_data0 //|> o 
,sc2mac_dat_b_data1 //|> o 
,sc2mac_dat_b_data2 //|> o 
,sc2mac_dat_b_data3 //|> o 
,sc2mac_dat_b_data4 //|> o 
,sc2mac_dat_b_data5 //|> o 
,sc2mac_dat_b_data6 //|> o 
,sc2mac_dat_b_data7 //|> o 
,sc2mac_dat_b_data8 //|> o 
,sc2mac_dat_b_data9 //|> o 
,sc2mac_dat_b_data10 //|> o 
,sc2mac_dat_b_data11 //|> o 
,sc2mac_dat_b_data12 //|> o 
,sc2mac_dat_b_data13 //|> o 
,sc2mac_dat_b_data14 //|> o 
,sc2mac_dat_b_data15 //|> o 
,sc2mac_dat_b_data16 //|> o 
,sc2mac_dat_b_data17 //|> o 
,sc2mac_dat_b_data18 //|> o 
,sc2mac_dat_b_data19 //|> o 
,sc2mac_dat_b_data20 //|> o 
,sc2mac_dat_b_data21 //|> o 
,sc2mac_dat_b_data22 //|> o 
,sc2mac_dat_b_data23 //|> o 
,sc2mac_dat_b_data24 //|> o 
,sc2mac_dat_b_data25 //|> o 
,sc2mac_dat_b_data26 //|> o 
,sc2mac_dat_b_data27 //|> o 
,sc2mac_dat_b_data28 //|> o 
,sc2mac_dat_b_data29 //|> o 
,sc2mac_dat_b_data30 //|> o 
,sc2mac_dat_b_data31 //|> o 
,sc2mac_dat_b_data32 //|> o 
,sc2mac_dat_b_data33 //|> o 
,sc2mac_dat_b_data34 //|> o 
,sc2mac_dat_b_data35 //|> o 
,sc2mac_dat_b_data36 //|> o 
,sc2mac_dat_b_data37 //|> o 
,sc2mac_dat_b_data38 //|> o 
,sc2mac_dat_b_data39 //|> o 
,sc2mac_dat_b_data40 //|> o 
,sc2mac_dat_b_data41 //|> o 
,sc2mac_dat_b_data42 //|> o 
,sc2mac_dat_b_data43 //|> o 
,sc2mac_dat_b_data44 //|> o 
,sc2mac_dat_b_data45 //|> o 
,sc2mac_dat_b_data46 //|> o 
,sc2mac_dat_b_data47 //|> o 
,sc2mac_dat_b_data48 //|> o 
,sc2mac_dat_b_data49 //|> o 
,sc2mac_dat_b_data50 //|> o 
,sc2mac_dat_b_data51 //|> o 
,sc2mac_dat_b_data52 //|> o 
,sc2mac_dat_b_data53 //|> o 
,sc2mac_dat_b_data54 //|> o 
,sc2mac_dat_b_data55 //|> o 
,sc2mac_dat_b_data56 //|> o 
,sc2mac_dat_b_data57 //|> o 
,sc2mac_dat_b_data58 //|> o 
,sc2mac_dat_b_data59 //|> o 
,sc2mac_dat_b_data60 //|> o 
,sc2mac_dat_b_data61 //|> o 
,sc2mac_dat_b_data62 //|> o 
,sc2mac_dat_b_data63 //|> o 
//| eperl: generated_end (DO NOT EDIT ABOVE)
  ,sc2mac_dat_b_pd //|> o
  ,nvdla_core_ng_clk //|< i
  ,reg2dp_op_en //|< i
  ,reg2dp_conv_mode //|< i
  ,reg2dp_batches //|< i
  ,reg2dp_proc_precision //|< i
  ,reg2dp_datain_format //|< i
  ,reg2dp_skip_data_rls //|< i
  ,reg2dp_datain_channel_ext //|< i
  ,reg2dp_datain_height_ext //|< i
  ,reg2dp_datain_width_ext //|< i
  ,reg2dp_y_extension //|< i
  ,reg2dp_weight_channel_ext //|< i
  ,reg2dp_entries //|< i
  ,reg2dp_dataout_width //|< i
  ,reg2dp_rls_slices //|< i
  ,reg2dp_conv_x_stride_ext //|< i
  ,reg2dp_conv_y_stride_ext //|< i
  ,reg2dp_x_dilation_ext //|< i
  ,reg2dp_y_dilation_ext //|< i
  ,reg2dp_pad_left //|< i
  ,reg2dp_pad_top //|< i
  ,reg2dp_pad_value //|< i
  ,reg2dp_data_bank //|< i
  ,reg2dp_pra_truncate //|< i
  ,slcg_wg_en //|> o
  );
input nvdla_core_clk;
input nvdla_core_rstn;
input sg2dl_pvld; /* data valid */
input [30:0] sg2dl_pd;
input [1:0] sc_state;
input sg2dl_reuse_rls;
input sc2cdma_dat_pending_req;
input cdma2sc_dat_updt; /* data valid */
input [15 -1:0] cdma2sc_dat_entries;
input [13:0] cdma2sc_dat_slices;
output sc2cdma_dat_updt; /* data valid */
output [15 -1:0] sc2cdma_dat_entries;
output [13:0] sc2cdma_dat_slices;
output sc2buf_dat_rd_en; /* data valid */
output [13 -1:0] sc2buf_dat_rd_addr;
input sc2buf_dat_rd_valid; /* data valid */
input [512 -1:0] sc2buf_dat_rd_data;
output sc2mac_dat_a_pvld; /* data valid */
output [64 -1:0] sc2mac_dat_a_mask;
//: for(my $i=0; $i<64 ; $i++){
//: print qq(
//: output [8 -1:0] sc2mac_dat_a_data${i}; )
//: }
//| eperl: generated_beg (DO NOT EDIT BELOW)

output [8 -1:0] sc2mac_dat_a_data0; 
output [8 -1:0] sc2mac_dat_a_data1; 
output [8 -1:0] sc2mac_dat_a_data2; 
output [8 -1:0] sc2mac_dat_a_data3; 
output [8 -1:0] sc2mac_dat_a_data4; 
output [8 -1:0] sc2mac_dat_a_data5; 
output [8 -1:0] sc2mac_dat_a_data6; 
output [8 -1:0] sc2mac_dat_a_data7; 
output [8 -1:0] sc2mac_dat_a_data8; 
output [8 -1:0] sc2mac_dat_a_data9; 
output [8 -1:0] sc2mac_dat_a_data10; 
output [8 -1:0] sc2mac_dat_a_data11; 
output [8 -1:0] sc2mac_dat_a_data12; 
output [8 -1:0] sc2mac_dat_a_data13; 
output [8 -1:0] sc2mac_dat_a_data14; 
output [8 -1:0] sc2mac_dat_a_data15; 
output [8 -1:0] sc2mac_dat_a_data16; 
output [8 -1:0] sc2mac_dat_a_data17; 
output [8 -1:0] sc2mac_dat_a_data18; 
output [8 -1:0] sc2mac_dat_a_data19; 
output [8 -1:0] sc2mac_dat_a_data20; 
output [8 -1:0] sc2mac_dat_a_data21; 
output [8 -1:0] sc2mac_dat_a_data22; 
output [8 -1:0] sc2mac_dat_a_data23; 
output [8 -1:0] sc2mac_dat_a_data24; 
output [8 -1:0] sc2mac_dat_a_data25; 
output [8 -1:0] sc2mac_dat_a_data26; 
output [8 -1:0] sc2mac_dat_a_data27; 
output [8 -1:0] sc2mac_dat_a_data28; 
output [8 -1:0] sc2mac_dat_a_data29; 
output [8 -1:0] sc2mac_dat_a_data30; 
output [8 -1:0] sc2mac_dat_a_data31; 
output [8 -1:0] sc2mac_dat_a_data32; 
output [8 -1:0] sc2mac_dat_a_data33; 
output [8 -1:0] sc2mac_dat_a_data34; 
output [8 -1:0] sc2mac_dat_a_data35; 
output [8 -1:0] sc2mac_dat_a_data36; 
output [8 -1:0] sc2mac_dat_a_data37; 
output [8 -1:0] sc2mac_dat_a_data38; 
output [8 -1:0] sc2mac_dat_a_data39; 
output [8 -1:0] sc2mac_dat_a_data40; 
output [8 -1:0] sc2mac_dat_a_data41; 
output [8 -1:0] sc2mac_dat_a_data42; 
output [8 -1:0] sc2mac_dat_a_data43; 
output [8 -1:0] sc2mac_dat_a_data44; 
output [8 -1:0] sc2mac_dat_a_data45; 
output [8 -1:0] sc2mac_dat_a_data46; 
output [8 -1:0] sc2mac_dat_a_data47; 
output [8 -1:0] sc2mac_dat_a_data48; 
output [8 -1:0] sc2mac_dat_a_data49; 
output [8 -1:0] sc2mac_dat_a_data50; 
output [8 -1:0] sc2mac_dat_a_data51; 
output [8 -1:0] sc2mac_dat_a_data52; 
output [8 -1:0] sc2mac_dat_a_data53; 
output [8 -1:0] sc2mac_dat_a_data54; 
output [8 -1:0] sc2mac_dat_a_data55; 
output [8 -1:0] sc2mac_dat_a_data56; 
output [8 -1:0] sc2mac_dat_a_data57; 
output [8 -1:0] sc2mac_dat_a_data58; 
output [8 -1:0] sc2mac_dat_a_data59; 
output [8 -1:0] sc2mac_dat_a_data60; 
output [8 -1:0] sc2mac_dat_a_data61; 
output [8 -1:0] sc2mac_dat_a_data62; 
output [8 -1:0] sc2mac_dat_a_data63; 
//| eperl: generated_end (DO NOT EDIT ABOVE)
output [8:0] sc2mac_dat_a_pd;
output sc2mac_dat_b_pvld; /* data valid */
output [64 -1:0] sc2mac_dat_b_mask;
//: for(my $i=0; $i<64 ; $i++){
//: print qq(
//: output [8 -1:0] sc2mac_dat_b_data${i}; )
//: }
//| eperl: generated_beg (DO NOT EDIT BELOW)

output [8 -1:0] sc2mac_dat_b_data0; 
output [8 -1:0] sc2mac_dat_b_data1; 
output [8 -1:0] sc2mac_dat_b_data2; 
output [8 -1:0] sc2mac_dat_b_data3; 
output [8 -1:0] sc2mac_dat_b_data4; 
output [8 -1:0] sc2mac_dat_b_data5; 
output [8 -1:0] sc2mac_dat_b_data6; 
output [8 -1:0] sc2mac_dat_b_data7; 
output [8 -1:0] sc2mac_dat_b_data8; 
output [8 -1:0] sc2mac_dat_b_data9; 
output [8 -1:0] sc2mac_dat_b_data10; 
output [8 -1:0] sc2mac_dat_b_data11; 
output [8 -1:0] sc2mac_dat_b_data12; 
output [8 -1:0] sc2mac_dat_b_data13; 
output [8 -1:0] sc2mac_dat_b_data14; 
output [8 -1:0] sc2mac_dat_b_data15; 
output [8 -1:0] sc2mac_dat_b_data16; 
output [8 -1:0] sc2mac_dat_b_data17; 
output [8 -1:0] sc2mac_dat_b_data18; 
output [8 -1:0] sc2mac_dat_b_data19; 
output [8 -1:0] sc2mac_dat_b_data20; 
output [8 -1:0] sc2mac_dat_b_data21; 
output [8 -1:0] sc2mac_dat_b_data22; 
output [8 -1:0] sc2mac_dat_b_data23; 
output [8 -1:0] sc2mac_dat_b_data24; 
output [8 -1:0] sc2mac_dat_b_data25; 
output [8 -1:0] sc2mac_dat_b_data26; 
output [8 -1:0] sc2mac_dat_b_data27; 
output [8 -1:0] sc2mac_dat_b_data28; 
output [8 -1:0] sc2mac_dat_b_data29; 
output [8 -1:0] sc2mac_dat_b_data30; 
output [8 -1:0] sc2mac_dat_b_data31; 
output [8 -1:0] sc2mac_dat_b_data32; 
output [8 -1:0] sc2mac_dat_b_data33; 
output [8 -1:0] sc2mac_dat_b_data34; 
output [8 -1:0] sc2mac_dat_b_data35; 
output [8 -1:0] sc2mac_dat_b_data36; 
output [8 -1:0] sc2mac_dat_b_data37; 
output [8 -1:0] sc2mac_dat_b_data38; 
output [8 -1:0] sc2mac_dat_b_data39; 
output [8 -1:0] sc2mac_dat_b_data40; 
output [8 -1:0] sc2mac_dat_b_data41; 
output [8 -1:0] sc2mac_dat_b_data42; 
output [8 -1:0] sc2mac_dat_b_data43; 
output [8 -1:0] sc2mac_dat_b_data44; 
output [8 -1:0] sc2mac_dat_b_data45; 
output [8 -1:0] sc2mac_dat_b_data46; 
output [8 -1:0] sc2mac_dat_b_data47; 
output [8 -1:0] sc2mac_dat_b_data48; 
output [8 -1:0] sc2mac_dat_b_data49; 
output [8 -1:0] sc2mac_dat_b_data50; 
output [8 -1:0] sc2mac_dat_b_data51; 
output [8 -1:0] sc2mac_dat_b_data52; 
output [8 -1:0] sc2mac_dat_b_data53; 
output [8 -1:0] sc2mac_dat_b_data54; 
output [8 -1:0] sc2mac_dat_b_data55; 
output [8 -1:0] sc2mac_dat_b_data56; 
output [8 -1:0] sc2mac_dat_b_data57; 
output [8 -1:0] sc2mac_dat_b_data58; 
output [8 -1:0] sc2mac_dat_b_data59; 
output [8 -1:0] sc2mac_dat_b_data60; 
output [8 -1:0] sc2mac_dat_b_data61; 
output [8 -1:0] sc2mac_dat_b_data62; 
output [8 -1:0] sc2mac_dat_b_data63; 
//| eperl: generated_end (DO NOT EDIT ABOVE)
output [8:0] sc2mac_dat_b_pd;
input nvdla_core_ng_clk;
input [0:0] reg2dp_op_en;
input [0:0] reg2dp_conv_mode;
input [4:0] reg2dp_batches;
input [1:0] reg2dp_proc_precision;
input [0:0] reg2dp_datain_format;
input [0:0] reg2dp_skip_data_rls;
input [12:0] reg2dp_datain_channel_ext;
input [12:0] reg2dp_datain_height_ext;
input [12:0] reg2dp_datain_width_ext;
input [1:0] reg2dp_y_extension;
input [12:0] reg2dp_weight_channel_ext;
input [13:0] reg2dp_entries;
input [12:0] reg2dp_dataout_width;
input [11:0] reg2dp_rls_slices;
input [2:0] reg2dp_conv_x_stride_ext;
input [2:0] reg2dp_conv_y_stride_ext;
input [4:0] reg2dp_x_dilation_ext;
input [4:0] reg2dp_y_dilation_ext;
input [4:0] reg2dp_pad_left;
input [4:0] reg2dp_pad_top;
input [15:0] reg2dp_pad_value;
input [4:0] reg2dp_data_bank;
input [1:0] reg2dp_pra_truncate;
output slcg_wg_en;
reg [4:0] batch_cmp;
reg [4:0] batch_cnt;
reg [13 -1:0] c_bias;
reg [13 -1:0] c_bias_d1;
reg [3:0] conv_x_stride;
reg [3:0] conv_y_stride;
reg [15 -1:0] dat_entry_avl;
reg [15 -1:0] dat_entry_end;
reg [15 -1:0] dat_entry_st;
reg dat_exec_valid_d1;
reg dat_exec_valid_d2;
reg dat_l0c0_dummy;
reg [512 -1:0] dat_l0c0;
reg dat_l0c1_dummy;
reg [512 -1:0] dat_l0c1;
reg dat_l1c0_dummy;
reg [512 -1:0] dat_l1c0;
reg dat_l1c1_dummy;
reg [512 -1:0] dat_l1c1;
reg dat_l2c0_dummy;
reg [512 -1:0] dat_l2c0;
reg dat_l2c1_dummy;
reg [512 -1:0] dat_l2c1;
reg dat_l3c0_dummy;
reg [512 -1:0] dat_l3c0;
reg dat_l3c1_dummy;
reg [512 -1:0] dat_l3c1;
reg [512 -1:0] dat_out_bypass_data;
reg [64 -1:0] dat_out_bypass_mask;
reg [8:0] dat_out_flag;
reg dat_out_pvld;
reg dat_pipe_local_valid;
reg dat_pipe_valid_d1;
reg dat_pipe_valid_d2;
reg [7:0] dat_req_bytes_d1;
reg [7:0] dat_req_bytes_d2;
reg dat_req_ch_end_d1;
reg dat_req_ch_end_d2;
reg [1:0] dat_req_cur_sub_h_d1;
reg [1:0] dat_req_cur_sub_h_d2;
reg dat_req_dummy_d1;
reg dat_req_dummy_d2;
reg [8:0] dat_req_flag_d1;
reg [8:0] dat_req_flag_d2;
reg dat_req_rls_d1;
reg dat_req_rls_d2;
reg dat_req_sub_c_d1;
reg dat_req_sub_c_d2;
reg [13 -1:0] dat_req_sub_h_0_addr;
reg [13 -1:0] dat_req_sub_h_1_addr;
reg [13 -1:0] dat_req_sub_h_2_addr;
reg [13 -1:0] dat_req_sub_h_3_addr;
reg [1:0] dat_req_sub_h_d1;
reg [1:0] dat_req_sub_h_d2;
reg [1:0] dat_req_sub_w_d1;
reg [1:0] dat_req_sub_w_d2;
reg dat_req_sub_w_st_d1;
reg dat_req_sub_w_st_d2;
reg dat_req_valid_d1;
wire [512 -1:0] dat_rsp_l0_sft;
reg [512 -1:0] dat_rsp_l0_sft_d1;
reg [512 -1:0] dat_rsp_l0_sft_d2;
reg [512 -1:0] dat_rsp_l0_sft_d3;
wire [512 -1:0] dat_rsp_l1_sft;
reg [512 -1:0] dat_rsp_l1_sft_d2;
reg [512 -1:0] dat_rsp_l1_sft_d3;
wire [512 -1:0] dat_rsp_l2_sft;
reg [512 -1:0] dat_rsp_l2_sft_d3;
wire [512 -1:0] dat_rsp_l3_sft;
reg [26:0] dat_rsp_pd_d1;
reg [26:0] dat_rsp_pd_d2;
reg [26:0] dat_rsp_pd_d3;
reg [26:0] dat_rsp_pd_d4;
reg [3:0] dat_rsp_pra_en_d1;
reg dat_rsp_pvld_d1;
reg dat_rsp_pvld_d2;
reg dat_rsp_pvld_d3;
reg dat_rsp_pvld_d4;
reg [255:0] dat_rsp_wg_ch0_d1;
reg [255:0] dat_rsp_wg_ch1_d1;
reg [255:0] dat_rsp_wg_ch2_d1;
reg [255:0] dat_rsp_wg_ch3_d1;
reg [13:0] dat_slice_avl;
reg [4:0] data_bank;
reg [5:0] data_batch;
reg [10:0] datain_c_cnt;
reg [10:0] datain_channel_cmp;
reg [13:0] datain_h_cnt;
reg [13:0] datain_h_ori;
reg [12:0] datain_height_cmp;
reg [13:0] datain_w_cnt;
reg [13:0] datain_w_ori;
reg [13:0] datain_width;
reg [12:0] datain_width_cmp;
reg [12:0] dataout_w_cnt;
reg [12:0] dataout_w_ori;
reg [12:0] dataout_width_cmp;
reg [8:0] dl_out_flag;
reg [64 -1:0] dl_out_mask;
reg dl_out_pvld;
reg dl_out_pvld_d1;
reg [30:0] dl_pd_d1;
reg [30:0] dl_pd_d2;
reg [30:0] dl_pd_d3;
reg [30:0] dl_pd_d4;
reg dl_pvld_d1;
reg dl_pvld_d2;
reg dl_pvld_d3;
reg dl_pvld_d4;
reg [15 -1:0] entries;
reg [15 -1:0] entries_batch;
reg [15 -1:0] entries_cmp;
reg [13 -1:0] h_bias_0_d1;
reg [13 -1:0] h_bias_0_stride;
reg [13 -1:0] h_bias_1_d1;
reg [13 -1:0] h_bias_1_stride;
reg [13 -1:0] h_bias_2_d1;
reg [13 -1:0] h_bias_2_stride;
reg [13 -1:0] h_bias_3_d1;
reg [13 -1:0] h_bias_3_stride;
reg [13:0] h_offset_slice;
reg [33:0] is_img_d1;
reg is_sg_running_d1;
reg [21:0] is_winograd_d1;
reg [15 -1:0] last_entries;
reg [13:0] last_slices;
reg layer_st_d1;
reg [15:0] pad_value;
reg [11:0] pixel_ch_stride;
reg pixel_force_clr_d1;
reg pixel_force_fetch_d1;
reg [15:0] pixel_w_ch_ori;
reg [15:0] pixel_w_cnt;
reg [15:0] pixel_w_ori;
reg [6:0] pixel_x_add;
reg [6:0] pixel_x_byte_stride;
reg [5:0] pixel_x_init;
reg [6:0] pixel_x_init_offset;
reg pixel_x_stride_odd;
reg [7:0] pra_precision;
reg [7:0] pra_truncate;
reg [15 -1:0] rls_entries;
reg [13:0] rls_slices;
reg [7:0] rsp_sft_cnt_l0;
reg [7:0] rsp_sft_cnt_l0_ori;
reg [7:0] rsp_sft_cnt_l1;
reg [7:0] rsp_sft_cnt_l1_ori;
reg [7:0] rsp_sft_cnt_l2;
reg [7:0] rsp_sft_cnt_l2_ori;
reg [7:0] rsp_sft_cnt_l3;
reg [7:0] rsp_sft_cnt_l3_ori;
reg [13 -1:0] sc2buf_dat_rd_addr;
reg [13 -1:0] sc2buf_dat_rd_next1_addr;
reg sc2buf_dat_rd_en;
reg [15 -1:0] sc2cdma_dat_entries;
reg [13:0] sc2cdma_dat_slices;
reg sc2cdma_dat_updt;
reg [64 -1:0] sc2mac_dat_a_mask;
reg [8:0] sc2mac_dat_a_pd;
reg sc2mac_dat_a_pvld;
reg [64 -1:0] sc2mac_dat_b_mask;
reg [8:0] sc2mac_dat_b_pd;
reg sc2mac_dat_b_pvld;
reg slcg_wg_en_d1;
reg slcg_wg_en_d2;
reg slcg_wg_en_d3;
reg [13:0] slice_left;
reg [6:0] stripe_cnt;
reg [2:0] sub_h_cmp_g0;
reg [2:0] sub_h_cmp_g1;
reg [1:0] sub_h_cnt;
reg [2:0] sub_h_total_g0;
reg [2:0] sub_h_total_g1;
reg [2:0] sub_h_total_g10;
reg [2:0] sub_h_total_g11;
reg [1:0] sub_h_total_g2;
reg [2:0] sub_h_total_g3;
reg [2:0] sub_h_total_g4;
reg [2:0] sub_h_total_g5;
reg [2:0] sub_h_total_g6;
reg [2:0] sub_h_total_g7;
reg [2:0] sub_h_total_g8;
reg [2:0] sub_h_total_g9;
reg [13 -1:0] w_bias_d1;
reg [5:0] x_dilate;
reg [5:0] y_dilate;
wire [4:0] batch_cmp_w;
wire [4:0] batch_cnt_w;
wire [13 -1:0] c_bias_add;
wire c_bias_d1_reg_en;
wire c_bias_reg_en;
wire [13 -1:0] c_bias_w;
wire cbuf_reset;
wire [3:0] conv_x_stride_w;
wire [3:0] conv_y_stride_w;
wire dat_conv_req_dummy;
wire dat_dummy_l0_en;
wire dat_dummy_l1_en;
wire dat_dummy_l2_en;
wire dat_dummy_l3_en;
wire [15 -1:0] dat_entry_avl_add;
wire [15 -1:0] dat_entry_avl_sub;
wire [15 -1:0] dat_entry_avl_w;
wire [15 -1:0] dat_entry_end_inc;
wire [15 -1:0] dat_entry_end_inc_wrap;
wire [15 -1:0] dat_entry_end_w;
wire [15 -1:0] dat_entry_st_inc;
wire [15 -1:0] dat_entry_st_inc_wrap;
wire [15 -1:0] dat_entry_st_w;
wire mon_dat_entry_end_inc;
wire mon_dat_entry_st_inc;
wire dat_exec_valid;
wire dat_img_req_dummy;
wire dat_img_req_skip;
wire dat_l0_set;
wire dat_l0c0_dummy_w;
wire dat_l0c0_en;
wire dat_l0c1_dummy_w;
wire dat_l0c1_en;
wire dat_l1_set;
wire dat_l1c0_dummy_w;
wire dat_l1c0_en;
wire dat_l1c0_hi_en;
wire dat_l1c1_dummy_w;
wire dat_l1c1_en;
wire dat_l1c1_hi_en;
wire dat_l2_set;
wire dat_l2c0_dummy_w;
wire dat_l2c0_en;
wire dat_l2c1_dummy_w;
wire dat_l2c1_en;
wire dat_l3_set;
wire dat_l3c0_dummy_w;
wire dat_l3c0_en;
wire dat_l3c1_dummy_w;
wire dat_l3c1_en;
wire [512 -1:0] dat_out_bypass_data_w;
wire [64 -1:0] dat_out_bypass_mask_w;
wire dat_out_bypass_p0_vld_w;
wire [512 -1:0] dat_out_data;
wire [8:0] dat_out_flag_l0;
wire [8:0] dat_out_flag_w;
wire [64 -1:0] dat_out_mask;
wire dat_out_pvld_l0;
wire dat_out_pvld_w;
wire [512 -1:0] dat_out_wg_8b;
wire [512 -1:0] dat_out_wg_data;
wire [64 -1:0] dat_out_wg_mask;
wire [64 -1:0] dat_out_wg_mask_int8;
wire dat_pipe_local_valid_w;
wire dat_pipe_valid;
wire [512 -1:0] dat_pra_dat;
wire [255:0] dat_pra_dat_ch0;
wire [255:0] dat_pra_dat_ch1;
wire [255:0] dat_pra_dat_ch2;
wire [255:0] dat_pra_dat_ch3;
wire [13 -1:0] dat_req_addr_last;
wire [13:0] dat_req_addr_sum;
wire [13 -1:0] dat_req_addr_w;
wire [13 -1:0] dat_req_addr_wrap;
wire [13 -1:0] dat_req_base_d1;
wire mon_dat_req_addr_sum;
wire [4:0] dat_req_batch_index;
wire [7:0] dat_req_bytes;
wire dat_req_channel_end;
wire dat_req_dummy;
wire dat_req_exec_dummy;
wire dat_req_exec_pvld;
wire [1:0] dat_req_exec_sub_h;
wire [8:0] dat_req_flag_w;
wire dat_req_layer_end;
wire [7:0] dat_req_pipe_bytes;
wire dat_req_pipe_ch_end;
wire [1:0] dat_req_pipe_cur_sub_h;
wire dat_req_pipe_dummy;
wire [8:0] dat_req_pipe_flag;
wire [28:0] dat_req_pipe_pd;
wire dat_req_pipe_pvld;
wire dat_req_pipe_rls;
wire dat_req_pipe_sub_c;
wire [1:0] dat_req_pipe_sub_h;
wire [1:0] dat_req_pipe_sub_w;
wire dat_req_pipe_sub_w_st;
wire dat_req_skip;
wire dat_req_stripe_end;
wire dat_req_stripe_st;
wire dat_req_sub_c_w;
wire dat_req_sub_h_0_addr_en;
wire dat_req_sub_h_1_addr_en;
wire dat_req_sub_h_2_addr_en;
wire dat_req_sub_h_3_addr_en;
wire dat_req_sub_w_st_en;
wire [1:0] dat_req_sub_w_w;
wire dat_req_valid;
wire dat_rls;
wire [4:0] dat_rsp_batch_index;
wire [7:0] dat_rsp_bytes;
wire dat_rsp_ch_end;
wire dat_rsp_channel_end;
wire [512 -1:0] dat_rsp_conv;
wire [512 -1:0] dat_rsp_conv_8b;
wire [64 -1:0] dat_rsp_cur_h_e2_mask_8b;
wire [64 -1:0] dat_rsp_cur_h_e4_mask_8b;
wire [64 -1:0] dat_rsp_cur_h_mask_p1;
wire [31:0] dat_rsp_cur_h_mask_p2;
wire [31:0] dat_rsp_cur_h_mask_p3;
wire [1:0] dat_rsp_cur_sub_h;
wire [512 -1:0] dat_rsp_data_w;
wire dat_rsp_exec_dummy;
wire dat_rsp_exec_dummy_d0;
wire dat_rsp_exec_pvld;
wire dat_rsp_exec_pvld_d0;
wire [1:0] dat_rsp_exec_sub_h;
wire [1:0] dat_rsp_exec_sub_h_d0;
wire [8:0] dat_rsp_flag;
wire [512 -1:0] dat_rsp_img;
wire [512 -1:0] dat_rsp_img_8b;
wire dat_rsp_l0_block_end;
wire [8:0] dat_rsp_l0_flag;
wire dat_rsp_l0_pvld;
wire [512*2 -1:0] dat_rsp_l0_sft_in;
wire dat_rsp_l0_stripe_end;
wire dat_rsp_l0_sub_c;
wire [512 -1:0] dat_rsp_l0c0;
wire [512 -1:0] dat_rsp_l0c1;
wire dat_rsp_l1_block_end;
wire [8:0] dat_rsp_l1_flag;
wire dat_rsp_l1_pvld;
wire [512*2 -1:0] dat_rsp_l1_sft_in;
wire dat_rsp_l1_stripe_end;
wire dat_rsp_l1_sub_c;
wire [512 -1:0] dat_rsp_l1c0;
wire [512 -1:0] dat_rsp_l1c1;
wire dat_rsp_l2_block_end;
wire [8:0] dat_rsp_l2_flag;
wire dat_rsp_l2_pvld;
wire [512*2 -1:0] dat_rsp_l2_sft_in;
wire dat_rsp_l2_stripe_end;
wire dat_rsp_l2_sub_c;
wire [512 -1:0] dat_rsp_l2c0;
wire [512 -1:0] dat_rsp_l2c1;
wire dat_rsp_l3_block_end;
wire [8:0] dat_rsp_l3_flag;
wire dat_rsp_l3_pvld;
wire [512*2 -1:0] dat_rsp_l3_sft_in;
wire dat_rsp_l3_stripe_end;
wire dat_rsp_l3_sub_c;
wire [512 -1:0] dat_rsp_l3c0;
wire [512 -1:0] dat_rsp_l3c1;
wire dat_rsp_layer_end;
wire [64 -1:0] dat_rsp_mask_8b;
wire [64 -1:0] dat_rsp_mask_val_int8;
wire [64 -1:0] dat_rsp_mask_w;
wire [64 -1:0] dat_rsp_ori_mask;
wire dat_rsp_p0_vld_w;
wire dat_rsp_p1_vld_w;
wire [512 -1:0] dat_rsp_pad_value;
wire [26:0] dat_rsp_pd;
wire [26:0] dat_rsp_pd_d0;
wire [7:0] dat_rsp_pipe_bytes;
wire dat_rsp_pipe_ch_end;
wire [1:0] dat_rsp_pipe_cur_sub_h;
wire dat_rsp_pipe_dummy;
wire [8:0] dat_rsp_pipe_flag;
wire [28:0] dat_rsp_pipe_pd;
wire [28:0] dat_rsp_pipe_pd_d0;
wire dat_rsp_pipe_pvld;
wire dat_rsp_pipe_pvld_d0;
wire dat_rsp_pipe_rls;
wire dat_rsp_pipe_sub_c;
wire [1:0] dat_rsp_pipe_sub_h;
wire [1:0] dat_rsp_pipe_sub_w;
wire dat_rsp_pipe_sub_w_st;
wire dat_rsp_pra_en;
wire dat_rsp_pvld;
wire dat_rsp_pvld_d0;
wire dat_rsp_rls;
wire dat_rsp_stripe_end;
wire dat_rsp_stripe_st;
wire dat_rsp_sub_c;
wire [1:0] dat_rsp_sub_h;
wire [1:0] dat_rsp_sub_w;
wire [512 -1:0] dat_rsp_wg;
wire [255:0] dat_rsp_wg_ch0;
wire [255:0] dat_rsp_wg_ch1;
wire [255:0] dat_rsp_wg_ch2;
wire [255:0] dat_rsp_wg_ch3;
wire [512 -1:0] dat_rsp_wg_lb;
wire [512 -1:0] dat_rsp_wg_lt;
wire [512 -1:0] dat_rsp_wg_rb;
wire [512 -1:0] dat_rsp_wg_rt;
wire dat_rsp_wg_sel_8b_hi;
wire dat_rsp_wg_sel_8b_lo;
wire dat_rsp_wg_sel_lb;
wire dat_rsp_wg_sel_lt;
wire dat_rsp_wg_sel_rb;
wire dat_rsp_wg_sel_rt;
wire [13:0] dat_slice_avl_add;
wire [13:0] dat_slice_avl_sub;
wire [13:0] dat_slice_avl_w;
wire [2303:0] dat_wg;
wire [255:0] dat_wg_8b_ch0;
wire [255:0] dat_wg_8b_ch1;
wire [255:0] dat_wg_8b_ch2;
wire [255:0] dat_wg_8b_ch3;
wire [255:0] dat_wg_8b_ch4;
wire [255:0] dat_wg_8b_ch5;
wire [255:0] dat_wg_8b_ch6;
wire [255:0] dat_wg_8b_ch7;
wire dat_wg_adv;
wire dat_wg_req_dummy;
wire dat_wg_req_skip;
wire [4:0] data_bank_w;
wire [5:0] data_batch_w;
wire [10:0] datain_c_cnt_inc;
wire datain_c_cnt_reg_en;
wire [10:0] datain_c_cnt_w;
wire [10:0] datain_channel_cmp_w;
wire [13:0] datain_h_cnt_inc;
wire datain_h_cnt_reg_en;
wire [13:0] datain_h_cnt_st;
wire [13:0] datain_h_cnt_w;
wire [13:0] datain_h_cur;
wire datain_h_ori_reg_en;
wire [12:0] datain_height_cmp_w;
wire [13:0] datain_w_cnt_inc;
wire datain_w_cnt_reg_en;
wire [13:0] datain_w_cnt_st;
wire [13:0] datain_w_cnt_w;
wire [13:0] datain_w_cur;
wire datain_w_ori_reg_en;
wire [12:0] datain_width_cmp_w;
wire [13:0] datain_width_w;
wire [2:0] dataout_w_add;
wire [12:0] dataout_w_cnt_inc;
wire dataout_w_cnt_reg_en;
wire [12:0] dataout_w_cnt_w;
wire [12:0] dataout_w_init;
wire dataout_w_ori_reg_en;
wire [12:0] dataout_width_cmp_w;
wire [512 -1:0] dbg_csc_dat;
//: for(my $i=0; $i<64 ; $i++){
//: print qq(
//: wire [8 -1:0] dbg_csc_dat_${i}; )
//: }
//| eperl: generated_beg (DO NOT EDIT BELOW)

wire [8 -1:0] dbg_csc_dat_0; 
wire [8 -1:0] dbg_csc_dat_1; 
wire [8 -1:0] dbg_csc_dat_2; 
wire [8 -1:0] dbg_csc_dat_3; 
wire [8 -1:0] dbg_csc_dat_4; 
wire [8 -1:0] dbg_csc_dat_5; 
wire [8 -1:0] dbg_csc_dat_6; 
wire [8 -1:0] dbg_csc_dat_7; 
wire [8 -1:0] dbg_csc_dat_8; 
wire [8 -1:0] dbg_csc_dat_9; 
wire [8 -1:0] dbg_csc_dat_10; 
wire [8 -1:0] dbg_csc_dat_11; 
wire [8 -1:0] dbg_csc_dat_12; 
wire [8 -1:0] dbg_csc_dat_13; 
wire [8 -1:0] dbg_csc_dat_14; 
wire [8 -1:0] dbg_csc_dat_15; 
wire [8 -1:0] dbg_csc_dat_16; 
wire [8 -1:0] dbg_csc_dat_17; 
wire [8 -1:0] dbg_csc_dat_18; 
wire [8 -1:0] dbg_csc_dat_19; 
wire [8 -1:0] dbg_csc_dat_20; 
wire [8 -1:0] dbg_csc_dat_21; 
wire [8 -1:0] dbg_csc_dat_22; 
wire [8 -1:0] dbg_csc_dat_23; 
wire [8 -1:0] dbg_csc_dat_24; 
wire [8 -1:0] dbg_csc_dat_25; 
wire [8 -1:0] dbg_csc_dat_26; 
wire [8 -1:0] dbg_csc_dat_27; 
wire [8 -1:0] dbg_csc_dat_28; 
wire [8 -1:0] dbg_csc_dat_29; 
wire [8 -1:0] dbg_csc_dat_30; 
wire [8 -1:0] dbg_csc_dat_31; 
wire [8 -1:0] dbg_csc_dat_32; 
wire [8 -1:0] dbg_csc_dat_33; 
wire [8 -1:0] dbg_csc_dat_34; 
wire [8 -1:0] dbg_csc_dat_35; 
wire [8 -1:0] dbg_csc_dat_36; 
wire [8 -1:0] dbg_csc_dat_37; 
wire [8 -1:0] dbg_csc_dat_38; 
wire [8 -1:0] dbg_csc_dat_39; 
wire [8 -1:0] dbg_csc_dat_40; 
wire [8 -1:0] dbg_csc_dat_41; 
wire [8 -1:0] dbg_csc_dat_42; 
wire [8 -1:0] dbg_csc_dat_43; 
wire [8 -1:0] dbg_csc_dat_44; 
wire [8 -1:0] dbg_csc_dat_45; 
wire [8 -1:0] dbg_csc_dat_46; 
wire [8 -1:0] dbg_csc_dat_47; 
wire [8 -1:0] dbg_csc_dat_48; 
wire [8 -1:0] dbg_csc_dat_49; 
wire [8 -1:0] dbg_csc_dat_50; 
wire [8 -1:0] dbg_csc_dat_51; 
wire [8 -1:0] dbg_csc_dat_52; 
wire [8 -1:0] dbg_csc_dat_53; 
wire [8 -1:0] dbg_csc_dat_54; 
wire [8 -1:0] dbg_csc_dat_55; 
wire [8 -1:0] dbg_csc_dat_56; 
wire [8 -1:0] dbg_csc_dat_57; 
wire [8 -1:0] dbg_csc_dat_58; 
wire [8 -1:0] dbg_csc_dat_59; 
wire [8 -1:0] dbg_csc_dat_60; 
wire [8 -1:0] dbg_csc_dat_61; 
wire [8 -1:0] dbg_csc_dat_62; 
wire [8 -1:0] dbg_csc_dat_63; 
//| eperl: generated_end (DO NOT EDIT ABOVE)
wire dl_block_end;
wire dl_channel_end;
wire [6:0] dl_channel_size;
wire [1:0] dl_cur_sub_h;
wire dl_dat_release;
wire dl_group_end;
wire [4:0] dl_h_offset;
wire [9:0] dl_h_offset_ext;
wire [30:0] dl_in_pd;
wire [30:0] dl_in_pd_d0;
wire dl_in_pvld;
wire dl_in_pvld_d0;
wire dl_layer_end;
wire [30:0] dl_pd;
wire [30:0] dl_pd_d0;
wire dl_pvld;
wire dl_pvld_d0;
wire [6:0] dl_stripe_length;
wire [4:0] dl_w_offset;
wire [9:0] dl_w_offset_ext;
wire [15 -1:0] entries_batch_w;
wire [15 -1:0] entries_single_w;
wire [15 -1:0] entries_w;
wire [13 -1:0] h_bias_0_stride_w;
wire [13 -1:0] h_bias_0_w;
wire [13 -1:0] h_bias_1_stride_w;
wire [13 -1:0] h_bias_1_w;
wire [13 -1:0] h_bias_2_w;
wire [13 -1:0] h_bias_3_w;
wire [13 -1:0] h_bias_d1;
wire [1:0] h_bias_reg_en;
wire [13:0] h_offset_slice_w;
wire is_batch_end;
wire is_conv;
wire is_dat_entry_end_wrap;
wire is_dat_entry_st_wrap;
wire is_dat_req_addr_wrap;
wire is_img;
wire is_last_channel;
wire is_pixel;
wire is_running_first;
wire is_sg_done;
wire is_sg_idle;
wire is_sg_running;
wire is_stripe_end;
wire is_stripe_equal;
wire is_sub_h_end;
wire is_w_end;
wire is_w_end_ahead;
wire is_winograd;
wire layer_st;
wire mon_batch_cnt_w;
wire mon_c_bias_w;
wire mon_dat_entry_avl_w;
wire mon_dat_entry_end_inc_wrap;
wire mon_dat_entry_st_inc_wrap;
wire [3:0] mon_dat_out_pra_vld;
wire [1:0] mon_dat_req_addr_wrap;
wire [512 -1:0] mon_dat_rsp_l0_sft;
wire [512 -1:0] mon_dat_rsp_l1_sft;
wire [512 -1:0] mon_dat_rsp_l2_sft;
wire [512 -1:0] mon_dat_rsp_l3_sft;
wire [3:0] mon_dat_rsp_pra_rdy;
wire mon_dat_slice_avl_w;
wire mon_data_bank_w;
wire mon_datain_c_cnt_inc;
wire mon_datain_h_cnt_inc;
wire mon_datain_h_cur;
wire mon_datain_w_cnt_inc;
wire mon_datain_w_cur;
wire mon_dataout_w_cnt_inc;
wire [5:0] mon_entries_batch_w;
wire mon_entries_single_w;
wire mon_entries_w;
wire [5:0] mon_h_bias_0_stride_w;
wire [13 -1:0] mon_h_bias_0_w;
wire [12:0] mon_h_bias_1_stride_w;
wire [4:0] mon_h_bias_1_w;
wire [4:0] mon_h_bias_2_w;
wire [1:0] mon_h_bias_3_w;
wire mon_h_bias_d1;
wire mon_pixel_w_cnt_w;
wire [1:0] mon_pixel_x_init_w;
wire mon_rls_slices_w;
wire mon_rsp_sft_cnt_l0_w;
wire mon_rsp_sft_cnt_l1_w;
wire mon_rsp_sft_cnt_l2_w;
wire mon_rsp_sft_cnt_l3_w;
wire [13:0] mon_slice_entries_w;
wire [1:0] mon_slice_left_w;
wire mon_stripe_cnt_inc;
wire [2:0] mon_sub_h_total_w;
wire pixel_ch_ori_reg_en;
wire [11:0] pixel_ch_stride_w;
wire pixel_force_clr;
wire pixel_force_fetch;
wire pixel_w_cnt_reg_en;
wire [15:0] pixel_w_cnt_w;
wire [14:0] pixel_w_cur;
wire pixel_w_ori_reg_en;
wire [7:0] pixel_x_add_w;
wire [6:0] pixel_x_byte_stride_w;
wire [6:0] pixel_x_cnt_add;
wire [6:0] pixel_x_init_offset_w;
wire [5:0] pixel_x_init_w;
wire [5:0] pixel_x_stride_w;
wire [1:0] pra_precision_0;
wire [1:0] pra_precision_1;
wire [1:0] pra_precision_2;
wire [1:0] pra_precision_3;
wire [1:0] pra_truncate_0;
wire [1:0] pra_truncate_1;
wire [1:0] pra_truncate_2;
wire [1:0] pra_truncate_3;
wire [1:0] pra_truncate_w;
wire reuse_rls;
wire [13:0] rls_slices_w;
wire rsp_sft_cnt_l0_en;
wire [7:0] rsp_sft_cnt_l0_inc;
wire rsp_sft_cnt_l0_ori_en;
wire [7:0] rsp_sft_cnt_l0_sub;
wire [7:0] rsp_sft_cnt_l0_w;
wire rsp_sft_cnt_l1_en;
wire [7:0] rsp_sft_cnt_l1_inc;
wire rsp_sft_cnt_l1_ori_en;
wire [7:0] rsp_sft_cnt_l1_sub;
wire [7:0] rsp_sft_cnt_l1_w;
wire rsp_sft_cnt_l2_en;
wire [7:0] rsp_sft_cnt_l2_inc;
wire rsp_sft_cnt_l2_ori_en;
wire [7:0] rsp_sft_cnt_l2_sub;
wire [7:0] rsp_sft_cnt_l2_w;
wire rsp_sft_cnt_l3_en;
wire [7:0] rsp_sft_cnt_l3_inc;
wire rsp_sft_cnt_l3_ori_en;
wire [7:0] rsp_sft_cnt_l3_sub;
wire [7:0] rsp_sft_cnt_l3_w;
wire rsp_sft_l1_sel_1;
wire rsp_sft_l1_sel_2;
wire rsp_sft_l1_sel_3;
wire rsp_sft_l2_sel_1;
wire rsp_sft_l2_sel_2;
wire rsp_sft_l2_sel_3;
wire rsp_sft_l3_sel_1;
wire rsp_sft_l3_sel_2;
wire rsp_sft_l3_sel_3;
wire sc2buf_dat_rd_en_w;
wire [15 -1:0] sc2cdma_dat_entries_w;
wire [13:0] sc2cdma_dat_slices_w;
wire [8:0] sc2mac_dat_pd_w;
wire slcg_wg_en_w;
wire [15 -1:0] slice_entries_w;
wire [13:0] slice_left_w;
wire [13:0] slices_oprand;
wire [6:0] stripe_cnt_inc;
wire stripe_cnt_reg_en;
wire [6:0] stripe_cnt_w;
wire [2:0] sub_h_cmp_w;
wire [2:0] sub_h_cnt_inc;
wire sub_h_cnt_reg_en;
wire [1:0] sub_h_cnt_w;
wire [2:0] sub_h_total_w;
wire sub_rls;
wire [14:0] w_bias_int8;
wire w_bias_reg_en;
wire [13:0] w_bias_w;
wire [5:0] x_dilate_w;
wire [5:0] y_dilate_w;
/////////////////////////////////////////////////////////////////////////////////////////////
// Pipeline of Weight loader, for both compressed weight and uncompressed weight
//
// input_package
// |
// data request
// |
// conv_buffer
// |
// feature data---> data relase
// | |
// REG PRA
// | |
// REGISTER
// |
// MAC
//
/////////////////////////////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////
///// status from sequence generator                     /////
//////////////////////////////////////////////////////////////
assign is_sg_idle = (sc_state == 0 );
assign is_sg_running = (sc_state == 2 );
assign is_sg_done = (sc_state == 3 );
//: &eperl::flop("-nodeclare   -rval \"1'b0\"   -d \"is_sg_running\" -q is_sg_running_d1");
//| eperl: generated_beg (DO NOT EDIT BELOW)
always @(posedge nvdla_core_clk) begin
   if (!nvdla_core_rstn) begin
       is_sg_running_d1 <= 1'b0;
   end else begin
       is_sg_running_d1 <= is_sg_running;
   end
end

//| eperl: generated_end (DO NOT EDIT ABOVE)
//////////////////////////////////////////////////////////////
///// input signals from registers                       /////
//////////////////////////////////////////////////////////////
assign layer_st = reg2dp_op_en & is_sg_idle;
assign is_pixel = (reg2dp_datain_format == 1'h1 );
assign is_winograd = 1'b0;
assign is_conv = (reg2dp_conv_mode == 1'h0 );
assign is_img = is_conv & is_pixel;
assign {mon_data_bank_w, data_bank_w} = reg2dp_data_bank + 1'b1;
assign data_batch_w = 6'b1;
assign batch_cmp_w = 5'b0;
//assign is_int8 = (reg2dp_proc_precision == 2'h0 );
//assign is_fp16 = (reg2dp_proc_precision == 2'h2 );
assign datain_width_w = is_winograd ? ({2'b0, reg2dp_datain_width_ext[12:2]} + 1'b1) : reg2dp_datain_width_ext + 1'b1;
assign datain_width_cmp_w = reg2dp_datain_width_ext;
assign datain_height_cmp_w = reg2dp_datain_height_ext;
assign datain_channel_cmp_w = is_winograd ? reg2dp_weight_channel_ext[12:2] : {{6 -2{1'b0}}, reg2dp_weight_channel_ext[12:6]};
//y_ex=0,sub_h_total=1;y_ex=1,sub_h_total=2; y_ext=2,sub_h_total=4; non_image, sub_h_total=1;
//sub_h_total means how many h lines are used in post-extention
assign {sub_h_total_w, mon_sub_h_total_w} = is_img ? (6'h9 << reg2dp_y_extension) : 6'h8;
assign sub_h_cmp_w = is_img ? sub_h_total_w : is_winograd ? 3'h2 : 3'h1;
assign dataout_w_init[12:0] = sub_h_cmp_w - 1'b1;
assign conv_x_stride_w = (is_winograd) ? 4'b1 : reg2dp_conv_x_stride_ext + 1'b1;
assign pixel_x_stride_w = (reg2dp_datain_channel_ext[1:0] == 2'h3) ? {conv_x_stride_w, 2'b0} : //*4, after pre_extension
                          (reg2dp_datain_channel_ext[1:0] == 2'h2) ? ({conv_x_stride_w, 1'b0} + conv_x_stride_w) : //*3
                          {2'b0, conv_x_stride_w}; //*1
//: my $kk=6;
//: if ($kk=6) {
//: print qq (
//: assign {mon_pixel_x_init_w,pixel_x_init_w} = (reg2dp_y_extension == 2'h2) ? ({pixel_x_stride_w, 1'b0} + pixel_x_stride_w + reg2dp_weight_channel_ext[5:0]) :
//: (reg2dp_y_extension == 2'h1) ? (pixel_x_stride_w + reg2dp_weight_channel_ext[5:0]):
//: (reg2dp_weight_channel_ext >= 7'h40) ? {6{1'b1}}: //cut by atomC
//: {reg2dp_weight_channel_ext[6 -1:0]};
//: )
//: }
//: else {
//: print qq(
//: assign {mon_pixel_x_init_w,pixel_x_init_w} = (reg2dp_y_extension == 2'h2) ? ({pixel_x_stride_w, 1'b0} + pixel_x_stride_w + reg2dp_weight_channel_ext[5:0]) :
//: (reg2dp_y_extension == 2'h1) ? (pixel_x_stride_w + reg2dp_weight_channel_ext[5:0]):
//: (reg2dp_weight_channel_ext >= 7'h40) ? {6{1'b1}}: //cut by atomC
//: {{6-6{1'b0}},reg2dp_weight_channel_ext[6 -1:0]};
//: )
//: }
//| eperl: generated_beg (DO NOT EDIT BELOW)

assign {mon_pixel_x_init_w,pixel_x_init_w} = (reg2dp_y_extension == 2'h2) ? ({pixel_x_stride_w, 1'b0} + pixel_x_stride_w + reg2dp_weight_channel_ext[5:0]) :
(reg2dp_y_extension == 2'h1) ? (pixel_x_stride_w + reg2dp_weight_channel_ext[5:0]):
(reg2dp_weight_channel_ext >= 7'h40) ? {6{1'b1}}: //cut by atomC
{reg2dp_weight_channel_ext[6 -1:0]};

//| eperl: generated_end (DO NOT EDIT ABOVE)
assign pixel_x_init_offset_w = (reg2dp_weight_channel_ext[6 -1:0] + 1'b1);
assign pixel_x_add_w = (reg2dp_y_extension == 2'h2) ? {pixel_x_stride_w, 2'b0} : //*4, after post_extension
                       (reg2dp_y_extension == 2'h1) ? {1'b0, pixel_x_stride_w, 1'b0} : //*2
                       {2'b0, pixel_x_stride_w};
assign pixel_x_byte_stride_w = {1'b0, pixel_x_stride_w};
//: my $kk=5;
//: if($kk=5) {
//: print qq(
//: `ifdef CC_ATOMC_DIV_ATOMK_EQUAL_1
//: assign pixel_ch_stride_w = {pixel_x_stride_w, {5 +1{1'b0}}}; //stick to 2*atomK  no matter which config.  
//: `endif
//: `ifdef CC_ATOMC_DIV_ATOMK_EQUAL_2
//: assign pixel_ch_stride_w = {pixel_x_stride_w, {5 +1{1'b0}}}; //stick to 2*atomK  no matter which config.  
//: `endif
//: `ifdef CC_ATOMC_DIV_ATOMK_EQUAL_4
//: assign pixel_ch_stride_w = {pixel_x_stride_w, {5 +2{1'b0}}}; //stick to 4*atomK  no matter which config.  
//: `endif
//: )
//: }
//: else {
//: print qq(
//: `ifdef CC_ATOMC_DIV_ATOMK_EQUAL_1
//: assign pixel_ch_stride_w = {{5-5{1'b0}},pixel_x_stride_w, {5 +1{1'b0}}}; //stick to 2*atomK  no matter which config.  
//: `endif
//: `ifdef CC_ATOMC_DIV_ATOMK_EQUAL_2
//: assign pixel_ch_stride_w = {{5-5{1'b0}},pixel_x_stride_w, {5 +1{1'b0}}}; //stick to 2*atomK  no matter which config.  
//: `endif
//: `ifdef CC_ATOMC_DIV_ATOMK_EQUAL_4
//: assign pixel_ch_stride_w = {{5-5{1'b0}},pixel_x_stride_w, {5 +2{1'b0}}}; //stick to 4*atomK  no matter which config.  
//: `endif
//: )
//: }
//| eperl: generated_beg (DO NOT EDIT BELOW)

assign pixel_ch_stride_w = {pixel_x_stride_w, {5 +1{1'b0}}}; //stick to 2*atomK  no matter which config.  


//| eperl: generated_end (DO NOT EDIT ABOVE)
assign conv_y_stride_w = (is_winograd) ? 4'b1 : reg2dp_conv_y_stride_ext + 1'b1;
assign x_dilate_w = (is_winograd | is_img) ? 6'b1 : reg2dp_x_dilation_ext + 1'b1;
assign y_dilate_w = (is_winograd | is_img) ? 6'b1 : reg2dp_y_dilation_ext + 1'b1;
//reg2dp_entries means entry per slice
assign {mon_entries_single_w,entries_single_w} = (reg2dp_entries + 1'b1);
assign {mon_entries_batch_w,entries_batch_w} = entries_single_w * data_batch_w;
assign {mon_entries_w,entries_w} = (is_winograd) ? ({reg2dp_entries[12:0], 2'b0} + 3'h4) : entries_single_w;
assign h_offset_slice_w[11:0] = data_batch_w * y_dilate_w;
assign h_offset_slice_w[13:12] = 2'b0;
assign {mon_h_bias_0_stride_w,h_bias_0_stride_w} = entries * data_batch;
assign {mon_h_bias_1_stride_w,h_bias_1_stride_w} = entries * h_offset_slice;
assign {mon_rls_slices_w,rls_slices_w} = reg2dp_rls_slices + 1'b1;
assign {mon_slice_left_w,slice_left_w} = reg2dp_skip_data_rls ? (reg2dp_datain_height_ext + 1'b1) : reg2dp_datain_height_ext - reg2dp_rls_slices;
assign slices_oprand = layer_st_d1 ? rls_slices : slice_left;
assign {mon_slice_entries_w,slice_entries_w} = entries_batch * slices_oprand;
assign dataout_width_cmp_w = reg2dp_dataout_width;
assign pra_truncate_w = (reg2dp_pra_truncate == 2'h3) ? 2'h2 : reg2dp_pra_truncate;
//: my $kk=15;
//: my $jj=13;
//: &eperl::flop("-nodeclare   -rval \"1'b0\"   -d \"layer_st\" -q layer_st_d1");
//: &eperl::flop("-nodeclare   -rval \"{22{1'b0}}\"  -en \"layer_st\" -d \"{22{is_winograd}}\" -q is_winograd_d1");
//: &eperl::flop("-nodeclare   -rval \"{34{1'b0}}\"  -en \"layer_st\" -d \"{34{is_img}}\" -q is_img_d1");
//: &eperl::flop("-nodeclare   -rval \"{5{1'b0}}\"  -en \"layer_st\" -d \"data_bank_w\" -q data_bank");
//: &eperl::flop("-nodeclare   -rval \"{14{1'b0}}\"  -en \"layer_st\" -d \"datain_width_w\" -q datain_width");
//: &eperl::flop("-nodeclare   -rval \"{13{1'b0}}\"  -en \"layer_st\" -d \"datain_width_cmp_w\" -q datain_width_cmp");
//: &eperl::flop("-nodeclare   -rval \"{13{1'b0}}\"  -en \"layer_st\" -d \"datain_height_cmp_w\" -q datain_height_cmp");
//: &eperl::flop("-nodeclare   -rval \"{11{1'b0}}\"  -en \"layer_st\" -d \"datain_channel_cmp_w\" -q datain_channel_cmp");
//: &eperl::flop("-nodeclare   -rval \"3'h1\"  -en \"layer_st\" -d \"sub_h_total_w\" -q sub_h_total_g0");
//: &eperl::flop("-nodeclare   -rval \"3'h1\"  -en \"layer_st\" -d \"sub_h_total_w\" -q sub_h_total_g1");
//: &eperl::flop("-nodeclare   -rval \"2'h1\"  -en \"layer_st\" -d \"sub_h_total_w[2:1]\" -q sub_h_total_g2");
//: &eperl::flop("-nodeclare   -rval \"3'h1\"  -en \"layer_st\" -d \"sub_h_total_w\" -q sub_h_total_g3");
//: &eperl::flop("-nodeclare   -rval \"3'h1\"  -en \"layer_st\" -d \"sub_h_total_w\" -q sub_h_total_g4");
//: &eperl::flop("-nodeclare   -rval \"3'h1\"  -en \"layer_st\" -d \"sub_h_total_w\" -q sub_h_total_g5");
//: &eperl::flop("-nodeclare   -rval \"3'h1\"  -en \"layer_st\" -d \"sub_h_total_w\" -q sub_h_total_g6");
//: &eperl::flop("-nodeclare   -rval \"3'h1\"  -en \"layer_st\" -d \"sub_h_total_w\" -q sub_h_total_g7");
//: &eperl::flop("-nodeclare   -rval \"3'h1\"  -en \"layer_st\" -d \"sub_h_total_w\" -q sub_h_total_g8");
//: &eperl::flop("-nodeclare   -rval \"3'h1\"  -en \"layer_st\" -d \"sub_h_total_w\" -q sub_h_total_g9");
//: &eperl::flop("-nodeclare   -rval \"3'h1\"  -en \"layer_st\" -d \"sub_h_total_w\" -q sub_h_total_g10");
//: &eperl::flop("-nodeclare   -rval \"3'h1\"  -en \"layer_st\" -d \"sub_h_total_w\" -q sub_h_total_g11");
//: &eperl::flop("-nodeclare   -rval \"3'h1\"  -en \"layer_st\" -d \"sub_h_cmp_w\" -q sub_h_cmp_g0");
//: &eperl::flop("-nodeclare   -rval \"3'h1\"  -en \"layer_st\" -d \"sub_h_cmp_w\" -q sub_h_cmp_g1");
//: &eperl::flop("-nodeclare   -rval \"{4{1'b0}}\"  -en \"layer_st\" -d \"conv_x_stride_w\" -q conv_x_stride");
//: &eperl::flop("-nodeclare   -rval \"{4{1'b0}}\"  -en \"layer_st\" -d \"conv_y_stride_w\" -q conv_y_stride");
//: &eperl::flop("-nodeclare   -rval \"1'b0\"  -en \"layer_st\" -d \"pixel_x_stride_w[0]\" -q pixel_x_stride_odd");
//: &eperl::flop("-nodeclare   -rval \"{6{1'b0}}\"  -en \"layer_st\" -d \"data_batch_w\" -q data_batch");
//: &eperl::flop("-nodeclare   -rval \"{5{1'b0}}\"  -en \"layer_st\" -d \"batch_cmp_w\" -q batch_cmp");
//: &eperl::flop("-nodeclare   -rval \"{6{1'b0}}\"  -en \"layer_st\" -d \"pixel_x_init_w\" -q pixel_x_init");
//: &eperl::flop("-nodeclare   -rval \"{7{1'b0}}\"  -en \"layer_st\" -d \"pixel_x_init_offset_w\" -q pixel_x_init_offset");
//: &eperl::flop("-nodeclare   -rval \"{7{1'b0}}\"  -en \"layer_st\" -d \"pixel_x_add_w[6:0]\" -q pixel_x_add");
//: &eperl::flop("-nodeclare   -rval \"{7{1'b0}}\"  -en \"layer_st\" -d \"pixel_x_byte_stride_w\" -q pixel_x_byte_stride");
//: &eperl::flop("-nodeclare   -rval \"{12{1'b0}}\"  -en \"layer_st\" -d \"pixel_ch_stride_w\" -q pixel_ch_stride");
//: &eperl::flop("-nodeclare   -rval \"{6{1'b0}}\"  -en \"layer_st\" -d \"x_dilate_w\" -q x_dilate");
//: &eperl::flop("-nodeclare   -rval \"{6{1'b0}}\"  -en \"layer_st\" -d \"y_dilate_w\" -q y_dilate");
//: &eperl::flop("-nodeclare   -rval \"{16{1'b0}}\"  -en \"layer_st\" -d \"reg2dp_pad_value\" -q pad_value");
//: &eperl::flop("-nodeclare   -rval \"{${kk}{1'b0}}\"  -en \"layer_st\" -d \"entries_w\" -q entries");
//: &eperl::flop("-nodeclare   -rval \"{${kk}{1'b0}}\"  -en \"layer_st\" -d \"entries_batch_w\" -q entries_batch");
//: &eperl::flop("-nodeclare   -rval \"{${kk}{1'b0}}\"  -en \"layer_st\" -d \"{1'h0,reg2dp_entries}\" -q entries_cmp");
//: &eperl::flop("-nodeclare   -rval \"{14{1'b0}}\"  -en \"layer_st\" -d \"h_offset_slice_w\" -q h_offset_slice");
//: &eperl::flop("-nodeclare   -rval \"{12{1'b0}}\"  -en \"layer_st_d1\" -d \"h_bias_0_stride_w\" -q h_bias_0_stride");
//: &eperl::flop("-nodeclare   -rval \"{12{1'b0}}\"  -en \"layer_st_d1\" -d \"h_bias_1_stride_w\" -q h_bias_1_stride");
//: &eperl::flop("-nodeclare   -rval \"{${jj}{1'b0}}\"  -en \"layer_st_d1\" -d \"entries[${jj}-1:0]\" -q h_bias_2_stride");
//: &eperl::flop("-nodeclare   -rval \"{${jj}{1'b0}}\"  -en \"layer_st_d1\" -d \"entries[${jj}-1:0]\" -q h_bias_3_stride");
//: &eperl::flop("-nodeclare   -rval \"{14{1'b0}}\"  -en \"layer_st\" -d \"rls_slices_w\" -q rls_slices");
//: &eperl::flop("-nodeclare   -rval \"{${kk}{1'b0}}\"  -en \"layer_st_d1\" -d \"slice_entries_w\" -q rls_entries");
//: &eperl::flop("-nodeclare   -rval \"{14{1'b0}}\"  -en \"layer_st\" -d \"slice_left_w[13:0]\" -q slice_left");
//: &eperl::flop("-nodeclare   -rval \"{14{1'b0}}\"  -en \"is_sg_done\" -d \"slice_left\" -q last_slices");
//: &eperl::flop("-nodeclare   -rval \"{${kk}{1'b0}}\"  -en \"is_sg_done\" -d \"slice_entries_w\" -q last_entries");
//: &eperl::flop("-nodeclare   -rval \"{13{1'b0}}\"  -en \"layer_st\" -d \"dataout_width_cmp_w\" -q dataout_width_cmp");
//: &eperl::flop("-nodeclare   -rval \"{8{1'b0}}\"  -en \"layer_st\" -d \"{4{pra_truncate_w}}\" -q pra_truncate");
//: &eperl::flop("-nodeclare   -rval \"{8{1'b0}}\"  -en \"layer_st\" -d \"{4{reg2dp_proc_precision}}\" -q pra_precision");
//| eperl: generated_beg (DO NOT EDIT BELOW)
always @(posedge nvdla_core_clk) begin
   if (!nvdla_core_rstn) begin
       layer_st_d1 <= 1'b0;
   end else begin
       layer_st_d1 <= layer_st;
   end
end
always @(posedge nvdla_core_clk) begin
   if (!nvdla_core_rstn) begin
       is_winograd_d1 <= {22{1'b0}};
   end else begin
       if ((layer_st) == 1'b1) begin
           is_winograd_d1 <= {22{is_winograd}};
       // VCS coverage off
       end else if ((layer_st) == 1'b0) begin
       end else begin
           is_winograd_d1 <= 'bx;
       // VCS coverage on
       end
   end
end
always @(posedge nvdla_core_clk) begin
   if (!nvdla_core_rstn) begin
       is_img_d1 <= {34{1'b0}};
   end else begin
       if ((layer_st) == 1'b1) begin
           is_img_d1 <= {34{is_img}};
       // VCS coverage off
       end else if ((layer_st) == 1'b0) begin
       end else begin
           is_img_d1 <= 'bx;
       // VCS coverage on
       end
   end
end
always @(posedge nvdla_core_clk) begin
   if (!nvdla_core_rstn) begin
       data_bank <= {5{1'b0}};
   end else begin
       if ((layer_st) == 1'b1) begin
           data_bank <= data_bank_w;
       // VCS coverage off
       end else if ((layer_st) == 1'b0) begin
       end else begin
           data_bank <= 'bx;
       // VCS coverage on
       end
   end
end
always @(posedge nvdla_core_clk) begin
   if (!nvdla_core_rstn) begin
       datain_width <= {14{1'b0}};
   end else begin
       if ((layer_st) == 1'b1) begin
           datain_width <= datain_width_w;
       // VCS coverage off
       end else if ((layer_st) == 1'b0) begin
       end else begin
           datain_width <= 'bx;
       // VCS coverage on
       end
   end
end
always @(posedge nvdla_core_clk) begin
   if (!nvdla_core_rstn) begin
       datain_width_cmp <= {13{1'b0}};
   end else begin
       if ((layer_st) == 1'b1) begin
           datain_width_cmp <= datain_width_cmp_w;
       // VCS coverage off
       end else if ((layer_st) == 1'b0) begin
       end else begin
           datain_width_cmp <= 'bx;
       // VCS coverage on
       end
   end
end
always @(posedge nvdla_core_clk) begin
   if (!nvdla_core_rstn) begin
       datain_height_cmp <= {13{1'b0}};
   end else begin
       if ((layer_st) == 1'b1) begin
           datain_height_cmp <= datain_height_cmp_w;
       // VCS coverage off
       end else if ((layer_st) == 1'b0) begin
       end else begin
           datain_height_cmp <= 'bx;
       // VCS coverage on
       end
   end
end
always @(posedge nvdla_core_clk) begin
   if (!nvdla_core_rstn) begin
       datain_channel_cmp <= {11{1'b0}};
   end else begin
       if ((layer_st) == 1'b1) begin
           datain_channel_cmp <= datain_channel_cmp_w;
       // VCS coverage off
       end else if ((layer_st) == 1'b0) begin
       end else begin
           datain_channel_cmp <= 'bx;
       // VCS coverage on
       end
   end
end
always @(posedge nvdla_core_clk) begin
   if (!nvdla_core_rstn) begin
       sub_h_total_g0 <= 3'h1;
   end else begin
       if ((layer_st) == 1'b1) begin
           sub_h_total_g0 <= sub_h_total_w;
       // VCS coverage off
       end else if ((layer_st) == 1'b0) begin
       end else begin
           sub_h_total_g0 <= 'bx;
       // VCS coverage on
       end
   end
end
always @(posedge nvdla_core_clk) begin
   if (!nvdla_core_rstn) begin
       sub_h_total_g1 <= 3'h1;
   end else begin
       if ((layer_st) == 1'b1) begin
           sub_h_total_g1 <= sub_h_total_w;
       // VCS coverage off
       end else if ((layer_st) == 1'b0) begin
       end else begin
           sub_h_total_g1 <= 'bx;
       // VCS coverage on
       end
   end
end
always @(posedge nvdla_core_clk) begin
   if (!nvdla_core_rstn) begin
       sub_h_total_g2 <= 2'h1;
   end else begin
       if ((layer_st) == 1'b1) begin
           sub_h_total_g2 <= sub_h_total_w[2:1];
       // VCS coverage off
       end else if ((layer_st) == 1'b0) begin
       end else begin
           sub_h_total_g2 <= 'bx;
       // VCS coverage on
       end
   end
end
always @(posedge nvdla_core_clk) begin
   if (!nvdla_core_rstn) begin
       sub_h_total_g3 <= 3'h1;
   end else begin
       if ((layer_st) == 1'b1) begin
           sub_h_total_g3 <= sub_h_total_w;
       // VCS coverage off
       end else if ((layer_st) == 1'b0) begin
       end else begin
           sub_h_total_g3 <= 'bx;
       // VCS coverage on
       end
   end
end
always @(posedge nvdla_core_clk) begin
   if (!nvdla_core_rstn) begin
       sub_h_total_g4 <= 3'h1;
   end else begin
       if ((layer_st) == 1'b1) begin
           sub_h_total_g4 <= sub_h_total_w;
       // VCS coverage off
       end else if ((layer_st) == 1'b0) begin
       end else begin
           sub_h_total_g4 <= 'bx;
       // VCS coverage on
       end
   end
end
always @(posedge nvdla_core_clk) begin
   if (!nvdla_core_rstn) begin
       sub_h_total_g5 <= 3'h1;
   end else begin
       if ((layer_st) == 1'b1) begin
           sub_h_total_g5 <= sub_h_total_w;
       // VCS coverage off
       end else if ((layer_st) == 1'b0) begin
       end else begin
           sub_h_total_g5 <= 'bx;
       // VCS coverage on
       end
   end
end
always @(posedge nvdla_core_clk) begin
   if (!nvdla_core_rstn) begin
       sub_h_total_g6 <= 3'h1;
   end else begin
       if ((layer_st) == 1'b1) begin
           sub_h_total_g6 <= sub_h_total_w;
       // VCS coverage off
       end else if ((layer_st) == 1'b0) begin
       end else begin
           sub_h_total_g6 <= 'bx;
       // VCS coverage on
       end
   end
end
always @(posedge nvdla_core_clk) begin
   if (!nvdla_core_rstn) begin
       sub_h_total_g7 <= 3'h1;
   end else begin
       if ((layer_st) == 1'b1) begin
           sub_h_total_g7 <= sub_h_total_w;
       // VCS coverage off
       end else if ((layer_st) == 1'b0) begin
       end else begin
           sub_h_total_g7 <= 'bx;
       // VCS coverage on
       end
   end
end
always @(posedge nvdla_core_clk) begin
   if (!nvdla_core_rstn) begin
       sub_h_total_g8 <= 3'h1;
   end else begin
       if ((layer_st) == 1'b1) begin
           sub_h_total_g8 <= sub_h_total_w;
       // VCS coverage off
       end else if ((layer_st) == 1'b0) begin
       end else begin
           sub_h_total_g8 <= 'bx;
       // VCS coverage on
       end
   end
end
always @(posedge nvdla_core_clk) begin
   if (!nvdla_core_rstn) begin
       sub_h_total_g9 <= 3'h1;
   end else begin
       if ((layer_st) == 1'b1) begin
           sub_h_total_g9 <= sub_h_total_w;
       // VCS coverage off
       end else if ((layer_st) == 1'b0) begin
       end else begin
           sub_h_total_g9 <= 'bx;
       // VCS coverage on
       end
   end
end
always @(posedge nvdla_core_clk) begin
   if (!nvdla_core_rstn) begin
       sub_h_total_g10 <= 3'h1;
   end else begin
       if ((layer_st) == 1'b1) begin
           sub_h_total_g10 <= sub_h_total_w;
       // VCS coverage off
       end else if ((layer_st) == 1'b0) begin
       end else begin
           sub_h_total_g10 <= 'bx;
       // VCS coverage on
       end
   end
end
always @(posedge nvdla_core_clk) begin
   if (!nvdla_core_rstn) begin
       sub_h_total_g11 <= 3'h1;
   end else begin
       if ((layer_st) == 1'b1) begin
           sub_h_total_g11 <= sub_h_total_w;
       // VCS coverage off
       end else if ((layer_st) == 1'b0) begin
       end else begin
           sub_h_total_g11 <= 'bx;
       // VCS coverage on
       end
   end
end
always @(posedge nvdla_core_clk) begin
   if (!nvdla_core_rstn) begin
       sub_h_cmp_g0 <= 3'h1;
   end else begin
       if ((layer_st) == 1'b1) begin
           sub_h_cmp_g0 <= sub_h_cmp_w;
       // VCS coverage off
       end else if ((layer_st) == 1'b0) begin
       end else begin
           sub_h_cmp_g0 <= 'bx;
       // VCS coverage on
       end
   end
end
always @(posedge nvdla_core_clk) begin
   if (!nvdla_core_rstn) begin
       sub_h_cmp_g1 <= 3'h1;
   end else begin
       if ((layer_st) == 1'b1) begin
           sub_h_cmp_g1 <= sub_h_cmp_w;
       // VCS coverage off
       end else if ((layer_st) == 1'b0) begin
       end else begin
           sub_h_cmp_g1 <= 'bx;
       // VCS coverage on
       end
   end
end
always @(posedge nvdla_core_clk) begin
   if (!nvdla_core_rstn) begin
       conv_x_stride <= {4{1'b0}};
   end else begin
       if ((layer_st) == 1'b1) begin
           conv_x_stride <= conv_x_stride_w;
       // VCS coverage off
       end else if ((layer_st) == 1'b0) begin
       end else begin
           conv_x_stride <= 'bx;
       // VCS coverage on
       end
   end
end
always @(posedge nvdla_core_clk) begin
   if (!nvdla_core_rstn) begin
       conv_y_stride <= {4{1'b0}};
   end else begin
       if ((layer_st) == 1'b1) begin
           conv_y_stride <= conv_y_stride_w;
       // VCS coverage off
       end else if ((layer_st) == 1'b0) begin
       end else begin
           conv_y_stride <= 'bx;
       // VCS coverage on
       end
   end
end
always @(posedge nvdla_core_clk) begin
   if (!nvdla_core_rstn) begin
       pixel_x_stride_odd <= 1'b0;
   end else begin
       if ((layer_st) == 1'b1) begin
           pixel_x_stride_odd <= pixel_x_stride_w[0];
       // VCS coverage off
       end else if ((layer_st) == 1'b0) begin
       end else begin
           pixel_x_stride_odd <= 'bx;
       // VCS coverage on
       end
   end
end
always @(posedge nvdla_core_clk) begin
   if (!nvdla_core_rstn) begin
       data_batch <= {6{1'b0}};
   end else begin
       if ((layer_st) == 1'b1) begin
           data_batch <= data_batch_w;
       // VCS coverage off
       end else if ((layer_st) == 1'b0) begin
       end else begin
           data_batch <= 'bx;
       // VCS coverage on
       end
   end
end
always @(posedge nvdla_core_clk) begin
   if (!nvdla_core_rstn) begin
       batch_cmp <= {5{1'b0}};
   end else begin
       if ((layer_st) == 1'b1) begin
           batch_cmp <= batch_cmp_w;
       // VCS coverage off
       end else if ((layer_st) == 1'b0) begin
       end else begin
           batch_cmp <= 'bx;
       // VCS coverage on
       end
   end
end
always @(posedge nvdla_core_clk) begin
   if (!nvdla_core_rstn) begin
       pixel_x_init <= {6{1'b0}};
   end else begin
       if ((layer_st) == 1'b1) begin
           pixel_x_init <= pixel_x_init_w;
       // VCS coverage off
       end else if ((layer_st) == 1'b0) begin
       end else begin
           pixel_x_init <= 'bx;
       // VCS coverage on
       end
   end
end
always @(posedge nvdla_core_clk) begin
   if (!nvdla_core_rstn) begin
       pixel_x_init_offset <= {7{1'b0}};
   end else begin
       if ((layer_st) == 1'b1) begin
           pixel_x_init_offset <= pixel_x_init_offset_w;
       // VCS coverage off
       end else if ((layer_st) == 1'b0) begin
       end else begin
           pixel_x_init_offset <= 'bx;
       // VCS coverage on
       end
   end
end
always @(posedge nvdla_core_clk) begin
   if (!nvdla_core_rstn) begin
       pixel_x_add <= {7{1'b0}};
   end else begin
       if ((layer_st) == 1'b1) begin
           pixel_x_add <= pixel_x_add_w[6:0];
       // VCS coverage off
       end else if ((layer_st) == 1'b0) begin
       end else begin
           pixel_x_add <= 'bx;
       // VCS coverage on
       end
   end
end
always @(posedge nvdla_core_clk) begin
   if (!nvdla_core_rstn) begin
       pixel_x_byte_stride <= {7{1'b0}};
   end else begin
       if ((layer_st) == 1'b1) begin
           pixel_x_byte_stride <= pixel_x_byte_stride_w;
       // VCS coverage off
       end else if ((layer_st) == 1'b0) begin
       end else begin
           pixel_x_byte_stride <= 'bx;
       // VCS coverage on
       end
   end
end
always @(posedge nvdla_core_clk) begin
   if (!nvdla_core_rstn) begin
       pixel_ch_stride <= {12{1'b0}};
   end else begin
       if ((layer_st) == 1'b1) begin
           pixel_ch_stride <= pixel_ch_stride_w;
       // VCS coverage off
       end else if ((layer_st) == 1'b0) begin
       end else begin
           pixel_ch_stride <= 'bx;
       // VCS coverage on
       end
   end
end
always @(posedge nvdla_core_clk) begin
   if (!nvdla_core_rstn) begin
       x_dilate <= {6{1'b0}};
   end else begin
       if ((layer_st) == 1'b1) begin
           x_dilate <= x_dilate_w;
       // VCS coverage off
       end else if ((layer_st) == 1'b0) begin
       end else begin
           x_dilate <= 'bx;
       // VCS coverage on
       end
   end
end
always @(posedge nvdla_core_clk) begin
   if (!nvdla_core_rstn) begin
       y_dilate <= {6{1'b0}};
   end else begin
       if ((layer_st) == 1'b1) begin
           y_dilate <= y_dilate_w;
       // VCS coverage off
       end else if ((layer_st) == 1'b0) begin
       end else begin
           y_dilate <= 'bx;
       // VCS coverage on
       end
   end
end
always @(posedge nvdla_core_clk) begin
   if (!nvdla_core_rstn) begin
       pad_value <= {16{1'b0}};
   end else begin
       if ((layer_st) == 1'b1) begin
           pad_value <= reg2dp_pad_value;
       // VCS coverage off
       end else if ((layer_st) == 1'b0) begin
       end else begin
           pad_value <= 'bx;
       // VCS coverage on
       end
   end
end
always @(posedge nvdla_core_clk) begin
   if (!nvdla_core_rstn) begin
       entries <= {15{1'b0}};
   end else begin
       if ((layer_st) == 1'b1) begin
           entries <= entries_w;
       // VCS coverage off
       end else if ((layer_st) == 1'b0) begin
       end else begin
           entries <= 'bx;
       // VCS coverage on
       end
   end
end
always @(posedge nvdla_core_clk) begin
   if (!nvdla_core_rstn) begin
       entries_batch <= {15{1'b0}};
   end else begin
       if ((layer_st) == 1'b1) begin
           entries_batch <= entries_batch_w;
       // VCS coverage off
       end else if ((layer_st) == 1'b0) begin
       end else begin
           entries_batch <= 'bx;
       // VCS coverage on
       end
   end
end
always @(posedge nvdla_core_clk) begin
   if (!nvdla_core_rstn) begin
       entries_cmp <= {15{1'b0}};
   end else begin
       if ((layer_st) == 1'b1) begin
           entries_cmp <= {1'h0,reg2dp_entries};
       // VCS coverage off
       end else if ((layer_st) == 1'b0) begin
       end else begin
           entries_cmp <= 'bx;
       // VCS coverage on
       end
   end
end
always @(posedge nvdla_core_clk) begin
   if (!nvdla_core_rstn) begin
       h_offset_slice <= {14{1'b0}};
   end else begin
       if ((layer_st) == 1'b1) begin
           h_offset_slice <= h_offset_slice_w;
       // VCS coverage off
       end else if ((layer_st) == 1'b0) begin
       end else begin
           h_offset_slice <= 'bx;
       // VCS coverage on
       end
   end
end
always @(posedge nvdla_core_clk) begin
   if (!nvdla_core_rstn) begin
       h_bias_0_stride <= {12{1'b0}};
   end else begin
       if ((layer_st_d1) == 1'b1) begin
           h_bias_0_stride <= h_bias_0_stride_w;
       // VCS coverage off
       end else if ((layer_st_d1) == 1'b0) begin
       end else begin
           h_bias_0_stride <= 'bx;
       // VCS coverage on
       end
   end
end
always @(posedge nvdla_core_clk) begin
   if (!nvdla_core_rstn) begin
       h_bias_1_stride <= {12{1'b0}};
   end else begin
       if ((layer_st_d1) == 1'b1) begin
           h_bias_1_stride <= h_bias_1_stride_w;
       // VCS coverage off
       end else if ((layer_st_d1) == 1'b0) begin
       end else begin
           h_bias_1_stride <= 'bx;
       // VCS coverage on
       end
   end
end
always @(posedge nvdla_core_clk) begin
   if (!nvdla_core_rstn) begin
       h_bias_2_stride <= {13{1'b0}};
   end else begin
       if ((layer_st_d1) == 1'b1) begin
           h_bias_2_stride <= entries[13-1:0];
       // VCS coverage off
       end else if ((layer_st_d1) == 1'b0) begin
       end else begin
           h_bias_2_stride <= 'bx;
       // VCS coverage on
       end
   end
end
always @(posedge nvdla_core_clk) begin
   if (!nvdla_core_rstn) begin
       h_bias_3_stride <= {13{1'b0}};
   end else begin
       if ((layer_st_d1) == 1'b1) begin
           h_bias_3_stride <= entries[13-1:0];
       // VCS coverage off
       end else if ((layer_st_d1) == 1'b0) begin
       end else begin
           h_bias_3_stride <= 'bx;
       // VCS coverage on
       end
   end
end
always @(posedge nvdla_core_clk) begin
   if (!nvdla_core_rstn) begin
       rls_slices <= {14{1'b0}};
   end else begin
       if ((layer_st) == 1'b1) begin
           rls_slices <= rls_slices_w;
       // VCS coverage off
       end else if ((layer_st) == 1'b0) begin
       end else begin
           rls_slices <= 'bx;
       // VCS coverage on
       end
   end
end
always @(posedge nvdla_core_clk) begin
   if (!nvdla_core_rstn) begin
       rls_entries <= {15{1'b0}};
   end else begin
       if ((layer_st_d1) == 1'b1) begin
           rls_entries <= slice_entries_w;
       // VCS coverage off
       end else if ((layer_st_d1) == 1'b0) begin
       end else begin
           rls_entries <= 'bx;
       // VCS coverage on
       end
   end
end
always @(posedge nvdla_core_clk) begin
   if (!nvdla_core_rstn) begin
       slice_left <= {14{1'b0}};
   end else begin
       if ((layer_st) == 1'b1) begin
           slice_left <= slice_left_w[13:0];
       // VCS coverage off
       end else if ((layer_st) == 1'b0) begin
       end else begin
           slice_left <= 'bx;
       // VCS coverage on
       end
   end
end
always @(posedge nvdla_core_clk) begin
   if (!nvdla_core_rstn) begin
       last_slices <= {14{1'b0}};
   end else begin
       if ((is_sg_done) == 1'b1) begin
           last_slices <= slice_left;
       // VCS coverage off
       end else if ((is_sg_done) == 1'b0) begin
       end else begin
           last_slices <= 'bx;
       // VCS coverage on
       end
   end
end
always @(posedge nvdla_core_clk) begin
   if (!nvdla_core_rstn) begin
       last_entries <= {15{1'b0}};
   end else begin
       if ((is_sg_done) == 1'b1) begin
           last_entries <= slice_entries_w;
       // VCS coverage off
       end else if ((is_sg_done) == 1'b0) begin
       end else begin
           last_entries <= 'bx;
       // VCS coverage on
       end
   end
end
always @(posedge nvdla_core_clk) begin
   if (!nvdla_core_rstn) begin
       dataout_width_cmp <= {13{1'b0}};
   end else begin
       if ((layer_st) == 1'b1) begin
           dataout_width_cmp <= dataout_width_cmp_w;
       // VCS coverage off
       end else if ((layer_st) == 1'b0) begin
       end else begin
           dataout_width_cmp <= 'bx;
       // VCS coverage on
       end
   end
end
always @(posedge nvdla_core_clk) begin
   if (!nvdla_core_rstn) begin
       pra_truncate <= {8{1'b0}};
   end else begin
       if ((layer_st) == 1'b1) begin
           pra_truncate <= {4{pra_truncate_w}};
       // VCS coverage off
       end else if ((layer_st) == 1'b0) begin
       end else begin
           pra_truncate <= 'bx;
       // VCS coverage on
       end
   end
end
always @(posedge nvdla_core_clk) begin
   if (!nvdla_core_rstn) begin
       pra_precision <= {8{1'b0}};
   end else begin
       if ((layer_st) == 1'b1) begin
           pra_precision <= {4{reg2dp_proc_precision}};
       // VCS coverage off
       end else if ((layer_st) == 1'b0) begin
       end else begin
           pra_precision <= 'bx;
       // VCS coverage on
       end
   end
end

//| eperl: generated_end (DO NOT EDIT ABOVE)
////////////////////////////////////////////////////////////////////////
// SLCG control signal //
////////////////////////////////////////////////////////////////////////
assign slcg_wg_en_w = reg2dp_op_en & is_winograd;
//: &eperl::flop("-nodeclare   -rval \"1'b0\"   -d \"slcg_wg_en_w\" -q slcg_wg_en_d1");
//: &eperl::flop("-nodeclare   -rval \"1'b0\"   -d \"slcg_wg_en_d1\" -q slcg_wg_en_d2");
//: &eperl::flop("-nodeclare   -rval \"1'b0\"   -d \"slcg_wg_en_d2\" -q slcg_wg_en_d3");
//| eperl: generated_beg (DO NOT EDIT BELOW)
always @(posedge nvdla_core_clk) begin
   if (!nvdla_core_rstn) begin
       slcg_wg_en_d1 <= 1'b0;
   end else begin
       slcg_wg_en_d1 <= slcg_wg_en_w;
   end
end
always @(posedge nvdla_core_clk) begin
   if (!nvdla_core_rstn) begin
       slcg_wg_en_d2 <= 1'b0;
   end else begin
       slcg_wg_en_d2 <= slcg_wg_en_d1;
   end
end
always @(posedge nvdla_core_clk) begin
   if (!nvdla_core_rstn) begin
       slcg_wg_en_d3 <= 1'b0;
   end else begin
       slcg_wg_en_d3 <= slcg_wg_en_d2;
   end
end

//| eperl: generated_end (DO NOT EDIT ABOVE)
assign slcg_wg_en = slcg_wg_en_d3;
//////////////////////////////////////////////////////////////
///// cbuf status management                             /////
//////////////////////////////////////////////////////////////
//================ Non-SLCG clock domain ================//
assign cbuf_reset = sc2cdma_dat_pending_req;
assign is_running_first = is_sg_running & ~is_sg_running_d1;
//////////////////////////////////// calculate how many avaliable dat slices in cbuf////////////////////////////////////
assign dat_slice_avl_add = cdma2sc_dat_updt ? cdma2sc_dat_slices : 14'b0;
assign dat_slice_avl_sub = dat_rls ? sc2cdma_dat_slices_w : 14'b0;
assign {mon_dat_slice_avl_w, dat_slice_avl_w} = (cbuf_reset) ? 14'b0 : dat_slice_avl + dat_slice_avl_add - dat_slice_avl_sub;
//////////////////////////////////// calculate how many avaliable dat entries in cbuf////////////////////////////////////
assign dat_entry_avl_add = cdma2sc_dat_updt ? cdma2sc_dat_entries :{15{1'b0}};
assign dat_entry_avl_sub = dat_rls ? sc2cdma_dat_entries_w : {15{1'b0}};
assign {mon_dat_entry_avl_w,dat_entry_avl_w} = (cbuf_reset) ? {15{1'b0}} : dat_entry_avl + dat_entry_avl_add - dat_entry_avl_sub;
//////////////////////////////////// calculate avilable data entries start offset in cbuf banks ////////////////////////////////////
// data_bank is the highest bank for storing data
assign {mon_dat_entry_st_inc,dat_entry_st_inc} = dat_entry_st + dat_entry_avl_sub;
assign {mon_dat_entry_st_inc_wrap, dat_entry_st_inc_wrap} = dat_entry_st_inc - {data_bank, {9{1'b0}} };
assign is_dat_entry_st_wrap = (dat_entry_st_inc >= {1'b0, data_bank, {9{1'b0}} });
assign dat_entry_st_w = (cbuf_reset) ? {15{1'b0}} : is_dat_entry_st_wrap ? dat_entry_st_inc_wrap : dat_entry_st_inc[15 -1:0];
//////////////////////////////////// calculate avilable data entries end offset in cbuf banks////////////////////////////////////
assign {mon_dat_entry_end_inc,dat_entry_end_inc} = dat_entry_end + dat_entry_avl_add;
assign {mon_dat_entry_end_inc_wrap,dat_entry_end_inc_wrap} = dat_entry_end_inc - {data_bank, {9{1'b0}} };
assign is_dat_entry_end_wrap = (dat_entry_end_inc >= {1'b0, data_bank, {9{1'b0}} });
assign dat_entry_end_w = (cbuf_reset) ? {15{1'b0}} : is_dat_entry_end_wrap ? dat_entry_end_inc_wrap : dat_entry_end_inc[15 -1:0];
//////////////////////////////////// registers and assertions ////////////////////////////////////
//: my $kk= 15;
//: &eperl::flop("-nodeclare -clk nvdla_core_ng_clk  -rval \"{14{1'b0}}\"  -en \"cdma2sc_dat_updt | dat_rls | cbuf_reset\" -d \"dat_slice_avl_w\" -q dat_slice_avl");
//: &eperl::flop("-nodeclare -clk nvdla_core_ng_clk  -rval \"{${kk}{1'b0}}\"  -en \"cdma2sc_dat_updt | dat_rls | cbuf_reset\" -d \"dat_entry_avl_w\" -q dat_entry_avl");
//: &eperl::flop("-nodeclare -clk nvdla_core_ng_clk  -rval \"{${kk}{1'b0}}\"  -en \"cbuf_reset | dat_rls\" -d \"dat_entry_st_w\" -q dat_entry_st");
//: &eperl::flop("-nodeclare -clk nvdla_core_ng_clk  -rval \"{${kk}{1'b0}}\"  -en \"cbuf_reset | cdma2sc_dat_updt\" -d \"dat_entry_end_w\" -q dat_entry_end");
//| eperl: generated_beg (DO NOT EDIT BELOW)
always @(posedge nvdla_core_ng_clk) begin
   if (!nvdla_core_rstn) begin
       dat_slice_avl <= {14{1'b0}};
   end else begin
       if ((cdma2sc_dat_updt | dat_rls | cbuf_reset) == 1'b1) begin
           dat_slice_avl <= dat_slice_avl_w;
       // VCS coverage off
       end else if ((cdma2sc_dat_updt | dat_rls | cbuf_reset) == 1'b0) begin
       end else begin
           dat_slice_avl <= 'bx;
       // VCS coverage on
       end
   end
end
always @(posedge nvdla_core_ng_clk) begin
   if (!nvdla_core_rstn) begin
       dat_entry_avl <= {15{1'b0}};
   end else begin
       if ((cdma2sc_dat_updt | dat_rls | cbuf_reset) == 1'b1) begin
           dat_entry_avl <= dat_entry_avl_w;
       // VCS coverage off
       end else if ((cdma2sc_dat_updt | dat_rls | cbuf_reset) == 1'b0) begin
       end else begin
           dat_entry_avl <= 'bx;
       // VCS coverage on
       end
   end
end
always @(posedge nvdla_core_ng_clk) begin
   if (!nvdla_core_rstn) begin
       dat_entry_st <= {15{1'b0}};
   end else begin
       if ((cbuf_reset | dat_rls) == 1'b1) begin
           dat_entry_st <= dat_entry_st_w;
       // VCS coverage off
       end else if ((cbuf_reset | dat_rls) == 1'b0) begin
       end else begin
           dat_entry_st <= 'bx;
       // VCS coverage on
       end
   end
end
always @(posedge nvdla_core_ng_clk) begin
   if (!nvdla_core_rstn) begin
       dat_entry_end <= {15{1'b0}};
   end else begin
       if ((cbuf_reset | cdma2sc_dat_updt) == 1'b1) begin
           dat_entry_end <= dat_entry_end_w;
       // VCS coverage off
       end else if ((cbuf_reset | cdma2sc_dat_updt) == 1'b0) begin
       end else begin
           dat_entry_end <= 'bx;
       // VCS coverage on
       end
   end
end

//| eperl: generated_end (DO NOT EDIT ABOVE)
//================ Non-SLCG clock domain end ================//
//////////////////////////////////////////////////////////////
///// cbuf status update                                 /////
//////////////////////////////////////////////////////////////
assign sub_rls = (dat_rsp_pvld & dat_rsp_rls);
assign reuse_rls = sg2dl_reuse_rls;
assign dat_rls = (reuse_rls & (|last_slices)) | (sub_rls & (|rls_slices));
assign sc2cdma_dat_slices_w = sub_rls ? rls_slices : last_slices;
assign sc2cdma_dat_entries_w = sub_rls ? rls_entries : last_entries;
//: my $kk=15;
//: &eperl::flop("-nodeclare   -rval \"1'b0\"   -d \"dat_rls\" -q sc2cdma_dat_updt");
//: &eperl::flop("-nodeclare   -rval \"{14{1'b0}}\"  -en \"dat_rls\" -d \"sc2cdma_dat_slices_w[13:0]\" -q sc2cdma_dat_slices");
//: &eperl::flop("-nodeclare   -rval \"{${kk}{1'b0}}\"  -en \"dat_rls\" -d \"sc2cdma_dat_entries_w\" -q sc2cdma_dat_entries");
//| eperl: generated_beg (DO NOT EDIT BELOW)
always @(posedge nvdla_core_clk) begin
   if (!nvdla_core_rstn) begin
       sc2cdma_dat_updt <= 1'b0;
   end else begin
       sc2cdma_dat_updt <= dat_rls;
   end
end
always @(posedge nvdla_core_clk) begin
   if (!nvdla_core_rstn) begin
       sc2cdma_dat_slices <= {14{1'b0}};
   end else begin
       if ((dat_rls) == 1'b1) begin
           sc2cdma_dat_slices <= sc2cdma_dat_slices_w[13:0];
       // VCS coverage off
       end else if ((dat_rls) == 1'b0) begin
       end else begin
           sc2cdma_dat_slices <= 'bx;
       // VCS coverage on
       end
   end
end
always @(posedge nvdla_core_clk) begin
   if (!nvdla_core_rstn) begin
       sc2cdma_dat_entries <= {15{1'b0}};
   end else begin
       if ((dat_rls) == 1'b1) begin
           sc2cdma_dat_entries <= sc2cdma_dat_entries_w;
       // VCS coverage off
       end else if ((dat_rls) == 1'b0) begin
       end else begin
           sc2cdma_dat_entries <= 'bx;
       // VCS coverage on
       end
   end
end

//| eperl: generated_end (DO NOT EDIT ABOVE)
//////////////////////////////////////////////////////////////
///// input sg2dl package                                 /////
//////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////
///// generate data read sequence                        /////
//////////////////////////////////////////////////////////////
//: my $total_depth = 0 + 5;
//: my $wg_depth = 0;
//:
//: print "assign dl_in_pvld_d0 = sg2dl_pvld;\n";
//: print "assign dl_in_pd_d0 = sg2dl_pd;\n\n";
//:
//: for(my $i = 0; $i < $total_depth; $i ++) {
//: my $j = $i + 1;
//: &eperl::flop("-wid 1    -rval \"1'b0\"                                 -d \"dl_in_pvld_d${i}\" -q dl_in_pvld_d${j}");
//: &eperl::flop("-wid 31   -rval \"{31{1'b0}}\"  -en \"dl_in_pvld_d${i}\" -d \"dl_in_pd_d${i}\"   -q dl_in_pd_d${j}");
//: }
//:
//: my $d0 = $total_depth;
//: my $d1 = $wg_depth;
//:
//: print "assign dl_in_pvld = (is_winograd_d1[0]) ? dl_in_pvld_d${d1} : dl_in_pvld_d${d0};\n";
//: print "assign dl_in_pd = (is_winograd_d1[1]) ? dl_in_pd_d${d1} : dl_in_pd_d${d0};\n\n";
//: my $pipe_depth = 4;
//: my $i;
//: my $j;
//: print "assign dl_pvld_d0 = dl_in_pvld;\n";
//: print "assign dl_pd_d0 = dl_in_pd;\n\n";
//: for($i = 0; $i < $pipe_depth; $i ++) {
//: $j = $i + 1;
//: &eperl::flop("-nodeclare -rval \"1'b0\"                              -d \"dl_pvld_d${i}\"   -q dl_pvld_d${j}");
//: &eperl::flop("-nodeclare -rval \"{31{1'b0}}\"  -en \"dl_pvld_d${i}\" -d \"dl_pd_d${i}\"     -q dl_pd_d${j}");
//: }
//| eperl: generated_beg (DO NOT EDIT BELOW)
assign dl_in_pvld_d0 = sg2dl_pvld;
assign dl_in_pd_d0 = sg2dl_pd;

reg  dl_in_pvld_d1;
always @(posedge nvdla_core_clk) begin
   if (!nvdla_core_rstn) begin
       dl_in_pvld_d1 <= 1'b0;
   end else begin
       dl_in_pvld_d1 <= dl_in_pvld_d0;
   end
end
reg [30:0] dl_in_pd_d1;
always @(posedge nvdla_core_clk) begin
   if (!nvdla_core_rstn) begin
       dl_in_pd_d1 <= {31{1'b0}};
   end else begin
       if ((dl_in_pvld_d0) == 1'b1) begin
           dl_in_pd_d1 <= dl_in_pd_d0;
       // VCS coverage off
       end else if ((dl_in_pvld_d0) == 1'b0) begin
       end else begin
           dl_in_pd_d1 <= 'bx;
       // VCS coverage on
       end
   end
end
reg  dl_in_pvld_d2;
always @(posedge nvdla_core_clk) begin
   if (!nvdla_core_rstn) begin
       dl_in_pvld_d2 <= 1'b0;
   end else begin
       dl_in_pvld_d2 <= dl_in_pvld_d1;
   end
end
reg [30:0] dl_in_pd_d2;
always @(posedge nvdla_core_clk) begin
   if (!nvdla_core_rstn) begin
       dl_in_pd_d2 <= {31{1'b0}};
   end else begin
       if ((dl_in_pvld_d1) == 1'b1) begin
           dl_in_pd_d2 <= dl_in_pd_d1;
       // VCS coverage off
       end else if ((dl_in_pvld_d1) == 1'b0) begin
       end else begin
           dl_in_pd_d2 <= 'bx;
       // VCS coverage on
       end
   end
end
reg  dl_in_pvld_d3;
always @(posedge nvdla_core_clk) begin
   if (!nvdla_core_rstn) begin
       dl_in_pvld_d3 <= 1'b0;
   end else begin
       dl_in_pvld_d3 <= dl_in_pvld_d2;
   end
end
reg [30:0] dl_in_pd_d3;
always @(posedge nvdla_core_clk) begin
   if (!nvdla_core_rstn) begin
       dl_in_pd_d3 <= {31{1'b0}};
   end else begin
       if ((dl_in_pvld_d2) == 1'b1) begin
           dl_in_pd_d3 <= dl_in_pd_d2;
       // VCS coverage off
       end else if ((dl_in_pvld_d2) == 1'b0) begin
       end else begin
           dl_in_pd_d3 <= 'bx;
       // VCS coverage on
       end
   end
end
reg  dl_in_pvld_d4;
always @(posedge nvdla_core_clk) begin
   if (!nvdla_core_rstn) begin
       dl_in_pvld_d4 <= 1'b0;
   end else begin
       dl_in_pvld_d4 <= dl_in_pvld_d3;
   end
end
reg [30:0] dl_in_pd_d4;
always @(posedge nvdla_core_clk) begin
   if (!nvdla_core_rstn) begin
       dl_in_pd_d4 <= {31{1'b0}};
   end else begin
       if ((dl_in_pvld_d3) == 1'b1) begin
           dl_in_pd_d4 <= dl_in_pd_d3;
       // VCS coverage off
       end else if ((dl_in_pvld_d3) == 1'b0) begin
       end else begin
           dl_in_pd_d4 <= 'bx;
       // VCS coverage on
       end
   end
end
reg  dl_in_pvld_d5;
always @(posedge nvdla_core_clk) begin
   if (!nvdla_core_rstn) begin
       dl_in_pvld_d5 <= 1'b0;
   end else begin
       dl_in_pvld_d5 <= dl_in_pvld_d4;
   end
end
reg [30:0] dl_in_pd_d5;
always @(posedge nvdla_core_clk) begin
   if (!nvdla_core_rstn) begin
       dl_in_pd_d5 <= {31{1'b0}};
   end else begin
       if ((dl_in_pvld_d4) == 1'b1) begin
           dl_in_pd_d5 <= dl_in_pd_d4;
       // VCS coverage off
       end else if ((dl_in_pvld_d4) == 1'b0) begin
       end else begin
           dl_in_pd_d5 <= 'bx;
       // VCS coverage on
       end
   end
end
assign dl_in_pvld = (is_winograd_d1[0]) ? dl_in_pvld_d0 : dl_in_pvld_d5;
assign dl_in_pd = (is_winograd_d1[1]) ? dl_in_pd_d0 : dl_in_pd_d5;

assign dl_pvld_d0 = dl_in_pvld;
assign dl_pd_d0 = dl_in_pd;

always @(posedge nvdla_core_clk) begin
   if (!nvdla_core_rstn) begin
       dl_pvld_d1 <= 1'b0;
   end else begin
       dl_pvld_d1 <= dl_pvld_d0;
   end
end
always @(posedge nvdla_core_clk) begin
   if (!nvdla_core_rstn) begin
       dl_pd_d1 <= {31{1'b0}};
   end else begin
       if ((dl_pvld_d0) == 1'b1) begin
           dl_pd_d1 <= dl_pd_d0;
       // VCS coverage off
       end else if ((dl_pvld_d0) == 1'b0) begin
       end else begin
           dl_pd_d1 <= 'bx;
       // VCS coverage on
       end
   end
end
always @(posedge nvdla_core_clk) begin
   if (!nvdla_core_rstn) begin
       dl_pvld_d2 <= 1'b0;
   end else begin
       dl_pvld_d2 <= dl_pvld_d1;
   end
end
always @(posedge nvdla_core_clk) begin
   if (!nvdla_core_rstn) begin
       dl_pd_d2 <= {31{1'b0}};
   end else begin
       if ((dl_pvld_d1) == 1'b1) begin
           dl_pd_d2 <= dl_pd_d1;
       // VCS coverage off
       end else if ((dl_pvld_d1) == 1'b0) begin
       end else begin
           dl_pd_d2 <= 'bx;
       // VCS coverage on
       end
   end
end
always @(posedge nvdla_core_clk) begin
   if (!nvdla_core_rstn) begin
       dl_pvld_d3 <= 1'b0;
   end else begin
       dl_pvld_d3 <= dl_pvld_d2;
   end
end
always @(posedge nvdla_core_clk) begin
   if (!nvdla_core_rstn) begin
       dl_pd_d3 <= {31{1'b0}};
   end else begin
       if ((dl_pvld_d2) == 1'b1) begin
           dl_pd_d3 <= dl_pd_d2;
       // VCS coverage off
       end else if ((dl_pvld_d2) == 1'b0) begin
       end else begin
           dl_pd_d3 <= 'bx;
       // VCS coverage on
       end
   end
end
always @(posedge nvdla_core_clk) begin
   if (!nvdla_core_rstn) begin
       dl_pvld_d4 <= 1'b0;
   end else begin
       dl_pvld_d4 <= dl_pvld_d3;
   end
end
always @(posedge nvdla_core_clk) begin
   if (!nvdla_core_rstn) begin
       dl_pd_d4 <= {31{1'b0}};
   end else begin
       if ((dl_pvld_d3) == 1'b1) begin
           dl_pd_d4 <= dl_pd_d3;
       // VCS coverage off
       end else if ((dl_pvld_d3) == 1'b0) begin
       end else begin
           dl_pd_d4 <= 'bx;
       // VCS coverage on
       end
   end
end

//| eperl: generated_end (DO NOT EDIT ABOVE)
assign dl_pvld = (sub_h_total_g0[2] & dl_pvld_d1) |
                 (sub_h_total_g0[1] & dl_pvld_d3) |
                 (sub_h_total_g0[0] & dl_pvld_d4);
assign dl_pd = ({31 {sub_h_total_g1[2]}} & dl_pd_d1) |
               ({31 {sub_h_total_g1[1]}} & dl_pd_d3) |
               ({31 {sub_h_total_g1[0]}} & dl_pd_d4);
// PKT_UNPACK_WIRE( csc_dat_pkg , dl_ , dl_pd )
assign dl_w_offset[4:0] = dl_pd[4:0]; //this is weight offset
assign dl_h_offset[4:0] = dl_pd[9:5]; //weight offset
assign dl_channel_size[6:0] = dl_pd[16:10];
assign dl_stripe_length[6:0]= dl_pd[23:17];
assign dl_cur_sub_h[1:0] = dl_pd[25:24];
assign dl_block_end = dl_pd[26];
assign dl_channel_end = dl_pd[27];
assign dl_group_end = dl_pd[28];
assign dl_layer_end = dl_pd[29];
assign dl_dat_release = dl_pd[30];
////////////////////////// batch up counter //////////////////////////
assign {mon_batch_cnt_w,batch_cnt_w} = layer_st ? 6'b0 : is_batch_end ? 6'b0 : batch_cnt + 1'b1;
assign is_batch_end = (batch_cnt == batch_cmp);
//: &eperl::flop("-nodeclare   -rval \"{5{1'b0}}\"  -en \"layer_st | dat_exec_valid\" -d \"batch_cnt_w\" -q batch_cnt");
//| eperl: generated_beg (DO NOT EDIT BELOW)
always @(posedge nvdla_core_clk) begin
   if (!nvdla_core_rstn) begin
       batch_cnt <= {5{1'b0}};
   end else begin
       if ((layer_st | dat_exec_valid) == 1'b1) begin
           batch_cnt <= batch_cnt_w;
       // VCS coverage off
       end else if ((layer_st | dat_exec_valid) == 1'b0) begin
       end else begin
           batch_cnt <= 'bx;
       // VCS coverage on
       end
   end
end

//| eperl: generated_end (DO NOT EDIT ABOVE)
////////////////////////// sub height up counter //////////////////////////
assign sub_h_cnt_inc = sub_h_cnt + 1'b1;
assign sub_h_cnt_w = (layer_st | is_sub_h_end) ? 2'b0 : sub_h_cnt_inc[1:0];
assign is_sub_h_end = (sub_h_cnt_inc == sub_h_cmp_g0);
assign sub_h_cnt_reg_en = layer_st | ((is_winograd_d1[2] | (|reg2dp_y_extension)) & dat_exec_valid);
//: &eperl::flop("-nodeclare   -rval \"{2{1'b0}}\"  -en \"sub_h_cnt_reg_en\" -d \"sub_h_cnt_w\" -q sub_h_cnt");
//| eperl: generated_beg (DO NOT EDIT BELOW)
always @(posedge nvdla_core_clk) begin
   if (!nvdla_core_rstn) begin
       sub_h_cnt <= {2{1'b0}};
   end else begin
       if ((sub_h_cnt_reg_en) == 1'b1) begin
           sub_h_cnt <= sub_h_cnt_w;
       // VCS coverage off
       end else if ((sub_h_cnt_reg_en) == 1'b0) begin
       end else begin
           sub_h_cnt <= 'bx;
       // VCS coverage on
       end
   end
end

//| eperl: generated_end (DO NOT EDIT ABOVE)
////////////////////////// stripe up counter //////////////////////////
assign {mon_stripe_cnt_inc,stripe_cnt_inc} = stripe_cnt + 1'b1;
assign stripe_cnt_w = layer_st ? 7'b0 :
                      (is_stripe_equal & ~is_sub_h_end) ? stripe_cnt :
                      is_stripe_end ? 7'b0 :
                      stripe_cnt_inc;
assign is_stripe_equal = is_batch_end & (stripe_cnt_inc == dl_stripe_length);
assign is_stripe_end = is_stripe_equal & is_sub_h_end;
assign stripe_cnt_reg_en = layer_st | (dat_exec_valid & is_batch_end);
//: &eperl::flop("-nodeclare   -rval \"{7{1'b0}}\"  -en \"stripe_cnt_reg_en\" -d \"stripe_cnt_w\" -q stripe_cnt");
//| eperl: generated_beg (DO NOT EDIT BELOW)
always @(posedge nvdla_core_clk) begin
   if (!nvdla_core_rstn) begin
       stripe_cnt <= {7{1'b0}};
   end else begin
       if ((stripe_cnt_reg_en) == 1'b1) begin
           stripe_cnt <= stripe_cnt_w;
       // VCS coverage off
       end else if ((stripe_cnt_reg_en) == 1'b0) begin
       end else begin
           stripe_cnt <= 'bx;
       // VCS coverage on
       end
   end
end

//| eperl: generated_end (DO NOT EDIT ABOVE)
////////////////////////// pipe valid generator //////////////////////////
assign dat_pipe_local_valid_w = (dat_pipe_valid & is_stripe_equal) ? 1'b0 : dl_pvld ? 1'b1 : dat_pipe_local_valid;
assign dat_pipe_valid = dl_pvld | dat_pipe_local_valid;
assign dat_exec_valid = dl_pvld ? 1'b1 : (~(|stripe_cnt) & ~(|sub_h_cnt) & ~(|batch_cnt)) ? 1'b0 : dat_exec_valid_d1;
//: &eperl::flop("-nodeclare   -rval \"1'b0\"   -d \"dat_pipe_local_valid_w\" -q dat_pipe_local_valid");
//: &eperl::flop("-nodeclare   -rval \"1'b0\"   -d \"dat_pipe_valid\" -q dat_pipe_valid_d1");
//: &eperl::flop("-nodeclare   -rval \"1'b0\"   -d \"dat_exec_valid\" -q dat_exec_valid_d1");
//| eperl: generated_beg (DO NOT EDIT BELOW)
always @(posedge nvdla_core_clk) begin
   if (!nvdla_core_rstn) begin
       dat_pipe_local_valid <= 1'b0;
   end else begin
       dat_pipe_local_valid <= dat_pipe_local_valid_w;
   end
end
always @(posedge nvdla_core_clk) begin
   if (!nvdla_core_rstn) begin
       dat_pipe_valid_d1 <= 1'b0;
   end else begin
       dat_pipe_valid_d1 <= dat_pipe_valid;
   end
end
always @(posedge nvdla_core_clk) begin
   if (!nvdla_core_rstn) begin
       dat_exec_valid_d1 <= 1'b0;
   end else begin
       dat_exec_valid_d1 <= dat_exec_valid;
   end
end

//| eperl: generated_end (DO NOT EDIT ABOVE)
////////////////////////// request bytes //////////////////////////
assign dat_req_bytes = {1'b0, dl_channel_size};
//: &eperl::flop("-nodeclare   -rval \"{8{1'b0}}\"  -en \"dat_exec_valid\" -d \"dat_req_bytes\" -q dat_req_bytes_d1");
//| eperl: generated_beg (DO NOT EDIT BELOW)
always @(posedge nvdla_core_clk) begin
   if (!nvdla_core_rstn) begin
       dat_req_bytes_d1 <= {8{1'b0}};
   end else begin
       if ((dat_exec_valid) == 1'b1) begin
           dat_req_bytes_d1 <= dat_req_bytes;
       // VCS coverage off
       end else if ((dat_exec_valid) == 1'b0) begin
       end else begin
           dat_req_bytes_d1 <= 'bx;
       // VCS coverage on
       end
   end
end

//| eperl: generated_end (DO NOT EDIT ABOVE)
////////////////////////// output width coordinate counter //////////////////////////
// sub_h T, output will compute sub_h point in w direction
assign dataout_w_add = sub_h_cmp_g1;
assign {mon_dataout_w_cnt_inc,dataout_w_cnt_inc} = dataout_w_cnt + dataout_w_add;
assign is_w_end = is_batch_end & is_sub_h_end & (dataout_w_cnt >= dataout_width_cmp);
assign is_w_end_ahead = is_batch_end & (dataout_w_cnt >= dataout_width_cmp);
assign dataout_w_cnt_w = layer_st ? dataout_w_init :
                         (is_stripe_end & ~dl_channel_end) ? dataout_w_ori :
                         is_w_end ? dataout_w_init :
                         dataout_w_cnt_inc;
assign dataout_w_cnt_reg_en = layer_st | (dat_exec_valid & is_batch_end & is_sub_h_end);
assign dataout_w_ori_reg_en = layer_st | (dat_exec_valid & is_stripe_end & dl_channel_end);
//: &eperl::flop("-nodeclare   -rval \"{13{1'b0}}\"  -en \"dataout_w_cnt_reg_en\" -d \"dataout_w_cnt_w\" -q dataout_w_cnt");
//: &eperl::flop("-nodeclare   -rval \"{13{1'b0}}\"  -en \"dataout_w_ori_reg_en\" -d \"dataout_w_cnt_w\" -q dataout_w_ori");
//| eperl: generated_beg (DO NOT EDIT BELOW)
always @(posedge nvdla_core_clk) begin
   if (!nvdla_core_rstn) begin
       dataout_w_cnt <= {13{1'b0}};
   end else begin
       if ((dataout_w_cnt_reg_en) == 1'b1) begin
           dataout_w_cnt <= dataout_w_cnt_w;
       // VCS coverage off
       end else if ((dataout_w_cnt_reg_en) == 1'b0) begin
       end else begin
           dataout_w_cnt <= 'bx;
       // VCS coverage on
       end
   end
end
always @(posedge nvdla_core_clk) begin
   if (!nvdla_core_rstn) begin
       dataout_w_ori <= {13{1'b0}};
   end else begin
       if ((dataout_w_ori_reg_en) == 1'b1) begin
           dataout_w_ori <= dataout_w_cnt_w;
       // VCS coverage off
       end else if ((dataout_w_ori_reg_en) == 1'b0) begin
       end else begin
           dataout_w_ori <= 'bx;
       // VCS coverage on
       end
   end
end

//| eperl: generated_end (DO NOT EDIT ABOVE)
////////////////////////// input channel coordinate counter, only feature  //////////////////////////
assign {mon_datain_c_cnt_inc,datain_c_cnt_inc} = datain_c_cnt + 1'b1;
assign is_last_channel = (datain_c_cnt == datain_channel_cmp);
assign datain_c_cnt_w = layer_st ? 11'b0 : dl_channel_end ? 11'b0 : datain_c_cnt_inc;
assign datain_c_cnt_reg_en = layer_st | (dat_exec_valid & is_stripe_end & dl_block_end);
//: &eperl::flop("-nodeclare   -rval \"{11{1'b0}}\"  -en \"datain_c_cnt_reg_en\" -d \"datain_c_cnt_w\" -q datain_c_cnt");
//| eperl: generated_beg (DO NOT EDIT BELOW)
always @(posedge nvdla_core_clk) begin
   if (!nvdla_core_rstn) begin
       datain_c_cnt <= {11{1'b0}};
   end else begin
       if ((datain_c_cnt_reg_en) == 1'b1) begin
           datain_c_cnt <= datain_c_cnt_w;
       // VCS coverage off
       end else if ((datain_c_cnt_reg_en) == 1'b0) begin
       end else begin
           datain_c_cnt <= 'bx;
       // VCS coverage on
       end
   end
end

//| eperl: generated_end (DO NOT EDIT ABOVE)
////////////////////////// input width coordinate counter, feature/image dedicated counter //////////////////////////
assign datain_w_cnt_st = (is_img) ? 14'b0 : (is_winograd) ? 14'h2 : 13'b0 - reg2dp_pad_left;
assign {mon_datain_w_cnt_inc,datain_w_cnt_inc} = (is_winograd_d1[3]) ? (datain_w_cnt + 2'h2) : (datain_w_cnt + conv_x_stride);
//full data cube w counter,start form negtive, only for feature data. non-image, by element
assign datain_w_cnt_w = layer_st ? datain_w_cnt_st :
                        (is_stripe_end & ~dl_channel_end) ? datain_w_ori :
                        is_w_end ? datain_w_cnt_st :
                        datain_w_cnt_inc;
assign dl_w_offset_ext = dl_w_offset * x_dilate;
assign {mon_datain_w_cur,datain_w_cur} = datain_w_cnt + dl_w_offset_ext; //by element
assign datain_w_cnt_reg_en = layer_st | (dat_exec_valid & is_batch_end & is_sub_h_end & ~is_img_d1[0]);
assign datain_w_ori_reg_en = layer_st | (dat_exec_valid & is_stripe_end & dl_channel_end & ~is_img_d1[1]);
//notice:after sub_h T, pixel_x_add elements in W direction is used by CMAC
assign pixel_x_cnt_add = (is_sub_h_end) ? pixel_x_add : 6'b0;
//assign {mon_pixel_w_cnt_w,pixel_w_cnt_w} = (layer_st_d1) ? {{11{1'b0}}, pixel_x_init} :
// (is_stripe_end & dl_block_end & dl_channel_end & is_w_end) ? {{11{1'b0}}, pixel_x_init} :
// (is_stripe_end & dl_block_end & dl_channel_end & ~is_w_end) ? (pixel_w_ch_ori + pixel_ch_stride) :
// (is_stripe_end & dl_block_end & ~dl_channel_end) ? (pixel_w_ch_ori + pixel_x_init_offset) :
// (is_stripe_end & ~dl_block_end) ? {1'b0, pixel_w_ori} :
// (pixel_w_cnt + pixel_x_cnt_add);
//channel count.
wire [12:0] total_channel_op = (reg2dp_weight_channel_ext[6 -1:0]=={6{1'b0}}) ?
                        reg2dp_weight_channel_ext[12:6] : reg2dp_weight_channel_ext[12:6]+1'b1;
reg [12:0] channel_op_cnt;
wire mon_channel_op_cnt_nxt;
wire [12:0] channel_op_cnt_nxt;
assign {mon_channel_op_cnt_nxt, channel_op_cnt_nxt} = dl_channel_end&is_stripe_end ? 13'h2 :
                                                        dl_block_end&is_stripe_end ? channel_op_cnt + 1'b1 :
                                                        channel_op_cnt;
//: &eperl::flop("-q channel_op_cnt  -d \"channel_op_cnt_nxt\"  -wid 13  -rval \"13'h2\" -nodeclare ");
//| eperl: generated_beg (DO NOT EDIT BELOW)
always @(posedge nvdla_core_clk) begin
   if (!nvdla_core_rstn) begin
       channel_op_cnt <= 13'h2;
   end else begin
       channel_op_cnt <= channel_op_cnt_nxt;
   end
end

//| eperl: generated_end (DO NOT EDIT ABOVE)
wire next_is_last_channel = (channel_op_cnt >= total_channel_op);
//notice, after pre-extention, image weight w_total <=128
assign {mon_pixel_w_cnt_w,pixel_w_cnt_w} = (layer_st_d1) ? {{11{1'b0}}, pixel_x_init} :
                        (is_stripe_end & dl_block_end & dl_channel_end & is_w_end) ? {{11{1'b0}}, pixel_x_init} :
                        (is_stripe_end & dl_block_end & dl_channel_end & ~is_w_end) ? (pixel_w_ch_ori + pixel_ch_stride) :
//(is_stripe_end & dl_block_end & ~dl_channel_end) ? (pixel_w_ori + dl_in_pd_d0[16:10]) :
                        (is_stripe_end & dl_block_end & next_is_last_channel) ? (pixel_w_ori + pixel_x_init_offset) :
                        (is_stripe_end & dl_block_end & ~next_is_last_channel) ? (pixel_w_ori + 8'h40  ) :
                        (is_stripe_end & ~dl_block_end) ? {1'b0, pixel_w_ori} :
                        (pixel_w_cnt + pixel_x_cnt_add);
assign pixel_w_cur = {{6 -1{1'b0}},pixel_w_cnt[15:6]}; //by entry 
assign pixel_w_cnt_reg_en = layer_st_d1 | (dat_exec_valid & is_img_d1[2] & (is_sub_h_end | is_w_end));
assign pixel_w_ori_reg_en = layer_st_d1 | (dat_exec_valid & is_img_d1[3] & is_stripe_end & dl_block_end);
assign pixel_ch_ori_reg_en = layer_st_d1 | (dat_exec_valid & is_img_d1[4] & is_stripe_end & dl_block_end & dl_channel_end);
assign pixel_force_fetch = (is_img_d1[0] & dat_req_stripe_st) ? 1'b1 : (pixel_force_clr_d1) ? 1'b0 : pixel_force_fetch_d1;
assign pixel_force_clr = is_img_d1[0] & is_sub_h_end & (pixel_force_fetch | pixel_force_fetch_d1);
//: &eperl::flop("-nodeclare   -rval \"{14{1'b0}}\"  -en \"datain_w_cnt_reg_en\" -d \"datain_w_cnt_w\" -q datain_w_cnt");
//: &eperl::flop("-nodeclare   -rval \"{14{1'b0}}\"  -en \"datain_w_ori_reg_en\" -d \"datain_w_cnt_w\" -q datain_w_ori");
//: &eperl::flop("-nodeclare   -rval \"{16{1'b0}}\"  -en \"pixel_w_cnt_reg_en\" -d \"pixel_w_cnt_w\" -q pixel_w_cnt");
//: &eperl::flop("-nodeclare   -rval \"{16{1'b0}}\"  -en \"pixel_w_ori_reg_en\" -d \"pixel_w_cnt_w\" -q pixel_w_ori");
//: &eperl::flop("-nodeclare   -rval \"{16{1'b0}}\"  -en \"pixel_ch_ori_reg_en\" -d \"pixel_w_cnt_w\" -q pixel_w_ch_ori");
//| eperl: generated_beg (DO NOT EDIT BELOW)
always @(posedge nvdla_core_clk) begin
   if (!nvdla_core_rstn) begin
       datain_w_cnt <= {14{1'b0}};
   end else begin
       if ((datain_w_cnt_reg_en) == 1'b1) begin
           datain_w_cnt <= datain_w_cnt_w;
       // VCS coverage off
       end else if ((datain_w_cnt_reg_en) == 1'b0) begin
       end else begin
           datain_w_cnt <= 'bx;
       // VCS coverage on
       end
   end
end
always @(posedge nvdla_core_clk) begin
   if (!nvdla_core_rstn) begin
       datain_w_ori <= {14{1'b0}};
   end else begin
       if ((datain_w_ori_reg_en) == 1'b1) begin
           datain_w_ori <= datain_w_cnt_w;
       // VCS coverage off
       end else if ((datain_w_ori_reg_en) == 1'b0) begin
       end else begin
           datain_w_ori <= 'bx;
       // VCS coverage on
       end
   end
end
always @(posedge nvdla_core_clk) begin
   if (!nvdla_core_rstn) begin
       pixel_w_cnt <= {16{1'b0}};
   end else begin
       if ((pixel_w_cnt_reg_en) == 1'b1) begin
           pixel_w_cnt <= pixel_w_cnt_w;
       // VCS coverage off
       end else if ((pixel_w_cnt_reg_en) == 1'b0) begin
       end else begin
           pixel_w_cnt <= 'bx;
       // VCS coverage on
       end
   end
end
always @(posedge nvdla_core_clk) begin
   if (!nvdla_core_rstn) begin
       pixel_w_ori <= {16{1'b0}};
   end else begin
       if ((pixel_w_ori_reg_en) == 1'b1) begin
           pixel_w_ori <= pixel_w_cnt_w;
       // VCS coverage off
       end else if ((pixel_w_ori_reg_en) == 1'b0) begin
       end else begin
           pixel_w_ori <= 'bx;
       // VCS coverage on
       end
   end
end
always @(posedge nvdla_core_clk) begin
   if (!nvdla_core_rstn) begin
       pixel_w_ch_ori <= {16{1'b0}};
   end else begin
       if ((pixel_ch_ori_reg_en) == 1'b1) begin
           pixel_w_ch_ori <= pixel_w_cnt_w;
       // VCS coverage off
       end else if ((pixel_ch_ori_reg_en) == 1'b0) begin
       end else begin
           pixel_w_ch_ori <= 'bx;
       // VCS coverage on
       end
   end
end

//| eperl: generated_end (DO NOT EDIT ABOVE)
////////////////////////// input height coordinate counter, feature/image both  //////////////////////////
// full data cube h counter, start form negative
assign datain_h_cnt_st = (is_winograd) ? 14'b0 : 14'b0 - reg2dp_pad_top;
assign {mon_datain_h_cnt_inc, datain_h_cnt_inc} = datain_h_cnt + conv_y_stride;
assign datain_h_cnt_w = (layer_st | (is_stripe_end & dl_group_end)) ? datain_h_cnt_st :
                        (is_stripe_end & ~dl_channel_end) ? datain_h_ori :
                        is_w_end ? datain_h_cnt_inc :
                        datain_h_cnt;
assign datain_h_cnt_reg_en = layer_st | (dat_exec_valid & ((is_stripe_end & ~dl_channel_end) | is_w_end));
assign datain_h_ori_reg_en = layer_st | (dat_exec_valid & is_stripe_end & dl_channel_end);
assign dl_h_offset_ext = dl_h_offset * y_dilate;
assign {mon_datain_h_cur,datain_h_cur} = datain_h_cnt + dl_h_offset_ext + sub_h_cnt;
//: &eperl::flop("-nodeclare   -rval \"{14{1'b0}}\"  -en \"datain_h_cnt_reg_en\" -d \"datain_h_cnt_w\" -q datain_h_cnt");
//: &eperl::flop("-nodeclare   -rval \"{14{1'b0}}\"  -en \"datain_h_ori_reg_en\" -d \"datain_h_cnt_w\" -q datain_h_ori");
//| eperl: generated_beg (DO NOT EDIT BELOW)
always @(posedge nvdla_core_clk) begin
   if (!nvdla_core_rstn) begin
       datain_h_cnt <= {14{1'b0}};
   end else begin
       if ((datain_h_cnt_reg_en) == 1'b1) begin
           datain_h_cnt <= datain_h_cnt_w;
       // VCS coverage off
       end else if ((datain_h_cnt_reg_en) == 1'b0) begin
       end else begin
           datain_h_cnt <= 'bx;
       // VCS coverage on
       end
   end
end
always @(posedge nvdla_core_clk) begin
   if (!nvdla_core_rstn) begin
       datain_h_ori <= {14{1'b0}};
   end else begin
       if ((datain_h_ori_reg_en) == 1'b1) begin
           datain_h_ori <= datain_h_cnt_w;
       // VCS coverage off
       end else if ((datain_h_ori_reg_en) == 1'b0) begin
       end else begin
           datain_h_ori <= 'bx;
       // VCS coverage on
       end
   end
end

//| eperl: generated_end (DO NOT EDIT ABOVE)
////////////////////////// fetch valid generate //////////////////////////
assign dat_conv_req_dummy = (datain_w_cur[13 ]) | (datain_w_cur > {1'b0, datain_width_cmp})
                            | (datain_h_cur[13 ]) | (datain_h_cur > {1'b0, datain_height_cmp});
assign dat_wg_req_dummy = 1'b0;
assign dat_wg_req_skip = ((|datain_w_cur[13:2]) & datain_w_cur[1] & (|stripe_cnt[6:1]));
assign dat_img_req_dummy = (datain_h_cur[13]) | (datain_h_cur > {1'b0, datain_height_cmp});
//w address(in entry) is bigger than avilable entrys
assign dat_img_req_skip = ({{15 -12{1'b0}},w_bias_w[13:2]} > entries_cmp[15 -1:0]);
assign dat_req_dummy = is_img_d1[5] ? dat_img_req_dummy : is_winograd_d1[4] ? dat_wg_req_dummy : dat_conv_req_dummy;
assign dat_req_skip = (is_winograd_d1[5] & dat_wg_req_skip) | (is_img_d1[6] & dat_img_req_skip);
assign dat_req_valid = (dat_exec_valid & ~dat_req_dummy & ~dat_req_skip);
//Add corner case
assign dat_req_sub_c_w = ~is_img_d1[7] ? datain_c_cnt[0] : dl_block_end;
assign dat_req_sub_w_w = is_winograd_d1[6] ? {1'b0, ~datain_w_cur[1]} : datain_w_cur[1:0];
assign dat_req_sub_w_st_en = dat_exec_valid & (sub_h_cnt == 2'h0);
assign dat_req_batch_index = batch_cnt;
assign dat_req_stripe_st = dl_pvld;
assign dat_req_stripe_end = is_stripe_equal & dat_pipe_valid;
assign dat_req_channel_end = dl_channel_end;
assign dat_req_layer_end = dl_layer_end;
// PKT_PACK_WIRE( nvdla_stripe_info , dat_req_ , dat_req_flag_w )
assign dat_req_flag_w[4:0] = dat_req_batch_index[4:0];
assign dat_req_flag_w[5] = dat_req_stripe_st ;
assign dat_req_flag_w[6] = dat_req_stripe_end ;
assign dat_req_flag_w[7] = dat_req_channel_end ;
assign dat_req_flag_w[8] = dat_req_layer_end ;
//: &eperl::flop("-nodeclare   -rval \"1'b0\"   -d \"dat_req_valid\" -q dat_req_valid_d1");
//: &eperl::flop("-nodeclare   -rval \"{2{1'b0}}\"  -en \"dat_exec_valid\" -d \"dat_req_sub_w_w\" -q dat_req_sub_w_d1");
//: &eperl::flop("-nodeclare   -rval \"{2{1'b0}}\"  -en \"dat_exec_valid\" -d \"sub_h_cnt\" -q dat_req_sub_h_d1");
//: &eperl::flop("-nodeclare   -rval \"1'b0\"  -en \"dat_exec_valid\" -d \"dat_req_sub_c_w\" -q dat_req_sub_c_d1");
//: &eperl::flop("-nodeclare   -rval \"1'b0\"  -en \"dat_exec_valid\" -d \"is_last_channel\" -q dat_req_ch_end_d1");
//: &eperl::flop("-nodeclare   -rval \"1'b0\"  -en \"dat_exec_valid\" -d \"dat_req_dummy\" -q dat_req_dummy_d1");
//: &eperl::flop("-nodeclare   -rval \"{2{1'b0}}\"  -en \"dat_exec_valid\" -d \"dl_cur_sub_h\" -q dat_req_cur_sub_h_d1");
//: &eperl::flop("-nodeclare   -rval \"1'b0\"  -en \"dat_req_sub_w_st_en\" -d \"dat_req_stripe_st\" -q dat_req_sub_w_st_d1");
//: &eperl::flop("-nodeclare   -rval \"{9{1'b0}}\"  -en \"dat_exec_valid\" -d \"dat_req_flag_w\" -q dat_req_flag_d1");
//: &eperl::flop("-nodeclare   -rval \"1'b0\"  -en \"dat_exec_valid\" -d \"dl_dat_release & is_stripe_equal & dat_pipe_valid\" -q dat_req_rls_d1");
//: &eperl::flop("-nodeclare   -rval \"1'b0\"  -en \"dat_exec_valid\" -d \"pixel_force_fetch\" -q pixel_force_fetch_d1");
//: &eperl::flop("-nodeclare   -rval \"1'b0\"  -en \"dat_exec_valid\" -d \"pixel_force_clr\" -q pixel_force_clr_d1");
//| eperl: generated_beg (DO NOT EDIT BELOW)
always @(posedge nvdla_core_clk) begin
   if (!nvdla_core_rstn) begin
       dat_req_valid_d1 <= 1'b0;
   end else begin
       dat_req_valid_d1 <= dat_req_valid;
   end
end
always @(posedge nvdla_core_clk) begin
   if (!nvdla_core_rstn) begin
       dat_req_sub_w_d1 <= {2{1'b0}};
   end else begin
       if ((dat_exec_valid) == 1'b1) begin
           dat_req_sub_w_d1 <= dat_req_sub_w_w;
       // VCS coverage off
       end else if ((dat_exec_valid) == 1'b0) begin
       end else begin
           dat_req_sub_w_d1 <= 'bx;
       // VCS coverage on
       end
   end
end
always @(posedge nvdla_core_clk) begin
   if (!nvdla_core_rstn) begin
       dat_req_sub_h_d1 <= {2{1'b0}};
   end else begin
       if ((dat_exec_valid) == 1'b1) begin
           dat_req_sub_h_d1 <= sub_h_cnt;
       // VCS coverage off
       end else if ((dat_exec_valid) == 1'b0) begin
       end else begin
           dat_req_sub_h_d1 <= 'bx;
       // VCS coverage on
       end
   end
end
always @(posedge nvdla_core_clk) begin
   if (!nvdla_core_rstn) begin
       dat_req_sub_c_d1 <= 1'b0;
   end else begin
       if ((dat_exec_valid) == 1'b1) begin
           dat_req_sub_c_d1 <= dat_req_sub_c_w;
       // VCS coverage off
       end else if ((dat_exec_valid) == 1'b0) begin
       end else begin
           dat_req_sub_c_d1 <= 'bx;
       // VCS coverage on
       end
   end
end
always @(posedge nvdla_core_clk) begin
   if (!nvdla_core_rstn) begin
       dat_req_ch_end_d1 <= 1'b0;
   end else begin
       if ((dat_exec_valid) == 1'b1) begin
           dat_req_ch_end_d1 <= is_last_channel;
       // VCS coverage off
       end else if ((dat_exec_valid) == 1'b0) begin
       end else begin
           dat_req_ch_end_d1 <= 'bx;
       // VCS coverage on
       end
   end
end
always @(posedge nvdla_core_clk) begin
   if (!nvdla_core_rstn) begin
       dat_req_dummy_d1 <= 1'b0;
   end else begin
       if ((dat_exec_valid) == 1'b1) begin
           dat_req_dummy_d1 <= dat_req_dummy;
       // VCS coverage off
       end else if ((dat_exec_valid) == 1'b0) begin
       end else begin
           dat_req_dummy_d1 <= 'bx;
       // VCS coverage on
       end
   end
end
always @(posedge nvdla_core_clk) begin
   if (!nvdla_core_rstn) begin
       dat_req_cur_sub_h_d1 <= {2{1'b0}};
   end else begin
       if ((dat_exec_valid) == 1'b1) begin
           dat_req_cur_sub_h_d1 <= dl_cur_sub_h;
       // VCS coverage off
       end else if ((dat_exec_valid) == 1'b0) begin
       end else begin
           dat_req_cur_sub_h_d1 <= 'bx;
       // VCS coverage on
       end
   end
end
always @(posedge nvdla_core_clk) begin
   if (!nvdla_core_rstn) begin
       dat_req_sub_w_st_d1 <= 1'b0;
   end else begin
       if ((dat_req_sub_w_st_en) == 1'b1) begin
           dat_req_sub_w_st_d1 <= dat_req_stripe_st;
       // VCS coverage off
       end else if ((dat_req_sub_w_st_en) == 1'b0) begin
       end else begin
           dat_req_sub_w_st_d1 <= 'bx;
       // VCS coverage on
       end
   end
end
always @(posedge nvdla_core_clk) begin
   if (!nvdla_core_rstn) begin
       dat_req_flag_d1 <= {9{1'b0}};
   end else begin
       if ((dat_exec_valid) == 1'b1) begin
           dat_req_flag_d1 <= dat_req_flag_w;
       // VCS coverage off
       end else if ((dat_exec_valid) == 1'b0) begin
       end else begin
           dat_req_flag_d1 <= 'bx;
       // VCS coverage on
       end
   end
end
always @(posedge nvdla_core_clk) begin
   if (!nvdla_core_rstn) begin
       dat_req_rls_d1 <= 1'b0;
   end else begin
       if ((dat_exec_valid) == 1'b1) begin
           dat_req_rls_d1 <= dl_dat_release & is_stripe_equal & dat_pipe_valid;
       // VCS coverage off
       end else if ((dat_exec_valid) == 1'b0) begin
       end else begin
           dat_req_rls_d1 <= 'bx;
       // VCS coverage on
       end
   end
end
always @(posedge nvdla_core_clk) begin
   if (!nvdla_core_rstn) begin
       pixel_force_fetch_d1 <= 1'b0;
   end else begin
       if ((dat_exec_valid) == 1'b1) begin
           pixel_force_fetch_d1 <= pixel_force_fetch;
       // VCS coverage off
       end else if ((dat_exec_valid) == 1'b0) begin
       end else begin
           pixel_force_fetch_d1 <= 'bx;
       // VCS coverage on
       end
   end
end
always @(posedge nvdla_core_clk) begin
   if (!nvdla_core_rstn) begin
       pixel_force_clr_d1 <= 1'b0;
   end else begin
       if ((dat_exec_valid) == 1'b1) begin
           pixel_force_clr_d1 <= pixel_force_clr;
       // VCS coverage off
       end else if ((dat_exec_valid) == 1'b0) begin
       end else begin
           pixel_force_clr_d1 <= 'bx;
       // VCS coverage on
       end
   end
end

//| eperl: generated_end (DO NOT EDIT ABOVE)
//////////////////////////////////////////////////////////////
///// generate data read address                         /////
//////////////////////////////////////////////////////////////
////////////////////////// data read index generator: 1st stage //////////////////////////
//channel bias, by w_in element
//assign c_bias_add = (~is_img_d1[8] & datain_c_cnt[0]) ? datain_width[12 -1:0] : 12'b0;
assign c_bias_add = (~is_img_d1[8]) ? datain_width[12 -1:0] : 12'b0;
assign {mon_c_bias_w, c_bias_w} = layer_st ? 13'b0 : (is_stripe_end & dl_channel_end) ? 13'b0 : c_bias + c_bias_add;
assign c_bias_reg_en = layer_st | (dat_exec_valid & is_stripe_end & dl_block_end);
assign c_bias_d1_reg_en = (c_bias != c_bias_d1);
//height bias, by element
assign {mon_h_bias_0_w,h_bias_0_w} = datain_h_cnt[13:0] * h_bias_0_stride;
assign {mon_h_bias_1_w,h_bias_1_w} = dl_h_offset * h_bias_1_stride;
assign {mon_h_bias_2_w,h_bias_2_w} = batch_cnt * h_bias_2_stride;
assign {mon_h_bias_3_w,h_bias_3_w} = layer_st ? 13'b0 :sub_h_cnt * h_bias_3_stride;
assign h_bias_reg_en[0] = dat_exec_valid;
assign h_bias_reg_en[1] = layer_st | (dat_exec_valid & (is_winograd_d1[7] | is_img_d1[9]));
//width bias, by entry in image, by element in feature data

assign w_bias_int8 = is_img_d1[10] ? {pixel_w_cur} : //by entry in image 
                     is_winograd_d1[8] ? {1'b0, datain_w_cnt} :
                     (~is_last_channel | is_winograd_d1[8]) ? {2'b0,datain_w_cur[12:0]} ://not last channel, by element
                     (dat_req_bytes > 8'h20) ? {2'b0,datain_w_cur[12:0]} : //last channel & request >1/2*entry
                     {3'b0, datain_w_cur[12:1]}; //last channel & request<=1/2*entry

assign w_bias_int8 = is_img_d1[10] ? {pixel_w_cur} : //by entry in image 
                     is_winograd_d1[8] ? {1'b0, datain_w_cnt} :
                     (~is_last_channel | is_winograd_d1[8]) ? {2'b0,datain_w_cur[12:0]} ://not last channel, by element
                     (dat_req_bytes > 8'h20) ? {2'b0,datain_w_cur[12:0]} : //last channel & request >1/2*entry
                     (dat_req_bytes <= 8'h10) ? {4'b0, datain_w_cur[12:2]} : //last channel & request <=1/4*entry
                     {3'b0, datain_w_cur[12:1]}; //last channel & (1/4*entry<request<=1/2*entry)
assign w_bias_w = w_bias_int8[13:0];
assign w_bias_reg_en = dat_exec_valid;
assign dat_req_base_d1 = dat_entry_st[13 -1:0];
//: my $kk=13;
//: &eperl::flop("-nodeclare   -rval \"{${kk}{1'b0}}\"  -en \"c_bias_reg_en\" -d \"c_bias_w\" -q c_bias");
//: &eperl::flop("-nodeclare   -rval \"{${kk}{1'b0}}\"  -en \"c_bias_d1_reg_en\" -d \"c_bias\" -q c_bias_d1");
//: &eperl::flop("-nodeclare   -rval \"{${kk}{1'b0}}\"  -en \"h_bias_reg_en[0]\" -d \"h_bias_0_w\" -q h_bias_0_d1");
//: &eperl::flop("-nodeclare   -rval \"{${kk}{1'b0}}\"  -en \"h_bias_reg_en[0]\" -d \"h_bias_1_w\" -q h_bias_1_d1");
//: &eperl::flop("-nodeclare   -rval \"{${kk}{1'b0}}\"  -en \"h_bias_reg_en[0]\" -d \"h_bias_2_w\" -q h_bias_2_d1");
//: &eperl::flop("-nodeclare   -rval \"{${kk}{1'b0}}\"  -en \"h_bias_reg_en[1]\" -d \"h_bias_3_w\" -q h_bias_3_d1");
//: &eperl::flop("-nodeclare   -rval \"{${kk}{1'b0}}\"  -en \"w_bias_reg_en\" -d \"w_bias_w\" -q w_bias_d1");
//| eperl: generated_beg (DO NOT EDIT BELOW)
always @(posedge nvdla_core_clk) begin
   if (!nvdla_core_rstn) begin
       c_bias <= {13{1'b0}};
   end else begin
       if ((c_bias_reg_en) == 1'b1) begin
           c_bias <= c_bias_w;
       // VCS coverage off
       end else if ((c_bias_reg_en) == 1'b0) begin
       end else begin
           c_bias <= 'bx;
       // VCS coverage on
       end
   end
end
always @(posedge nvdla_core_clk) begin
   if (!nvdla_core_rstn) begin
       c_bias_d1 <= {13{1'b0}};
   end else begin
       if ((c_bias_d1_reg_en) == 1'b1) begin
           c_bias_d1 <= c_bias;
       // VCS coverage off
       end else if ((c_bias_d1_reg_en) == 1'b0) begin
       end else begin
           c_bias_d1 <= 'bx;
       // VCS coverage on
       end
   end
end
always @(posedge nvdla_core_clk) begin
   if (!nvdla_core_rstn) begin
       h_bias_0_d1 <= {13{1'b0}};
   end else begin
       if ((h_bias_reg_en[0]) == 1'b1) begin
           h_bias_0_d1 <= h_bias_0_w;
       // VCS coverage off
       end else if ((h_bias_reg_en[0]) == 1'b0) begin
       end else begin
           h_bias_0_d1 <= 'bx;
       // VCS coverage on
       end
   end
end
always @(posedge nvdla_core_clk) begin
   if (!nvdla_core_rstn) begin
       h_bias_1_d1 <= {13{1'b0}};
   end else begin
       if ((h_bias_reg_en[0]) == 1'b1) begin
           h_bias_1_d1 <= h_bias_1_w;
       // VCS coverage off
       end else if ((h_bias_reg_en[0]) == 1'b0) begin
       end else begin
           h_bias_1_d1 <= 'bx;
       // VCS coverage on
       end
   end
end
always @(posedge nvdla_core_clk) begin
   if (!nvdla_core_rstn) begin
       h_bias_2_d1 <= {13{1'b0}};
   end else begin
       if ((h_bias_reg_en[0]) == 1'b1) begin
           h_bias_2_d1 <= h_bias_2_w;
       // VCS coverage off
       end else if ((h_bias_reg_en[0]) == 1'b0) begin
       end else begin
           h_bias_2_d1 <= 'bx;
       // VCS coverage on
       end
   end
end
always @(posedge nvdla_core_clk) begin
   if (!nvdla_core_rstn) begin
       h_bias_3_d1 <= {13{1'b0}};
   end else begin
       if ((h_bias_reg_en[1]) == 1'b1) begin
           h_bias_3_d1 <= h_bias_3_w;
       // VCS coverage off
       end else if ((h_bias_reg_en[1]) == 1'b0) begin
       end else begin
           h_bias_3_d1 <= 'bx;
       // VCS coverage on
       end
   end
end
always @(posedge nvdla_core_clk) begin
   if (!nvdla_core_rstn) begin
       w_bias_d1 <= {13{1'b0}};
   end else begin
       if ((w_bias_reg_en) == 1'b1) begin
           w_bias_d1 <= w_bias_w;
       // VCS coverage off
       end else if ((w_bias_reg_en) == 1'b0) begin
       end else begin
           w_bias_d1 <= 'bx;
       // VCS coverage on
       end
   end
end

//| eperl: generated_end (DO NOT EDIT ABOVE)
////////////////////////// data read index generator: 2st stage //////////////////////////
wire [13 -1:0] dat_req_addr_minus1;
wire mon_dat_req_addr_minus1;
wire is_dat_req_addr_minus1_wrap;
wire [13 -1:0] dat_req_addr_minus1_wrap;
wire [13 -1:0] dat_req_addr_minus1_real;
assign {mon_h_bias_d1,h_bias_d1} = h_bias_0_d1 + h_bias_1_d1 + h_bias_2_d1 + h_bias_3_d1;
//assign {mon_dat_req_addr_sum,dat_req_addr_sum} = dat_req_base_d1 + c_bias_d1 + h_bias_d1 + w_bias_d1; //by entry
assign dat_req_addr_sum = dat_req_base_d1 + c_bias_d1 + h_bias_d1 + w_bias_d1; //by entry
assign is_dat_req_addr_wrap = (dat_req_addr_sum >= {1'b0,data_bank, {9{1'b0}}});
assign {mon_dat_req_addr_wrap,dat_req_addr_wrap} = dat_req_addr_sum[13:0] - {1'b0,data_bank, {9{1'b0}}};
assign dat_req_addr_w = (layer_st | dat_req_dummy_d1) ? {13{1'b1}} : is_dat_req_addr_wrap ? dat_req_addr_wrap : dat_req_addr_sum[13 -1:0]; //get the adress sends to cbuf
assign {mon_dat_req_addr_minus1,dat_req_addr_minus1} = dat_req_addr_w-1'b1;
assign is_dat_req_addr_minus1_wrap = (dat_req_addr_minus1 >= {data_bank, {9{1'b0}}}); //only one case: 0-1=ffff would introduce wrap  
assign dat_req_addr_minus1_wrap = {data_bank, {9{1'b1}}};
assign dat_req_addr_minus1_real = is_dat_req_addr_minus1_wrap ? dat_req_addr_minus1_wrap : dat_req_addr_minus1;
assign sc2buf_dat_rd_en_w = dat_req_valid_d1 & ((dat_req_addr_last != dat_req_addr_w) | pixel_force_fetch_d1);
assign dat_req_addr_last = (dat_req_sub_h_d1 == 2'h0) ? dat_req_sub_h_0_addr :
                           (dat_req_sub_h_d1 == 2'h1) ? dat_req_sub_h_1_addr :
                           (dat_req_sub_h_d1 == 2'h2) ? dat_req_sub_h_2_addr :
                           dat_req_sub_h_3_addr;
assign dat_req_sub_h_0_addr_en = layer_st | ((dat_req_valid_d1 | dat_req_dummy_d1) & (dat_req_sub_h_d1 == 2'h0));
assign dat_req_sub_h_1_addr_en = layer_st | ((dat_req_valid_d1 | dat_req_dummy_d1) & (dat_req_sub_h_d1 == 2'h1));
assign dat_req_sub_h_2_addr_en = layer_st | ((dat_req_valid_d1 | dat_req_dummy_d1) & (dat_req_sub_h_d1 == 2'h2));
assign dat_req_sub_h_3_addr_en = layer_st | ((dat_req_valid_d1 | dat_req_dummy_d1) & (dat_req_sub_h_d1 == 2'h3));

wire [13 -1:0] sc2buf_dat_rd_addr_w;
assign sc2buf_dat_rd_addr_w = dat_req_addr_w;
//: my $kk=13;
//: &eperl::flop("-nodeclare   -rval \"{${kk}{1'b1}}\"  -en \"dat_req_sub_h_0_addr_en\" -d \"dat_req_addr_w\" -q dat_req_sub_h_0_addr");
//: &eperl::flop("-nodeclare   -rval \"{${kk}{1'b1}}\"  -en \"dat_req_sub_h_1_addr_en\" -d \"dat_req_addr_w\" -q dat_req_sub_h_1_addr");
//: &eperl::flop("-nodeclare   -rval \"{${kk}{1'b1}}\"  -en \"dat_req_sub_h_2_addr_en\" -d \"dat_req_addr_w\" -q dat_req_sub_h_2_addr");
//: &eperl::flop("-nodeclare   -rval \"{${kk}{1'b1}}\"  -en \"dat_req_sub_h_3_addr_en\" -d \"dat_req_addr_w\" -q dat_req_sub_h_3_addr");
//: my $kk=13;
//: &eperl::flop("-nodeclare   -rval \"1'b0\"   -d \"sc2buf_dat_rd_en_w\" -q sc2buf_dat_rd_en");
//: &eperl::flop("-nodeclare   -rval \"{${kk}{1'b1}}\"  -en \"layer_st | sc2buf_dat_rd_en_w\" -d \"sc2buf_dat_rd_addr_w\" -q sc2buf_dat_rd_addr");
//: &eperl::flop("-nodeclare   -rval \"{${kk}{1'b1}}\"  -en \"layer_st | sc2buf_dat_rd_en_w\" -d \"sc2buf_dat_rd_next1_addr_w\" -q sc2buf_dat_rd_next1_addr");
//: &eperl::flop("-nodeclare   -rval \"1'b0\"   -d \"dat_pipe_valid_d1\" -q dat_pipe_valid_d2");
//: &eperl::flop("-nodeclare   -rval \"1'b0\"   -d \"dat_exec_valid_d1\" -q dat_exec_valid_d2");
//: &eperl::flop("-nodeclare   -rval \"{2{1'b0}}\"  -en \"dat_exec_valid_d1\" -d \"dat_req_sub_w_d1\" -q dat_req_sub_w_d2");
//: &eperl::flop("-nodeclare   -rval \"{2{1'b0}}\"  -en \"dat_exec_valid_d1\" -d \"dat_req_sub_h_d1\" -q dat_req_sub_h_d2");
//: &eperl::flop("-nodeclare   -rval \"1'b0\"  -en \"dat_exec_valid_d1\" -d \"dat_req_sub_c_d1\" -q dat_req_sub_c_d2");
//: &eperl::flop("-nodeclare   -rval \"1'b0\"  -en \"dat_exec_valid_d1\" -d \"dat_req_ch_end_d1\" -q dat_req_ch_end_d2");
//: &eperl::flop("-nodeclare   -rval \"{8{1'b0}}\"  -en \"dat_exec_valid_d1\" -d \"dat_req_bytes_d1\" -q dat_req_bytes_d2");
//: &eperl::flop("-nodeclare   -rval \"1'b0\"  -en \"dat_exec_valid_d1\" -d \"dat_req_dummy_d1\" -q dat_req_dummy_d2");
//: &eperl::flop("-nodeclare   -rval \"{2{1'b0}}\"  -en \"dat_exec_valid_d1\" -d \"dat_req_cur_sub_h_d1\" -q dat_req_cur_sub_h_d2");
//: &eperl::flop("-nodeclare   -rval \"1'b0\"  -en \"dat_exec_valid_d1\" -d \"dat_req_sub_w_st_d1\" -q dat_req_sub_w_st_d2");
//: &eperl::flop("-nodeclare   -rval \"1'b0\"  -en \"dat_exec_valid_d1\" -d \"dat_req_rls_d1\" -q dat_req_rls_d2");
//: &eperl::flop("-nodeclare   -rval \"{9{1'b0}}\"  -en \"dat_exec_valid_d1\" -d \"dat_req_flag_d1\" -q dat_req_flag_d2");
//| eperl: generated_beg (DO NOT EDIT BELOW)
always @(posedge nvdla_core_clk) begin
   if (!nvdla_core_rstn) begin
       dat_req_sub_h_0_addr <= {13{1'b1}};
   end else begin
       if ((dat_req_sub_h_0_addr_en) == 1'b1) begin
           dat_req_sub_h_0_addr <= dat_req_addr_w;
       // VCS coverage off
       end else if ((dat_req_sub_h_0_addr_en) == 1'b0) begin
       end else begin
           dat_req_sub_h_0_addr <= 'bx;
       // VCS coverage on
       end
   end
end
always @(posedge nvdla_core_clk) begin
   if (!nvdla_core_rstn) begin
       dat_req_sub_h_1_addr <= {13{1'b1}};
   end else begin
       if ((dat_req_sub_h_1_addr_en) == 1'b1) begin
           dat_req_sub_h_1_addr <= dat_req_addr_w;
       // VCS coverage off
       end else if ((dat_req_sub_h_1_addr_en) == 1'b0) begin
       end else begin
           dat_req_sub_h_1_addr <= 'bx;
       // VCS coverage on
       end
   end
end
always @(posedge nvdla_core_clk) begin
   if (!nvdla_core_rstn) begin
       dat_req_sub_h_2_addr <= {13{1'b1}};
   end else begin
       if ((dat_req_sub_h_2_addr_en) == 1'b1) begin
           dat_req_sub_h_2_addr <= dat_req_addr_w;
       // VCS coverage off
       end else if ((dat_req_sub_h_2_addr_en) == 1'b0) begin
       end else begin
           dat_req_sub_h_2_addr <= 'bx;
       // VCS coverage on
       end
   end
end
always @(posedge nvdla_core_clk) begin
   if (!nvdla_core_rstn) begin
       dat_req_sub_h_3_addr <= {13{1'b1}};
   end else begin
       if ((dat_req_sub_h_3_addr_en) == 1'b1) begin
           dat_req_sub_h_3_addr <= dat_req_addr_w;
       // VCS coverage off
       end else if ((dat_req_sub_h_3_addr_en) == 1'b0) begin
       end else begin
           dat_req_sub_h_3_addr <= 'bx;
       // VCS coverage on
       end
   end
end
always @(posedge nvdla_core_clk) begin
   if (!nvdla_core_rstn) begin
       sc2buf_dat_rd_en <= 1'b0;
   end else begin
       sc2buf_dat_rd_en <= sc2buf_dat_rd_en_w;
   end
end
always @(posedge nvdla_core_clk) begin
   if (!nvdla_core_rstn) begin
       sc2buf_dat_rd_addr <= {13{1'b1}};
   end else begin
       if ((layer_st | sc2buf_dat_rd_en_w) == 1'b1) begin
           sc2buf_dat_rd_addr <= sc2buf_dat_rd_addr_w;
       // VCS coverage off
       end else if ((layer_st | sc2buf_dat_rd_en_w) == 1'b0) begin
       end else begin
           sc2buf_dat_rd_addr <= 'bx;
       // VCS coverage on
       end
   end
end
always @(posedge nvdla_core_clk) begin
   if (!nvdla_core_rstn) begin
       dat_pipe_valid_d2 <= 1'b0;
   end else begin
       dat_pipe_valid_d2 <= dat_pipe_valid_d1;
   end
end
always @(posedge nvdla_core_clk) begin
   if (!nvdla_core_rstn) begin
       dat_exec_valid_d2 <= 1'b0;
   end else begin
       dat_exec_valid_d2 <= dat_exec_valid_d1;
   end
end
always @(posedge nvdla_core_clk) begin
   if (!nvdla_core_rstn) begin
       dat_req_sub_w_d2 <= {2{1'b0}};
   end else begin
       if ((dat_exec_valid_d1) == 1'b1) begin
           dat_req_sub_w_d2 <= dat_req_sub_w_d1;
       // VCS coverage off
       end else if ((dat_exec_valid_d1) == 1'b0) begin
       end else begin
           dat_req_sub_w_d2 <= 'bx;
       // VCS coverage on
       end
   end
end
always @(posedge nvdla_core_clk) begin
   if (!nvdla_core_rstn) begin
       dat_req_sub_h_d2 <= {2{1'b0}};
   end else begin
       if ((dat_exec_valid_d1) == 1'b1) begin
           dat_req_sub_h_d2 <= dat_req_sub_h_d1;
       // VCS coverage off
       end else if ((dat_exec_valid_d1) == 1'b0) begin
       end else begin
           dat_req_sub_h_d2 <= 'bx;
       // VCS coverage on
       end
   end
end
always @(posedge nvdla_core_clk) begin
   if (!nvdla_core_rstn) begin
       dat_req_sub_c_d2 <= 1'b0;
   end else begin
       if ((dat_exec_valid_d1) == 1'b1) begin
           dat_req_sub_c_d2 <= dat_req_sub_c_d1;
       // VCS coverage off
       end else if ((dat_exec_valid_d1) == 1'b0) begin
       end else begin
           dat_req_sub_c_d2 <= 'bx;
       // VCS coverage on
       end
   end
end
always @(posedge nvdla_core_clk) begin
   if (!nvdla_core_rstn) begin
       dat_req_ch_end_d2 <= 1'b0;
   end else begin
       if ((dat_exec_valid_d1) == 1'b1) begin
           dat_req_ch_end_d2 <= dat_req_ch_end_d1;
       // VCS coverage off
       end else if ((dat_exec_valid_d1) == 1'b0) begin
       end else begin
           dat_req_ch_end_d2 <= 'bx;
       // VCS coverage on
       end
   end
end
always @(posedge nvdla_core_clk) begin
   if (!nvdla_core_rstn) begin
       dat_req_bytes_d2 <= {8{1'b0}};
   end else begin
       if ((dat_exec_valid_d1) == 1'b1) begin
           dat_req_bytes_d2 <= dat_req_bytes_d1;
       // VCS coverage off
       end else if ((dat_exec_valid_d1) == 1'b0) begin
       end else begin
           dat_req_bytes_d2 <= 'bx;
       // VCS coverage on
       end
   end
end
always @(posedge nvdla_core_clk) begin
   if (!nvdla_core_rstn) begin
       dat_req_dummy_d2 <= 1'b0;
   end else begin
       if ((dat_exec_valid_d1) == 1'b1) begin
           dat_req_dummy_d2 <= dat_req_dummy_d1;
       // VCS coverage off
       end else if ((dat_exec_valid_d1) == 1'b0) begin
       end else begin
           dat_req_dummy_d2 <= 'bx;
       // VCS coverage on
       end
   end
end
always @(posedge nvdla_core_clk) begin
   if (!nvdla_core_rstn) begin
       dat_req_cur_sub_h_d2 <= {2{1'b0}};
   end else begin
       if ((dat_exec_valid_d1) == 1'b1) begin
           dat_req_cur_sub_h_d2 <= dat_req_cur_sub_h_d1;
       // VCS coverage off
       end else if ((dat_exec_valid_d1) == 1'b0) begin
       end else begin
           dat_req_cur_sub_h_d2 <= 'bx;
       // VCS coverage on
       end
   end
end
always @(posedge nvdla_core_clk) begin
   if (!nvdla_core_rstn) begin
       dat_req_sub_w_st_d2 <= 1'b0;
   end else begin
       if ((dat_exec_valid_d1) == 1'b1) begin
           dat_req_sub_w_st_d2 <= dat_req_sub_w_st_d1;
       // VCS coverage off
       end else if ((dat_exec_valid_d1) == 1'b0) begin
       end else begin
           dat_req_sub_w_st_d2 <= 'bx;
       // VCS coverage on
       end
   end
end
always @(posedge nvdla_core_clk) begin
   if (!nvdla_core_rstn) begin
       dat_req_rls_d2 <= 1'b0;
   end else begin
       if ((dat_exec_valid_d1) == 1'b1) begin
           dat_req_rls_d2 <= dat_req_rls_d1;
       // VCS coverage off
       end else if ((dat_exec_valid_d1) == 1'b0) begin
       end else begin
           dat_req_rls_d2 <= 'bx;
       // VCS coverage on
       end
   end
end
always @(posedge nvdla_core_clk) begin
   if (!nvdla_core_rstn) begin
       dat_req_flag_d2 <= {9{1'b0}};
   end else begin
       if ((dat_exec_valid_d1) == 1'b1) begin
           dat_req_flag_d2 <= dat_req_flag_d1;
       // VCS coverage off
       end else if ((dat_exec_valid_d1) == 1'b0) begin
       end else begin
           dat_req_flag_d2 <= 'bx;
       // VCS coverage on
       end
   end
end

//| eperl: generated_end (DO NOT EDIT ABOVE)
//////////////////////////////////////////////////////////////
///// sideband pipeline                                  /////
//////////////////////////////////////////////////////////////
assign dat_req_pipe_pvld = dat_pipe_valid_d2;
assign dat_req_pipe_sub_w = dat_req_sub_w_d2;
assign dat_req_pipe_sub_h = dat_req_sub_h_d2;
assign dat_req_pipe_sub_c = dat_req_sub_c_d2;
assign dat_req_pipe_ch_end = dat_req_ch_end_d2;
assign dat_req_pipe_bytes = dat_req_bytes_d2;
assign dat_req_pipe_dummy = dat_req_dummy_d2;
assign dat_req_pipe_cur_sub_h = dat_req_cur_sub_h_d2;
assign dat_req_pipe_sub_w_st = dat_req_sub_w_st_d2;
assign dat_req_pipe_rls = dat_req_rls_d2;
assign dat_req_pipe_flag = dat_req_flag_d2;
assign dat_req_exec_pvld = dat_exec_valid_d2;
assign dat_req_exec_dummy = dat_req_dummy_d2;
assign dat_req_exec_sub_h = dat_req_sub_h_d2;
// PKT_PACK_WIRE( csc_dat_req_pkg , dat_req_pipe_ , dat_req_pipe_pd )
assign dat_req_pipe_pd[1:0] = dat_req_pipe_sub_w[1:0];
assign dat_req_pipe_pd[3:2] = dat_req_pipe_sub_h[1:0];
assign dat_req_pipe_pd[4] = dat_req_pipe_sub_c ;
assign dat_req_pipe_pd[5] = dat_req_pipe_ch_end ;
assign dat_req_pipe_pd[6] = 1'b0 ;
assign dat_req_pipe_pd[14:7] = dat_req_pipe_bytes[7:0];
assign dat_req_pipe_pd[16:15] = dat_req_pipe_cur_sub_h[1:0];
assign dat_req_pipe_pd[17] = dat_req_pipe_dummy ;
assign dat_req_pipe_pd[18] = dat_req_pipe_sub_w_st ;
assign dat_req_pipe_pd[19] = dat_req_pipe_rls ;
assign dat_req_pipe_pd[28:20] = dat_req_pipe_flag[8:0];
//add latency for data request contorl signal
//: my $pipe_depth = 6;
//: my $i;
//: my $j;
//: if($pipe_depth == 0) {
//: print "assign dat_rsp_pipe_pvld = dat_req_pipe_pvld;\n";
//: print "assign dat_rsp_pipe_pd = dat_req_pipe_pd;\n";
//: print "assign dat_rsp_exec_pvld = dat_req_exec_pvld;\n";
//: print "assign dat_rsp_exec_dummy = dat_req_exec_dummy;\n";
//: print "assign dat_rsp_exec_sub_h = dat_req_exec_sub_h;\n\n";
//: } else {
//: print "assign dat_rsp_pipe_pvld_d0 = dat_req_pipe_pvld;\n";
//: print "assign dat_rsp_pipe_pd_d0 = dat_req_pipe_pd;\n";
//: print "assign dat_rsp_exec_pvld_d0 = dat_req_exec_pvld;\n";
//: print "assign dat_rsp_exec_dummy_d0 = dat_req_exec_dummy;\n";
//: print "assign dat_rsp_exec_sub_h_d0 = dat_req_exec_sub_h;\n\n";
//: for($i = 0; $i < $pipe_depth; $i ++) {
//: $j = $i + 1;
//: &eperl::flop("-wid 1   -rval \"1'b0\"       -d \"dat_rsp_pipe_pvld_d${i}\"  -q dat_rsp_pipe_pvld_d${j}");
//: &eperl::flop("-wid 29  -rval \"{29{1'b0}}\" -en \"dat_rsp_pipe_pvld_d${i}\" -d \"dat_rsp_pipe_pd_d${i}\"    -q dat_rsp_pipe_pd_d${j}");
//: &eperl::flop("-wid 1   -rval \"1'b0\"       -d \"dat_rsp_exec_pvld_d${i}\"  -q dat_rsp_exec_pvld_d${j}");
//: &eperl::flop("-wid 1   -rval \"1'b0\"       -en \"dat_rsp_exec_pvld_d${i}\" -d \"dat_rsp_exec_dummy_d${i}\" -q dat_rsp_exec_dummy_d${j}");
//: &eperl::flop("-wid 2   -rval \"{2{1'b0}}\"  -en \"dat_rsp_exec_pvld_d${i}\" -d \"dat_rsp_exec_sub_h_d${i}\" -q dat_rsp_exec_sub_h_d${j}");
//: }
//: print "assign dat_rsp_pipe_pvld = dat_rsp_pipe_pvld_d${i};\n";
//: print "assign dat_rsp_pipe_pd = dat_rsp_pipe_pd_d${i};\n";
//: print "assign dat_rsp_exec_pvld = dat_rsp_exec_pvld_d${i};\n";
//: print "assign dat_rsp_exec_dummy = dat_rsp_exec_dummy_d${i};\n";
//: print "assign dat_rsp_exec_sub_h = dat_rsp_exec_sub_h_d${i};\n\n";
//: }
//| eperl: generated_beg (DO NOT EDIT BELOW)
assign dat_rsp_pipe_pvld_d0 = dat_req_pipe_pvld;
assign dat_rsp_pipe_pd_d0 = dat_req_pipe_pd;
assign dat_rsp_exec_pvld_d0 = dat_req_exec_pvld;
assign dat_rsp_exec_dummy_d0 = dat_req_exec_dummy;
assign dat_rsp_exec_sub_h_d0 = dat_req_exec_sub_h;

reg  dat_rsp_pipe_pvld_d1;
always @(posedge nvdla_core_clk) begin
   if (!nvdla_core_rstn) begin
       dat_rsp_pipe_pvld_d1 <= 1'b0;
   end else begin
       dat_rsp_pipe_pvld_d1 <= dat_rsp_pipe_pvld_d0;
   end
end
reg [28:0] dat_rsp_pipe_pd_d1;
always @(posedge nvdla_core_clk) begin
   if (!nvdla_core_rstn) begin
       dat_rsp_pipe_pd_d1 <= {29{1'b0}};
   end else begin
       if ((dat_rsp_pipe_pvld_d0) == 1'b1) begin
           dat_rsp_pipe_pd_d1 <= dat_rsp_pipe_pd_d0;
       // VCS coverage off
       end else if ((dat_rsp_pipe_pvld_d0) == 1'b0) begin
       end else begin
           dat_rsp_pipe_pd_d1 <= 'bx;
       // VCS coverage on
       end
   end
end
reg  dat_rsp_exec_pvld_d1;
always @(posedge nvdla_core_clk) begin
   if (!nvdla_core_rstn) begin
       dat_rsp_exec_pvld_d1 <= 1'b0;
   end else begin
       dat_rsp_exec_pvld_d1 <= dat_rsp_exec_pvld_d0;
   end
end
reg  dat_rsp_exec_dummy_d1;
always @(posedge nvdla_core_clk) begin
   if (!nvdla_core_rstn) begin
       dat_rsp_exec_dummy_d1 <= 1'b0;
   end else begin
       if ((dat_rsp_exec_pvld_d0) == 1'b1) begin
           dat_rsp_exec_dummy_d1 <= dat_rsp_exec_dummy_d0;
       // VCS coverage off
       end else if ((dat_rsp_exec_pvld_d0) == 1'b0) begin
       end else begin
           dat_rsp_exec_dummy_d1 <= 'bx;
       // VCS coverage on
       end
   end
end
reg [1:0] dat_rsp_exec_sub_h_d1;
always @(posedge nvdla_core_clk) begin
   if (!nvdla_core_rstn) begin
       dat_rsp_exec_sub_h_d1 <= {2{1'b0}};
   end else begin
       if ((dat_rsp_exec_pvld_d0) == 1'b1) begin
           dat_rsp_exec_sub_h_d1 <= dat_rsp_exec_sub_h_d0;
       // VCS coverage off
       end else if ((dat_rsp_exec_pvld_d0) == 1'b0) begin
       end else begin
           dat_rsp_exec_sub_h_d1 <= 'bx;
       // VCS coverage on
       end
   end
end
reg  dat_rsp_pipe_pvld_d2;
always @(posedge nvdla_core_clk) begin
   if (!nvdla_core_rstn) begin
       dat_rsp_pipe_pvld_d2 <= 1'b0;
   end else begin
       dat_rsp_pipe_pvld_d2 <= dat_rsp_pipe_pvld_d1;
   end
end
reg [28:0] dat_rsp_pipe_pd_d2;
always @(posedge nvdla_core_clk) begin
   if (!nvdla_core_rstn) begin
       dat_rsp_pipe_pd_d2 <= {29{1'b0}};
   end else begin
       if ((dat_rsp_pipe_pvld_d1) == 1'b1) begin
           dat_rsp_pipe_pd_d2 <= dat_rsp_pipe_pd_d1;
       // VCS coverage off
       end else if ((dat_rsp_pipe_pvld_d1) == 1'b0) begin
       end else begin
           dat_rsp_pipe_pd_d2 <= 'bx;
       // VCS coverage on
       end
   end
end
reg  dat_rsp_exec_pvld_d2;
always @(posedge nvdla_core_clk) begin
   if (!nvdla_core_rstn) begin
       dat_rsp_exec_pvld_d2 <= 1'b0;
   end else begin
       dat_rsp_exec_pvld_d2 <= dat_rsp_exec_pvld_d1;
   end
end
reg  dat_rsp_exec_dummy_d2;
always @(posedge nvdla_core_clk) begin
   if (!nvdla_core_rstn) begin
       dat_rsp_exec_dummy_d2 <= 1'b0;
   end else begin
       if ((dat_rsp_exec_pvld_d1) == 1'b1) begin
           dat_rsp_exec_dummy_d2 <= dat_rsp_exec_dummy_d1;
       // VCS coverage off
       end else if ((dat_rsp_exec_pvld_d1) == 1'b0) begin
       end else begin
           dat_rsp_exec_dummy_d2 <= 'bx;
       // VCS coverage on
       end
   end
end
reg [1:0] dat_rsp_exec_sub_h_d2;
always @(posedge nvdla_core_clk) begin
   if (!nvdla_core_rstn) begin
       dat_rsp_exec_sub_h_d2 <= {2{1'b0}};
   end else begin
       if ((dat_rsp_exec_pvld_d1) == 1'b1) begin
           dat_rsp_exec_sub_h_d2 <= dat_rsp_exec_sub_h_d1;
       // VCS coverage off
       end else if ((dat_rsp_exec_pvld_d1) == 1'b0) begin
       end else begin
           dat_rsp_exec_sub_h_d2 <= 'bx;
       // VCS coverage on
       end
   end
end
reg  dat_rsp_pipe_pvld_d3;
always @(posedge nvdla_core_clk) begin
   if (!nvdla_core_rstn) begin
       dat_rsp_pipe_pvld_d3 <= 1'b0;
   end else begin
       dat_rsp_pipe_pvld_d3 <= dat_rsp_pipe_pvld_d2;
   end
end
reg [28:0] dat_rsp_pipe_pd_d3;
always @(posedge nvdla_core_clk) begin
   if (!nvdla_core_rstn) begin
       dat_rsp_pipe_pd_d3 <= {29{1'b0}};
   end else begin
       if ((dat_rsp_pipe_pvld_d2) == 1'b1) begin
           dat_rsp_pipe_pd_d3 <= dat_rsp_pipe_pd_d2;
       // VCS coverage off
       end else if ((dat_rsp_pipe_pvld_d2) == 1'b0) begin
       end else begin
           dat_rsp_pipe_pd_d3 <= 'bx;
       // VCS coverage on
       end
   end
end
reg  dat_rsp_exec_pvld_d3;
always @(posedge nvdla_core_clk) begin
   if (!nvdla_core_rstn) begin
       dat_rsp_exec_pvld_d3 <= 1'b0;
   end else begin
       dat_rsp_exec_pvld_d3 <= dat_rsp_exec_pvld_d2;
   end
end
reg  dat_rsp_exec_dummy_d3;
always @(posedge nvdla_core_clk) begin
   if (!nvdla_core_rstn) begin
       dat_rsp_exec_dummy_d3 <= 1'b0;
   end else begin
       if ((dat_rsp_exec_pvld_d2) == 1'b1) begin
           dat_rsp_exec_dummy_d3 <= dat_rsp_exec_dummy_d2;
       // VCS coverage off
       end else if ((dat_rsp_exec_pvld_d2) == 1'b0) begin
       end else begin
           dat_rsp_exec_dummy_d3 <= 'bx;
       // VCS coverage on
       end
   end
end
reg [1:0] dat_rsp_exec_sub_h_d3;
always @(posedge nvdla_core_clk) begin
   if (!nvdla_core_rstn) begin
       dat_rsp_exec_sub_h_d3 <= {2{1'b0}};
   end else begin
       if ((dat_rsp_exec_pvld_d2) == 1'b1) begin
           dat_rsp_exec_sub_h_d3 <= dat_rsp_exec_sub_h_d2;
       // VCS coverage off
       end else if ((dat_rsp_exec_pvld_d2) == 1'b0) begin
       end else begin
           dat_rsp_exec_sub_h_d3 <= 'bx;
       // VCS coverage on
       end
   end
end
reg  dat_rsp_pipe_pvld_d4;
always @(posedge nvdla_core_clk) begin
   if (!nvdla_core_rstn) begin
       dat_rsp_pipe_pvld_d4 <= 1'b0;
   end else begin
       dat_rsp_pipe_pvld_d4 <= dat_rsp_pipe_pvld_d3;
   end
end
reg [28:0] dat_rsp_pipe_pd_d4;
always @(posedge nvdla_core_clk) begin
   if (!nvdla_core_rstn) begin
       dat_rsp_pipe_pd_d4 <= {29{1'b0}};
   end else begin
       if ((dat_rsp_pipe_pvld_d3) == 1'b1) begin
           dat_rsp_pipe_pd_d4 <= dat_rsp_pipe_pd_d3;
       // VCS coverage off
       end else if ((dat_rsp_pipe_pvld_d3) == 1'b0) begin
       end else begin
           dat_rsp_pipe_pd_d4 <= 'bx;
       // VCS coverage on
       end
   end
end
reg  dat_rsp_exec_pvld_d4;
always @(posedge nvdla_core_clk) begin
   if (!nvdla_core_rstn) begin
       dat_rsp_exec_pvld_d4 <= 1'b0;
   end else begin
       dat_rsp_exec_pvld_d4 <= dat_rsp_exec_pvld_d3;
   end
end
reg  dat_rsp_exec_dummy_d4;
always @(posedge nvdla_core_clk) begin
   if (!nvdla_core_rstn) begin
       dat_rsp_exec_dummy_d4 <= 1'b0;
   end else begin
       if ((dat_rsp_exec_pvld_d3) == 1'b1) begin
           dat_rsp_exec_dummy_d4 <= dat_rsp_exec_dummy_d3;
       // VCS coverage off
       end else if ((dat_rsp_exec_pvld_d3) == 1'b0) begin
       end else begin
           dat_rsp_exec_dummy_d4 <= 'bx;
       // VCS coverage on
       end
   end
end
reg [1:0] dat_rsp_exec_sub_h_d4;
always @(posedge nvdla_core_clk) begin
   if (!nvdla_core_rstn) begin
       dat_rsp_exec_sub_h_d4 <= {2{1'b0}};
   end else begin
       if ((dat_rsp_exec_pvld_d3) == 1'b1) begin
           dat_rsp_exec_sub_h_d4 <= dat_rsp_exec_sub_h_d3;
       // VCS coverage off
       end else if ((dat_rsp_exec_pvld_d3) == 1'b0) begin
       end else begin
           dat_rsp_exec_sub_h_d4 <= 'bx;
       // VCS coverage on
       end
   end
end
reg  dat_rsp_pipe_pvld_d5;
always @(posedge nvdla_core_clk) begin
   if (!nvdla_core_rstn) begin
       dat_rsp_pipe_pvld_d5 <= 1'b0;
   end else begin
       dat_rsp_pipe_pvld_d5 <= dat_rsp_pipe_pvld_d4;
   end
end
reg [28:0] dat_rsp_pipe_pd_d5;
always @(posedge nvdla_core_clk) begin
   if (!nvdla_core_rstn) begin
       dat_rsp_pipe_pd_d5 <= {29{1'b0}};
   end else begin
       if ((dat_rsp_pipe_pvld_d4) == 1'b1) begin
           dat_rsp_pipe_pd_d5 <= dat_rsp_pipe_pd_d4;
       // VCS coverage off
       end else if ((dat_rsp_pipe_pvld_d4) == 1'b0) begin
       end else begin
           dat_rsp_pipe_pd_d5 <= 'bx;
       // VCS coverage on
       end
   end
end
reg  dat_rsp_exec_pvld_d5;
always @(posedge nvdla_core_clk) begin
   if (!nvdla_core_rstn) begin
       dat_rsp_exec_pvld_d5 <= 1'b0;
   end else begin
       dat_rsp_exec_pvld_d5 <= dat_rsp_exec_pvld_d4;
   end
end
reg  dat_rsp_exec_dummy_d5;
always @(posedge nvdla_core_clk) begin
   if (!nvdla_core_rstn) begin
       dat_rsp_exec_dummy_d5 <= 1'b0;
   end else begin
       if ((dat_rsp_exec_pvld_d4) == 1'b1) begin
           dat_rsp_exec_dummy_d5 <= dat_rsp_exec_dummy_d4;
       // VCS coverage off
       end else if ((dat_rsp_exec_pvld_d4) == 1'b0) begin
       end else begin
           dat_rsp_exec_dummy_d5 <= 'bx;
       // VCS coverage on
       end
   end
end
reg [1:0] dat_rsp_exec_sub_h_d5;
always @(posedge nvdla_core_clk) begin
   if (!nvdla_core_rstn) begin
       dat_rsp_exec_sub_h_d5 <= {2{1'b0}};
   end else begin
       if ((dat_rsp_exec_pvld_d4) == 1'b1) begin
           dat_rsp_exec_sub_h_d5 <= dat_rsp_exec_sub_h_d4;
       // VCS coverage off
       end else if ((dat_rsp_exec_pvld_d4) == 1'b0) begin
       end else begin
           dat_rsp_exec_sub_h_d5 <= 'bx;
       // VCS coverage on
       end
   end
end
reg  dat_rsp_pipe_pvld_d6;
always @(posedge nvdla_core_clk) begin
   if (!nvdla_core_rstn) begin
       dat_rsp_pipe_pvld_d6 <= 1'b0;
   end else begin
       dat_rsp_pipe_pvld_d6 <= dat_rsp_pipe_pvld_d5;
   end
end
reg [28:0] dat_rsp_pipe_pd_d6;
always @(posedge nvdla_core_clk) begin
   if (!nvdla_core_rstn) begin
       dat_rsp_pipe_pd_d6 <= {29{1'b0}};
   end else begin
       if ((dat_rsp_pipe_pvld_d5) == 1'b1) begin
           dat_rsp_pipe_pd_d6 <= dat_rsp_pipe_pd_d5;
       // VCS coverage off
       end else if ((dat_rsp_pipe_pvld_d5) == 1'b0) begin
       end else begin
           dat_rsp_pipe_pd_d6 <= 'bx;
       // VCS coverage on
       end
   end
end
reg  dat_rsp_exec_pvld_d6;
always @(posedge nvdla_core_clk) begin
   if (!nvdla_core_rstn) begin
       dat_rsp_exec_pvld_d6 <= 1'b0;
   end else begin
       dat_rsp_exec_pvld_d6 <= dat_rsp_exec_pvld_d5;
   end
end
reg  dat_rsp_exec_dummy_d6;
always @(posedge nvdla_core_clk) begin
   if (!nvdla_core_rstn) begin
       dat_rsp_exec_dummy_d6 <= 1'b0;
   end else begin
       if ((dat_rsp_exec_pvld_d5) == 1'b1) begin
           dat_rsp_exec_dummy_d6 <= dat_rsp_exec_dummy_d5;
       // VCS coverage off
       end else if ((dat_rsp_exec_pvld_d5) == 1'b0) begin
       end else begin
           dat_rsp_exec_dummy_d6 <= 'bx;
       // VCS coverage on
       end
   end
end
reg [1:0] dat_rsp_exec_sub_h_d6;
always @(posedge nvdla_core_clk) begin
   if (!nvdla_core_rstn) begin
       dat_rsp_exec_sub_h_d6 <= {2{1'b0}};
   end else begin
       if ((dat_rsp_exec_pvld_d5) == 1'b1) begin
           dat_rsp_exec_sub_h_d6 <= dat_rsp_exec_sub_h_d5;
       // VCS coverage off
       end else if ((dat_rsp_exec_pvld_d5) == 1'b0) begin
       end else begin
           dat_rsp_exec_sub_h_d6 <= 'bx;
       // VCS coverage on
       end
   end
end
assign dat_rsp_pipe_pvld = dat_rsp_pipe_pvld_d6;
assign dat_rsp_pipe_pd = dat_rsp_pipe_pd_d6;
assign dat_rsp_exec_pvld = dat_rsp_exec_pvld_d6;
assign dat_rsp_exec_dummy = dat_rsp_exec_dummy_d6;
assign dat_rsp_exec_sub_h = dat_rsp_exec_sub_h_d6;


//| eperl: generated_end (DO NOT EDIT ABOVE)
// PKT_UNPACK_WIRE( csc_dat_req_pkg , dat_rsp_pipe_ , dat_rsp_pipe_pd )
assign dat_rsp_pipe_sub_w[1:0] = dat_rsp_pipe_pd[1:0];
assign dat_rsp_pipe_sub_h[1:0] = dat_rsp_pipe_pd[3:2];
assign dat_rsp_pipe_sub_c = dat_rsp_pipe_pd[4];
assign dat_rsp_pipe_ch_end = dat_rsp_pipe_pd[5];
assign dat_rsp_pipe_bytes[7:0] = dat_rsp_pipe_pd[14:7];
assign dat_rsp_pipe_cur_sub_h[1:0] = dat_rsp_pipe_pd[16:15];
assign dat_rsp_pipe_dummy = dat_rsp_pipe_pd[17];
assign dat_rsp_pipe_sub_w_st = dat_rsp_pipe_pd[18];
assign dat_rsp_pipe_rls = dat_rsp_pipe_pd[19];
assign dat_rsp_pipe_flag[8:0] = dat_rsp_pipe_pd[28:20];
//////////////////////////////////////////////////////////////
///// dl data cache                                      /////
//////////////////////////////////////////////////////////////
assign dat_l0c0_en = (sc2buf_dat_rd_valid & (dat_rsp_exec_sub_h == 2'h0));
assign dat_l1c0_en = (sc2buf_dat_rd_valid & (dat_rsp_exec_sub_h == 2'h1));
assign dat_l2c0_en = (sc2buf_dat_rd_valid & (dat_rsp_exec_sub_h == 2'h2));
assign dat_l3c0_en = (sc2buf_dat_rd_valid & (dat_rsp_exec_sub_h == 2'h3));
//only winograd/image
assign dat_l0c1_en = (dat_wg_adv & ~dat_rsp_exec_sub_h[0]) | (is_img_d1[12] & dat_l0c0_en & ~dat_l0c0_dummy);
assign dat_l1c1_en = (dat_wg_adv & dat_rsp_exec_sub_h[0]) | (is_img_d1[13] & dat_l1c0_en & ~dat_l1c0_dummy);
assign dat_l2c1_en = (is_img_d1[15] & dat_l2c0_en & ~dat_l2c0_dummy);
assign dat_l3c1_en = (is_img_d1[16] & dat_l3c0_en & ~dat_l3c0_dummy);
assign dat_dummy_l0_en = dat_rsp_exec_pvld & dat_rsp_exec_dummy & (dat_rsp_exec_sub_h == 2'h0);
assign dat_dummy_l1_en = dat_rsp_exec_pvld & dat_rsp_exec_dummy & (dat_rsp_exec_sub_h == 2'h1);
assign dat_dummy_l2_en = dat_rsp_exec_pvld & dat_rsp_exec_dummy & (dat_rsp_exec_sub_h == 2'h2);
assign dat_dummy_l3_en = dat_rsp_exec_pvld & dat_rsp_exec_dummy & (dat_rsp_exec_sub_h == 2'h3);
assign dat_wg_adv = sc2buf_dat_rd_valid & is_winograd_d1[11] & ~dat_rsp_pipe_sub_w_st;
assign dat_l0c0_dummy_w = dat_l0c0_en ? 1'b0 : dat_dummy_l0_en ? 1'b1 : dat_l0c0_dummy;
assign dat_l1c0_dummy_w = dat_l1c0_en ? 1'b0 : dat_dummy_l1_en ? 1'b1 : dat_l1c0_dummy;
assign dat_l2c0_dummy_w = dat_l2c0_en ? 1'b0 : dat_dummy_l2_en ? 1'b1 : dat_l2c0_dummy;
assign dat_l3c0_dummy_w = dat_l3c0_en ? 1'b0 : dat_dummy_l3_en ? 1'b1 : dat_l3c0_dummy;
assign dat_l0c1_dummy_w = dat_l0c1_en ? 1'b0 : (dat_l0_set) ? dat_l0c0_dummy : dat_l0c1_dummy;
assign dat_l1c1_dummy_w = dat_l1c1_en ? 1'b0 : (dat_l1_set & (|sub_h_total_g2)) ? dat_l1c0_dummy : dat_l1c1_dummy;
assign dat_l2c1_dummy_w = dat_l2c1_en ? 1'b0 : (dat_l2_set & sub_h_total_g2[1]) ? dat_l2c0_dummy : dat_l2c1_dummy;
assign dat_l3c1_dummy_w = dat_l3c1_en ? 1'b0 : (dat_l3_set & sub_h_total_g2[1]) ? dat_l3c0_dummy : dat_l3c1_dummy;
assign dat_l0_set = dat_l0c0_en | dat_dummy_l0_en;
assign dat_l1_set = dat_l1c0_en | dat_dummy_l1_en;
assign dat_l2_set = dat_l2c0_en | dat_dummy_l2_en;
assign dat_l3_set = dat_l3c0_en | dat_dummy_l3_en;
//: &eperl::flop("-nodeclare   -rval \"1'b1\"   -d \"dat_l0c0_dummy_w\" -q dat_l0c0_dummy");
//: &eperl::flop("-nodeclare   -rval \"1'b1\"   -d \"dat_l1c0_dummy_w\" -q dat_l1c0_dummy");
//: &eperl::flop("-nodeclare   -rval \"1'b1\"   -d \"dat_l2c0_dummy_w\" -q dat_l2c0_dummy");
//: &eperl::flop("-nodeclare   -rval \"1'b1\"   -d \"dat_l3c0_dummy_w\" -q dat_l3c0_dummy");
//: &eperl::flop("-nodeclare   -rval \"1'b1\"   -d \"dat_l0c1_dummy_w\" -q dat_l0c1_dummy");
//: &eperl::flop("-nodeclare   -rval \"1'b1\"   -d \"dat_l1c1_dummy_w\" -q dat_l1c1_dummy");
//: &eperl::flop("-nodeclare   -rval \"1'b1\"   -d \"dat_l2c1_dummy_w\" -q dat_l2c1_dummy");
//: &eperl::flop("-nodeclare   -rval \"1'b1\"   -d \"dat_l3c1_dummy_w\" -q dat_l3c1_dummy");
//: &eperl::flop("-nodeclare  -norst -en \"dat_l0c0_en\" -d \"sc2buf_dat_rd_data\" -q dat_l0c0 ");
//: &eperl::flop("-nodeclare  -norst -en \"dat_l1c0_en\" -d \"sc2buf_dat_rd_data\" -q dat_l1c0 ");
//: &eperl::flop("-nodeclare  -norst -en \"dat_l2c0_en\" -d \"sc2buf_dat_rd_data\" -q dat_l2c0 ");
//: &eperl::flop("-nodeclare  -norst -en \"dat_l3c0_en\" -d \"sc2buf_dat_rd_data\" -q dat_l3c0 ");
//: &eperl::flop("-nodeclare  -norst -en \"dat_l0c1_en\" -d dat_l0c0 -q dat_l0c1 ");
//: &eperl::flop("-nodeclare  -norst -en \"dat_l1c1_en\" -d dat_l1c0 -q dat_l1c1 ");
//: &eperl::flop("-nodeclare  -norst -en \"dat_l2c1_en\" -d dat_l2c0 -q dat_l2c1 ");
//: &eperl::flop("-nodeclare  -norst -en \"dat_l3c1_en\" -d dat_l3c0 -q dat_l3c1 ");
//| eperl: generated_beg (DO NOT EDIT BELOW)
always @(posedge nvdla_core_clk) begin
   if (!nvdla_core_rstn) begin
       dat_l0c0_dummy <= 1'b1;
   end else begin
       dat_l0c0_dummy <= dat_l0c0_dummy_w;
   end
end
always @(posedge nvdla_core_clk) begin
   if (!nvdla_core_rstn) begin
       dat_l1c0_dummy <= 1'b1;
   end else begin
       dat_l1c0_dummy <= dat_l1c0_dummy_w;
   end
end
always @(posedge nvdla_core_clk) begin
   if (!nvdla_core_rstn) begin
       dat_l2c0_dummy <= 1'b1;
   end else begin
       dat_l2c0_dummy <= dat_l2c0_dummy_w;
   end
end
always @(posedge nvdla_core_clk) begin
   if (!nvdla_core_rstn) begin
       dat_l3c0_dummy <= 1'b1;
   end else begin
       dat_l3c0_dummy <= dat_l3c0_dummy_w;
   end
end
always @(posedge nvdla_core_clk) begin
   if (!nvdla_core_rstn) begin
       dat_l0c1_dummy <= 1'b1;
   end else begin
       dat_l0c1_dummy <= dat_l0c1_dummy_w;
   end
end
always @(posedge nvdla_core_clk) begin
   if (!nvdla_core_rstn) begin
       dat_l1c1_dummy <= 1'b1;
   end else begin
       dat_l1c1_dummy <= dat_l1c1_dummy_w;
   end
end
always @(posedge nvdla_core_clk) begin
   if (!nvdla_core_rstn) begin
       dat_l2c1_dummy <= 1'b1;
   end else begin
       dat_l2c1_dummy <= dat_l2c1_dummy_w;
   end
end
always @(posedge nvdla_core_clk) begin
   if (!nvdla_core_rstn) begin
       dat_l3c1_dummy <= 1'b1;
   end else begin
       dat_l3c1_dummy <= dat_l3c1_dummy_w;
   end
end
always @(posedge nvdla_core_clk) begin
       if ((dat_l0c0_en) == 1'b1) begin
           dat_l0c0 <= sc2buf_dat_rd_data;
       // VCS coverage off
       end else if ((dat_l0c0_en) == 1'b0) begin
       end else begin
           dat_l0c0 <= 'bx;
       // VCS coverage on
       end
end
always @(posedge nvdla_core_clk) begin
       if ((dat_l1c0_en) == 1'b1) begin
           dat_l1c0 <= sc2buf_dat_rd_data;
       // VCS coverage off
       end else if ((dat_l1c0_en) == 1'b0) begin
       end else begin
           dat_l1c0 <= 'bx;
       // VCS coverage on
       end
end
always @(posedge nvdla_core_clk) begin
       if ((dat_l2c0_en) == 1'b1) begin
           dat_l2c0 <= sc2buf_dat_rd_data;
       // VCS coverage off
       end else if ((dat_l2c0_en) == 1'b0) begin
       end else begin
           dat_l2c0 <= 'bx;
       // VCS coverage on
       end
end
always @(posedge nvdla_core_clk) begin
       if ((dat_l3c0_en) == 1'b1) begin
           dat_l3c0 <= sc2buf_dat_rd_data;
       // VCS coverage off
       end else if ((dat_l3c0_en) == 1'b0) begin
       end else begin
           dat_l3c0 <= 'bx;
       // VCS coverage on
       end
end
always @(posedge nvdla_core_clk) begin
       if ((dat_l0c1_en) == 1'b1) begin
           dat_l0c1 <= dat_l0c0;
       // VCS coverage off
       end else if ((dat_l0c1_en) == 1'b0) begin
       end else begin
           dat_l0c1 <= 'bx;
       // VCS coverage on
       end
end
always @(posedge nvdla_core_clk) begin
       if ((dat_l1c1_en) == 1'b1) begin
           dat_l1c1 <= dat_l1c0;
       // VCS coverage off
       end else if ((dat_l1c1_en) == 1'b0) begin
       end else begin
           dat_l1c1 <= 'bx;
       // VCS coverage on
       end
end
always @(posedge nvdla_core_clk) begin
       if ((dat_l2c1_en) == 1'b1) begin
           dat_l2c1 <= dat_l2c0;
       // VCS coverage off
       end else if ((dat_l2c1_en) == 1'b0) begin
       end else begin
           dat_l2c1 <= 'bx;
       // VCS coverage on
       end
end
always @(posedge nvdla_core_clk) begin
       if ((dat_l3c1_en) == 1'b1) begin
           dat_l3c1 <= dat_l3c0;
       // VCS coverage off
       end else if ((dat_l3c1_en) == 1'b0) begin
       end else begin
           dat_l3c1 <= 'bx;
       // VCS coverage on
       end
end

//| eperl: generated_end (DO NOT EDIT ABOVE)
//////////////////////////////////////////////////////////////
///// response contorl                                   /////
//////////////////////////////////////////////////////////////
// PKT_PACK_WIRE( csc_dat_rsp_pkg , dat_rsp_pipe_ , dat_rsp_pd_d0 )
assign dat_rsp_pd_d0[1:0] = dat_rsp_pipe_sub_w[1:0];
assign dat_rsp_pd_d0[3:2] = dat_rsp_pipe_sub_h[1:0];
assign dat_rsp_pd_d0[4] = dat_rsp_pipe_sub_c ;
assign dat_rsp_pd_d0[5] = dat_rsp_pipe_ch_end ;
assign dat_rsp_pd_d0[6] = 1'b0 ;
assign dat_rsp_pd_d0[14:7] = dat_rsp_pipe_bytes[7:0];
assign dat_rsp_pd_d0[16:15] = dat_rsp_pipe_cur_sub_h[1:0];
assign dat_rsp_pd_d0[17] = dat_rsp_pipe_rls ;
assign dat_rsp_pd_d0[26:18] = dat_rsp_pipe_flag[8:0];
//add latency
//: my $delay_depth = 4;
//: my $i;
//: my $j;
//:
//: print "assign dat_rsp_pvld_d0 = dat_rsp_pipe_pvld;\n";
//: for($i = 0; $i < $delay_depth; $i ++) {
//: $j = $i + 1;
//: &eperl::flop("-nodeclare   -rval \"1'b0\"           -d \"dat_rsp_pvld_d${i}\"   -q dat_rsp_pvld_d${j}");
//: &eperl::flop("-nodeclare   -rval \"{27{1'b0}}\"     -en \"dat_rsp_pvld_d${i}\"  -d \"dat_rsp_pd_d${i}\" -q dat_rsp_pd_d${j}");
//: }
//| eperl: generated_beg (DO NOT EDIT BELOW)
assign dat_rsp_pvld_d0 = dat_rsp_pipe_pvld;
always @(posedge nvdla_core_clk) begin
   if (!nvdla_core_rstn) begin
       dat_rsp_pvld_d1 <= 1'b0;
   end else begin
       dat_rsp_pvld_d1 <= dat_rsp_pvld_d0;
   end
end
always @(posedge nvdla_core_clk) begin
   if (!nvdla_core_rstn) begin
       dat_rsp_pd_d1 <= {27{1'b0}};
   end else begin
       if ((dat_rsp_pvld_d0) == 1'b1) begin
           dat_rsp_pd_d1 <= dat_rsp_pd_d0;
       // VCS coverage off
       end else if ((dat_rsp_pvld_d0) == 1'b0) begin
       end else begin
           dat_rsp_pd_d1 <= 'bx;
       // VCS coverage on
       end
   end
end
always @(posedge nvdla_core_clk) begin
   if (!nvdla_core_rstn) begin
       dat_rsp_pvld_d2 <= 1'b0;
   end else begin
       dat_rsp_pvld_d2 <= dat_rsp_pvld_d1;
   end
end
always @(posedge nvdla_core_clk) begin
   if (!nvdla_core_rstn) begin
       dat_rsp_pd_d2 <= {27{1'b0}};
   end else begin
       if ((dat_rsp_pvld_d1) == 1'b1) begin
           dat_rsp_pd_d2 <= dat_rsp_pd_d1;
       // VCS coverage off
       end else if ((dat_rsp_pvld_d1) == 1'b0) begin
       end else begin
           dat_rsp_pd_d2 <= 'bx;
       // VCS coverage on
       end
   end
end
always @(posedge nvdla_core_clk) begin
   if (!nvdla_core_rstn) begin
       dat_rsp_pvld_d3 <= 1'b0;
   end else begin
       dat_rsp_pvld_d3 <= dat_rsp_pvld_d2;
   end
end
always @(posedge nvdla_core_clk) begin
   if (!nvdla_core_rstn) begin
       dat_rsp_pd_d3 <= {27{1'b0}};
   end else begin
       if ((dat_rsp_pvld_d2) == 1'b1) begin
           dat_rsp_pd_d3 <= dat_rsp_pd_d2;
       // VCS coverage off
       end else if ((dat_rsp_pvld_d2) == 1'b0) begin
       end else begin
           dat_rsp_pd_d3 <= 'bx;
       // VCS coverage on
       end
   end
end
always @(posedge nvdla_core_clk) begin
   if (!nvdla_core_rstn) begin
       dat_rsp_pvld_d4 <= 1'b0;
   end else begin
       dat_rsp_pvld_d4 <= dat_rsp_pvld_d3;
   end
end
always @(posedge nvdla_core_clk) begin
   if (!nvdla_core_rstn) begin
       dat_rsp_pd_d4 <= {27{1'b0}};
   end else begin
       if ((dat_rsp_pvld_d3) == 1'b1) begin
           dat_rsp_pd_d4 <= dat_rsp_pd_d3;
       // VCS coverage off
       end else if ((dat_rsp_pvld_d3) == 1'b0) begin
       end else begin
           dat_rsp_pd_d4 <= 'bx;
       // VCS coverage on
       end
   end
end

//| eperl: generated_end (DO NOT EDIT ABOVE)
assign dat_rsp_pvld = (sub_h_total_g3[2] & dat_rsp_pvld_d4) |
                      (sub_h_total_g3[1] & dat_rsp_pvld_d2) |
                      (sub_h_total_g3[0] & dat_rsp_pvld_d1);
assign dat_rsp_l0_pvld = dat_rsp_pvld_d1;
assign dat_rsp_l1_pvld = dat_rsp_pvld_d2;
assign dat_rsp_l2_pvld = dat_rsp_pvld_d3;
assign dat_rsp_l3_pvld = dat_rsp_pvld_d4;
assign dat_rsp_pd = ({27 {sub_h_total_g4[2]}} & dat_rsp_pd_d4) |
                    ({27 {sub_h_total_g4[1]}} & dat_rsp_pd_d2) |
                    ({27 {sub_h_total_g4[0]}} & dat_rsp_pd_d1);
assign dat_rsp_l0_sub_c = dat_rsp_pd_d1[4:4];
assign dat_rsp_l1_sub_c = dat_rsp_pd_d2[4:4];
assign dat_rsp_l2_sub_c = dat_rsp_pd_d3[4:4];
assign dat_rsp_l3_sub_c = dat_rsp_pd_d4[4:4];
assign dat_rsp_l0_flag = dat_rsp_pd_d1[26:18];
assign dat_rsp_l1_flag = dat_rsp_pd_d2[26:18];
assign dat_rsp_l2_flag = dat_rsp_pd_d3[26:18];
assign dat_rsp_l3_flag = dat_rsp_pd_d4[26:18];
assign dat_rsp_l0_stripe_end = dat_rsp_l0_flag[6:6];
assign dat_rsp_l1_stripe_end = dat_rsp_l1_flag[6:6];
assign dat_rsp_l2_stripe_end = dat_rsp_l2_flag[6:6];
assign dat_rsp_l3_stripe_end = dat_rsp_l3_flag[6:6];
// PKT_UNPACK_WIRE( csc_dat_rsp_pkg , dat_rsp_ , dat_rsp_pd )
assign dat_rsp_sub_w[1:0] = dat_rsp_pd[1:0];
assign dat_rsp_sub_h[1:0] = dat_rsp_pd[3:2];
assign dat_rsp_sub_c = dat_rsp_pd[4];
assign dat_rsp_ch_end = dat_rsp_pd[5];
assign dat_rsp_bytes[7:0] = dat_rsp_pd[14:7];
assign dat_rsp_cur_sub_h[1:0] = dat_rsp_pd[16:15];
assign dat_rsp_rls = dat_rsp_pd[17];
assign dat_rsp_flag[8:0] = dat_rsp_pd[26:18];
// PKT_UNPACK_WIRE( nvdla_stripe_info , dat_rsp_ , dat_rsp_flag )
assign dat_rsp_batch_index[4:0] = dat_rsp_flag[4:0];
assign dat_rsp_stripe_st = dat_rsp_flag[5];
assign dat_rsp_stripe_end = dat_rsp_flag[6];
assign dat_rsp_channel_end = dat_rsp_flag[7];
assign dat_rsp_layer_end = dat_rsp_flag[8];
assign rsp_sft_cnt_l0_sub = dat_l0c0_en ? 8'h40   : 8'h0;
assign rsp_sft_cnt_l1_sub = dat_l1c0_en ? 8'h40   : 8'h0;
assign rsp_sft_cnt_l2_sub = dat_l2c0_en ? 8'h40   : 8'h0;
assign rsp_sft_cnt_l3_sub = dat_l3c0_en ? 8'h40   : 8'h0;
////: &eperl::retime("-O stripe_begin_disable_jump_7T -i stripe_begin_disable_jump -stage 8 -clk nvdla_core_clk");
////: &eperl::flop("-q stripe_begin_disable_jump_8T -d stripe_begin_disable_jump_7T -clk nvdla_core_clk");
assign {mon_rsp_sft_cnt_l0_w,rsp_sft_cnt_l0_inc} = (pixel_x_byte_stride > 8'h40  ) ? 8'h40   :
                                                    (rsp_sft_cnt_l0 + pixel_x_byte_stride - rsp_sft_cnt_l0_sub);
assign {mon_rsp_sft_cnt_l1_w,rsp_sft_cnt_l1_inc} = (pixel_x_byte_stride > 8'h40  ) ? 8'h40   :
                                                    (rsp_sft_cnt_l1 + pixel_x_byte_stride - rsp_sft_cnt_l1_sub);
assign {mon_rsp_sft_cnt_l2_w,rsp_sft_cnt_l2_inc} = (pixel_x_byte_stride > 8'h40  ) ? 8'h40   :
                                                    (rsp_sft_cnt_l2 + pixel_x_byte_stride - rsp_sft_cnt_l2_sub);
assign {mon_rsp_sft_cnt_l3_w,rsp_sft_cnt_l3_inc} = (pixel_x_byte_stride > 8'h40  ) ? 8'h40   :
                                                    (rsp_sft_cnt_l3 + pixel_x_byte_stride - rsp_sft_cnt_l3_sub);
//the data frm cbuf's low Bytes is always needed. High Bytes maybe unneeded.
assign dat_rsp_l0_block_end = dat_rsp_l0_sub_c;
assign dat_rsp_l1_block_end = dat_rsp_l1_sub_c;
assign dat_rsp_l2_block_end = dat_rsp_l2_sub_c;
assign dat_rsp_l3_block_end = dat_rsp_l3_sub_c;
assign rsp_sft_cnt_l0_w = (layer_st) ? 8'h40   : //begin from C0
                          (dat_rsp_l0_stripe_end & ~dat_rsp_l0_block_end) ? rsp_sft_cnt_l0_ori :
                          (dat_rsp_l0_stripe_end & dat_rsp_l0_block_end) ? 8'h40   :
                          (dat_dummy_l0_en) ? (rsp_sft_cnt_l0_inc & 8'h3f) :
                          rsp_sft_cnt_l0_inc;
assign rsp_sft_cnt_l1_w = (layer_st) ? 8'h40   :
                          (dat_rsp_l1_stripe_end & ~dat_rsp_l1_block_end) ? rsp_sft_cnt_l1_ori :
                          (dat_rsp_l1_stripe_end & dat_rsp_l1_block_end) ? 8'h40   :
                          (dat_dummy_l1_en) ? (rsp_sft_cnt_l1_inc & 8'h3f) :
                          rsp_sft_cnt_l1_inc;
assign rsp_sft_cnt_l2_w = (layer_st) ? 8'h40   :
                          (dat_rsp_l2_stripe_end & ~dat_rsp_l2_block_end) ? rsp_sft_cnt_l2_ori :
                          (dat_rsp_l2_stripe_end & dat_rsp_l2_block_end) ? 8'h40   :
                          (dat_dummy_l2_en) ? (rsp_sft_cnt_l2_inc & 8'h3f) :
                          rsp_sft_cnt_l2_inc;
assign rsp_sft_cnt_l3_w = (layer_st) ? 8'h40   :
                          (dat_rsp_l3_stripe_end & ~dat_rsp_l3_block_end) ? rsp_sft_cnt_l3_ori :
                          (dat_rsp_l3_stripe_end & dat_rsp_l3_block_end) ? 8'h40   :
                          (dat_dummy_l3_en) ? (rsp_sft_cnt_l3_inc & 8'h3f) :
                          rsp_sft_cnt_l3_inc;
assign rsp_sft_cnt_l0_en = layer_st | (is_img_d1[17] & dat_rsp_l0_pvld);
assign rsp_sft_cnt_l1_en = layer_st | (is_img_d1[18] & dat_rsp_l1_pvld & (sub_h_total_g5 != 3'h1));
assign rsp_sft_cnt_l2_en = layer_st | (is_img_d1[19] & dat_rsp_l2_pvld & (sub_h_total_g5 == 3'h4));
assign rsp_sft_cnt_l3_en = layer_st | (is_img_d1[20] & dat_rsp_l3_pvld & (sub_h_total_g5 == 3'h4));
assign rsp_sft_cnt_l0_ori_en = layer_st | (is_img_d1[21] & dat_rsp_l0_pvld & dat_rsp_l0_stripe_end & dat_rsp_l0_block_end);
assign rsp_sft_cnt_l1_ori_en = layer_st | (is_img_d1[22] & dat_rsp_l1_pvld & dat_rsp_l1_stripe_end & dat_rsp_l1_block_end & (sub_h_total_g6 != 3'h1));
assign rsp_sft_cnt_l2_ori_en = layer_st | (is_img_d1[23] & dat_rsp_l2_pvld & dat_rsp_l2_stripe_end & dat_rsp_l2_block_end & (sub_h_total_g6 == 3'h4));
assign rsp_sft_cnt_l3_ori_en = layer_st | (is_img_d1[24] & dat_rsp_l3_pvld & dat_rsp_l3_stripe_end & dat_rsp_l3_block_end & (sub_h_total_g6 == 3'h4));
//: &eperl::flop("-nodeclare   -rval \"{8{1'b0}}\"  -en \"rsp_sft_cnt_l0_en\" -d \"rsp_sft_cnt_l0_w\" -q rsp_sft_cnt_l0");
//: &eperl::flop("-nodeclare   -rval \"{8{1'b0}}\"  -en \"rsp_sft_cnt_l1_en\" -d \"rsp_sft_cnt_l1_w\" -q rsp_sft_cnt_l1");
//: &eperl::flop("-nodeclare   -rval \"{8{1'b0}}\"  -en \"rsp_sft_cnt_l2_en\" -d \"rsp_sft_cnt_l2_w\" -q rsp_sft_cnt_l2");
//: &eperl::flop("-nodeclare   -rval \"{8{1'b0}}\"  -en \"rsp_sft_cnt_l3_en\" -d \"rsp_sft_cnt_l3_w\" -q rsp_sft_cnt_l3");
//: &eperl::flop("-nodeclare   -rval \"{8{1'b0}}\"  -en \"rsp_sft_cnt_l0_ori_en\" -d \"rsp_sft_cnt_l0_w\" -q rsp_sft_cnt_l0_ori");
//: &eperl::flop("-nodeclare   -rval \"{8{1'b0}}\"  -en \"rsp_sft_cnt_l1_ori_en\" -d \"rsp_sft_cnt_l1_w\" -q rsp_sft_cnt_l1_ori");
//: &eperl::flop("-nodeclare   -rval \"{8{1'b0}}\"  -en \"rsp_sft_cnt_l2_ori_en\" -d \"rsp_sft_cnt_l2_w\" -q rsp_sft_cnt_l2_ori");
//: &eperl::flop("-nodeclare   -rval \"{8{1'b0}}\"  -en \"rsp_sft_cnt_l3_ori_en\" -d \"rsp_sft_cnt_l3_w\" -q rsp_sft_cnt_l3_ori");
//| eperl: generated_beg (DO NOT EDIT BELOW)
always @(posedge nvdla_core_clk) begin
   if (!nvdla_core_rstn) begin
       rsp_sft_cnt_l0 <= {8{1'b0}};
   end else begin
       if ((rsp_sft_cnt_l0_en) == 1'b1) begin
           rsp_sft_cnt_l0 <= rsp_sft_cnt_l0_w;
       // VCS coverage off
       end else if ((rsp_sft_cnt_l0_en) == 1'b0) begin
       end else begin
           rsp_sft_cnt_l0 <= 'bx;
       // VCS coverage on
       end
   end
end
always @(posedge nvdla_core_clk) begin
   if (!nvdla_core_rstn) begin
       rsp_sft_cnt_l1 <= {8{1'b0}};
   end else begin
       if ((rsp_sft_cnt_l1_en) == 1'b1) begin
           rsp_sft_cnt_l1 <= rsp_sft_cnt_l1_w;
       // VCS coverage off
       end else if ((rsp_sft_cnt_l1_en) == 1'b0) begin
       end else begin
           rsp_sft_cnt_l1 <= 'bx;
       // VCS coverage on
       end
   end
end
always @(posedge nvdla_core_clk) begin
   if (!nvdla_core_rstn) begin
       rsp_sft_cnt_l2 <= {8{1'b0}};
   end else begin
       if ((rsp_sft_cnt_l2_en) == 1'b1) begin
           rsp_sft_cnt_l2 <= rsp_sft_cnt_l2_w;
       // VCS coverage off
       end else if ((rsp_sft_cnt_l2_en) == 1'b0) begin
       end else begin
           rsp_sft_cnt_l2 <= 'bx;
       // VCS coverage on
       end
   end
end
always @(posedge nvdla_core_clk) begin
   if (!nvdla_core_rstn) begin
       rsp_sft_cnt_l3 <= {8{1'b0}};
   end else begin
       if ((rsp_sft_cnt_l3_en) == 1'b1) begin
           rsp_sft_cnt_l3 <= rsp_sft_cnt_l3_w;
       // VCS coverage off
       end else if ((rsp_sft_cnt_l3_en) == 1'b0) begin
       end else begin
           rsp_sft_cnt_l3 <= 'bx;
       // VCS coverage on
       end
   end
end
always @(posedge nvdla_core_clk) begin
   if (!nvdla_core_rstn) begin
       rsp_sft_cnt_l0_ori <= {8{1'b0}};
   end else begin
       if ((rsp_sft_cnt_l0_ori_en) == 1'b1) begin
           rsp_sft_cnt_l0_ori <= rsp_sft_cnt_l0_w;
       // VCS coverage off
       end else if ((rsp_sft_cnt_l0_ori_en) == 1'b0) begin
       end else begin
           rsp_sft_cnt_l0_ori <= 'bx;
       // VCS coverage on
       end
   end
end
always @(posedge nvdla_core_clk) begin
   if (!nvdla_core_rstn) begin
       rsp_sft_cnt_l1_ori <= {8{1'b0}};
   end else begin
       if ((rsp_sft_cnt_l1_ori_en) == 1'b1) begin
           rsp_sft_cnt_l1_ori <= rsp_sft_cnt_l1_w;
       // VCS coverage off
       end else if ((rsp_sft_cnt_l1_ori_en) == 1'b0) begin
       end else begin
           rsp_sft_cnt_l1_ori <= 'bx;
       // VCS coverage on
       end
   end
end
always @(posedge nvdla_core_clk) begin
   if (!nvdla_core_rstn) begin
       rsp_sft_cnt_l2_ori <= {8{1'b0}};
   end else begin
       if ((rsp_sft_cnt_l2_ori_en) == 1'b1) begin
           rsp_sft_cnt_l2_ori <= rsp_sft_cnt_l2_w;
       // VCS coverage off
       end else if ((rsp_sft_cnt_l2_ori_en) == 1'b0) begin
       end else begin
           rsp_sft_cnt_l2_ori <= 'bx;
       // VCS coverage on
       end
   end
end
always @(posedge nvdla_core_clk) begin
   if (!nvdla_core_rstn) begin
       rsp_sft_cnt_l3_ori <= {8{1'b0}};
   end else begin
       if ((rsp_sft_cnt_l3_ori_en) == 1'b1) begin
           rsp_sft_cnt_l3_ori <= rsp_sft_cnt_l3_w;
       // VCS coverage off
       end else if ((rsp_sft_cnt_l3_ori_en) == 1'b0) begin
       end else begin
           rsp_sft_cnt_l3_ori <= 'bx;
       // VCS coverage on
       end
   end
end

//| eperl: generated_end (DO NOT EDIT ABOVE)
//////////////////////////////////////////////////////////////
///// response data                                      /////
//////////////////////////////////////////////////////////////
//////////////// data for winograd ////////////////
//winograd need future update

//////////////// data for convlution ////////////////
assign dat_rsp_pad_value = {64{pad_value[7:0]}};
assign dat_rsp_l0c0 = dat_l0c0_dummy ? dat_rsp_pad_value : dat_l0c0;
assign dat_rsp_l1c0 = dat_l1c0_dummy ? dat_rsp_pad_value : dat_l1c0;
assign dat_rsp_l2c0 = dat_l2c0_dummy ? dat_rsp_pad_value : dat_l2c0;
assign dat_rsp_l3c0 = dat_l3c0_dummy ? dat_rsp_pad_value : dat_l3c0;
assign dat_rsp_l0c1 = dat_l0c1_dummy ? dat_rsp_pad_value : dat_l0c1;
assign dat_rsp_l1c1 = dat_l1c1_dummy ? dat_rsp_pad_value : dat_l1c1;
assign dat_rsp_l2c1 = dat_l2c1_dummy ? dat_rsp_pad_value : dat_l2c1;
assign dat_rsp_l3c1 = dat_l3c1_dummy ? dat_rsp_pad_value : dat_l3c1;
//several atomM may combine together as an entry

assign dat_rsp_conv_8b = (is_winograd_d1[14] | is_img_d1[26]) ? {512{1'b0}} :
((dat_rsp_bytes <= 8'h20)&((dat_rsp_sub_w[0] == 1'h0))) ? {{512/2{1'b0}}, dat_rsp_l0c0[512/2 -1:0]} :
((dat_rsp_bytes <= 8'h20)&((dat_rsp_sub_w[0] == 1'h1))) ? {{512/2{1'b0}}, dat_rsp_l0c0[512 -1:512/2]} :
                dat_rsp_l0c0;
assign dat_rsp_conv = dat_rsp_conv_8b;
//////////////// data for image ////////////////
assign dat_rsp_l0_sft_in = ~is_img_d1[27] ? 'b0 : {dat_rsp_l0c0, dat_rsp_l0c1};
assign dat_rsp_l1_sft_in = ~is_img_d1[28] ? 'b0 : {dat_rsp_l1c0, dat_rsp_l1c1};
assign dat_rsp_l2_sft_in = ~is_img_d1[29] ? 'b0 : {dat_rsp_l2c0, dat_rsp_l2c1};
assign dat_rsp_l3_sft_in = ~is_img_d1[30] ? 'b0 : {dat_rsp_l3c0, dat_rsp_l3c1};
assign {mon_dat_rsp_l0_sft, dat_rsp_l0_sft} = dat_rsp_l0_sft_in >> {rsp_sft_cnt_l0, 3'b0};
assign {mon_dat_rsp_l1_sft, dat_rsp_l1_sft} = dat_rsp_l1_sft_in >> {rsp_sft_cnt_l1, 3'b0};
assign {mon_dat_rsp_l2_sft, dat_rsp_l2_sft} = dat_rsp_l2_sft_in >> {rsp_sft_cnt_l2, 3'b0};
assign {mon_dat_rsp_l3_sft, dat_rsp_l3_sft} = dat_rsp_l3_sft_in >> {rsp_sft_cnt_l3, 3'b0};
assign dat_rsp_img_8b = (~is_img_d1[32])? 'b0 :
                        (sub_h_total_g8 == 3'h4) ? {dat_rsp_l3_sft[512/4 -1:0], dat_rsp_l2_sft_d3[512/4 -1:0], dat_rsp_l1_sft_d3[512/4 -1:0], dat_rsp_l0_sft_d3[512/4 -1:0]} :
                        (sub_h_total_g8 == 3'h2) ? {dat_rsp_l1_sft[512/2 -1:0], dat_rsp_l0_sft_d1[512/2 -1:0]} :
                        dat_rsp_l0_sft[512 -1:0];
assign dat_rsp_img = dat_rsp_img_8b;
wire dat_rsp_sft_d1_en = dat_rsp_l0_pvld & (sub_h_total_g9 != 3'h1);
wire dat_rsp_sft_d2_en = dat_rsp_l1_pvld & (sub_h_total_g9 == 3'h4);
wire dat_rsp_sft_d3_en = dat_rsp_l2_pvld & (sub_h_total_g9 == 3'h4);
//: my $half=512/2;
//: my $quat=512/4;
//: &eperl::flop("-nodeclare -wid ${half} -norst -en \"dat_rsp_sft_d1_en\" -d \"dat_rsp_l0_sft\" -q dat_rsp_l0_sft_d1");
//: &eperl::flop("-nodeclare -wid ${quat} -norst -en \"dat_rsp_sft_d2_en\" -d \"dat_rsp_l0_sft_d1\" -q dat_rsp_l0_sft_d2");
//: &eperl::flop("-nodeclare -wid ${quat} -norst -en \"dat_rsp_sft_d3_en\" -d \"dat_rsp_l0_sft_d2\" -q dat_rsp_l0_sft_d3");
//: &eperl::flop("-nodeclare -wid ${quat} -norst -en \"dat_rsp_sft_d2_en\" -d \"dat_rsp_l1_sft\" -q dat_rsp_l1_sft_d2");
//: &eperl::flop("-nodeclare -wid ${quat} -norst -en \"dat_rsp_sft_d3_en\" -d \"dat_rsp_l1_sft_d2\" -q dat_rsp_l1_sft_d3");
//: &eperl::flop("-nodeclare -wid ${quat} -norst -en \"dat_rsp_sft_d3_en\" -d \"dat_rsp_l2_sft\" -q dat_rsp_l2_sft_d3");
//| eperl: generated_beg (DO NOT EDIT BELOW)
always @(posedge nvdla_core_clk) begin
       if ((dat_rsp_sft_d1_en) == 1'b1) begin
           dat_rsp_l0_sft_d1 <= dat_rsp_l0_sft;
       // VCS coverage off
       end else if ((dat_rsp_sft_d1_en) == 1'b0) begin
       end else begin
           dat_rsp_l0_sft_d1 <= 'bx;
       // VCS coverage on
       end
end
always @(posedge nvdla_core_clk) begin
       if ((dat_rsp_sft_d2_en) == 1'b1) begin
           dat_rsp_l0_sft_d2 <= dat_rsp_l0_sft_d1;
       // VCS coverage off
       end else if ((dat_rsp_sft_d2_en) == 1'b0) begin
       end else begin
           dat_rsp_l0_sft_d2 <= 'bx;
       // VCS coverage on
       end
end
always @(posedge nvdla_core_clk) begin
       if ((dat_rsp_sft_d3_en) == 1'b1) begin
           dat_rsp_l0_sft_d3 <= dat_rsp_l0_sft_d2;
       // VCS coverage off
       end else if ((dat_rsp_sft_d3_en) == 1'b0) begin
       end else begin
           dat_rsp_l0_sft_d3 <= 'bx;
       // VCS coverage on
       end
end
always @(posedge nvdla_core_clk) begin
       if ((dat_rsp_sft_d2_en) == 1'b1) begin
           dat_rsp_l1_sft_d2 <= dat_rsp_l1_sft;
       // VCS coverage off
       end else if ((dat_rsp_sft_d2_en) == 1'b0) begin
       end else begin
           dat_rsp_l1_sft_d2 <= 'bx;
       // VCS coverage on
       end
end
always @(posedge nvdla_core_clk) begin
       if ((dat_rsp_sft_d3_en) == 1'b1) begin
           dat_rsp_l1_sft_d3 <= dat_rsp_l1_sft_d2;
       // VCS coverage off
       end else if ((dat_rsp_sft_d3_en) == 1'b0) begin
       end else begin
           dat_rsp_l1_sft_d3 <= 'bx;
       // VCS coverage on
       end
end
always @(posedge nvdla_core_clk) begin
       if ((dat_rsp_sft_d3_en) == 1'b1) begin
           dat_rsp_l2_sft_d3 <= dat_rsp_l2_sft;
       // VCS coverage off
       end else if ((dat_rsp_sft_d3_en) == 1'b0) begin
       end else begin
           dat_rsp_l2_sft_d3 <= 'bx;
       // VCS coverage on
       end
end

//| eperl: generated_end (DO NOT EDIT ABOVE)
//////////////// byte mask ////////////////
//sub_h_total=2, each sub_h align to 1/2 entry;
//sub_h_total=4, each sub_h align to 1/4 entry;
assign dat_rsp_ori_mask = ~({64{1'b1}} << dat_rsp_bytes);
assign dat_rsp_cur_h_mask_p1 = (dat_rsp_cur_sub_h >= 2'h1) ? {64{1'b1}} : 'b0;
assign dat_rsp_cur_h_mask_p2 = (dat_rsp_cur_sub_h >= 2'h2) ? {64/2{1'b1}} : 'b0;
assign dat_rsp_cur_h_mask_p3 = (dat_rsp_cur_sub_h == 2'h3) ? {64/2{1'b1}} : 'b0;
assign dat_rsp_cur_h_e2_mask_8b = {dat_rsp_cur_h_mask_p1[64/2 -1:0], {64/2{1'b1}}};
assign dat_rsp_cur_h_e4_mask_8b = {dat_rsp_cur_h_mask_p3[64/4 -1:0], dat_rsp_cur_h_mask_p2[64/4 -1:0], dat_rsp_cur_h_mask_p1[64/4 -1:0], {64/4{1'b1}}};
assign dat_rsp_mask_8b = (sub_h_total_g11 == 3'h4) ? ({4{dat_rsp_ori_mask[64/4 -1:0]}} & dat_rsp_cur_h_e4_mask_8b) :
                         (sub_h_total_g11 == 3'h2) ? ({2{dat_rsp_ori_mask[64/2 -1:0]}} & dat_rsp_cur_h_e2_mask_8b) :
                         dat_rsp_ori_mask[64 -1:0];
assign dat_rsp_data_w = is_img_d1[33] ? dat_rsp_img :
                        dat_rsp_conv;
//: my $i;
//: my $b1;
//: my $b0;
//: my $kk=64 -1;
//: print "assign dat_rsp_mask_val_int8 = {";
//: for($i = ${kk}; $i >= 0; $i --) {
//: $b0 = sprintf("%3d", $i * 8);
//: $b1 = sprintf("%3d", $i * 8 + 7);
//: print "(|dat_rsp_data_w[${b1}:${b0}])";
//: if($i == 0) {
//: print "};\n";
//: } elsif ($i % 8 == 0) {
//: print ",\n                               ";
//: } else {
//: print ", ";
//: }
//: }
//: print "\n\n";
//| eperl: generated_beg (DO NOT EDIT BELOW)
assign dat_rsp_mask_val_int8 = {(|dat_rsp_data_w[511:504]), (|dat_rsp_data_w[503:496]), (|dat_rsp_data_w[495:488]), (|dat_rsp_data_w[487:480]), (|dat_rsp_data_w[479:472]), (|dat_rsp_data_w[471:464]), (|dat_rsp_data_w[463:456]), (|dat_rsp_data_w[455:448]),
                               (|dat_rsp_data_w[447:440]), (|dat_rsp_data_w[439:432]), (|dat_rsp_data_w[431:424]), (|dat_rsp_data_w[423:416]), (|dat_rsp_data_w[415:408]), (|dat_rsp_data_w[407:400]), (|dat_rsp_data_w[399:392]), (|dat_rsp_data_w[391:384]),
                               (|dat_rsp_data_w[383:376]), (|dat_rsp_data_w[375:368]), (|dat_rsp_data_w[367:360]), (|dat_rsp_data_w[359:352]), (|dat_rsp_data_w[351:344]), (|dat_rsp_data_w[343:336]), (|dat_rsp_data_w[335:328]), (|dat_rsp_data_w[327:320]),
                               (|dat_rsp_data_w[319:312]), (|dat_rsp_data_w[311:304]), (|dat_rsp_data_w[303:296]), (|dat_rsp_data_w[295:288]), (|dat_rsp_data_w[287:280]), (|dat_rsp_data_w[279:272]), (|dat_rsp_data_w[271:264]), (|dat_rsp_data_w[263:256]),
                               (|dat_rsp_data_w[255:248]), (|dat_rsp_data_w[247:240]), (|dat_rsp_data_w[239:232]), (|dat_rsp_data_w[231:224]), (|dat_rsp_data_w[223:216]), (|dat_rsp_data_w[215:208]), (|dat_rsp_data_w[207:200]), (|dat_rsp_data_w[199:192]),
                               (|dat_rsp_data_w[191:184]), (|dat_rsp_data_w[183:176]), (|dat_rsp_data_w[175:168]), (|dat_rsp_data_w[167:160]), (|dat_rsp_data_w[159:152]), (|dat_rsp_data_w[151:144]), (|dat_rsp_data_w[143:136]), (|dat_rsp_data_w[135:128]),
                               (|dat_rsp_data_w[127:120]), (|dat_rsp_data_w[119:112]), (|dat_rsp_data_w[111:104]), (|dat_rsp_data_w[103: 96]), (|dat_rsp_data_w[ 95: 88]), (|dat_rsp_data_w[ 87: 80]), (|dat_rsp_data_w[ 79: 72]), (|dat_rsp_data_w[ 71: 64]),
                               (|dat_rsp_data_w[ 63: 56]), (|dat_rsp_data_w[ 55: 48]), (|dat_rsp_data_w[ 47: 40]), (|dat_rsp_data_w[ 39: 32]), (|dat_rsp_data_w[ 31: 24]), (|dat_rsp_data_w[ 23: 16]), (|dat_rsp_data_w[ 15:  8]), (|dat_rsp_data_w[  7:  0])};



//| eperl: generated_end (DO NOT EDIT ABOVE)
assign dat_rsp_mask_w = (dat_rsp_mask_8b & dat_rsp_mask_val_int8) ;
assign dat_rsp_p1_vld_w = 1'b0;
assign dat_rsp_p0_vld_w = dat_rsp_pvld & ~is_winograd_d1[16];
//////////////////////////////////////////////////////////////
///// latency register to balance with PRA cell          /////
//////////////////////////////////////////////////////////////
//: my $total_latency = 5;
//:
//: print "assign dat_out_pvld_l0 = dat_rsp_pvld;\n";
//: print "assign dat_out_flag_l0 = dat_rsp_flag;\n";
//: for(my $i = 0; $i < $total_latency; $i ++) {
//: my $j = $i + 1;
//: &eperl::flop("-wid 1   -rval \"1'b0\"       -d \"dat_out_pvld_l${i}\"   -q dat_out_pvld_l${j}");
//: &eperl::flop("-wid 9   -rval \"{9{1'b0}}\"  -en \"dat_out_pvld_l${i}\"  -d \"dat_out_flag_l${i}\" -q dat_out_flag_l${j}");
//: }
//:
//: my $k = $total_latency;
//: print "assign dat_out_pvld_w = is_winograd_d1[17] ? dat_out_pvld_l${k} : dat_rsp_pvld;\n";
//: print "assign dat_out_flag_w = is_winograd_d1[18] ? dat_out_flag_l${k} : dat_rsp_flag;\n";
//| eperl: generated_beg (DO NOT EDIT BELOW)
assign dat_out_pvld_l0 = dat_rsp_pvld;
assign dat_out_flag_l0 = dat_rsp_flag;
reg  dat_out_pvld_l1;
always @(posedge nvdla_core_clk) begin
   if (!nvdla_core_rstn) begin
       dat_out_pvld_l1 <= 1'b0;
   end else begin
       dat_out_pvld_l1 <= dat_out_pvld_l0;
   end
end
reg [8:0] dat_out_flag_l1;
always @(posedge nvdla_core_clk) begin
   if (!nvdla_core_rstn) begin
       dat_out_flag_l1 <= {9{1'b0}};
   end else begin
       if ((dat_out_pvld_l0) == 1'b1) begin
           dat_out_flag_l1 <= dat_out_flag_l0;
       // VCS coverage off
       end else if ((dat_out_pvld_l0) == 1'b0) begin
       end else begin
           dat_out_flag_l1 <= 'bx;
       // VCS coverage on
       end
   end
end
reg  dat_out_pvld_l2;
always @(posedge nvdla_core_clk) begin
   if (!nvdla_core_rstn) begin
       dat_out_pvld_l2 <= 1'b0;
   end else begin
       dat_out_pvld_l2 <= dat_out_pvld_l1;
   end
end
reg [8:0] dat_out_flag_l2;
always @(posedge nvdla_core_clk) begin
   if (!nvdla_core_rstn) begin
       dat_out_flag_l2 <= {9{1'b0}};
   end else begin
       if ((dat_out_pvld_l1) == 1'b1) begin
           dat_out_flag_l2 <= dat_out_flag_l1;
       // VCS coverage off
       end else if ((dat_out_pvld_l1) == 1'b0) begin
       end else begin
           dat_out_flag_l2 <= 'bx;
       // VCS coverage on
       end
   end
end
reg  dat_out_pvld_l3;
always @(posedge nvdla_core_clk) begin
   if (!nvdla_core_rstn) begin
       dat_out_pvld_l3 <= 1'b0;
   end else begin
       dat_out_pvld_l3 <= dat_out_pvld_l2;
   end
end
reg [8:0] dat_out_flag_l3;
always @(posedge nvdla_core_clk) begin
   if (!nvdla_core_rstn) begin
       dat_out_flag_l3 <= {9{1'b0}};
   end else begin
       if ((dat_out_pvld_l2) == 1'b1) begin
           dat_out_flag_l3 <= dat_out_flag_l2;
       // VCS coverage off
       end else if ((dat_out_pvld_l2) == 1'b0) begin
       end else begin
           dat_out_flag_l3 <= 'bx;
       // VCS coverage on
       end
   end
end
reg  dat_out_pvld_l4;
always @(posedge nvdla_core_clk) begin
   if (!nvdla_core_rstn) begin
       dat_out_pvld_l4 <= 1'b0;
   end else begin
       dat_out_pvld_l4 <= dat_out_pvld_l3;
   end
end
reg [8:0] dat_out_flag_l4;
always @(posedge nvdla_core_clk) begin
   if (!nvdla_core_rstn) begin
       dat_out_flag_l4 <= {9{1'b0}};
   end else begin
       if ((dat_out_pvld_l3) == 1'b1) begin
           dat_out_flag_l4 <= dat_out_flag_l3;
       // VCS coverage off
       end else if ((dat_out_pvld_l3) == 1'b0) begin
       end else begin
           dat_out_flag_l4 <= 'bx;
       // VCS coverage on
       end
   end
end
reg  dat_out_pvld_l5;
always @(posedge nvdla_core_clk) begin
   if (!nvdla_core_rstn) begin
       dat_out_pvld_l5 <= 1'b0;
   end else begin
       dat_out_pvld_l5 <= dat_out_pvld_l4;
   end
end
reg [8:0] dat_out_flag_l5;
always @(posedge nvdla_core_clk) begin
   if (!nvdla_core_rstn) begin
       dat_out_flag_l5 <= {9{1'b0}};
   end else begin
       if ((dat_out_pvld_l4) == 1'b1) begin
           dat_out_flag_l5 <= dat_out_flag_l4;
       // VCS coverage off
       end else if ((dat_out_pvld_l4) == 1'b0) begin
       end else begin
           dat_out_flag_l5 <= 'bx;
       // VCS coverage on
       end
   end
end
assign dat_out_pvld_w = is_winograd_d1[17] ? dat_out_pvld_l5 : dat_rsp_pvld;
assign dat_out_flag_w = is_winograd_d1[18] ? dat_out_flag_l5 : dat_rsp_flag;

//| eperl: generated_end (DO NOT EDIT ABOVE)
assign dat_out_bypass_p0_vld_w = dat_rsp_p0_vld_w;
assign dat_out_bypass_mask_w = dat_rsp_mask_w;
assign dat_out_bypass_data_w = dat_rsp_data_w;
//: my $kk=64;
//: &eperl::flop("-nodeclare   -rval \"1'b0\"   -d \"dat_out_pvld_w\" -q dat_out_pvld");
//: &eperl::flop("-nodeclare   -rval \"{9{1'b0}}\"  -en \"dat_out_pvld_w\" -d \"dat_out_flag_w\" -q dat_out_flag");
//: &eperl::flop("-nodeclare   -rval \"{${kk}{1'b0}}\"  -en \"dat_out_bypass_p0_vld_w\" -d \"dat_out_bypass_mask_w\" -q dat_out_bypass_mask");
//: for(my $i = 0; $i < 64; $i ++) {
//: my $b0 = $i * 8;
//: my $b1 = $i * 8 + 7;
//: &eperl::flop("-nodeclare  -norst -en \"dat_out_bypass_p0_vld_w & dat_out_bypass_mask_w[${i}]\" -d \"dat_out_bypass_data_w[${b1}:${b0}]\" -q dat_out_bypass_data[${b1}:${b0}]");
//: }
//:
//| eperl: generated_beg (DO NOT EDIT BELOW)
always @(posedge nvdla_core_clk) begin
   if (!nvdla_core_rstn) begin
       dat_out_pvld <= 1'b0;
   end else begin
       dat_out_pvld <= dat_out_pvld_w;
   end
end
always @(posedge nvdla_core_clk) begin
   if (!nvdla_core_rstn) begin
       dat_out_flag <= {9{1'b0}};
   end else begin
       if ((dat_out_pvld_w) == 1'b1) begin
           dat_out_flag <= dat_out_flag_w;
       // VCS coverage off
       end else if ((dat_out_pvld_w) == 1'b0) begin
       end else begin
           dat_out_flag <= 'bx;
       // VCS coverage on
       end
   end
end
always @(posedge nvdla_core_clk) begin
   if (!nvdla_core_rstn) begin
       dat_out_bypass_mask <= {64{1'b0}};
   end else begin
       if ((dat_out_bypass_p0_vld_w) == 1'b1) begin
           dat_out_bypass_mask <= dat_out_bypass_mask_w;
       // VCS coverage off
       end else if ((dat_out_bypass_p0_vld_w) == 1'b0) begin
       end else begin
           dat_out_bypass_mask <= 'bx;
       // VCS coverage on
       end
   end
end
always @(posedge nvdla_core_clk) begin
       if ((dat_out_bypass_p0_vld_w & dat_out_bypass_mask_w[0]) == 1'b1) begin
           dat_out_bypass_data[7:0] <= dat_out_bypass_data_w[7:0];
       // VCS coverage off
       end else if ((dat_out_bypass_p0_vld_w & dat_out_bypass_mask_w[0]) == 1'b0) begin
       end else begin
           dat_out_bypass_data[7:0] <= 'bx;
       // VCS coverage on
       end
end
always @(posedge nvdla_core_clk) begin
       if ((dat_out_bypass_p0_vld_w & dat_out_bypass_mask_w[1]) == 1'b1) begin
           dat_out_bypass_data[15:8] <= dat_out_bypass_data_w[15:8];
       // VCS coverage off
       end else if ((dat_out_bypass_p0_vld_w & dat_out_bypass_mask_w[1]) == 1'b0) begin
       end else begin
           dat_out_bypass_data[15:8] <= 'bx;
       // VCS coverage on
       end
end
always @(posedge nvdla_core_clk) begin
       if ((dat_out_bypass_p0_vld_w & dat_out_bypass_mask_w[2]) == 1'b1) begin
           dat_out_bypass_data[23:16] <= dat_out_bypass_data_w[23:16];
       // VCS coverage off
       end else if ((dat_out_bypass_p0_vld_w & dat_out_bypass_mask_w[2]) == 1'b0) begin
       end else begin
           dat_out_bypass_data[23:16] <= 'bx;
       // VCS coverage on
       end
end
always @(posedge nvdla_core_clk) begin
       if ((dat_out_bypass_p0_vld_w & dat_out_bypass_mask_w[3]) == 1'b1) begin
           dat_out_bypass_data[31:24] <= dat_out_bypass_data_w[31:24];
       // VCS coverage off
       end else if ((dat_out_bypass_p0_vld_w & dat_out_bypass_mask_w[3]) == 1'b0) begin
       end else begin
           dat_out_bypass_data[31:24] <= 'bx;
       // VCS coverage on
       end
end
always @(posedge nvdla_core_clk) begin
       if ((dat_out_bypass_p0_vld_w & dat_out_bypass_mask_w[4]) == 1'b1) begin
           dat_out_bypass_data[39:32] <= dat_out_bypass_data_w[39:32];
       // VCS coverage off
       end else if ((dat_out_bypass_p0_vld_w & dat_out_bypass_mask_w[4]) == 1'b0) begin
       end else begin
           dat_out_bypass_data[39:32] <= 'bx;
       // VCS coverage on
       end
end
always @(posedge nvdla_core_clk) begin
       if ((dat_out_bypass_p0_vld_w & dat_out_bypass_mask_w[5]) == 1'b1) begin
           dat_out_bypass_data[47:40] <= dat_out_bypass_data_w[47:40];
       // VCS coverage off
       end else if ((dat_out_bypass_p0_vld_w & dat_out_bypass_mask_w[5]) == 1'b0) begin
       end else begin
           dat_out_bypass_data[47:40] <= 'bx;
       // VCS coverage on
       end
end
always @(posedge nvdla_core_clk) begin
       if ((dat_out_bypass_p0_vld_w & dat_out_bypass_mask_w[6]) == 1'b1) begin
           dat_out_bypass_data[55:48] <= dat_out_bypass_data_w[55:48];
       // VCS coverage off
       end else if ((dat_out_bypass_p0_vld_w & dat_out_bypass_mask_w[6]) == 1'b0) begin
       end else begin
           dat_out_bypass_data[55:48] <= 'bx;
       // VCS coverage on
       end
end
always @(posedge nvdla_core_clk) begin
       if ((dat_out_bypass_p0_vld_w & dat_out_bypass_mask_w[7]) == 1'b1) begin
           dat_out_bypass_data[63:56] <= dat_out_bypass_data_w[63:56];
       // VCS coverage off
       end else if ((dat_out_bypass_p0_vld_w & dat_out_bypass_mask_w[7]) == 1'b0) begin
       end else begin
           dat_out_bypass_data[63:56] <= 'bx;
       // VCS coverage on
       end
end
always @(posedge nvdla_core_clk) begin
       if ((dat_out_bypass_p0_vld_w & dat_out_bypass_mask_w[8]) == 1'b1) begin
           dat_out_bypass_data[71:64] <= dat_out_bypass_data_w[71:64];
       // VCS coverage off
       end else if ((dat_out_bypass_p0_vld_w & dat_out_bypass_mask_w[8]) == 1'b0) begin
       end else begin
           dat_out_bypass_data[71:64] <= 'bx;
       // VCS coverage on
       end
end
always @(posedge nvdla_core_clk) begin
       if ((dat_out_bypass_p0_vld_w & dat_out_bypass_mask_w[9]) == 1'b1) begin
           dat_out_bypass_data[79:72] <= dat_out_bypass_data_w[79:72];
       // VCS coverage off
       end else if ((dat_out_bypass_p0_vld_w & dat_out_bypass_mask_w[9]) == 1'b0) begin
       end else begin
           dat_out_bypass_data[79:72] <= 'bx;
       // VCS coverage on
       end
end
always @(posedge nvdla_core_clk) begin
       if ((dat_out_bypass_p0_vld_w & dat_out_bypass_mask_w[10]) == 1'b1) begin
           dat_out_bypass_data[87:80] <= dat_out_bypass_data_w[87:80];
       // VCS coverage off
       end else if ((dat_out_bypass_p0_vld_w & dat_out_bypass_mask_w[10]) == 1'b0) begin
       end else begin
           dat_out_bypass_data[87:80] <= 'bx;
       // VCS coverage on
       end
end
always @(posedge nvdla_core_clk) begin
       if ((dat_out_bypass_p0_vld_w & dat_out_bypass_mask_w[11]) == 1'b1) begin
           dat_out_bypass_data[95:88] <= dat_out_bypass_data_w[95:88];
       // VCS coverage off
       end else if ((dat_out_bypass_p0_vld_w & dat_out_bypass_mask_w[11]) == 1'b0) begin
       end else begin
           dat_out_bypass_data[95:88] <= 'bx;
       // VCS coverage on
       end
end
always @(posedge nvdla_core_clk) begin
       if ((dat_out_bypass_p0_vld_w & dat_out_bypass_mask_w[12]) == 1'b1) begin
           dat_out_bypass_data[103:96] <= dat_out_bypass_data_w[103:96];
       // VCS coverage off
       end else if ((dat_out_bypass_p0_vld_w & dat_out_bypass_mask_w[12]) == 1'b0) begin
       end else begin
           dat_out_bypass_data[103:96] <= 'bx;
       // VCS coverage on
       end
end
always @(posedge nvdla_core_clk) begin
       if ((dat_out_bypass_p0_vld_w & dat_out_bypass_mask_w[13]) == 1'b1) begin
           dat_out_bypass_data[111:104] <= dat_out_bypass_data_w[111:104];
       // VCS coverage off
       end else if ((dat_out_bypass_p0_vld_w & dat_out_bypass_mask_w[13]) == 1'b0) begin
       end else begin
           dat_out_bypass_data[111:104] <= 'bx;
       // VCS coverage on
       end
end
always @(posedge nvdla_core_clk) begin
       if ((dat_out_bypass_p0_vld_w & dat_out_bypass_mask_w[14]) == 1'b1) begin
           dat_out_bypass_data[119:112] <= dat_out_bypass_data_w[119:112];
       // VCS coverage off
       end else if ((dat_out_bypass_p0_vld_w & dat_out_bypass_mask_w[14]) == 1'b0) begin
       end else begin
           dat_out_bypass_data[119:112] <= 'bx;
       // VCS coverage on
       end
end
always @(posedge nvdla_core_clk) begin
       if ((dat_out_bypass_p0_vld_w & dat_out_bypass_mask_w[15]) == 1'b1) begin
           dat_out_bypass_data[127:120] <= dat_out_bypass_data_w[127:120];
       // VCS coverage off
       end else if ((dat_out_bypass_p0_vld_w & dat_out_bypass_mask_w[15]) == 1'b0) begin
       end else begin
           dat_out_bypass_data[127:120] <= 'bx;
       // VCS coverage on
       end
end
always @(posedge nvdla_core_clk) begin
       if ((dat_out_bypass_p0_vld_w & dat_out_bypass_mask_w[16]) == 1'b1) begin
           dat_out_bypass_data[135:128] <= dat_out_bypass_data_w[135:128];
       // VCS coverage off
       end else if ((dat_out_bypass_p0_vld_w & dat_out_bypass_mask_w[16]) == 1'b0) begin
       end else begin
           dat_out_bypass_data[135:128] <= 'bx;
       // VCS coverage on
       end
end
always @(posedge nvdla_core_clk) begin
       if ((dat_out_bypass_p0_vld_w & dat_out_bypass_mask_w[17]) == 1'b1) begin
           dat_out_bypass_data[143:136] <= dat_out_bypass_data_w[143:136];
       // VCS coverage off
       end else if ((dat_out_bypass_p0_vld_w & dat_out_bypass_mask_w[17]) == 1'b0) begin
       end else begin
           dat_out_bypass_data[143:136] <= 'bx;
       // VCS coverage on
       end
end
always @(posedge nvdla_core_clk) begin
       if ((dat_out_bypass_p0_vld_w & dat_out_bypass_mask_w[18]) == 1'b1) begin
           dat_out_bypass_data[151:144] <= dat_out_bypass_data_w[151:144];
       // VCS coverage off
       end else if ((dat_out_bypass_p0_vld_w & dat_out_bypass_mask_w[18]) == 1'b0) begin
       end else begin
           dat_out_bypass_data[151:144] <= 'bx;
       // VCS coverage on
       end
end
always @(posedge nvdla_core_clk) begin
       if ((dat_out_bypass_p0_vld_w & dat_out_bypass_mask_w[19]) == 1'b1) begin
           dat_out_bypass_data[159:152] <= dat_out_bypass_data_w[159:152];
       // VCS coverage off
       end else if ((dat_out_bypass_p0_vld_w & dat_out_bypass_mask_w[19]) == 1'b0) begin
       end else begin
           dat_out_bypass_data[159:152] <= 'bx;
       // VCS coverage on
       end
end
always @(posedge nvdla_core_clk) begin
       if ((dat_out_bypass_p0_vld_w & dat_out_bypass_mask_w[20]) == 1'b1) begin
           dat_out_bypass_data[167:160] <= dat_out_bypass_data_w[167:160];
       // VCS coverage off
       end else if ((dat_out_bypass_p0_vld_w & dat_out_bypass_mask_w[20]) == 1'b0) begin
       end else begin
           dat_out_bypass_data[167:160] <= 'bx;
       // VCS coverage on
       end
end
always @(posedge nvdla_core_clk) begin
       if ((dat_out_bypass_p0_vld_w & dat_out_bypass_mask_w[21]) == 1'b1) begin
           dat_out_bypass_data[175:168] <= dat_out_bypass_data_w[175:168];
       // VCS coverage off
       end else if ((dat_out_bypass_p0_vld_w & dat_out_bypass_mask_w[21]) == 1'b0) begin
       end else begin
           dat_out_bypass_data[175:168] <= 'bx;
       // VCS coverage on
       end
end
always @(posedge nvdla_core_clk) begin
       if ((dat_out_bypass_p0_vld_w & dat_out_bypass_mask_w[22]) == 1'b1) begin
           dat_out_bypass_data[183:176] <= dat_out_bypass_data_w[183:176];
       // VCS coverage off
       end else if ((dat_out_bypass_p0_vld_w & dat_out_bypass_mask_w[22]) == 1'b0) begin
       end else begin
           dat_out_bypass_data[183:176] <= 'bx;
       // VCS coverage on
       end
end
always @(posedge nvdla_core_clk) begin
       if ((dat_out_bypass_p0_vld_w & dat_out_bypass_mask_w[23]) == 1'b1) begin
           dat_out_bypass_data[191:184] <= dat_out_bypass_data_w[191:184];
       // VCS coverage off
       end else if ((dat_out_bypass_p0_vld_w & dat_out_bypass_mask_w[23]) == 1'b0) begin
       end else begin
           dat_out_bypass_data[191:184] <= 'bx;
       // VCS coverage on
       end
end
always @(posedge nvdla_core_clk) begin
       if ((dat_out_bypass_p0_vld_w & dat_out_bypass_mask_w[24]) == 1'b1) begin
           dat_out_bypass_data[199:192] <= dat_out_bypass_data_w[199:192];
       // VCS coverage off
       end else if ((dat_out_bypass_p0_vld_w & dat_out_bypass_mask_w[24]) == 1'b0) begin
       end else begin
           dat_out_bypass_data[199:192] <= 'bx;
       // VCS coverage on
       end
end
always @(posedge nvdla_core_clk) begin
       if ((dat_out_bypass_p0_vld_w & dat_out_bypass_mask_w[25]) == 1'b1) begin
           dat_out_bypass_data[207:200] <= dat_out_bypass_data_w[207:200];
       // VCS coverage off
       end else if ((dat_out_bypass_p0_vld_w & dat_out_bypass_mask_w[25]) == 1'b0) begin
       end else begin
           dat_out_bypass_data[207:200] <= 'bx;
       // VCS coverage on
       end
end
always @(posedge nvdla_core_clk) begin
       if ((dat_out_bypass_p0_vld_w & dat_out_bypass_mask_w[26]) == 1'b1) begin
           dat_out_bypass_data[215:208] <= dat_out_bypass_data_w[215:208];
       // VCS coverage off
       end else if ((dat_out_bypass_p0_vld_w & dat_out_bypass_mask_w[26]) == 1'b0) begin
       end else begin
           dat_out_bypass_data[215:208] <= 'bx;
       // VCS coverage on
       end
end
always @(posedge nvdla_core_clk) begin
       if ((dat_out_bypass_p0_vld_w & dat_out_bypass_mask_w[27]) == 1'b1) begin
           dat_out_bypass_data[223:216] <= dat_out_bypass_data_w[223:216];
       // VCS coverage off
       end else if ((dat_out_bypass_p0_vld_w & dat_out_bypass_mask_w[27]) == 1'b0) begin
       end else begin
           dat_out_bypass_data[223:216] <= 'bx;
       // VCS coverage on
       end
end
always @(posedge nvdla_core_clk) begin
       if ((dat_out_bypass_p0_vld_w & dat_out_bypass_mask_w[28]) == 1'b1) begin
           dat_out_bypass_data[231:224] <= dat_out_bypass_data_w[231:224];
       // VCS coverage off
       end else if ((dat_out_bypass_p0_vld_w & dat_out_bypass_mask_w[28]) == 1'b0) begin
       end else begin
           dat_out_bypass_data[231:224] <= 'bx;
       // VCS coverage on
       end
end
always @(posedge nvdla_core_clk) begin
       if ((dat_out_bypass_p0_vld_w & dat_out_bypass_mask_w[29]) == 1'b1) begin
           dat_out_bypass_data[239:232] <= dat_out_bypass_data_w[239:232];
       // VCS coverage off
       end else if ((dat_out_bypass_p0_vld_w & dat_out_bypass_mask_w[29]) == 1'b0) begin
       end else begin
           dat_out_bypass_data[239:232] <= 'bx;
       // VCS coverage on
       end
end
always @(posedge nvdla_core_clk) begin
       if ((dat_out_bypass_p0_vld_w & dat_out_bypass_mask_w[30]) == 1'b1) begin
           dat_out_bypass_data[247:240] <= dat_out_bypass_data_w[247:240];
       // VCS coverage off
       end else if ((dat_out_bypass_p0_vld_w & dat_out_bypass_mask_w[30]) == 1'b0) begin
       end else begin
           dat_out_bypass_data[247:240] <= 'bx;
       // VCS coverage on
       end
end
always @(posedge nvdla_core_clk) begin
       if ((dat_out_bypass_p0_vld_w & dat_out_bypass_mask_w[31]) == 1'b1) begin
           dat_out_bypass_data[255:248] <= dat_out_bypass_data_w[255:248];
       // VCS coverage off
       end else if ((dat_out_bypass_p0_vld_w & dat_out_bypass_mask_w[31]) == 1'b0) begin
       end else begin
           dat_out_bypass_data[255:248] <= 'bx;
       // VCS coverage on
       end
end
always @(posedge nvdla_core_clk) begin
       if ((dat_out_bypass_p0_vld_w & dat_out_bypass_mask_w[32]) == 1'b1) begin
           dat_out_bypass_data[263:256] <= dat_out_bypass_data_w[263:256];
       // VCS coverage off
       end else if ((dat_out_bypass_p0_vld_w & dat_out_bypass_mask_w[32]) == 1'b0) begin
       end else begin
           dat_out_bypass_data[263:256] <= 'bx;
       // VCS coverage on
       end
end
always @(posedge nvdla_core_clk) begin
       if ((dat_out_bypass_p0_vld_w & dat_out_bypass_mask_w[33]) == 1'b1) begin
           dat_out_bypass_data[271:264] <= dat_out_bypass_data_w[271:264];
       // VCS coverage off
       end else if ((dat_out_bypass_p0_vld_w & dat_out_bypass_mask_w[33]) == 1'b0) begin
       end else begin
           dat_out_bypass_data[271:264] <= 'bx;
       // VCS coverage on
       end
end
always @(posedge nvdla_core_clk) begin
       if ((dat_out_bypass_p0_vld_w & dat_out_bypass_mask_w[34]) == 1'b1) begin
           dat_out_bypass_data[279:272] <= dat_out_bypass_data_w[279:272];
       // VCS coverage off
       end else if ((dat_out_bypass_p0_vld_w & dat_out_bypass_mask_w[34]) == 1'b0) begin
       end else begin
           dat_out_bypass_data[279:272] <= 'bx;
       // VCS coverage on
       end
end
always @(posedge nvdla_core_clk) begin
       if ((dat_out_bypass_p0_vld_w & dat_out_bypass_mask_w[35]) == 1'b1) begin
           dat_out_bypass_data[287:280] <= dat_out_bypass_data_w[287:280];
       // VCS coverage off
       end else if ((dat_out_bypass_p0_vld_w & dat_out_bypass_mask_w[35]) == 1'b0) begin
       end else begin
           dat_out_bypass_data[287:280] <= 'bx;
       // VCS coverage on
       end
end
always @(posedge nvdla_core_clk) begin
       if ((dat_out_bypass_p0_vld_w & dat_out_bypass_mask_w[36]) == 1'b1) begin
           dat_out_bypass_data[295:288] <= dat_out_bypass_data_w[295:288];
       // VCS coverage off
       end else if ((dat_out_bypass_p0_vld_w & dat_out_bypass_mask_w[36]) == 1'b0) begin
       end else begin
           dat_out_bypass_data[295:288] <= 'bx;
       // VCS coverage on
       end
end
always @(posedge nvdla_core_clk) begin
       if ((dat_out_bypass_p0_vld_w & dat_out_bypass_mask_w[37]) == 1'b1) begin
           dat_out_bypass_data[303:296] <= dat_out_bypass_data_w[303:296];
       // VCS coverage off
       end else if ((dat_out_bypass_p0_vld_w & dat_out_bypass_mask_w[37]) == 1'b0) begin
       end else begin
           dat_out_bypass_data[303:296] <= 'bx;
       // VCS coverage on
       end
end
always @(posedge nvdla_core_clk) begin
       if ((dat_out_bypass_p0_vld_w & dat_out_bypass_mask_w[38]) == 1'b1) begin
           dat_out_bypass_data[311:304] <= dat_out_bypass_data_w[311:304];
       // VCS coverage off
       end else if ((dat_out_bypass_p0_vld_w & dat_out_bypass_mask_w[38]) == 1'b0) begin
       end else begin
           dat_out_bypass_data[311:304] <= 'bx;
       // VCS coverage on
       end
end
always @(posedge nvdla_core_clk) begin
       if ((dat_out_bypass_p0_vld_w & dat_out_bypass_mask_w[39]) == 1'b1) begin
           dat_out_bypass_data[319:312] <= dat_out_bypass_data_w[319:312];
       // VCS coverage off
       end else if ((dat_out_bypass_p0_vld_w & dat_out_bypass_mask_w[39]) == 1'b0) begin
       end else begin
           dat_out_bypass_data[319:312] <= 'bx;
       // VCS coverage on
       end
end
always @(posedge nvdla_core_clk) begin
       if ((dat_out_bypass_p0_vld_w & dat_out_bypass_mask_w[40]) == 1'b1) begin
           dat_out_bypass_data[327:320] <= dat_out_bypass_data_w[327:320];
       // VCS coverage off
       end else if ((dat_out_bypass_p0_vld_w & dat_out_bypass_mask_w[40]) == 1'b0) begin
       end else begin
           dat_out_bypass_data[327:320] <= 'bx;
       // VCS coverage on
       end
end
always @(posedge nvdla_core_clk) begin
       if ((dat_out_bypass_p0_vld_w & dat_out_bypass_mask_w[41]) == 1'b1) begin
           dat_out_bypass_data[335:328] <= dat_out_bypass_data_w[335:328];
       // VCS coverage off
       end else if ((dat_out_bypass_p0_vld_w & dat_out_bypass_mask_w[41]) == 1'b0) begin
       end else begin
           dat_out_bypass_data[335:328] <= 'bx;
       // VCS coverage on
       end
end
always @(posedge nvdla_core_clk) begin
       if ((dat_out_bypass_p0_vld_w & dat_out_bypass_mask_w[42]) == 1'b1) begin
           dat_out_bypass_data[343:336] <= dat_out_bypass_data_w[343:336];
       // VCS coverage off
       end else if ((dat_out_bypass_p0_vld_w & dat_out_bypass_mask_w[42]) == 1'b0) begin
       end else begin
           dat_out_bypass_data[343:336] <= 'bx;
       // VCS coverage on
       end
end
always @(posedge nvdla_core_clk) begin
       if ((dat_out_bypass_p0_vld_w & dat_out_bypass_mask_w[43]) == 1'b1) begin
           dat_out_bypass_data[351:344] <= dat_out_bypass_data_w[351:344];
       // VCS coverage off
       end else if ((dat_out_bypass_p0_vld_w & dat_out_bypass_mask_w[43]) == 1'b0) begin
       end else begin
           dat_out_bypass_data[351:344] <= 'bx;
       // VCS coverage on
       end
end
always @(posedge nvdla_core_clk) begin
       if ((dat_out_bypass_p0_vld_w & dat_out_bypass_mask_w[44]) == 1'b1) begin
           dat_out_bypass_data[359:352] <= dat_out_bypass_data_w[359:352];
       // VCS coverage off
       end else if ((dat_out_bypass_p0_vld_w & dat_out_bypass_mask_w[44]) == 1'b0) begin
       end else begin
           dat_out_bypass_data[359:352] <= 'bx;
       // VCS coverage on
       end
end
always @(posedge nvdla_core_clk) begin
       if ((dat_out_bypass_p0_vld_w & dat_out_bypass_mask_w[45]) == 1'b1) begin
           dat_out_bypass_data[367:360] <= dat_out_bypass_data_w[367:360];
       // VCS coverage off
       end else if ((dat_out_bypass_p0_vld_w & dat_out_bypass_mask_w[45]) == 1'b0) begin
       end else begin
           dat_out_bypass_data[367:360] <= 'bx;
       // VCS coverage on
       end
end
always @(posedge nvdla_core_clk) begin
       if ((dat_out_bypass_p0_vld_w & dat_out_bypass_mask_w[46]) == 1'b1) begin
           dat_out_bypass_data[375:368] <= dat_out_bypass_data_w[375:368];
       // VCS coverage off
       end else if ((dat_out_bypass_p0_vld_w & dat_out_bypass_mask_w[46]) == 1'b0) begin
       end else begin
           dat_out_bypass_data[375:368] <= 'bx;
       // VCS coverage on
       end
end
always @(posedge nvdla_core_clk) begin
       if ((dat_out_bypass_p0_vld_w & dat_out_bypass_mask_w[47]) == 1'b1) begin
           dat_out_bypass_data[383:376] <= dat_out_bypass_data_w[383:376];
       // VCS coverage off
       end else if ((dat_out_bypass_p0_vld_w & dat_out_bypass_mask_w[47]) == 1'b0) begin
       end else begin
           dat_out_bypass_data[383:376] <= 'bx;
       // VCS coverage on
       end
end
always @(posedge nvdla_core_clk) begin
       if ((dat_out_bypass_p0_vld_w & dat_out_bypass_mask_w[48]) == 1'b1) begin
           dat_out_bypass_data[391:384] <= dat_out_bypass_data_w[391:384];
       // VCS coverage off
       end else if ((dat_out_bypass_p0_vld_w & dat_out_bypass_mask_w[48]) == 1'b0) begin
       end else begin
           dat_out_bypass_data[391:384] <= 'bx;
       // VCS coverage on
       end
end
always @(posedge nvdla_core_clk) begin
       if ((dat_out_bypass_p0_vld_w & dat_out_bypass_mask_w[49]) == 1'b1) begin
           dat_out_bypass_data[399:392] <= dat_out_bypass_data_w[399:392];
       // VCS coverage off
       end else if ((dat_out_bypass_p0_vld_w & dat_out_bypass_mask_w[49]) == 1'b0) begin
       end else begin
           dat_out_bypass_data[399:392] <= 'bx;
       // VCS coverage on
       end
end
always @(posedge nvdla_core_clk) begin
       if ((dat_out_bypass_p0_vld_w & dat_out_bypass_mask_w[50]) == 1'b1) begin
           dat_out_bypass_data[407:400] <= dat_out_bypass_data_w[407:400];
       // VCS coverage off
       end else if ((dat_out_bypass_p0_vld_w & dat_out_bypass_mask_w[50]) == 1'b0) begin
       end else begin
           dat_out_bypass_data[407:400] <= 'bx;
       // VCS coverage on
       end
end
always @(posedge nvdla_core_clk) begin
       if ((dat_out_bypass_p0_vld_w & dat_out_bypass_mask_w[51]) == 1'b1) begin
           dat_out_bypass_data[415:408] <= dat_out_bypass_data_w[415:408];
       // VCS coverage off
       end else if ((dat_out_bypass_p0_vld_w & dat_out_bypass_mask_w[51]) == 1'b0) begin
       end else begin
           dat_out_bypass_data[415:408] <= 'bx;
       // VCS coverage on
       end
end
always @(posedge nvdla_core_clk) begin
       if ((dat_out_bypass_p0_vld_w & dat_out_bypass_mask_w[52]) == 1'b1) begin
           dat_out_bypass_data[423:416] <= dat_out_bypass_data_w[423:416];
       // VCS coverage off
       end else if ((dat_out_bypass_p0_vld_w & dat_out_bypass_mask_w[52]) == 1'b0) begin
       end else begin
           dat_out_bypass_data[423:416] <= 'bx;
       // VCS coverage on
       end
end
always @(posedge nvdla_core_clk) begin
       if ((dat_out_bypass_p0_vld_w & dat_out_bypass_mask_w[53]) == 1'b1) begin
           dat_out_bypass_data[431:424] <= dat_out_bypass_data_w[431:424];
       // VCS coverage off
       end else if ((dat_out_bypass_p0_vld_w & dat_out_bypass_mask_w[53]) == 1'b0) begin
       end else begin
           dat_out_bypass_data[431:424] <= 'bx;
       // VCS coverage on
       end
end
always @(posedge nvdla_core_clk) begin
       if ((dat_out_bypass_p0_vld_w & dat_out_bypass_mask_w[54]) == 1'b1) begin
           dat_out_bypass_data[439:432] <= dat_out_bypass_data_w[439:432];
       // VCS coverage off
       end else if ((dat_out_bypass_p0_vld_w & dat_out_bypass_mask_w[54]) == 1'b0) begin
       end else begin
           dat_out_bypass_data[439:432] <= 'bx;
       // VCS coverage on
       end
end
always @(posedge nvdla_core_clk) begin
       if ((dat_out_bypass_p0_vld_w & dat_out_bypass_mask_w[55]) == 1'b1) begin
           dat_out_bypass_data[447:440] <= dat_out_bypass_data_w[447:440];
       // VCS coverage off
       end else if ((dat_out_bypass_p0_vld_w & dat_out_bypass_mask_w[55]) == 1'b0) begin
       end else begin
           dat_out_bypass_data[447:440] <= 'bx;
       // VCS coverage on
       end
end
always @(posedge nvdla_core_clk) begin
       if ((dat_out_bypass_p0_vld_w & dat_out_bypass_mask_w[56]) == 1'b1) begin
           dat_out_bypass_data[455:448] <= dat_out_bypass_data_w[455:448];
       // VCS coverage off
       end else if ((dat_out_bypass_p0_vld_w & dat_out_bypass_mask_w[56]) == 1'b0) begin
       end else begin
           dat_out_bypass_data[455:448] <= 'bx;
       // VCS coverage on
       end
end
always @(posedge nvdla_core_clk) begin
       if ((dat_out_bypass_p0_vld_w & dat_out_bypass_mask_w[57]) == 1'b1) begin
           dat_out_bypass_data[463:456] <= dat_out_bypass_data_w[463:456];
       // VCS coverage off
       end else if ((dat_out_bypass_p0_vld_w & dat_out_bypass_mask_w[57]) == 1'b0) begin
       end else begin
           dat_out_bypass_data[463:456] <= 'bx;
       // VCS coverage on
       end
end
always @(posedge nvdla_core_clk) begin
       if ((dat_out_bypass_p0_vld_w & dat_out_bypass_mask_w[58]) == 1'b1) begin
           dat_out_bypass_data[471:464] <= dat_out_bypass_data_w[471:464];
       // VCS coverage off
       end else if ((dat_out_bypass_p0_vld_w & dat_out_bypass_mask_w[58]) == 1'b0) begin
       end else begin
           dat_out_bypass_data[471:464] <= 'bx;
       // VCS coverage on
       end
end
always @(posedge nvdla_core_clk) begin
       if ((dat_out_bypass_p0_vld_w & dat_out_bypass_mask_w[59]) == 1'b1) begin
           dat_out_bypass_data[479:472] <= dat_out_bypass_data_w[479:472];
       // VCS coverage off
       end else if ((dat_out_bypass_p0_vld_w & dat_out_bypass_mask_w[59]) == 1'b0) begin
       end else begin
           dat_out_bypass_data[479:472] <= 'bx;
       // VCS coverage on
       end
end
always @(posedge nvdla_core_clk) begin
       if ((dat_out_bypass_p0_vld_w & dat_out_bypass_mask_w[60]) == 1'b1) begin
           dat_out_bypass_data[487:480] <= dat_out_bypass_data_w[487:480];
       // VCS coverage off
       end else if ((dat_out_bypass_p0_vld_w & dat_out_bypass_mask_w[60]) == 1'b0) begin
       end else begin
           dat_out_bypass_data[487:480] <= 'bx;
       // VCS coverage on
       end
end
always @(posedge nvdla_core_clk) begin
       if ((dat_out_bypass_p0_vld_w & dat_out_bypass_mask_w[61]) == 1'b1) begin
           dat_out_bypass_data[495:488] <= dat_out_bypass_data_w[495:488];
       // VCS coverage off
       end else if ((dat_out_bypass_p0_vld_w & dat_out_bypass_mask_w[61]) == 1'b0) begin
       end else begin
           dat_out_bypass_data[495:488] <= 'bx;
       // VCS coverage on
       end
end
always @(posedge nvdla_core_clk) begin
       if ((dat_out_bypass_p0_vld_w & dat_out_bypass_mask_w[62]) == 1'b1) begin
           dat_out_bypass_data[503:496] <= dat_out_bypass_data_w[503:496];
       // VCS coverage off
       end else if ((dat_out_bypass_p0_vld_w & dat_out_bypass_mask_w[62]) == 1'b0) begin
       end else begin
           dat_out_bypass_data[503:496] <= 'bx;
       // VCS coverage on
       end
end
always @(posedge nvdla_core_clk) begin
       if ((dat_out_bypass_p0_vld_w & dat_out_bypass_mask_w[63]) == 1'b1) begin
           dat_out_bypass_data[511:504] <= dat_out_bypass_data_w[511:504];
       // VCS coverage off
       end else if ((dat_out_bypass_p0_vld_w & dat_out_bypass_mask_w[63]) == 1'b0) begin
       end else begin
           dat_out_bypass_data[511:504] <= 'bx;
       // VCS coverage on
       end
end

//| eperl: generated_end (DO NOT EDIT ABOVE)

assign dat_out_wg_data = {512{1'b0}};
assign dat_out_wg_mask = {64{1'b0}};
//////////////////////////////////////////////////////////////
///// finial registers                                   /////
//////////////////////////////////////////////////////////////
assign dat_out_data = is_winograd_d1[20] ? dat_out_wg_data : dat_out_bypass_data;
assign dat_out_mask = ~dat_out_pvld ? 'b0 : is_winograd_d1[21] ? dat_out_wg_mask : dat_out_bypass_mask;
//: my $kk=64;
//: &eperl::flop("-nodeclare   -rval \"1'b0\"   -d \"dat_out_pvld\" -q dl_out_pvld");
//: &eperl::flop("-nodeclare   -rval \"{${kk}{1'b0}}\"  -en \"dat_out_pvld | dl_out_pvld\" -d \"dat_out_mask\" -q dl_out_mask");
//: &eperl::flop("-nodeclare   -rval \"{9{1'b0}}\"  -en \"dat_out_pvld\" -d \"dat_out_flag\" -q dl_out_flag");
//: my $i;
//: my $b0;
//: my $b1;
//: my $kk= 8;
//: for($i = 0; $i < 64; $i ++) {
//: $b0 = $i * 8;
//: $b1 = $i * 8 + 7;
//: &eperl::flop("-wid ${kk}  -norst -en \"dat_out_mask[$i]\" -d \"dat_out_data[${b1}:${b0}]\" -q dl_out_data${i}");
//: }
//: print "\n\n\n";
//| eperl: generated_beg (DO NOT EDIT BELOW)
always @(posedge nvdla_core_clk) begin
   if (!nvdla_core_rstn) begin
       dl_out_pvld <= 1'b0;
   end else begin
       dl_out_pvld <= dat_out_pvld;
   end
end
always @(posedge nvdla_core_clk) begin
   if (!nvdla_core_rstn) begin
       dl_out_mask <= {64{1'b0}};
   end else begin
       if ((dat_out_pvld | dl_out_pvld) == 1'b1) begin
           dl_out_mask <= dat_out_mask;
       // VCS coverage off
       end else if ((dat_out_pvld | dl_out_pvld) == 1'b0) begin
       end else begin
           dl_out_mask <= 'bx;
       // VCS coverage on
       end
   end
end
always @(posedge nvdla_core_clk) begin
   if (!nvdla_core_rstn) begin
       dl_out_flag <= {9{1'b0}};
   end else begin
       if ((dat_out_pvld) == 1'b1) begin
           dl_out_flag <= dat_out_flag;
       // VCS coverage off
       end else if ((dat_out_pvld) == 1'b0) begin
       end else begin
           dl_out_flag <= 'bx;
       // VCS coverage on
       end
   end
end
reg [7:0] dl_out_data0;
always @(posedge nvdla_core_clk) begin
       if ((dat_out_mask[0]) == 1'b1) begin
           dl_out_data0 <= dat_out_data[7:0];
       // VCS coverage off
       end else if ((dat_out_mask[0]) == 1'b0) begin
       end else begin
           dl_out_data0 <= 'bx;
       // VCS coverage on
       end
end
reg [7:0] dl_out_data1;
always @(posedge nvdla_core_clk) begin
       if ((dat_out_mask[1]) == 1'b1) begin
           dl_out_data1 <= dat_out_data[15:8];
       // VCS coverage off
       end else if ((dat_out_mask[1]) == 1'b0) begin
       end else begin
           dl_out_data1 <= 'bx;
       // VCS coverage on
       end
end
reg [7:0] dl_out_data2;
always @(posedge nvdla_core_clk) begin
       if ((dat_out_mask[2]) == 1'b1) begin
           dl_out_data2 <= dat_out_data[23:16];
       // VCS coverage off
       end else if ((dat_out_mask[2]) == 1'b0) begin
       end else begin
           dl_out_data2 <= 'bx;
       // VCS coverage on
       end
end
reg [7:0] dl_out_data3;
always @(posedge nvdla_core_clk) begin
       if ((dat_out_mask[3]) == 1'b1) begin
           dl_out_data3 <= dat_out_data[31:24];
       // VCS coverage off
       end else if ((dat_out_mask[3]) == 1'b0) begin
       end else begin
           dl_out_data3 <= 'bx;
       // VCS coverage on
       end
end
reg [7:0] dl_out_data4;
always @(posedge nvdla_core_clk) begin
       if ((dat_out_mask[4]) == 1'b1) begin
           dl_out_data4 <= dat_out_data[39:32];
       // VCS coverage off
       end else if ((dat_out_mask[4]) == 1'b0) begin
       end else begin
           dl_out_data4 <= 'bx;
       // VCS coverage on
       end
end
reg [7:0] dl_out_data5;
always @(posedge nvdla_core_clk) begin
       if ((dat_out_mask[5]) == 1'b1) begin
           dl_out_data5 <= dat_out_data[47:40];
       // VCS coverage off
       end else if ((dat_out_mask[5]) == 1'b0) begin
       end else begin
           dl_out_data5 <= 'bx;
       // VCS coverage on
       end
end
reg [7:0] dl_out_data6;
always @(posedge nvdla_core_clk) begin
       if ((dat_out_mask[6]) == 1'b1) begin
           dl_out_data6 <= dat_out_data[55:48];
       // VCS coverage off
       end else if ((dat_out_mask[6]) == 1'b0) begin
       end else begin
           dl_out_data6 <= 'bx;
       // VCS coverage on
       end
end
reg [7:0] dl_out_data7;
always @(posedge nvdla_core_clk) begin
       if ((dat_out_mask[7]) == 1'b1) begin
           dl_out_data7 <= dat_out_data[63:56];
       // VCS coverage off
       end else if ((dat_out_mask[7]) == 1'b0) begin
       end else begin
           dl_out_data7 <= 'bx;
       // VCS coverage on
       end
end
reg [7:0] dl_out_data8;
always @(posedge nvdla_core_clk) begin
       if ((dat_out_mask[8]) == 1'b1) begin
           dl_out_data8 <= dat_out_data[71:64];
       // VCS coverage off
       end else if ((dat_out_mask[8]) == 1'b0) begin
       end else begin
           dl_out_data8 <= 'bx;
       // VCS coverage on
       end
end
reg [7:0] dl_out_data9;
always @(posedge nvdla_core_clk) begin
       if ((dat_out_mask[9]) == 1'b1) begin
           dl_out_data9 <= dat_out_data[79:72];
       // VCS coverage off
       end else if ((dat_out_mask[9]) == 1'b0) begin
       end else begin
           dl_out_data9 <= 'bx;
       // VCS coverage on
       end
end
reg [7:0] dl_out_data10;
always @(posedge nvdla_core_clk) begin
       if ((dat_out_mask[10]) == 1'b1) begin
           dl_out_data10 <= dat_out_data[87:80];
       // VCS coverage off
       end else if ((dat_out_mask[10]) == 1'b0) begin
       end else begin
           dl_out_data10 <= 'bx;
       // VCS coverage on
       end
end
reg [7:0] dl_out_data11;
always @(posedge nvdla_core_clk) begin
       if ((dat_out_mask[11]) == 1'b1) begin
           dl_out_data11 <= dat_out_data[95:88];
       // VCS coverage off
       end else if ((dat_out_mask[11]) == 1'b0) begin
       end else begin
           dl_out_data11 <= 'bx;
       // VCS coverage on
       end
end
reg [7:0] dl_out_data12;
always @(posedge nvdla_core_clk) begin
       if ((dat_out_mask[12]) == 1'b1) begin
           dl_out_data12 <= dat_out_data[103:96];
       // VCS coverage off
       end else if ((dat_out_mask[12]) == 1'b0) begin
       end else begin
           dl_out_data12 <= 'bx;
       // VCS coverage on
       end
end
reg [7:0] dl_out_data13;
always @(posedge nvdla_core_clk) begin
       if ((dat_out_mask[13]) == 1'b1) begin
           dl_out_data13 <= dat_out_data[111:104];
       // VCS coverage off
       end else if ((dat_out_mask[13]) == 1'b0) begin
       end else begin
           dl_out_data13 <= 'bx;
       // VCS coverage on
       end
end
reg [7:0] dl_out_data14;
always @(posedge nvdla_core_clk) begin
       if ((dat_out_mask[14]) == 1'b1) begin
           dl_out_data14 <= dat_out_data[119:112];
       // VCS coverage off
       end else if ((dat_out_mask[14]) == 1'b0) begin
       end else begin
           dl_out_data14 <= 'bx;
       // VCS coverage on
       end
end
reg [7:0] dl_out_data15;
always @(posedge nvdla_core_clk) begin
       if ((dat_out_mask[15]) == 1'b1) begin
           dl_out_data15 <= dat_out_data[127:120];
       // VCS coverage off
       end else if ((dat_out_mask[15]) == 1'b0) begin
       end else begin
           dl_out_data15 <= 'bx;
       // VCS coverage on
       end
end
reg [7:0] dl_out_data16;
always @(posedge nvdla_core_clk) begin
       if ((dat_out_mask[16]) == 1'b1) begin
           dl_out_data16 <= dat_out_data[135:128];
       // VCS coverage off
       end else if ((dat_out_mask[16]) == 1'b0) begin
       end else begin
           dl_out_data16 <= 'bx;
       // VCS coverage on
       end
end
reg [7:0] dl_out_data17;
always @(posedge nvdla_core_clk) begin
       if ((dat_out_mask[17]) == 1'b1) begin
           dl_out_data17 <= dat_out_data[143:136];
       // VCS coverage off
       end else if ((dat_out_mask[17]) == 1'b0) begin
       end else begin
           dl_out_data17 <= 'bx;
       // VCS coverage on
       end
end
reg [7:0] dl_out_data18;
always @(posedge nvdla_core_clk) begin
       if ((dat_out_mask[18]) == 1'b1) begin
           dl_out_data18 <= dat_out_data[151:144];
       // VCS coverage off
       end else if ((dat_out_mask[18]) == 1'b0) begin
       end else begin
           dl_out_data18 <= 'bx;
       // VCS coverage on
       end
end
reg [7:0] dl_out_data19;
always @(posedge nvdla_core_clk) begin
       if ((dat_out_mask[19]) == 1'b1) begin
           dl_out_data19 <= dat_out_data[159:152];
       // VCS coverage off
       end else if ((dat_out_mask[19]) == 1'b0) begin
       end else begin
           dl_out_data19 <= 'bx;
       // VCS coverage on
       end
end
reg [7:0] dl_out_data20;
always @(posedge nvdla_core_clk) begin
       if ((dat_out_mask[20]) == 1'b1) begin
           dl_out_data20 <= dat_out_data[167:160];
       // VCS coverage off
       end else if ((dat_out_mask[20]) == 1'b0) begin
       end else begin
           dl_out_data20 <= 'bx;
       // VCS coverage on
       end
end
reg [7:0] dl_out_data21;
always @(posedge nvdla_core_clk) begin
       if ((dat_out_mask[21]) == 1'b1) begin
           dl_out_data21 <= dat_out_data[175:168];
       // VCS coverage off
       end else if ((dat_out_mask[21]) == 1'b0) begin
       end else begin
           dl_out_data21 <= 'bx;
       // VCS coverage on
       end
end
reg [7:0] dl_out_data22;
always @(posedge nvdla_core_clk) begin
       if ((dat_out_mask[22]) == 1'b1) begin
           dl_out_data22 <= dat_out_data[183:176];
       // VCS coverage off
       end else if ((dat_out_mask[22]) == 1'b0) begin
       end else begin
           dl_out_data22 <= 'bx;
       // VCS coverage on
       end
end
reg [7:0] dl_out_data23;
always @(posedge nvdla_core_clk) begin
       if ((dat_out_mask[23]) == 1'b1) begin
           dl_out_data23 <= dat_out_data[191:184];
       // VCS coverage off
       end else if ((dat_out_mask[23]) == 1'b0) begin
       end else begin
           dl_out_data23 <= 'bx;
       // VCS coverage on
       end
end
reg [7:0] dl_out_data24;
always @(posedge nvdla_core_clk) begin
       if ((dat_out_mask[24]) == 1'b1) begin
           dl_out_data24 <= dat_out_data[199:192];
       // VCS coverage off
       end else if ((dat_out_mask[24]) == 1'b0) begin
       end else begin
           dl_out_data24 <= 'bx;
       // VCS coverage on
       end
end
reg [7:0] dl_out_data25;
always @(posedge nvdla_core_clk) begin
       if ((dat_out_mask[25]) == 1'b1) begin
           dl_out_data25 <= dat_out_data[207:200];
       // VCS coverage off
       end else if ((dat_out_mask[25]) == 1'b0) begin
       end else begin
           dl_out_data25 <= 'bx;
       // VCS coverage on
       end
end
reg [7:0] dl_out_data26;
always @(posedge nvdla_core_clk) begin
       if ((dat_out_mask[26]) == 1'b1) begin
           dl_out_data26 <= dat_out_data[215:208];
       // VCS coverage off
       end else if ((dat_out_mask[26]) == 1'b0) begin
       end else begin
           dl_out_data26 <= 'bx;
       // VCS coverage on
       end
end
reg [7:0] dl_out_data27;
always @(posedge nvdla_core_clk) begin
       if ((dat_out_mask[27]) == 1'b1) begin
           dl_out_data27 <= dat_out_data[223:216];
       // VCS coverage off
       end else if ((dat_out_mask[27]) == 1'b0) begin
       end else begin
           dl_out_data27 <= 'bx;
       // VCS coverage on
       end
end
reg [7:0] dl_out_data28;
always @(posedge nvdla_core_clk) begin
       if ((dat_out_mask[28]) == 1'b1) begin
           dl_out_data28 <= dat_out_data[231:224];
       // VCS coverage off
       end else if ((dat_out_mask[28]) == 1'b0) begin
       end else begin
           dl_out_data28 <= 'bx;
       // VCS coverage on
       end
end
reg [7:0] dl_out_data29;
always @(posedge nvdla_core_clk) begin
       if ((dat_out_mask[29]) == 1'b1) begin
           dl_out_data29 <= dat_out_data[239:232];
       // VCS coverage off
       end else if ((dat_out_mask[29]) == 1'b0) begin
       end else begin
           dl_out_data29 <= 'bx;
       // VCS coverage on
       end
end
reg [7:0] dl_out_data30;
always @(posedge nvdla_core_clk) begin
       if ((dat_out_mask[30]) == 1'b1) begin
           dl_out_data30 <= dat_out_data[247:240];
       // VCS coverage off
       end else if ((dat_out_mask[30]) == 1'b0) begin
       end else begin
           dl_out_data30 <= 'bx;
       // VCS coverage on
       end
end
reg [7:0] dl_out_data31;
always @(posedge nvdla_core_clk) begin
       if ((dat_out_mask[31]) == 1'b1) begin
           dl_out_data31 <= dat_out_data[255:248];
       // VCS coverage off
       end else if ((dat_out_mask[31]) == 1'b0) begin
       end else begin
           dl_out_data31 <= 'bx;
       // VCS coverage on
       end
end
reg [7:0] dl_out_data32;
always @(posedge nvdla_core_clk) begin
       if ((dat_out_mask[32]) == 1'b1) begin
           dl_out_data32 <= dat_out_data[263:256];
       // VCS coverage off
       end else if ((dat_out_mask[32]) == 1'b0) begin
       end else begin
           dl_out_data32 <= 'bx;
       // VCS coverage on
       end
end
reg [7:0] dl_out_data33;
always @(posedge nvdla_core_clk) begin
       if ((dat_out_mask[33]) == 1'b1) begin
           dl_out_data33 <= dat_out_data[271:264];
       // VCS coverage off
       end else if ((dat_out_mask[33]) == 1'b0) begin
       end else begin
           dl_out_data33 <= 'bx;
       // VCS coverage on
       end
end
reg [7:0] dl_out_data34;
always @(posedge nvdla_core_clk) begin
       if ((dat_out_mask[34]) == 1'b1) begin
           dl_out_data34 <= dat_out_data[279:272];
       // VCS coverage off
       end else if ((dat_out_mask[34]) == 1'b0) begin
       end else begin
           dl_out_data34 <= 'bx;
       // VCS coverage on
       end
end
reg [7:0] dl_out_data35;
always @(posedge nvdla_core_clk) begin
       if ((dat_out_mask[35]) == 1'b1) begin
           dl_out_data35 <= dat_out_data[287:280];
       // VCS coverage off
       end else if ((dat_out_mask[35]) == 1'b0) begin
       end else begin
           dl_out_data35 <= 'bx;
       // VCS coverage on
       end
end
reg [7:0] dl_out_data36;
always @(posedge nvdla_core_clk) begin
       if ((dat_out_mask[36]) == 1'b1) begin
           dl_out_data36 <= dat_out_data[295:288];
       // VCS coverage off
       end else if ((dat_out_mask[36]) == 1'b0) begin
       end else begin
           dl_out_data36 <= 'bx;
       // VCS coverage on
       end
end
reg [7:0] dl_out_data37;
always @(posedge nvdla_core_clk) begin
       if ((dat_out_mask[37]) == 1'b1) begin
           dl_out_data37 <= dat_out_data[303:296];
       // VCS coverage off
       end else if ((dat_out_mask[37]) == 1'b0) begin
       end else begin
           dl_out_data37 <= 'bx;
       // VCS coverage on
       end
end
reg [7:0] dl_out_data38;
always @(posedge nvdla_core_clk) begin
       if ((dat_out_mask[38]) == 1'b1) begin
           dl_out_data38 <= dat_out_data[311:304];
       // VCS coverage off
       end else if ((dat_out_mask[38]) == 1'b0) begin
       end else begin
           dl_out_data38 <= 'bx;
       // VCS coverage on
       end
end
reg [7:0] dl_out_data39;
always @(posedge nvdla_core_clk) begin
       if ((dat_out_mask[39]) == 1'b1) begin
           dl_out_data39 <= dat_out_data[319:312];
       // VCS coverage off
       end else if ((dat_out_mask[39]) == 1'b0) begin
       end else begin
           dl_out_data39 <= 'bx;
       // VCS coverage on
       end
end
reg [7:0] dl_out_data40;
always @(posedge nvdla_core_clk) begin
       if ((dat_out_mask[40]) == 1'b1) begin
           dl_out_data40 <= dat_out_data[327:320];
       // VCS coverage off
       end else if ((dat_out_mask[40]) == 1'b0) begin
       end else begin
           dl_out_data40 <= 'bx;
       // VCS coverage on
       end
end
reg [7:0] dl_out_data41;
always @(posedge nvdla_core_clk) begin
       if ((dat_out_mask[41]) == 1'b1) begin
           dl_out_data41 <= dat_out_data[335:328];
       // VCS coverage off
       end else if ((dat_out_mask[41]) == 1'b0) begin
       end else begin
           dl_out_data41 <= 'bx;
       // VCS coverage on
       end
end
reg [7:0] dl_out_data42;
always @(posedge nvdla_core_clk) begin
       if ((dat_out_mask[42]) == 1'b1) begin
           dl_out_data42 <= dat_out_data[343:336];
       // VCS coverage off
       end else if ((dat_out_mask[42]) == 1'b0) begin
       end else begin
           dl_out_data42 <= 'bx;
       // VCS coverage on
       end
end
reg [7:0] dl_out_data43;
always @(posedge nvdla_core_clk) begin
       if ((dat_out_mask[43]) == 1'b1) begin
           dl_out_data43 <= dat_out_data[351:344];
       // VCS coverage off
       end else if ((dat_out_mask[43]) == 1'b0) begin
       end else begin
           dl_out_data43 <= 'bx;
       // VCS coverage on
       end
end
reg [7:0] dl_out_data44;
always @(posedge nvdla_core_clk) begin
       if ((dat_out_mask[44]) == 1'b1) begin
           dl_out_data44 <= dat_out_data[359:352];
       // VCS coverage off
       end else if ((dat_out_mask[44]) == 1'b0) begin
       end else begin
           dl_out_data44 <= 'bx;
       // VCS coverage on
       end
end
reg [7:0] dl_out_data45;
always @(posedge nvdla_core_clk) begin
       if ((dat_out_mask[45]) == 1'b1) begin
           dl_out_data45 <= dat_out_data[367:360];
       // VCS coverage off
       end else if ((dat_out_mask[45]) == 1'b0) begin
       end else begin
           dl_out_data45 <= 'bx;
       // VCS coverage on
       end
end
reg [7:0] dl_out_data46;
always @(posedge nvdla_core_clk) begin
       if ((dat_out_mask[46]) == 1'b1) begin
           dl_out_data46 <= dat_out_data[375:368];
       // VCS coverage off
       end else if ((dat_out_mask[46]) == 1'b0) begin
       end else begin
           dl_out_data46 <= 'bx;
       // VCS coverage on
       end
end
reg [7:0] dl_out_data47;
always @(posedge nvdla_core_clk) begin
       if ((dat_out_mask[47]) == 1'b1) begin
           dl_out_data47 <= dat_out_data[383:376];
       // VCS coverage off
       end else if ((dat_out_mask[47]) == 1'b0) begin
       end else begin
           dl_out_data47 <= 'bx;
       // VCS coverage on
       end
end
reg [7:0] dl_out_data48;
always @(posedge nvdla_core_clk) begin
       if ((dat_out_mask[48]) == 1'b1) begin
           dl_out_data48 <= dat_out_data[391:384];
       // VCS coverage off
       end else if ((dat_out_mask[48]) == 1'b0) begin
       end else begin
           dl_out_data48 <= 'bx;
       // VCS coverage on
       end
end
reg [7:0] dl_out_data49;
always @(posedge nvdla_core_clk) begin
       if ((dat_out_mask[49]) == 1'b1) begin
           dl_out_data49 <= dat_out_data[399:392];
       // VCS coverage off
       end else if ((dat_out_mask[49]) == 1'b0) begin
       end else begin
           dl_out_data49 <= 'bx;
       // VCS coverage on
       end
end
reg [7:0] dl_out_data50;
always @(posedge nvdla_core_clk) begin
       if ((dat_out_mask[50]) == 1'b1) begin
           dl_out_data50 <= dat_out_data[407:400];
       // VCS coverage off
       end else if ((dat_out_mask[50]) == 1'b0) begin
       end else begin
           dl_out_data50 <= 'bx;
       // VCS coverage on
       end
end
reg [7:0] dl_out_data51;
always @(posedge nvdla_core_clk) begin
       if ((dat_out_mask[51]) == 1'b1) begin
           dl_out_data51 <= dat_out_data[415:408];
       // VCS coverage off
       end else if ((dat_out_mask[51]) == 1'b0) begin
       end else begin
           dl_out_data51 <= 'bx;
       // VCS coverage on
       end
end
reg [7:0] dl_out_data52;
always @(posedge nvdla_core_clk) begin
       if ((dat_out_mask[52]) == 1'b1) begin
           dl_out_data52 <= dat_out_data[423:416];
       // VCS coverage off
       end else if ((dat_out_mask[52]) == 1'b0) begin
       end else begin
           dl_out_data52 <= 'bx;
       // VCS coverage on
       end
end
reg [7:0] dl_out_data53;
always @(posedge nvdla_core_clk) begin
       if ((dat_out_mask[53]) == 1'b1) begin
           dl_out_data53 <= dat_out_data[431:424];
       // VCS coverage off
       end else if ((dat_out_mask[53]) == 1'b0) begin
       end else begin
           dl_out_data53 <= 'bx;
       // VCS coverage on
       end
end
reg [7:0] dl_out_data54;
always @(posedge nvdla_core_clk) begin
       if ((dat_out_mask[54]) == 1'b1) begin
           dl_out_data54 <= dat_out_data[439:432];
       // VCS coverage off
       end else if ((dat_out_mask[54]) == 1'b0) begin
       end else begin
           dl_out_data54 <= 'bx;
       // VCS coverage on
       end
end
reg [7:0] dl_out_data55;
always @(posedge nvdla_core_clk) begin
       if ((dat_out_mask[55]) == 1'b1) begin
           dl_out_data55 <= dat_out_data[447:440];
       // VCS coverage off
       end else if ((dat_out_mask[55]) == 1'b0) begin
       end else begin
           dl_out_data55 <= 'bx;
       // VCS coverage on
       end
end
reg [7:0] dl_out_data56;
always @(posedge nvdla_core_clk) begin
       if ((dat_out_mask[56]) == 1'b1) begin
           dl_out_data56 <= dat_out_data[455:448];
       // VCS coverage off
       end else if ((dat_out_mask[56]) == 1'b0) begin
       end else begin
           dl_out_data56 <= 'bx;
       // VCS coverage on
       end
end
reg [7:0] dl_out_data57;
always @(posedge nvdla_core_clk) begin
       if ((dat_out_mask[57]) == 1'b1) begin
           dl_out_data57 <= dat_out_data[463:456];
       // VCS coverage off
       end else if ((dat_out_mask[57]) == 1'b0) begin
       end else begin
           dl_out_data57 <= 'bx;
       // VCS coverage on
       end
end
reg [7:0] dl_out_data58;
always @(posedge nvdla_core_clk) begin
       if ((dat_out_mask[58]) == 1'b1) begin
           dl_out_data58 <= dat_out_data[471:464];
       // VCS coverage off
       end else if ((dat_out_mask[58]) == 1'b0) begin
       end else begin
           dl_out_data58 <= 'bx;
       // VCS coverage on
       end
end
reg [7:0] dl_out_data59;
always @(posedge nvdla_core_clk) begin
       if ((dat_out_mask[59]) == 1'b1) begin
           dl_out_data59 <= dat_out_data[479:472];
       // VCS coverage off
       end else if ((dat_out_mask[59]) == 1'b0) begin
       end else begin
           dl_out_data59 <= 'bx;
       // VCS coverage on
       end
end
reg [7:0] dl_out_data60;
always @(posedge nvdla_core_clk) begin
       if ((dat_out_mask[60]) == 1'b1) begin
           dl_out_data60 <= dat_out_data[487:480];
       // VCS coverage off
       end else if ((dat_out_mask[60]) == 1'b0) begin
       end else begin
           dl_out_data60 <= 'bx;
       // VCS coverage on
       end
end
reg [7:0] dl_out_data61;
always @(posedge nvdla_core_clk) begin
       if ((dat_out_mask[61]) == 1'b1) begin
           dl_out_data61 <= dat_out_data[495:488];
       // VCS coverage off
       end else if ((dat_out_mask[61]) == 1'b0) begin
       end else begin
           dl_out_data61 <= 'bx;
       // VCS coverage on
       end
end
reg [7:0] dl_out_data62;
always @(posedge nvdla_core_clk) begin
       if ((dat_out_mask[62]) == 1'b1) begin
           dl_out_data62 <= dat_out_data[503:496];
       // VCS coverage off
       end else if ((dat_out_mask[62]) == 1'b0) begin
       end else begin
           dl_out_data62 <= 'bx;
       // VCS coverage on
       end
end
reg [7:0] dl_out_data63;
always @(posedge nvdla_core_clk) begin
       if ((dat_out_mask[63]) == 1'b1) begin
           dl_out_data63 <= dat_out_data[511:504];
       // VCS coverage off
       end else if ((dat_out_mask[63]) == 1'b0) begin
       end else begin
           dl_out_data63 <= 'bx;
       // VCS coverage on
       end
end




//| eperl: generated_end (DO NOT EDIT ABOVE)
//////////////////////////////////////////////////////////////
///// registers for retiming                             /////
//////////////////////////////////////////////////////////////
assign sc2mac_dat_pd_w = ~dl_out_pvld ? 9'b0 : dl_out_flag;
//: &eperl::flop("-nodeclare   -rval \"1'b0\"   -d \"dl_out_pvld\" -q dl_out_pvld_d1");
//: my $kk=64;
//: &eperl::flop("-nodeclare   -rval \"1'b0\"   -d \"dl_out_pvld\" -q sc2mac_dat_a_pvld");
//: &eperl::flop("-nodeclare   -rval \"1'b0\"   -d \"dl_out_pvld\" -q sc2mac_dat_b_pvld");
//: &eperl::flop("-nodeclare   -rval \"{9{1'b0}}\"  -en \"dl_out_pvld | dl_out_pvld_d1\" -d \"sc2mac_dat_pd_w\" -q sc2mac_dat_a_pd");
//: &eperl::flop("-nodeclare   -rval \"{9{1'b0}}\"  -en \"dl_out_pvld | dl_out_pvld_d1\" -d \"sc2mac_dat_pd_w\" -q sc2mac_dat_b_pd");
//: &eperl::flop("-nodeclare   -rval \"{${kk}{1'b0}}\"  -en \"dl_out_pvld | dl_out_pvld_d1\" -d \"dl_out_mask\" -q sc2mac_dat_a_mask");
//: &eperl::flop("-nodeclare   -rval \"{${kk}{1'b0}}\"  -en \"dl_out_pvld | dl_out_pvld_d1\" -d \"dl_out_mask\" -q sc2mac_dat_b_mask");
//: my $i;
//: for($i = 0; $i < 64; $i ++) {
//: &eperl::flop("-wid 8 -norst -en \"dl_out_mask[${i}]\" -d \"dl_out_data${i}\" -q sc2mac_dat_a_data${i}");
//: }
//: print "\n\n";
//:
//: for($i = 0; $i < 64; $i ++) {
//: &eperl::flop("-wid 8  -norst -en \"dl_out_mask[${i}]\" -d \"dl_out_data${i}\" -q sc2mac_dat_b_data${i}");
//: }
//: print "\n\n";
//| eperl: generated_beg (DO NOT EDIT BELOW)
always @(posedge nvdla_core_clk) begin
   if (!nvdla_core_rstn) begin
       dl_out_pvld_d1 <= 1'b0;
   end else begin
       dl_out_pvld_d1 <= dl_out_pvld;
   end
end
always @(posedge nvdla_core_clk) begin
   if (!nvdla_core_rstn) begin
       sc2mac_dat_a_pvld <= 1'b0;
   end else begin
       sc2mac_dat_a_pvld <= dl_out_pvld;
   end
end
always @(posedge nvdla_core_clk) begin
   if (!nvdla_core_rstn) begin
       sc2mac_dat_b_pvld <= 1'b0;
   end else begin
       sc2mac_dat_b_pvld <= dl_out_pvld;
   end
end
always @(posedge nvdla_core_clk) begin
   if (!nvdla_core_rstn) begin
       sc2mac_dat_a_pd <= {9{1'b0}};
   end else begin
       if ((dl_out_pvld | dl_out_pvld_d1) == 1'b1) begin
           sc2mac_dat_a_pd <= sc2mac_dat_pd_w;
       // VCS coverage off
       end else if ((dl_out_pvld | dl_out_pvld_d1) == 1'b0) begin
       end else begin
           sc2mac_dat_a_pd <= 'bx;
       // VCS coverage on
       end
   end
end
always @(posedge nvdla_core_clk) begin
   if (!nvdla_core_rstn) begin
       sc2mac_dat_b_pd <= {9{1'b0}};
   end else begin
       if ((dl_out_pvld | dl_out_pvld_d1) == 1'b1) begin
           sc2mac_dat_b_pd <= sc2mac_dat_pd_w;
       // VCS coverage off
       end else if ((dl_out_pvld | dl_out_pvld_d1) == 1'b0) begin
       end else begin
           sc2mac_dat_b_pd <= 'bx;
       // VCS coverage on
       end
   end
end
always @(posedge nvdla_core_clk) begin
   if (!nvdla_core_rstn) begin
       sc2mac_dat_a_mask <= {64{1'b0}};
   end else begin
       if ((dl_out_pvld | dl_out_pvld_d1) == 1'b1) begin
           sc2mac_dat_a_mask <= dl_out_mask;
       // VCS coverage off
       end else if ((dl_out_pvld | dl_out_pvld_d1) == 1'b0) begin
       end else begin
           sc2mac_dat_a_mask <= 'bx;
       // VCS coverage on
       end
   end
end
always @(posedge nvdla_core_clk) begin
   if (!nvdla_core_rstn) begin
       sc2mac_dat_b_mask <= {64{1'b0}};
   end else begin
       if ((dl_out_pvld | dl_out_pvld_d1) == 1'b1) begin
           sc2mac_dat_b_mask <= dl_out_mask;
       // VCS coverage off
       end else if ((dl_out_pvld | dl_out_pvld_d1) == 1'b0) begin
       end else begin
           sc2mac_dat_b_mask <= 'bx;
       // VCS coverage on
       end
   end
end
reg [7:0] sc2mac_dat_a_data0;
always @(posedge nvdla_core_clk) begin
       if ((dl_out_mask[0]) == 1'b1) begin
           sc2mac_dat_a_data0 <= dl_out_data0;
       // VCS coverage off
       end else if ((dl_out_mask[0]) == 1'b0) begin
       end else begin
           sc2mac_dat_a_data0 <= 'bx;
       // VCS coverage on
       end
end
reg [7:0] sc2mac_dat_a_data1;
always @(posedge nvdla_core_clk) begin
       if ((dl_out_mask[1]) == 1'b1) begin
           sc2mac_dat_a_data1 <= dl_out_data1;
       // VCS coverage off
       end else if ((dl_out_mask[1]) == 1'b0) begin
       end else begin
           sc2mac_dat_a_data1 <= 'bx;
       // VCS coverage on
       end
end
reg [7:0] sc2mac_dat_a_data2;
always @(posedge nvdla_core_clk) begin
       if ((dl_out_mask[2]) == 1'b1) begin
           sc2mac_dat_a_data2 <= dl_out_data2;
       // VCS coverage off
       end else if ((dl_out_mask[2]) == 1'b0) begin
       end else begin
           sc2mac_dat_a_data2 <= 'bx;
       // VCS coverage on
       end
end
reg [7:0] sc2mac_dat_a_data3;
always @(posedge nvdla_core_clk) begin
       if ((dl_out_mask[3]) == 1'b1) begin
           sc2mac_dat_a_data3 <= dl_out_data3;
       // VCS coverage off
       end else if ((dl_out_mask[3]) == 1'b0) begin
       end else begin
           sc2mac_dat_a_data3 <= 'bx;
       // VCS coverage on
       end
end
reg [7:0] sc2mac_dat_a_data4;
always @(posedge nvdla_core_clk) begin
       if ((dl_out_mask[4]) == 1'b1) begin
           sc2mac_dat_a_data4 <= dl_out_data4;
       // VCS coverage off
       end else if ((dl_out_mask[4]) == 1'b0) begin
       end else begin
           sc2mac_dat_a_data4 <= 'bx;
       // VCS coverage on
       end
end
reg [7:0] sc2mac_dat_a_data5;
always @(posedge nvdla_core_clk) begin
       if ((dl_out_mask[5]) == 1'b1) begin
           sc2mac_dat_a_data5 <= dl_out_data5;
       // VCS coverage off
       end else if ((dl_out_mask[5]) == 1'b0) begin
       end else begin
           sc2mac_dat_a_data5 <= 'bx;
       // VCS coverage on
       end
end
reg [7:0] sc2mac_dat_a_data6;
always @(posedge nvdla_core_clk) begin
       if ((dl_out_mask[6]) == 1'b1) begin
           sc2mac_dat_a_data6 <= dl_out_data6;
       // VCS coverage off
       end else if ((dl_out_mask[6]) == 1'b0) begin
       end else begin
           sc2mac_dat_a_data6 <= 'bx;
       // VCS coverage on
       end
end
reg [7:0] sc2mac_dat_a_data7;
always @(posedge nvdla_core_clk) begin
       if ((dl_out_mask[7]) == 1'b1) begin
           sc2mac_dat_a_data7 <= dl_out_data7;
       // VCS coverage off
       end else if ((dl_out_mask[7]) == 1'b0) begin
       end else begin
           sc2mac_dat_a_data7 <= 'bx;
       // VCS coverage on
       end
end
reg [7:0] sc2mac_dat_a_data8;
always @(posedge nvdla_core_clk) begin
       if ((dl_out_mask[8]) == 1'b1) begin
           sc2mac_dat_a_data8 <= dl_out_data8;
       // VCS coverage off
       end else if ((dl_out_mask[8]) == 1'b0) begin
       end else begin
           sc2mac_dat_a_data8 <= 'bx;
       // VCS coverage on
       end
end
reg [7:0] sc2mac_dat_a_data9;
always @(posedge nvdla_core_clk) begin
       if ((dl_out_mask[9]) == 1'b1) begin
           sc2mac_dat_a_data9 <= dl_out_data9;
       // VCS coverage off
       end else if ((dl_out_mask[9]) == 1'b0) begin
       end else begin
           sc2mac_dat_a_data9 <= 'bx;
       // VCS coverage on
       end
end
reg [7:0] sc2mac_dat_a_data10;
always @(posedge nvdla_core_clk) begin
       if ((dl_out_mask[10]) == 1'b1) begin
           sc2mac_dat_a_data10 <= dl_out_data10;
       // VCS coverage off
       end else if ((dl_out_mask[10]) == 1'b0) begin
       end else begin
           sc2mac_dat_a_data10 <= 'bx;
       // VCS coverage on
       end
end
reg [7:0] sc2mac_dat_a_data11;
always @(posedge nvdla_core_clk) begin
       if ((dl_out_mask[11]) == 1'b1) begin
           sc2mac_dat_a_data11 <= dl_out_data11;
       // VCS coverage off
       end else if ((dl_out_mask[11]) == 1'b0) begin
       end else begin
           sc2mac_dat_a_data11 <= 'bx;
       // VCS coverage on
       end
end
reg [7:0] sc2mac_dat_a_data12;
always @(posedge nvdla_core_clk) begin
       if ((dl_out_mask[12]) == 1'b1) begin
           sc2mac_dat_a_data12 <= dl_out_data12;
       // VCS coverage off
       end else if ((dl_out_mask[12]) == 1'b0) begin
       end else begin
           sc2mac_dat_a_data12 <= 'bx;
       // VCS coverage on
       end
end
reg [7:0] sc2mac_dat_a_data13;
always @(posedge nvdla_core_clk) begin
       if ((dl_out_mask[13]) == 1'b1) begin
           sc2mac_dat_a_data13 <= dl_out_data13;
       // VCS coverage off
       end else if ((dl_out_mask[13]) == 1'b0) begin
       end else begin
           sc2mac_dat_a_data13 <= 'bx;
       // VCS coverage on
       end
end
reg [7:0] sc2mac_dat_a_data14;
always @(posedge nvdla_core_clk) begin
       if ((dl_out_mask[14]) == 1'b1) begin
           sc2mac_dat_a_data14 <= dl_out_data14;
       // VCS coverage off
       end else if ((dl_out_mask[14]) == 1'b0) begin
       end else begin
           sc2mac_dat_a_data14 <= 'bx;
       // VCS coverage on
       end
end
reg [7:0] sc2mac_dat_a_data15;
always @(posedge nvdla_core_clk) begin
       if ((dl_out_mask[15]) == 1'b1) begin
           sc2mac_dat_a_data15 <= dl_out_data15;
       // VCS coverage off
       end else if ((dl_out_mask[15]) == 1'b0) begin
       end else begin
           sc2mac_dat_a_data15 <= 'bx;
       // VCS coverage on
       end
end
reg [7:0] sc2mac_dat_a_data16;
always @(posedge nvdla_core_clk) begin
       if ((dl_out_mask[16]) == 1'b1) begin
           sc2mac_dat_a_data16 <= dl_out_data16;
       // VCS coverage off
       end else if ((dl_out_mask[16]) == 1'b0) begin
       end else begin
           sc2mac_dat_a_data16 <= 'bx;
       // VCS coverage on
       end
end
reg [7:0] sc2mac_dat_a_data17;
always @(posedge nvdla_core_clk) begin
       if ((dl_out_mask[17]) == 1'b1) begin
           sc2mac_dat_a_data17 <= dl_out_data17;
       // VCS coverage off
       end else if ((dl_out_mask[17]) == 1'b0) begin
       end else begin
           sc2mac_dat_a_data17 <= 'bx;
       // VCS coverage on
       end
end
reg [7:0] sc2mac_dat_a_data18;
always @(posedge nvdla_core_clk) begin
       if ((dl_out_mask[18]) == 1'b1) begin
           sc2mac_dat_a_data18 <= dl_out_data18;
       // VCS coverage off
       end else if ((dl_out_mask[18]) == 1'b0) begin
       end else begin
           sc2mac_dat_a_data18 <= 'bx;
       // VCS coverage on
       end
end
reg [7:0] sc2mac_dat_a_data19;
always @(posedge nvdla_core_clk) begin
       if ((dl_out_mask[19]) == 1'b1) begin
           sc2mac_dat_a_data19 <= dl_out_data19;
       // VCS coverage off
       end else if ((dl_out_mask[19]) == 1'b0) begin
       end else begin
           sc2mac_dat_a_data19 <= 'bx;
       // VCS coverage on
       end
end
reg [7:0] sc2mac_dat_a_data20;
always @(posedge nvdla_core_clk) begin
       if ((dl_out_mask[20]) == 1'b1) begin
           sc2mac_dat_a_data20 <= dl_out_data20;
       // VCS coverage off
       end else if ((dl_out_mask[20]) == 1'b0) begin
       end else begin
           sc2mac_dat_a_data20 <= 'bx;
       // VCS coverage on
       end
end
reg [7:0] sc2mac_dat_a_data21;
always @(posedge nvdla_core_clk) begin
       if ((dl_out_mask[21]) == 1'b1) begin
           sc2mac_dat_a_data21 <= dl_out_data21;
       // VCS coverage off
       end else if ((dl_out_mask[21]) == 1'b0) begin
       end else begin
           sc2mac_dat_a_data21 <= 'bx;
       // VCS coverage on
       end
end
reg [7:0] sc2mac_dat_a_data22;
always @(posedge nvdla_core_clk) begin
       if ((dl_out_mask[22]) == 1'b1) begin
           sc2mac_dat_a_data22 <= dl_out_data22;
       // VCS coverage off
       end else if ((dl_out_mask[22]) == 1'b0) begin
       end else begin
           sc2mac_dat_a_data22 <= 'bx;
       // VCS coverage on
       end
end
reg [7:0] sc2mac_dat_a_data23;
always @(posedge nvdla_core_clk) begin
       if ((dl_out_mask[23]) == 1'b1) begin
           sc2mac_dat_a_data23 <= dl_out_data23;
       // VCS coverage off
       end else if ((dl_out_mask[23]) == 1'b0) begin
       end else begin
           sc2mac_dat_a_data23 <= 'bx;
       // VCS coverage on
       end
end
reg [7:0] sc2mac_dat_a_data24;
always @(posedge nvdla_core_clk) begin
       if ((dl_out_mask[24]) == 1'b1) begin
           sc2mac_dat_a_data24 <= dl_out_data24;
       // VCS coverage off
       end else if ((dl_out_mask[24]) == 1'b0) begin
       end else begin
           sc2mac_dat_a_data24 <= 'bx;
       // VCS coverage on
       end
end
reg [7:0] sc2mac_dat_a_data25;
always @(posedge nvdla_core_clk) begin
       if ((dl_out_mask[25]) == 1'b1) begin
           sc2mac_dat_a_data25 <= dl_out_data25;
       // VCS coverage off
       end else if ((dl_out_mask[25]) == 1'b0) begin
       end else begin
           sc2mac_dat_a_data25 <= 'bx;
       // VCS coverage on
       end
end
reg [7:0] sc2mac_dat_a_data26;
always @(posedge nvdla_core_clk) begin
       if ((dl_out_mask[26]) == 1'b1) begin
           sc2mac_dat_a_data26 <= dl_out_data26;
       // VCS coverage off
       end else if ((dl_out_mask[26]) == 1'b0) begin
       end else begin
           sc2mac_dat_a_data26 <= 'bx;
       // VCS coverage on
       end
end
reg [7:0] sc2mac_dat_a_data27;
always @(posedge nvdla_core_clk) begin
       if ((dl_out_mask[27]) == 1'b1) begin
           sc2mac_dat_a_data27 <= dl_out_data27;
       // VCS coverage off
       end else if ((dl_out_mask[27]) == 1'b0) begin
       end else begin
           sc2mac_dat_a_data27 <= 'bx;
       // VCS coverage on
       end
end
reg [7:0] sc2mac_dat_a_data28;
always @(posedge nvdla_core_clk) begin
       if ((dl_out_mask[28]) == 1'b1) begin
           sc2mac_dat_a_data28 <= dl_out_data28;
       // VCS coverage off
       end else if ((dl_out_mask[28]) == 1'b0) begin
       end else begin
           sc2mac_dat_a_data28 <= 'bx;
       // VCS coverage on
       end
end
reg [7:0] sc2mac_dat_a_data29;
always @(posedge nvdla_core_clk) begin
       if ((dl_out_mask[29]) == 1'b1) begin
           sc2mac_dat_a_data29 <= dl_out_data29;
       // VCS coverage off
       end else if ((dl_out_mask[29]) == 1'b0) begin
       end else begin
           sc2mac_dat_a_data29 <= 'bx;
       // VCS coverage on
       end
end
reg [7:0] sc2mac_dat_a_data30;
always @(posedge nvdla_core_clk) begin
       if ((dl_out_mask[30]) == 1'b1) begin
           sc2mac_dat_a_data30 <= dl_out_data30;
       // VCS coverage off
       end else if ((dl_out_mask[30]) == 1'b0) begin
       end else begin
           sc2mac_dat_a_data30 <= 'bx;
       // VCS coverage on
       end
end
reg [7:0] sc2mac_dat_a_data31;
always @(posedge nvdla_core_clk) begin
       if ((dl_out_mask[31]) == 1'b1) begin
           sc2mac_dat_a_data31 <= dl_out_data31;
       // VCS coverage off
       end else if ((dl_out_mask[31]) == 1'b0) begin
       end else begin
           sc2mac_dat_a_data31 <= 'bx;
       // VCS coverage on
       end
end
reg [7:0] sc2mac_dat_a_data32;
always @(posedge nvdla_core_clk) begin
       if ((dl_out_mask[32]) == 1'b1) begin
           sc2mac_dat_a_data32 <= dl_out_data32;
       // VCS coverage off
       end else if ((dl_out_mask[32]) == 1'b0) begin
       end else begin
           sc2mac_dat_a_data32 <= 'bx;
       // VCS coverage on
       end
end
reg [7:0] sc2mac_dat_a_data33;
always @(posedge nvdla_core_clk) begin
       if ((dl_out_mask[33]) == 1'b1) begin
           sc2mac_dat_a_data33 <= dl_out_data33;
       // VCS coverage off
       end else if ((dl_out_mask[33]) == 1'b0) begin
       end else begin
           sc2mac_dat_a_data33 <= 'bx;
       // VCS coverage on
       end
end
reg [7:0] sc2mac_dat_a_data34;
always @(posedge nvdla_core_clk) begin
       if ((dl_out_mask[34]) == 1'b1) begin
           sc2mac_dat_a_data34 <= dl_out_data34;
       // VCS coverage off
       end else if ((dl_out_mask[34]) == 1'b0) begin
       end else begin
           sc2mac_dat_a_data34 <= 'bx;
       // VCS coverage on
       end
end
reg [7:0] sc2mac_dat_a_data35;
always @(posedge nvdla_core_clk) begin
       if ((dl_out_mask[35]) == 1'b1) begin
           sc2mac_dat_a_data35 <= dl_out_data35;
       // VCS coverage off
       end else if ((dl_out_mask[35]) == 1'b0) begin
       end else begin
           sc2mac_dat_a_data35 <= 'bx;
       // VCS coverage on
       end
end
reg [7:0] sc2mac_dat_a_data36;
always @(posedge nvdla_core_clk) begin
       if ((dl_out_mask[36]) == 1'b1) begin
           sc2mac_dat_a_data36 <= dl_out_data36;
       // VCS coverage off
       end else if ((dl_out_mask[36]) == 1'b0) begin
       end else begin
           sc2mac_dat_a_data36 <= 'bx;
       // VCS coverage on
       end
end
reg [7:0] sc2mac_dat_a_data37;
always @(posedge nvdla_core_clk) begin
       if ((dl_out_mask[37]) == 1'b1) begin
           sc2mac_dat_a_data37 <= dl_out_data37;
       // VCS coverage off
       end else if ((dl_out_mask[37]) == 1'b0) begin
       end else begin
           sc2mac_dat_a_data37 <= 'bx;
       // VCS coverage on
       end
end
reg [7:0] sc2mac_dat_a_data38;
always @(posedge nvdla_core_clk) begin
       if ((dl_out_mask[38]) == 1'b1) begin
           sc2mac_dat_a_data38 <= dl_out_data38;
       // VCS coverage off
       end else if ((dl_out_mask[38]) == 1'b0) begin
       end else begin
           sc2mac_dat_a_data38 <= 'bx;
       // VCS coverage on
       end
end
reg [7:0] sc2mac_dat_a_data39;
always @(posedge nvdla_core_clk) begin
       if ((dl_out_mask[39]) == 1'b1) begin
           sc2mac_dat_a_data39 <= dl_out_data39;
       // VCS coverage off
       end else if ((dl_out_mask[39]) == 1'b0) begin
       end else begin
           sc2mac_dat_a_data39 <= 'bx;
       // VCS coverage on
       end
end
reg [7:0] sc2mac_dat_a_data40;
always @(posedge nvdla_core_clk) begin
       if ((dl_out_mask[40]) == 1'b1) begin
           sc2mac_dat_a_data40 <= dl_out_data40;
       // VCS coverage off
       end else if ((dl_out_mask[40]) == 1'b0) begin
       end else begin
           sc2mac_dat_a_data40 <= 'bx;
       // VCS coverage on
       end
end
reg [7:0] sc2mac_dat_a_data41;
always @(posedge nvdla_core_clk) begin
       if ((dl_out_mask[41]) == 1'b1) begin
           sc2mac_dat_a_data41 <= dl_out_data41;
       // VCS coverage off
       end else if ((dl_out_mask[41]) == 1'b0) begin
       end else begin
           sc2mac_dat_a_data41 <= 'bx;
       // VCS coverage on
       end
end
reg [7:0] sc2mac_dat_a_data42;
always @(posedge nvdla_core_clk) begin
       if ((dl_out_mask[42]) == 1'b1) begin
           sc2mac_dat_a_data42 <= dl_out_data42;
       // VCS coverage off
       end else if ((dl_out_mask[42]) == 1'b0) begin
       end else begin
           sc2mac_dat_a_data42 <= 'bx;
       // VCS coverage on
       end
end
reg [7:0] sc2mac_dat_a_data43;
always @(posedge nvdla_core_clk) begin
       if ((dl_out_mask[43]) == 1'b1) begin
           sc2mac_dat_a_data43 <= dl_out_data43;
       // VCS coverage off
       end else if ((dl_out_mask[43]) == 1'b0) begin
       end else begin
           sc2mac_dat_a_data43 <= 'bx;
       // VCS coverage on
       end
end
reg [7:0] sc2mac_dat_a_data44;
always @(posedge nvdla_core_clk) begin
       if ((dl_out_mask[44]) == 1'b1) begin
           sc2mac_dat_a_data44 <= dl_out_data44;
       // VCS coverage off
       end else if ((dl_out_mask[44]) == 1'b0) begin
       end else begin
           sc2mac_dat_a_data44 <= 'bx;
       // VCS coverage on
       end
end
reg [7:0] sc2mac_dat_a_data45;
always @(posedge nvdla_core_clk) begin
       if ((dl_out_mask[45]) == 1'b1) begin
           sc2mac_dat_a_data45 <= dl_out_data45;
       // VCS coverage off
       end else if ((dl_out_mask[45]) == 1'b0) begin
       end else begin
           sc2mac_dat_a_data45 <= 'bx;
       // VCS coverage on
       end
end
reg [7:0] sc2mac_dat_a_data46;
always @(posedge nvdla_core_clk) begin
       if ((dl_out_mask[46]) == 1'b1) begin
           sc2mac_dat_a_data46 <= dl_out_data46;
       // VCS coverage off
       end else if ((dl_out_mask[46]) == 1'b0) begin
       end else begin
           sc2mac_dat_a_data46 <= 'bx;
       // VCS coverage on
       end
end
reg [7:0] sc2mac_dat_a_data47;
always @(posedge nvdla_core_clk) begin
       if ((dl_out_mask[47]) == 1'b1) begin
           sc2mac_dat_a_data47 <= dl_out_data47;
       // VCS coverage off
       end else if ((dl_out_mask[47]) == 1'b0) begin
       end else begin
           sc2mac_dat_a_data47 <= 'bx;
       // VCS coverage on
       end
end
reg [7:0] sc2mac_dat_a_data48;
always @(posedge nvdla_core_clk) begin
       if ((dl_out_mask[48]) == 1'b1) begin
           sc2mac_dat_a_data48 <= dl_out_data48;
       // VCS coverage off
       end else if ((dl_out_mask[48]) == 1'b0) begin
       end else begin
           sc2mac_dat_a_data48 <= 'bx;
       // VCS coverage on
       end
end
reg [7:0] sc2mac_dat_a_data49;
always @(posedge nvdla_core_clk) begin
       if ((dl_out_mask[49]) == 1'b1) begin
           sc2mac_dat_a_data49 <= dl_out_data49;
       // VCS coverage off
       end else if ((dl_out_mask[49]) == 1'b0) begin
       end else begin
           sc2mac_dat_a_data49 <= 'bx;
       // VCS coverage on
       end
end
reg [7:0] sc2mac_dat_a_data50;
always @(posedge nvdla_core_clk) begin
       if ((dl_out_mask[50]) == 1'b1) begin
           sc2mac_dat_a_data50 <= dl_out_data50;
       // VCS coverage off
       end else if ((dl_out_mask[50]) == 1'b0) begin
       end else begin
           sc2mac_dat_a_data50 <= 'bx;
       // VCS coverage on
       end
end
reg [7:0] sc2mac_dat_a_data51;
always @(posedge nvdla_core_clk) begin
       if ((dl_out_mask[51]) == 1'b1) begin
           sc2mac_dat_a_data51 <= dl_out_data51;
       // VCS coverage off
       end else if ((dl_out_mask[51]) == 1'b0) begin
       end else begin
           sc2mac_dat_a_data51 <= 'bx;
       // VCS coverage on
       end
end
reg [7:0] sc2mac_dat_a_data52;
always @(posedge nvdla_core_clk) begin
       if ((dl_out_mask[52]) == 1'b1) begin
           sc2mac_dat_a_data52 <= dl_out_data52;
       // VCS coverage off
       end else if ((dl_out_mask[52]) == 1'b0) begin
       end else begin
           sc2mac_dat_a_data52 <= 'bx;
       // VCS coverage on
       end
end
reg [7:0] sc2mac_dat_a_data53;
always @(posedge nvdla_core_clk) begin
       if ((dl_out_mask[53]) == 1'b1) begin
           sc2mac_dat_a_data53 <= dl_out_data53;
       // VCS coverage off
       end else if ((dl_out_mask[53]) == 1'b0) begin
       end else begin
           sc2mac_dat_a_data53 <= 'bx;
       // VCS coverage on
       end
end
reg [7:0] sc2mac_dat_a_data54;
always @(posedge nvdla_core_clk) begin
       if ((dl_out_mask[54]) == 1'b1) begin
           sc2mac_dat_a_data54 <= dl_out_data54;
       // VCS coverage off
       end else if ((dl_out_mask[54]) == 1'b0) begin
       end else begin
           sc2mac_dat_a_data54 <= 'bx;
       // VCS coverage on
       end
end
reg [7:0] sc2mac_dat_a_data55;
always @(posedge nvdla_core_clk) begin
       if ((dl_out_mask[55]) == 1'b1) begin
           sc2mac_dat_a_data55 <= dl_out_data55;
       // VCS coverage off
       end else if ((dl_out_mask[55]) == 1'b0) begin
       end else begin
           sc2mac_dat_a_data55 <= 'bx;
       // VCS coverage on
       end
end
reg [7:0] sc2mac_dat_a_data56;
always @(posedge nvdla_core_clk) begin
       if ((dl_out_mask[56]) == 1'b1) begin
           sc2mac_dat_a_data56 <= dl_out_data56;
       // VCS coverage off
       end else if ((dl_out_mask[56]) == 1'b0) begin
       end else begin
           sc2mac_dat_a_data56 <= 'bx;
       // VCS coverage on
       end
end
reg [7:0] sc2mac_dat_a_data57;
always @(posedge nvdla_core_clk) begin
       if ((dl_out_mask[57]) == 1'b1) begin
           sc2mac_dat_a_data57 <= dl_out_data57;
       // VCS coverage off
       end else if ((dl_out_mask[57]) == 1'b0) begin
       end else begin
           sc2mac_dat_a_data57 <= 'bx;
       // VCS coverage on
       end
end
reg [7:0] sc2mac_dat_a_data58;
always @(posedge nvdla_core_clk) begin
       if ((dl_out_mask[58]) == 1'b1) begin
           sc2mac_dat_a_data58 <= dl_out_data58;
       // VCS coverage off
       end else if ((dl_out_mask[58]) == 1'b0) begin
       end else begin
           sc2mac_dat_a_data58 <= 'bx;
       // VCS coverage on
       end
end
reg [7:0] sc2mac_dat_a_data59;
always @(posedge nvdla_core_clk) begin
       if ((dl_out_mask[59]) == 1'b1) begin
           sc2mac_dat_a_data59 <= dl_out_data59;
       // VCS coverage off
       end else if ((dl_out_mask[59]) == 1'b0) begin
       end else begin
           sc2mac_dat_a_data59 <= 'bx;
       // VCS coverage on
       end
end
reg [7:0] sc2mac_dat_a_data60;
always @(posedge nvdla_core_clk) begin
       if ((dl_out_mask[60]) == 1'b1) begin
           sc2mac_dat_a_data60 <= dl_out_data60;
       // VCS coverage off
       end else if ((dl_out_mask[60]) == 1'b0) begin
       end else begin
           sc2mac_dat_a_data60 <= 'bx;
       // VCS coverage on
       end
end
reg [7:0] sc2mac_dat_a_data61;
always @(posedge nvdla_core_clk) begin
       if ((dl_out_mask[61]) == 1'b1) begin
           sc2mac_dat_a_data61 <= dl_out_data61;
       // VCS coverage off
       end else if ((dl_out_mask[61]) == 1'b0) begin
       end else begin
           sc2mac_dat_a_data61 <= 'bx;
       // VCS coverage on
       end
end
reg [7:0] sc2mac_dat_a_data62;
always @(posedge nvdla_core_clk) begin
       if ((dl_out_mask[62]) == 1'b1) begin
           sc2mac_dat_a_data62 <= dl_out_data62;
       // VCS coverage off
       end else if ((dl_out_mask[62]) == 1'b0) begin
       end else begin
           sc2mac_dat_a_data62 <= 'bx;
       // VCS coverage on
       end
end
reg [7:0] sc2mac_dat_a_data63;
always @(posedge nvdla_core_clk) begin
       if ((dl_out_mask[63]) == 1'b1) begin
           sc2mac_dat_a_data63 <= dl_out_data63;
       // VCS coverage off
       end else if ((dl_out_mask[63]) == 1'b0) begin
       end else begin
           sc2mac_dat_a_data63 <= 'bx;
       // VCS coverage on
       end
end


reg [7:0] sc2mac_dat_b_data0;
always @(posedge nvdla_core_clk) begin
       if ((dl_out_mask[0]) == 1'b1) begin
           sc2mac_dat_b_data0 <= dl_out_data0;
       // VCS coverage off
       end else if ((dl_out_mask[0]) == 1'b0) begin
       end else begin
           sc2mac_dat_b_data0 <= 'bx;
       // VCS coverage on
       end
end
reg [7:0] sc2mac_dat_b_data1;
always @(posedge nvdla_core_clk) begin
       if ((dl_out_mask[1]) == 1'b1) begin
           sc2mac_dat_b_data1 <= dl_out_data1;
       // VCS coverage off
       end else if ((dl_out_mask[1]) == 1'b0) begin
       end else begin
           sc2mac_dat_b_data1 <= 'bx;
       // VCS coverage on
       end
end
reg [7:0] sc2mac_dat_b_data2;
always @(posedge nvdla_core_clk) begin
       if ((dl_out_mask[2]) == 1'b1) begin
           sc2mac_dat_b_data2 <= dl_out_data2;
       // VCS coverage off
       end else if ((dl_out_mask[2]) == 1'b0) begin
       end else begin
           sc2mac_dat_b_data2 <= 'bx;
       // VCS coverage on
       end
end
reg [7:0] sc2mac_dat_b_data3;
always @(posedge nvdla_core_clk) begin
       if ((dl_out_mask[3]) == 1'b1) begin
           sc2mac_dat_b_data3 <= dl_out_data3;
       // VCS coverage off
       end else if ((dl_out_mask[3]) == 1'b0) begin
       end else begin
           sc2mac_dat_b_data3 <= 'bx;
       // VCS coverage on
       end
end
reg [7:0] sc2mac_dat_b_data4;
always @(posedge nvdla_core_clk) begin
       if ((dl_out_mask[4]) == 1'b1) begin
           sc2mac_dat_b_data4 <= dl_out_data4;
       // VCS coverage off
       end else if ((dl_out_mask[4]) == 1'b0) begin
       end else begin
           sc2mac_dat_b_data4 <= 'bx;
       // VCS coverage on
       end
end
reg [7:0] sc2mac_dat_b_data5;
always @(posedge nvdla_core_clk) begin
       if ((dl_out_mask[5]) == 1'b1) begin
           sc2mac_dat_b_data5 <= dl_out_data5;
       // VCS coverage off
       end else if ((dl_out_mask[5]) == 1'b0) begin
       end else begin
           sc2mac_dat_b_data5 <= 'bx;
       // VCS coverage on
       end
end
reg [7:0] sc2mac_dat_b_data6;
always @(posedge nvdla_core_clk) begin
       if ((dl_out_mask[6]) == 1'b1) begin
           sc2mac_dat_b_data6 <= dl_out_data6;
       // VCS coverage off
       end else if ((dl_out_mask[6]) == 1'b0) begin
       end else begin
           sc2mac_dat_b_data6 <= 'bx;
       // VCS coverage on
       end
end
reg [7:0] sc2mac_dat_b_data7;
always @(posedge nvdla_core_clk) begin
       if ((dl_out_mask[7]) == 1'b1) begin
           sc2mac_dat_b_data7 <= dl_out_data7;
       // VCS coverage off
       end else if ((dl_out_mask[7]) == 1'b0) begin
       end else begin
           sc2mac_dat_b_data7 <= 'bx;
       // VCS coverage on
       end
end
reg [7:0] sc2mac_dat_b_data8;
always @(posedge nvdla_core_clk) begin
       if ((dl_out_mask[8]) == 1'b1) begin
           sc2mac_dat_b_data8 <= dl_out_data8;
       // VCS coverage off
       end else if ((dl_out_mask[8]) == 1'b0) begin
       end else begin
           sc2mac_dat_b_data8 <= 'bx;
       // VCS coverage on
       end
end
reg [7:0] sc2mac_dat_b_data9;
always @(posedge nvdla_core_clk) begin
       if ((dl_out_mask[9]) == 1'b1) begin
           sc2mac_dat_b_data9 <= dl_out_data9;
       // VCS coverage off
       end else if ((dl_out_mask[9]) == 1'b0) begin
       end else begin
           sc2mac_dat_b_data9 <= 'bx;
       // VCS coverage on
       end
end
reg [7:0] sc2mac_dat_b_data10;
always @(posedge nvdla_core_clk) begin
       if ((dl_out_mask[10]) == 1'b1) begin
           sc2mac_dat_b_data10 <= dl_out_data10;
       // VCS coverage off
       end else if ((dl_out_mask[10]) == 1'b0) begin
       end else begin
           sc2mac_dat_b_data10 <= 'bx;
       // VCS coverage on
       end
end
reg [7:0] sc2mac_dat_b_data11;
always @(posedge nvdla_core_clk) begin
       if ((dl_out_mask[11]) == 1'b1) begin
           sc2mac_dat_b_data11 <= dl_out_data11;
       // VCS coverage off
       end else if ((dl_out_mask[11]) == 1'b0) begin
       end else begin
           sc2mac_dat_b_data11 <= 'bx;
       // VCS coverage on
       end
end
reg [7:0] sc2mac_dat_b_data12;
always @(posedge nvdla_core_clk) begin
       if ((dl_out_mask[12]) == 1'b1) begin
           sc2mac_dat_b_data12 <= dl_out_data12;
       // VCS coverage off
       end else if ((dl_out_mask[12]) == 1'b0) begin
       end else begin
           sc2mac_dat_b_data12 <= 'bx;
       // VCS coverage on
       end
end
reg [7:0] sc2mac_dat_b_data13;
always @(posedge nvdla_core_clk) begin
       if ((dl_out_mask[13]) == 1'b1) begin
           sc2mac_dat_b_data13 <= dl_out_data13;
       // VCS coverage off
       end else if ((dl_out_mask[13]) == 1'b0) begin
       end else begin
           sc2mac_dat_b_data13 <= 'bx;
       // VCS coverage on
       end
end
reg [7:0] sc2mac_dat_b_data14;
always @(posedge nvdla_core_clk) begin
       if ((dl_out_mask[14]) == 1'b1) begin
           sc2mac_dat_b_data14 <= dl_out_data14;
       // VCS coverage off
       end else if ((dl_out_mask[14]) == 1'b0) begin
       end else begin
           sc2mac_dat_b_data14 <= 'bx;
       // VCS coverage on
       end
end
reg [7:0] sc2mac_dat_b_data15;
always @(posedge nvdla_core_clk) begin
       if ((dl_out_mask[15]) == 1'b1) begin
           sc2mac_dat_b_data15 <= dl_out_data15;
       // VCS coverage off
       end else if ((dl_out_mask[15]) == 1'b0) begin
       end else begin
           sc2mac_dat_b_data15 <= 'bx;
       // VCS coverage on
       end
end
reg [7:0] sc2mac_dat_b_data16;
always @(posedge nvdla_core_clk) begin
       if ((dl_out_mask[16]) == 1'b1) begin
           sc2mac_dat_b_data16 <= dl_out_data16;
       // VCS coverage off
       end else if ((dl_out_mask[16]) == 1'b0) begin
       end else begin
           sc2mac_dat_b_data16 <= 'bx;
       // VCS coverage on
       end
end
reg [7:0] sc2mac_dat_b_data17;
always @(posedge nvdla_core_clk) begin
       if ((dl_out_mask[17]) == 1'b1) begin
           sc2mac_dat_b_data17 <= dl_out_data17;
       // VCS coverage off
       end else if ((dl_out_mask[17]) == 1'b0) begin
       end else begin
           sc2mac_dat_b_data17 <= 'bx;
       // VCS coverage on
       end
end
reg [7:0] sc2mac_dat_b_data18;
always @(posedge nvdla_core_clk) begin
       if ((dl_out_mask[18]) == 1'b1) begin
           sc2mac_dat_b_data18 <= dl_out_data18;
       // VCS coverage off
       end else if ((dl_out_mask[18]) == 1'b0) begin
       end else begin
           sc2mac_dat_b_data18 <= 'bx;
       // VCS coverage on
       end
end
reg [7:0] sc2mac_dat_b_data19;
always @(posedge nvdla_core_clk) begin
       if ((dl_out_mask[19]) == 1'b1) begin
           sc2mac_dat_b_data19 <= dl_out_data19;
       // VCS coverage off
       end else if ((dl_out_mask[19]) == 1'b0) begin
       end else begin
           sc2mac_dat_b_data19 <= 'bx;
       // VCS coverage on
       end
end
reg [7:0] sc2mac_dat_b_data20;
always @(posedge nvdla_core_clk) begin
       if ((dl_out_mask[20]) == 1'b1) begin
           sc2mac_dat_b_data20 <= dl_out_data20;
       // VCS coverage off
       end else if ((dl_out_mask[20]) == 1'b0) begin
       end else begin
           sc2mac_dat_b_data20 <= 'bx;
       // VCS coverage on
       end
end
reg [7:0] sc2mac_dat_b_data21;
always @(posedge nvdla_core_clk) begin
       if ((dl_out_mask[21]) == 1'b1) begin
           sc2mac_dat_b_data21 <= dl_out_data21;
       // VCS coverage off
       end else if ((dl_out_mask[21]) == 1'b0) begin
       end else begin
           sc2mac_dat_b_data21 <= 'bx;
       // VCS coverage on
       end
end
reg [7:0] sc2mac_dat_b_data22;
always @(posedge nvdla_core_clk) begin
       if ((dl_out_mask[22]) == 1'b1) begin
           sc2mac_dat_b_data22 <= dl_out_data22;
       // VCS coverage off
       end else if ((dl_out_mask[22]) == 1'b0) begin
       end else begin
           sc2mac_dat_b_data22 <= 'bx;
       // VCS coverage on
       end
end
reg [7:0] sc2mac_dat_b_data23;
always @(posedge nvdla_core_clk) begin
       if ((dl_out_mask[23]) == 1'b1) begin
           sc2mac_dat_b_data23 <= dl_out_data23;
       // VCS coverage off
       end else if ((dl_out_mask[23]) == 1'b0) begin
       end else begin
           sc2mac_dat_b_data23 <= 'bx;
       // VCS coverage on
       end
end
reg [7:0] sc2mac_dat_b_data24;
always @(posedge nvdla_core_clk) begin
       if ((dl_out_mask[24]) == 1'b1) begin
           sc2mac_dat_b_data24 <= dl_out_data24;
       // VCS coverage off
       end else if ((dl_out_mask[24]) == 1'b0) begin
       end else begin
           sc2mac_dat_b_data24 <= 'bx;
       // VCS coverage on
       end
end
reg [7:0] sc2mac_dat_b_data25;
always @(posedge nvdla_core_clk) begin
       if ((dl_out_mask[25]) == 1'b1) begin
           sc2mac_dat_b_data25 <= dl_out_data25;
       // VCS coverage off
       end else if ((dl_out_mask[25]) == 1'b0) begin
       end else begin
           sc2mac_dat_b_data25 <= 'bx;
       // VCS coverage on
       end
end
reg [7:0] sc2mac_dat_b_data26;
always @(posedge nvdla_core_clk) begin
       if ((dl_out_mask[26]) == 1'b1) begin
           sc2mac_dat_b_data26 <= dl_out_data26;
       // VCS coverage off
       end else if ((dl_out_mask[26]) == 1'b0) begin
       end else begin
           sc2mac_dat_b_data26 <= 'bx;
       // VCS coverage on
       end
end
reg [7:0] sc2mac_dat_b_data27;
always @(posedge nvdla_core_clk) begin
       if ((dl_out_mask[27]) == 1'b1) begin
           sc2mac_dat_b_data27 <= dl_out_data27;
       // VCS coverage off
       end else if ((dl_out_mask[27]) == 1'b0) begin
       end else begin
           sc2mac_dat_b_data27 <= 'bx;
       // VCS coverage on
       end
end
reg [7:0] sc2mac_dat_b_data28;
always @(posedge nvdla_core_clk) begin
       if ((dl_out_mask[28]) == 1'b1) begin
           sc2mac_dat_b_data28 <= dl_out_data28;
       // VCS coverage off
       end else if ((dl_out_mask[28]) == 1'b0) begin
       end else begin
           sc2mac_dat_b_data28 <= 'bx;
       // VCS coverage on
       end
end
reg [7:0] sc2mac_dat_b_data29;
always @(posedge nvdla_core_clk) begin
       if ((dl_out_mask[29]) == 1'b1) begin
           sc2mac_dat_b_data29 <= dl_out_data29;
       // VCS coverage off
       end else if ((dl_out_mask[29]) == 1'b0) begin
       end else begin
           sc2mac_dat_b_data29 <= 'bx;
       // VCS coverage on
       end
end
reg [7:0] sc2mac_dat_b_data30;
always @(posedge nvdla_core_clk) begin
       if ((dl_out_mask[30]) == 1'b1) begin
           sc2mac_dat_b_data30 <= dl_out_data30;
       // VCS coverage off
       end else if ((dl_out_mask[30]) == 1'b0) begin
       end else begin
           sc2mac_dat_b_data30 <= 'bx;
       // VCS coverage on
       end
end
reg [7:0] sc2mac_dat_b_data31;
always @(posedge nvdla_core_clk) begin
       if ((dl_out_mask[31]) == 1'b1) begin
           sc2mac_dat_b_data31 <= dl_out_data31;
       // VCS coverage off
       end else if ((dl_out_mask[31]) == 1'b0) begin
       end else begin
           sc2mac_dat_b_data31 <= 'bx;
       // VCS coverage on
       end
end
reg [7:0] sc2mac_dat_b_data32;
always @(posedge nvdla_core_clk) begin
       if ((dl_out_mask[32]) == 1'b1) begin
           sc2mac_dat_b_data32 <= dl_out_data32;
       // VCS coverage off
       end else if ((dl_out_mask[32]) == 1'b0) begin
       end else begin
           sc2mac_dat_b_data32 <= 'bx;
       // VCS coverage on
       end
end
reg [7:0] sc2mac_dat_b_data33;
always @(posedge nvdla_core_clk) begin
       if ((dl_out_mask[33]) == 1'b1) begin
           sc2mac_dat_b_data33 <= dl_out_data33;
       // VCS coverage off
       end else if ((dl_out_mask[33]) == 1'b0) begin
       end else begin
           sc2mac_dat_b_data33 <= 'bx;
       // VCS coverage on
       end
end
reg [7:0] sc2mac_dat_b_data34;
always @(posedge nvdla_core_clk) begin
       if ((dl_out_mask[34]) == 1'b1) begin
           sc2mac_dat_b_data34 <= dl_out_data34;
       // VCS coverage off
       end else if ((dl_out_mask[34]) == 1'b0) begin
       end else begin
           sc2mac_dat_b_data34 <= 'bx;
       // VCS coverage on
       end
end
reg [7:0] sc2mac_dat_b_data35;
always @(posedge nvdla_core_clk) begin
       if ((dl_out_mask[35]) == 1'b1) begin
           sc2mac_dat_b_data35 <= dl_out_data35;
       // VCS coverage off
       end else if ((dl_out_mask[35]) == 1'b0) begin
       end else begin
           sc2mac_dat_b_data35 <= 'bx;
       // VCS coverage on
       end
end
reg [7:0] sc2mac_dat_b_data36;
always @(posedge nvdla_core_clk) begin
       if ((dl_out_mask[36]) == 1'b1) begin
           sc2mac_dat_b_data36 <= dl_out_data36;
       // VCS coverage off
       end else if ((dl_out_mask[36]) == 1'b0) begin
       end else begin
           sc2mac_dat_b_data36 <= 'bx;
       // VCS coverage on
       end
end
reg [7:0] sc2mac_dat_b_data37;
always @(posedge nvdla_core_clk) begin
       if ((dl_out_mask[37]) == 1'b1) begin
           sc2mac_dat_b_data37 <= dl_out_data37;
       // VCS coverage off
       end else if ((dl_out_mask[37]) == 1'b0) begin
       end else begin
           sc2mac_dat_b_data37 <= 'bx;
       // VCS coverage on
       end
end
reg [7:0] sc2mac_dat_b_data38;
always @(posedge nvdla_core_clk) begin
       if ((dl_out_mask[38]) == 1'b1) begin
           sc2mac_dat_b_data38 <= dl_out_data38;
       // VCS coverage off
       end else if ((dl_out_mask[38]) == 1'b0) begin
       end else begin
           sc2mac_dat_b_data38 <= 'bx;
       // VCS coverage on
       end
end
reg [7:0] sc2mac_dat_b_data39;
always @(posedge nvdla_core_clk) begin
       if ((dl_out_mask[39]) == 1'b1) begin
           sc2mac_dat_b_data39 <= dl_out_data39;
       // VCS coverage off
       end else if ((dl_out_mask[39]) == 1'b0) begin
       end else begin
           sc2mac_dat_b_data39 <= 'bx;
       // VCS coverage on
       end
end
reg [7:0] sc2mac_dat_b_data40;
always @(posedge nvdla_core_clk) begin
       if ((dl_out_mask[40]) == 1'b1) begin
           sc2mac_dat_b_data40 <= dl_out_data40;
       // VCS coverage off
       end else if ((dl_out_mask[40]) == 1'b0) begin
       end else begin
           sc2mac_dat_b_data40 <= 'bx;
       // VCS coverage on
       end
end
reg [7:0] sc2mac_dat_b_data41;
always @(posedge nvdla_core_clk) begin
       if ((dl_out_mask[41]) == 1'b1) begin
           sc2mac_dat_b_data41 <= dl_out_data41;
       // VCS coverage off
       end else if ((dl_out_mask[41]) == 1'b0) begin
       end else begin
           sc2mac_dat_b_data41 <= 'bx;
       // VCS coverage on
       end
end
reg [7:0] sc2mac_dat_b_data42;
always @(posedge nvdla_core_clk) begin
       if ((dl_out_mask[42]) == 1'b1) begin
           sc2mac_dat_b_data42 <= dl_out_data42;
       // VCS coverage off
       end else if ((dl_out_mask[42]) == 1'b0) begin
       end else begin
           sc2mac_dat_b_data42 <= 'bx;
       // VCS coverage on
       end
end
reg [7:0] sc2mac_dat_b_data43;
always @(posedge nvdla_core_clk) begin
       if ((dl_out_mask[43]) == 1'b1) begin
           sc2mac_dat_b_data43 <= dl_out_data43;
       // VCS coverage off
       end else if ((dl_out_mask[43]) == 1'b0) begin
       end else begin
           sc2mac_dat_b_data43 <= 'bx;
       // VCS coverage on
       end
end
reg [7:0] sc2mac_dat_b_data44;
always @(posedge nvdla_core_clk) begin
       if ((dl_out_mask[44]) == 1'b1) begin
           sc2mac_dat_b_data44 <= dl_out_data44;
       // VCS coverage off
       end else if ((dl_out_mask[44]) == 1'b0) begin
       end else begin
           sc2mac_dat_b_data44 <= 'bx;
       // VCS coverage on
       end
end
reg [7:0] sc2mac_dat_b_data45;
always @(posedge nvdla_core_clk) begin
       if ((dl_out_mask[45]) == 1'b1) begin
           sc2mac_dat_b_data45 <= dl_out_data45;
       // VCS coverage off
       end else if ((dl_out_mask[45]) == 1'b0) begin
       end else begin
           sc2mac_dat_b_data45 <= 'bx;
       // VCS coverage on
       end
end
reg [7:0] sc2mac_dat_b_data46;
always @(posedge nvdla_core_clk) begin
       if ((dl_out_mask[46]) == 1'b1) begin
           sc2mac_dat_b_data46 <= dl_out_data46;
       // VCS coverage off
       end else if ((dl_out_mask[46]) == 1'b0) begin
       end else begin
           sc2mac_dat_b_data46 <= 'bx;
       // VCS coverage on
       end
end
reg [7:0] sc2mac_dat_b_data47;
always @(posedge nvdla_core_clk) begin
       if ((dl_out_mask[47]) == 1'b1) begin
           sc2mac_dat_b_data47 <= dl_out_data47;
       // VCS coverage off
       end else if ((dl_out_mask[47]) == 1'b0) begin
       end else begin
           sc2mac_dat_b_data47 <= 'bx;
       // VCS coverage on
       end
end
reg [7:0] sc2mac_dat_b_data48;
always @(posedge nvdla_core_clk) begin
       if ((dl_out_mask[48]) == 1'b1) begin
           sc2mac_dat_b_data48 <= dl_out_data48;
       // VCS coverage off
       end else if ((dl_out_mask[48]) == 1'b0) begin
       end else begin
           sc2mac_dat_b_data48 <= 'bx;
       // VCS coverage on
       end
end
reg [7:0] sc2mac_dat_b_data49;
always @(posedge nvdla_core_clk) begin
       if ((dl_out_mask[49]) == 1'b1) begin
           sc2mac_dat_b_data49 <= dl_out_data49;
       // VCS coverage off
       end else if ((dl_out_mask[49]) == 1'b0) begin
       end else begin
           sc2mac_dat_b_data49 <= 'bx;
       // VCS coverage on
       end
end
reg [7:0] sc2mac_dat_b_data50;
always @(posedge nvdla_core_clk) begin
       if ((dl_out_mask[50]) == 1'b1) begin
           sc2mac_dat_b_data50 <= dl_out_data50;
       // VCS coverage off
       end else if ((dl_out_mask[50]) == 1'b0) begin
       end else begin
           sc2mac_dat_b_data50 <= 'bx;
       // VCS coverage on
       end
end
reg [7:0] sc2mac_dat_b_data51;
always @(posedge nvdla_core_clk) begin
       if ((dl_out_mask[51]) == 1'b1) begin
           sc2mac_dat_b_data51 <= dl_out_data51;
       // VCS coverage off
       end else if ((dl_out_mask[51]) == 1'b0) begin
       end else begin
           sc2mac_dat_b_data51 <= 'bx;
       // VCS coverage on
       end
end
reg [7:0] sc2mac_dat_b_data52;
always @(posedge nvdla_core_clk) begin
       if ((dl_out_mask[52]) == 1'b1) begin
           sc2mac_dat_b_data52 <= dl_out_data52;
       // VCS coverage off
       end else if ((dl_out_mask[52]) == 1'b0) begin
       end else begin
           sc2mac_dat_b_data52 <= 'bx;
       // VCS coverage on
       end
end
reg [7:0] sc2mac_dat_b_data53;
always @(posedge nvdla_core_clk) begin
       if ((dl_out_mask[53]) == 1'b1) begin
           sc2mac_dat_b_data53 <= dl_out_data53;
       // VCS coverage off
       end else if ((dl_out_mask[53]) == 1'b0) begin
       end else begin
           sc2mac_dat_b_data53 <= 'bx;
       // VCS coverage on
       end
end
reg [7:0] sc2mac_dat_b_data54;
always @(posedge nvdla_core_clk) begin
       if ((dl_out_mask[54]) == 1'b1) begin
           sc2mac_dat_b_data54 <= dl_out_data54;
       // VCS coverage off
       end else if ((dl_out_mask[54]) == 1'b0) begin
       end else begin
           sc2mac_dat_b_data54 <= 'bx;
       // VCS coverage on
       end
end
reg [7:0] sc2mac_dat_b_data55;
always @(posedge nvdla_core_clk) begin
       if ((dl_out_mask[55]) == 1'b1) begin
           sc2mac_dat_b_data55 <= dl_out_data55;
       // VCS coverage off
       end else if ((dl_out_mask[55]) == 1'b0) begin
       end else begin
           sc2mac_dat_b_data55 <= 'bx;
       // VCS coverage on
       end
end
reg [7:0] sc2mac_dat_b_data56;
always @(posedge nvdla_core_clk) begin
       if ((dl_out_mask[56]) == 1'b1) begin
           sc2mac_dat_b_data56 <= dl_out_data56;
       // VCS coverage off
       end else if ((dl_out_mask[56]) == 1'b0) begin
       end else begin
           sc2mac_dat_b_data56 <= 'bx;
       // VCS coverage on
       end
end
reg [7:0] sc2mac_dat_b_data57;
always @(posedge nvdla_core_clk) begin
       if ((dl_out_mask[57]) == 1'b1) begin
           sc2mac_dat_b_data57 <= dl_out_data57;
       // VCS coverage off
       end else if ((dl_out_mask[57]) == 1'b0) begin
       end else begin
           sc2mac_dat_b_data57 <= 'bx;
       // VCS coverage on
       end
end
reg [7:0] sc2mac_dat_b_data58;
always @(posedge nvdla_core_clk) begin
       if ((dl_out_mask[58]) == 1'b1) begin
           sc2mac_dat_b_data58 <= dl_out_data58;
       // VCS coverage off
       end else if ((dl_out_mask[58]) == 1'b0) begin
       end else begin
           sc2mac_dat_b_data58 <= 'bx;
       // VCS coverage on
       end
end
reg [7:0] sc2mac_dat_b_data59;
always @(posedge nvdla_core_clk) begin
       if ((dl_out_mask[59]) == 1'b1) begin
           sc2mac_dat_b_data59 <= dl_out_data59;
       // VCS coverage off
       end else if ((dl_out_mask[59]) == 1'b0) begin
       end else begin
           sc2mac_dat_b_data59 <= 'bx;
       // VCS coverage on
       end
end
reg [7:0] sc2mac_dat_b_data60;
always @(posedge nvdla_core_clk) begin
       if ((dl_out_mask[60]) == 1'b1) begin
           sc2mac_dat_b_data60 <= dl_out_data60;
       // VCS coverage off
       end else if ((dl_out_mask[60]) == 1'b0) begin
       end else begin
           sc2mac_dat_b_data60 <= 'bx;
       // VCS coverage on
       end
end
reg [7:0] sc2mac_dat_b_data61;
always @(posedge nvdla_core_clk) begin
       if ((dl_out_mask[61]) == 1'b1) begin
           sc2mac_dat_b_data61 <= dl_out_data61;
       // VCS coverage off
       end else if ((dl_out_mask[61]) == 1'b0) begin
       end else begin
           sc2mac_dat_b_data61 <= 'bx;
       // VCS coverage on
       end
end
reg [7:0] sc2mac_dat_b_data62;
always @(posedge nvdla_core_clk) begin
       if ((dl_out_mask[62]) == 1'b1) begin
           sc2mac_dat_b_data62 <= dl_out_data62;
       // VCS coverage off
       end else if ((dl_out_mask[62]) == 1'b0) begin
       end else begin
           sc2mac_dat_b_data62 <= 'bx;
       // VCS coverage on
       end
end
reg [7:0] sc2mac_dat_b_data63;
always @(posedge nvdla_core_clk) begin
       if ((dl_out_mask[63]) == 1'b1) begin
           sc2mac_dat_b_data63 <= dl_out_data63;
       // VCS coverage off
       end else if ((dl_out_mask[63]) == 1'b0) begin
       end else begin
           sc2mac_dat_b_data63 <= 'bx;
       // VCS coverage on
       end
end


endmodule // NV_NVDLA_CSC_dl
