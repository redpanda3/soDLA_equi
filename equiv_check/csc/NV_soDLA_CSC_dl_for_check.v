module NV_soDLA_CSC_dl_for_check( // @[:@3.2]
  input          nvdla_core_clk, // @[:@6.4]
  input          nvdla_core_ng_clk, // @[:@6.4]
  input          nvdla_core_rstn, // @[:@6.4]
  input  [1:0]   sc_state, // @[:@6.4]
  input          sg2dl_pvld, // @[:@6.4]
  input  [30:0]  sg2dl_pd, // @[:@6.4]
  input          sg2dl_reuse_rls, // @[:@6.4]
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
  output [63:0]  sc2mac_dat_a_mask, // @[:@6.4]
  output [7:0]   sc2mac_dat_a_data0, // @[:@6.4]
  output [7:0]   sc2mac_dat_a_data1, // @[:@6.4]
  output [7:0]   sc2mac_dat_a_data2, // @[:@6.4]
  output [7:0]   sc2mac_dat_a_data3, // @[:@6.4]
  output [7:0]   sc2mac_dat_a_data4, // @[:@6.4]
  output [7:0]   sc2mac_dat_a_data5, // @[:@6.4]
  output [7:0]   sc2mac_dat_a_data6, // @[:@6.4]
  output [7:0]   sc2mac_dat_a_data7, // @[:@6.4]
  output [7:0]   sc2mac_dat_a_data8, // @[:@6.4]
  output [7:0]   sc2mac_dat_a_data9, // @[:@6.4]
  output [7:0]   sc2mac_dat_a_data10, // @[:@6.4]
  output [7:0]   sc2mac_dat_a_data11, // @[:@6.4]
  output [7:0]   sc2mac_dat_a_data12, // @[:@6.4]
  output [7:0]   sc2mac_dat_a_data13, // @[:@6.4]
  output [7:0]   sc2mac_dat_a_data14, // @[:@6.4]
  output [7:0]   sc2mac_dat_a_data15, // @[:@6.4]
  output [7:0]   sc2mac_dat_a_data16, // @[:@6.4]
  output [7:0]   sc2mac_dat_a_data17, // @[:@6.4]
  output [7:0]   sc2mac_dat_a_data18, // @[:@6.4]
  output [7:0]   sc2mac_dat_a_data19, // @[:@6.4]
  output [7:0]   sc2mac_dat_a_data20, // @[:@6.4]
  output [7:0]   sc2mac_dat_a_data21, // @[:@6.4]
  output [7:0]   sc2mac_dat_a_data22, // @[:@6.4]
  output [7:0]   sc2mac_dat_a_data23, // @[:@6.4]
  output [7:0]   sc2mac_dat_a_data24, // @[:@6.4]
  output [7:0]   sc2mac_dat_a_data25, // @[:@6.4]
  output [7:0]   sc2mac_dat_a_data26, // @[:@6.4]
  output [7:0]   sc2mac_dat_a_data27, // @[:@6.4]
  output [7:0]   sc2mac_dat_a_data28, // @[:@6.4]
  output [7:0]   sc2mac_dat_a_data29, // @[:@6.4]
  output [7:0]   sc2mac_dat_a_data30, // @[:@6.4]
  output [7:0]   sc2mac_dat_a_data31, // @[:@6.4]
  output [7:0]   sc2mac_dat_a_data32, // @[:@6.4]
  output [7:0]   sc2mac_dat_a_data33, // @[:@6.4]
  output [7:0]   sc2mac_dat_a_data34, // @[:@6.4]
  output [7:0]   sc2mac_dat_a_data35, // @[:@6.4]
  output [7:0]   sc2mac_dat_a_data36, // @[:@6.4]
  output [7:0]   sc2mac_dat_a_data37, // @[:@6.4]
  output [7:0]   sc2mac_dat_a_data38, // @[:@6.4]
  output [7:0]   sc2mac_dat_a_data39, // @[:@6.4]
  output [7:0]   sc2mac_dat_a_data40, // @[:@6.4]
  output [7:0]   sc2mac_dat_a_data41, // @[:@6.4]
  output [7:0]   sc2mac_dat_a_data42, // @[:@6.4]
  output [7:0]   sc2mac_dat_a_data43, // @[:@6.4]
  output [7:0]   sc2mac_dat_a_data44, // @[:@6.4]
  output [7:0]   sc2mac_dat_a_data45, // @[:@6.4]
  output [7:0]   sc2mac_dat_a_data46, // @[:@6.4]
  output [7:0]   sc2mac_dat_a_data47, // @[:@6.4]
  output [7:0]   sc2mac_dat_a_data48, // @[:@6.4]
  output [7:0]   sc2mac_dat_a_data49, // @[:@6.4]
  output [7:0]   sc2mac_dat_a_data50, // @[:@6.4]
  output [7:0]   sc2mac_dat_a_data51, // @[:@6.4]
  output [7:0]   sc2mac_dat_a_data52, // @[:@6.4]
  output [7:0]   sc2mac_dat_a_data53, // @[:@6.4]
  output [7:0]   sc2mac_dat_a_data54, // @[:@6.4]
  output [7:0]   sc2mac_dat_a_data55, // @[:@6.4]
  output [7:0]   sc2mac_dat_a_data56, // @[:@6.4]
  output [7:0]   sc2mac_dat_a_data57, // @[:@6.4]
  output [7:0]   sc2mac_dat_a_data58, // @[:@6.4]
  output [7:0]   sc2mac_dat_a_data59, // @[:@6.4]
  output [7:0]   sc2mac_dat_a_data60, // @[:@6.4]
  output [7:0]   sc2mac_dat_a_data61, // @[:@6.4]
  output [7:0]   sc2mac_dat_a_data62, // @[:@6.4]
  output [7:0]   sc2mac_dat_a_data63, // @[:@6.4]
  output [8:0]   sc2mac_dat_a_pd, // @[:@6.4]
  output         sc2mac_dat_b_pvld, // @[:@6.4]
  output [63:0]  sc2mac_dat_b_mask, // @[:@6.4]
  output [7:0]   sc2mac_dat_b_data0, // @[:@6.4]
  output [7:0]   sc2mac_dat_b_data1, // @[:@6.4]
  output [7:0]   sc2mac_dat_b_data2, // @[:@6.4]
  output [7:0]   sc2mac_dat_b_data3, // @[:@6.4]
  output [7:0]   sc2mac_dat_b_data4, // @[:@6.4]
  output [7:0]   sc2mac_dat_b_data5, // @[:@6.4]
  output [7:0]   sc2mac_dat_b_data6, // @[:@6.4]
  output [7:0]   sc2mac_dat_b_data7, // @[:@6.4]
  output [7:0]   sc2mac_dat_b_data8, // @[:@6.4]
  output [7:0]   sc2mac_dat_b_data9, // @[:@6.4]
  output [7:0]   sc2mac_dat_b_data10, // @[:@6.4]
  output [7:0]   sc2mac_dat_b_data11, // @[:@6.4]
  output [7:0]   sc2mac_dat_b_data12, // @[:@6.4]
  output [7:0]   sc2mac_dat_b_data13, // @[:@6.4]
  output [7:0]   sc2mac_dat_b_data14, // @[:@6.4]
  output [7:0]   sc2mac_dat_b_data15, // @[:@6.4]
  output [7:0]   sc2mac_dat_b_data16, // @[:@6.4]
  output [7:0]   sc2mac_dat_b_data17, // @[:@6.4]
  output [7:0]   sc2mac_dat_b_data18, // @[:@6.4]
  output [7:0]   sc2mac_dat_b_data19, // @[:@6.4]
  output [7:0]   sc2mac_dat_b_data20, // @[:@6.4]
  output [7:0]   sc2mac_dat_b_data21, // @[:@6.4]
  output [7:0]   sc2mac_dat_b_data22, // @[:@6.4]
  output [7:0]   sc2mac_dat_b_data23, // @[:@6.4]
  output [7:0]   sc2mac_dat_b_data24, // @[:@6.4]
  output [7:0]   sc2mac_dat_b_data25, // @[:@6.4]
  output [7:0]   sc2mac_dat_b_data26, // @[:@6.4]
  output [7:0]   sc2mac_dat_b_data27, // @[:@6.4]
  output [7:0]   sc2mac_dat_b_data28, // @[:@6.4]
  output [7:0]   sc2mac_dat_b_data29, // @[:@6.4]
  output [7:0]   sc2mac_dat_b_data30, // @[:@6.4]
  output [7:0]   sc2mac_dat_b_data31, // @[:@6.4]
  output [7:0]   sc2mac_dat_b_data32, // @[:@6.4]
  output [7:0]   sc2mac_dat_b_data33, // @[:@6.4]
  output [7:0]   sc2mac_dat_b_data34, // @[:@6.4]
  output [7:0]   sc2mac_dat_b_data35, // @[:@6.4]
  output [7:0]   sc2mac_dat_b_data36, // @[:@6.4]
  output [7:0]   sc2mac_dat_b_data37, // @[:@6.4]
  output [7:0]   sc2mac_dat_b_data38, // @[:@6.4]
  output [7:0]   sc2mac_dat_b_data39, // @[:@6.4]
  output [7:0]   sc2mac_dat_b_data40, // @[:@6.4]
  output [7:0]   sc2mac_dat_b_data41, // @[:@6.4]
  output [7:0]   sc2mac_dat_b_data42, // @[:@6.4]
  output [7:0]   sc2mac_dat_b_data43, // @[:@6.4]
  output [7:0]   sc2mac_dat_b_data44, // @[:@6.4]
  output [7:0]   sc2mac_dat_b_data45, // @[:@6.4]
  output [7:0]   sc2mac_dat_b_data46, // @[:@6.4]
  output [7:0]   sc2mac_dat_b_data47, // @[:@6.4]
  output [7:0]   sc2mac_dat_b_data48, // @[:@6.4]
  output [7:0]   sc2mac_dat_b_data49, // @[:@6.4]
  output [7:0]   sc2mac_dat_b_data50, // @[:@6.4]
  output [7:0]   sc2mac_dat_b_data51, // @[:@6.4]
  output [7:0]   sc2mac_dat_b_data52, // @[:@6.4]
  output [7:0]   sc2mac_dat_b_data53, // @[:@6.4]
  output [7:0]   sc2mac_dat_b_data54, // @[:@6.4]
  output [7:0]   sc2mac_dat_b_data55, // @[:@6.4]
  output [7:0]   sc2mac_dat_b_data56, // @[:@6.4]
  output [7:0]   sc2mac_dat_b_data57, // @[:@6.4]
  output [7:0]   sc2mac_dat_b_data58, // @[:@6.4]
  output [7:0]   sc2mac_dat_b_data59, // @[:@6.4]
  output [7:0]   sc2mac_dat_b_data60, // @[:@6.4]
  output [7:0]   sc2mac_dat_b_data61, // @[:@6.4]
  output [7:0]   sc2mac_dat_b_data62, // @[:@6.4]
  output [7:0]   sc2mac_dat_b_data63, // @[:@6.4]
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
  wire  _T_207; // @[NV_NVDLA_CSC_dl_for_check.scala 81:38:@8.4]
  wire  is_sg_idle; // @[NV_NVDLA_CSC_dl_for_check.scala 85:31:@9.4]
  wire  is_sg_done; // @[NV_NVDLA_CSC_dl_for_check.scala 87:31:@11.4]
  wire  layer_st; // @[NV_NVDLA_CSC_dl_for_check.scala 94:32:@14.4]
  wire  is_conv; // @[NV_NVDLA_CSC_dl_for_check.scala 96:35:@16.4]
  wire  is_img; // @[NV_NVDLA_CSC_dl_for_check.scala 97:22:@17.4]
  wire [6:0] _T_216; // @[NV_NVDLA_CSC_dl_for_check.scala 105:53:@18.4]
  wire [6:0] _T_218; // @[NV_NVDLA_CSC_dl_for_check.scala 105:24:@19.4]
  wire [2:0] sub_h_total_w; // @[NV_NVDLA_CSC_dl_for_check.scala 105:100:@20.4]
  wire [2:0] sub_h_cmp_w; // @[NV_NVDLA_CSC_dl_for_check.scala 106:22:@21.4]
  wire [3:0] _T_221; // @[NV_NVDLA_CSC_dl_for_check.scala 107:34:@22.4]
  wire [3:0] dataout_w_init; // @[NV_NVDLA_CSC_dl_for_check.scala 107:34:@23.4]
  wire [3:0] conv_x_stride_w; // @[NV_NVDLA_CSC_dl_for_check.scala 108:73:@24.4]
  wire [1:0] _T_225; // @[NV_NVDLA_CSC_dl_for_check.scala 109:62:@26.4]
  wire [5:0] _T_228; // @[Cat.scala 30:58:@27.4]
  wire [4:0] _T_231; // @[Cat.scala 30:58:@28.4]
  wire [4:0] _GEN_681; // @[NV_NVDLA_CSC_dl_for_check.scala 111:74:@29.4]
  wire [5:0] _T_232; // @[NV_NVDLA_CSC_dl_for_check.scala 111:74:@29.4]
  wire  _T_233; // @[Mux.scala 46:19:@30.4]
  wire [5:0] _T_234; // @[Mux.scala 46:16:@31.4]
  wire  _T_235; // @[Mux.scala 46:19:@32.4]
  wire [5:0] pixel_x_stride_w; // @[Mux.scala 46:16:@33.4]
  wire  _T_237; // @[NV_NVDLA_CSC_dl_for_check.scala 113:88:@34.4]
  wire [5:0] _T_243; // @[NV_NVDLA_CSC_dl_for_check.scala 113:172:@36.4]
  wire [5:0] _T_244; // @[NV_NVDLA_CSC_dl_for_check.scala 113:58:@37.4]
  wire [6:0] _T_247; // @[Cat.scala 30:58:@38.4]
  wire [6:0] _GEN_682; // @[NV_NVDLA_CSC_dl_for_check.scala 114:81:@39.4]
  wire [7:0] _T_248; // @[NV_NVDLA_CSC_dl_for_check.scala 114:81:@39.4]
  wire [6:0] _T_249; // @[NV_NVDLA_CSC_dl_for_check.scala 114:81:@40.4]
  wire [6:0] _GEN_683; // @[NV_NVDLA_CSC_dl_for_check.scala 114:100:@42.4]
  wire [7:0] _T_251; // @[NV_NVDLA_CSC_dl_for_check.scala 114:100:@42.4]
  wire [6:0] _T_252; // @[NV_NVDLA_CSC_dl_for_check.scala 114:100:@43.4]
  wire [6:0] _T_255; // @[NV_NVDLA_CSC_dl_for_check.scala 115:58:@45.4]
  wire [5:0] _T_256; // @[NV_NVDLA_CSC_dl_for_check.scala 115:58:@46.4]
  wire  _T_257; // @[Mux.scala 46:19:@47.4]
  wire [5:0] _T_258; // @[Mux.scala 46:16:@48.4]
  wire  _T_259; // @[Mux.scala 46:19:@49.4]
  wire [6:0] pixel_x_init_w; // @[Mux.scala 46:16:@50.4]
  wire [6:0] pixel_x_init_offset_w; // @[NV_NVDLA_CSC_dl_for_check.scala 116:80:@52.4]
  wire [7:0] _T_264; // @[Cat.scala 30:58:@53.4]
  wire [6:0] _T_269; // @[Mux.scala 46:16:@56.4]
  wire [7:0] pixel_x_add_w; // @[Mux.scala 46:16:@58.4]
  wire [11:0] pixel_ch_stride_w; // @[Cat.scala 30:58:@59.4]
  wire [3:0] conv_y_stride_w; // @[NV_NVDLA_CSC_dl_for_check.scala 126:74:@60.4]
  wire [5:0] _T_278; // @[NV_NVDLA_CSC_dl_for_check.scala 127:74:@63.4]
  wire [5:0] x_dilate_w; // @[NV_NVDLA_CSC_dl_for_check.scala 127:21:@64.4]
  wire [5:0] _T_282; // @[NV_NVDLA_CSC_dl_for_check.scala 128:74:@66.4]
  wire [5:0] y_dilate_w; // @[NV_NVDLA_CSC_dl_for_check.scala 128:21:@67.4]
  reg  layer_st_d1; // @[NV_NVDLA_CSC_dl_for_check.scala 130:26:@68.4]
  reg [31:0] _RAND_0;
  reg [5:0] data_batch; // @[NV_NVDLA_CSC_dl_for_check.scala 131:25:@69.4]
  reg [31:0] _RAND_1;
  reg [13:0] rls_slices; // @[NV_NVDLA_CSC_dl_for_check.scala 132:25:@70.4]
  reg [31:0] _RAND_2;
  reg [13:0] h_offset_slice; // @[NV_NVDLA_CSC_dl_for_check.scala 133:29:@71.4]
  reg [31:0] _RAND_3;
  reg [14:0] entries; // @[NV_NVDLA_CSC_dl_for_check.scala 134:22:@72.4]
  reg [31:0] _RAND_4;
  reg [14:0] entries_batch; // @[NV_NVDLA_CSC_dl_for_check.scala 135:28:@73.4]
  reg [31:0] _RAND_5;
  reg [12:0] dataout_width_cmp; // @[NV_NVDLA_CSC_dl_for_check.scala 136:32:@74.4]
  reg [31:0] _RAND_6;
  reg [14:0] rls_entries; // @[NV_NVDLA_CSC_dl_for_check.scala 138:26:@76.4]
  reg [31:0] _RAND_7;
  reg [11:0] h_bias_0_stride; // @[NV_NVDLA_CSC_dl_for_check.scala 139:30:@77.4]
  reg [31:0] _RAND_8;
  reg [11:0] h_bias_1_stride; // @[NV_NVDLA_CSC_dl_for_check.scala 140:30:@78.4]
  reg [31:0] _RAND_9;
  reg [13:0] slice_left; // @[NV_NVDLA_CSC_dl_for_check.scala 141:25:@79.4]
  reg [31:0] _RAND_10;
  wire [14:0] entries_single_w; // @[NV_NVDLA_CSC_dl_for_check.scala 144:43:@80.4]
  wire [20:0] _T_309; // @[NV_NVDLA_CSC_dl_for_check.scala 145:41:@82.4]
  wire [14:0] entries_batch_w; // @[NV_NVDLA_CSC_dl_for_check.scala 145:56:@83.4]
  wire [16:0] entries_w; // @[NV_NVDLA_CSC_dl_for_check.scala 146:20:@86.4]
  wire [11:0] h_offset_slice_w; // @[NV_NVDLA_CSC_dl_for_check.scala 147:37:@87.4]
  wire [14:0] _GEN_684; // @[NV_NVDLA_CSC_dl_for_check.scala 148:33:@88.4]
  wire [20:0] h_bias_0_stride_w; // @[NV_NVDLA_CSC_dl_for_check.scala 148:33:@88.4]
  wire [14:0] _GEN_685; // @[NV_NVDLA_CSC_dl_for_check.scala 149:33:@89.4]
  wire [28:0] h_bias_1_stride_w; // @[NV_NVDLA_CSC_dl_for_check.scala 149:33:@89.4]
  wire [12:0] rls_slices_w; // @[NV_NVDLA_CSC_dl_for_check.scala 150:41:@90.4]
  wire [13:0] _T_316; // @[NV_NVDLA_CSC_dl_for_check.scala 151:77:@91.4]
  wire [12:0] _GEN_686; // @[NV_NVDLA_CSC_dl_for_check.scala 151:113:@92.4]
  wire [13:0] _T_317; // @[NV_NVDLA_CSC_dl_for_check.scala 151:113:@92.4]
  wire [13:0] _T_318; // @[NV_NVDLA_CSC_dl_for_check.scala 151:113:@93.4]
  wire [13:0] slice_left_w; // @[NV_NVDLA_CSC_dl_for_check.scala 151:23:@94.4]
  wire [13:0] slices_oprand; // @[NV_NVDLA_CSC_dl_for_check.scala 152:24:@95.4]
  wire [14:0] _GEN_687; // @[NV_NVDLA_CSC_dl_for_check.scala 153:37:@96.4]
  wire [28:0] slice_entries_w; // @[NV_NVDLA_CSC_dl_for_check.scala 153:37:@96.4]
  reg [21:0] is_winograd_d1; // @[NV_NVDLA_CSC_dl_for_check.scala 157:29:@99.4]
  reg [31:0] _RAND_11;
  reg [33:0] is_img_d1; // @[NV_NVDLA_CSC_dl_for_check.scala 158:24:@100.4]
  reg [63:0] _RAND_12;
  reg [4:0] data_bank; // @[NV_NVDLA_CSC_dl_for_check.scala 159:24:@101.4]
  reg [31:0] _RAND_13;
  reg [13:0] datain_width; // @[NV_NVDLA_CSC_dl_for_check.scala 160:27:@102.4]
  reg [31:0] _RAND_14;
  reg [12:0] datain_width_cmp; // @[NV_NVDLA_CSC_dl_for_check.scala 161:31:@103.4]
  reg [31:0] _RAND_15;
  reg [12:0] datain_height_cmp; // @[NV_NVDLA_CSC_dl_for_check.scala 162:32:@104.4]
  reg [31:0] _RAND_16;
  reg [12:0] datain_channel_cmp; // @[NV_NVDLA_CSC_dl_for_check.scala 163:33:@105.4]
  reg [31:0] _RAND_17;
  reg [2:0] sub_h_total_g0; // @[NV_NVDLA_CSC_dl_for_check.scala 164:29:@106.4]
  reg [31:0] _RAND_18;
  reg [2:0] sub_h_total_g1; // @[NV_NVDLA_CSC_dl_for_check.scala 165:29:@107.4]
  reg [31:0] _RAND_19;
  reg [1:0] sub_h_total_g2; // @[NV_NVDLA_CSC_dl_for_check.scala 166:29:@108.4]
  reg [31:0] _RAND_20;
  reg [2:0] sub_h_total_g3; // @[NV_NVDLA_CSC_dl_for_check.scala 167:29:@109.4]
  reg [31:0] _RAND_21;
  reg [2:0] sub_h_total_g4; // @[NV_NVDLA_CSC_dl_for_check.scala 168:29:@110.4]
  reg [31:0] _RAND_22;
  reg [2:0] sub_h_total_g5; // @[NV_NVDLA_CSC_dl_for_check.scala 169:29:@111.4]
  reg [31:0] _RAND_23;
  reg [2:0] sub_h_total_g6; // @[NV_NVDLA_CSC_dl_for_check.scala 170:29:@112.4]
  reg [31:0] _RAND_24;
  reg [2:0] sub_h_total_g8; // @[NV_NVDLA_CSC_dl_for_check.scala 172:29:@114.4]
  reg [31:0] _RAND_25;
  reg [2:0] sub_h_total_g9; // @[NV_NVDLA_CSC_dl_for_check.scala 173:29:@115.4]
  reg [31:0] _RAND_26;
  reg [2:0] sub_h_total_g11; // @[NV_NVDLA_CSC_dl_for_check.scala 175:30:@117.4]
  reg [31:0] _RAND_27;
  reg [2:0] sub_h_cmp_g0; // @[NV_NVDLA_CSC_dl_for_check.scala 176:27:@118.4]
  reg [31:0] _RAND_28;
  reg [2:0] sub_h_cmp_g1; // @[NV_NVDLA_CSC_dl_for_check.scala 177:27:@119.4]
  reg [31:0] _RAND_29;
  reg [3:0] conv_x_stride; // @[NV_NVDLA_CSC_dl_for_check.scala 178:28:@120.4]
  reg [31:0] _RAND_30;
  reg [3:0] conv_y_stride; // @[NV_NVDLA_CSC_dl_for_check.scala 179:28:@121.4]
  reg [31:0] _RAND_31;
  reg [4:0] batch_cmp; // @[NV_NVDLA_CSC_dl_for_check.scala 181:24:@123.4]
  reg [31:0] _RAND_32;
  reg [5:0] pixel_x_init; // @[NV_NVDLA_CSC_dl_for_check.scala 182:27:@124.4]
  reg [31:0] _RAND_33;
  reg [6:0] pixel_x_init_offset; // @[NV_NVDLA_CSC_dl_for_check.scala 183:34:@125.4]
  reg [31:0] _RAND_34;
  reg [6:0] pixel_x_add; // @[NV_NVDLA_CSC_dl_for_check.scala 184:26:@126.4]
  reg [31:0] _RAND_35;
  reg [6:0] pixel_x_byte_stride; // @[NV_NVDLA_CSC_dl_for_check.scala 185:34:@127.4]
  reg [31:0] _RAND_36;
  reg [11:0] pixel_ch_stride; // @[NV_NVDLA_CSC_dl_for_check.scala 186:30:@128.4]
  reg [31:0] _RAND_37;
  reg [5:0] x_dilate; // @[NV_NVDLA_CSC_dl_for_check.scala 187:23:@129.4]
  reg [31:0] _RAND_38;
  reg [5:0] y_dilate; // @[NV_NVDLA_CSC_dl_for_check.scala 188:23:@130.4]
  reg [31:0] _RAND_39;
  reg [15:0] pad_value; // @[NV_NVDLA_CSC_dl_for_check.scala 189:24:@131.4]
  reg [31:0] _RAND_40;
  reg [14:0] entries_cmp; // @[NV_NVDLA_CSC_dl_for_check.scala 190:26:@132.4]
  reg [31:0] _RAND_41;
  reg [12:0] h_bias_2_stride; // @[NV_NVDLA_CSC_dl_for_check.scala 191:30:@133.4]
  reg [31:0] _RAND_42;
  reg [12:0] h_bias_3_stride; // @[NV_NVDLA_CSC_dl_for_check.scala 192:30:@134.4]
  reg [31:0] _RAND_43;
  reg [13:0] last_slices; // @[NV_NVDLA_CSC_dl_for_check.scala 194:26:@135.4]
  reg [31:0] _RAND_44;
  reg [12:0] last_entries; // @[NV_NVDLA_CSC_dl_for_check.scala 195:27:@136.4]
  reg [31:0] _RAND_45;
  wire [33:0] _T_407; // @[Bitwise.scala 72:12:@143.6]
  wire [5:0] _T_409; // @[NV_NVDLA_CSC_dl_for_check.scala 202:38:@145.6]
  wire [13:0] _T_414; // @[NV_NVDLA_CSC_dl_for_check.scala 203:109:@149.6]
  wire [6:0] _T_417; // @[NV_NVDLA_CSC_dl_for_check.scala 206:109:@155.6]
  wire [10:0] _T_418; // @[NV_NVDLA_CSC_dl_for_check.scala 206:30:@156.6]
  wire [1:0] _T_419; // @[NV_NVDLA_CSC_dl_for_check.scala 209:36:@160.6]
  wire [14:0] _T_422; // @[Cat.scala 30:58:@189.6]
  wire [21:0] _GEN_0; // @[NV_NVDLA_CSC_dl_for_check.scala 199:15:@139.4]
  wire [33:0] _GEN_1; // @[NV_NVDLA_CSC_dl_for_check.scala 199:15:@139.4]
  wire [5:0] _GEN_2; // @[NV_NVDLA_CSC_dl_for_check.scala 199:15:@139.4]
  wire [13:0] _GEN_3; // @[NV_NVDLA_CSC_dl_for_check.scala 199:15:@139.4]
  wire [12:0] _GEN_4; // @[NV_NVDLA_CSC_dl_for_check.scala 199:15:@139.4]
  wire [12:0] _GEN_5; // @[NV_NVDLA_CSC_dl_for_check.scala 199:15:@139.4]
  wire [12:0] _GEN_6; // @[NV_NVDLA_CSC_dl_for_check.scala 199:15:@139.4]
  wire [2:0] _GEN_7; // @[NV_NVDLA_CSC_dl_for_check.scala 199:15:@139.4]
  wire [2:0] _GEN_8; // @[NV_NVDLA_CSC_dl_for_check.scala 199:15:@139.4]
  wire [1:0] _GEN_9; // @[NV_NVDLA_CSC_dl_for_check.scala 199:15:@139.4]
  wire [2:0] _GEN_10; // @[NV_NVDLA_CSC_dl_for_check.scala 199:15:@139.4]
  wire [2:0] _GEN_11; // @[NV_NVDLA_CSC_dl_for_check.scala 199:15:@139.4]
  wire [2:0] _GEN_12; // @[NV_NVDLA_CSC_dl_for_check.scala 199:15:@139.4]
  wire [2:0] _GEN_13; // @[NV_NVDLA_CSC_dl_for_check.scala 199:15:@139.4]
  wire [2:0] _GEN_15; // @[NV_NVDLA_CSC_dl_for_check.scala 199:15:@139.4]
  wire [2:0] _GEN_16; // @[NV_NVDLA_CSC_dl_for_check.scala 199:15:@139.4]
  wire [2:0] _GEN_18; // @[NV_NVDLA_CSC_dl_for_check.scala 199:15:@139.4]
  wire [2:0] _GEN_19; // @[NV_NVDLA_CSC_dl_for_check.scala 199:15:@139.4]
  wire [2:0] _GEN_20; // @[NV_NVDLA_CSC_dl_for_check.scala 199:15:@139.4]
  wire [3:0] _GEN_21; // @[NV_NVDLA_CSC_dl_for_check.scala 199:15:@139.4]
  wire [3:0] _GEN_22; // @[NV_NVDLA_CSC_dl_for_check.scala 199:15:@139.4]
  wire [5:0] _GEN_24; // @[NV_NVDLA_CSC_dl_for_check.scala 199:15:@139.4]
  wire [4:0] _GEN_25; // @[NV_NVDLA_CSC_dl_for_check.scala 199:15:@139.4]
  wire [6:0] _GEN_26; // @[NV_NVDLA_CSC_dl_for_check.scala 199:15:@139.4]
  wire [6:0] _GEN_27; // @[NV_NVDLA_CSC_dl_for_check.scala 199:15:@139.4]
  wire [7:0] _GEN_28; // @[NV_NVDLA_CSC_dl_for_check.scala 199:15:@139.4]
  wire [6:0] _GEN_29; // @[NV_NVDLA_CSC_dl_for_check.scala 199:15:@139.4]
  wire [11:0] _GEN_30; // @[NV_NVDLA_CSC_dl_for_check.scala 199:15:@139.4]
  wire [5:0] _GEN_31; // @[NV_NVDLA_CSC_dl_for_check.scala 199:15:@139.4]
  wire [5:0] _GEN_32; // @[NV_NVDLA_CSC_dl_for_check.scala 199:15:@139.4]
  wire [15:0] _GEN_33; // @[NV_NVDLA_CSC_dl_for_check.scala 199:15:@139.4]
  wire [16:0] _GEN_34; // @[NV_NVDLA_CSC_dl_for_check.scala 199:15:@139.4]
  wire [14:0] _GEN_35; // @[NV_NVDLA_CSC_dl_for_check.scala 199:15:@139.4]
  wire [14:0] _GEN_36; // @[NV_NVDLA_CSC_dl_for_check.scala 199:15:@139.4]
  wire [13:0] _GEN_37; // @[NV_NVDLA_CSC_dl_for_check.scala 199:15:@139.4]
  wire [13:0] _GEN_38; // @[NV_NVDLA_CSC_dl_for_check.scala 199:15:@139.4]
  wire [13:0] _GEN_39; // @[NV_NVDLA_CSC_dl_for_check.scala 199:15:@139.4]
  wire [12:0] _GEN_40; // @[NV_NVDLA_CSC_dl_for_check.scala 199:15:@139.4]
  wire [20:0] _GEN_43; // @[NV_NVDLA_CSC_dl_for_check.scala 244:18:@202.4]
  wire [28:0] _GEN_44; // @[NV_NVDLA_CSC_dl_for_check.scala 244:18:@202.4]
  wire [14:0] _GEN_45; // @[NV_NVDLA_CSC_dl_for_check.scala 244:18:@202.4]
  wire [14:0] _GEN_46; // @[NV_NVDLA_CSC_dl_for_check.scala 244:18:@202.4]
  wire [28:0] _GEN_47; // @[NV_NVDLA_CSC_dl_for_check.scala 244:18:@202.4]
  wire [13:0] _GEN_48; // @[NV_NVDLA_CSC_dl_for_check.scala 251:17:@209.4]
  wire [28:0] _GEN_49; // @[NV_NVDLA_CSC_dl_for_check.scala 251:17:@209.4]
  reg [14:0] dat_entry_st; // @[NV_NVDLA_CSC_dl_for_check.scala 274:59:@234.4]
  reg [31:0] _RAND_46;
  wire  _T_503; // @[NV_NVDLA_CSC_dl_for_check.scala 315:37:@293.4]
  wire  _T_504; // @[NV_NVDLA_CSC_dl_for_check.scala 315:23:@294.4]
  wire  _T_1377; // @[NV_NVDLA_CSC_dl_for_check.scala 911:32:@1212.4]
  reg  dat_rsp_l3_pvld; // @[NV_NVDLA_CSC_dl_for_check.scala 896:41:@1180.4]
  reg [31:0] _RAND_47;
  wire  _T_1378; // @[NV_NVDLA_CSC_dl_for_check.scala 911:36:@1213.4]
  wire  _T_1379; // @[NV_NVDLA_CSC_dl_for_check.scala 912:35:@1214.4]
  reg  dat_rsp_l1_pvld; // @[NV_NVDLA_CSC_dl_for_check.scala 896:41:@1178.4]
  reg [31:0] _RAND_48;
  wire  _T_1380; // @[NV_NVDLA_CSC_dl_for_check.scala 912:39:@1215.4]
  wire  _T_1381; // @[NV_NVDLA_CSC_dl_for_check.scala 911:57:@1216.4]
  wire  _T_1382; // @[NV_NVDLA_CSC_dl_for_check.scala 913:35:@1217.4]
  reg  dat_rsp_l0_pvld; // @[NV_NVDLA_CSC_dl_for_check.scala 896:41:@1177.4]
  reg [31:0] _RAND_49;
  wire  _T_1383; // @[NV_NVDLA_CSC_dl_for_check.scala 913:39:@1218.4]
  wire  dat_rsp_pvld; // @[NV_NVDLA_CSC_dl_for_check.scala 912:60:@1219.4]
  wire  _T_1385; // @[NV_NVDLA_CSC_dl_for_check.scala 920:42:@1221.4]
  wire [26:0] _T_1389; // @[Bitwise.scala 72:12:@1223.4]
  reg [26:0] _T_1367; // @[NV_NVDLA_CSC_dl_for_check.scala 898:41:@1185.4]
  reg [31:0] _RAND_50;
  wire [26:0] _T_1390; // @[NV_NVDLA_CSC_dl_for_check.scala 920:47:@1224.4]
  wire  _T_1391; // @[NV_NVDLA_CSC_dl_for_check.scala 921:42:@1225.4]
  wire [26:0] _T_1395; // @[Bitwise.scala 72:12:@1227.4]
  reg [26:0] _T_1361; // @[NV_NVDLA_CSC_dl_for_check.scala 898:41:@1183.4]
  reg [31:0] _RAND_51;
  wire [26:0] _T_1396; // @[NV_NVDLA_CSC_dl_for_check.scala 921:47:@1228.4]
  wire [26:0] _T_1397; // @[NV_NVDLA_CSC_dl_for_check.scala 920:66:@1229.4]
  wire  _T_1398; // @[NV_NVDLA_CSC_dl_for_check.scala 922:42:@1230.4]
  wire [26:0] _T_1402; // @[Bitwise.scala 72:12:@1232.4]
  reg [26:0] _T_1358; // @[NV_NVDLA_CSC_dl_for_check.scala 898:41:@1182.4]
  reg [31:0] _RAND_52;
  wire [26:0] _T_1403; // @[NV_NVDLA_CSC_dl_for_check.scala 922:47:@1233.4]
  wire [26:0] dat_rsp_pd; // @[NV_NVDLA_CSC_dl_for_check.scala 921:66:@1234.4]
  wire  dat_rsp_rls; // @[NV_NVDLA_CSC_dl_for_check.scala 946:26:@1253.4]
  wire  sub_rls; // @[NV_NVDLA_CSC_dl_for_check.scala 312:29:@292.4]
  wire  _T_506; // @[NV_NVDLA_CSC_dl_for_check.scala 315:66:@295.4]
  wire  _T_507; // @[NV_NVDLA_CSC_dl_for_check.scala 315:53:@296.4]
  wire  dat_rls; // @[NV_NVDLA_CSC_dl_for_check.scala 315:42:@297.4]
  wire [13:0] sc2cdma_dat_slices_w; // @[NV_NVDLA_CSC_dl_for_check.scala 316:28:@299.4]
  wire [14:0] sc2cdma_dat_entries_w; // @[NV_NVDLA_CSC_dl_for_check.scala 317:29:@301.4]
  wire [14:0] dat_entry_avl_sub; // @[NV_NVDLA_CSC_dl_for_check.scala 284:28:@243.4]
  wire [15:0] _T_460; // @[NV_NVDLA_CSC_dl_for_check.scala 289:37:@248.4]
  wire [14:0] dat_entry_st_inc; // @[NV_NVDLA_CSC_dl_for_check.scala 289:37:@249.4]
  wire [13:0] _T_466; // @[Cat.scala 30:58:@251.4]
  wire [14:0] _GEN_690; // @[NV_NVDLA_CSC_dl_for_check.scala 290:46:@252.4]
  wire [15:0] _T_467; // @[NV_NVDLA_CSC_dl_for_check.scala 290:46:@252.4]
  wire [15:0] _T_468; // @[NV_NVDLA_CSC_dl_for_check.scala 290:46:@253.4]
  wire [14:0] dat_entry_st_inc_wrap; // @[NV_NVDLA_CSC_dl_for_check.scala 290:46:@254.4]
  wire  is_dat_entry_st_wrap; // @[NV_NVDLA_CSC_dl_for_check.scala 291:45:@257.4]
  wire [14:0] _T_476; // @[NV_NVDLA_CSC_dl_for_check.scala 292:83:@258.4]
  wire [14:0] dat_entry_st_w; // @[NV_NVDLA_CSC_dl_for_check.scala 292:25:@259.4]
  wire  _T_498; // @[NV_NVDLA_CSC_dl_for_check.scala 303:13:@282.4]
  wire [14:0] _GEN_55; // @[NV_NVDLA_CSC_dl_for_check.scala 303:25:@283.4]
  reg  _T_513; // @[NV_NVDLA_CSC_dl_for_check.scala 319:37:@303.4]
  reg [31:0] _RAND_53;
  reg [13:0] _T_516; // @[Reg.scala 19:20:@306.4]
  reg [31:0] _RAND_54;
  wire [13:0] _GEN_57; // @[Reg.scala 20:19:@307.4]
  reg [14:0] _T_519; // @[Reg.scala 19:20:@311.4]
  reg [31:0] _RAND_55;
  wire [14:0] _GEN_58; // @[Reg.scala 20:19:@312.4]
  reg  _T_524; // @[NV_NVDLA_CSC_dl_for_check.scala 333:50:@317.4]
  reg [31:0] _RAND_56;
  reg  _T_527; // @[NV_NVDLA_CSC_dl_for_check.scala 333:50:@318.4]
  reg [31:0] _RAND_57;
  reg  _T_530; // @[NV_NVDLA_CSC_dl_for_check.scala 333:50:@319.4]
  reg [31:0] _RAND_58;
  reg  _T_533; // @[NV_NVDLA_CSC_dl_for_check.scala 333:50:@320.4]
  reg [31:0] _RAND_59;
  reg  _T_536; // @[NV_NVDLA_CSC_dl_for_check.scala 333:50:@321.4]
  reg [31:0] _RAND_60;
  reg [30:0] _T_541; // @[NV_NVDLA_CSC_dl_for_check.scala 335:47:@323.4]
  reg [31:0] _RAND_61;
  reg [30:0] _T_544; // @[NV_NVDLA_CSC_dl_for_check.scala 335:47:@324.4]
  reg [31:0] _RAND_62;
  reg [30:0] _T_547; // @[NV_NVDLA_CSC_dl_for_check.scala 335:47:@325.4]
  reg [31:0] _RAND_63;
  reg [30:0] _T_550; // @[NV_NVDLA_CSC_dl_for_check.scala 335:47:@326.4]
  reg [31:0] _RAND_64;
  reg [30:0] _T_553; // @[NV_NVDLA_CSC_dl_for_check.scala 335:47:@327.4]
  reg [31:0] _RAND_65;
  wire [30:0] _GEN_59; // @[NV_NVDLA_CSC_dl_for_check.scala 342:26:@331.4]
  wire [30:0] _GEN_60; // @[NV_NVDLA_CSC_dl_for_check.scala 342:26:@335.4]
  wire [30:0] _GEN_61; // @[NV_NVDLA_CSC_dl_for_check.scala 342:26:@339.4]
  wire [30:0] _GEN_62; // @[NV_NVDLA_CSC_dl_for_check.scala 342:26:@343.4]
  wire [30:0] _GEN_63; // @[NV_NVDLA_CSC_dl_for_check.scala 342:26:@347.4]
  wire  _T_554; // @[NV_NVDLA_CSC_dl_for_check.scala 347:36:@350.4]
  wire  dl_in_pvld; // @[NV_NVDLA_CSC_dl_for_check.scala 347:21:@351.4]
  wire  _T_555; // @[NV_NVDLA_CSC_dl_for_check.scala 348:34:@352.4]
  wire [30:0] dl_in_pd; // @[NV_NVDLA_CSC_dl_for_check.scala 348:19:@353.4]
  reg  _T_560; // @[NV_NVDLA_CSC_dl_for_check.scala 352:36:@355.4]
  reg [31:0] _RAND_66;
  reg  _T_563; // @[NV_NVDLA_CSC_dl_for_check.scala 352:36:@356.4]
  reg [31:0] _RAND_67;
  reg  _T_566; // @[NV_NVDLA_CSC_dl_for_check.scala 352:36:@357.4]
  reg [31:0] _RAND_68;
  reg  _T_569; // @[NV_NVDLA_CSC_dl_for_check.scala 352:36:@358.4]
  reg [31:0] _RAND_69;
  reg [30:0] _T_574; // @[NV_NVDLA_CSC_dl_for_check.scala 354:34:@360.4]
  reg [31:0] _RAND_70;
  reg [30:0] _T_577; // @[NV_NVDLA_CSC_dl_for_check.scala 354:34:@361.4]
  reg [31:0] _RAND_71;
  reg [30:0] _T_580; // @[NV_NVDLA_CSC_dl_for_check.scala 354:34:@362.4]
  reg [31:0] _RAND_72;
  reg [30:0] _T_583; // @[NV_NVDLA_CSC_dl_for_check.scala 354:34:@363.4]
  reg [31:0] _RAND_73;
  wire [30:0] _GEN_64; // @[NV_NVDLA_CSC_dl_for_check.scala 361:23:@367.4]
  wire [30:0] _GEN_65; // @[NV_NVDLA_CSC_dl_for_check.scala 361:23:@371.4]
  wire [30:0] _GEN_66; // @[NV_NVDLA_CSC_dl_for_check.scala 361:23:@375.4]
  wire [30:0] _GEN_67; // @[NV_NVDLA_CSC_dl_for_check.scala 361:23:@379.4]
  wire  _T_584; // @[NV_NVDLA_CSC_dl_for_check.scala 366:30:@382.4]
  wire  _T_585; // @[NV_NVDLA_CSC_dl_for_check.scala 366:34:@383.4]
  wire  _T_586; // @[NV_NVDLA_CSC_dl_for_check.scala 367:30:@384.4]
  wire  _T_587; // @[NV_NVDLA_CSC_dl_for_check.scala 367:34:@385.4]
  wire  _T_588; // @[NV_NVDLA_CSC_dl_for_check.scala 366:50:@386.4]
  wire  _T_589; // @[NV_NVDLA_CSC_dl_for_check.scala 368:30:@387.4]
  wire  _T_590; // @[NV_NVDLA_CSC_dl_for_check.scala 368:34:@388.4]
  wire  dl_pvld; // @[NV_NVDLA_CSC_dl_for_check.scala 367:50:@389.4]
  wire  _T_591; // @[NV_NVDLA_CSC_dl_for_check.scala 370:37:@390.4]
  wire [30:0] _T_595; // @[Bitwise.scala 72:12:@392.4]
  wire [30:0] _T_596; // @[NV_NVDLA_CSC_dl_for_check.scala 370:42:@393.4]
  wire  _T_597; // @[NV_NVDLA_CSC_dl_for_check.scala 371:37:@394.4]
  wire [30:0] _T_601; // @[Bitwise.scala 72:12:@396.4]
  wire [30:0] _T_602; // @[NV_NVDLA_CSC_dl_for_check.scala 371:42:@397.4]
  wire [30:0] _T_603; // @[NV_NVDLA_CSC_dl_for_check.scala 370:56:@398.4]
  wire  _T_604; // @[NV_NVDLA_CSC_dl_for_check.scala 372:37:@399.4]
  wire [30:0] _T_608; // @[Bitwise.scala 72:12:@401.4]
  wire [30:0] _T_609; // @[NV_NVDLA_CSC_dl_for_check.scala 372:42:@402.4]
  wire [30:0] dl_pd; // @[NV_NVDLA_CSC_dl_for_check.scala 371:56:@403.4]
  wire [4:0] dl_w_offset; // @[NV_NVDLA_CSC_dl_for_check.scala 375:24:@404.4]
  wire [4:0] dl_h_offset; // @[NV_NVDLA_CSC_dl_for_check.scala 376:24:@405.4]
  wire [6:0] dl_channel_size; // @[NV_NVDLA_CSC_dl_for_check.scala 377:28:@406.4]
  wire [6:0] dl_stripe_length; // @[NV_NVDLA_CSC_dl_for_check.scala 378:29:@407.4]
  wire [1:0] dl_cur_sub_h; // @[NV_NVDLA_CSC_dl_for_check.scala 379:25:@408.4]
  wire  dl_block_end; // @[NV_NVDLA_CSC_dl_for_check.scala 380:25:@409.4]
  wire  dl_channel_end; // @[NV_NVDLA_CSC_dl_for_check.scala 381:27:@410.4]
  wire  dl_group_end; // @[NV_NVDLA_CSC_dl_for_check.scala 382:25:@411.4]
  wire  dl_layer_end; // @[NV_NVDLA_CSC_dl_for_check.scala 383:25:@412.4]
  wire  dl_dat_release; // @[NV_NVDLA_CSC_dl_for_check.scala 384:27:@413.4]
  reg [4:0] batch_cnt; // @[NV_NVDLA_CSC_dl_for_check.scala 389:24:@416.4]
  reg [31:0] _RAND_74;
  reg [6:0] stripe_cnt; // @[NV_NVDLA_CSC_dl_for_check.scala 412:25:@441.4]
  reg [31:0] _RAND_75;
  wire  _T_666; // @[NV_NVDLA_CSC_dl_for_check.scala 439:37:@470.4]
  wire  _T_667; // @[NV_NVDLA_CSC_dl_for_check.scala 439:24:@471.4]
  reg [1:0] sub_h_cnt; // @[NV_NVDLA_CSC_dl_for_check.scala 401:24:@426.4]
  reg [31:0] _RAND_76;
  wire  _T_669; // @[NV_NVDLA_CSC_dl_for_check.scala 439:56:@472.4]
  wire  _T_670; // @[NV_NVDLA_CSC_dl_for_check.scala 439:44:@473.4]
  wire  _T_671; // @[NV_NVDLA_CSC_dl_for_check.scala 439:42:@474.4]
  wire  _T_673; // @[NV_NVDLA_CSC_dl_for_check.scala 439:75:@475.4]
  wire  _T_674; // @[NV_NVDLA_CSC_dl_for_check.scala 439:63:@476.4]
  wire  _T_675; // @[NV_NVDLA_CSC_dl_for_check.scala 439:61:@477.4]
  reg  dat_exec_valid_d1; // @[NV_NVDLA_CSC_dl_for_check.scala 431:32:@463.4]
  reg [31:0] _RAND_77;
  wire  _T_677; // @[NV_NVDLA_CSC_dl_for_check.scala 439:22:@478.4]
  wire  dat_exec_valid; // @[NV_NVDLA_CSC_dl_for_check.scala 438:22:@479.4]
  wire  _T_614; // @[NV_NVDLA_CSC_dl_for_check.scala 391:15:@417.4]
  wire [5:0] _T_618; // @[NV_NVDLA_CSC_dl_for_check.scala 394:28:@419.6]
  wire  is_batch_end; // @[NV_NVDLA_CSC_dl_for_check.scala 398:27:@424.4]
  wire [5:0] _T_619; // @[NV_NVDLA_CSC_dl_for_check.scala 393:21:@420.6]
  wire [5:0] _T_620; // @[NV_NVDLA_CSC_dl_for_check.scala 392:21:@421.6]
  wire [5:0] _GEN_68; // @[NV_NVDLA_CSC_dl_for_check.scala 391:32:@418.4]
  wire [2:0] sub_h_cnt_inc; // @[NV_NVDLA_CSC_dl_for_check.scala 404:31:@428.4]
  wire  is_sub_h_end; // @[NV_NVDLA_CSC_dl_for_check.scala 405:32:@429.4]
  wire  _T_627; // @[NV_NVDLA_CSC_dl_for_check.scala 406:51:@431.4]
  wire  _T_629; // @[NV_NVDLA_CSC_dl_for_check.scala 406:82:@432.4]
  wire  _T_630; // @[NV_NVDLA_CSC_dl_for_check.scala 406:55:@433.4]
  wire  _T_631; // @[NV_NVDLA_CSC_dl_for_check.scala 406:88:@434.4]
  wire  sub_h_cnt_reg_en; // @[NV_NVDLA_CSC_dl_for_check.scala 406:33:@435.4]
  wire  _T_632; // @[NV_NVDLA_CSC_dl_for_check.scala 408:31:@437.6]
  wire [2:0] _T_634; // @[NV_NVDLA_CSC_dl_for_check.scala 408:21:@438.6]
  wire [2:0] _GEN_69; // @[NV_NVDLA_CSC_dl_for_check.scala 407:23:@436.4]
  wire [7:0] _T_640; // @[NV_NVDLA_CSC_dl_for_check.scala 416:34:@444.4]
  wire [6:0] stripe_cnt_inc; // @[NV_NVDLA_CSC_dl_for_check.scala 416:41:@445.4]
  wire  _T_641; // @[NV_NVDLA_CSC_dl_for_check.scala 417:51:@446.4]
  wire  is_stripe_equal; // @[NV_NVDLA_CSC_dl_for_check.scala 417:33:@447.4]
  wire  is_stripe_end; // @[NV_NVDLA_CSC_dl_for_check.scala 418:34:@449.4]
  wire  _T_644; // @[NV_NVDLA_CSC_dl_for_check.scala 419:52:@451.4]
  wire  stripe_cnt_reg_en; // @[NV_NVDLA_CSC_dl_for_check.scala 419:34:@452.4]
  wire  _T_646; // @[NV_NVDLA_CSC_dl_for_check.scala 423:41:@454.6]
  wire  _T_647; // @[NV_NVDLA_CSC_dl_for_check.scala 423:39:@455.6]
  wire [6:0] _T_649; // @[NV_NVDLA_CSC_dl_for_check.scala 424:22:@456.6]
  wire [6:0] _T_650; // @[NV_NVDLA_CSC_dl_for_check.scala 423:22:@457.6]
  wire [6:0] _T_651; // @[NV_NVDLA_CSC_dl_for_check.scala 422:22:@458.6]
  wire [6:0] _GEN_70; // @[NV_NVDLA_CSC_dl_for_check.scala 421:24:@453.4]
  reg  dat_pipe_local_valid; // @[NV_NVDLA_CSC_dl_for_check.scala 429:35:@461.4]
  reg [31:0] _RAND_78;
  reg  dat_pipe_valid_d1; // @[NV_NVDLA_CSC_dl_for_check.scala 430:32:@462.4]
  reg [31:0] _RAND_79;
  wire  dat_pipe_valid; // @[NV_NVDLA_CSC_dl_for_check.scala 437:27:@468.4]
  wire  _T_659; // @[NV_NVDLA_CSC_dl_for_check.scala 434:49:@465.4]
  wire  _T_662; // @[NV_NVDLA_CSC_dl_for_check.scala 435:32:@466.4]
  wire  dat_pipe_local_valid_w; // @[NV_NVDLA_CSC_dl_for_check.scala 434:33:@467.4]
  reg [7:0] dat_req_bytes_d1; // @[NV_NVDLA_CSC_dl_for_check.scala 447:31:@484.4]
  reg [31:0] _RAND_80;
  wire [7:0] dat_req_bytes; // @[Cat.scala 30:58:@485.4]
  wire [7:0] _GEN_71; // @[NV_NVDLA_CSC_dl_for_check.scala 449:21:@486.4]
  reg [12:0] dataout_w_cnt; // @[NV_NVDLA_CSC_dl_for_check.scala 455:28:@489.4]
  reg [31:0] _RAND_81;
  reg [12:0] dataout_w_ori; // @[NV_NVDLA_CSC_dl_for_check.scala 456:28:@490.4]
  reg [31:0] _RAND_82;
  wire [12:0] _GEN_694; // @[NV_NVDLA_CSC_dl_for_check.scala 459:39:@491.4]
  wire [13:0] _T_686; // @[NV_NVDLA_CSC_dl_for_check.scala 459:39:@491.4]
  wire [12:0] dataout_w_cnt_inc; // @[NV_NVDLA_CSC_dl_for_check.scala 459:39:@492.4]
  wire  _T_687; // @[NV_NVDLA_CSC_dl_for_check.scala 460:29:@493.4]
  wire  _T_688; // @[NV_NVDLA_CSC_dl_for_check.scala 460:61:@494.4]
  wire  is_w_end; // @[NV_NVDLA_CSC_dl_for_check.scala 460:44:@495.4]
  wire  _T_690; // @[NV_NVDLA_CSC_dl_for_check.scala 463:43:@498.4]
  wire  _T_691; // @[NV_NVDLA_CSC_dl_for_check.scala 463:41:@499.4]
  wire [12:0] _T_692; // @[NV_NVDLA_CSC_dl_for_check.scala 464:26:@500.4]
  wire [12:0] _T_693; // @[NV_NVDLA_CSC_dl_for_check.scala 463:26:@501.4]
  wire [12:0] dataout_w_cnt_w; // @[NV_NVDLA_CSC_dl_for_check.scala 462:26:@502.4]
  wire  _T_695; // @[NV_NVDLA_CSC_dl_for_check.scala 465:70:@504.4]
  wire  dataout_w_cnt_reg_en; // @[NV_NVDLA_CSC_dl_for_check.scala 465:37:@505.4]
  wire  _T_696; // @[NV_NVDLA_CSC_dl_for_check.scala 466:55:@506.4]
  wire  _T_697; // @[NV_NVDLA_CSC_dl_for_check.scala 466:71:@507.4]
  wire  dataout_w_ori_reg_en; // @[NV_NVDLA_CSC_dl_for_check.scala 466:37:@508.4]
  wire [12:0] _GEN_72; // @[NV_NVDLA_CSC_dl_for_check.scala 468:27:@509.4]
  wire [12:0] _GEN_73; // @[NV_NVDLA_CSC_dl_for_check.scala 471:27:@512.4]
  reg [10:0] datain_c_cnt; // @[NV_NVDLA_CSC_dl_for_check.scala 476:27:@515.4]
  reg [31:0] _RAND_83;
  wire [12:0] _GEN_695; // @[NV_NVDLA_CSC_dl_for_check.scala 478:37:@516.4]
  wire  is_last_channel; // @[NV_NVDLA_CSC_dl_for_check.scala 478:37:@516.4]
  wire  _T_701; // @[NV_NVDLA_CSC_dl_for_check.scala 479:70:@518.4]
  wire  datain_c_cnt_reg_en; // @[NV_NVDLA_CSC_dl_for_check.scala 479:36:@519.4]
  wire [11:0] _T_705; // @[NV_NVDLA_CSC_dl_for_check.scala 484:34:@521.6]
  wire [10:0] _T_706; // @[NV_NVDLA_CSC_dl_for_check.scala 484:34:@522.6]
  wire [10:0] _T_707; // @[NV_NVDLA_CSC_dl_for_check.scala 483:24:@523.6]
  wire [10:0] _T_708; // @[NV_NVDLA_CSC_dl_for_check.scala 482:24:@524.6]
  wire [10:0] _GEN_74; // @[NV_NVDLA_CSC_dl_for_check.scala 481:26:@520.4]
  reg [13:0] datain_w_cnt; // @[NV_NVDLA_CSC_dl_for_check.scala 488:27:@527.4]
  reg [31:0] _RAND_84;
  reg [13:0] datain_w_ori; // @[NV_NVDLA_CSC_dl_for_check.scala 489:27:@528.4]
  reg [31:0] _RAND_85;
  reg [15:0] pixel_w_cnt; // @[NV_NVDLA_CSC_dl_for_check.scala 490:26:@529.4]
  reg [31:0] _RAND_86;
  reg [15:0] pixel_w_ori; // @[NV_NVDLA_CSC_dl_for_check.scala 491:26:@530.4]
  reg [31:0] _RAND_87;
  reg [15:0] pixel_w_ch_ori; // @[NV_NVDLA_CSC_dl_for_check.scala 492:29:@531.4]
  reg [31:0] _RAND_88;
  reg [12:0] channel_op_cnt; // @[NV_NVDLA_CSC_dl_for_check.scala 493:29:@532.4]
  reg [31:0] _RAND_89;
  reg  pixel_force_clr_d1; // @[NV_NVDLA_CSC_dl_for_check.scala 495:33:@534.4]
  reg [31:0] _RAND_90;
  reg  pixel_force_fetch_d1; // @[NV_NVDLA_CSC_dl_for_check.scala 496:35:@535.4]
  reg [31:0] _RAND_91;
  wire [12:0] _GEN_696; // @[NV_NVDLA_CSC_dl_for_check.scala 500:41:@536.4]
  wire [13:0] _T_729; // @[NV_NVDLA_CSC_dl_for_check.scala 500:41:@536.4]
  wire [13:0] _T_730; // @[NV_NVDLA_CSC_dl_for_check.scala 500:41:@537.4]
  wire [13:0] datain_w_cnt_st; // @[NV_NVDLA_CSC_dl_for_check.scala 498:26:@539.4]
  wire  _T_732; // @[NV_NVDLA_CSC_dl_for_check.scala 501:42:@540.4]
  wire [14:0] _T_734; // @[NV_NVDLA_CSC_dl_for_check.scala 501:60:@541.4]
  wire [13:0] _GEN_697; // @[NV_NVDLA_CSC_dl_for_check.scala 501:81:@542.4]
  wire [14:0] _T_735; // @[NV_NVDLA_CSC_dl_for_check.scala 501:81:@542.4]
  wire [14:0] datain_w_cnt_inc; // @[NV_NVDLA_CSC_dl_for_check.scala 501:27:@543.4]
  wire [14:0] _T_738; // @[NV_NVDLA_CSC_dl_for_check.scala 506:25:@546.4]
  wire [14:0] _T_739; // @[NV_NVDLA_CSC_dl_for_check.scala 505:25:@547.4]
  wire [14:0] datain_w_cnt_w; // @[NV_NVDLA_CSC_dl_for_check.scala 504:25:@548.4]
  wire [5:0] _GEN_698; // @[NV_NVDLA_CSC_dl_for_check.scala 508:35:@549.4]
  wire [10:0] dl_w_offset_ext; // @[NV_NVDLA_CSC_dl_for_check.scala 508:35:@549.4]
  wire [13:0] _GEN_699; // @[NV_NVDLA_CSC_dl_for_check.scala 509:34:@550.4]
  wire [14:0] _T_740; // @[NV_NVDLA_CSC_dl_for_check.scala 509:34:@550.4]
  wire [13:0] datain_w_cur; // @[NV_NVDLA_CSC_dl_for_check.scala 509:53:@551.4]
  wire  _T_743; // @[NV_NVDLA_CSC_dl_for_check.scala 510:96:@554.4]
  wire  _T_744; // @[NV_NVDLA_CSC_dl_for_check.scala 510:86:@555.4]
  wire  _T_745; // @[NV_NVDLA_CSC_dl_for_check.scala 510:84:@556.4]
  wire  datain_w_cnt_reg_en; // @[NV_NVDLA_CSC_dl_for_check.scala 510:36:@557.4]
  wire  _T_748; // @[NV_NVDLA_CSC_dl_for_check.scala 511:99:@560.4]
  wire  _T_749; // @[NV_NVDLA_CSC_dl_for_check.scala 511:89:@561.4]
  wire  _T_750; // @[NV_NVDLA_CSC_dl_for_check.scala 511:87:@562.4]
  wire  datain_w_ori_reg_en; // @[NV_NVDLA_CSC_dl_for_check.scala 511:36:@563.4]
  wire [6:0] pixel_x_cnt_add; // @[NV_NVDLA_CSC_dl_for_check.scala 514:26:@564.4]
  wire  _T_754; // @[NV_NVDLA_CSC_dl_for_check.scala 516:79:@566.4]
  wire [7:0] _T_758; // @[NV_NVDLA_CSC_dl_for_check.scala 517:75:@569.4]
  wire [7:0] total_channel_op; // @[NV_NVDLA_CSC_dl_for_check.scala 516:27:@570.4]
  wire  _T_759; // @[NV_NVDLA_CSC_dl_for_check.scala 518:37:@571.4]
  wire  _T_761; // @[NV_NVDLA_CSC_dl_for_check.scala 519:35:@572.4]
  wire [13:0] _T_763; // @[NV_NVDLA_CSC_dl_for_check.scala 519:66:@573.4]
  wire [13:0] _T_764; // @[NV_NVDLA_CSC_dl_for_check.scala 519:22:@574.4]
  wire [13:0] _T_765; // @[NV_NVDLA_CSC_dl_for_check.scala 518:22:@575.4]
  wire [12:0] _GEN_700; // @[NV_NVDLA_CSC_dl_for_check.scala 521:44:@577.4]
  wire  next_is_last_channel; // @[NV_NVDLA_CSC_dl_for_check.scala 521:44:@577.4]
  wire  _T_766; // @[NV_NVDLA_CSC_dl_for_check.scala 525:39:@578.4]
  wire  _T_767; // @[NV_NVDLA_CSC_dl_for_check.scala 525:54:@579.4]
  wire  _T_768; // @[NV_NVDLA_CSC_dl_for_check.scala 525:71:@580.4]
  wire  _T_771; // @[NV_NVDLA_CSC_dl_for_check.scala 526:73:@583.4]
  wire  _T_772; // @[NV_NVDLA_CSC_dl_for_check.scala 526:71:@584.4]
  wire [15:0] _GEN_701; // @[NV_NVDLA_CSC_dl_for_check.scala 526:99:@585.4]
  wire [16:0] _T_773; // @[NV_NVDLA_CSC_dl_for_check.scala 526:99:@585.4]
  wire  _T_775; // @[NV_NVDLA_CSC_dl_for_check.scala 527:54:@587.4]
  wire [15:0] _GEN_702; // @[NV_NVDLA_CSC_dl_for_check.scala 527:90:@588.4]
  wire [16:0] _T_776; // @[NV_NVDLA_CSC_dl_for_check.scala 527:90:@588.4]
  wire  _T_778; // @[NV_NVDLA_CSC_dl_for_check.scala 528:56:@590.4]
  wire  _T_779; // @[NV_NVDLA_CSC_dl_for_check.scala 528:54:@591.4]
  wire [16:0] _T_781; // @[NV_NVDLA_CSC_dl_for_check.scala 528:91:@592.4]
  wire  _T_782; // @[NV_NVDLA_CSC_dl_for_check.scala 529:41:@593.4]
  wire  _T_783; // @[NV_NVDLA_CSC_dl_for_check.scala 529:39:@594.4]
  wire [15:0] _GEN_703; // @[NV_NVDLA_CSC_dl_for_check.scala 529:81:@595.4]
  wire [16:0] _T_784; // @[NV_NVDLA_CSC_dl_for_check.scala 529:81:@595.4]
  wire [16:0] _T_785; // @[NV_NVDLA_CSC_dl_for_check.scala 529:24:@596.4]
  wire [16:0] _T_786; // @[NV_NVDLA_CSC_dl_for_check.scala 528:24:@597.4]
  wire [16:0] _T_787; // @[NV_NVDLA_CSC_dl_for_check.scala 527:24:@598.4]
  wire [16:0] _T_788; // @[NV_NVDLA_CSC_dl_for_check.scala 526:24:@599.4]
  wire [16:0] _T_789; // @[NV_NVDLA_CSC_dl_for_check.scala 525:24:@600.4]
  wire [16:0] pixel_w_cnt_w; // @[NV_NVDLA_CSC_dl_for_check.scala 524:24:@601.4]
  wire [9:0] _T_795; // @[NV_NVDLA_CSC_dl_for_check.scala 531:68:@603.4]
  wire [14:0] pixel_w_cur; // @[Cat.scala 30:58:@604.4]
  wire  _T_804; // @[NV_NVDLA_CSC_dl_for_check.scala 534:68:@615.4]
  wire  _T_805; // @[NV_NVDLA_CSC_dl_for_check.scala 534:57:@616.4]
  wire  _T_806; // @[NV_NVDLA_CSC_dl_for_check.scala 534:72:@617.4]
  wire  _T_807; // @[NV_NVDLA_CSC_dl_for_check.scala 534:88:@618.4]
  wire  _T_808; // @[NV_NVDLA_CSC_dl_for_check.scala 534:103:@619.4]
  wire  pixel_ch_ori_reg_en; // @[NV_NVDLA_CSC_dl_for_check.scala 534:39:@620.4]
  wire  _T_810; // @[NV_NVDLA_CSC_dl_for_check.scala 536:42:@622.4]
  wire  _T_813; // @[NV_NVDLA_CSC_dl_for_check.scala 536:74:@623.4]
  wire  pixel_force_fetch; // @[NV_NVDLA_CSC_dl_for_check.scala 536:28:@624.4]
  wire  _T_815; // @[NV_NVDLA_CSC_dl_for_check.scala 537:36:@626.4]
  wire  _T_816; // @[NV_NVDLA_CSC_dl_for_check.scala 537:72:@627.4]
  wire  pixel_force_clr; // @[NV_NVDLA_CSC_dl_for_check.scala 537:51:@628.4]
  wire [14:0] _GEN_75; // @[NV_NVDLA_CSC_dl_for_check.scala 539:26:@629.4]
  wire [16:0] _GEN_76; // @[NV_NVDLA_CSC_dl_for_check.scala 539:26:@629.4]
  wire [14:0] _GEN_77; // @[NV_NVDLA_CSC_dl_for_check.scala 543:26:@633.4]
  wire [16:0] _GEN_78; // @[NV_NVDLA_CSC_dl_for_check.scala 543:26:@633.4]
  wire [16:0] _GEN_79; // @[NV_NVDLA_CSC_dl_for_check.scala 547:26:@637.4]
  reg [13:0] datain_h_cnt; // @[NV_NVDLA_CSC_dl_for_check.scala 553:27:@640.4]
  reg [31:0] _RAND_92;
  reg [13:0] datain_h_ori; // @[NV_NVDLA_CSC_dl_for_check.scala 554:27:@641.4]
  reg [31:0] _RAND_93;
  wire [13:0] _GEN_704; // @[NV_NVDLA_CSC_dl_for_check.scala 556:77:@642.4]
  wire [14:0] _T_823; // @[NV_NVDLA_CSC_dl_for_check.scala 556:77:@642.4]
  wire [14:0] datain_h_cnt_st; // @[NV_NVDLA_CSC_dl_for_check.scala 556:77:@643.4]
  wire [13:0] _GEN_705; // @[NV_NVDLA_CSC_dl_for_check.scala 557:37:@645.4]
  wire [14:0] _T_825; // @[NV_NVDLA_CSC_dl_for_check.scala 557:37:@645.4]
  wire [13:0] datain_h_cnt_inc; // @[NV_NVDLA_CSC_dl_for_check.scala 557:37:@646.4]
  wire  _T_826; // @[NV_NVDLA_CSC_dl_for_check.scala 558:52:@647.4]
  wire  _T_827; // @[NV_NVDLA_CSC_dl_for_check.scala 558:35:@648.4]
  wire [13:0] _T_830; // @[NV_NVDLA_CSC_dl_for_check.scala 560:25:@651.4]
  wire [13:0] _T_831; // @[NV_NVDLA_CSC_dl_for_check.scala 559:25:@652.4]
  wire [14:0] datain_h_cnt_w; // @[NV_NVDLA_CSC_dl_for_check.scala 558:25:@653.4]
  wire  _T_834; // @[NV_NVDLA_CSC_dl_for_check.scala 561:91:@656.4]
  wire  _T_835; // @[NV_NVDLA_CSC_dl_for_check.scala 561:54:@657.4]
  wire  datain_h_cnt_reg_en; // @[NV_NVDLA_CSC_dl_for_check.scala 561:36:@658.4]
  wire [5:0] _GEN_706; // @[NV_NVDLA_CSC_dl_for_check.scala 563:35:@662.4]
  wire [10:0] dl_h_offset_ext; // @[NV_NVDLA_CSC_dl_for_check.scala 563:35:@662.4]
  wire [13:0] _GEN_707; // @[NV_NVDLA_CSC_dl_for_check.scala 564:34:@663.4]
  wire [14:0] _T_838; // @[NV_NVDLA_CSC_dl_for_check.scala 564:34:@663.4]
  wire [14:0] _GEN_708; // @[NV_NVDLA_CSC_dl_for_check.scala 564:53:@664.4]
  wire [15:0] _T_839; // @[NV_NVDLA_CSC_dl_for_check.scala 564:53:@664.4]
  wire [13:0] datain_h_cur; // @[NV_NVDLA_CSC_dl_for_check.scala 564:66:@665.4]
  wire [14:0] _GEN_80; // @[NV_NVDLA_CSC_dl_for_check.scala 566:26:@666.4]
  wire [14:0] _GEN_81; // @[NV_NVDLA_CSC_dl_for_check.scala 567:26:@669.4]
  wire  _T_840; // @[NV_NVDLA_CSC_dl_for_check.scala 570:39:@672.4]
  wire [13:0] _GEN_709; // @[NV_NVDLA_CSC_dl_for_check.scala 570:59:@673.4]
  wire  _T_841; // @[NV_NVDLA_CSC_dl_for_check.scala 570:59:@673.4]
  wire  _T_842; // @[NV_NVDLA_CSC_dl_for_check.scala 570:44:@674.4]
  wire  _T_843; // @[NV_NVDLA_CSC_dl_for_check.scala 570:92:@675.4]
  wire  _T_844; // @[NV_NVDLA_CSC_dl_for_check.scala 570:78:@676.4]
  wire [13:0] _GEN_710; // @[NV_NVDLA_CSC_dl_for_check.scala 570:112:@677.4]
  wire  _T_845; // @[NV_NVDLA_CSC_dl_for_check.scala 570:112:@677.4]
  wire  dat_conv_req_dummy; // @[NV_NVDLA_CSC_dl_for_check.scala 570:97:@678.4]
  wire [11:0] _T_846; // @[NV_NVDLA_CSC_dl_for_check.scala 572:35:@679.4]
  wire  _T_848; // @[NV_NVDLA_CSC_dl_for_check.scala 572:43:@680.4]
  wire  _T_849; // @[NV_NVDLA_CSC_dl_for_check.scala 572:61:@681.4]
  wire  _T_850; // @[NV_NVDLA_CSC_dl_for_check.scala 572:47:@682.4]
  wire [5:0] _T_851; // @[NV_NVDLA_CSC_dl_for_check.scala 572:77:@683.4]
  wire  _T_853; // @[NV_NVDLA_CSC_dl_for_check.scala 572:84:@684.4]
  wire  dat_wg_req_skip; // @[NV_NVDLA_CSC_dl_for_check.scala 572:65:@685.4]
  wire  dat_img_req_dummy; // @[NV_NVDLA_CSC_dl_for_check.scala 573:42:@688.4]
  wire  _T_940; // @[NV_NVDLA_CSC_dl_for_check.scala 659:33:@786.4]
  wire  _T_941; // @[NV_NVDLA_CSC_dl_for_check.scala 660:38:@787.4]
  wire  _T_942; // @[NV_NVDLA_CSC_dl_for_check.scala 661:24:@788.4]
  wire  _T_944; // @[NV_NVDLA_CSC_dl_for_check.scala 661:41:@790.4]
  wire [12:0] _T_946; // @[NV_NVDLA_CSC_dl_for_check.scala 661:97:@791.4]
  wire [14:0] _T_947; // @[Cat.scala 30:58:@792.4]
  wire  _T_949; // @[NV_NVDLA_CSC_dl_for_check.scala 662:38:@793.4]
  wire [11:0] _T_954; // @[NV_NVDLA_CSC_dl_for_check.scala 663:54:@796.4]
  wire [14:0] _T_955; // @[Cat.scala 30:58:@797.4]
  wire [14:0] _T_956; // @[NV_NVDLA_CSC_dl_for_check.scala 662:23:@798.4]
  wire [14:0] _T_957; // @[NV_NVDLA_CSC_dl_for_check.scala 661:23:@799.4]
  wire [14:0] _T_958; // @[NV_NVDLA_CSC_dl_for_check.scala 660:23:@800.4]
  wire [14:0] w_bias_int8; // @[NV_NVDLA_CSC_dl_for_check.scala 659:23:@801.4]
  wire [13:0] w_bias_w; // @[NV_NVDLA_CSC_dl_for_check.scala 673:24:@803.4]
  wire [11:0] _T_857; // @[NV_NVDLA_CSC_dl_for_check.scala 577:32:@690.4]
  wire [14:0] _GEN_712; // @[NV_NVDLA_CSC_dl_for_check.scala 577:40:@691.4]
  wire  dat_img_req_skip; // @[NV_NVDLA_CSC_dl_for_check.scala 577:40:@691.4]
  wire  _T_858; // @[NV_NVDLA_CSC_dl_for_check.scala 578:34:@692.4]
  wire  _T_859; // @[NV_NVDLA_CSC_dl_for_check.scala 578:76:@693.4]
  wire  _T_860; // @[NV_NVDLA_CSC_dl_for_check.scala 578:61:@694.4]
  wire  dat_req_dummy; // @[NV_NVDLA_CSC_dl_for_check.scala 578:24:@695.4]
  wire  _T_861; // @[NV_NVDLA_CSC_dl_for_check.scala 579:35:@696.4]
  wire  _T_862; // @[NV_NVDLA_CSC_dl_for_check.scala 579:39:@697.4]
  wire  _T_863; // @[NV_NVDLA_CSC_dl_for_check.scala 579:70:@698.4]
  wire  _T_864; // @[NV_NVDLA_CSC_dl_for_check.scala 579:74:@699.4]
  wire  dat_req_skip; // @[NV_NVDLA_CSC_dl_for_check.scala 579:58:@700.4]
  wire  _T_865; // @[NV_NVDLA_CSC_dl_for_check.scala 580:39:@701.4]
  wire  _T_866; // @[NV_NVDLA_CSC_dl_for_check.scala 580:37:@702.4]
  wire  _T_867; // @[NV_NVDLA_CSC_dl_for_check.scala 580:56:@703.4]
  wire  dat_req_valid; // @[NV_NVDLA_CSC_dl_for_check.scala 580:54:@704.4]
  wire  _T_868; // @[NV_NVDLA_CSC_dl_for_check.scala 583:37:@705.4]
  wire  _T_869; // @[NV_NVDLA_CSC_dl_for_check.scala 583:27:@706.4]
  wire  _T_870; // @[NV_NVDLA_CSC_dl_for_check.scala 583:54:@707.4]
  wire  dat_req_sub_c_w; // @[NV_NVDLA_CSC_dl_for_check.scala 583:26:@708.4]
  wire  _T_871; // @[NV_NVDLA_CSC_dl_for_check.scala 584:41:@709.4]
  wire  _T_873; // @[NV_NVDLA_CSC_dl_for_check.scala 584:46:@711.4]
  wire [1:0] _T_874; // @[NV_NVDLA_CSC_dl_for_check.scala 584:76:@712.4]
  wire [1:0] dat_req_sub_w_w; // @[NV_NVDLA_CSC_dl_for_check.scala 584:26:@713.4]
  wire  _T_876; // @[NV_NVDLA_CSC_dl_for_check.scala 585:55:@714.4]
  wire  dat_req_sub_w_st_en; // @[NV_NVDLA_CSC_dl_for_check.scala 585:42:@715.4]
  wire  dat_req_stripe_end; // @[NV_NVDLA_CSC_dl_for_check.scala 588:42:@717.4]
  wire [8:0] dat_req_flag_w; // @[Cat.scala 30:58:@721.4]
  reg  dat_req_valid_d1; // @[NV_NVDLA_CSC_dl_for_check.scala 595:31:@722.4]
  reg [31:0] _RAND_94;
  reg [1:0] dat_req_sub_w_d1; // @[NV_NVDLA_CSC_dl_for_check.scala 596:31:@723.4]
  reg [31:0] _RAND_95;
  reg [1:0] dat_req_sub_h_d1; // @[NV_NVDLA_CSC_dl_for_check.scala 597:31:@724.4]
  reg [31:0] _RAND_96;
  reg  dat_req_sub_c_d1; // @[NV_NVDLA_CSC_dl_for_check.scala 598:31:@725.4]
  reg [31:0] _RAND_97;
  reg  dat_req_ch_end_d1; // @[NV_NVDLA_CSC_dl_for_check.scala 599:32:@726.4]
  reg [31:0] _RAND_98;
  reg  dat_req_dummy_d1; // @[NV_NVDLA_CSC_dl_for_check.scala 600:31:@727.4]
  reg [31:0] _RAND_99;
  reg [1:0] dat_req_cur_sub_h_d1; // @[NV_NVDLA_CSC_dl_for_check.scala 601:35:@728.4]
  reg [31:0] _RAND_100;
  reg  dat_req_sub_w_st_d1; // @[NV_NVDLA_CSC_dl_for_check.scala 602:34:@729.4]
  reg [31:0] _RAND_101;
  reg [8:0] dat_req_flag_d1; // @[NV_NVDLA_CSC_dl_for_check.scala 603:30:@730.4]
  reg [31:0] _RAND_102;
  reg  dat_req_rls_d1; // @[NV_NVDLA_CSC_dl_for_check.scala 604:29:@731.4]
  reg [31:0] _RAND_103;
  wire  _T_900; // @[NV_NVDLA_CSC_dl_for_check.scala 615:38:@741.6]
  wire  _T_901; // @[NV_NVDLA_CSC_dl_for_check.scala 615:56:@742.6]
  wire [1:0] _GEN_82; // @[NV_NVDLA_CSC_dl_for_check.scala 607:21:@733.4]
  wire [1:0] _GEN_83; // @[NV_NVDLA_CSC_dl_for_check.scala 607:21:@733.4]
  wire  _GEN_84; // @[NV_NVDLA_CSC_dl_for_check.scala 607:21:@733.4]
  wire  _GEN_85; // @[NV_NVDLA_CSC_dl_for_check.scala 607:21:@733.4]
  wire  _GEN_86; // @[NV_NVDLA_CSC_dl_for_check.scala 607:21:@733.4]
  wire [1:0] _GEN_87; // @[NV_NVDLA_CSC_dl_for_check.scala 607:21:@733.4]
  wire [8:0] _GEN_88; // @[NV_NVDLA_CSC_dl_for_check.scala 607:21:@733.4]
  wire  _GEN_89; // @[NV_NVDLA_CSC_dl_for_check.scala 607:21:@733.4]
  wire  _GEN_90; // @[NV_NVDLA_CSC_dl_for_check.scala 607:21:@733.4]
  wire  _GEN_91; // @[NV_NVDLA_CSC_dl_for_check.scala 607:21:@733.4]
  wire  _GEN_92; // @[NV_NVDLA_CSC_dl_for_check.scala 619:26:@747.4]
  reg [12:0] c_bias; // @[NV_NVDLA_CSC_dl_for_check.scala 627:21:@750.4]
  reg [31:0] _RAND_104;
  reg [12:0] c_bias_d1; // @[NV_NVDLA_CSC_dl_for_check.scala 628:24:@751.4]
  reg [31:0] _RAND_105;
  reg [12:0] h_bias_0_d1; // @[NV_NVDLA_CSC_dl_for_check.scala 629:26:@752.4]
  reg [31:0] _RAND_106;
  reg [12:0] h_bias_1_d1; // @[NV_NVDLA_CSC_dl_for_check.scala 630:26:@753.4]
  reg [31:0] _RAND_107;
  reg [12:0] h_bias_2_d1; // @[NV_NVDLA_CSC_dl_for_check.scala 631:26:@754.4]
  reg [31:0] _RAND_108;
  reg [12:0] h_bias_3_d1; // @[NV_NVDLA_CSC_dl_for_check.scala 632:26:@755.4]
  reg [31:0] _RAND_109;
  reg [12:0] w_bias_d1; // @[NV_NVDLA_CSC_dl_for_check.scala 633:24:@756.4]
  reg [31:0] _RAND_110;
  wire  _T_916; // @[NV_NVDLA_CSC_dl_for_check.scala 636:32:@757.4]
  wire  _T_917; // @[NV_NVDLA_CSC_dl_for_check.scala 636:22:@758.4]
  wire [11:0] _T_918; // @[NV_NVDLA_CSC_dl_for_check.scala 636:49:@759.4]
  wire [11:0] c_bias_add; // @[NV_NVDLA_CSC_dl_for_check.scala 636:21:@760.4]
  wire  _T_921; // @[NV_NVDLA_CSC_dl_for_check.scala 638:34:@761.4]
  wire [12:0] _GEN_713; // @[NV_NVDLA_CSC_dl_for_check.scala 638:64:@762.4]
  wire [13:0] _T_923; // @[NV_NVDLA_CSC_dl_for_check.scala 638:64:@762.4]
  wire [12:0] _T_924; // @[NV_NVDLA_CSC_dl_for_check.scala 638:64:@763.4]
  wire [12:0] _T_925; // @[NV_NVDLA_CSC_dl_for_check.scala 638:19:@764.4]
  wire [12:0] c_bias_w; // @[NV_NVDLA_CSC_dl_for_check.scala 637:19:@765.4]
  wire  c_bias_d1_reg_en; // @[NV_NVDLA_CSC_dl_for_check.scala 640:31:@769.4]
  wire [13:0] _GEN_714; // @[NV_NVDLA_CSC_dl_for_check.scala 643:32:@770.4]
  wire [25:0] _T_928; // @[NV_NVDLA_CSC_dl_for_check.scala 643:32:@770.4]
  wire [12:0] h_bias_0_w; // @[NV_NVDLA_CSC_dl_for_check.scala 643:50:@771.4]
  wire [11:0] _GEN_715; // @[NV_NVDLA_CSC_dl_for_check.scala 644:31:@772.4]
  wire [16:0] _T_929; // @[NV_NVDLA_CSC_dl_for_check.scala 644:31:@772.4]
  wire [12:0] h_bias_1_w; // @[NV_NVDLA_CSC_dl_for_check.scala 644:49:@773.4]
  wire [12:0] _GEN_716; // @[NV_NVDLA_CSC_dl_for_check.scala 645:29:@774.4]
  wire [17:0] _T_930; // @[NV_NVDLA_CSC_dl_for_check.scala 645:29:@774.4]
  wire [12:0] h_bias_2_w; // @[NV_NVDLA_CSC_dl_for_check.scala 645:47:@775.4]
  wire [12:0] _GEN_717; // @[NV_NVDLA_CSC_dl_for_check.scala 646:47:@776.4]
  wire [14:0] _T_932; // @[NV_NVDLA_CSC_dl_for_check.scala 646:47:@776.4]
  wire [14:0] _T_933; // @[NV_NVDLA_CSC_dl_for_check.scala 646:21:@777.4]
  wire [12:0] h_bias_3_w; // @[NV_NVDLA_CSC_dl_for_check.scala 646:65:@778.4]
  wire  _T_934; // @[NV_NVDLA_CSC_dl_for_check.scala 647:69:@779.4]
  wire  _T_935; // @[NV_NVDLA_CSC_dl_for_check.scala 647:84:@780.4]
  wire  _T_936; // @[NV_NVDLA_CSC_dl_for_check.scala 647:73:@781.4]
  wire  _T_937; // @[NV_NVDLA_CSC_dl_for_check.scala 647:52:@782.4]
  wire  _T_938; // @[NV_NVDLA_CSC_dl_for_check.scala 647:34:@783.4]
  wire [1:0] h_bias_reg_en; // @[Cat.scala 30:58:@784.4]
  wire [12:0] _GEN_93; // @[NV_NVDLA_CSC_dl_for_check.scala 677:20:@805.4]
  wire [12:0] _GEN_94; // @[NV_NVDLA_CSC_dl_for_check.scala 680:23:@808.4]
  wire  _T_961; // @[NV_NVDLA_CSC_dl_for_check.scala 683:19:@811.4]
  wire [12:0] _GEN_95; // @[NV_NVDLA_CSC_dl_for_check.scala 683:23:@812.4]
  wire [12:0] _GEN_96; // @[NV_NVDLA_CSC_dl_for_check.scala 683:23:@812.4]
  wire [12:0] _GEN_97; // @[NV_NVDLA_CSC_dl_for_check.scala 683:23:@812.4]
  wire  _T_962; // @[NV_NVDLA_CSC_dl_for_check.scala 688:19:@817.4]
  wire [12:0] _GEN_98; // @[NV_NVDLA_CSC_dl_for_check.scala 688:23:@818.4]
  wire [13:0] _GEN_99; // @[NV_NVDLA_CSC_dl_for_check.scala 691:20:@821.4]
  reg [12:0] dat_req_sub_h_addr_0; // @[NV_NVDLA_CSC_dl_for_check.scala 699:33:@833.4]
  reg [31:0] _RAND_111;
  reg [12:0] dat_req_sub_h_addr_1; // @[NV_NVDLA_CSC_dl_for_check.scala 699:33:@833.4]
  reg [31:0] _RAND_112;
  reg [12:0] dat_req_sub_h_addr_2; // @[NV_NVDLA_CSC_dl_for_check.scala 699:33:@833.4]
  reg [31:0] _RAND_113;
  reg [12:0] dat_req_sub_h_addr_3; // @[NV_NVDLA_CSC_dl_for_check.scala 699:33:@833.4]
  reg [31:0] _RAND_114;
  reg  sc2buf_dat_rd_en_out; // @[NV_NVDLA_CSC_dl_for_check.scala 700:35:@834.4]
  reg [31:0] _RAND_115;
  reg [18:0] sc2buf_dat_rd_addr_out; // @[NV_NVDLA_CSC_dl_for_check.scala 701:37:@836.4]
  reg [31:0] _RAND_116;
  reg  dat_req_pipe_pvld; // @[NV_NVDLA_CSC_dl_for_check.scala 702:32:@837.4]
  reg [31:0] _RAND_117;
  reg  dat_req_exec_pvld; // @[NV_NVDLA_CSC_dl_for_check.scala 703:32:@838.4]
  reg [31:0] _RAND_118;
  reg  dat_req_exec_dummy; // @[NV_NVDLA_CSC_dl_for_check.scala 705:33:@840.4]
  reg [31:0] _RAND_119;
  reg [1:0] dat_req_pipe_sub_w; // @[NV_NVDLA_CSC_dl_for_check.scala 706:33:@841.4]
  reg [31:0] _RAND_120;
  reg [1:0] dat_req_pipe_sub_h; // @[NV_NVDLA_CSC_dl_for_check.scala 707:33:@842.4]
  reg [31:0] _RAND_121;
  reg  dat_req_pipe_sub_c; // @[NV_NVDLA_CSC_dl_for_check.scala 708:33:@843.4]
  reg [31:0] _RAND_122;
  reg  dat_req_pipe_ch_end; // @[NV_NVDLA_CSC_dl_for_check.scala 709:34:@844.4]
  reg [31:0] _RAND_123;
  reg [7:0] dat_req_pipe_bytes; // @[NV_NVDLA_CSC_dl_for_check.scala 710:33:@845.4]
  reg [31:0] _RAND_124;
  reg  dat_req_pipe_dummy; // @[NV_NVDLA_CSC_dl_for_check.scala 711:33:@846.4]
  reg [31:0] _RAND_125;
  reg [1:0] dat_req_pipe_cur_sub_h; // @[NV_NVDLA_CSC_dl_for_check.scala 712:37:@847.4]
  reg [31:0] _RAND_126;
  reg  dat_req_pipe_sub_w_st; // @[NV_NVDLA_CSC_dl_for_check.scala 713:36:@848.4]
  reg [31:0] _RAND_127;
  reg  dat_req_pipe_rls; // @[NV_NVDLA_CSC_dl_for_check.scala 714:31:@849.4]
  reg [31:0] _RAND_128;
  reg [8:0] dat_req_pipe_flag; // @[NV_NVDLA_CSC_dl_for_check.scala 715:32:@850.4]
  reg [31:0] _RAND_129;
  wire [13:0] _T_1057; // @[NV_NVDLA_CSC_dl_for_check.scala 717:30:@851.4]
  wire [13:0] _GEN_718; // @[NV_NVDLA_CSC_dl_for_check.scala 717:45:@852.4]
  wire [14:0] _T_1058; // @[NV_NVDLA_CSC_dl_for_check.scala 717:45:@852.4]
  wire [14:0] _GEN_719; // @[NV_NVDLA_CSC_dl_for_check.scala 717:60:@853.4]
  wire [15:0] _T_1059; // @[NV_NVDLA_CSC_dl_for_check.scala 717:60:@853.4]
  wire [12:0] h_bias_d1; // @[NV_NVDLA_CSC_dl_for_check.scala 717:75:@854.4]
  wire [14:0] _GEN_720; // @[NV_NVDLA_CSC_dl_for_check.scala 718:40:@855.4]
  wire [15:0] _T_1060; // @[NV_NVDLA_CSC_dl_for_check.scala 718:40:@855.4]
  wire [15:0] _GEN_721; // @[NV_NVDLA_CSC_dl_for_check.scala 718:53:@856.4]
  wire [16:0] _T_1061; // @[NV_NVDLA_CSC_dl_for_check.scala 718:53:@856.4]
  wire [16:0] _GEN_722; // @[NV_NVDLA_CSC_dl_for_check.scala 718:66:@857.4]
  wire [17:0] dat_req_addr_sum; // @[NV_NVDLA_CSC_dl_for_check.scala 718:66:@857.4]
  wire [17:0] _GEN_723; // @[NV_NVDLA_CSC_dl_for_check.scala 719:45:@860.4]
  wire  is_dat_req_addr_wrap; // @[NV_NVDLA_CSC_dl_for_check.scala 719:45:@860.4]
  wire [18:0] _T_1074; // @[NV_NVDLA_CSC_dl_for_check.scala 720:42:@863.4]
  wire [18:0] dat_req_addr_wrap; // @[NV_NVDLA_CSC_dl_for_check.scala 720:42:@864.4]
  wire  _T_1075; // @[NV_NVDLA_CSC_dl_for_check.scala 721:35:@865.4]
  wire [18:0] _T_1081; // @[NV_NVDLA_CSC_dl_for_check.scala 722:25:@867.4]
  wire [18:0] dat_req_addr_w; // @[NV_NVDLA_CSC_dl_for_check.scala 721:25:@868.4]
  wire  _T_1085; // @[Mux.scala 46:19:@869.4]
  wire [12:0] _T_1086; // @[Mux.scala 46:16:@870.4]
  wire  _T_1087; // @[Mux.scala 46:19:@871.4]
  wire [12:0] _T_1088; // @[Mux.scala 46:16:@872.4]
  wire  _T_1089; // @[Mux.scala 46:19:@873.4]
  wire [12:0] dat_req_addr_last; // @[Mux.scala 46:16:@874.4]
  wire [18:0] _GEN_725; // @[NV_NVDLA_CSC_dl_for_check.scala 725:65:@875.4]
  wire  _T_1090; // @[NV_NVDLA_CSC_dl_for_check.scala 725:65:@875.4]
  wire  _T_1091; // @[NV_NVDLA_CSC_dl_for_check.scala 725:85:@876.4]
  wire  sc2buf_dat_rd_en_w; // @[NV_NVDLA_CSC_dl_for_check.scala 725:43:@877.4]
  wire  _T_1092; // @[NV_NVDLA_CSC_dl_for_check.scala 727:38:@878.4]
  wire  _T_1094; // @[NV_NVDLA_CSC_dl_for_check.scala 727:78:@879.4]
  wire  _T_1095; // @[NV_NVDLA_CSC_dl_for_check.scala 727:58:@880.4]
  wire  dat_req_sub_h_addr_en_0; // @[NV_NVDLA_CSC_dl_for_check.scala 727:17:@881.4]
  wire  _T_1099; // @[NV_NVDLA_CSC_dl_for_check.scala 727:78:@883.4]
  wire  _T_1100; // @[NV_NVDLA_CSC_dl_for_check.scala 727:58:@884.4]
  wire  dat_req_sub_h_addr_en_1; // @[NV_NVDLA_CSC_dl_for_check.scala 727:17:@885.4]
  wire  _T_1104; // @[NV_NVDLA_CSC_dl_for_check.scala 727:78:@887.4]
  wire  _T_1105; // @[NV_NVDLA_CSC_dl_for_check.scala 727:58:@888.4]
  wire  dat_req_sub_h_addr_en_2; // @[NV_NVDLA_CSC_dl_for_check.scala 727:17:@889.4]
  wire  _T_1109; // @[NV_NVDLA_CSC_dl_for_check.scala 727:78:@891.4]
  wire  _T_1110; // @[NV_NVDLA_CSC_dl_for_check.scala 727:58:@892.4]
  wire  dat_req_sub_h_addr_en_3; // @[NV_NVDLA_CSC_dl_for_check.scala 727:17:@893.4]
  wire [18:0] _GEN_100; // @[NV_NVDLA_CSC_dl_for_check.scala 734:35:@899.4]
  wire [18:0] _GEN_101; // @[NV_NVDLA_CSC_dl_for_check.scala 734:35:@902.4]
  wire [18:0] _GEN_102; // @[NV_NVDLA_CSC_dl_for_check.scala 734:35:@905.4]
  wire [18:0] _GEN_103; // @[NV_NVDLA_CSC_dl_for_check.scala 734:35:@908.4]
  wire  _T_1121; // @[NV_NVDLA_CSC_dl_for_check.scala 740:14:@912.4]
  wire [18:0] _GEN_104; // @[NV_NVDLA_CSC_dl_for_check.scala 740:34:@913.4]
  wire [1:0] _GEN_105; // @[NV_NVDLA_CSC_dl_for_check.scala 748:24:@920.4]
  wire [1:0] _GEN_106; // @[NV_NVDLA_CSC_dl_for_check.scala 748:24:@920.4]
  wire  _GEN_107; // @[NV_NVDLA_CSC_dl_for_check.scala 748:24:@920.4]
  wire  _GEN_108; // @[NV_NVDLA_CSC_dl_for_check.scala 748:24:@920.4]
  wire [7:0] _GEN_109; // @[NV_NVDLA_CSC_dl_for_check.scala 748:24:@920.4]
  wire  _GEN_110; // @[NV_NVDLA_CSC_dl_for_check.scala 748:24:@920.4]
  wire [1:0] _GEN_111; // @[NV_NVDLA_CSC_dl_for_check.scala 748:24:@920.4]
  wire  _GEN_112; // @[NV_NVDLA_CSC_dl_for_check.scala 748:24:@920.4]
  wire  _GEN_113; // @[NV_NVDLA_CSC_dl_for_check.scala 748:24:@920.4]
  wire [8:0] _GEN_114; // @[NV_NVDLA_CSC_dl_for_check.scala 748:24:@920.4]
  wire  _GEN_115; // @[NV_NVDLA_CSC_dl_for_check.scala 748:24:@920.4]
  wire [6:0] _T_1126; // @[Cat.scala 30:58:@936.4]
  wire [28:0] dat_req_pipe_pd; // @[Cat.scala 30:58:@942.4]
  reg  _T_1136; // @[NV_NVDLA_CSC_dl_for_check.scala 774:73:@944.4]
  reg [31:0] _RAND_130;
  reg  _T_1139; // @[NV_NVDLA_CSC_dl_for_check.scala 774:73:@945.4]
  reg [31:0] _RAND_131;
  reg  _T_1142; // @[NV_NVDLA_CSC_dl_for_check.scala 774:73:@946.4]
  reg [31:0] _RAND_132;
  reg  _T_1145; // @[NV_NVDLA_CSC_dl_for_check.scala 774:73:@947.4]
  reg [31:0] _RAND_133;
  reg  _T_1148; // @[NV_NVDLA_CSC_dl_for_check.scala 774:73:@948.4]
  reg [31:0] _RAND_134;
  reg  dat_rsp_pipe_pvld; // @[NV_NVDLA_CSC_dl_for_check.scala 774:73:@949.4]
  reg [31:0] _RAND_135;
  reg [28:0] _T_1155; // @[NV_NVDLA_CSC_dl_for_check.scala 776:71:@951.4]
  reg [31:0] _RAND_136;
  reg [28:0] _T_1158; // @[NV_NVDLA_CSC_dl_for_check.scala 776:71:@952.4]
  reg [31:0] _RAND_137;
  reg [28:0] _T_1161; // @[NV_NVDLA_CSC_dl_for_check.scala 776:71:@953.4]
  reg [31:0] _RAND_138;
  reg [28:0] _T_1164; // @[NV_NVDLA_CSC_dl_for_check.scala 776:71:@954.4]
  reg [31:0] _RAND_139;
  reg [28:0] _T_1167; // @[NV_NVDLA_CSC_dl_for_check.scala 776:71:@955.4]
  reg [31:0] _RAND_140;
  reg [28:0] dat_rsp_pipe_pd; // @[NV_NVDLA_CSC_dl_for_check.scala 776:71:@956.4]
  reg [31:0] _RAND_141;
  reg  _T_1174; // @[NV_NVDLA_CSC_dl_for_check.scala 778:73:@958.4]
  reg [31:0] _RAND_142;
  reg  _T_1177; // @[NV_NVDLA_CSC_dl_for_check.scala 778:73:@959.4]
  reg [31:0] _RAND_143;
  reg  _T_1180; // @[NV_NVDLA_CSC_dl_for_check.scala 778:73:@960.4]
  reg [31:0] _RAND_144;
  reg  _T_1183; // @[NV_NVDLA_CSC_dl_for_check.scala 778:73:@961.4]
  reg [31:0] _RAND_145;
  reg  _T_1186; // @[NV_NVDLA_CSC_dl_for_check.scala 778:73:@962.4]
  reg [31:0] _RAND_146;
  reg  dat_rsp_exec_pvld; // @[NV_NVDLA_CSC_dl_for_check.scala 778:73:@963.4]
  reg [31:0] _RAND_147;
  reg  _T_1193; // @[NV_NVDLA_CSC_dl_for_check.scala 780:73:@965.4]
  reg [31:0] _RAND_148;
  reg  _T_1196; // @[NV_NVDLA_CSC_dl_for_check.scala 780:73:@966.4]
  reg [31:0] _RAND_149;
  reg  _T_1199; // @[NV_NVDLA_CSC_dl_for_check.scala 780:73:@967.4]
  reg [31:0] _RAND_150;
  reg  _T_1202; // @[NV_NVDLA_CSC_dl_for_check.scala 780:73:@968.4]
  reg [31:0] _RAND_151;
  reg  _T_1205; // @[NV_NVDLA_CSC_dl_for_check.scala 780:73:@969.4]
  reg [31:0] _RAND_152;
  reg  dat_rsp_exec_dummy; // @[NV_NVDLA_CSC_dl_for_check.scala 780:73:@970.4]
  reg [31:0] _RAND_153;
  reg [1:0] _T_1212; // @[NV_NVDLA_CSC_dl_for_check.scala 782:74:@972.4]
  reg [31:0] _RAND_154;
  reg [1:0] _T_1215; // @[NV_NVDLA_CSC_dl_for_check.scala 782:74:@973.4]
  reg [31:0] _RAND_155;
  reg [1:0] _T_1218; // @[NV_NVDLA_CSC_dl_for_check.scala 782:74:@974.4]
  reg [31:0] _RAND_156;
  reg [1:0] _T_1221; // @[NV_NVDLA_CSC_dl_for_check.scala 782:74:@975.4]
  reg [31:0] _RAND_157;
  reg [1:0] _T_1224; // @[NV_NVDLA_CSC_dl_for_check.scala 782:74:@976.4]
  reg [31:0] _RAND_158;
  reg [1:0] dat_rsp_exec_sub_h; // @[NV_NVDLA_CSC_dl_for_check.scala 782:74:@977.4]
  reg [31:0] _RAND_159;
  wire [28:0] _GEN_116; // @[NV_NVDLA_CSC_dl_for_check.scala 792:33:@984.4]
  wire  _GEN_117; // @[NV_NVDLA_CSC_dl_for_check.scala 796:33:@988.4]
  wire [1:0] _GEN_118; // @[NV_NVDLA_CSC_dl_for_check.scala 796:33:@988.4]
  wire [28:0] _GEN_119; // @[NV_NVDLA_CSC_dl_for_check.scala 792:33:@993.4]
  wire  _GEN_120; // @[NV_NVDLA_CSC_dl_for_check.scala 796:33:@997.4]
  wire [1:0] _GEN_121; // @[NV_NVDLA_CSC_dl_for_check.scala 796:33:@997.4]
  wire [28:0] _GEN_122; // @[NV_NVDLA_CSC_dl_for_check.scala 792:33:@1002.4]
  wire  _GEN_123; // @[NV_NVDLA_CSC_dl_for_check.scala 796:33:@1006.4]
  wire [1:0] _GEN_124; // @[NV_NVDLA_CSC_dl_for_check.scala 796:33:@1006.4]
  wire [28:0] _GEN_125; // @[NV_NVDLA_CSC_dl_for_check.scala 792:33:@1011.4]
  wire  _GEN_126; // @[NV_NVDLA_CSC_dl_for_check.scala 796:33:@1015.4]
  wire [1:0] _GEN_127; // @[NV_NVDLA_CSC_dl_for_check.scala 796:33:@1015.4]
  wire [28:0] _GEN_128; // @[NV_NVDLA_CSC_dl_for_check.scala 792:33:@1020.4]
  wire  _GEN_129; // @[NV_NVDLA_CSC_dl_for_check.scala 796:33:@1024.4]
  wire [1:0] _GEN_130; // @[NV_NVDLA_CSC_dl_for_check.scala 796:33:@1024.4]
  wire [28:0] _GEN_131; // @[NV_NVDLA_CSC_dl_for_check.scala 792:33:@1029.4]
  wire  _GEN_132; // @[NV_NVDLA_CSC_dl_for_check.scala 796:33:@1033.4]
  wire [1:0] _GEN_133; // @[NV_NVDLA_CSC_dl_for_check.scala 796:33:@1033.4]
  wire [1:0] dat_rsp_pipe_sub_w; // @[NV_NVDLA_CSC_dl_for_check.scala 809:41:@1037.4]
  wire [1:0] dat_rsp_pipe_sub_h; // @[NV_NVDLA_CSC_dl_for_check.scala 810:41:@1038.4]
  wire  dat_rsp_pipe_sub_c; // @[NV_NVDLA_CSC_dl_for_check.scala 811:41:@1039.4]
  wire  dat_rsp_pipe_ch_end; // @[NV_NVDLA_CSC_dl_for_check.scala 812:42:@1040.4]
  wire [7:0] dat_rsp_pipe_bytes; // @[NV_NVDLA_CSC_dl_for_check.scala 813:41:@1041.4]
  wire [1:0] dat_rsp_pipe_cur_sub_h; // @[NV_NVDLA_CSC_dl_for_check.scala 814:45:@1042.4]
  wire  dat_rsp_pipe_sub_w_st; // @[NV_NVDLA_CSC_dl_for_check.scala 816:44:@1044.4]
  wire  dat_rsp_pipe_rls; // @[NV_NVDLA_CSC_dl_for_check.scala 817:39:@1045.4]
  wire [8:0] dat_rsp_pipe_flag; // @[NV_NVDLA_CSC_dl_for_check.scala 818:40:@1046.4]
  reg  dat_l0c0_dummy; // @[NV_NVDLA_CSC_dl_for_check.scala 823:29:@1047.4]
  reg [31:0] _RAND_160;
  reg  dat_l1c0_dummy; // @[NV_NVDLA_CSC_dl_for_check.scala 824:29:@1048.4]
  reg [31:0] _RAND_161;
  reg  dat_l2c0_dummy; // @[NV_NVDLA_CSC_dl_for_check.scala 825:29:@1049.4]
  reg [31:0] _RAND_162;
  reg  dat_l3c0_dummy; // @[NV_NVDLA_CSC_dl_for_check.scala 826:29:@1050.4]
  reg [31:0] _RAND_163;
  reg  dat_l0c1_dummy; // @[NV_NVDLA_CSC_dl_for_check.scala 827:29:@1051.4]
  reg [31:0] _RAND_164;
  reg  dat_l1c1_dummy; // @[NV_NVDLA_CSC_dl_for_check.scala 828:29:@1052.4]
  reg [31:0] _RAND_165;
  reg  dat_l2c1_dummy; // @[NV_NVDLA_CSC_dl_for_check.scala 829:29:@1053.4]
  reg [31:0] _RAND_166;
  reg  dat_l3c1_dummy; // @[NV_NVDLA_CSC_dl_for_check.scala 830:29:@1054.4]
  reg [31:0] _RAND_167;
  reg [511:0] dat_l0c0; // @[NV_NVDLA_CSC_dl_for_check.scala 832:19:@1055.4]
  reg [511:0] _RAND_168;
  reg [511:0] dat_l1c0; // @[NV_NVDLA_CSC_dl_for_check.scala 833:19:@1056.4]
  reg [511:0] _RAND_169;
  reg [511:0] dat_l2c0; // @[NV_NVDLA_CSC_dl_for_check.scala 834:19:@1057.4]
  reg [511:0] _RAND_170;
  reg [511:0] dat_l3c0; // @[NV_NVDLA_CSC_dl_for_check.scala 835:19:@1058.4]
  reg [511:0] _RAND_171;
  reg [511:0] dat_l0c1; // @[NV_NVDLA_CSC_dl_for_check.scala 836:19:@1059.4]
  reg [511:0] _RAND_172;
  reg [511:0] dat_l1c1; // @[NV_NVDLA_CSC_dl_for_check.scala 837:19:@1060.4]
  reg [511:0] _RAND_173;
  reg [511:0] dat_l2c1; // @[NV_NVDLA_CSC_dl_for_check.scala 838:19:@1061.4]
  reg [511:0] _RAND_174;
  reg [511:0] dat_l3c1; // @[NV_NVDLA_CSC_dl_for_check.scala 839:19:@1062.4]
  reg [511:0] _RAND_175;
  wire  _T_1252; // @[NV_NVDLA_CSC_dl_for_check.scala 841:70:@1063.4]
  wire  dat_l0c0_en; // @[NV_NVDLA_CSC_dl_for_check.scala 841:48:@1064.4]
  wire  _T_1254; // @[NV_NVDLA_CSC_dl_for_check.scala 842:70:@1065.4]
  wire  dat_l1c0_en; // @[NV_NVDLA_CSC_dl_for_check.scala 842:48:@1066.4]
  wire  _T_1256; // @[NV_NVDLA_CSC_dl_for_check.scala 843:70:@1067.4]
  wire  dat_l2c0_en; // @[NV_NVDLA_CSC_dl_for_check.scala 843:48:@1068.4]
  wire  _T_1258; // @[NV_NVDLA_CSC_dl_for_check.scala 844:70:@1069.4]
  wire  dat_l3c0_en; // @[NV_NVDLA_CSC_dl_for_check.scala 844:48:@1070.4]
  wire  _T_1259; // @[NV_NVDLA_CSC_dl_for_check.scala 847:62:@1071.4]
  wire  _T_1260; // @[NV_NVDLA_CSC_dl_for_check.scala 847:46:@1072.4]
  wire  _T_1261; // @[NV_NVDLA_CSC_dl_for_check.scala 847:69:@1073.4]
  wire  dat_wg_adv; // @[NV_NVDLA_CSC_dl_for_check.scala 847:67:@1074.4]
  wire  _T_1262; // @[NV_NVDLA_CSC_dl_for_check.scala 848:52:@1075.4]
  wire  _T_1263; // @[NV_NVDLA_CSC_dl_for_check.scala 848:33:@1076.4]
  wire  _T_1264; // @[NV_NVDLA_CSC_dl_for_check.scala 848:31:@1077.4]
  wire  _T_1265; // @[NV_NVDLA_CSC_dl_for_check.scala 848:69:@1078.4]
  wire  _T_1266; // @[NV_NVDLA_CSC_dl_for_check.scala 848:74:@1079.4]
  wire  _T_1267; // @[NV_NVDLA_CSC_dl_for_check.scala 848:90:@1080.4]
  wire  _T_1268; // @[NV_NVDLA_CSC_dl_for_check.scala 848:88:@1081.4]
  wire  dat_l0c1_en; // @[NV_NVDLA_CSC_dl_for_check.scala 848:57:@1082.4]
  wire  _T_1270; // @[NV_NVDLA_CSC_dl_for_check.scala 849:31:@1084.4]
  wire  _T_1271; // @[NV_NVDLA_CSC_dl_for_check.scala 849:68:@1085.4]
  wire  _T_1272; // @[NV_NVDLA_CSC_dl_for_check.scala 849:73:@1086.4]
  wire  _T_1273; // @[NV_NVDLA_CSC_dl_for_check.scala 849:89:@1087.4]
  wire  _T_1274; // @[NV_NVDLA_CSC_dl_for_check.scala 849:87:@1088.4]
  wire  dat_l1c1_en; // @[NV_NVDLA_CSC_dl_for_check.scala 849:56:@1089.4]
  wire  _T_1275; // @[NV_NVDLA_CSC_dl_for_check.scala 850:29:@1090.4]
  wire  _T_1276; // @[NV_NVDLA_CSC_dl_for_check.scala 850:34:@1091.4]
  wire  _T_1277; // @[NV_NVDLA_CSC_dl_for_check.scala 850:50:@1092.4]
  wire  dat_l2c1_en; // @[NV_NVDLA_CSC_dl_for_check.scala 850:48:@1093.4]
  wire  _T_1278; // @[NV_NVDLA_CSC_dl_for_check.scala 851:29:@1094.4]
  wire  _T_1279; // @[NV_NVDLA_CSC_dl_for_check.scala 851:34:@1095.4]
  wire  _T_1280; // @[NV_NVDLA_CSC_dl_for_check.scala 851:50:@1096.4]
  wire  dat_l3c1_en; // @[NV_NVDLA_CSC_dl_for_check.scala 851:48:@1097.4]
  wire  _T_1281; // @[NV_NVDLA_CSC_dl_for_check.scala 853:41:@1098.4]
  wire  dat_dummy_l0_en; // @[NV_NVDLA_CSC_dl_for_check.scala 853:62:@1100.4]
  wire  dat_dummy_l1_en; // @[NV_NVDLA_CSC_dl_for_check.scala 854:62:@1103.4]
  wire  dat_dummy_l2_en; // @[NV_NVDLA_CSC_dl_for_check.scala 855:62:@1106.4]
  wire  dat_dummy_l3_en; // @[NV_NVDLA_CSC_dl_for_check.scala 856:62:@1109.4]
  wire  dat_l0_set; // @[NV_NVDLA_CSC_dl_for_check.scala 858:30:@1110.4]
  wire  dat_l1_set; // @[NV_NVDLA_CSC_dl_for_check.scala 859:30:@1111.4]
  wire  dat_l2_set; // @[NV_NVDLA_CSC_dl_for_check.scala 860:30:@1112.4]
  wire  dat_l3_set; // @[NV_NVDLA_CSC_dl_for_check.scala 861:30:@1113.4]
  wire  _T_1295; // @[NV_NVDLA_CSC_dl_for_check.scala 863:48:@1114.4]
  wire  _T_1296; // @[NV_NVDLA_CSC_dl_for_check.scala 863:22:@1115.4]
  wire  _T_1299; // @[NV_NVDLA_CSC_dl_for_check.scala 864:48:@1117.4]
  wire  _T_1300; // @[NV_NVDLA_CSC_dl_for_check.scala 864:22:@1118.4]
  wire  _T_1303; // @[NV_NVDLA_CSC_dl_for_check.scala 865:48:@1120.4]
  wire  _T_1304; // @[NV_NVDLA_CSC_dl_for_check.scala 865:22:@1121.4]
  wire  _T_1307; // @[NV_NVDLA_CSC_dl_for_check.scala 866:48:@1123.4]
  wire  _T_1308; // @[NV_NVDLA_CSC_dl_for_check.scala 866:22:@1124.4]
  wire  _T_1310; // @[NV_NVDLA_CSC_dl_for_check.scala 867:48:@1126.4]
  wire  _T_1311; // @[NV_NVDLA_CSC_dl_for_check.scala 867:22:@1127.4]
  wire  _T_1314; // @[NV_NVDLA_CSC_dl_for_check.scala 868:77:@1129.4]
  wire  _T_1315; // @[NV_NVDLA_CSC_dl_for_check.scala 868:60:@1130.4]
  wire  _T_1316; // @[NV_NVDLA_CSC_dl_for_check.scala 868:48:@1131.4]
  wire  _T_1317; // @[NV_NVDLA_CSC_dl_for_check.scala 868:22:@1132.4]
  wire  _T_1319; // @[NV_NVDLA_CSC_dl_for_check.scala 869:76:@1134.4]
  wire  _T_1320; // @[NV_NVDLA_CSC_dl_for_check.scala 869:60:@1135.4]
  wire  _T_1321; // @[NV_NVDLA_CSC_dl_for_check.scala 869:48:@1136.4]
  wire  _T_1322; // @[NV_NVDLA_CSC_dl_for_check.scala 869:22:@1137.4]
  wire  _T_1325; // @[NV_NVDLA_CSC_dl_for_check.scala 870:60:@1140.4]
  wire  _T_1326; // @[NV_NVDLA_CSC_dl_for_check.scala 870:48:@1141.4]
  wire  _T_1327; // @[NV_NVDLA_CSC_dl_for_check.scala 870:22:@1142.4]
  reg [7:0] rsp_sft_cnt_l0; // @[NV_NVDLA_CSC_dl_for_check.scala 884:29:@1168.4]
  reg [31:0] _RAND_176;
  reg [7:0] rsp_sft_cnt_l1; // @[NV_NVDLA_CSC_dl_for_check.scala 885:29:@1169.4]
  reg [31:0] _RAND_177;
  reg [7:0] rsp_sft_cnt_l2; // @[NV_NVDLA_CSC_dl_for_check.scala 886:29:@1170.4]
  reg [31:0] _RAND_178;
  reg [7:0] rsp_sft_cnt_l3; // @[NV_NVDLA_CSC_dl_for_check.scala 887:29:@1171.4]
  reg [31:0] _RAND_179;
  reg [7:0] rsp_sft_cnt_l0_ori; // @[NV_NVDLA_CSC_dl_for_check.scala 888:33:@1172.4]
  reg [31:0] _RAND_180;
  reg [7:0] rsp_sft_cnt_l1_ori; // @[NV_NVDLA_CSC_dl_for_check.scala 889:33:@1173.4]
  reg [31:0] _RAND_181;
  reg [7:0] rsp_sft_cnt_l2_ori; // @[NV_NVDLA_CSC_dl_for_check.scala 890:33:@1174.4]
  reg [31:0] _RAND_182;
  reg [7:0] rsp_sft_cnt_l3_ori; // @[NV_NVDLA_CSC_dl_for_check.scala 891:33:@1175.4]
  reg [31:0] _RAND_183;
  reg  dat_rsp_l2_pvld; // @[NV_NVDLA_CSC_dl_for_check.scala 896:41:@1179.4]
  reg [31:0] _RAND_184;
  reg [26:0] _T_1364; // @[NV_NVDLA_CSC_dl_for_check.scala 898:41:@1184.4]
  reg [31:0] _RAND_185;
  wire [26:0] _T_1376; // @[Cat.scala 30:58:@1194.4]
  wire [26:0] _GEN_142; // @[NV_NVDLA_CSC_dl_for_check.scala 906:28:@1197.4]
  wire [26:0] _GEN_143; // @[NV_NVDLA_CSC_dl_for_check.scala 906:28:@1201.4]
  wire [26:0] _GEN_144; // @[NV_NVDLA_CSC_dl_for_check.scala 906:28:@1205.4]
  wire [26:0] _GEN_145; // @[NV_NVDLA_CSC_dl_for_check.scala 906:28:@1209.4]
  wire  dat_rsp_l0_sub_c; // @[NV_NVDLA_CSC_dl_for_check.scala 924:39:@1235.4]
  wire  dat_rsp_l1_sub_c; // @[NV_NVDLA_CSC_dl_for_check.scala 925:39:@1236.4]
  wire  dat_rsp_l2_sub_c; // @[NV_NVDLA_CSC_dl_for_check.scala 926:39:@1237.4]
  wire  dat_rsp_l3_sub_c; // @[NV_NVDLA_CSC_dl_for_check.scala 927:39:@1238.4]
  wire [8:0] dat_rsp_l0_flag; // @[NV_NVDLA_CSC_dl_for_check.scala 929:38:@1239.4]
  wire [8:0] dat_rsp_l1_flag; // @[NV_NVDLA_CSC_dl_for_check.scala 930:38:@1240.4]
  wire [8:0] dat_rsp_l2_flag; // @[NV_NVDLA_CSC_dl_for_check.scala 931:38:@1241.4]
  wire [8:0] dat_rsp_l3_flag; // @[NV_NVDLA_CSC_dl_for_check.scala 932:38:@1242.4]
  wire  dat_rsp_l0_stripe_end; // @[NV_NVDLA_CSC_dl_for_check.scala 934:44:@1243.4]
  wire  dat_rsp_l1_stripe_end; // @[NV_NVDLA_CSC_dl_for_check.scala 935:44:@1244.4]
  wire  dat_rsp_l2_stripe_end; // @[NV_NVDLA_CSC_dl_for_check.scala 936:44:@1245.4]
  wire  dat_rsp_l3_stripe_end; // @[NV_NVDLA_CSC_dl_for_check.scala 937:44:@1246.4]
  wire [1:0] dat_rsp_sub_w; // @[NV_NVDLA_CSC_dl_for_check.scala 940:31:@1247.4]
  wire [7:0] dat_rsp_bytes; // @[NV_NVDLA_CSC_dl_for_check.scala 944:31:@1251.4]
  wire [1:0] dat_rsp_cur_sub_h; // @[NV_NVDLA_CSC_dl_for_check.scala 945:35:@1252.4]
  wire [8:0] dat_rsp_flag; // @[NV_NVDLA_CSC_dl_for_check.scala 947:30:@1255.4]
  wire [7:0] rsp_sft_cnt_l0_sub; // @[NV_NVDLA_CSC_dl_for_check.scala 956:29:@1261.4]
  wire [7:0] rsp_sft_cnt_l1_sub; // @[NV_NVDLA_CSC_dl_for_check.scala 957:29:@1262.4]
  wire [7:0] rsp_sft_cnt_l2_sub; // @[NV_NVDLA_CSC_dl_for_check.scala 958:29:@1263.4]
  wire [7:0] rsp_sft_cnt_l3_sub; // @[NV_NVDLA_CSC_dl_for_check.scala 959:29:@1264.4]
  wire  _T_1414; // @[NV_NVDLA_CSC_dl_for_check.scala 961:50:@1265.4]
  wire [7:0] _GEN_726; // @[NV_NVDLA_CSC_dl_for_check.scala 961:111:@1266.4]
  wire [8:0] _T_1416; // @[NV_NVDLA_CSC_dl_for_check.scala 961:111:@1266.4]
  wire [8:0] _GEN_727; // @[NV_NVDLA_CSC_dl_for_check.scala 961:134:@1267.4]
  wire [9:0] _T_1417; // @[NV_NVDLA_CSC_dl_for_check.scala 961:134:@1267.4]
  wire [9:0] _T_1418; // @[NV_NVDLA_CSC_dl_for_check.scala 961:134:@1268.4]
  wire [9:0] _T_1419; // @[NV_NVDLA_CSC_dl_for_check.scala 961:29:@1269.4]
  wire [7:0] rsp_sft_cnt_l0_inc; // @[NV_NVDLA_CSC_dl_for_check.scala 961:156:@1270.4]
  wire [8:0] _T_1423; // @[NV_NVDLA_CSC_dl_for_check.scala 962:111:@1272.4]
  wire [8:0] _GEN_729; // @[NV_NVDLA_CSC_dl_for_check.scala 962:134:@1273.4]
  wire [9:0] _T_1424; // @[NV_NVDLA_CSC_dl_for_check.scala 962:134:@1273.4]
  wire [9:0] _T_1425; // @[NV_NVDLA_CSC_dl_for_check.scala 962:134:@1274.4]
  wire [9:0] _T_1426; // @[NV_NVDLA_CSC_dl_for_check.scala 962:29:@1275.4]
  wire [7:0] rsp_sft_cnt_l1_inc; // @[NV_NVDLA_CSC_dl_for_check.scala 962:156:@1276.4]
  wire [8:0] _T_1430; // @[NV_NVDLA_CSC_dl_for_check.scala 963:111:@1278.4]
  wire [8:0] _GEN_731; // @[NV_NVDLA_CSC_dl_for_check.scala 963:134:@1279.4]
  wire [9:0] _T_1431; // @[NV_NVDLA_CSC_dl_for_check.scala 963:134:@1279.4]
  wire [9:0] _T_1432; // @[NV_NVDLA_CSC_dl_for_check.scala 963:134:@1280.4]
  wire [9:0] _T_1433; // @[NV_NVDLA_CSC_dl_for_check.scala 963:29:@1281.4]
  wire [7:0] rsp_sft_cnt_l2_inc; // @[NV_NVDLA_CSC_dl_for_check.scala 963:156:@1282.4]
  wire [8:0] _T_1437; // @[NV_NVDLA_CSC_dl_for_check.scala 964:111:@1284.4]
  wire [8:0] _GEN_733; // @[NV_NVDLA_CSC_dl_for_check.scala 964:134:@1285.4]
  wire [9:0] _T_1438; // @[NV_NVDLA_CSC_dl_for_check.scala 964:134:@1285.4]
  wire [9:0] _T_1439; // @[NV_NVDLA_CSC_dl_for_check.scala 964:134:@1286.4]
  wire [9:0] _T_1440; // @[NV_NVDLA_CSC_dl_for_check.scala 964:29:@1287.4]
  wire [7:0] rsp_sft_cnt_l3_inc; // @[NV_NVDLA_CSC_dl_for_check.scala 964:156:@1288.4]
  wire  _T_1442; // @[NV_NVDLA_CSC_dl_for_check.scala 973:52:@1289.4]
  wire  _T_1443; // @[NV_NVDLA_CSC_dl_for_check.scala 973:50:@1290.4]
  wire  _T_1444; // @[NV_NVDLA_CSC_dl_for_check.scala 974:50:@1291.4]
  wire [7:0] _T_1447; // @[NV_NVDLA_CSC_dl_for_check.scala 975:64:@1292.4]
  wire [7:0] _T_1448; // @[NV_NVDLA_CSC_dl_for_check.scala 975:27:@1293.4]
  wire [7:0] _T_1449; // @[NV_NVDLA_CSC_dl_for_check.scala 974:27:@1294.4]
  wire [7:0] _T_1450; // @[NV_NVDLA_CSC_dl_for_check.scala 973:27:@1295.4]
  wire [7:0] rsp_sft_cnt_l0_w; // @[NV_NVDLA_CSC_dl_for_check.scala 972:27:@1296.4]
  wire  _T_1452; // @[NV_NVDLA_CSC_dl_for_check.scala 978:52:@1297.4]
  wire  _T_1453; // @[NV_NVDLA_CSC_dl_for_check.scala 978:50:@1298.4]
  wire  _T_1454; // @[NV_NVDLA_CSC_dl_for_check.scala 979:50:@1299.4]
  wire [7:0] _T_1457; // @[NV_NVDLA_CSC_dl_for_check.scala 980:64:@1300.4]
  wire [7:0] _T_1458; // @[NV_NVDLA_CSC_dl_for_check.scala 980:27:@1301.4]
  wire [7:0] _T_1459; // @[NV_NVDLA_CSC_dl_for_check.scala 979:27:@1302.4]
  wire [7:0] _T_1460; // @[NV_NVDLA_CSC_dl_for_check.scala 978:27:@1303.4]
  wire [7:0] rsp_sft_cnt_l1_w; // @[NV_NVDLA_CSC_dl_for_check.scala 977:27:@1304.4]
  wire  _T_1462; // @[NV_NVDLA_CSC_dl_for_check.scala 983:52:@1305.4]
  wire  _T_1463; // @[NV_NVDLA_CSC_dl_for_check.scala 983:50:@1306.4]
  wire  _T_1464; // @[NV_NVDLA_CSC_dl_for_check.scala 984:50:@1307.4]
  wire [7:0] _T_1467; // @[NV_NVDLA_CSC_dl_for_check.scala 985:64:@1308.4]
  wire [7:0] _T_1468; // @[NV_NVDLA_CSC_dl_for_check.scala 985:27:@1309.4]
  wire [7:0] _T_1469; // @[NV_NVDLA_CSC_dl_for_check.scala 984:27:@1310.4]
  wire [7:0] _T_1470; // @[NV_NVDLA_CSC_dl_for_check.scala 983:27:@1311.4]
  wire [7:0] rsp_sft_cnt_l2_w; // @[NV_NVDLA_CSC_dl_for_check.scala 982:27:@1312.4]
  wire  _T_1472; // @[NV_NVDLA_CSC_dl_for_check.scala 988:52:@1313.4]
  wire  _T_1473; // @[NV_NVDLA_CSC_dl_for_check.scala 988:50:@1314.4]
  wire  _T_1474; // @[NV_NVDLA_CSC_dl_for_check.scala 989:50:@1315.4]
  wire [7:0] _T_1477; // @[NV_NVDLA_CSC_dl_for_check.scala 990:64:@1316.4]
  wire [7:0] _T_1478; // @[NV_NVDLA_CSC_dl_for_check.scala 990:27:@1317.4]
  wire [7:0] _T_1479; // @[NV_NVDLA_CSC_dl_for_check.scala 989:27:@1318.4]
  wire [7:0] _T_1480; // @[NV_NVDLA_CSC_dl_for_check.scala 988:27:@1319.4]
  wire [7:0] rsp_sft_cnt_l3_w; // @[NV_NVDLA_CSC_dl_for_check.scala 987:27:@1320.4]
  wire  _T_1481; // @[NV_NVDLA_CSC_dl_for_check.scala 993:46:@1321.4]
  wire  _T_1482; // @[NV_NVDLA_CSC_dl_for_check.scala 993:51:@1322.4]
  wire  rsp_sft_cnt_l0_en; // @[NV_NVDLA_CSC_dl_for_check.scala 993:34:@1323.4]
  wire  _T_1483; // @[NV_NVDLA_CSC_dl_for_check.scala 994:46:@1324.4]
  wire  _T_1484; // @[NV_NVDLA_CSC_dl_for_check.scala 994:51:@1325.4]
  wire  _T_1486; // @[NV_NVDLA_CSC_dl_for_check.scala 994:87:@1326.4]
  wire  _T_1487; // @[NV_NVDLA_CSC_dl_for_check.scala 994:69:@1327.4]
  wire  rsp_sft_cnt_l1_en; // @[NV_NVDLA_CSC_dl_for_check.scala 994:34:@1328.4]
  wire  _T_1488; // @[NV_NVDLA_CSC_dl_for_check.scala 995:46:@1329.4]
  wire  _T_1489; // @[NV_NVDLA_CSC_dl_for_check.scala 995:51:@1330.4]
  wire  _T_1491; // @[NV_NVDLA_CSC_dl_for_check.scala 995:87:@1331.4]
  wire  _T_1492; // @[NV_NVDLA_CSC_dl_for_check.scala 995:69:@1332.4]
  wire  rsp_sft_cnt_l2_en; // @[NV_NVDLA_CSC_dl_for_check.scala 995:34:@1333.4]
  wire  _T_1493; // @[NV_NVDLA_CSC_dl_for_check.scala 996:46:@1334.4]
  wire  _T_1494; // @[NV_NVDLA_CSC_dl_for_check.scala 996:51:@1335.4]
  wire  _T_1497; // @[NV_NVDLA_CSC_dl_for_check.scala 996:69:@1337.4]
  wire  rsp_sft_cnt_l3_en; // @[NV_NVDLA_CSC_dl_for_check.scala 996:34:@1338.4]
  wire  _T_1498; // @[NV_NVDLA_CSC_dl_for_check.scala 998:50:@1339.4]
  wire  _T_1499; // @[NV_NVDLA_CSC_dl_for_check.scala 998:55:@1340.4]
  wire  _T_1500; // @[NV_NVDLA_CSC_dl_for_check.scala 998:73:@1341.4]
  wire  _T_1501; // @[NV_NVDLA_CSC_dl_for_check.scala 998:97:@1342.4]
  wire  rsp_sft_cnt_l0_ori_en; // @[NV_NVDLA_CSC_dl_for_check.scala 998:38:@1343.4]
  wire  _T_1502; // @[NV_NVDLA_CSC_dl_for_check.scala 999:50:@1344.4]
  wire  _T_1503; // @[NV_NVDLA_CSC_dl_for_check.scala 999:55:@1345.4]
  wire  _T_1504; // @[NV_NVDLA_CSC_dl_for_check.scala 999:73:@1346.4]
  wire  _T_1505; // @[NV_NVDLA_CSC_dl_for_check.scala 999:97:@1347.4]
  wire  _T_1507; // @[NV_NVDLA_CSC_dl_for_check.scala 999:138:@1348.4]
  wire  _T_1508; // @[NV_NVDLA_CSC_dl_for_check.scala 999:120:@1349.4]
  wire  rsp_sft_cnt_l1_ori_en; // @[NV_NVDLA_CSC_dl_for_check.scala 999:38:@1350.4]
  wire  _T_1509; // @[NV_NVDLA_CSC_dl_for_check.scala 1000:50:@1351.4]
  wire  _T_1510; // @[NV_NVDLA_CSC_dl_for_check.scala 1000:55:@1352.4]
  wire  _T_1511; // @[NV_NVDLA_CSC_dl_for_check.scala 1000:73:@1353.4]
  wire  _T_1512; // @[NV_NVDLA_CSC_dl_for_check.scala 1000:97:@1354.4]
  wire  _T_1514; // @[NV_NVDLA_CSC_dl_for_check.scala 1000:138:@1355.4]
  wire  _T_1515; // @[NV_NVDLA_CSC_dl_for_check.scala 1000:120:@1356.4]
  wire  rsp_sft_cnt_l2_ori_en; // @[NV_NVDLA_CSC_dl_for_check.scala 1000:38:@1357.4]
  wire  _T_1516; // @[NV_NVDLA_CSC_dl_for_check.scala 1001:50:@1358.4]
  wire  _T_1517; // @[NV_NVDLA_CSC_dl_for_check.scala 1001:55:@1359.4]
  wire  _T_1518; // @[NV_NVDLA_CSC_dl_for_check.scala 1001:73:@1360.4]
  wire  _T_1519; // @[NV_NVDLA_CSC_dl_for_check.scala 1001:97:@1361.4]
  wire  _T_1522; // @[NV_NVDLA_CSC_dl_for_check.scala 1001:120:@1363.4]
  wire  rsp_sft_cnt_l3_ori_en; // @[NV_NVDLA_CSC_dl_for_check.scala 1001:38:@1364.4]
  wire [7:0] _GEN_146; // @[NV_NVDLA_CSC_dl_for_check.scala 1003:24:@1365.4]
  wire [7:0] _GEN_147; // @[NV_NVDLA_CSC_dl_for_check.scala 1004:24:@1368.4]
  wire [7:0] _GEN_148; // @[NV_NVDLA_CSC_dl_for_check.scala 1005:24:@1371.4]
  wire [7:0] _GEN_149; // @[NV_NVDLA_CSC_dl_for_check.scala 1006:24:@1374.4]
  wire [7:0] _GEN_150; // @[NV_NVDLA_CSC_dl_for_check.scala 1007:28:@1377.4]
  wire [7:0] _GEN_151; // @[NV_NVDLA_CSC_dl_for_check.scala 1008:28:@1380.4]
  wire [7:0] _GEN_152; // @[NV_NVDLA_CSC_dl_for_check.scala 1009:28:@1383.4]
  wire [7:0] _GEN_153; // @[NV_NVDLA_CSC_dl_for_check.scala 1010:28:@1386.4]
  wire [7:0] _T_1523; // @[NV_NVDLA_CSC_dl_for_check.scala 1019:55:@1389.4]
  wire [63:0] _T_1526; // @[Cat.scala 30:58:@1392.4]
  wire [127:0] _T_1527; // @[Cat.scala 30:58:@1393.4]
  wire [255:0] _T_1528; // @[Cat.scala 30:58:@1394.4]
  wire [511:0] dat_rsp_pad_value; // @[Cat.scala 30:58:@1395.4]
  wire [511:0] dat_rsp_l0c0; // @[NV_NVDLA_CSC_dl_for_check.scala 1021:23:@1396.4]
  wire [511:0] dat_rsp_l1c0; // @[NV_NVDLA_CSC_dl_for_check.scala 1022:23:@1397.4]
  wire [511:0] dat_rsp_l2c0; // @[NV_NVDLA_CSC_dl_for_check.scala 1023:23:@1398.4]
  wire [511:0] dat_rsp_l3c0; // @[NV_NVDLA_CSC_dl_for_check.scala 1024:23:@1399.4]
  wire [511:0] dat_rsp_l0c1; // @[NV_NVDLA_CSC_dl_for_check.scala 1026:23:@1400.4]
  wire [511:0] dat_rsp_l1c1; // @[NV_NVDLA_CSC_dl_for_check.scala 1027:23:@1401.4]
  wire [511:0] dat_rsp_l2c1; // @[NV_NVDLA_CSC_dl_for_check.scala 1028:23:@1402.4]
  wire [511:0] dat_rsp_l3c1; // @[NV_NVDLA_CSC_dl_for_check.scala 1029:23:@1403.4]
  wire  _T_1530; // @[NV_NVDLA_CSC_dl_for_check.scala 1039:42:@1405.4]
  wire  _T_1531; // @[NV_NVDLA_CSC_dl_for_check.scala 1039:58:@1406.4]
  wire  _T_1532; // @[NV_NVDLA_CSC_dl_for_check.scala 1039:47:@1407.4]
  wire  _T_1535; // @[NV_NVDLA_CSC_dl_for_check.scala 1040:43:@1408.4]
  wire  _T_1536; // @[NV_NVDLA_CSC_dl_for_check.scala 1040:87:@1409.4]
  wire  _T_1538; // @[NV_NVDLA_CSC_dl_for_check.scala 1040:91:@1410.4]
  wire  _T_1539; // @[NV_NVDLA_CSC_dl_for_check.scala 1040:72:@1411.4]
  wire [255:0] _T_1541; // @[NV_NVDLA_CSC_dl_for_check.scala 1040:171:@1412.4]
  wire [511:0] _T_1542; // @[Cat.scala 30:58:@1413.4]
  wire  _T_1548; // @[NV_NVDLA_CSC_dl_for_check.scala 1041:72:@1417.4]
  wire [255:0] _T_1550; // @[NV_NVDLA_CSC_dl_for_check.scala 1041:171:@1418.4]
  wire [511:0] _T_1551; // @[Cat.scala 30:58:@1419.4]
  wire [511:0] _T_1552; // @[NV_NVDLA_CSC_dl_for_check.scala 1041:27:@1420.4]
  wire [511:0] _T_1553; // @[NV_NVDLA_CSC_dl_for_check.scala 1040:27:@1421.4]
  wire [511:0] dat_rsp_conv_8b; // @[NV_NVDLA_CSC_dl_for_check.scala 1039:27:@1422.4]
  wire [7:0] dat_rsp_conv_0; // @[NV_NVDLA_CSC_dl_for_check.scala 1057:39:@1425.4]
  wire [7:0] dat_rsp_conv_1; // @[NV_NVDLA_CSC_dl_for_check.scala 1057:39:@1427.4]
  wire [7:0] dat_rsp_conv_2; // @[NV_NVDLA_CSC_dl_for_check.scala 1057:39:@1429.4]
  wire [7:0] dat_rsp_conv_3; // @[NV_NVDLA_CSC_dl_for_check.scala 1057:39:@1431.4]
  wire [7:0] dat_rsp_conv_4; // @[NV_NVDLA_CSC_dl_for_check.scala 1057:39:@1433.4]
  wire [7:0] dat_rsp_conv_5; // @[NV_NVDLA_CSC_dl_for_check.scala 1057:39:@1435.4]
  wire [7:0] dat_rsp_conv_6; // @[NV_NVDLA_CSC_dl_for_check.scala 1057:39:@1437.4]
  wire [7:0] dat_rsp_conv_7; // @[NV_NVDLA_CSC_dl_for_check.scala 1057:39:@1439.4]
  wire [7:0] dat_rsp_conv_8; // @[NV_NVDLA_CSC_dl_for_check.scala 1057:39:@1441.4]
  wire [7:0] dat_rsp_conv_9; // @[NV_NVDLA_CSC_dl_for_check.scala 1057:39:@1443.4]
  wire [7:0] dat_rsp_conv_10; // @[NV_NVDLA_CSC_dl_for_check.scala 1057:39:@1445.4]
  wire [7:0] dat_rsp_conv_11; // @[NV_NVDLA_CSC_dl_for_check.scala 1057:39:@1447.4]
  wire [7:0] dat_rsp_conv_12; // @[NV_NVDLA_CSC_dl_for_check.scala 1057:39:@1449.4]
  wire [7:0] dat_rsp_conv_13; // @[NV_NVDLA_CSC_dl_for_check.scala 1057:39:@1451.4]
  wire [7:0] dat_rsp_conv_14; // @[NV_NVDLA_CSC_dl_for_check.scala 1057:39:@1453.4]
  wire [7:0] dat_rsp_conv_15; // @[NV_NVDLA_CSC_dl_for_check.scala 1057:39:@1455.4]
  wire [7:0] dat_rsp_conv_16; // @[NV_NVDLA_CSC_dl_for_check.scala 1057:39:@1457.4]
  wire [7:0] dat_rsp_conv_17; // @[NV_NVDLA_CSC_dl_for_check.scala 1057:39:@1459.4]
  wire [7:0] dat_rsp_conv_18; // @[NV_NVDLA_CSC_dl_for_check.scala 1057:39:@1461.4]
  wire [7:0] dat_rsp_conv_19; // @[NV_NVDLA_CSC_dl_for_check.scala 1057:39:@1463.4]
  wire [7:0] dat_rsp_conv_20; // @[NV_NVDLA_CSC_dl_for_check.scala 1057:39:@1465.4]
  wire [7:0] dat_rsp_conv_21; // @[NV_NVDLA_CSC_dl_for_check.scala 1057:39:@1467.4]
  wire [7:0] dat_rsp_conv_22; // @[NV_NVDLA_CSC_dl_for_check.scala 1057:39:@1469.4]
  wire [7:0] dat_rsp_conv_23; // @[NV_NVDLA_CSC_dl_for_check.scala 1057:39:@1471.4]
  wire [7:0] dat_rsp_conv_24; // @[NV_NVDLA_CSC_dl_for_check.scala 1057:39:@1473.4]
  wire [7:0] dat_rsp_conv_25; // @[NV_NVDLA_CSC_dl_for_check.scala 1057:39:@1475.4]
  wire [7:0] dat_rsp_conv_26; // @[NV_NVDLA_CSC_dl_for_check.scala 1057:39:@1477.4]
  wire [7:0] dat_rsp_conv_27; // @[NV_NVDLA_CSC_dl_for_check.scala 1057:39:@1479.4]
  wire [7:0] dat_rsp_conv_28; // @[NV_NVDLA_CSC_dl_for_check.scala 1057:39:@1481.4]
  wire [7:0] dat_rsp_conv_29; // @[NV_NVDLA_CSC_dl_for_check.scala 1057:39:@1483.4]
  wire [7:0] dat_rsp_conv_30; // @[NV_NVDLA_CSC_dl_for_check.scala 1057:39:@1485.4]
  wire [7:0] dat_rsp_conv_31; // @[NV_NVDLA_CSC_dl_for_check.scala 1057:39:@1487.4]
  wire [7:0] dat_rsp_conv_32; // @[NV_NVDLA_CSC_dl_for_check.scala 1057:39:@1489.4]
  wire [7:0] dat_rsp_conv_33; // @[NV_NVDLA_CSC_dl_for_check.scala 1057:39:@1491.4]
  wire [7:0] dat_rsp_conv_34; // @[NV_NVDLA_CSC_dl_for_check.scala 1057:39:@1493.4]
  wire [7:0] dat_rsp_conv_35; // @[NV_NVDLA_CSC_dl_for_check.scala 1057:39:@1495.4]
  wire [7:0] dat_rsp_conv_36; // @[NV_NVDLA_CSC_dl_for_check.scala 1057:39:@1497.4]
  wire [7:0] dat_rsp_conv_37; // @[NV_NVDLA_CSC_dl_for_check.scala 1057:39:@1499.4]
  wire [7:0] dat_rsp_conv_38; // @[NV_NVDLA_CSC_dl_for_check.scala 1057:39:@1501.4]
  wire [7:0] dat_rsp_conv_39; // @[NV_NVDLA_CSC_dl_for_check.scala 1057:39:@1503.4]
  wire [7:0] dat_rsp_conv_40; // @[NV_NVDLA_CSC_dl_for_check.scala 1057:39:@1505.4]
  wire [7:0] dat_rsp_conv_41; // @[NV_NVDLA_CSC_dl_for_check.scala 1057:39:@1507.4]
  wire [7:0] dat_rsp_conv_42; // @[NV_NVDLA_CSC_dl_for_check.scala 1057:39:@1509.4]
  wire [7:0] dat_rsp_conv_43; // @[NV_NVDLA_CSC_dl_for_check.scala 1057:39:@1511.4]
  wire [7:0] dat_rsp_conv_44; // @[NV_NVDLA_CSC_dl_for_check.scala 1057:39:@1513.4]
  wire [7:0] dat_rsp_conv_45; // @[NV_NVDLA_CSC_dl_for_check.scala 1057:39:@1515.4]
  wire [7:0] dat_rsp_conv_46; // @[NV_NVDLA_CSC_dl_for_check.scala 1057:39:@1517.4]
  wire [7:0] dat_rsp_conv_47; // @[NV_NVDLA_CSC_dl_for_check.scala 1057:39:@1519.4]
  wire [7:0] dat_rsp_conv_48; // @[NV_NVDLA_CSC_dl_for_check.scala 1057:39:@1521.4]
  wire [7:0] dat_rsp_conv_49; // @[NV_NVDLA_CSC_dl_for_check.scala 1057:39:@1523.4]
  wire [7:0] dat_rsp_conv_50; // @[NV_NVDLA_CSC_dl_for_check.scala 1057:39:@1525.4]
  wire [7:0] dat_rsp_conv_51; // @[NV_NVDLA_CSC_dl_for_check.scala 1057:39:@1527.4]
  wire [7:0] dat_rsp_conv_52; // @[NV_NVDLA_CSC_dl_for_check.scala 1057:39:@1529.4]
  wire [7:0] dat_rsp_conv_53; // @[NV_NVDLA_CSC_dl_for_check.scala 1057:39:@1531.4]
  wire [7:0] dat_rsp_conv_54; // @[NV_NVDLA_CSC_dl_for_check.scala 1057:39:@1533.4]
  wire [7:0] dat_rsp_conv_55; // @[NV_NVDLA_CSC_dl_for_check.scala 1057:39:@1535.4]
  wire [7:0] dat_rsp_conv_56; // @[NV_NVDLA_CSC_dl_for_check.scala 1057:39:@1537.4]
  wire [7:0] dat_rsp_conv_57; // @[NV_NVDLA_CSC_dl_for_check.scala 1057:39:@1539.4]
  wire [7:0] dat_rsp_conv_58; // @[NV_NVDLA_CSC_dl_for_check.scala 1057:39:@1541.4]
  wire [7:0] dat_rsp_conv_59; // @[NV_NVDLA_CSC_dl_for_check.scala 1057:39:@1543.4]
  wire [7:0] dat_rsp_conv_60; // @[NV_NVDLA_CSC_dl_for_check.scala 1057:39:@1545.4]
  wire [7:0] dat_rsp_conv_61; // @[NV_NVDLA_CSC_dl_for_check.scala 1057:39:@1547.4]
  wire [7:0] dat_rsp_conv_62; // @[NV_NVDLA_CSC_dl_for_check.scala 1057:39:@1549.4]
  wire [7:0] dat_rsp_conv_63; // @[NV_NVDLA_CSC_dl_for_check.scala 1057:39:@1551.4]
  reg [255:0] dat_rsp_l0_sft_d1; // @[NV_NVDLA_CSC_dl_for_check.scala 1061:28:@1553.4]
  reg [255:0] _RAND_186;
  reg [127:0] dat_rsp_l0_sft_d2; // @[NV_NVDLA_CSC_dl_for_check.scala 1062:28:@1554.4]
  reg [127:0] _RAND_187;
  reg [127:0] dat_rsp_l0_sft_d3; // @[NV_NVDLA_CSC_dl_for_check.scala 1063:28:@1555.4]
  reg [127:0] _RAND_188;
  reg [127:0] dat_rsp_l1_sft_d2; // @[NV_NVDLA_CSC_dl_for_check.scala 1065:28:@1556.4]
  reg [127:0] _RAND_189;
  reg [127:0] dat_rsp_l1_sft_d3; // @[NV_NVDLA_CSC_dl_for_check.scala 1066:28:@1557.4]
  reg [127:0] _RAND_190;
  reg [127:0] dat_rsp_l2_sft_d3; // @[NV_NVDLA_CSC_dl_for_check.scala 1068:28:@1558.4]
  reg [127:0] _RAND_191;
  wire  _T_1694; // @[NV_NVDLA_CSC_dl_for_check.scala 1070:39:@1559.4]
  wire  _T_1695; // @[NV_NVDLA_CSC_dl_for_check.scala 1070:29:@1560.4]
  wire [1023:0] _T_1697; // @[Cat.scala 30:58:@1561.4]
  wire [1023:0] dat_rsp_l0_sft_in; // @[NV_NVDLA_CSC_dl_for_check.scala 1070:28:@1562.4]
  wire  _T_1698; // @[NV_NVDLA_CSC_dl_for_check.scala 1071:39:@1563.4]
  wire  _T_1699; // @[NV_NVDLA_CSC_dl_for_check.scala 1071:29:@1564.4]
  wire [1023:0] _T_1701; // @[Cat.scala 30:58:@1565.4]
  wire [1023:0] dat_rsp_l1_sft_in; // @[NV_NVDLA_CSC_dl_for_check.scala 1071:28:@1566.4]
  wire  _T_1702; // @[NV_NVDLA_CSC_dl_for_check.scala 1072:39:@1567.4]
  wire  _T_1703; // @[NV_NVDLA_CSC_dl_for_check.scala 1072:29:@1568.4]
  wire [1023:0] _T_1705; // @[Cat.scala 30:58:@1569.4]
  wire [1023:0] dat_rsp_l2_sft_in; // @[NV_NVDLA_CSC_dl_for_check.scala 1072:28:@1570.4]
  wire  _T_1706; // @[NV_NVDLA_CSC_dl_for_check.scala 1073:39:@1571.4]
  wire  _T_1707; // @[NV_NVDLA_CSC_dl_for_check.scala 1073:29:@1572.4]
  wire [1023:0] _T_1709; // @[Cat.scala 30:58:@1573.4]
  wire [1023:0] dat_rsp_l3_sft_in; // @[NV_NVDLA_CSC_dl_for_check.scala 1073:28:@1574.4]
  wire [10:0] _T_1711; // @[Cat.scala 30:58:@1575.4]
  wire [1023:0] _T_1712; // @[NV_NVDLA_CSC_dl_for_check.scala 1075:41:@1576.4]
  wire [511:0] dat_rsp_l0_sft; // @[NV_NVDLA_CSC_dl_for_check.scala 1075:82:@1577.4]
  wire [10:0] _T_1714; // @[Cat.scala 30:58:@1578.4]
  wire [1023:0] _T_1715; // @[NV_NVDLA_CSC_dl_for_check.scala 1076:41:@1579.4]
  wire [511:0] dat_rsp_l1_sft; // @[NV_NVDLA_CSC_dl_for_check.scala 1076:82:@1580.4]
  wire [10:0] _T_1717; // @[Cat.scala 30:58:@1581.4]
  wire [1023:0] _T_1718; // @[NV_NVDLA_CSC_dl_for_check.scala 1077:41:@1582.4]
  wire [511:0] dat_rsp_l2_sft; // @[NV_NVDLA_CSC_dl_for_check.scala 1077:82:@1583.4]
  wire [10:0] _T_1720; // @[Cat.scala 30:58:@1584.4]
  wire [1023:0] _T_1721; // @[NV_NVDLA_CSC_dl_for_check.scala 1078:41:@1585.4]
  wire [511:0] dat_rsp_l3_sft; // @[NV_NVDLA_CSC_dl_for_check.scala 1078:82:@1586.4]
  wire  _T_1722; // @[NV_NVDLA_CSC_dl_for_check.scala 1080:36:@1587.4]
  wire  _T_1723; // @[NV_NVDLA_CSC_dl_for_check.scala 1080:26:@1588.4]
  wire  _T_1726; // @[NV_NVDLA_CSC_dl_for_check.scala 1081:41:@1589.4]
  wire [127:0] _T_1727; // @[NV_NVDLA_CSC_dl_for_check.scala 1081:81:@1590.4]
  wire [511:0] _T_1733; // @[Cat.scala 30:58:@1596.4]
  wire  _T_1735; // @[NV_NVDLA_CSC_dl_for_check.scala 1082:41:@1597.4]
  wire [255:0] _T_1736; // @[NV_NVDLA_CSC_dl_for_check.scala 1082:81:@1598.4]
  wire [511:0] _T_1738; // @[Cat.scala 30:58:@1600.4]
  wire [511:0] _T_1740; // @[NV_NVDLA_CSC_dl_for_check.scala 1082:25:@1602.4]
  wire [511:0] _T_1741; // @[NV_NVDLA_CSC_dl_for_check.scala 1081:25:@1603.4]
  wire [511:0] dat_rsp_img_8b; // @[NV_NVDLA_CSC_dl_for_check.scala 1080:25:@1604.4]
  wire [7:0] dat_rsp_img_0; // @[NV_NVDLA_CSC_dl_for_check.scala 1088:37:@1606.4]
  wire [7:0] dat_rsp_img_1; // @[NV_NVDLA_CSC_dl_for_check.scala 1088:37:@1608.4]
  wire [7:0] dat_rsp_img_2; // @[NV_NVDLA_CSC_dl_for_check.scala 1088:37:@1610.4]
  wire [7:0] dat_rsp_img_3; // @[NV_NVDLA_CSC_dl_for_check.scala 1088:37:@1612.4]
  wire [7:0] dat_rsp_img_4; // @[NV_NVDLA_CSC_dl_for_check.scala 1088:37:@1614.4]
  wire [7:0] dat_rsp_img_5; // @[NV_NVDLA_CSC_dl_for_check.scala 1088:37:@1616.4]
  wire [7:0] dat_rsp_img_6; // @[NV_NVDLA_CSC_dl_for_check.scala 1088:37:@1618.4]
  wire [7:0] dat_rsp_img_7; // @[NV_NVDLA_CSC_dl_for_check.scala 1088:37:@1620.4]
  wire [7:0] dat_rsp_img_8; // @[NV_NVDLA_CSC_dl_for_check.scala 1088:37:@1622.4]
  wire [7:0] dat_rsp_img_9; // @[NV_NVDLA_CSC_dl_for_check.scala 1088:37:@1624.4]
  wire [7:0] dat_rsp_img_10; // @[NV_NVDLA_CSC_dl_for_check.scala 1088:37:@1626.4]
  wire [7:0] dat_rsp_img_11; // @[NV_NVDLA_CSC_dl_for_check.scala 1088:37:@1628.4]
  wire [7:0] dat_rsp_img_12; // @[NV_NVDLA_CSC_dl_for_check.scala 1088:37:@1630.4]
  wire [7:0] dat_rsp_img_13; // @[NV_NVDLA_CSC_dl_for_check.scala 1088:37:@1632.4]
  wire [7:0] dat_rsp_img_14; // @[NV_NVDLA_CSC_dl_for_check.scala 1088:37:@1634.4]
  wire [7:0] dat_rsp_img_15; // @[NV_NVDLA_CSC_dl_for_check.scala 1088:37:@1636.4]
  wire [7:0] dat_rsp_img_16; // @[NV_NVDLA_CSC_dl_for_check.scala 1088:37:@1638.4]
  wire [7:0] dat_rsp_img_17; // @[NV_NVDLA_CSC_dl_for_check.scala 1088:37:@1640.4]
  wire [7:0] dat_rsp_img_18; // @[NV_NVDLA_CSC_dl_for_check.scala 1088:37:@1642.4]
  wire [7:0] dat_rsp_img_19; // @[NV_NVDLA_CSC_dl_for_check.scala 1088:37:@1644.4]
  wire [7:0] dat_rsp_img_20; // @[NV_NVDLA_CSC_dl_for_check.scala 1088:37:@1646.4]
  wire [7:0] dat_rsp_img_21; // @[NV_NVDLA_CSC_dl_for_check.scala 1088:37:@1648.4]
  wire [7:0] dat_rsp_img_22; // @[NV_NVDLA_CSC_dl_for_check.scala 1088:37:@1650.4]
  wire [7:0] dat_rsp_img_23; // @[NV_NVDLA_CSC_dl_for_check.scala 1088:37:@1652.4]
  wire [7:0] dat_rsp_img_24; // @[NV_NVDLA_CSC_dl_for_check.scala 1088:37:@1654.4]
  wire [7:0] dat_rsp_img_25; // @[NV_NVDLA_CSC_dl_for_check.scala 1088:37:@1656.4]
  wire [7:0] dat_rsp_img_26; // @[NV_NVDLA_CSC_dl_for_check.scala 1088:37:@1658.4]
  wire [7:0] dat_rsp_img_27; // @[NV_NVDLA_CSC_dl_for_check.scala 1088:37:@1660.4]
  wire [7:0] dat_rsp_img_28; // @[NV_NVDLA_CSC_dl_for_check.scala 1088:37:@1662.4]
  wire [7:0] dat_rsp_img_29; // @[NV_NVDLA_CSC_dl_for_check.scala 1088:37:@1664.4]
  wire [7:0] dat_rsp_img_30; // @[NV_NVDLA_CSC_dl_for_check.scala 1088:37:@1666.4]
  wire [7:0] dat_rsp_img_31; // @[NV_NVDLA_CSC_dl_for_check.scala 1088:37:@1668.4]
  wire [7:0] dat_rsp_img_32; // @[NV_NVDLA_CSC_dl_for_check.scala 1088:37:@1670.4]
  wire [7:0] dat_rsp_img_33; // @[NV_NVDLA_CSC_dl_for_check.scala 1088:37:@1672.4]
  wire [7:0] dat_rsp_img_34; // @[NV_NVDLA_CSC_dl_for_check.scala 1088:37:@1674.4]
  wire [7:0] dat_rsp_img_35; // @[NV_NVDLA_CSC_dl_for_check.scala 1088:37:@1676.4]
  wire [7:0] dat_rsp_img_36; // @[NV_NVDLA_CSC_dl_for_check.scala 1088:37:@1678.4]
  wire [7:0] dat_rsp_img_37; // @[NV_NVDLA_CSC_dl_for_check.scala 1088:37:@1680.4]
  wire [7:0] dat_rsp_img_38; // @[NV_NVDLA_CSC_dl_for_check.scala 1088:37:@1682.4]
  wire [7:0] dat_rsp_img_39; // @[NV_NVDLA_CSC_dl_for_check.scala 1088:37:@1684.4]
  wire [7:0] dat_rsp_img_40; // @[NV_NVDLA_CSC_dl_for_check.scala 1088:37:@1686.4]
  wire [7:0] dat_rsp_img_41; // @[NV_NVDLA_CSC_dl_for_check.scala 1088:37:@1688.4]
  wire [7:0] dat_rsp_img_42; // @[NV_NVDLA_CSC_dl_for_check.scala 1088:37:@1690.4]
  wire [7:0] dat_rsp_img_43; // @[NV_NVDLA_CSC_dl_for_check.scala 1088:37:@1692.4]
  wire [7:0] dat_rsp_img_44; // @[NV_NVDLA_CSC_dl_for_check.scala 1088:37:@1694.4]
  wire [7:0] dat_rsp_img_45; // @[NV_NVDLA_CSC_dl_for_check.scala 1088:37:@1696.4]
  wire [7:0] dat_rsp_img_46; // @[NV_NVDLA_CSC_dl_for_check.scala 1088:37:@1698.4]
  wire [7:0] dat_rsp_img_47; // @[NV_NVDLA_CSC_dl_for_check.scala 1088:37:@1700.4]
  wire [7:0] dat_rsp_img_48; // @[NV_NVDLA_CSC_dl_for_check.scala 1088:37:@1702.4]
  wire [7:0] dat_rsp_img_49; // @[NV_NVDLA_CSC_dl_for_check.scala 1088:37:@1704.4]
  wire [7:0] dat_rsp_img_50; // @[NV_NVDLA_CSC_dl_for_check.scala 1088:37:@1706.4]
  wire [7:0] dat_rsp_img_51; // @[NV_NVDLA_CSC_dl_for_check.scala 1088:37:@1708.4]
  wire [7:0] dat_rsp_img_52; // @[NV_NVDLA_CSC_dl_for_check.scala 1088:37:@1710.4]
  wire [7:0] dat_rsp_img_53; // @[NV_NVDLA_CSC_dl_for_check.scala 1088:37:@1712.4]
  wire [7:0] dat_rsp_img_54; // @[NV_NVDLA_CSC_dl_for_check.scala 1088:37:@1714.4]
  wire [7:0] dat_rsp_img_55; // @[NV_NVDLA_CSC_dl_for_check.scala 1088:37:@1716.4]
  wire [7:0] dat_rsp_img_56; // @[NV_NVDLA_CSC_dl_for_check.scala 1088:37:@1718.4]
  wire [7:0] dat_rsp_img_57; // @[NV_NVDLA_CSC_dl_for_check.scala 1088:37:@1720.4]
  wire [7:0] dat_rsp_img_58; // @[NV_NVDLA_CSC_dl_for_check.scala 1088:37:@1722.4]
  wire [7:0] dat_rsp_img_59; // @[NV_NVDLA_CSC_dl_for_check.scala 1088:37:@1724.4]
  wire [7:0] dat_rsp_img_60; // @[NV_NVDLA_CSC_dl_for_check.scala 1088:37:@1726.4]
  wire [7:0] dat_rsp_img_61; // @[NV_NVDLA_CSC_dl_for_check.scala 1088:37:@1728.4]
  wire [7:0] dat_rsp_img_62; // @[NV_NVDLA_CSC_dl_for_check.scala 1088:37:@1730.4]
  wire [7:0] dat_rsp_img_63; // @[NV_NVDLA_CSC_dl_for_check.scala 1088:37:@1732.4]
  wire  _T_1876; // @[NV_NVDLA_CSC_dl_for_check.scala 1091:59:@1734.4]
  wire  dat_rsp_sft_d1_en; // @[NV_NVDLA_CSC_dl_for_check.scala 1091:41:@1735.4]
  wire  _T_1878; // @[NV_NVDLA_CSC_dl_for_check.scala 1092:59:@1736.4]
  wire  dat_rsp_sft_d2_en; // @[NV_NVDLA_CSC_dl_for_check.scala 1092:41:@1737.4]
  wire  dat_rsp_sft_d3_en; // @[NV_NVDLA_CSC_dl_for_check.scala 1093:41:@1739.4]
  wire [511:0] _GEN_154; // @[NV_NVDLA_CSC_dl_for_check.scala 1095:24:@1740.4]
  wire [255:0] _GEN_155; // @[NV_NVDLA_CSC_dl_for_check.scala 1098:24:@1743.4]
  wire [511:0] _GEN_156; // @[NV_NVDLA_CSC_dl_for_check.scala 1098:24:@1743.4]
  wire [511:0] _GEN_159; // @[NV_NVDLA_CSC_dl_for_check.scala 1102:24:@1747.4]
  wire [318:0] _T_1886; // @[NV_NVDLA_CSC_dl_for_check.scala 1111:55:@1753.4]
  wire [318:0] dat_rsp_ori_mask; // @[NV_NVDLA_CSC_dl_for_check.scala 1111:24:@1754.4]
  wire  _T_1888; // @[NV_NVDLA_CSC_dl_for_check.scala 1113:51:@1755.4]
  wire [63:0] dat_rsp_cur_h_mask_p1; // @[NV_NVDLA_CSC_dl_for_check.scala 1113:32:@1757.4]
  wire  _T_1896; // @[NV_NVDLA_CSC_dl_for_check.scala 1114:51:@1758.4]
  wire [31:0] dat_rsp_cur_h_mask_p2; // @[NV_NVDLA_CSC_dl_for_check.scala 1114:32:@1760.4]
  wire  _T_1904; // @[NV_NVDLA_CSC_dl_for_check.scala 1115:51:@1761.4]
  wire [31:0] dat_rsp_cur_h_mask_p3; // @[NV_NVDLA_CSC_dl_for_check.scala 1115:32:@1763.4]
  wire [31:0] _T_1911; // @[NV_NVDLA_CSC_dl_for_check.scala 1117:57:@1764.4]
  wire [63:0] dat_rsp_cur_h_e2_mask_8b; // @[Cat.scala 30:58:@1766.4]
  wire [15:0] _T_1917; // @[NV_NVDLA_CSC_dl_for_check.scala 1118:57:@1767.4]
  wire [15:0] _T_1918; // @[NV_NVDLA_CSC_dl_for_check.scala 1118:106:@1768.4]
  wire [15:0] _T_1919; // @[NV_NVDLA_CSC_dl_for_check.scala 1118:155:@1769.4]
  wire [63:0] dat_rsp_cur_h_e4_mask_8b; // @[Cat.scala 30:58:@1773.4]
  wire  _T_1928; // @[NV_NVDLA_CSC_dl_for_check.scala 1120:43:@1774.4]
  wire [15:0] _T_1929; // @[NV_NVDLA_CSC_dl_for_check.scala 1120:89:@1775.4]
  wire [63:0] _T_1931; // @[Cat.scala 30:58:@1777.4]
  wire [63:0] _T_1932; // @[NV_NVDLA_CSC_dl_for_check.scala 1120:116:@1778.4]
  wire  _T_1934; // @[NV_NVDLA_CSC_dl_for_check.scala 1121:43:@1779.4]
  wire [31:0] _T_1935; // @[NV_NVDLA_CSC_dl_for_check.scala 1121:89:@1780.4]
  wire [63:0] _T_1936; // @[Cat.scala 30:58:@1781.4]
  wire [63:0] _T_1937; // @[NV_NVDLA_CSC_dl_for_check.scala 1121:116:@1782.4]
  wire [63:0] _T_1938; // @[NV_NVDLA_CSC_dl_for_check.scala 1122:39:@1783.4]
  wire [63:0] _T_1939; // @[NV_NVDLA_CSC_dl_for_check.scala 1121:26:@1784.4]
  wire [63:0] dat_rsp_mask_8b; // @[NV_NVDLA_CSC_dl_for_check.scala 1120:26:@1785.4]
  wire  _T_1940; // @[NV_NVDLA_CSC_dl_for_check.scala 1125:35:@1786.4]
  wire [7:0] dat_rsp_data_w_0; // @[NV_NVDLA_CSC_dl_for_check.scala 1125:25:@1787.4]
  wire [7:0] dat_rsp_data_w_1; // @[NV_NVDLA_CSC_dl_for_check.scala 1125:25:@1787.4]
  wire [7:0] dat_rsp_data_w_2; // @[NV_NVDLA_CSC_dl_for_check.scala 1125:25:@1787.4]
  wire [7:0] dat_rsp_data_w_3; // @[NV_NVDLA_CSC_dl_for_check.scala 1125:25:@1787.4]
  wire [7:0] dat_rsp_data_w_4; // @[NV_NVDLA_CSC_dl_for_check.scala 1125:25:@1787.4]
  wire [7:0] dat_rsp_data_w_5; // @[NV_NVDLA_CSC_dl_for_check.scala 1125:25:@1787.4]
  wire [7:0] dat_rsp_data_w_6; // @[NV_NVDLA_CSC_dl_for_check.scala 1125:25:@1787.4]
  wire [7:0] dat_rsp_data_w_7; // @[NV_NVDLA_CSC_dl_for_check.scala 1125:25:@1787.4]
  wire [7:0] dat_rsp_data_w_8; // @[NV_NVDLA_CSC_dl_for_check.scala 1125:25:@1787.4]
  wire [7:0] dat_rsp_data_w_9; // @[NV_NVDLA_CSC_dl_for_check.scala 1125:25:@1787.4]
  wire [7:0] dat_rsp_data_w_10; // @[NV_NVDLA_CSC_dl_for_check.scala 1125:25:@1787.4]
  wire [7:0] dat_rsp_data_w_11; // @[NV_NVDLA_CSC_dl_for_check.scala 1125:25:@1787.4]
  wire [7:0] dat_rsp_data_w_12; // @[NV_NVDLA_CSC_dl_for_check.scala 1125:25:@1787.4]
  wire [7:0] dat_rsp_data_w_13; // @[NV_NVDLA_CSC_dl_for_check.scala 1125:25:@1787.4]
  wire [7:0] dat_rsp_data_w_14; // @[NV_NVDLA_CSC_dl_for_check.scala 1125:25:@1787.4]
  wire [7:0] dat_rsp_data_w_15; // @[NV_NVDLA_CSC_dl_for_check.scala 1125:25:@1787.4]
  wire [7:0] dat_rsp_data_w_16; // @[NV_NVDLA_CSC_dl_for_check.scala 1125:25:@1787.4]
  wire [7:0] dat_rsp_data_w_17; // @[NV_NVDLA_CSC_dl_for_check.scala 1125:25:@1787.4]
  wire [7:0] dat_rsp_data_w_18; // @[NV_NVDLA_CSC_dl_for_check.scala 1125:25:@1787.4]
  wire [7:0] dat_rsp_data_w_19; // @[NV_NVDLA_CSC_dl_for_check.scala 1125:25:@1787.4]
  wire [7:0] dat_rsp_data_w_20; // @[NV_NVDLA_CSC_dl_for_check.scala 1125:25:@1787.4]
  wire [7:0] dat_rsp_data_w_21; // @[NV_NVDLA_CSC_dl_for_check.scala 1125:25:@1787.4]
  wire [7:0] dat_rsp_data_w_22; // @[NV_NVDLA_CSC_dl_for_check.scala 1125:25:@1787.4]
  wire [7:0] dat_rsp_data_w_23; // @[NV_NVDLA_CSC_dl_for_check.scala 1125:25:@1787.4]
  wire [7:0] dat_rsp_data_w_24; // @[NV_NVDLA_CSC_dl_for_check.scala 1125:25:@1787.4]
  wire [7:0] dat_rsp_data_w_25; // @[NV_NVDLA_CSC_dl_for_check.scala 1125:25:@1787.4]
  wire [7:0] dat_rsp_data_w_26; // @[NV_NVDLA_CSC_dl_for_check.scala 1125:25:@1787.4]
  wire [7:0] dat_rsp_data_w_27; // @[NV_NVDLA_CSC_dl_for_check.scala 1125:25:@1787.4]
  wire [7:0] dat_rsp_data_w_28; // @[NV_NVDLA_CSC_dl_for_check.scala 1125:25:@1787.4]
  wire [7:0] dat_rsp_data_w_29; // @[NV_NVDLA_CSC_dl_for_check.scala 1125:25:@1787.4]
  wire [7:0] dat_rsp_data_w_30; // @[NV_NVDLA_CSC_dl_for_check.scala 1125:25:@1787.4]
  wire [7:0] dat_rsp_data_w_31; // @[NV_NVDLA_CSC_dl_for_check.scala 1125:25:@1787.4]
  wire [7:0] dat_rsp_data_w_32; // @[NV_NVDLA_CSC_dl_for_check.scala 1125:25:@1787.4]
  wire [7:0] dat_rsp_data_w_33; // @[NV_NVDLA_CSC_dl_for_check.scala 1125:25:@1787.4]
  wire [7:0] dat_rsp_data_w_34; // @[NV_NVDLA_CSC_dl_for_check.scala 1125:25:@1787.4]
  wire [7:0] dat_rsp_data_w_35; // @[NV_NVDLA_CSC_dl_for_check.scala 1125:25:@1787.4]
  wire [7:0] dat_rsp_data_w_36; // @[NV_NVDLA_CSC_dl_for_check.scala 1125:25:@1787.4]
  wire [7:0] dat_rsp_data_w_37; // @[NV_NVDLA_CSC_dl_for_check.scala 1125:25:@1787.4]
  wire [7:0] dat_rsp_data_w_38; // @[NV_NVDLA_CSC_dl_for_check.scala 1125:25:@1787.4]
  wire [7:0] dat_rsp_data_w_39; // @[NV_NVDLA_CSC_dl_for_check.scala 1125:25:@1787.4]
  wire [7:0] dat_rsp_data_w_40; // @[NV_NVDLA_CSC_dl_for_check.scala 1125:25:@1787.4]
  wire [7:0] dat_rsp_data_w_41; // @[NV_NVDLA_CSC_dl_for_check.scala 1125:25:@1787.4]
  wire [7:0] dat_rsp_data_w_42; // @[NV_NVDLA_CSC_dl_for_check.scala 1125:25:@1787.4]
  wire [7:0] dat_rsp_data_w_43; // @[NV_NVDLA_CSC_dl_for_check.scala 1125:25:@1787.4]
  wire [7:0] dat_rsp_data_w_44; // @[NV_NVDLA_CSC_dl_for_check.scala 1125:25:@1787.4]
  wire [7:0] dat_rsp_data_w_45; // @[NV_NVDLA_CSC_dl_for_check.scala 1125:25:@1787.4]
  wire [7:0] dat_rsp_data_w_46; // @[NV_NVDLA_CSC_dl_for_check.scala 1125:25:@1787.4]
  wire [7:0] dat_rsp_data_w_47; // @[NV_NVDLA_CSC_dl_for_check.scala 1125:25:@1787.4]
  wire [7:0] dat_rsp_data_w_48; // @[NV_NVDLA_CSC_dl_for_check.scala 1125:25:@1787.4]
  wire [7:0] dat_rsp_data_w_49; // @[NV_NVDLA_CSC_dl_for_check.scala 1125:25:@1787.4]
  wire [7:0] dat_rsp_data_w_50; // @[NV_NVDLA_CSC_dl_for_check.scala 1125:25:@1787.4]
  wire [7:0] dat_rsp_data_w_51; // @[NV_NVDLA_CSC_dl_for_check.scala 1125:25:@1787.4]
  wire [7:0] dat_rsp_data_w_52; // @[NV_NVDLA_CSC_dl_for_check.scala 1125:25:@1787.4]
  wire [7:0] dat_rsp_data_w_53; // @[NV_NVDLA_CSC_dl_for_check.scala 1125:25:@1787.4]
  wire [7:0] dat_rsp_data_w_54; // @[NV_NVDLA_CSC_dl_for_check.scala 1125:25:@1787.4]
  wire [7:0] dat_rsp_data_w_55; // @[NV_NVDLA_CSC_dl_for_check.scala 1125:25:@1787.4]
  wire [7:0] dat_rsp_data_w_56; // @[NV_NVDLA_CSC_dl_for_check.scala 1125:25:@1787.4]
  wire [7:0] dat_rsp_data_w_57; // @[NV_NVDLA_CSC_dl_for_check.scala 1125:25:@1787.4]
  wire [7:0] dat_rsp_data_w_58; // @[NV_NVDLA_CSC_dl_for_check.scala 1125:25:@1787.4]
  wire [7:0] dat_rsp_data_w_59; // @[NV_NVDLA_CSC_dl_for_check.scala 1125:25:@1787.4]
  wire [7:0] dat_rsp_data_w_60; // @[NV_NVDLA_CSC_dl_for_check.scala 1125:25:@1787.4]
  wire [7:0] dat_rsp_data_w_61; // @[NV_NVDLA_CSC_dl_for_check.scala 1125:25:@1787.4]
  wire [7:0] dat_rsp_data_w_62; // @[NV_NVDLA_CSC_dl_for_check.scala 1125:25:@1787.4]
  wire [7:0] dat_rsp_data_w_63; // @[NV_NVDLA_CSC_dl_for_check.scala 1125:25:@1787.4]
  wire  dat_rsp_mask_val_int8_0; // @[NV_NVDLA_CSC_dl_for_check.scala 1126:97:@1788.4]
  wire  dat_rsp_mask_val_int8_1; // @[NV_NVDLA_CSC_dl_for_check.scala 1126:97:@1789.4]
  wire  dat_rsp_mask_val_int8_2; // @[NV_NVDLA_CSC_dl_for_check.scala 1126:97:@1790.4]
  wire  dat_rsp_mask_val_int8_3; // @[NV_NVDLA_CSC_dl_for_check.scala 1126:97:@1791.4]
  wire  dat_rsp_mask_val_int8_4; // @[NV_NVDLA_CSC_dl_for_check.scala 1126:97:@1792.4]
  wire  dat_rsp_mask_val_int8_5; // @[NV_NVDLA_CSC_dl_for_check.scala 1126:97:@1793.4]
  wire  dat_rsp_mask_val_int8_6; // @[NV_NVDLA_CSC_dl_for_check.scala 1126:97:@1794.4]
  wire  dat_rsp_mask_val_int8_7; // @[NV_NVDLA_CSC_dl_for_check.scala 1126:97:@1795.4]
  wire  dat_rsp_mask_val_int8_8; // @[NV_NVDLA_CSC_dl_for_check.scala 1126:97:@1796.4]
  wire  dat_rsp_mask_val_int8_9; // @[NV_NVDLA_CSC_dl_for_check.scala 1126:97:@1797.4]
  wire  dat_rsp_mask_val_int8_10; // @[NV_NVDLA_CSC_dl_for_check.scala 1126:97:@1798.4]
  wire  dat_rsp_mask_val_int8_11; // @[NV_NVDLA_CSC_dl_for_check.scala 1126:97:@1799.4]
  wire  dat_rsp_mask_val_int8_12; // @[NV_NVDLA_CSC_dl_for_check.scala 1126:97:@1800.4]
  wire  dat_rsp_mask_val_int8_13; // @[NV_NVDLA_CSC_dl_for_check.scala 1126:97:@1801.4]
  wire  dat_rsp_mask_val_int8_14; // @[NV_NVDLA_CSC_dl_for_check.scala 1126:97:@1802.4]
  wire  dat_rsp_mask_val_int8_15; // @[NV_NVDLA_CSC_dl_for_check.scala 1126:97:@1803.4]
  wire  dat_rsp_mask_val_int8_16; // @[NV_NVDLA_CSC_dl_for_check.scala 1126:97:@1804.4]
  wire  dat_rsp_mask_val_int8_17; // @[NV_NVDLA_CSC_dl_for_check.scala 1126:97:@1805.4]
  wire  dat_rsp_mask_val_int8_18; // @[NV_NVDLA_CSC_dl_for_check.scala 1126:97:@1806.4]
  wire  dat_rsp_mask_val_int8_19; // @[NV_NVDLA_CSC_dl_for_check.scala 1126:97:@1807.4]
  wire  dat_rsp_mask_val_int8_20; // @[NV_NVDLA_CSC_dl_for_check.scala 1126:97:@1808.4]
  wire  dat_rsp_mask_val_int8_21; // @[NV_NVDLA_CSC_dl_for_check.scala 1126:97:@1809.4]
  wire  dat_rsp_mask_val_int8_22; // @[NV_NVDLA_CSC_dl_for_check.scala 1126:97:@1810.4]
  wire  dat_rsp_mask_val_int8_23; // @[NV_NVDLA_CSC_dl_for_check.scala 1126:97:@1811.4]
  wire  dat_rsp_mask_val_int8_24; // @[NV_NVDLA_CSC_dl_for_check.scala 1126:97:@1812.4]
  wire  dat_rsp_mask_val_int8_25; // @[NV_NVDLA_CSC_dl_for_check.scala 1126:97:@1813.4]
  wire  dat_rsp_mask_val_int8_26; // @[NV_NVDLA_CSC_dl_for_check.scala 1126:97:@1814.4]
  wire  dat_rsp_mask_val_int8_27; // @[NV_NVDLA_CSC_dl_for_check.scala 1126:97:@1815.4]
  wire  dat_rsp_mask_val_int8_28; // @[NV_NVDLA_CSC_dl_for_check.scala 1126:97:@1816.4]
  wire  dat_rsp_mask_val_int8_29; // @[NV_NVDLA_CSC_dl_for_check.scala 1126:97:@1817.4]
  wire  dat_rsp_mask_val_int8_30; // @[NV_NVDLA_CSC_dl_for_check.scala 1126:97:@1818.4]
  wire  dat_rsp_mask_val_int8_31; // @[NV_NVDLA_CSC_dl_for_check.scala 1126:97:@1819.4]
  wire  dat_rsp_mask_val_int8_32; // @[NV_NVDLA_CSC_dl_for_check.scala 1126:97:@1820.4]
  wire  dat_rsp_mask_val_int8_33; // @[NV_NVDLA_CSC_dl_for_check.scala 1126:97:@1821.4]
  wire  dat_rsp_mask_val_int8_34; // @[NV_NVDLA_CSC_dl_for_check.scala 1126:97:@1822.4]
  wire  dat_rsp_mask_val_int8_35; // @[NV_NVDLA_CSC_dl_for_check.scala 1126:97:@1823.4]
  wire  dat_rsp_mask_val_int8_36; // @[NV_NVDLA_CSC_dl_for_check.scala 1126:97:@1824.4]
  wire  dat_rsp_mask_val_int8_37; // @[NV_NVDLA_CSC_dl_for_check.scala 1126:97:@1825.4]
  wire  dat_rsp_mask_val_int8_38; // @[NV_NVDLA_CSC_dl_for_check.scala 1126:97:@1826.4]
  wire  dat_rsp_mask_val_int8_39; // @[NV_NVDLA_CSC_dl_for_check.scala 1126:97:@1827.4]
  wire  dat_rsp_mask_val_int8_40; // @[NV_NVDLA_CSC_dl_for_check.scala 1126:97:@1828.4]
  wire  dat_rsp_mask_val_int8_41; // @[NV_NVDLA_CSC_dl_for_check.scala 1126:97:@1829.4]
  wire  dat_rsp_mask_val_int8_42; // @[NV_NVDLA_CSC_dl_for_check.scala 1126:97:@1830.4]
  wire  dat_rsp_mask_val_int8_43; // @[NV_NVDLA_CSC_dl_for_check.scala 1126:97:@1831.4]
  wire  dat_rsp_mask_val_int8_44; // @[NV_NVDLA_CSC_dl_for_check.scala 1126:97:@1832.4]
  wire  dat_rsp_mask_val_int8_45; // @[NV_NVDLA_CSC_dl_for_check.scala 1126:97:@1833.4]
  wire  dat_rsp_mask_val_int8_46; // @[NV_NVDLA_CSC_dl_for_check.scala 1126:97:@1834.4]
  wire  dat_rsp_mask_val_int8_47; // @[NV_NVDLA_CSC_dl_for_check.scala 1126:97:@1835.4]
  wire  dat_rsp_mask_val_int8_48; // @[NV_NVDLA_CSC_dl_for_check.scala 1126:97:@1836.4]
  wire  dat_rsp_mask_val_int8_49; // @[NV_NVDLA_CSC_dl_for_check.scala 1126:97:@1837.4]
  wire  dat_rsp_mask_val_int8_50; // @[NV_NVDLA_CSC_dl_for_check.scala 1126:97:@1838.4]
  wire  dat_rsp_mask_val_int8_51; // @[NV_NVDLA_CSC_dl_for_check.scala 1126:97:@1839.4]
  wire  dat_rsp_mask_val_int8_52; // @[NV_NVDLA_CSC_dl_for_check.scala 1126:97:@1840.4]
  wire  dat_rsp_mask_val_int8_53; // @[NV_NVDLA_CSC_dl_for_check.scala 1126:97:@1841.4]
  wire  dat_rsp_mask_val_int8_54; // @[NV_NVDLA_CSC_dl_for_check.scala 1126:97:@1842.4]
  wire  dat_rsp_mask_val_int8_55; // @[NV_NVDLA_CSC_dl_for_check.scala 1126:97:@1843.4]
  wire  dat_rsp_mask_val_int8_56; // @[NV_NVDLA_CSC_dl_for_check.scala 1126:97:@1844.4]
  wire  dat_rsp_mask_val_int8_57; // @[NV_NVDLA_CSC_dl_for_check.scala 1126:97:@1845.4]
  wire  dat_rsp_mask_val_int8_58; // @[NV_NVDLA_CSC_dl_for_check.scala 1126:97:@1846.4]
  wire  dat_rsp_mask_val_int8_59; // @[NV_NVDLA_CSC_dl_for_check.scala 1126:97:@1847.4]
  wire  dat_rsp_mask_val_int8_60; // @[NV_NVDLA_CSC_dl_for_check.scala 1126:97:@1848.4]
  wire  dat_rsp_mask_val_int8_61; // @[NV_NVDLA_CSC_dl_for_check.scala 1126:97:@1849.4]
  wire  dat_rsp_mask_val_int8_62; // @[NV_NVDLA_CSC_dl_for_check.scala 1126:97:@1850.4]
  wire  dat_rsp_mask_val_int8_63; // @[NV_NVDLA_CSC_dl_for_check.scala 1126:97:@1851.4]
  wire  _T_2269; // @[NV_NVDLA_CSC_dl_for_check.scala 1127:80:@1917.4]
  wire  dat_rsp_mask_w_0; // @[NV_NVDLA_CSC_dl_for_check.scala 1127:83:@1918.4]
  wire  _T_2271; // @[NV_NVDLA_CSC_dl_for_check.scala 1127:80:@1919.4]
  wire  dat_rsp_mask_w_1; // @[NV_NVDLA_CSC_dl_for_check.scala 1127:83:@1920.4]
  wire  _T_2273; // @[NV_NVDLA_CSC_dl_for_check.scala 1127:80:@1921.4]
  wire  dat_rsp_mask_w_2; // @[NV_NVDLA_CSC_dl_for_check.scala 1127:83:@1922.4]
  wire  _T_2275; // @[NV_NVDLA_CSC_dl_for_check.scala 1127:80:@1923.4]
  wire  dat_rsp_mask_w_3; // @[NV_NVDLA_CSC_dl_for_check.scala 1127:83:@1924.4]
  wire  _T_2277; // @[NV_NVDLA_CSC_dl_for_check.scala 1127:80:@1925.4]
  wire  dat_rsp_mask_w_4; // @[NV_NVDLA_CSC_dl_for_check.scala 1127:83:@1926.4]
  wire  _T_2279; // @[NV_NVDLA_CSC_dl_for_check.scala 1127:80:@1927.4]
  wire  dat_rsp_mask_w_5; // @[NV_NVDLA_CSC_dl_for_check.scala 1127:83:@1928.4]
  wire  _T_2281; // @[NV_NVDLA_CSC_dl_for_check.scala 1127:80:@1929.4]
  wire  dat_rsp_mask_w_6; // @[NV_NVDLA_CSC_dl_for_check.scala 1127:83:@1930.4]
  wire  _T_2283; // @[NV_NVDLA_CSC_dl_for_check.scala 1127:80:@1931.4]
  wire  dat_rsp_mask_w_7; // @[NV_NVDLA_CSC_dl_for_check.scala 1127:83:@1932.4]
  wire  _T_2285; // @[NV_NVDLA_CSC_dl_for_check.scala 1127:80:@1933.4]
  wire  dat_rsp_mask_w_8; // @[NV_NVDLA_CSC_dl_for_check.scala 1127:83:@1934.4]
  wire  _T_2287; // @[NV_NVDLA_CSC_dl_for_check.scala 1127:80:@1935.4]
  wire  dat_rsp_mask_w_9; // @[NV_NVDLA_CSC_dl_for_check.scala 1127:83:@1936.4]
  wire  _T_2289; // @[NV_NVDLA_CSC_dl_for_check.scala 1127:80:@1937.4]
  wire  dat_rsp_mask_w_10; // @[NV_NVDLA_CSC_dl_for_check.scala 1127:83:@1938.4]
  wire  _T_2291; // @[NV_NVDLA_CSC_dl_for_check.scala 1127:80:@1939.4]
  wire  dat_rsp_mask_w_11; // @[NV_NVDLA_CSC_dl_for_check.scala 1127:83:@1940.4]
  wire  _T_2293; // @[NV_NVDLA_CSC_dl_for_check.scala 1127:80:@1941.4]
  wire  dat_rsp_mask_w_12; // @[NV_NVDLA_CSC_dl_for_check.scala 1127:83:@1942.4]
  wire  _T_2295; // @[NV_NVDLA_CSC_dl_for_check.scala 1127:80:@1943.4]
  wire  dat_rsp_mask_w_13; // @[NV_NVDLA_CSC_dl_for_check.scala 1127:83:@1944.4]
  wire  _T_2297; // @[NV_NVDLA_CSC_dl_for_check.scala 1127:80:@1945.4]
  wire  dat_rsp_mask_w_14; // @[NV_NVDLA_CSC_dl_for_check.scala 1127:83:@1946.4]
  wire  _T_2299; // @[NV_NVDLA_CSC_dl_for_check.scala 1127:80:@1947.4]
  wire  dat_rsp_mask_w_15; // @[NV_NVDLA_CSC_dl_for_check.scala 1127:83:@1948.4]
  wire  _T_2301; // @[NV_NVDLA_CSC_dl_for_check.scala 1127:80:@1949.4]
  wire  dat_rsp_mask_w_16; // @[NV_NVDLA_CSC_dl_for_check.scala 1127:83:@1950.4]
  wire  _T_2303; // @[NV_NVDLA_CSC_dl_for_check.scala 1127:80:@1951.4]
  wire  dat_rsp_mask_w_17; // @[NV_NVDLA_CSC_dl_for_check.scala 1127:83:@1952.4]
  wire  _T_2305; // @[NV_NVDLA_CSC_dl_for_check.scala 1127:80:@1953.4]
  wire  dat_rsp_mask_w_18; // @[NV_NVDLA_CSC_dl_for_check.scala 1127:83:@1954.4]
  wire  _T_2307; // @[NV_NVDLA_CSC_dl_for_check.scala 1127:80:@1955.4]
  wire  dat_rsp_mask_w_19; // @[NV_NVDLA_CSC_dl_for_check.scala 1127:83:@1956.4]
  wire  _T_2309; // @[NV_NVDLA_CSC_dl_for_check.scala 1127:80:@1957.4]
  wire  dat_rsp_mask_w_20; // @[NV_NVDLA_CSC_dl_for_check.scala 1127:83:@1958.4]
  wire  _T_2311; // @[NV_NVDLA_CSC_dl_for_check.scala 1127:80:@1959.4]
  wire  dat_rsp_mask_w_21; // @[NV_NVDLA_CSC_dl_for_check.scala 1127:83:@1960.4]
  wire  _T_2313; // @[NV_NVDLA_CSC_dl_for_check.scala 1127:80:@1961.4]
  wire  dat_rsp_mask_w_22; // @[NV_NVDLA_CSC_dl_for_check.scala 1127:83:@1962.4]
  wire  _T_2315; // @[NV_NVDLA_CSC_dl_for_check.scala 1127:80:@1963.4]
  wire  dat_rsp_mask_w_23; // @[NV_NVDLA_CSC_dl_for_check.scala 1127:83:@1964.4]
  wire  _T_2317; // @[NV_NVDLA_CSC_dl_for_check.scala 1127:80:@1965.4]
  wire  dat_rsp_mask_w_24; // @[NV_NVDLA_CSC_dl_for_check.scala 1127:83:@1966.4]
  wire  _T_2319; // @[NV_NVDLA_CSC_dl_for_check.scala 1127:80:@1967.4]
  wire  dat_rsp_mask_w_25; // @[NV_NVDLA_CSC_dl_for_check.scala 1127:83:@1968.4]
  wire  _T_2321; // @[NV_NVDLA_CSC_dl_for_check.scala 1127:80:@1969.4]
  wire  dat_rsp_mask_w_26; // @[NV_NVDLA_CSC_dl_for_check.scala 1127:83:@1970.4]
  wire  _T_2323; // @[NV_NVDLA_CSC_dl_for_check.scala 1127:80:@1971.4]
  wire  dat_rsp_mask_w_27; // @[NV_NVDLA_CSC_dl_for_check.scala 1127:83:@1972.4]
  wire  _T_2325; // @[NV_NVDLA_CSC_dl_for_check.scala 1127:80:@1973.4]
  wire  dat_rsp_mask_w_28; // @[NV_NVDLA_CSC_dl_for_check.scala 1127:83:@1974.4]
  wire  _T_2327; // @[NV_NVDLA_CSC_dl_for_check.scala 1127:80:@1975.4]
  wire  dat_rsp_mask_w_29; // @[NV_NVDLA_CSC_dl_for_check.scala 1127:83:@1976.4]
  wire  _T_2329; // @[NV_NVDLA_CSC_dl_for_check.scala 1127:80:@1977.4]
  wire  dat_rsp_mask_w_30; // @[NV_NVDLA_CSC_dl_for_check.scala 1127:83:@1978.4]
  wire  _T_2331; // @[NV_NVDLA_CSC_dl_for_check.scala 1127:80:@1979.4]
  wire  dat_rsp_mask_w_31; // @[NV_NVDLA_CSC_dl_for_check.scala 1127:83:@1980.4]
  wire  _T_2333; // @[NV_NVDLA_CSC_dl_for_check.scala 1127:80:@1981.4]
  wire  dat_rsp_mask_w_32; // @[NV_NVDLA_CSC_dl_for_check.scala 1127:83:@1982.4]
  wire  _T_2335; // @[NV_NVDLA_CSC_dl_for_check.scala 1127:80:@1983.4]
  wire  dat_rsp_mask_w_33; // @[NV_NVDLA_CSC_dl_for_check.scala 1127:83:@1984.4]
  wire  _T_2337; // @[NV_NVDLA_CSC_dl_for_check.scala 1127:80:@1985.4]
  wire  dat_rsp_mask_w_34; // @[NV_NVDLA_CSC_dl_for_check.scala 1127:83:@1986.4]
  wire  _T_2339; // @[NV_NVDLA_CSC_dl_for_check.scala 1127:80:@1987.4]
  wire  dat_rsp_mask_w_35; // @[NV_NVDLA_CSC_dl_for_check.scala 1127:83:@1988.4]
  wire  _T_2341; // @[NV_NVDLA_CSC_dl_for_check.scala 1127:80:@1989.4]
  wire  dat_rsp_mask_w_36; // @[NV_NVDLA_CSC_dl_for_check.scala 1127:83:@1990.4]
  wire  _T_2343; // @[NV_NVDLA_CSC_dl_for_check.scala 1127:80:@1991.4]
  wire  dat_rsp_mask_w_37; // @[NV_NVDLA_CSC_dl_for_check.scala 1127:83:@1992.4]
  wire  _T_2345; // @[NV_NVDLA_CSC_dl_for_check.scala 1127:80:@1993.4]
  wire  dat_rsp_mask_w_38; // @[NV_NVDLA_CSC_dl_for_check.scala 1127:83:@1994.4]
  wire  _T_2347; // @[NV_NVDLA_CSC_dl_for_check.scala 1127:80:@1995.4]
  wire  dat_rsp_mask_w_39; // @[NV_NVDLA_CSC_dl_for_check.scala 1127:83:@1996.4]
  wire  _T_2349; // @[NV_NVDLA_CSC_dl_for_check.scala 1127:80:@1997.4]
  wire  dat_rsp_mask_w_40; // @[NV_NVDLA_CSC_dl_for_check.scala 1127:83:@1998.4]
  wire  _T_2351; // @[NV_NVDLA_CSC_dl_for_check.scala 1127:80:@1999.4]
  wire  dat_rsp_mask_w_41; // @[NV_NVDLA_CSC_dl_for_check.scala 1127:83:@2000.4]
  wire  _T_2353; // @[NV_NVDLA_CSC_dl_for_check.scala 1127:80:@2001.4]
  wire  dat_rsp_mask_w_42; // @[NV_NVDLA_CSC_dl_for_check.scala 1127:83:@2002.4]
  wire  _T_2355; // @[NV_NVDLA_CSC_dl_for_check.scala 1127:80:@2003.4]
  wire  dat_rsp_mask_w_43; // @[NV_NVDLA_CSC_dl_for_check.scala 1127:83:@2004.4]
  wire  _T_2357; // @[NV_NVDLA_CSC_dl_for_check.scala 1127:80:@2005.4]
  wire  dat_rsp_mask_w_44; // @[NV_NVDLA_CSC_dl_for_check.scala 1127:83:@2006.4]
  wire  _T_2359; // @[NV_NVDLA_CSC_dl_for_check.scala 1127:80:@2007.4]
  wire  dat_rsp_mask_w_45; // @[NV_NVDLA_CSC_dl_for_check.scala 1127:83:@2008.4]
  wire  _T_2361; // @[NV_NVDLA_CSC_dl_for_check.scala 1127:80:@2009.4]
  wire  dat_rsp_mask_w_46; // @[NV_NVDLA_CSC_dl_for_check.scala 1127:83:@2010.4]
  wire  _T_2363; // @[NV_NVDLA_CSC_dl_for_check.scala 1127:80:@2011.4]
  wire  dat_rsp_mask_w_47; // @[NV_NVDLA_CSC_dl_for_check.scala 1127:83:@2012.4]
  wire  _T_2365; // @[NV_NVDLA_CSC_dl_for_check.scala 1127:80:@2013.4]
  wire  dat_rsp_mask_w_48; // @[NV_NVDLA_CSC_dl_for_check.scala 1127:83:@2014.4]
  wire  _T_2367; // @[NV_NVDLA_CSC_dl_for_check.scala 1127:80:@2015.4]
  wire  dat_rsp_mask_w_49; // @[NV_NVDLA_CSC_dl_for_check.scala 1127:83:@2016.4]
  wire  _T_2369; // @[NV_NVDLA_CSC_dl_for_check.scala 1127:80:@2017.4]
  wire  dat_rsp_mask_w_50; // @[NV_NVDLA_CSC_dl_for_check.scala 1127:83:@2018.4]
  wire  _T_2371; // @[NV_NVDLA_CSC_dl_for_check.scala 1127:80:@2019.4]
  wire  dat_rsp_mask_w_51; // @[NV_NVDLA_CSC_dl_for_check.scala 1127:83:@2020.4]
  wire  _T_2373; // @[NV_NVDLA_CSC_dl_for_check.scala 1127:80:@2021.4]
  wire  dat_rsp_mask_w_52; // @[NV_NVDLA_CSC_dl_for_check.scala 1127:83:@2022.4]
  wire  _T_2375; // @[NV_NVDLA_CSC_dl_for_check.scala 1127:80:@2023.4]
  wire  dat_rsp_mask_w_53; // @[NV_NVDLA_CSC_dl_for_check.scala 1127:83:@2024.4]
  wire  _T_2377; // @[NV_NVDLA_CSC_dl_for_check.scala 1127:80:@2025.4]
  wire  dat_rsp_mask_w_54; // @[NV_NVDLA_CSC_dl_for_check.scala 1127:83:@2026.4]
  wire  _T_2379; // @[NV_NVDLA_CSC_dl_for_check.scala 1127:80:@2027.4]
  wire  dat_rsp_mask_w_55; // @[NV_NVDLA_CSC_dl_for_check.scala 1127:83:@2028.4]
  wire  _T_2381; // @[NV_NVDLA_CSC_dl_for_check.scala 1127:80:@2029.4]
  wire  dat_rsp_mask_w_56; // @[NV_NVDLA_CSC_dl_for_check.scala 1127:83:@2030.4]
  wire  _T_2383; // @[NV_NVDLA_CSC_dl_for_check.scala 1127:80:@2031.4]
  wire  dat_rsp_mask_w_57; // @[NV_NVDLA_CSC_dl_for_check.scala 1127:83:@2032.4]
  wire  _T_2385; // @[NV_NVDLA_CSC_dl_for_check.scala 1127:80:@2033.4]
  wire  dat_rsp_mask_w_58; // @[NV_NVDLA_CSC_dl_for_check.scala 1127:83:@2034.4]
  wire  _T_2387; // @[NV_NVDLA_CSC_dl_for_check.scala 1127:80:@2035.4]
  wire  dat_rsp_mask_w_59; // @[NV_NVDLA_CSC_dl_for_check.scala 1127:83:@2036.4]
  wire  _T_2389; // @[NV_NVDLA_CSC_dl_for_check.scala 1127:80:@2037.4]
  wire  dat_rsp_mask_w_60; // @[NV_NVDLA_CSC_dl_for_check.scala 1127:83:@2038.4]
  wire  _T_2391; // @[NV_NVDLA_CSC_dl_for_check.scala 1127:80:@2039.4]
  wire  dat_rsp_mask_w_61; // @[NV_NVDLA_CSC_dl_for_check.scala 1127:83:@2040.4]
  wire  _T_2393; // @[NV_NVDLA_CSC_dl_for_check.scala 1127:80:@2041.4]
  wire  dat_rsp_mask_w_62; // @[NV_NVDLA_CSC_dl_for_check.scala 1127:83:@2042.4]
  wire  _T_2395; // @[NV_NVDLA_CSC_dl_for_check.scala 1127:80:@2043.4]
  wire  dat_rsp_mask_w_63; // @[NV_NVDLA_CSC_dl_for_check.scala 1127:83:@2044.4]
  wire  _T_2466; // @[NV_NVDLA_CSC_dl_for_check.scala 1128:54:@2110.4]
  wire  _T_2467; // @[NV_NVDLA_CSC_dl_for_check.scala 1128:39:@2111.4]
  wire  dat_rsp_p0_vld_w; // @[NV_NVDLA_CSC_dl_for_check.scala 1128:37:@2112.4]
  reg  dat_out_pvld; // @[NV_NVDLA_CSC_dl_for_check.scala 1133:27:@2113.4]
  reg [31:0] _RAND_192;
  reg [8:0] dat_out_flag; // @[NV_NVDLA_CSC_dl_for_check.scala 1134:27:@2114.4]
  reg [31:0] _RAND_193;
  reg  dat_out_bypass_mask_0; // @[NV_NVDLA_CSC_dl_for_check.scala 1135:34:@2180.4]
  reg [31:0] _RAND_194;
  reg  dat_out_bypass_mask_1; // @[NV_NVDLA_CSC_dl_for_check.scala 1135:34:@2180.4]
  reg [31:0] _RAND_195;
  reg  dat_out_bypass_mask_2; // @[NV_NVDLA_CSC_dl_for_check.scala 1135:34:@2180.4]
  reg [31:0] _RAND_196;
  reg  dat_out_bypass_mask_3; // @[NV_NVDLA_CSC_dl_for_check.scala 1135:34:@2180.4]
  reg [31:0] _RAND_197;
  reg  dat_out_bypass_mask_4; // @[NV_NVDLA_CSC_dl_for_check.scala 1135:34:@2180.4]
  reg [31:0] _RAND_198;
  reg  dat_out_bypass_mask_5; // @[NV_NVDLA_CSC_dl_for_check.scala 1135:34:@2180.4]
  reg [31:0] _RAND_199;
  reg  dat_out_bypass_mask_6; // @[NV_NVDLA_CSC_dl_for_check.scala 1135:34:@2180.4]
  reg [31:0] _RAND_200;
  reg  dat_out_bypass_mask_7; // @[NV_NVDLA_CSC_dl_for_check.scala 1135:34:@2180.4]
  reg [31:0] _RAND_201;
  reg  dat_out_bypass_mask_8; // @[NV_NVDLA_CSC_dl_for_check.scala 1135:34:@2180.4]
  reg [31:0] _RAND_202;
  reg  dat_out_bypass_mask_9; // @[NV_NVDLA_CSC_dl_for_check.scala 1135:34:@2180.4]
  reg [31:0] _RAND_203;
  reg  dat_out_bypass_mask_10; // @[NV_NVDLA_CSC_dl_for_check.scala 1135:34:@2180.4]
  reg [31:0] _RAND_204;
  reg  dat_out_bypass_mask_11; // @[NV_NVDLA_CSC_dl_for_check.scala 1135:34:@2180.4]
  reg [31:0] _RAND_205;
  reg  dat_out_bypass_mask_12; // @[NV_NVDLA_CSC_dl_for_check.scala 1135:34:@2180.4]
  reg [31:0] _RAND_206;
  reg  dat_out_bypass_mask_13; // @[NV_NVDLA_CSC_dl_for_check.scala 1135:34:@2180.4]
  reg [31:0] _RAND_207;
  reg  dat_out_bypass_mask_14; // @[NV_NVDLA_CSC_dl_for_check.scala 1135:34:@2180.4]
  reg [31:0] _RAND_208;
  reg  dat_out_bypass_mask_15; // @[NV_NVDLA_CSC_dl_for_check.scala 1135:34:@2180.4]
  reg [31:0] _RAND_209;
  reg  dat_out_bypass_mask_16; // @[NV_NVDLA_CSC_dl_for_check.scala 1135:34:@2180.4]
  reg [31:0] _RAND_210;
  reg  dat_out_bypass_mask_17; // @[NV_NVDLA_CSC_dl_for_check.scala 1135:34:@2180.4]
  reg [31:0] _RAND_211;
  reg  dat_out_bypass_mask_18; // @[NV_NVDLA_CSC_dl_for_check.scala 1135:34:@2180.4]
  reg [31:0] _RAND_212;
  reg  dat_out_bypass_mask_19; // @[NV_NVDLA_CSC_dl_for_check.scala 1135:34:@2180.4]
  reg [31:0] _RAND_213;
  reg  dat_out_bypass_mask_20; // @[NV_NVDLA_CSC_dl_for_check.scala 1135:34:@2180.4]
  reg [31:0] _RAND_214;
  reg  dat_out_bypass_mask_21; // @[NV_NVDLA_CSC_dl_for_check.scala 1135:34:@2180.4]
  reg [31:0] _RAND_215;
  reg  dat_out_bypass_mask_22; // @[NV_NVDLA_CSC_dl_for_check.scala 1135:34:@2180.4]
  reg [31:0] _RAND_216;
  reg  dat_out_bypass_mask_23; // @[NV_NVDLA_CSC_dl_for_check.scala 1135:34:@2180.4]
  reg [31:0] _RAND_217;
  reg  dat_out_bypass_mask_24; // @[NV_NVDLA_CSC_dl_for_check.scala 1135:34:@2180.4]
  reg [31:0] _RAND_218;
  reg  dat_out_bypass_mask_25; // @[NV_NVDLA_CSC_dl_for_check.scala 1135:34:@2180.4]
  reg [31:0] _RAND_219;
  reg  dat_out_bypass_mask_26; // @[NV_NVDLA_CSC_dl_for_check.scala 1135:34:@2180.4]
  reg [31:0] _RAND_220;
  reg  dat_out_bypass_mask_27; // @[NV_NVDLA_CSC_dl_for_check.scala 1135:34:@2180.4]
  reg [31:0] _RAND_221;
  reg  dat_out_bypass_mask_28; // @[NV_NVDLA_CSC_dl_for_check.scala 1135:34:@2180.4]
  reg [31:0] _RAND_222;
  reg  dat_out_bypass_mask_29; // @[NV_NVDLA_CSC_dl_for_check.scala 1135:34:@2180.4]
  reg [31:0] _RAND_223;
  reg  dat_out_bypass_mask_30; // @[NV_NVDLA_CSC_dl_for_check.scala 1135:34:@2180.4]
  reg [31:0] _RAND_224;
  reg  dat_out_bypass_mask_31; // @[NV_NVDLA_CSC_dl_for_check.scala 1135:34:@2180.4]
  reg [31:0] _RAND_225;
  reg  dat_out_bypass_mask_32; // @[NV_NVDLA_CSC_dl_for_check.scala 1135:34:@2180.4]
  reg [31:0] _RAND_226;
  reg  dat_out_bypass_mask_33; // @[NV_NVDLA_CSC_dl_for_check.scala 1135:34:@2180.4]
  reg [31:0] _RAND_227;
  reg  dat_out_bypass_mask_34; // @[NV_NVDLA_CSC_dl_for_check.scala 1135:34:@2180.4]
  reg [31:0] _RAND_228;
  reg  dat_out_bypass_mask_35; // @[NV_NVDLA_CSC_dl_for_check.scala 1135:34:@2180.4]
  reg [31:0] _RAND_229;
  reg  dat_out_bypass_mask_36; // @[NV_NVDLA_CSC_dl_for_check.scala 1135:34:@2180.4]
  reg [31:0] _RAND_230;
  reg  dat_out_bypass_mask_37; // @[NV_NVDLA_CSC_dl_for_check.scala 1135:34:@2180.4]
  reg [31:0] _RAND_231;
  reg  dat_out_bypass_mask_38; // @[NV_NVDLA_CSC_dl_for_check.scala 1135:34:@2180.4]
  reg [31:0] _RAND_232;
  reg  dat_out_bypass_mask_39; // @[NV_NVDLA_CSC_dl_for_check.scala 1135:34:@2180.4]
  reg [31:0] _RAND_233;
  reg  dat_out_bypass_mask_40; // @[NV_NVDLA_CSC_dl_for_check.scala 1135:34:@2180.4]
  reg [31:0] _RAND_234;
  reg  dat_out_bypass_mask_41; // @[NV_NVDLA_CSC_dl_for_check.scala 1135:34:@2180.4]
  reg [31:0] _RAND_235;
  reg  dat_out_bypass_mask_42; // @[NV_NVDLA_CSC_dl_for_check.scala 1135:34:@2180.4]
  reg [31:0] _RAND_236;
  reg  dat_out_bypass_mask_43; // @[NV_NVDLA_CSC_dl_for_check.scala 1135:34:@2180.4]
  reg [31:0] _RAND_237;
  reg  dat_out_bypass_mask_44; // @[NV_NVDLA_CSC_dl_for_check.scala 1135:34:@2180.4]
  reg [31:0] _RAND_238;
  reg  dat_out_bypass_mask_45; // @[NV_NVDLA_CSC_dl_for_check.scala 1135:34:@2180.4]
  reg [31:0] _RAND_239;
  reg  dat_out_bypass_mask_46; // @[NV_NVDLA_CSC_dl_for_check.scala 1135:34:@2180.4]
  reg [31:0] _RAND_240;
  reg  dat_out_bypass_mask_47; // @[NV_NVDLA_CSC_dl_for_check.scala 1135:34:@2180.4]
  reg [31:0] _RAND_241;
  reg  dat_out_bypass_mask_48; // @[NV_NVDLA_CSC_dl_for_check.scala 1135:34:@2180.4]
  reg [31:0] _RAND_242;
  reg  dat_out_bypass_mask_49; // @[NV_NVDLA_CSC_dl_for_check.scala 1135:34:@2180.4]
  reg [31:0] _RAND_243;
  reg  dat_out_bypass_mask_50; // @[NV_NVDLA_CSC_dl_for_check.scala 1135:34:@2180.4]
  reg [31:0] _RAND_244;
  reg  dat_out_bypass_mask_51; // @[NV_NVDLA_CSC_dl_for_check.scala 1135:34:@2180.4]
  reg [31:0] _RAND_245;
  reg  dat_out_bypass_mask_52; // @[NV_NVDLA_CSC_dl_for_check.scala 1135:34:@2180.4]
  reg [31:0] _RAND_246;
  reg  dat_out_bypass_mask_53; // @[NV_NVDLA_CSC_dl_for_check.scala 1135:34:@2180.4]
  reg [31:0] _RAND_247;
  reg  dat_out_bypass_mask_54; // @[NV_NVDLA_CSC_dl_for_check.scala 1135:34:@2180.4]
  reg [31:0] _RAND_248;
  reg  dat_out_bypass_mask_55; // @[NV_NVDLA_CSC_dl_for_check.scala 1135:34:@2180.4]
  reg [31:0] _RAND_249;
  reg  dat_out_bypass_mask_56; // @[NV_NVDLA_CSC_dl_for_check.scala 1135:34:@2180.4]
  reg [31:0] _RAND_250;
  reg  dat_out_bypass_mask_57; // @[NV_NVDLA_CSC_dl_for_check.scala 1135:34:@2180.4]
  reg [31:0] _RAND_251;
  reg  dat_out_bypass_mask_58; // @[NV_NVDLA_CSC_dl_for_check.scala 1135:34:@2180.4]
  reg [31:0] _RAND_252;
  reg  dat_out_bypass_mask_59; // @[NV_NVDLA_CSC_dl_for_check.scala 1135:34:@2180.4]
  reg [31:0] _RAND_253;
  reg  dat_out_bypass_mask_60; // @[NV_NVDLA_CSC_dl_for_check.scala 1135:34:@2180.4]
  reg [31:0] _RAND_254;
  reg  dat_out_bypass_mask_61; // @[NV_NVDLA_CSC_dl_for_check.scala 1135:34:@2180.4]
  reg [31:0] _RAND_255;
  reg  dat_out_bypass_mask_62; // @[NV_NVDLA_CSC_dl_for_check.scala 1135:34:@2180.4]
  reg [31:0] _RAND_256;
  reg  dat_out_bypass_mask_63; // @[NV_NVDLA_CSC_dl_for_check.scala 1135:34:@2180.4]
  reg [31:0] _RAND_257;
  reg [7:0] dat_out_bypass_data_0; // @[NV_NVDLA_CSC_dl_for_check.scala 1136:30:@2181.4]
  reg [31:0] _RAND_258;
  reg [7:0] dat_out_bypass_data_1; // @[NV_NVDLA_CSC_dl_for_check.scala 1136:30:@2181.4]
  reg [31:0] _RAND_259;
  reg [7:0] dat_out_bypass_data_2; // @[NV_NVDLA_CSC_dl_for_check.scala 1136:30:@2181.4]
  reg [31:0] _RAND_260;
  reg [7:0] dat_out_bypass_data_3; // @[NV_NVDLA_CSC_dl_for_check.scala 1136:30:@2181.4]
  reg [31:0] _RAND_261;
  reg [7:0] dat_out_bypass_data_4; // @[NV_NVDLA_CSC_dl_for_check.scala 1136:30:@2181.4]
  reg [31:0] _RAND_262;
  reg [7:0] dat_out_bypass_data_5; // @[NV_NVDLA_CSC_dl_for_check.scala 1136:30:@2181.4]
  reg [31:0] _RAND_263;
  reg [7:0] dat_out_bypass_data_6; // @[NV_NVDLA_CSC_dl_for_check.scala 1136:30:@2181.4]
  reg [31:0] _RAND_264;
  reg [7:0] dat_out_bypass_data_7; // @[NV_NVDLA_CSC_dl_for_check.scala 1136:30:@2181.4]
  reg [31:0] _RAND_265;
  reg [7:0] dat_out_bypass_data_8; // @[NV_NVDLA_CSC_dl_for_check.scala 1136:30:@2181.4]
  reg [31:0] _RAND_266;
  reg [7:0] dat_out_bypass_data_9; // @[NV_NVDLA_CSC_dl_for_check.scala 1136:30:@2181.4]
  reg [31:0] _RAND_267;
  reg [7:0] dat_out_bypass_data_10; // @[NV_NVDLA_CSC_dl_for_check.scala 1136:30:@2181.4]
  reg [31:0] _RAND_268;
  reg [7:0] dat_out_bypass_data_11; // @[NV_NVDLA_CSC_dl_for_check.scala 1136:30:@2181.4]
  reg [31:0] _RAND_269;
  reg [7:0] dat_out_bypass_data_12; // @[NV_NVDLA_CSC_dl_for_check.scala 1136:30:@2181.4]
  reg [31:0] _RAND_270;
  reg [7:0] dat_out_bypass_data_13; // @[NV_NVDLA_CSC_dl_for_check.scala 1136:30:@2181.4]
  reg [31:0] _RAND_271;
  reg [7:0] dat_out_bypass_data_14; // @[NV_NVDLA_CSC_dl_for_check.scala 1136:30:@2181.4]
  reg [31:0] _RAND_272;
  reg [7:0] dat_out_bypass_data_15; // @[NV_NVDLA_CSC_dl_for_check.scala 1136:30:@2181.4]
  reg [31:0] _RAND_273;
  reg [7:0] dat_out_bypass_data_16; // @[NV_NVDLA_CSC_dl_for_check.scala 1136:30:@2181.4]
  reg [31:0] _RAND_274;
  reg [7:0] dat_out_bypass_data_17; // @[NV_NVDLA_CSC_dl_for_check.scala 1136:30:@2181.4]
  reg [31:0] _RAND_275;
  reg [7:0] dat_out_bypass_data_18; // @[NV_NVDLA_CSC_dl_for_check.scala 1136:30:@2181.4]
  reg [31:0] _RAND_276;
  reg [7:0] dat_out_bypass_data_19; // @[NV_NVDLA_CSC_dl_for_check.scala 1136:30:@2181.4]
  reg [31:0] _RAND_277;
  reg [7:0] dat_out_bypass_data_20; // @[NV_NVDLA_CSC_dl_for_check.scala 1136:30:@2181.4]
  reg [31:0] _RAND_278;
  reg [7:0] dat_out_bypass_data_21; // @[NV_NVDLA_CSC_dl_for_check.scala 1136:30:@2181.4]
  reg [31:0] _RAND_279;
  reg [7:0] dat_out_bypass_data_22; // @[NV_NVDLA_CSC_dl_for_check.scala 1136:30:@2181.4]
  reg [31:0] _RAND_280;
  reg [7:0] dat_out_bypass_data_23; // @[NV_NVDLA_CSC_dl_for_check.scala 1136:30:@2181.4]
  reg [31:0] _RAND_281;
  reg [7:0] dat_out_bypass_data_24; // @[NV_NVDLA_CSC_dl_for_check.scala 1136:30:@2181.4]
  reg [31:0] _RAND_282;
  reg [7:0] dat_out_bypass_data_25; // @[NV_NVDLA_CSC_dl_for_check.scala 1136:30:@2181.4]
  reg [31:0] _RAND_283;
  reg [7:0] dat_out_bypass_data_26; // @[NV_NVDLA_CSC_dl_for_check.scala 1136:30:@2181.4]
  reg [31:0] _RAND_284;
  reg [7:0] dat_out_bypass_data_27; // @[NV_NVDLA_CSC_dl_for_check.scala 1136:30:@2181.4]
  reg [31:0] _RAND_285;
  reg [7:0] dat_out_bypass_data_28; // @[NV_NVDLA_CSC_dl_for_check.scala 1136:30:@2181.4]
  reg [31:0] _RAND_286;
  reg [7:0] dat_out_bypass_data_29; // @[NV_NVDLA_CSC_dl_for_check.scala 1136:30:@2181.4]
  reg [31:0] _RAND_287;
  reg [7:0] dat_out_bypass_data_30; // @[NV_NVDLA_CSC_dl_for_check.scala 1136:30:@2181.4]
  reg [31:0] _RAND_288;
  reg [7:0] dat_out_bypass_data_31; // @[NV_NVDLA_CSC_dl_for_check.scala 1136:30:@2181.4]
  reg [31:0] _RAND_289;
  reg [7:0] dat_out_bypass_data_32; // @[NV_NVDLA_CSC_dl_for_check.scala 1136:30:@2181.4]
  reg [31:0] _RAND_290;
  reg [7:0] dat_out_bypass_data_33; // @[NV_NVDLA_CSC_dl_for_check.scala 1136:30:@2181.4]
  reg [31:0] _RAND_291;
  reg [7:0] dat_out_bypass_data_34; // @[NV_NVDLA_CSC_dl_for_check.scala 1136:30:@2181.4]
  reg [31:0] _RAND_292;
  reg [7:0] dat_out_bypass_data_35; // @[NV_NVDLA_CSC_dl_for_check.scala 1136:30:@2181.4]
  reg [31:0] _RAND_293;
  reg [7:0] dat_out_bypass_data_36; // @[NV_NVDLA_CSC_dl_for_check.scala 1136:30:@2181.4]
  reg [31:0] _RAND_294;
  reg [7:0] dat_out_bypass_data_37; // @[NV_NVDLA_CSC_dl_for_check.scala 1136:30:@2181.4]
  reg [31:0] _RAND_295;
  reg [7:0] dat_out_bypass_data_38; // @[NV_NVDLA_CSC_dl_for_check.scala 1136:30:@2181.4]
  reg [31:0] _RAND_296;
  reg [7:0] dat_out_bypass_data_39; // @[NV_NVDLA_CSC_dl_for_check.scala 1136:30:@2181.4]
  reg [31:0] _RAND_297;
  reg [7:0] dat_out_bypass_data_40; // @[NV_NVDLA_CSC_dl_for_check.scala 1136:30:@2181.4]
  reg [31:0] _RAND_298;
  reg [7:0] dat_out_bypass_data_41; // @[NV_NVDLA_CSC_dl_for_check.scala 1136:30:@2181.4]
  reg [31:0] _RAND_299;
  reg [7:0] dat_out_bypass_data_42; // @[NV_NVDLA_CSC_dl_for_check.scala 1136:30:@2181.4]
  reg [31:0] _RAND_300;
  reg [7:0] dat_out_bypass_data_43; // @[NV_NVDLA_CSC_dl_for_check.scala 1136:30:@2181.4]
  reg [31:0] _RAND_301;
  reg [7:0] dat_out_bypass_data_44; // @[NV_NVDLA_CSC_dl_for_check.scala 1136:30:@2181.4]
  reg [31:0] _RAND_302;
  reg [7:0] dat_out_bypass_data_45; // @[NV_NVDLA_CSC_dl_for_check.scala 1136:30:@2181.4]
  reg [31:0] _RAND_303;
  reg [7:0] dat_out_bypass_data_46; // @[NV_NVDLA_CSC_dl_for_check.scala 1136:30:@2181.4]
  reg [31:0] _RAND_304;
  reg [7:0] dat_out_bypass_data_47; // @[NV_NVDLA_CSC_dl_for_check.scala 1136:30:@2181.4]
  reg [31:0] _RAND_305;
  reg [7:0] dat_out_bypass_data_48; // @[NV_NVDLA_CSC_dl_for_check.scala 1136:30:@2181.4]
  reg [31:0] _RAND_306;
  reg [7:0] dat_out_bypass_data_49; // @[NV_NVDLA_CSC_dl_for_check.scala 1136:30:@2181.4]
  reg [31:0] _RAND_307;
  reg [7:0] dat_out_bypass_data_50; // @[NV_NVDLA_CSC_dl_for_check.scala 1136:30:@2181.4]
  reg [31:0] _RAND_308;
  reg [7:0] dat_out_bypass_data_51; // @[NV_NVDLA_CSC_dl_for_check.scala 1136:30:@2181.4]
  reg [31:0] _RAND_309;
  reg [7:0] dat_out_bypass_data_52; // @[NV_NVDLA_CSC_dl_for_check.scala 1136:30:@2181.4]
  reg [31:0] _RAND_310;
  reg [7:0] dat_out_bypass_data_53; // @[NV_NVDLA_CSC_dl_for_check.scala 1136:30:@2181.4]
  reg [31:0] _RAND_311;
  reg [7:0] dat_out_bypass_data_54; // @[NV_NVDLA_CSC_dl_for_check.scala 1136:30:@2181.4]
  reg [31:0] _RAND_312;
  reg [7:0] dat_out_bypass_data_55; // @[NV_NVDLA_CSC_dl_for_check.scala 1136:30:@2181.4]
  reg [31:0] _RAND_313;
  reg [7:0] dat_out_bypass_data_56; // @[NV_NVDLA_CSC_dl_for_check.scala 1136:30:@2181.4]
  reg [31:0] _RAND_314;
  reg [7:0] dat_out_bypass_data_57; // @[NV_NVDLA_CSC_dl_for_check.scala 1136:30:@2181.4]
  reg [31:0] _RAND_315;
  reg [7:0] dat_out_bypass_data_58; // @[NV_NVDLA_CSC_dl_for_check.scala 1136:30:@2181.4]
  reg [31:0] _RAND_316;
  reg [7:0] dat_out_bypass_data_59; // @[NV_NVDLA_CSC_dl_for_check.scala 1136:30:@2181.4]
  reg [31:0] _RAND_317;
  reg [7:0] dat_out_bypass_data_60; // @[NV_NVDLA_CSC_dl_for_check.scala 1136:30:@2181.4]
  reg [31:0] _RAND_318;
  reg [7:0] dat_out_bypass_data_61; // @[NV_NVDLA_CSC_dl_for_check.scala 1136:30:@2181.4]
  reg [31:0] _RAND_319;
  reg [7:0] dat_out_bypass_data_62; // @[NV_NVDLA_CSC_dl_for_check.scala 1136:30:@2181.4]
  reg [31:0] _RAND_320;
  reg [7:0] dat_out_bypass_data_63; // @[NV_NVDLA_CSC_dl_for_check.scala 1136:30:@2181.4]
  reg [31:0] _RAND_321;
  reg  _T_3007; // @[NV_NVDLA_CSC_dl_for_check.scala 1139:64:@2183.4]
  reg [31:0] _RAND_322;
  reg  _T_3010; // @[NV_NVDLA_CSC_dl_for_check.scala 1139:64:@2184.4]
  reg [31:0] _RAND_323;
  reg  _T_3013; // @[NV_NVDLA_CSC_dl_for_check.scala 1139:64:@2185.4]
  reg [31:0] _RAND_324;
  reg  _T_3016; // @[NV_NVDLA_CSC_dl_for_check.scala 1139:64:@2186.4]
  reg [31:0] _RAND_325;
  reg  _T_3019; // @[NV_NVDLA_CSC_dl_for_check.scala 1139:64:@2187.4]
  reg [31:0] _RAND_326;
  reg [8:0] _T_3024; // @[NV_NVDLA_CSC_dl_for_check.scala 1141:64:@2189.4]
  reg [31:0] _RAND_327;
  reg [8:0] _T_3027; // @[NV_NVDLA_CSC_dl_for_check.scala 1141:64:@2190.4]
  reg [31:0] _RAND_328;
  reg [8:0] _T_3030; // @[NV_NVDLA_CSC_dl_for_check.scala 1141:64:@2191.4]
  reg [31:0] _RAND_329;
  reg [8:0] _T_3033; // @[NV_NVDLA_CSC_dl_for_check.scala 1141:64:@2192.4]
  reg [31:0] _RAND_330;
  reg [8:0] _T_3036; // @[NV_NVDLA_CSC_dl_for_check.scala 1141:64:@2193.4]
  reg [31:0] _RAND_331;
  wire [8:0] _GEN_160; // @[NV_NVDLA_CSC_dl_for_check.scala 1148:28:@2197.4]
  wire [8:0] _GEN_161; // @[NV_NVDLA_CSC_dl_for_check.scala 1148:28:@2201.4]
  wire [8:0] _GEN_162; // @[NV_NVDLA_CSC_dl_for_check.scala 1148:28:@2205.4]
  wire [8:0] _GEN_163; // @[NV_NVDLA_CSC_dl_for_check.scala 1148:28:@2209.4]
  wire [8:0] _GEN_164; // @[NV_NVDLA_CSC_dl_for_check.scala 1148:28:@2213.4]
  wire  _T_3037; // @[NV_NVDLA_CSC_dl_for_check.scala 1153:40:@2216.4]
  wire  dat_out_pvld_w; // @[NV_NVDLA_CSC_dl_for_check.scala 1153:25:@2217.4]
  wire  _T_3038; // @[NV_NVDLA_CSC_dl_for_check.scala 1154:40:@2218.4]
  wire [8:0] dat_out_flag_w; // @[NV_NVDLA_CSC_dl_for_check.scala 1154:25:@2219.4]
  wire [8:0] _GEN_165; // @[NV_NVDLA_CSC_dl_for_check.scala 1161:21:@2221.4]
  wire  _GEN_166; // @[NV_NVDLA_CSC_dl_for_check.scala 1164:30:@2224.4]
  wire  _GEN_167; // @[NV_NVDLA_CSC_dl_for_check.scala 1164:30:@2224.4]
  wire  _GEN_168; // @[NV_NVDLA_CSC_dl_for_check.scala 1164:30:@2224.4]
  wire  _GEN_169; // @[NV_NVDLA_CSC_dl_for_check.scala 1164:30:@2224.4]
  wire  _GEN_170; // @[NV_NVDLA_CSC_dl_for_check.scala 1164:30:@2224.4]
  wire  _GEN_171; // @[NV_NVDLA_CSC_dl_for_check.scala 1164:30:@2224.4]
  wire  _GEN_172; // @[NV_NVDLA_CSC_dl_for_check.scala 1164:30:@2224.4]
  wire  _GEN_173; // @[NV_NVDLA_CSC_dl_for_check.scala 1164:30:@2224.4]
  wire  _GEN_174; // @[NV_NVDLA_CSC_dl_for_check.scala 1164:30:@2224.4]
  wire  _GEN_175; // @[NV_NVDLA_CSC_dl_for_check.scala 1164:30:@2224.4]
  wire  _GEN_176; // @[NV_NVDLA_CSC_dl_for_check.scala 1164:30:@2224.4]
  wire  _GEN_177; // @[NV_NVDLA_CSC_dl_for_check.scala 1164:30:@2224.4]
  wire  _GEN_178; // @[NV_NVDLA_CSC_dl_for_check.scala 1164:30:@2224.4]
  wire  _GEN_179; // @[NV_NVDLA_CSC_dl_for_check.scala 1164:30:@2224.4]
  wire  _GEN_180; // @[NV_NVDLA_CSC_dl_for_check.scala 1164:30:@2224.4]
  wire  _GEN_181; // @[NV_NVDLA_CSC_dl_for_check.scala 1164:30:@2224.4]
  wire  _GEN_182; // @[NV_NVDLA_CSC_dl_for_check.scala 1164:30:@2224.4]
  wire  _GEN_183; // @[NV_NVDLA_CSC_dl_for_check.scala 1164:30:@2224.4]
  wire  _GEN_184; // @[NV_NVDLA_CSC_dl_for_check.scala 1164:30:@2224.4]
  wire  _GEN_185; // @[NV_NVDLA_CSC_dl_for_check.scala 1164:30:@2224.4]
  wire  _GEN_186; // @[NV_NVDLA_CSC_dl_for_check.scala 1164:30:@2224.4]
  wire  _GEN_187; // @[NV_NVDLA_CSC_dl_for_check.scala 1164:30:@2224.4]
  wire  _GEN_188; // @[NV_NVDLA_CSC_dl_for_check.scala 1164:30:@2224.4]
  wire  _GEN_189; // @[NV_NVDLA_CSC_dl_for_check.scala 1164:30:@2224.4]
  wire  _GEN_190; // @[NV_NVDLA_CSC_dl_for_check.scala 1164:30:@2224.4]
  wire  _GEN_191; // @[NV_NVDLA_CSC_dl_for_check.scala 1164:30:@2224.4]
  wire  _GEN_192; // @[NV_NVDLA_CSC_dl_for_check.scala 1164:30:@2224.4]
  wire  _GEN_193; // @[NV_NVDLA_CSC_dl_for_check.scala 1164:30:@2224.4]
  wire  _GEN_194; // @[NV_NVDLA_CSC_dl_for_check.scala 1164:30:@2224.4]
  wire  _GEN_195; // @[NV_NVDLA_CSC_dl_for_check.scala 1164:30:@2224.4]
  wire  _GEN_196; // @[NV_NVDLA_CSC_dl_for_check.scala 1164:30:@2224.4]
  wire  _GEN_197; // @[NV_NVDLA_CSC_dl_for_check.scala 1164:30:@2224.4]
  wire  _GEN_198; // @[NV_NVDLA_CSC_dl_for_check.scala 1164:30:@2224.4]
  wire  _GEN_199; // @[NV_NVDLA_CSC_dl_for_check.scala 1164:30:@2224.4]
  wire  _GEN_200; // @[NV_NVDLA_CSC_dl_for_check.scala 1164:30:@2224.4]
  wire  _GEN_201; // @[NV_NVDLA_CSC_dl_for_check.scala 1164:30:@2224.4]
  wire  _GEN_202; // @[NV_NVDLA_CSC_dl_for_check.scala 1164:30:@2224.4]
  wire  _GEN_203; // @[NV_NVDLA_CSC_dl_for_check.scala 1164:30:@2224.4]
  wire  _GEN_204; // @[NV_NVDLA_CSC_dl_for_check.scala 1164:30:@2224.4]
  wire  _GEN_205; // @[NV_NVDLA_CSC_dl_for_check.scala 1164:30:@2224.4]
  wire  _GEN_206; // @[NV_NVDLA_CSC_dl_for_check.scala 1164:30:@2224.4]
  wire  _GEN_207; // @[NV_NVDLA_CSC_dl_for_check.scala 1164:30:@2224.4]
  wire  _GEN_208; // @[NV_NVDLA_CSC_dl_for_check.scala 1164:30:@2224.4]
  wire  _GEN_209; // @[NV_NVDLA_CSC_dl_for_check.scala 1164:30:@2224.4]
  wire  _GEN_210; // @[NV_NVDLA_CSC_dl_for_check.scala 1164:30:@2224.4]
  wire  _GEN_211; // @[NV_NVDLA_CSC_dl_for_check.scala 1164:30:@2224.4]
  wire  _GEN_212; // @[NV_NVDLA_CSC_dl_for_check.scala 1164:30:@2224.4]
  wire  _GEN_213; // @[NV_NVDLA_CSC_dl_for_check.scala 1164:30:@2224.4]
  wire  _GEN_214; // @[NV_NVDLA_CSC_dl_for_check.scala 1164:30:@2224.4]
  wire  _GEN_215; // @[NV_NVDLA_CSC_dl_for_check.scala 1164:30:@2224.4]
  wire  _GEN_216; // @[NV_NVDLA_CSC_dl_for_check.scala 1164:30:@2224.4]
  wire  _GEN_217; // @[NV_NVDLA_CSC_dl_for_check.scala 1164:30:@2224.4]
  wire  _GEN_218; // @[NV_NVDLA_CSC_dl_for_check.scala 1164:30:@2224.4]
  wire  _GEN_219; // @[NV_NVDLA_CSC_dl_for_check.scala 1164:30:@2224.4]
  wire  _GEN_220; // @[NV_NVDLA_CSC_dl_for_check.scala 1164:30:@2224.4]
  wire  _GEN_221; // @[NV_NVDLA_CSC_dl_for_check.scala 1164:30:@2224.4]
  wire  _GEN_222; // @[NV_NVDLA_CSC_dl_for_check.scala 1164:30:@2224.4]
  wire  _GEN_223; // @[NV_NVDLA_CSC_dl_for_check.scala 1164:30:@2224.4]
  wire  _GEN_224; // @[NV_NVDLA_CSC_dl_for_check.scala 1164:30:@2224.4]
  wire  _GEN_225; // @[NV_NVDLA_CSC_dl_for_check.scala 1164:30:@2224.4]
  wire  _GEN_226; // @[NV_NVDLA_CSC_dl_for_check.scala 1164:30:@2224.4]
  wire  _GEN_227; // @[NV_NVDLA_CSC_dl_for_check.scala 1164:30:@2224.4]
  wire  _GEN_228; // @[NV_NVDLA_CSC_dl_for_check.scala 1164:30:@2224.4]
  wire  _GEN_229; // @[NV_NVDLA_CSC_dl_for_check.scala 1164:30:@2224.4]
  wire  _T_3039; // @[NV_NVDLA_CSC_dl_for_check.scala 1168:34:@2290.4]
  wire  _T_3040; // @[NV_NVDLA_CSC_dl_for_check.scala 1168:34:@2294.4]
  wire  _T_3041; // @[NV_NVDLA_CSC_dl_for_check.scala 1168:34:@2298.4]
  wire  _T_3042; // @[NV_NVDLA_CSC_dl_for_check.scala 1168:34:@2302.4]
  wire  _T_3043; // @[NV_NVDLA_CSC_dl_for_check.scala 1168:34:@2306.4]
  wire  _T_3044; // @[NV_NVDLA_CSC_dl_for_check.scala 1168:34:@2310.4]
  wire  _T_3045; // @[NV_NVDLA_CSC_dl_for_check.scala 1168:34:@2314.4]
  wire  _T_3046; // @[NV_NVDLA_CSC_dl_for_check.scala 1168:34:@2318.4]
  wire  _T_3047; // @[NV_NVDLA_CSC_dl_for_check.scala 1168:34:@2322.4]
  wire  _T_3048; // @[NV_NVDLA_CSC_dl_for_check.scala 1168:34:@2326.4]
  wire  _T_3049; // @[NV_NVDLA_CSC_dl_for_check.scala 1168:34:@2330.4]
  wire  _T_3050; // @[NV_NVDLA_CSC_dl_for_check.scala 1168:34:@2334.4]
  wire  _T_3051; // @[NV_NVDLA_CSC_dl_for_check.scala 1168:34:@2338.4]
  wire  _T_3052; // @[NV_NVDLA_CSC_dl_for_check.scala 1168:34:@2342.4]
  wire  _T_3053; // @[NV_NVDLA_CSC_dl_for_check.scala 1168:34:@2346.4]
  wire  _T_3054; // @[NV_NVDLA_CSC_dl_for_check.scala 1168:34:@2350.4]
  wire  _T_3055; // @[NV_NVDLA_CSC_dl_for_check.scala 1168:34:@2354.4]
  wire  _T_3056; // @[NV_NVDLA_CSC_dl_for_check.scala 1168:34:@2358.4]
  wire  _T_3057; // @[NV_NVDLA_CSC_dl_for_check.scala 1168:34:@2362.4]
  wire  _T_3058; // @[NV_NVDLA_CSC_dl_for_check.scala 1168:34:@2366.4]
  wire  _T_3059; // @[NV_NVDLA_CSC_dl_for_check.scala 1168:34:@2370.4]
  wire  _T_3060; // @[NV_NVDLA_CSC_dl_for_check.scala 1168:34:@2374.4]
  wire  _T_3061; // @[NV_NVDLA_CSC_dl_for_check.scala 1168:34:@2378.4]
  wire  _T_3062; // @[NV_NVDLA_CSC_dl_for_check.scala 1168:34:@2382.4]
  wire  _T_3063; // @[NV_NVDLA_CSC_dl_for_check.scala 1168:34:@2386.4]
  wire  _T_3064; // @[NV_NVDLA_CSC_dl_for_check.scala 1168:34:@2390.4]
  wire  _T_3065; // @[NV_NVDLA_CSC_dl_for_check.scala 1168:34:@2394.4]
  wire  _T_3066; // @[NV_NVDLA_CSC_dl_for_check.scala 1168:34:@2398.4]
  wire  _T_3067; // @[NV_NVDLA_CSC_dl_for_check.scala 1168:34:@2402.4]
  wire  _T_3068; // @[NV_NVDLA_CSC_dl_for_check.scala 1168:34:@2406.4]
  wire  _T_3069; // @[NV_NVDLA_CSC_dl_for_check.scala 1168:34:@2410.4]
  wire  _T_3070; // @[NV_NVDLA_CSC_dl_for_check.scala 1168:34:@2414.4]
  wire  _T_3071; // @[NV_NVDLA_CSC_dl_for_check.scala 1168:34:@2418.4]
  wire  _T_3072; // @[NV_NVDLA_CSC_dl_for_check.scala 1168:34:@2422.4]
  wire  _T_3073; // @[NV_NVDLA_CSC_dl_for_check.scala 1168:34:@2426.4]
  wire  _T_3074; // @[NV_NVDLA_CSC_dl_for_check.scala 1168:34:@2430.4]
  wire  _T_3075; // @[NV_NVDLA_CSC_dl_for_check.scala 1168:34:@2434.4]
  wire  _T_3076; // @[NV_NVDLA_CSC_dl_for_check.scala 1168:34:@2438.4]
  wire  _T_3077; // @[NV_NVDLA_CSC_dl_for_check.scala 1168:34:@2442.4]
  wire  _T_3078; // @[NV_NVDLA_CSC_dl_for_check.scala 1168:34:@2446.4]
  wire  _T_3079; // @[NV_NVDLA_CSC_dl_for_check.scala 1168:34:@2450.4]
  wire  _T_3080; // @[NV_NVDLA_CSC_dl_for_check.scala 1168:34:@2454.4]
  wire  _T_3081; // @[NV_NVDLA_CSC_dl_for_check.scala 1168:34:@2458.4]
  wire  _T_3082; // @[NV_NVDLA_CSC_dl_for_check.scala 1168:34:@2462.4]
  wire  _T_3083; // @[NV_NVDLA_CSC_dl_for_check.scala 1168:34:@2466.4]
  wire  _T_3084; // @[NV_NVDLA_CSC_dl_for_check.scala 1168:34:@2470.4]
  wire  _T_3085; // @[NV_NVDLA_CSC_dl_for_check.scala 1168:34:@2474.4]
  wire  _T_3086; // @[NV_NVDLA_CSC_dl_for_check.scala 1168:34:@2478.4]
  wire  _T_3087; // @[NV_NVDLA_CSC_dl_for_check.scala 1168:34:@2482.4]
  wire  _T_3088; // @[NV_NVDLA_CSC_dl_for_check.scala 1168:34:@2486.4]
  wire  _T_3089; // @[NV_NVDLA_CSC_dl_for_check.scala 1168:34:@2490.4]
  wire  _T_3090; // @[NV_NVDLA_CSC_dl_for_check.scala 1168:34:@2494.4]
  wire  _T_3091; // @[NV_NVDLA_CSC_dl_for_check.scala 1168:34:@2498.4]
  wire  _T_3092; // @[NV_NVDLA_CSC_dl_for_check.scala 1168:34:@2502.4]
  wire  _T_3093; // @[NV_NVDLA_CSC_dl_for_check.scala 1168:34:@2506.4]
  wire  _T_3094; // @[NV_NVDLA_CSC_dl_for_check.scala 1168:34:@2510.4]
  wire  _T_3095; // @[NV_NVDLA_CSC_dl_for_check.scala 1168:34:@2514.4]
  wire  _T_3096; // @[NV_NVDLA_CSC_dl_for_check.scala 1168:34:@2518.4]
  wire  _T_3097; // @[NV_NVDLA_CSC_dl_for_check.scala 1168:34:@2522.4]
  wire  _T_3098; // @[NV_NVDLA_CSC_dl_for_check.scala 1168:34:@2526.4]
  wire  _T_3099; // @[NV_NVDLA_CSC_dl_for_check.scala 1168:34:@2530.4]
  wire  _T_3100; // @[NV_NVDLA_CSC_dl_for_check.scala 1168:34:@2534.4]
  wire  _T_3101; // @[NV_NVDLA_CSC_dl_for_check.scala 1168:34:@2538.4]
  wire  _T_3102; // @[NV_NVDLA_CSC_dl_for_check.scala 1168:34:@2542.4]
  reg  dl_out_pvld; // @[NV_NVDLA_CSC_dl_for_check.scala 1182:26:@2676.4]
  reg [31:0] _RAND_332;
  reg  dl_out_mask_0; // @[NV_NVDLA_CSC_dl_for_check.scala 1183:26:@2742.4]
  reg [31:0] _RAND_333;
  reg  dl_out_mask_1; // @[NV_NVDLA_CSC_dl_for_check.scala 1183:26:@2742.4]
  reg [31:0] _RAND_334;
  reg  dl_out_mask_2; // @[NV_NVDLA_CSC_dl_for_check.scala 1183:26:@2742.4]
  reg [31:0] _RAND_335;
  reg  dl_out_mask_3; // @[NV_NVDLA_CSC_dl_for_check.scala 1183:26:@2742.4]
  reg [31:0] _RAND_336;
  reg  dl_out_mask_4; // @[NV_NVDLA_CSC_dl_for_check.scala 1183:26:@2742.4]
  reg [31:0] _RAND_337;
  reg  dl_out_mask_5; // @[NV_NVDLA_CSC_dl_for_check.scala 1183:26:@2742.4]
  reg [31:0] _RAND_338;
  reg  dl_out_mask_6; // @[NV_NVDLA_CSC_dl_for_check.scala 1183:26:@2742.4]
  reg [31:0] _RAND_339;
  reg  dl_out_mask_7; // @[NV_NVDLA_CSC_dl_for_check.scala 1183:26:@2742.4]
  reg [31:0] _RAND_340;
  reg  dl_out_mask_8; // @[NV_NVDLA_CSC_dl_for_check.scala 1183:26:@2742.4]
  reg [31:0] _RAND_341;
  reg  dl_out_mask_9; // @[NV_NVDLA_CSC_dl_for_check.scala 1183:26:@2742.4]
  reg [31:0] _RAND_342;
  reg  dl_out_mask_10; // @[NV_NVDLA_CSC_dl_for_check.scala 1183:26:@2742.4]
  reg [31:0] _RAND_343;
  reg  dl_out_mask_11; // @[NV_NVDLA_CSC_dl_for_check.scala 1183:26:@2742.4]
  reg [31:0] _RAND_344;
  reg  dl_out_mask_12; // @[NV_NVDLA_CSC_dl_for_check.scala 1183:26:@2742.4]
  reg [31:0] _RAND_345;
  reg  dl_out_mask_13; // @[NV_NVDLA_CSC_dl_for_check.scala 1183:26:@2742.4]
  reg [31:0] _RAND_346;
  reg  dl_out_mask_14; // @[NV_NVDLA_CSC_dl_for_check.scala 1183:26:@2742.4]
  reg [31:0] _RAND_347;
  reg  dl_out_mask_15; // @[NV_NVDLA_CSC_dl_for_check.scala 1183:26:@2742.4]
  reg [31:0] _RAND_348;
  reg  dl_out_mask_16; // @[NV_NVDLA_CSC_dl_for_check.scala 1183:26:@2742.4]
  reg [31:0] _RAND_349;
  reg  dl_out_mask_17; // @[NV_NVDLA_CSC_dl_for_check.scala 1183:26:@2742.4]
  reg [31:0] _RAND_350;
  reg  dl_out_mask_18; // @[NV_NVDLA_CSC_dl_for_check.scala 1183:26:@2742.4]
  reg [31:0] _RAND_351;
  reg  dl_out_mask_19; // @[NV_NVDLA_CSC_dl_for_check.scala 1183:26:@2742.4]
  reg [31:0] _RAND_352;
  reg  dl_out_mask_20; // @[NV_NVDLA_CSC_dl_for_check.scala 1183:26:@2742.4]
  reg [31:0] _RAND_353;
  reg  dl_out_mask_21; // @[NV_NVDLA_CSC_dl_for_check.scala 1183:26:@2742.4]
  reg [31:0] _RAND_354;
  reg  dl_out_mask_22; // @[NV_NVDLA_CSC_dl_for_check.scala 1183:26:@2742.4]
  reg [31:0] _RAND_355;
  reg  dl_out_mask_23; // @[NV_NVDLA_CSC_dl_for_check.scala 1183:26:@2742.4]
  reg [31:0] _RAND_356;
  reg  dl_out_mask_24; // @[NV_NVDLA_CSC_dl_for_check.scala 1183:26:@2742.4]
  reg [31:0] _RAND_357;
  reg  dl_out_mask_25; // @[NV_NVDLA_CSC_dl_for_check.scala 1183:26:@2742.4]
  reg [31:0] _RAND_358;
  reg  dl_out_mask_26; // @[NV_NVDLA_CSC_dl_for_check.scala 1183:26:@2742.4]
  reg [31:0] _RAND_359;
  reg  dl_out_mask_27; // @[NV_NVDLA_CSC_dl_for_check.scala 1183:26:@2742.4]
  reg [31:0] _RAND_360;
  reg  dl_out_mask_28; // @[NV_NVDLA_CSC_dl_for_check.scala 1183:26:@2742.4]
  reg [31:0] _RAND_361;
  reg  dl_out_mask_29; // @[NV_NVDLA_CSC_dl_for_check.scala 1183:26:@2742.4]
  reg [31:0] _RAND_362;
  reg  dl_out_mask_30; // @[NV_NVDLA_CSC_dl_for_check.scala 1183:26:@2742.4]
  reg [31:0] _RAND_363;
  reg  dl_out_mask_31; // @[NV_NVDLA_CSC_dl_for_check.scala 1183:26:@2742.4]
  reg [31:0] _RAND_364;
  reg  dl_out_mask_32; // @[NV_NVDLA_CSC_dl_for_check.scala 1183:26:@2742.4]
  reg [31:0] _RAND_365;
  reg  dl_out_mask_33; // @[NV_NVDLA_CSC_dl_for_check.scala 1183:26:@2742.4]
  reg [31:0] _RAND_366;
  reg  dl_out_mask_34; // @[NV_NVDLA_CSC_dl_for_check.scala 1183:26:@2742.4]
  reg [31:0] _RAND_367;
  reg  dl_out_mask_35; // @[NV_NVDLA_CSC_dl_for_check.scala 1183:26:@2742.4]
  reg [31:0] _RAND_368;
  reg  dl_out_mask_36; // @[NV_NVDLA_CSC_dl_for_check.scala 1183:26:@2742.4]
  reg [31:0] _RAND_369;
  reg  dl_out_mask_37; // @[NV_NVDLA_CSC_dl_for_check.scala 1183:26:@2742.4]
  reg [31:0] _RAND_370;
  reg  dl_out_mask_38; // @[NV_NVDLA_CSC_dl_for_check.scala 1183:26:@2742.4]
  reg [31:0] _RAND_371;
  reg  dl_out_mask_39; // @[NV_NVDLA_CSC_dl_for_check.scala 1183:26:@2742.4]
  reg [31:0] _RAND_372;
  reg  dl_out_mask_40; // @[NV_NVDLA_CSC_dl_for_check.scala 1183:26:@2742.4]
  reg [31:0] _RAND_373;
  reg  dl_out_mask_41; // @[NV_NVDLA_CSC_dl_for_check.scala 1183:26:@2742.4]
  reg [31:0] _RAND_374;
  reg  dl_out_mask_42; // @[NV_NVDLA_CSC_dl_for_check.scala 1183:26:@2742.4]
  reg [31:0] _RAND_375;
  reg  dl_out_mask_43; // @[NV_NVDLA_CSC_dl_for_check.scala 1183:26:@2742.4]
  reg [31:0] _RAND_376;
  reg  dl_out_mask_44; // @[NV_NVDLA_CSC_dl_for_check.scala 1183:26:@2742.4]
  reg [31:0] _RAND_377;
  reg  dl_out_mask_45; // @[NV_NVDLA_CSC_dl_for_check.scala 1183:26:@2742.4]
  reg [31:0] _RAND_378;
  reg  dl_out_mask_46; // @[NV_NVDLA_CSC_dl_for_check.scala 1183:26:@2742.4]
  reg [31:0] _RAND_379;
  reg  dl_out_mask_47; // @[NV_NVDLA_CSC_dl_for_check.scala 1183:26:@2742.4]
  reg [31:0] _RAND_380;
  reg  dl_out_mask_48; // @[NV_NVDLA_CSC_dl_for_check.scala 1183:26:@2742.4]
  reg [31:0] _RAND_381;
  reg  dl_out_mask_49; // @[NV_NVDLA_CSC_dl_for_check.scala 1183:26:@2742.4]
  reg [31:0] _RAND_382;
  reg  dl_out_mask_50; // @[NV_NVDLA_CSC_dl_for_check.scala 1183:26:@2742.4]
  reg [31:0] _RAND_383;
  reg  dl_out_mask_51; // @[NV_NVDLA_CSC_dl_for_check.scala 1183:26:@2742.4]
  reg [31:0] _RAND_384;
  reg  dl_out_mask_52; // @[NV_NVDLA_CSC_dl_for_check.scala 1183:26:@2742.4]
  reg [31:0] _RAND_385;
  reg  dl_out_mask_53; // @[NV_NVDLA_CSC_dl_for_check.scala 1183:26:@2742.4]
  reg [31:0] _RAND_386;
  reg  dl_out_mask_54; // @[NV_NVDLA_CSC_dl_for_check.scala 1183:26:@2742.4]
  reg [31:0] _RAND_387;
  reg  dl_out_mask_55; // @[NV_NVDLA_CSC_dl_for_check.scala 1183:26:@2742.4]
  reg [31:0] _RAND_388;
  reg  dl_out_mask_56; // @[NV_NVDLA_CSC_dl_for_check.scala 1183:26:@2742.4]
  reg [31:0] _RAND_389;
  reg  dl_out_mask_57; // @[NV_NVDLA_CSC_dl_for_check.scala 1183:26:@2742.4]
  reg [31:0] _RAND_390;
  reg  dl_out_mask_58; // @[NV_NVDLA_CSC_dl_for_check.scala 1183:26:@2742.4]
  reg [31:0] _RAND_391;
  reg  dl_out_mask_59; // @[NV_NVDLA_CSC_dl_for_check.scala 1183:26:@2742.4]
  reg [31:0] _RAND_392;
  reg  dl_out_mask_60; // @[NV_NVDLA_CSC_dl_for_check.scala 1183:26:@2742.4]
  reg [31:0] _RAND_393;
  reg  dl_out_mask_61; // @[NV_NVDLA_CSC_dl_for_check.scala 1183:26:@2742.4]
  reg [31:0] _RAND_394;
  reg  dl_out_mask_62; // @[NV_NVDLA_CSC_dl_for_check.scala 1183:26:@2742.4]
  reg [31:0] _RAND_395;
  reg  dl_out_mask_63; // @[NV_NVDLA_CSC_dl_for_check.scala 1183:26:@2742.4]
  reg [31:0] _RAND_396;
  reg [8:0] dl_out_flag; // @[NV_NVDLA_CSC_dl_for_check.scala 1184:26:@2743.4]
  reg [31:0] _RAND_397;
  reg [7:0] dl_out_data_0; // @[NV_NVDLA_CSC_dl_for_check.scala 1185:22:@2744.4]
  reg [31:0] _RAND_398;
  reg [7:0] dl_out_data_1; // @[NV_NVDLA_CSC_dl_for_check.scala 1185:22:@2744.4]
  reg [31:0] _RAND_399;
  reg [7:0] dl_out_data_2; // @[NV_NVDLA_CSC_dl_for_check.scala 1185:22:@2744.4]
  reg [31:0] _RAND_400;
  reg [7:0] dl_out_data_3; // @[NV_NVDLA_CSC_dl_for_check.scala 1185:22:@2744.4]
  reg [31:0] _RAND_401;
  reg [7:0] dl_out_data_4; // @[NV_NVDLA_CSC_dl_for_check.scala 1185:22:@2744.4]
  reg [31:0] _RAND_402;
  reg [7:0] dl_out_data_5; // @[NV_NVDLA_CSC_dl_for_check.scala 1185:22:@2744.4]
  reg [31:0] _RAND_403;
  reg [7:0] dl_out_data_6; // @[NV_NVDLA_CSC_dl_for_check.scala 1185:22:@2744.4]
  reg [31:0] _RAND_404;
  reg [7:0] dl_out_data_7; // @[NV_NVDLA_CSC_dl_for_check.scala 1185:22:@2744.4]
  reg [31:0] _RAND_405;
  reg [7:0] dl_out_data_8; // @[NV_NVDLA_CSC_dl_for_check.scala 1185:22:@2744.4]
  reg [31:0] _RAND_406;
  reg [7:0] dl_out_data_9; // @[NV_NVDLA_CSC_dl_for_check.scala 1185:22:@2744.4]
  reg [31:0] _RAND_407;
  reg [7:0] dl_out_data_10; // @[NV_NVDLA_CSC_dl_for_check.scala 1185:22:@2744.4]
  reg [31:0] _RAND_408;
  reg [7:0] dl_out_data_11; // @[NV_NVDLA_CSC_dl_for_check.scala 1185:22:@2744.4]
  reg [31:0] _RAND_409;
  reg [7:0] dl_out_data_12; // @[NV_NVDLA_CSC_dl_for_check.scala 1185:22:@2744.4]
  reg [31:0] _RAND_410;
  reg [7:0] dl_out_data_13; // @[NV_NVDLA_CSC_dl_for_check.scala 1185:22:@2744.4]
  reg [31:0] _RAND_411;
  reg [7:0] dl_out_data_14; // @[NV_NVDLA_CSC_dl_for_check.scala 1185:22:@2744.4]
  reg [31:0] _RAND_412;
  reg [7:0] dl_out_data_15; // @[NV_NVDLA_CSC_dl_for_check.scala 1185:22:@2744.4]
  reg [31:0] _RAND_413;
  reg [7:0] dl_out_data_16; // @[NV_NVDLA_CSC_dl_for_check.scala 1185:22:@2744.4]
  reg [31:0] _RAND_414;
  reg [7:0] dl_out_data_17; // @[NV_NVDLA_CSC_dl_for_check.scala 1185:22:@2744.4]
  reg [31:0] _RAND_415;
  reg [7:0] dl_out_data_18; // @[NV_NVDLA_CSC_dl_for_check.scala 1185:22:@2744.4]
  reg [31:0] _RAND_416;
  reg [7:0] dl_out_data_19; // @[NV_NVDLA_CSC_dl_for_check.scala 1185:22:@2744.4]
  reg [31:0] _RAND_417;
  reg [7:0] dl_out_data_20; // @[NV_NVDLA_CSC_dl_for_check.scala 1185:22:@2744.4]
  reg [31:0] _RAND_418;
  reg [7:0] dl_out_data_21; // @[NV_NVDLA_CSC_dl_for_check.scala 1185:22:@2744.4]
  reg [31:0] _RAND_419;
  reg [7:0] dl_out_data_22; // @[NV_NVDLA_CSC_dl_for_check.scala 1185:22:@2744.4]
  reg [31:0] _RAND_420;
  reg [7:0] dl_out_data_23; // @[NV_NVDLA_CSC_dl_for_check.scala 1185:22:@2744.4]
  reg [31:0] _RAND_421;
  reg [7:0] dl_out_data_24; // @[NV_NVDLA_CSC_dl_for_check.scala 1185:22:@2744.4]
  reg [31:0] _RAND_422;
  reg [7:0] dl_out_data_25; // @[NV_NVDLA_CSC_dl_for_check.scala 1185:22:@2744.4]
  reg [31:0] _RAND_423;
  reg [7:0] dl_out_data_26; // @[NV_NVDLA_CSC_dl_for_check.scala 1185:22:@2744.4]
  reg [31:0] _RAND_424;
  reg [7:0] dl_out_data_27; // @[NV_NVDLA_CSC_dl_for_check.scala 1185:22:@2744.4]
  reg [31:0] _RAND_425;
  reg [7:0] dl_out_data_28; // @[NV_NVDLA_CSC_dl_for_check.scala 1185:22:@2744.4]
  reg [31:0] _RAND_426;
  reg [7:0] dl_out_data_29; // @[NV_NVDLA_CSC_dl_for_check.scala 1185:22:@2744.4]
  reg [31:0] _RAND_427;
  reg [7:0] dl_out_data_30; // @[NV_NVDLA_CSC_dl_for_check.scala 1185:22:@2744.4]
  reg [31:0] _RAND_428;
  reg [7:0] dl_out_data_31; // @[NV_NVDLA_CSC_dl_for_check.scala 1185:22:@2744.4]
  reg [31:0] _RAND_429;
  reg [7:0] dl_out_data_32; // @[NV_NVDLA_CSC_dl_for_check.scala 1185:22:@2744.4]
  reg [31:0] _RAND_430;
  reg [7:0] dl_out_data_33; // @[NV_NVDLA_CSC_dl_for_check.scala 1185:22:@2744.4]
  reg [31:0] _RAND_431;
  reg [7:0] dl_out_data_34; // @[NV_NVDLA_CSC_dl_for_check.scala 1185:22:@2744.4]
  reg [31:0] _RAND_432;
  reg [7:0] dl_out_data_35; // @[NV_NVDLA_CSC_dl_for_check.scala 1185:22:@2744.4]
  reg [31:0] _RAND_433;
  reg [7:0] dl_out_data_36; // @[NV_NVDLA_CSC_dl_for_check.scala 1185:22:@2744.4]
  reg [31:0] _RAND_434;
  reg [7:0] dl_out_data_37; // @[NV_NVDLA_CSC_dl_for_check.scala 1185:22:@2744.4]
  reg [31:0] _RAND_435;
  reg [7:0] dl_out_data_38; // @[NV_NVDLA_CSC_dl_for_check.scala 1185:22:@2744.4]
  reg [31:0] _RAND_436;
  reg [7:0] dl_out_data_39; // @[NV_NVDLA_CSC_dl_for_check.scala 1185:22:@2744.4]
  reg [31:0] _RAND_437;
  reg [7:0] dl_out_data_40; // @[NV_NVDLA_CSC_dl_for_check.scala 1185:22:@2744.4]
  reg [31:0] _RAND_438;
  reg [7:0] dl_out_data_41; // @[NV_NVDLA_CSC_dl_for_check.scala 1185:22:@2744.4]
  reg [31:0] _RAND_439;
  reg [7:0] dl_out_data_42; // @[NV_NVDLA_CSC_dl_for_check.scala 1185:22:@2744.4]
  reg [31:0] _RAND_440;
  reg [7:0] dl_out_data_43; // @[NV_NVDLA_CSC_dl_for_check.scala 1185:22:@2744.4]
  reg [31:0] _RAND_441;
  reg [7:0] dl_out_data_44; // @[NV_NVDLA_CSC_dl_for_check.scala 1185:22:@2744.4]
  reg [31:0] _RAND_442;
  reg [7:0] dl_out_data_45; // @[NV_NVDLA_CSC_dl_for_check.scala 1185:22:@2744.4]
  reg [31:0] _RAND_443;
  reg [7:0] dl_out_data_46; // @[NV_NVDLA_CSC_dl_for_check.scala 1185:22:@2744.4]
  reg [31:0] _RAND_444;
  reg [7:0] dl_out_data_47; // @[NV_NVDLA_CSC_dl_for_check.scala 1185:22:@2744.4]
  reg [31:0] _RAND_445;
  reg [7:0] dl_out_data_48; // @[NV_NVDLA_CSC_dl_for_check.scala 1185:22:@2744.4]
  reg [31:0] _RAND_446;
  reg [7:0] dl_out_data_49; // @[NV_NVDLA_CSC_dl_for_check.scala 1185:22:@2744.4]
  reg [31:0] _RAND_447;
  reg [7:0] dl_out_data_50; // @[NV_NVDLA_CSC_dl_for_check.scala 1185:22:@2744.4]
  reg [31:0] _RAND_448;
  reg [7:0] dl_out_data_51; // @[NV_NVDLA_CSC_dl_for_check.scala 1185:22:@2744.4]
  reg [31:0] _RAND_449;
  reg [7:0] dl_out_data_52; // @[NV_NVDLA_CSC_dl_for_check.scala 1185:22:@2744.4]
  reg [31:0] _RAND_450;
  reg [7:0] dl_out_data_53; // @[NV_NVDLA_CSC_dl_for_check.scala 1185:22:@2744.4]
  reg [31:0] _RAND_451;
  reg [7:0] dl_out_data_54; // @[NV_NVDLA_CSC_dl_for_check.scala 1185:22:@2744.4]
  reg [31:0] _RAND_452;
  reg [7:0] dl_out_data_55; // @[NV_NVDLA_CSC_dl_for_check.scala 1185:22:@2744.4]
  reg [31:0] _RAND_453;
  reg [7:0] dl_out_data_56; // @[NV_NVDLA_CSC_dl_for_check.scala 1185:22:@2744.4]
  reg [31:0] _RAND_454;
  reg [7:0] dl_out_data_57; // @[NV_NVDLA_CSC_dl_for_check.scala 1185:22:@2744.4]
  reg [31:0] _RAND_455;
  reg [7:0] dl_out_data_58; // @[NV_NVDLA_CSC_dl_for_check.scala 1185:22:@2744.4]
  reg [31:0] _RAND_456;
  reg [7:0] dl_out_data_59; // @[NV_NVDLA_CSC_dl_for_check.scala 1185:22:@2744.4]
  reg [31:0] _RAND_457;
  reg [7:0] dl_out_data_60; // @[NV_NVDLA_CSC_dl_for_check.scala 1185:22:@2744.4]
  reg [31:0] _RAND_458;
  reg [7:0] dl_out_data_61; // @[NV_NVDLA_CSC_dl_for_check.scala 1185:22:@2744.4]
  reg [31:0] _RAND_459;
  reg [7:0] dl_out_data_62; // @[NV_NVDLA_CSC_dl_for_check.scala 1185:22:@2744.4]
  reg [31:0] _RAND_460;
  reg [7:0] dl_out_data_63; // @[NV_NVDLA_CSC_dl_for_check.scala 1185:22:@2744.4]
  reg [31:0] _RAND_461;
  wire  _T_3904; // @[NV_NVDLA_CSC_dl_for_check.scala 1187:38:@2745.4]
  wire [7:0] dat_out_data_0; // @[NV_NVDLA_CSC_dl_for_check.scala 1187:23:@2746.4]
  wire [7:0] dat_out_data_1; // @[NV_NVDLA_CSC_dl_for_check.scala 1187:23:@2746.4]
  wire [7:0] dat_out_data_2; // @[NV_NVDLA_CSC_dl_for_check.scala 1187:23:@2746.4]
  wire [7:0] dat_out_data_3; // @[NV_NVDLA_CSC_dl_for_check.scala 1187:23:@2746.4]
  wire [7:0] dat_out_data_4; // @[NV_NVDLA_CSC_dl_for_check.scala 1187:23:@2746.4]
  wire [7:0] dat_out_data_5; // @[NV_NVDLA_CSC_dl_for_check.scala 1187:23:@2746.4]
  wire [7:0] dat_out_data_6; // @[NV_NVDLA_CSC_dl_for_check.scala 1187:23:@2746.4]
  wire [7:0] dat_out_data_7; // @[NV_NVDLA_CSC_dl_for_check.scala 1187:23:@2746.4]
  wire [7:0] dat_out_data_8; // @[NV_NVDLA_CSC_dl_for_check.scala 1187:23:@2746.4]
  wire [7:0] dat_out_data_9; // @[NV_NVDLA_CSC_dl_for_check.scala 1187:23:@2746.4]
  wire [7:0] dat_out_data_10; // @[NV_NVDLA_CSC_dl_for_check.scala 1187:23:@2746.4]
  wire [7:0] dat_out_data_11; // @[NV_NVDLA_CSC_dl_for_check.scala 1187:23:@2746.4]
  wire [7:0] dat_out_data_12; // @[NV_NVDLA_CSC_dl_for_check.scala 1187:23:@2746.4]
  wire [7:0] dat_out_data_13; // @[NV_NVDLA_CSC_dl_for_check.scala 1187:23:@2746.4]
  wire [7:0] dat_out_data_14; // @[NV_NVDLA_CSC_dl_for_check.scala 1187:23:@2746.4]
  wire [7:0] dat_out_data_15; // @[NV_NVDLA_CSC_dl_for_check.scala 1187:23:@2746.4]
  wire [7:0] dat_out_data_16; // @[NV_NVDLA_CSC_dl_for_check.scala 1187:23:@2746.4]
  wire [7:0] dat_out_data_17; // @[NV_NVDLA_CSC_dl_for_check.scala 1187:23:@2746.4]
  wire [7:0] dat_out_data_18; // @[NV_NVDLA_CSC_dl_for_check.scala 1187:23:@2746.4]
  wire [7:0] dat_out_data_19; // @[NV_NVDLA_CSC_dl_for_check.scala 1187:23:@2746.4]
  wire [7:0] dat_out_data_20; // @[NV_NVDLA_CSC_dl_for_check.scala 1187:23:@2746.4]
  wire [7:0] dat_out_data_21; // @[NV_NVDLA_CSC_dl_for_check.scala 1187:23:@2746.4]
  wire [7:0] dat_out_data_22; // @[NV_NVDLA_CSC_dl_for_check.scala 1187:23:@2746.4]
  wire [7:0] dat_out_data_23; // @[NV_NVDLA_CSC_dl_for_check.scala 1187:23:@2746.4]
  wire [7:0] dat_out_data_24; // @[NV_NVDLA_CSC_dl_for_check.scala 1187:23:@2746.4]
  wire [7:0] dat_out_data_25; // @[NV_NVDLA_CSC_dl_for_check.scala 1187:23:@2746.4]
  wire [7:0] dat_out_data_26; // @[NV_NVDLA_CSC_dl_for_check.scala 1187:23:@2746.4]
  wire [7:0] dat_out_data_27; // @[NV_NVDLA_CSC_dl_for_check.scala 1187:23:@2746.4]
  wire [7:0] dat_out_data_28; // @[NV_NVDLA_CSC_dl_for_check.scala 1187:23:@2746.4]
  wire [7:0] dat_out_data_29; // @[NV_NVDLA_CSC_dl_for_check.scala 1187:23:@2746.4]
  wire [7:0] dat_out_data_30; // @[NV_NVDLA_CSC_dl_for_check.scala 1187:23:@2746.4]
  wire [7:0] dat_out_data_31; // @[NV_NVDLA_CSC_dl_for_check.scala 1187:23:@2746.4]
  wire [7:0] dat_out_data_32; // @[NV_NVDLA_CSC_dl_for_check.scala 1187:23:@2746.4]
  wire [7:0] dat_out_data_33; // @[NV_NVDLA_CSC_dl_for_check.scala 1187:23:@2746.4]
  wire [7:0] dat_out_data_34; // @[NV_NVDLA_CSC_dl_for_check.scala 1187:23:@2746.4]
  wire [7:0] dat_out_data_35; // @[NV_NVDLA_CSC_dl_for_check.scala 1187:23:@2746.4]
  wire [7:0] dat_out_data_36; // @[NV_NVDLA_CSC_dl_for_check.scala 1187:23:@2746.4]
  wire [7:0] dat_out_data_37; // @[NV_NVDLA_CSC_dl_for_check.scala 1187:23:@2746.4]
  wire [7:0] dat_out_data_38; // @[NV_NVDLA_CSC_dl_for_check.scala 1187:23:@2746.4]
  wire [7:0] dat_out_data_39; // @[NV_NVDLA_CSC_dl_for_check.scala 1187:23:@2746.4]
  wire [7:0] dat_out_data_40; // @[NV_NVDLA_CSC_dl_for_check.scala 1187:23:@2746.4]
  wire [7:0] dat_out_data_41; // @[NV_NVDLA_CSC_dl_for_check.scala 1187:23:@2746.4]
  wire [7:0] dat_out_data_42; // @[NV_NVDLA_CSC_dl_for_check.scala 1187:23:@2746.4]
  wire [7:0] dat_out_data_43; // @[NV_NVDLA_CSC_dl_for_check.scala 1187:23:@2746.4]
  wire [7:0] dat_out_data_44; // @[NV_NVDLA_CSC_dl_for_check.scala 1187:23:@2746.4]
  wire [7:0] dat_out_data_45; // @[NV_NVDLA_CSC_dl_for_check.scala 1187:23:@2746.4]
  wire [7:0] dat_out_data_46; // @[NV_NVDLA_CSC_dl_for_check.scala 1187:23:@2746.4]
  wire [7:0] dat_out_data_47; // @[NV_NVDLA_CSC_dl_for_check.scala 1187:23:@2746.4]
  wire [7:0] dat_out_data_48; // @[NV_NVDLA_CSC_dl_for_check.scala 1187:23:@2746.4]
  wire [7:0] dat_out_data_49; // @[NV_NVDLA_CSC_dl_for_check.scala 1187:23:@2746.4]
  wire [7:0] dat_out_data_50; // @[NV_NVDLA_CSC_dl_for_check.scala 1187:23:@2746.4]
  wire [7:0] dat_out_data_51; // @[NV_NVDLA_CSC_dl_for_check.scala 1187:23:@2746.4]
  wire [7:0] dat_out_data_52; // @[NV_NVDLA_CSC_dl_for_check.scala 1187:23:@2746.4]
  wire [7:0] dat_out_data_53; // @[NV_NVDLA_CSC_dl_for_check.scala 1187:23:@2746.4]
  wire [7:0] dat_out_data_54; // @[NV_NVDLA_CSC_dl_for_check.scala 1187:23:@2746.4]
  wire [7:0] dat_out_data_55; // @[NV_NVDLA_CSC_dl_for_check.scala 1187:23:@2746.4]
  wire [7:0] dat_out_data_56; // @[NV_NVDLA_CSC_dl_for_check.scala 1187:23:@2746.4]
  wire [7:0] dat_out_data_57; // @[NV_NVDLA_CSC_dl_for_check.scala 1187:23:@2746.4]
  wire [7:0] dat_out_data_58; // @[NV_NVDLA_CSC_dl_for_check.scala 1187:23:@2746.4]
  wire [7:0] dat_out_data_59; // @[NV_NVDLA_CSC_dl_for_check.scala 1187:23:@2746.4]
  wire [7:0] dat_out_data_60; // @[NV_NVDLA_CSC_dl_for_check.scala 1187:23:@2746.4]
  wire [7:0] dat_out_data_61; // @[NV_NVDLA_CSC_dl_for_check.scala 1187:23:@2746.4]
  wire [7:0] dat_out_data_62; // @[NV_NVDLA_CSC_dl_for_check.scala 1187:23:@2746.4]
  wire [7:0] dat_out_data_63; // @[NV_NVDLA_CSC_dl_for_check.scala 1187:23:@2746.4]
  wire  _T_4036; // @[NV_NVDLA_CSC_dl_for_check.scala 1188:24:@2747.4]
  wire  _T_4171; // @[NV_NVDLA_CSC_dl_for_check.scala 1189:38:@2813.4]
  wire  _T_4172_0; // @[NV_NVDLA_CSC_dl_for_check.scala 1189:23:@2814.4]
  wire  _T_4172_1; // @[NV_NVDLA_CSC_dl_for_check.scala 1189:23:@2814.4]
  wire  _T_4172_2; // @[NV_NVDLA_CSC_dl_for_check.scala 1189:23:@2814.4]
  wire  _T_4172_3; // @[NV_NVDLA_CSC_dl_for_check.scala 1189:23:@2814.4]
  wire  _T_4172_4; // @[NV_NVDLA_CSC_dl_for_check.scala 1189:23:@2814.4]
  wire  _T_4172_5; // @[NV_NVDLA_CSC_dl_for_check.scala 1189:23:@2814.4]
  wire  _T_4172_6; // @[NV_NVDLA_CSC_dl_for_check.scala 1189:23:@2814.4]
  wire  _T_4172_7; // @[NV_NVDLA_CSC_dl_for_check.scala 1189:23:@2814.4]
  wire  _T_4172_8; // @[NV_NVDLA_CSC_dl_for_check.scala 1189:23:@2814.4]
  wire  _T_4172_9; // @[NV_NVDLA_CSC_dl_for_check.scala 1189:23:@2814.4]
  wire  _T_4172_10; // @[NV_NVDLA_CSC_dl_for_check.scala 1189:23:@2814.4]
  wire  _T_4172_11; // @[NV_NVDLA_CSC_dl_for_check.scala 1189:23:@2814.4]
  wire  _T_4172_12; // @[NV_NVDLA_CSC_dl_for_check.scala 1189:23:@2814.4]
  wire  _T_4172_13; // @[NV_NVDLA_CSC_dl_for_check.scala 1189:23:@2814.4]
  wire  _T_4172_14; // @[NV_NVDLA_CSC_dl_for_check.scala 1189:23:@2814.4]
  wire  _T_4172_15; // @[NV_NVDLA_CSC_dl_for_check.scala 1189:23:@2814.4]
  wire  _T_4172_16; // @[NV_NVDLA_CSC_dl_for_check.scala 1189:23:@2814.4]
  wire  _T_4172_17; // @[NV_NVDLA_CSC_dl_for_check.scala 1189:23:@2814.4]
  wire  _T_4172_18; // @[NV_NVDLA_CSC_dl_for_check.scala 1189:23:@2814.4]
  wire  _T_4172_19; // @[NV_NVDLA_CSC_dl_for_check.scala 1189:23:@2814.4]
  wire  _T_4172_20; // @[NV_NVDLA_CSC_dl_for_check.scala 1189:23:@2814.4]
  wire  _T_4172_21; // @[NV_NVDLA_CSC_dl_for_check.scala 1189:23:@2814.4]
  wire  _T_4172_22; // @[NV_NVDLA_CSC_dl_for_check.scala 1189:23:@2814.4]
  wire  _T_4172_23; // @[NV_NVDLA_CSC_dl_for_check.scala 1189:23:@2814.4]
  wire  _T_4172_24; // @[NV_NVDLA_CSC_dl_for_check.scala 1189:23:@2814.4]
  wire  _T_4172_25; // @[NV_NVDLA_CSC_dl_for_check.scala 1189:23:@2814.4]
  wire  _T_4172_26; // @[NV_NVDLA_CSC_dl_for_check.scala 1189:23:@2814.4]
  wire  _T_4172_27; // @[NV_NVDLA_CSC_dl_for_check.scala 1189:23:@2814.4]
  wire  _T_4172_28; // @[NV_NVDLA_CSC_dl_for_check.scala 1189:23:@2814.4]
  wire  _T_4172_29; // @[NV_NVDLA_CSC_dl_for_check.scala 1189:23:@2814.4]
  wire  _T_4172_30; // @[NV_NVDLA_CSC_dl_for_check.scala 1189:23:@2814.4]
  wire  _T_4172_31; // @[NV_NVDLA_CSC_dl_for_check.scala 1189:23:@2814.4]
  wire  _T_4172_32; // @[NV_NVDLA_CSC_dl_for_check.scala 1189:23:@2814.4]
  wire  _T_4172_33; // @[NV_NVDLA_CSC_dl_for_check.scala 1189:23:@2814.4]
  wire  _T_4172_34; // @[NV_NVDLA_CSC_dl_for_check.scala 1189:23:@2814.4]
  wire  _T_4172_35; // @[NV_NVDLA_CSC_dl_for_check.scala 1189:23:@2814.4]
  wire  _T_4172_36; // @[NV_NVDLA_CSC_dl_for_check.scala 1189:23:@2814.4]
  wire  _T_4172_37; // @[NV_NVDLA_CSC_dl_for_check.scala 1189:23:@2814.4]
  wire  _T_4172_38; // @[NV_NVDLA_CSC_dl_for_check.scala 1189:23:@2814.4]
  wire  _T_4172_39; // @[NV_NVDLA_CSC_dl_for_check.scala 1189:23:@2814.4]
  wire  _T_4172_40; // @[NV_NVDLA_CSC_dl_for_check.scala 1189:23:@2814.4]
  wire  _T_4172_41; // @[NV_NVDLA_CSC_dl_for_check.scala 1189:23:@2814.4]
  wire  _T_4172_42; // @[NV_NVDLA_CSC_dl_for_check.scala 1189:23:@2814.4]
  wire  _T_4172_43; // @[NV_NVDLA_CSC_dl_for_check.scala 1189:23:@2814.4]
  wire  _T_4172_44; // @[NV_NVDLA_CSC_dl_for_check.scala 1189:23:@2814.4]
  wire  _T_4172_45; // @[NV_NVDLA_CSC_dl_for_check.scala 1189:23:@2814.4]
  wire  _T_4172_46; // @[NV_NVDLA_CSC_dl_for_check.scala 1189:23:@2814.4]
  wire  _T_4172_47; // @[NV_NVDLA_CSC_dl_for_check.scala 1189:23:@2814.4]
  wire  _T_4172_48; // @[NV_NVDLA_CSC_dl_for_check.scala 1189:23:@2814.4]
  wire  _T_4172_49; // @[NV_NVDLA_CSC_dl_for_check.scala 1189:23:@2814.4]
  wire  _T_4172_50; // @[NV_NVDLA_CSC_dl_for_check.scala 1189:23:@2814.4]
  wire  _T_4172_51; // @[NV_NVDLA_CSC_dl_for_check.scala 1189:23:@2814.4]
  wire  _T_4172_52; // @[NV_NVDLA_CSC_dl_for_check.scala 1189:23:@2814.4]
  wire  _T_4172_53; // @[NV_NVDLA_CSC_dl_for_check.scala 1189:23:@2814.4]
  wire  _T_4172_54; // @[NV_NVDLA_CSC_dl_for_check.scala 1189:23:@2814.4]
  wire  _T_4172_55; // @[NV_NVDLA_CSC_dl_for_check.scala 1189:23:@2814.4]
  wire  _T_4172_56; // @[NV_NVDLA_CSC_dl_for_check.scala 1189:23:@2814.4]
  wire  _T_4172_57; // @[NV_NVDLA_CSC_dl_for_check.scala 1189:23:@2814.4]
  wire  _T_4172_58; // @[NV_NVDLA_CSC_dl_for_check.scala 1189:23:@2814.4]
  wire  _T_4172_59; // @[NV_NVDLA_CSC_dl_for_check.scala 1189:23:@2814.4]
  wire  _T_4172_60; // @[NV_NVDLA_CSC_dl_for_check.scala 1189:23:@2814.4]
  wire  _T_4172_61; // @[NV_NVDLA_CSC_dl_for_check.scala 1189:23:@2814.4]
  wire  _T_4172_62; // @[NV_NVDLA_CSC_dl_for_check.scala 1189:23:@2814.4]
  wire  _T_4172_63; // @[NV_NVDLA_CSC_dl_for_check.scala 1189:23:@2814.4]
  wire  dat_out_mask_0; // @[NV_NVDLA_CSC_dl_for_check.scala 1188:23:@2815.4]
  wire  dat_out_mask_1; // @[NV_NVDLA_CSC_dl_for_check.scala 1188:23:@2815.4]
  wire  dat_out_mask_2; // @[NV_NVDLA_CSC_dl_for_check.scala 1188:23:@2815.4]
  wire  dat_out_mask_3; // @[NV_NVDLA_CSC_dl_for_check.scala 1188:23:@2815.4]
  wire  dat_out_mask_4; // @[NV_NVDLA_CSC_dl_for_check.scala 1188:23:@2815.4]
  wire  dat_out_mask_5; // @[NV_NVDLA_CSC_dl_for_check.scala 1188:23:@2815.4]
  wire  dat_out_mask_6; // @[NV_NVDLA_CSC_dl_for_check.scala 1188:23:@2815.4]
  wire  dat_out_mask_7; // @[NV_NVDLA_CSC_dl_for_check.scala 1188:23:@2815.4]
  wire  dat_out_mask_8; // @[NV_NVDLA_CSC_dl_for_check.scala 1188:23:@2815.4]
  wire  dat_out_mask_9; // @[NV_NVDLA_CSC_dl_for_check.scala 1188:23:@2815.4]
  wire  dat_out_mask_10; // @[NV_NVDLA_CSC_dl_for_check.scala 1188:23:@2815.4]
  wire  dat_out_mask_11; // @[NV_NVDLA_CSC_dl_for_check.scala 1188:23:@2815.4]
  wire  dat_out_mask_12; // @[NV_NVDLA_CSC_dl_for_check.scala 1188:23:@2815.4]
  wire  dat_out_mask_13; // @[NV_NVDLA_CSC_dl_for_check.scala 1188:23:@2815.4]
  wire  dat_out_mask_14; // @[NV_NVDLA_CSC_dl_for_check.scala 1188:23:@2815.4]
  wire  dat_out_mask_15; // @[NV_NVDLA_CSC_dl_for_check.scala 1188:23:@2815.4]
  wire  dat_out_mask_16; // @[NV_NVDLA_CSC_dl_for_check.scala 1188:23:@2815.4]
  wire  dat_out_mask_17; // @[NV_NVDLA_CSC_dl_for_check.scala 1188:23:@2815.4]
  wire  dat_out_mask_18; // @[NV_NVDLA_CSC_dl_for_check.scala 1188:23:@2815.4]
  wire  dat_out_mask_19; // @[NV_NVDLA_CSC_dl_for_check.scala 1188:23:@2815.4]
  wire  dat_out_mask_20; // @[NV_NVDLA_CSC_dl_for_check.scala 1188:23:@2815.4]
  wire  dat_out_mask_21; // @[NV_NVDLA_CSC_dl_for_check.scala 1188:23:@2815.4]
  wire  dat_out_mask_22; // @[NV_NVDLA_CSC_dl_for_check.scala 1188:23:@2815.4]
  wire  dat_out_mask_23; // @[NV_NVDLA_CSC_dl_for_check.scala 1188:23:@2815.4]
  wire  dat_out_mask_24; // @[NV_NVDLA_CSC_dl_for_check.scala 1188:23:@2815.4]
  wire  dat_out_mask_25; // @[NV_NVDLA_CSC_dl_for_check.scala 1188:23:@2815.4]
  wire  dat_out_mask_26; // @[NV_NVDLA_CSC_dl_for_check.scala 1188:23:@2815.4]
  wire  dat_out_mask_27; // @[NV_NVDLA_CSC_dl_for_check.scala 1188:23:@2815.4]
  wire  dat_out_mask_28; // @[NV_NVDLA_CSC_dl_for_check.scala 1188:23:@2815.4]
  wire  dat_out_mask_29; // @[NV_NVDLA_CSC_dl_for_check.scala 1188:23:@2815.4]
  wire  dat_out_mask_30; // @[NV_NVDLA_CSC_dl_for_check.scala 1188:23:@2815.4]
  wire  dat_out_mask_31; // @[NV_NVDLA_CSC_dl_for_check.scala 1188:23:@2815.4]
  wire  dat_out_mask_32; // @[NV_NVDLA_CSC_dl_for_check.scala 1188:23:@2815.4]
  wire  dat_out_mask_33; // @[NV_NVDLA_CSC_dl_for_check.scala 1188:23:@2815.4]
  wire  dat_out_mask_34; // @[NV_NVDLA_CSC_dl_for_check.scala 1188:23:@2815.4]
  wire  dat_out_mask_35; // @[NV_NVDLA_CSC_dl_for_check.scala 1188:23:@2815.4]
  wire  dat_out_mask_36; // @[NV_NVDLA_CSC_dl_for_check.scala 1188:23:@2815.4]
  wire  dat_out_mask_37; // @[NV_NVDLA_CSC_dl_for_check.scala 1188:23:@2815.4]
  wire  dat_out_mask_38; // @[NV_NVDLA_CSC_dl_for_check.scala 1188:23:@2815.4]
  wire  dat_out_mask_39; // @[NV_NVDLA_CSC_dl_for_check.scala 1188:23:@2815.4]
  wire  dat_out_mask_40; // @[NV_NVDLA_CSC_dl_for_check.scala 1188:23:@2815.4]
  wire  dat_out_mask_41; // @[NV_NVDLA_CSC_dl_for_check.scala 1188:23:@2815.4]
  wire  dat_out_mask_42; // @[NV_NVDLA_CSC_dl_for_check.scala 1188:23:@2815.4]
  wire  dat_out_mask_43; // @[NV_NVDLA_CSC_dl_for_check.scala 1188:23:@2815.4]
  wire  dat_out_mask_44; // @[NV_NVDLA_CSC_dl_for_check.scala 1188:23:@2815.4]
  wire  dat_out_mask_45; // @[NV_NVDLA_CSC_dl_for_check.scala 1188:23:@2815.4]
  wire  dat_out_mask_46; // @[NV_NVDLA_CSC_dl_for_check.scala 1188:23:@2815.4]
  wire  dat_out_mask_47; // @[NV_NVDLA_CSC_dl_for_check.scala 1188:23:@2815.4]
  wire  dat_out_mask_48; // @[NV_NVDLA_CSC_dl_for_check.scala 1188:23:@2815.4]
  wire  dat_out_mask_49; // @[NV_NVDLA_CSC_dl_for_check.scala 1188:23:@2815.4]
  wire  dat_out_mask_50; // @[NV_NVDLA_CSC_dl_for_check.scala 1188:23:@2815.4]
  wire  dat_out_mask_51; // @[NV_NVDLA_CSC_dl_for_check.scala 1188:23:@2815.4]
  wire  dat_out_mask_52; // @[NV_NVDLA_CSC_dl_for_check.scala 1188:23:@2815.4]
  wire  dat_out_mask_53; // @[NV_NVDLA_CSC_dl_for_check.scala 1188:23:@2815.4]
  wire  dat_out_mask_54; // @[NV_NVDLA_CSC_dl_for_check.scala 1188:23:@2815.4]
  wire  dat_out_mask_55; // @[NV_NVDLA_CSC_dl_for_check.scala 1188:23:@2815.4]
  wire  dat_out_mask_56; // @[NV_NVDLA_CSC_dl_for_check.scala 1188:23:@2815.4]
  wire  dat_out_mask_57; // @[NV_NVDLA_CSC_dl_for_check.scala 1188:23:@2815.4]
  wire  dat_out_mask_58; // @[NV_NVDLA_CSC_dl_for_check.scala 1188:23:@2815.4]
  wire  dat_out_mask_59; // @[NV_NVDLA_CSC_dl_for_check.scala 1188:23:@2815.4]
  wire  dat_out_mask_60; // @[NV_NVDLA_CSC_dl_for_check.scala 1188:23:@2815.4]
  wire  dat_out_mask_61; // @[NV_NVDLA_CSC_dl_for_check.scala 1188:23:@2815.4]
  wire  dat_out_mask_62; // @[NV_NVDLA_CSC_dl_for_check.scala 1188:23:@2815.4]
  wire  dat_out_mask_63; // @[NV_NVDLA_CSC_dl_for_check.scala 1188:23:@2815.4]
  wire  _T_4435; // @[NV_NVDLA_CSC_dl_for_check.scala 1192:19:@2817.4]
  wire  _GEN_294; // @[NV_NVDLA_CSC_dl_for_check.scala 1192:33:@2818.4]
  wire  _GEN_295; // @[NV_NVDLA_CSC_dl_for_check.scala 1192:33:@2818.4]
  wire  _GEN_296; // @[NV_NVDLA_CSC_dl_for_check.scala 1192:33:@2818.4]
  wire  _GEN_297; // @[NV_NVDLA_CSC_dl_for_check.scala 1192:33:@2818.4]
  wire  _GEN_298; // @[NV_NVDLA_CSC_dl_for_check.scala 1192:33:@2818.4]
  wire  _GEN_299; // @[NV_NVDLA_CSC_dl_for_check.scala 1192:33:@2818.4]
  wire  _GEN_300; // @[NV_NVDLA_CSC_dl_for_check.scala 1192:33:@2818.4]
  wire  _GEN_301; // @[NV_NVDLA_CSC_dl_for_check.scala 1192:33:@2818.4]
  wire  _GEN_302; // @[NV_NVDLA_CSC_dl_for_check.scala 1192:33:@2818.4]
  wire  _GEN_303; // @[NV_NVDLA_CSC_dl_for_check.scala 1192:33:@2818.4]
  wire  _GEN_304; // @[NV_NVDLA_CSC_dl_for_check.scala 1192:33:@2818.4]
  wire  _GEN_305; // @[NV_NVDLA_CSC_dl_for_check.scala 1192:33:@2818.4]
  wire  _GEN_306; // @[NV_NVDLA_CSC_dl_for_check.scala 1192:33:@2818.4]
  wire  _GEN_307; // @[NV_NVDLA_CSC_dl_for_check.scala 1192:33:@2818.4]
  wire  _GEN_308; // @[NV_NVDLA_CSC_dl_for_check.scala 1192:33:@2818.4]
  wire  _GEN_309; // @[NV_NVDLA_CSC_dl_for_check.scala 1192:33:@2818.4]
  wire  _GEN_310; // @[NV_NVDLA_CSC_dl_for_check.scala 1192:33:@2818.4]
  wire  _GEN_311; // @[NV_NVDLA_CSC_dl_for_check.scala 1192:33:@2818.4]
  wire  _GEN_312; // @[NV_NVDLA_CSC_dl_for_check.scala 1192:33:@2818.4]
  wire  _GEN_313; // @[NV_NVDLA_CSC_dl_for_check.scala 1192:33:@2818.4]
  wire  _GEN_314; // @[NV_NVDLA_CSC_dl_for_check.scala 1192:33:@2818.4]
  wire  _GEN_315; // @[NV_NVDLA_CSC_dl_for_check.scala 1192:33:@2818.4]
  wire  _GEN_316; // @[NV_NVDLA_CSC_dl_for_check.scala 1192:33:@2818.4]
  wire  _GEN_317; // @[NV_NVDLA_CSC_dl_for_check.scala 1192:33:@2818.4]
  wire  _GEN_318; // @[NV_NVDLA_CSC_dl_for_check.scala 1192:33:@2818.4]
  wire  _GEN_319; // @[NV_NVDLA_CSC_dl_for_check.scala 1192:33:@2818.4]
  wire  _GEN_320; // @[NV_NVDLA_CSC_dl_for_check.scala 1192:33:@2818.4]
  wire  _GEN_321; // @[NV_NVDLA_CSC_dl_for_check.scala 1192:33:@2818.4]
  wire  _GEN_322; // @[NV_NVDLA_CSC_dl_for_check.scala 1192:33:@2818.4]
  wire  _GEN_323; // @[NV_NVDLA_CSC_dl_for_check.scala 1192:33:@2818.4]
  wire  _GEN_324; // @[NV_NVDLA_CSC_dl_for_check.scala 1192:33:@2818.4]
  wire  _GEN_325; // @[NV_NVDLA_CSC_dl_for_check.scala 1192:33:@2818.4]
  wire  _GEN_326; // @[NV_NVDLA_CSC_dl_for_check.scala 1192:33:@2818.4]
  wire  _GEN_327; // @[NV_NVDLA_CSC_dl_for_check.scala 1192:33:@2818.4]
  wire  _GEN_328; // @[NV_NVDLA_CSC_dl_for_check.scala 1192:33:@2818.4]
  wire  _GEN_329; // @[NV_NVDLA_CSC_dl_for_check.scala 1192:33:@2818.4]
  wire  _GEN_330; // @[NV_NVDLA_CSC_dl_for_check.scala 1192:33:@2818.4]
  wire  _GEN_331; // @[NV_NVDLA_CSC_dl_for_check.scala 1192:33:@2818.4]
  wire  _GEN_332; // @[NV_NVDLA_CSC_dl_for_check.scala 1192:33:@2818.4]
  wire  _GEN_333; // @[NV_NVDLA_CSC_dl_for_check.scala 1192:33:@2818.4]
  wire  _GEN_334; // @[NV_NVDLA_CSC_dl_for_check.scala 1192:33:@2818.4]
  wire  _GEN_335; // @[NV_NVDLA_CSC_dl_for_check.scala 1192:33:@2818.4]
  wire  _GEN_336; // @[NV_NVDLA_CSC_dl_for_check.scala 1192:33:@2818.4]
  wire  _GEN_337; // @[NV_NVDLA_CSC_dl_for_check.scala 1192:33:@2818.4]
  wire  _GEN_338; // @[NV_NVDLA_CSC_dl_for_check.scala 1192:33:@2818.4]
  wire  _GEN_339; // @[NV_NVDLA_CSC_dl_for_check.scala 1192:33:@2818.4]
  wire  _GEN_340; // @[NV_NVDLA_CSC_dl_for_check.scala 1192:33:@2818.4]
  wire  _GEN_341; // @[NV_NVDLA_CSC_dl_for_check.scala 1192:33:@2818.4]
  wire  _GEN_342; // @[NV_NVDLA_CSC_dl_for_check.scala 1192:33:@2818.4]
  wire  _GEN_343; // @[NV_NVDLA_CSC_dl_for_check.scala 1192:33:@2818.4]
  wire  _GEN_344; // @[NV_NVDLA_CSC_dl_for_check.scala 1192:33:@2818.4]
  wire  _GEN_345; // @[NV_NVDLA_CSC_dl_for_check.scala 1192:33:@2818.4]
  wire  _GEN_346; // @[NV_NVDLA_CSC_dl_for_check.scala 1192:33:@2818.4]
  wire  _GEN_347; // @[NV_NVDLA_CSC_dl_for_check.scala 1192:33:@2818.4]
  wire  _GEN_348; // @[NV_NVDLA_CSC_dl_for_check.scala 1192:33:@2818.4]
  wire  _GEN_349; // @[NV_NVDLA_CSC_dl_for_check.scala 1192:33:@2818.4]
  wire  _GEN_350; // @[NV_NVDLA_CSC_dl_for_check.scala 1192:33:@2818.4]
  wire  _GEN_351; // @[NV_NVDLA_CSC_dl_for_check.scala 1192:33:@2818.4]
  wire  _GEN_352; // @[NV_NVDLA_CSC_dl_for_check.scala 1192:33:@2818.4]
  wire  _GEN_353; // @[NV_NVDLA_CSC_dl_for_check.scala 1192:33:@2818.4]
  wire  _GEN_354; // @[NV_NVDLA_CSC_dl_for_check.scala 1192:33:@2818.4]
  wire  _GEN_355; // @[NV_NVDLA_CSC_dl_for_check.scala 1192:33:@2818.4]
  wire  _GEN_356; // @[NV_NVDLA_CSC_dl_for_check.scala 1192:33:@2818.4]
  wire  _GEN_357; // @[NV_NVDLA_CSC_dl_for_check.scala 1192:33:@2818.4]
  wire [8:0] _GEN_358; // @[NV_NVDLA_CSC_dl_for_check.scala 1195:19:@2884.4]
  reg  dl_out_pvld_d1; // @[NV_NVDLA_CSC_dl_for_check.scala 1208:29:@3079.4]
  reg [31:0] _RAND_462;
  wire  _T_4438; // @[NV_NVDLA_CSC_dl_for_check.scala 1209:27:@3081.4]
  wire [8:0] sc2mac_dat_pd_w; // @[NV_NVDLA_CSC_dl_for_check.scala 1209:26:@3082.4]
  reg  _T_4442; // @[NV_NVDLA_CSC_dl_for_check.scala 1211:32:@3083.4]
  reg [31:0] _RAND_463;
  reg  _T_4445; // @[NV_NVDLA_CSC_dl_for_check.scala 1212:32:@3086.4]
  reg [31:0] _RAND_464;
  wire  _T_4447; // @[NV_NVDLA_CSC_dl_for_check.scala 1213:80:@3089.4]
  reg [8:0] _T_4449; // @[Reg.scala 19:20:@3090.4]
  reg [31:0] _RAND_465;
  wire [8:0] _GEN_423; // @[Reg.scala 20:19:@3091.4]
  reg [8:0] _T_4453; // @[Reg.scala 19:20:@3096.4]
  reg [31:0] _RAND_466;
  wire [8:0] _GEN_424; // @[Reg.scala 20:19:@3097.4]
  reg  _T_4721_0; // @[Reg.scala 19:20:@3167.4]
  reg [31:0] _RAND_467;
  reg  _T_4721_1; // @[Reg.scala 19:20:@3167.4]
  reg [31:0] _RAND_468;
  reg  _T_4721_2; // @[Reg.scala 19:20:@3167.4]
  reg [31:0] _RAND_469;
  reg  _T_4721_3; // @[Reg.scala 19:20:@3167.4]
  reg [31:0] _RAND_470;
  reg  _T_4721_4; // @[Reg.scala 19:20:@3167.4]
  reg [31:0] _RAND_471;
  reg  _T_4721_5; // @[Reg.scala 19:20:@3167.4]
  reg [31:0] _RAND_472;
  reg  _T_4721_6; // @[Reg.scala 19:20:@3167.4]
  reg [31:0] _RAND_473;
  reg  _T_4721_7; // @[Reg.scala 19:20:@3167.4]
  reg [31:0] _RAND_474;
  reg  _T_4721_8; // @[Reg.scala 19:20:@3167.4]
  reg [31:0] _RAND_475;
  reg  _T_4721_9; // @[Reg.scala 19:20:@3167.4]
  reg [31:0] _RAND_476;
  reg  _T_4721_10; // @[Reg.scala 19:20:@3167.4]
  reg [31:0] _RAND_477;
  reg  _T_4721_11; // @[Reg.scala 19:20:@3167.4]
  reg [31:0] _RAND_478;
  reg  _T_4721_12; // @[Reg.scala 19:20:@3167.4]
  reg [31:0] _RAND_479;
  reg  _T_4721_13; // @[Reg.scala 19:20:@3167.4]
  reg [31:0] _RAND_480;
  reg  _T_4721_14; // @[Reg.scala 19:20:@3167.4]
  reg [31:0] _RAND_481;
  reg  _T_4721_15; // @[Reg.scala 19:20:@3167.4]
  reg [31:0] _RAND_482;
  reg  _T_4721_16; // @[Reg.scala 19:20:@3167.4]
  reg [31:0] _RAND_483;
  reg  _T_4721_17; // @[Reg.scala 19:20:@3167.4]
  reg [31:0] _RAND_484;
  reg  _T_4721_18; // @[Reg.scala 19:20:@3167.4]
  reg [31:0] _RAND_485;
  reg  _T_4721_19; // @[Reg.scala 19:20:@3167.4]
  reg [31:0] _RAND_486;
  reg  _T_4721_20; // @[Reg.scala 19:20:@3167.4]
  reg [31:0] _RAND_487;
  reg  _T_4721_21; // @[Reg.scala 19:20:@3167.4]
  reg [31:0] _RAND_488;
  reg  _T_4721_22; // @[Reg.scala 19:20:@3167.4]
  reg [31:0] _RAND_489;
  reg  _T_4721_23; // @[Reg.scala 19:20:@3167.4]
  reg [31:0] _RAND_490;
  reg  _T_4721_24; // @[Reg.scala 19:20:@3167.4]
  reg [31:0] _RAND_491;
  reg  _T_4721_25; // @[Reg.scala 19:20:@3167.4]
  reg [31:0] _RAND_492;
  reg  _T_4721_26; // @[Reg.scala 19:20:@3167.4]
  reg [31:0] _RAND_493;
  reg  _T_4721_27; // @[Reg.scala 19:20:@3167.4]
  reg [31:0] _RAND_494;
  reg  _T_4721_28; // @[Reg.scala 19:20:@3167.4]
  reg [31:0] _RAND_495;
  reg  _T_4721_29; // @[Reg.scala 19:20:@3167.4]
  reg [31:0] _RAND_496;
  reg  _T_4721_30; // @[Reg.scala 19:20:@3167.4]
  reg [31:0] _RAND_497;
  reg  _T_4721_31; // @[Reg.scala 19:20:@3167.4]
  reg [31:0] _RAND_498;
  reg  _T_4721_32; // @[Reg.scala 19:20:@3167.4]
  reg [31:0] _RAND_499;
  reg  _T_4721_33; // @[Reg.scala 19:20:@3167.4]
  reg [31:0] _RAND_500;
  reg  _T_4721_34; // @[Reg.scala 19:20:@3167.4]
  reg [31:0] _RAND_501;
  reg  _T_4721_35; // @[Reg.scala 19:20:@3167.4]
  reg [31:0] _RAND_502;
  reg  _T_4721_36; // @[Reg.scala 19:20:@3167.4]
  reg [31:0] _RAND_503;
  reg  _T_4721_37; // @[Reg.scala 19:20:@3167.4]
  reg [31:0] _RAND_504;
  reg  _T_4721_38; // @[Reg.scala 19:20:@3167.4]
  reg [31:0] _RAND_505;
  reg  _T_4721_39; // @[Reg.scala 19:20:@3167.4]
  reg [31:0] _RAND_506;
  reg  _T_4721_40; // @[Reg.scala 19:20:@3167.4]
  reg [31:0] _RAND_507;
  reg  _T_4721_41; // @[Reg.scala 19:20:@3167.4]
  reg [31:0] _RAND_508;
  reg  _T_4721_42; // @[Reg.scala 19:20:@3167.4]
  reg [31:0] _RAND_509;
  reg  _T_4721_43; // @[Reg.scala 19:20:@3167.4]
  reg [31:0] _RAND_510;
  reg  _T_4721_44; // @[Reg.scala 19:20:@3167.4]
  reg [31:0] _RAND_511;
  reg  _T_4721_45; // @[Reg.scala 19:20:@3167.4]
  reg [31:0] _RAND_512;
  reg  _T_4721_46; // @[Reg.scala 19:20:@3167.4]
  reg [31:0] _RAND_513;
  reg  _T_4721_47; // @[Reg.scala 19:20:@3167.4]
  reg [31:0] _RAND_514;
  reg  _T_4721_48; // @[Reg.scala 19:20:@3167.4]
  reg [31:0] _RAND_515;
  reg  _T_4721_49; // @[Reg.scala 19:20:@3167.4]
  reg [31:0] _RAND_516;
  reg  _T_4721_50; // @[Reg.scala 19:20:@3167.4]
  reg [31:0] _RAND_517;
  reg  _T_4721_51; // @[Reg.scala 19:20:@3167.4]
  reg [31:0] _RAND_518;
  reg  _T_4721_52; // @[Reg.scala 19:20:@3167.4]
  reg [31:0] _RAND_519;
  reg  _T_4721_53; // @[Reg.scala 19:20:@3167.4]
  reg [31:0] _RAND_520;
  reg  _T_4721_54; // @[Reg.scala 19:20:@3167.4]
  reg [31:0] _RAND_521;
  reg  _T_4721_55; // @[Reg.scala 19:20:@3167.4]
  reg [31:0] _RAND_522;
  reg  _T_4721_56; // @[Reg.scala 19:20:@3167.4]
  reg [31:0] _RAND_523;
  reg  _T_4721_57; // @[Reg.scala 19:20:@3167.4]
  reg [31:0] _RAND_524;
  reg  _T_4721_58; // @[Reg.scala 19:20:@3167.4]
  reg [31:0] _RAND_525;
  reg  _T_4721_59; // @[Reg.scala 19:20:@3167.4]
  reg [31:0] _RAND_526;
  reg  _T_4721_60; // @[Reg.scala 19:20:@3167.4]
  reg [31:0] _RAND_527;
  reg  _T_4721_61; // @[Reg.scala 19:20:@3167.4]
  reg [31:0] _RAND_528;
  reg  _T_4721_62; // @[Reg.scala 19:20:@3167.4]
  reg [31:0] _RAND_529;
  reg  _T_4721_63; // @[Reg.scala 19:20:@3167.4]
  reg [31:0] _RAND_530;
  wire  _GEN_425; // @[Reg.scala 20:19:@3168.4]
  wire  _GEN_426; // @[Reg.scala 20:19:@3168.4]
  wire  _GEN_427; // @[Reg.scala 20:19:@3168.4]
  wire  _GEN_428; // @[Reg.scala 20:19:@3168.4]
  wire  _GEN_429; // @[Reg.scala 20:19:@3168.4]
  wire  _GEN_430; // @[Reg.scala 20:19:@3168.4]
  wire  _GEN_431; // @[Reg.scala 20:19:@3168.4]
  wire  _GEN_432; // @[Reg.scala 20:19:@3168.4]
  wire  _GEN_433; // @[Reg.scala 20:19:@3168.4]
  wire  _GEN_434; // @[Reg.scala 20:19:@3168.4]
  wire  _GEN_435; // @[Reg.scala 20:19:@3168.4]
  wire  _GEN_436; // @[Reg.scala 20:19:@3168.4]
  wire  _GEN_437; // @[Reg.scala 20:19:@3168.4]
  wire  _GEN_438; // @[Reg.scala 20:19:@3168.4]
  wire  _GEN_439; // @[Reg.scala 20:19:@3168.4]
  wire  _GEN_440; // @[Reg.scala 20:19:@3168.4]
  wire  _GEN_441; // @[Reg.scala 20:19:@3168.4]
  wire  _GEN_442; // @[Reg.scala 20:19:@3168.4]
  wire  _GEN_443; // @[Reg.scala 20:19:@3168.4]
  wire  _GEN_444; // @[Reg.scala 20:19:@3168.4]
  wire  _GEN_445; // @[Reg.scala 20:19:@3168.4]
  wire  _GEN_446; // @[Reg.scala 20:19:@3168.4]
  wire  _GEN_447; // @[Reg.scala 20:19:@3168.4]
  wire  _GEN_448; // @[Reg.scala 20:19:@3168.4]
  wire  _GEN_449; // @[Reg.scala 20:19:@3168.4]
  wire  _GEN_450; // @[Reg.scala 20:19:@3168.4]
  wire  _GEN_451; // @[Reg.scala 20:19:@3168.4]
  wire  _GEN_452; // @[Reg.scala 20:19:@3168.4]
  wire  _GEN_453; // @[Reg.scala 20:19:@3168.4]
  wire  _GEN_454; // @[Reg.scala 20:19:@3168.4]
  wire  _GEN_455; // @[Reg.scala 20:19:@3168.4]
  wire  _GEN_456; // @[Reg.scala 20:19:@3168.4]
  wire  _GEN_457; // @[Reg.scala 20:19:@3168.4]
  wire  _GEN_458; // @[Reg.scala 20:19:@3168.4]
  wire  _GEN_459; // @[Reg.scala 20:19:@3168.4]
  wire  _GEN_460; // @[Reg.scala 20:19:@3168.4]
  wire  _GEN_461; // @[Reg.scala 20:19:@3168.4]
  wire  _GEN_462; // @[Reg.scala 20:19:@3168.4]
  wire  _GEN_463; // @[Reg.scala 20:19:@3168.4]
  wire  _GEN_464; // @[Reg.scala 20:19:@3168.4]
  wire  _GEN_465; // @[Reg.scala 20:19:@3168.4]
  wire  _GEN_466; // @[Reg.scala 20:19:@3168.4]
  wire  _GEN_467; // @[Reg.scala 20:19:@3168.4]
  wire  _GEN_468; // @[Reg.scala 20:19:@3168.4]
  wire  _GEN_469; // @[Reg.scala 20:19:@3168.4]
  wire  _GEN_470; // @[Reg.scala 20:19:@3168.4]
  wire  _GEN_471; // @[Reg.scala 20:19:@3168.4]
  wire  _GEN_472; // @[Reg.scala 20:19:@3168.4]
  wire  _GEN_473; // @[Reg.scala 20:19:@3168.4]
  wire  _GEN_474; // @[Reg.scala 20:19:@3168.4]
  wire  _GEN_475; // @[Reg.scala 20:19:@3168.4]
  wire  _GEN_476; // @[Reg.scala 20:19:@3168.4]
  wire  _GEN_477; // @[Reg.scala 20:19:@3168.4]
  wire  _GEN_478; // @[Reg.scala 20:19:@3168.4]
  wire  _GEN_479; // @[Reg.scala 20:19:@3168.4]
  wire  _GEN_480; // @[Reg.scala 20:19:@3168.4]
  wire  _GEN_481; // @[Reg.scala 20:19:@3168.4]
  wire  _GEN_482; // @[Reg.scala 20:19:@3168.4]
  wire  _GEN_483; // @[Reg.scala 20:19:@3168.4]
  wire  _GEN_484; // @[Reg.scala 20:19:@3168.4]
  wire  _GEN_485; // @[Reg.scala 20:19:@3168.4]
  wire  _GEN_486; // @[Reg.scala 20:19:@3168.4]
  wire  _GEN_487; // @[Reg.scala 20:19:@3168.4]
  wire  _GEN_488; // @[Reg.scala 20:19:@3168.4]
  wire [7:0] _T_4924; // @[NV_NVDLA_CSC_dl_for_check.scala 1215:122:@3240.4]
  wire [15:0] _T_4932; // @[NV_NVDLA_CSC_dl_for_check.scala 1215:122:@3248.4]
  wire [7:0] _T_4939; // @[NV_NVDLA_CSC_dl_for_check.scala 1215:122:@3255.4]
  wire [31:0] _T_4948; // @[NV_NVDLA_CSC_dl_for_check.scala 1215:122:@3264.4]
  wire [7:0] _T_4955; // @[NV_NVDLA_CSC_dl_for_check.scala 1215:122:@3271.4]
  wire [15:0] _T_4963; // @[NV_NVDLA_CSC_dl_for_check.scala 1215:122:@3279.4]
  wire [7:0] _T_4970; // @[NV_NVDLA_CSC_dl_for_check.scala 1215:122:@3286.4]
  wire [31:0] _T_4979; // @[NV_NVDLA_CSC_dl_for_check.scala 1215:122:@3295.4]
  reg  _T_5248_0; // @[Reg.scala 19:20:@3364.4]
  reg [31:0] _RAND_531;
  reg  _T_5248_1; // @[Reg.scala 19:20:@3364.4]
  reg [31:0] _RAND_532;
  reg  _T_5248_2; // @[Reg.scala 19:20:@3364.4]
  reg [31:0] _RAND_533;
  reg  _T_5248_3; // @[Reg.scala 19:20:@3364.4]
  reg [31:0] _RAND_534;
  reg  _T_5248_4; // @[Reg.scala 19:20:@3364.4]
  reg [31:0] _RAND_535;
  reg  _T_5248_5; // @[Reg.scala 19:20:@3364.4]
  reg [31:0] _RAND_536;
  reg  _T_5248_6; // @[Reg.scala 19:20:@3364.4]
  reg [31:0] _RAND_537;
  reg  _T_5248_7; // @[Reg.scala 19:20:@3364.4]
  reg [31:0] _RAND_538;
  reg  _T_5248_8; // @[Reg.scala 19:20:@3364.4]
  reg [31:0] _RAND_539;
  reg  _T_5248_9; // @[Reg.scala 19:20:@3364.4]
  reg [31:0] _RAND_540;
  reg  _T_5248_10; // @[Reg.scala 19:20:@3364.4]
  reg [31:0] _RAND_541;
  reg  _T_5248_11; // @[Reg.scala 19:20:@3364.4]
  reg [31:0] _RAND_542;
  reg  _T_5248_12; // @[Reg.scala 19:20:@3364.4]
  reg [31:0] _RAND_543;
  reg  _T_5248_13; // @[Reg.scala 19:20:@3364.4]
  reg [31:0] _RAND_544;
  reg  _T_5248_14; // @[Reg.scala 19:20:@3364.4]
  reg [31:0] _RAND_545;
  reg  _T_5248_15; // @[Reg.scala 19:20:@3364.4]
  reg [31:0] _RAND_546;
  reg  _T_5248_16; // @[Reg.scala 19:20:@3364.4]
  reg [31:0] _RAND_547;
  reg  _T_5248_17; // @[Reg.scala 19:20:@3364.4]
  reg [31:0] _RAND_548;
  reg  _T_5248_18; // @[Reg.scala 19:20:@3364.4]
  reg [31:0] _RAND_549;
  reg  _T_5248_19; // @[Reg.scala 19:20:@3364.4]
  reg [31:0] _RAND_550;
  reg  _T_5248_20; // @[Reg.scala 19:20:@3364.4]
  reg [31:0] _RAND_551;
  reg  _T_5248_21; // @[Reg.scala 19:20:@3364.4]
  reg [31:0] _RAND_552;
  reg  _T_5248_22; // @[Reg.scala 19:20:@3364.4]
  reg [31:0] _RAND_553;
  reg  _T_5248_23; // @[Reg.scala 19:20:@3364.4]
  reg [31:0] _RAND_554;
  reg  _T_5248_24; // @[Reg.scala 19:20:@3364.4]
  reg [31:0] _RAND_555;
  reg  _T_5248_25; // @[Reg.scala 19:20:@3364.4]
  reg [31:0] _RAND_556;
  reg  _T_5248_26; // @[Reg.scala 19:20:@3364.4]
  reg [31:0] _RAND_557;
  reg  _T_5248_27; // @[Reg.scala 19:20:@3364.4]
  reg [31:0] _RAND_558;
  reg  _T_5248_28; // @[Reg.scala 19:20:@3364.4]
  reg [31:0] _RAND_559;
  reg  _T_5248_29; // @[Reg.scala 19:20:@3364.4]
  reg [31:0] _RAND_560;
  reg  _T_5248_30; // @[Reg.scala 19:20:@3364.4]
  reg [31:0] _RAND_561;
  reg  _T_5248_31; // @[Reg.scala 19:20:@3364.4]
  reg [31:0] _RAND_562;
  reg  _T_5248_32; // @[Reg.scala 19:20:@3364.4]
  reg [31:0] _RAND_563;
  reg  _T_5248_33; // @[Reg.scala 19:20:@3364.4]
  reg [31:0] _RAND_564;
  reg  _T_5248_34; // @[Reg.scala 19:20:@3364.4]
  reg [31:0] _RAND_565;
  reg  _T_5248_35; // @[Reg.scala 19:20:@3364.4]
  reg [31:0] _RAND_566;
  reg  _T_5248_36; // @[Reg.scala 19:20:@3364.4]
  reg [31:0] _RAND_567;
  reg  _T_5248_37; // @[Reg.scala 19:20:@3364.4]
  reg [31:0] _RAND_568;
  reg  _T_5248_38; // @[Reg.scala 19:20:@3364.4]
  reg [31:0] _RAND_569;
  reg  _T_5248_39; // @[Reg.scala 19:20:@3364.4]
  reg [31:0] _RAND_570;
  reg  _T_5248_40; // @[Reg.scala 19:20:@3364.4]
  reg [31:0] _RAND_571;
  reg  _T_5248_41; // @[Reg.scala 19:20:@3364.4]
  reg [31:0] _RAND_572;
  reg  _T_5248_42; // @[Reg.scala 19:20:@3364.4]
  reg [31:0] _RAND_573;
  reg  _T_5248_43; // @[Reg.scala 19:20:@3364.4]
  reg [31:0] _RAND_574;
  reg  _T_5248_44; // @[Reg.scala 19:20:@3364.4]
  reg [31:0] _RAND_575;
  reg  _T_5248_45; // @[Reg.scala 19:20:@3364.4]
  reg [31:0] _RAND_576;
  reg  _T_5248_46; // @[Reg.scala 19:20:@3364.4]
  reg [31:0] _RAND_577;
  reg  _T_5248_47; // @[Reg.scala 19:20:@3364.4]
  reg [31:0] _RAND_578;
  reg  _T_5248_48; // @[Reg.scala 19:20:@3364.4]
  reg [31:0] _RAND_579;
  reg  _T_5248_49; // @[Reg.scala 19:20:@3364.4]
  reg [31:0] _RAND_580;
  reg  _T_5248_50; // @[Reg.scala 19:20:@3364.4]
  reg [31:0] _RAND_581;
  reg  _T_5248_51; // @[Reg.scala 19:20:@3364.4]
  reg [31:0] _RAND_582;
  reg  _T_5248_52; // @[Reg.scala 19:20:@3364.4]
  reg [31:0] _RAND_583;
  reg  _T_5248_53; // @[Reg.scala 19:20:@3364.4]
  reg [31:0] _RAND_584;
  reg  _T_5248_54; // @[Reg.scala 19:20:@3364.4]
  reg [31:0] _RAND_585;
  reg  _T_5248_55; // @[Reg.scala 19:20:@3364.4]
  reg [31:0] _RAND_586;
  reg  _T_5248_56; // @[Reg.scala 19:20:@3364.4]
  reg [31:0] _RAND_587;
  reg  _T_5248_57; // @[Reg.scala 19:20:@3364.4]
  reg [31:0] _RAND_588;
  reg  _T_5248_58; // @[Reg.scala 19:20:@3364.4]
  reg [31:0] _RAND_589;
  reg  _T_5248_59; // @[Reg.scala 19:20:@3364.4]
  reg [31:0] _RAND_590;
  reg  _T_5248_60; // @[Reg.scala 19:20:@3364.4]
  reg [31:0] _RAND_591;
  reg  _T_5248_61; // @[Reg.scala 19:20:@3364.4]
  reg [31:0] _RAND_592;
  reg  _T_5248_62; // @[Reg.scala 19:20:@3364.4]
  reg [31:0] _RAND_593;
  reg  _T_5248_63; // @[Reg.scala 19:20:@3364.4]
  reg [31:0] _RAND_594;
  wire  _GEN_489; // @[Reg.scala 20:19:@3365.4]
  wire  _GEN_490; // @[Reg.scala 20:19:@3365.4]
  wire  _GEN_491; // @[Reg.scala 20:19:@3365.4]
  wire  _GEN_492; // @[Reg.scala 20:19:@3365.4]
  wire  _GEN_493; // @[Reg.scala 20:19:@3365.4]
  wire  _GEN_494; // @[Reg.scala 20:19:@3365.4]
  wire  _GEN_495; // @[Reg.scala 20:19:@3365.4]
  wire  _GEN_496; // @[Reg.scala 20:19:@3365.4]
  wire  _GEN_497; // @[Reg.scala 20:19:@3365.4]
  wire  _GEN_498; // @[Reg.scala 20:19:@3365.4]
  wire  _GEN_499; // @[Reg.scala 20:19:@3365.4]
  wire  _GEN_500; // @[Reg.scala 20:19:@3365.4]
  wire  _GEN_501; // @[Reg.scala 20:19:@3365.4]
  wire  _GEN_502; // @[Reg.scala 20:19:@3365.4]
  wire  _GEN_503; // @[Reg.scala 20:19:@3365.4]
  wire  _GEN_504; // @[Reg.scala 20:19:@3365.4]
  wire  _GEN_505; // @[Reg.scala 20:19:@3365.4]
  wire  _GEN_506; // @[Reg.scala 20:19:@3365.4]
  wire  _GEN_507; // @[Reg.scala 20:19:@3365.4]
  wire  _GEN_508; // @[Reg.scala 20:19:@3365.4]
  wire  _GEN_509; // @[Reg.scala 20:19:@3365.4]
  wire  _GEN_510; // @[Reg.scala 20:19:@3365.4]
  wire  _GEN_511; // @[Reg.scala 20:19:@3365.4]
  wire  _GEN_512; // @[Reg.scala 20:19:@3365.4]
  wire  _GEN_513; // @[Reg.scala 20:19:@3365.4]
  wire  _GEN_514; // @[Reg.scala 20:19:@3365.4]
  wire  _GEN_515; // @[Reg.scala 20:19:@3365.4]
  wire  _GEN_516; // @[Reg.scala 20:19:@3365.4]
  wire  _GEN_517; // @[Reg.scala 20:19:@3365.4]
  wire  _GEN_518; // @[Reg.scala 20:19:@3365.4]
  wire  _GEN_519; // @[Reg.scala 20:19:@3365.4]
  wire  _GEN_520; // @[Reg.scala 20:19:@3365.4]
  wire  _GEN_521; // @[Reg.scala 20:19:@3365.4]
  wire  _GEN_522; // @[Reg.scala 20:19:@3365.4]
  wire  _GEN_523; // @[Reg.scala 20:19:@3365.4]
  wire  _GEN_524; // @[Reg.scala 20:19:@3365.4]
  wire  _GEN_525; // @[Reg.scala 20:19:@3365.4]
  wire  _GEN_526; // @[Reg.scala 20:19:@3365.4]
  wire  _GEN_527; // @[Reg.scala 20:19:@3365.4]
  wire  _GEN_528; // @[Reg.scala 20:19:@3365.4]
  wire  _GEN_529; // @[Reg.scala 20:19:@3365.4]
  wire  _GEN_530; // @[Reg.scala 20:19:@3365.4]
  wire  _GEN_531; // @[Reg.scala 20:19:@3365.4]
  wire  _GEN_532; // @[Reg.scala 20:19:@3365.4]
  wire  _GEN_533; // @[Reg.scala 20:19:@3365.4]
  wire  _GEN_534; // @[Reg.scala 20:19:@3365.4]
  wire  _GEN_535; // @[Reg.scala 20:19:@3365.4]
  wire  _GEN_536; // @[Reg.scala 20:19:@3365.4]
  wire  _GEN_537; // @[Reg.scala 20:19:@3365.4]
  wire  _GEN_538; // @[Reg.scala 20:19:@3365.4]
  wire  _GEN_539; // @[Reg.scala 20:19:@3365.4]
  wire  _GEN_540; // @[Reg.scala 20:19:@3365.4]
  wire  _GEN_541; // @[Reg.scala 20:19:@3365.4]
  wire  _GEN_542; // @[Reg.scala 20:19:@3365.4]
  wire  _GEN_543; // @[Reg.scala 20:19:@3365.4]
  wire  _GEN_544; // @[Reg.scala 20:19:@3365.4]
  wire  _GEN_545; // @[Reg.scala 20:19:@3365.4]
  wire  _GEN_546; // @[Reg.scala 20:19:@3365.4]
  wire  _GEN_547; // @[Reg.scala 20:19:@3365.4]
  wire  _GEN_548; // @[Reg.scala 20:19:@3365.4]
  wire  _GEN_549; // @[Reg.scala 20:19:@3365.4]
  wire  _GEN_550; // @[Reg.scala 20:19:@3365.4]
  wire  _GEN_551; // @[Reg.scala 20:19:@3365.4]
  wire  _GEN_552; // @[Reg.scala 20:19:@3365.4]
  wire [7:0] _T_5451; // @[NV_NVDLA_CSC_dl_for_check.scala 1216:122:@3437.4]
  wire [15:0] _T_5459; // @[NV_NVDLA_CSC_dl_for_check.scala 1216:122:@3445.4]
  wire [7:0] _T_5466; // @[NV_NVDLA_CSC_dl_for_check.scala 1216:122:@3452.4]
  wire [31:0] _T_5475; // @[NV_NVDLA_CSC_dl_for_check.scala 1216:122:@3461.4]
  wire [7:0] _T_5482; // @[NV_NVDLA_CSC_dl_for_check.scala 1216:122:@3468.4]
  wire [15:0] _T_5490; // @[NV_NVDLA_CSC_dl_for_check.scala 1216:122:@3476.4]
  wire [7:0] _T_5497; // @[NV_NVDLA_CSC_dl_for_check.scala 1216:122:@3483.4]
  wire [31:0] _T_5506; // @[NV_NVDLA_CSC_dl_for_check.scala 1216:122:@3492.4]
  reg [7:0] _T_5509; // @[Reg.scala 11:16:@3495.4]
  reg [31:0] _RAND_595;
  reg [7:0] _T_5511; // @[Reg.scala 11:16:@3500.4]
  reg [31:0] _RAND_596;
  reg [7:0] _T_5513; // @[Reg.scala 11:16:@3505.4]
  reg [31:0] _RAND_597;
  reg [7:0] _T_5515; // @[Reg.scala 11:16:@3510.4]
  reg [31:0] _RAND_598;
  reg [7:0] _T_5517; // @[Reg.scala 11:16:@3515.4]
  reg [31:0] _RAND_599;
  reg [7:0] _T_5519; // @[Reg.scala 11:16:@3520.4]
  reg [31:0] _RAND_600;
  reg [7:0] _T_5521; // @[Reg.scala 11:16:@3525.4]
  reg [31:0] _RAND_601;
  reg [7:0] _T_5523; // @[Reg.scala 11:16:@3530.4]
  reg [31:0] _RAND_602;
  reg [7:0] _T_5525; // @[Reg.scala 11:16:@3535.4]
  reg [31:0] _RAND_603;
  reg [7:0] _T_5527; // @[Reg.scala 11:16:@3540.4]
  reg [31:0] _RAND_604;
  reg [7:0] _T_5529; // @[Reg.scala 11:16:@3545.4]
  reg [31:0] _RAND_605;
  reg [7:0] _T_5531; // @[Reg.scala 11:16:@3550.4]
  reg [31:0] _RAND_606;
  reg [7:0] _T_5533; // @[Reg.scala 11:16:@3555.4]
  reg [31:0] _RAND_607;
  reg [7:0] _T_5535; // @[Reg.scala 11:16:@3560.4]
  reg [31:0] _RAND_608;
  reg [7:0] _T_5537; // @[Reg.scala 11:16:@3565.4]
  reg [31:0] _RAND_609;
  reg [7:0] _T_5539; // @[Reg.scala 11:16:@3570.4]
  reg [31:0] _RAND_610;
  reg [7:0] _T_5541; // @[Reg.scala 11:16:@3575.4]
  reg [31:0] _RAND_611;
  reg [7:0] _T_5543; // @[Reg.scala 11:16:@3580.4]
  reg [31:0] _RAND_612;
  reg [7:0] _T_5545; // @[Reg.scala 11:16:@3585.4]
  reg [31:0] _RAND_613;
  reg [7:0] _T_5547; // @[Reg.scala 11:16:@3590.4]
  reg [31:0] _RAND_614;
  reg [7:0] _T_5549; // @[Reg.scala 11:16:@3595.4]
  reg [31:0] _RAND_615;
  reg [7:0] _T_5551; // @[Reg.scala 11:16:@3600.4]
  reg [31:0] _RAND_616;
  reg [7:0] _T_5553; // @[Reg.scala 11:16:@3605.4]
  reg [31:0] _RAND_617;
  reg [7:0] _T_5555; // @[Reg.scala 11:16:@3610.4]
  reg [31:0] _RAND_618;
  reg [7:0] _T_5557; // @[Reg.scala 11:16:@3615.4]
  reg [31:0] _RAND_619;
  reg [7:0] _T_5559; // @[Reg.scala 11:16:@3620.4]
  reg [31:0] _RAND_620;
  reg [7:0] _T_5561; // @[Reg.scala 11:16:@3625.4]
  reg [31:0] _RAND_621;
  reg [7:0] _T_5563; // @[Reg.scala 11:16:@3630.4]
  reg [31:0] _RAND_622;
  reg [7:0] _T_5565; // @[Reg.scala 11:16:@3635.4]
  reg [31:0] _RAND_623;
  reg [7:0] _T_5567; // @[Reg.scala 11:16:@3640.4]
  reg [31:0] _RAND_624;
  reg [7:0] _T_5569; // @[Reg.scala 11:16:@3645.4]
  reg [31:0] _RAND_625;
  reg [7:0] _T_5571; // @[Reg.scala 11:16:@3650.4]
  reg [31:0] _RAND_626;
  reg [7:0] _T_5573; // @[Reg.scala 11:16:@3655.4]
  reg [31:0] _RAND_627;
  reg [7:0] _T_5575; // @[Reg.scala 11:16:@3660.4]
  reg [31:0] _RAND_628;
  reg [7:0] _T_5577; // @[Reg.scala 11:16:@3665.4]
  reg [31:0] _RAND_629;
  reg [7:0] _T_5579; // @[Reg.scala 11:16:@3670.4]
  reg [31:0] _RAND_630;
  reg [7:0] _T_5581; // @[Reg.scala 11:16:@3675.4]
  reg [31:0] _RAND_631;
  reg [7:0] _T_5583; // @[Reg.scala 11:16:@3680.4]
  reg [31:0] _RAND_632;
  reg [7:0] _T_5585; // @[Reg.scala 11:16:@3685.4]
  reg [31:0] _RAND_633;
  reg [7:0] _T_5587; // @[Reg.scala 11:16:@3690.4]
  reg [31:0] _RAND_634;
  reg [7:0] _T_5589; // @[Reg.scala 11:16:@3695.4]
  reg [31:0] _RAND_635;
  reg [7:0] _T_5591; // @[Reg.scala 11:16:@3700.4]
  reg [31:0] _RAND_636;
  reg [7:0] _T_5593; // @[Reg.scala 11:16:@3705.4]
  reg [31:0] _RAND_637;
  reg [7:0] _T_5595; // @[Reg.scala 11:16:@3710.4]
  reg [31:0] _RAND_638;
  reg [7:0] _T_5597; // @[Reg.scala 11:16:@3715.4]
  reg [31:0] _RAND_639;
  reg [7:0] _T_5599; // @[Reg.scala 11:16:@3720.4]
  reg [31:0] _RAND_640;
  reg [7:0] _T_5601; // @[Reg.scala 11:16:@3725.4]
  reg [31:0] _RAND_641;
  reg [7:0] _T_5603; // @[Reg.scala 11:16:@3730.4]
  reg [31:0] _RAND_642;
  reg [7:0] _T_5605; // @[Reg.scala 11:16:@3735.4]
  reg [31:0] _RAND_643;
  reg [7:0] _T_5607; // @[Reg.scala 11:16:@3740.4]
  reg [31:0] _RAND_644;
  reg [7:0] _T_5609; // @[Reg.scala 11:16:@3745.4]
  reg [31:0] _RAND_645;
  reg [7:0] _T_5611; // @[Reg.scala 11:16:@3750.4]
  reg [31:0] _RAND_646;
  reg [7:0] _T_5613; // @[Reg.scala 11:16:@3755.4]
  reg [31:0] _RAND_647;
  reg [7:0] _T_5615; // @[Reg.scala 11:16:@3760.4]
  reg [31:0] _RAND_648;
  reg [7:0] _T_5617; // @[Reg.scala 11:16:@3765.4]
  reg [31:0] _RAND_649;
  reg [7:0] _T_5619; // @[Reg.scala 11:16:@3770.4]
  reg [31:0] _RAND_650;
  reg [7:0] _T_5621; // @[Reg.scala 11:16:@3775.4]
  reg [31:0] _RAND_651;
  reg [7:0] _T_5623; // @[Reg.scala 11:16:@3780.4]
  reg [31:0] _RAND_652;
  reg [7:0] _T_5625; // @[Reg.scala 11:16:@3785.4]
  reg [31:0] _RAND_653;
  reg [7:0] _T_5627; // @[Reg.scala 11:16:@3790.4]
  reg [31:0] _RAND_654;
  reg [7:0] _T_5629; // @[Reg.scala 11:16:@3795.4]
  reg [31:0] _RAND_655;
  reg [7:0] _T_5631; // @[Reg.scala 11:16:@3800.4]
  reg [31:0] _RAND_656;
  reg [7:0] _T_5633; // @[Reg.scala 11:16:@3805.4]
  reg [31:0] _RAND_657;
  reg [7:0] _T_5635; // @[Reg.scala 11:16:@3810.4]
  reg [31:0] _RAND_658;
  reg [7:0] _T_5637; // @[Reg.scala 11:16:@3815.4]
  reg [31:0] _RAND_659;
  reg [7:0] _T_5639; // @[Reg.scala 11:16:@3820.4]
  reg [31:0] _RAND_660;
  reg [7:0] _T_5641; // @[Reg.scala 11:16:@3825.4]
  reg [31:0] _RAND_661;
  reg [7:0] _T_5643; // @[Reg.scala 11:16:@3830.4]
  reg [31:0] _RAND_662;
  reg [7:0] _T_5645; // @[Reg.scala 11:16:@3835.4]
  reg [31:0] _RAND_663;
  reg [7:0] _T_5647; // @[Reg.scala 11:16:@3840.4]
  reg [31:0] _RAND_664;
  reg [7:0] _T_5649; // @[Reg.scala 11:16:@3845.4]
  reg [31:0] _RAND_665;
  reg [7:0] _T_5651; // @[Reg.scala 11:16:@3850.4]
  reg [31:0] _RAND_666;
  reg [7:0] _T_5653; // @[Reg.scala 11:16:@3855.4]
  reg [31:0] _RAND_667;
  reg [7:0] _T_5655; // @[Reg.scala 11:16:@3860.4]
  reg [31:0] _RAND_668;
  reg [7:0] _T_5657; // @[Reg.scala 11:16:@3865.4]
  reg [31:0] _RAND_669;
  reg [7:0] _T_5659; // @[Reg.scala 11:16:@3870.4]
  reg [31:0] _RAND_670;
  reg [7:0] _T_5661; // @[Reg.scala 11:16:@3875.4]
  reg [31:0] _RAND_671;
  reg [7:0] _T_5663; // @[Reg.scala 11:16:@3880.4]
  reg [31:0] _RAND_672;
  reg [7:0] _T_5665; // @[Reg.scala 11:16:@3885.4]
  reg [31:0] _RAND_673;
  reg [7:0] _T_5667; // @[Reg.scala 11:16:@3890.4]
  reg [31:0] _RAND_674;
  reg [7:0] _T_5669; // @[Reg.scala 11:16:@3895.4]
  reg [31:0] _RAND_675;
  reg [7:0] _T_5671; // @[Reg.scala 11:16:@3900.4]
  reg [31:0] _RAND_676;
  reg [7:0] _T_5673; // @[Reg.scala 11:16:@3905.4]
  reg [31:0] _RAND_677;
  reg [7:0] _T_5675; // @[Reg.scala 11:16:@3910.4]
  reg [31:0] _RAND_678;
  reg [7:0] _T_5677; // @[Reg.scala 11:16:@3915.4]
  reg [31:0] _RAND_679;
  reg [7:0] _T_5679; // @[Reg.scala 11:16:@3920.4]
  reg [31:0] _RAND_680;
  reg [7:0] _T_5681; // @[Reg.scala 11:16:@3925.4]
  reg [31:0] _RAND_681;
  reg [7:0] _T_5683; // @[Reg.scala 11:16:@3930.4]
  reg [31:0] _RAND_682;
  reg [7:0] _T_5685; // @[Reg.scala 11:16:@3935.4]
  reg [31:0] _RAND_683;
  reg [7:0] _T_5687; // @[Reg.scala 11:16:@3940.4]
  reg [31:0] _RAND_684;
  reg [7:0] _T_5689; // @[Reg.scala 11:16:@3945.4]
  reg [31:0] _RAND_685;
  reg [7:0] _T_5691; // @[Reg.scala 11:16:@3950.4]
  reg [31:0] _RAND_686;
  reg [7:0] _T_5693; // @[Reg.scala 11:16:@3955.4]
  reg [31:0] _RAND_687;
  reg [7:0] _T_5695; // @[Reg.scala 11:16:@3960.4]
  reg [31:0] _RAND_688;
  reg [7:0] _T_5697; // @[Reg.scala 11:16:@3965.4]
  reg [31:0] _RAND_689;
  reg [7:0] _T_5699; // @[Reg.scala 11:16:@3970.4]
  reg [31:0] _RAND_690;
  reg [7:0] _T_5701; // @[Reg.scala 11:16:@3975.4]
  reg [31:0] _RAND_691;
  reg [7:0] _T_5703; // @[Reg.scala 11:16:@3980.4]
  reg [31:0] _RAND_692;
  reg [7:0] _T_5705; // @[Reg.scala 11:16:@3985.4]
  reg [31:0] _RAND_693;
  reg [7:0] _T_5707; // @[Reg.scala 11:16:@3990.4]
  reg [31:0] _RAND_694;
  reg [7:0] _T_5709; // @[Reg.scala 11:16:@3995.4]
  reg [31:0] _RAND_695;
  reg [7:0] _T_5711; // @[Reg.scala 11:16:@4000.4]
  reg [31:0] _RAND_696;
  reg [7:0] _T_5713; // @[Reg.scala 11:16:@4005.4]
  reg [31:0] _RAND_697;
  reg [7:0] _T_5715; // @[Reg.scala 11:16:@4010.4]
  reg [31:0] _RAND_698;
  reg [7:0] _T_5717; // @[Reg.scala 11:16:@4015.4]
  reg [31:0] _RAND_699;
  reg [7:0] _T_5719; // @[Reg.scala 11:16:@4020.4]
  reg [31:0] _RAND_700;
  reg [7:0] _T_5721; // @[Reg.scala 11:16:@4025.4]
  reg [31:0] _RAND_701;
  reg [7:0] _T_5723; // @[Reg.scala 11:16:@4030.4]
  reg [31:0] _RAND_702;
  reg [7:0] _T_5725; // @[Reg.scala 11:16:@4035.4]
  reg [31:0] _RAND_703;
  reg [7:0] _T_5727; // @[Reg.scala 11:16:@4040.4]
  reg [31:0] _RAND_704;
  reg [7:0] _T_5729; // @[Reg.scala 11:16:@4045.4]
  reg [31:0] _RAND_705;
  reg [7:0] _T_5731; // @[Reg.scala 11:16:@4050.4]
  reg [31:0] _RAND_706;
  reg [7:0] _T_5733; // @[Reg.scala 11:16:@4055.4]
  reg [31:0] _RAND_707;
  reg [7:0] _T_5735; // @[Reg.scala 11:16:@4060.4]
  reg [31:0] _RAND_708;
  reg [7:0] _T_5737; // @[Reg.scala 11:16:@4065.4]
  reg [31:0] _RAND_709;
  reg [7:0] _T_5739; // @[Reg.scala 11:16:@4070.4]
  reg [31:0] _RAND_710;
  reg [7:0] _T_5741; // @[Reg.scala 11:16:@4075.4]
  reg [31:0] _RAND_711;
  reg [7:0] _T_5743; // @[Reg.scala 11:16:@4080.4]
  reg [31:0] _RAND_712;
  reg [7:0] _T_5745; // @[Reg.scala 11:16:@4085.4]
  reg [31:0] _RAND_713;
  reg [7:0] _T_5747; // @[Reg.scala 11:16:@4090.4]
  reg [31:0] _RAND_714;
  reg [7:0] _T_5749; // @[Reg.scala 11:16:@4095.4]
  reg [31:0] _RAND_715;
  reg [7:0] _T_5751; // @[Reg.scala 11:16:@4100.4]
  reg [31:0] _RAND_716;
  reg [7:0] _T_5753; // @[Reg.scala 11:16:@4105.4]
  reg [31:0] _RAND_717;
  reg [7:0] _T_5755; // @[Reg.scala 11:16:@4110.4]
  reg [31:0] _RAND_718;
  reg [7:0] _T_5757; // @[Reg.scala 11:16:@4115.4]
  reg [31:0] _RAND_719;
  reg [7:0] _T_5759; // @[Reg.scala 11:16:@4120.4]
  reg [31:0] _RAND_720;
  reg [7:0] _T_5761; // @[Reg.scala 11:16:@4125.4]
  reg [31:0] _RAND_721;
  reg [7:0] _T_5763; // @[Reg.scala 11:16:@4130.4]
  reg [31:0] _RAND_722;
  assign _T_207 = nvdla_core_rstn == 1'h0; // @[NV_NVDLA_CSC_dl_for_check.scala 81:38:@8.4]
  assign is_sg_idle = sc_state == 2'h0; // @[NV_NVDLA_CSC_dl_for_check.scala 85:31:@9.4]
  assign is_sg_done = sc_state == 2'h3; // @[NV_NVDLA_CSC_dl_for_check.scala 87:31:@11.4]
  assign layer_st = reg2dp_op_en & is_sg_idle; // @[NV_NVDLA_CSC_dl_for_check.scala 94:32:@14.4]
  assign is_conv = reg2dp_conv_mode == 1'h0; // @[NV_NVDLA_CSC_dl_for_check.scala 96:35:@16.4]
  assign is_img = is_conv & reg2dp_datain_format; // @[NV_NVDLA_CSC_dl_for_check.scala 97:22:@17.4]
  assign _T_216 = 7'h9 << reg2dp_y_extension; // @[NV_NVDLA_CSC_dl_for_check.scala 105:53:@18.4]
  assign _T_218 = is_img ? _T_216 : 7'h8; // @[NV_NVDLA_CSC_dl_for_check.scala 105:24:@19.4]
  assign sub_h_total_w = _T_218[5:3]; // @[NV_NVDLA_CSC_dl_for_check.scala 105:100:@20.4]
  assign sub_h_cmp_w = is_img ? sub_h_total_w : 3'h1; // @[NV_NVDLA_CSC_dl_for_check.scala 106:22:@21.4]
  assign _T_221 = sub_h_cmp_w - 3'h1; // @[NV_NVDLA_CSC_dl_for_check.scala 107:34:@22.4]
  assign dataout_w_init = $unsigned(_T_221); // @[NV_NVDLA_CSC_dl_for_check.scala 107:34:@23.4]
  assign conv_x_stride_w = reg2dp_conv_x_stride_ext + 3'h1; // @[NV_NVDLA_CSC_dl_for_check.scala 108:73:@24.4]
  assign _T_225 = reg2dp_datain_channel_ext[1:0]; // @[NV_NVDLA_CSC_dl_for_check.scala 109:62:@26.4]
  assign _T_228 = {conv_x_stride_w,2'h0}; // @[Cat.scala 30:58:@27.4]
  assign _T_231 = {conv_x_stride_w,1'h0}; // @[Cat.scala 30:58:@28.4]
  assign _GEN_681 = {{1'd0}, conv_x_stride_w}; // @[NV_NVDLA_CSC_dl_for_check.scala 111:74:@29.4]
  assign _T_232 = _T_231 + _GEN_681; // @[NV_NVDLA_CSC_dl_for_check.scala 111:74:@29.4]
  assign _T_233 = 2'h2 == _T_225; // @[Mux.scala 46:19:@30.4]
  assign _T_234 = _T_233 ? _T_232 : {{2'd0}, conv_x_stride_w}; // @[Mux.scala 46:16:@31.4]
  assign _T_235 = 2'h3 == _T_225; // @[Mux.scala 46:19:@32.4]
  assign pixel_x_stride_w = _T_235 ? _T_228 : _T_234; // @[Mux.scala 46:16:@33.4]
  assign _T_237 = reg2dp_weight_channel_ext >= 13'h40; // @[NV_NVDLA_CSC_dl_for_check.scala 113:88:@34.4]
  assign _T_243 = reg2dp_weight_channel_ext[5:0]; // @[NV_NVDLA_CSC_dl_for_check.scala 113:172:@36.4]
  assign _T_244 = _T_237 ? 6'h3f : _T_243; // @[NV_NVDLA_CSC_dl_for_check.scala 113:58:@37.4]
  assign _T_247 = {pixel_x_stride_w,1'h0}; // @[Cat.scala 30:58:@38.4]
  assign _GEN_682 = {{1'd0}, pixel_x_stride_w}; // @[NV_NVDLA_CSC_dl_for_check.scala 114:81:@39.4]
  assign _T_248 = _T_247 + _GEN_682; // @[NV_NVDLA_CSC_dl_for_check.scala 114:81:@39.4]
  assign _T_249 = _T_247 + _GEN_682; // @[NV_NVDLA_CSC_dl_for_check.scala 114:81:@40.4]
  assign _GEN_683 = {{1'd0}, _T_243}; // @[NV_NVDLA_CSC_dl_for_check.scala 114:100:@42.4]
  assign _T_251 = _T_249 + _GEN_683; // @[NV_NVDLA_CSC_dl_for_check.scala 114:100:@42.4]
  assign _T_252 = _T_249 + _GEN_683; // @[NV_NVDLA_CSC_dl_for_check.scala 114:100:@43.4]
  assign _T_255 = pixel_x_stride_w + _T_243; // @[NV_NVDLA_CSC_dl_for_check.scala 115:58:@45.4]
  assign _T_256 = pixel_x_stride_w + _T_243; // @[NV_NVDLA_CSC_dl_for_check.scala 115:58:@46.4]
  assign _T_257 = 2'h1 == reg2dp_y_extension; // @[Mux.scala 46:19:@47.4]
  assign _T_258 = _T_257 ? _T_256 : _T_244; // @[Mux.scala 46:16:@48.4]
  assign _T_259 = 2'h2 == reg2dp_y_extension; // @[Mux.scala 46:19:@49.4]
  assign pixel_x_init_w = _T_259 ? _T_252 : {{1'd0}, _T_258}; // @[Mux.scala 46:16:@50.4]
  assign pixel_x_init_offset_w = _T_243 + 6'h1; // @[NV_NVDLA_CSC_dl_for_check.scala 116:80:@52.4]
  assign _T_264 = {pixel_x_stride_w,2'h0}; // @[Cat.scala 30:58:@53.4]
  assign _T_269 = _T_257 ? _T_247 : {{1'd0}, pixel_x_stride_w}; // @[Mux.scala 46:16:@56.4]
  assign pixel_x_add_w = _T_259 ? _T_264 : {{1'd0}, _T_269}; // @[Mux.scala 46:16:@58.4]
  assign pixel_ch_stride_w = {pixel_x_stride_w,6'h0}; // @[Cat.scala 30:58:@59.4]
  assign conv_y_stride_w = reg2dp_conv_y_stride_ext + 3'h1; // @[NV_NVDLA_CSC_dl_for_check.scala 126:74:@60.4]
  assign _T_278 = reg2dp_x_dilation_ext + 5'h1; // @[NV_NVDLA_CSC_dl_for_check.scala 127:74:@63.4]
  assign x_dilate_w = is_img ? 6'h1 : _T_278; // @[NV_NVDLA_CSC_dl_for_check.scala 127:21:@64.4]
  assign _T_282 = reg2dp_y_dilation_ext + 5'h1; // @[NV_NVDLA_CSC_dl_for_check.scala 128:74:@66.4]
  assign y_dilate_w = is_img ? 6'h1 : _T_282; // @[NV_NVDLA_CSC_dl_for_check.scala 128:21:@67.4]
  assign entries_single_w = reg2dp_entries + 14'h1; // @[NV_NVDLA_CSC_dl_for_check.scala 144:43:@80.4]
  assign _T_309 = entries_single_w * 15'h1; // @[NV_NVDLA_CSC_dl_for_check.scala 145:41:@82.4]
  assign entries_batch_w = _T_309[14:0]; // @[NV_NVDLA_CSC_dl_for_check.scala 145:56:@83.4]
  assign entries_w = {{2'd0}, entries_single_w}; // @[NV_NVDLA_CSC_dl_for_check.scala 146:20:@86.4]
  assign h_offset_slice_w = 6'h1 * y_dilate_w; // @[NV_NVDLA_CSC_dl_for_check.scala 147:37:@87.4]
  assign _GEN_684 = {{9'd0}, data_batch}; // @[NV_NVDLA_CSC_dl_for_check.scala 148:33:@88.4]
  assign h_bias_0_stride_w = entries * _GEN_684; // @[NV_NVDLA_CSC_dl_for_check.scala 148:33:@88.4]
  assign _GEN_685 = {{1'd0}, h_offset_slice}; // @[NV_NVDLA_CSC_dl_for_check.scala 149:33:@89.4]
  assign h_bias_1_stride_w = entries * _GEN_685; // @[NV_NVDLA_CSC_dl_for_check.scala 149:33:@89.4]
  assign rls_slices_w = reg2dp_rls_slices + 12'h1; // @[NV_NVDLA_CSC_dl_for_check.scala 150:41:@90.4]
  assign _T_316 = reg2dp_datain_height_ext + 13'h1; // @[NV_NVDLA_CSC_dl_for_check.scala 151:77:@91.4]
  assign _GEN_686 = {{1'd0}, reg2dp_rls_slices}; // @[NV_NVDLA_CSC_dl_for_check.scala 151:113:@92.4]
  assign _T_317 = reg2dp_datain_height_ext - _GEN_686; // @[NV_NVDLA_CSC_dl_for_check.scala 151:113:@92.4]
  assign _T_318 = $unsigned(_T_317); // @[NV_NVDLA_CSC_dl_for_check.scala 151:113:@93.4]
  assign slice_left_w = reg2dp_skip_data_rls ? _T_316 : _T_318; // @[NV_NVDLA_CSC_dl_for_check.scala 151:23:@94.4]
  assign slices_oprand = layer_st_d1 ? rls_slices : slice_left; // @[NV_NVDLA_CSC_dl_for_check.scala 152:24:@95.4]
  assign _GEN_687 = {{1'd0}, slices_oprand}; // @[NV_NVDLA_CSC_dl_for_check.scala 153:37:@96.4]
  assign slice_entries_w = entries_batch * _GEN_687; // @[NV_NVDLA_CSC_dl_for_check.scala 153:37:@96.4]
  assign _T_407 = is_img ? 34'h3ffffffff : 34'h0; // @[Bitwise.scala 72:12:@143.6]
  assign _T_409 = reg2dp_data_bank + 5'h1; // @[NV_NVDLA_CSC_dl_for_check.scala 202:38:@145.6]
  assign _T_414 = reg2dp_datain_width_ext + 13'h1; // @[NV_NVDLA_CSC_dl_for_check.scala 203:109:@149.6]
  assign _T_417 = reg2dp_weight_channel_ext[12:6]; // @[NV_NVDLA_CSC_dl_for_check.scala 206:109:@155.6]
  assign _T_418 = {{4'd0}, _T_417}; // @[NV_NVDLA_CSC_dl_for_check.scala 206:30:@156.6]
  assign _T_419 = sub_h_total_w[2:1]; // @[NV_NVDLA_CSC_dl_for_check.scala 209:36:@160.6]
  assign _T_422 = {1'h0,reg2dp_entries}; // @[Cat.scala 30:58:@189.6]
  assign _GEN_0 = layer_st ? 22'h0 : is_winograd_d1; // @[NV_NVDLA_CSC_dl_for_check.scala 199:15:@139.4]
  assign _GEN_1 = layer_st ? _T_407 : is_img_d1; // @[NV_NVDLA_CSC_dl_for_check.scala 199:15:@139.4]
  assign _GEN_2 = layer_st ? _T_409 : {{1'd0}, data_bank}; // @[NV_NVDLA_CSC_dl_for_check.scala 199:15:@139.4]
  assign _GEN_3 = layer_st ? _T_414 : datain_width; // @[NV_NVDLA_CSC_dl_for_check.scala 199:15:@139.4]
  assign _GEN_4 = layer_st ? reg2dp_datain_width_ext : datain_width_cmp; // @[NV_NVDLA_CSC_dl_for_check.scala 199:15:@139.4]
  assign _GEN_5 = layer_st ? reg2dp_datain_height_ext : datain_height_cmp; // @[NV_NVDLA_CSC_dl_for_check.scala 199:15:@139.4]
  assign _GEN_6 = layer_st ? {{2'd0}, _T_418} : datain_channel_cmp; // @[NV_NVDLA_CSC_dl_for_check.scala 199:15:@139.4]
  assign _GEN_7 = layer_st ? sub_h_total_w : sub_h_total_g0; // @[NV_NVDLA_CSC_dl_for_check.scala 199:15:@139.4]
  assign _GEN_8 = layer_st ? sub_h_total_w : sub_h_total_g1; // @[NV_NVDLA_CSC_dl_for_check.scala 199:15:@139.4]
  assign _GEN_9 = layer_st ? _T_419 : sub_h_total_g2; // @[NV_NVDLA_CSC_dl_for_check.scala 199:15:@139.4]
  assign _GEN_10 = layer_st ? sub_h_total_w : sub_h_total_g3; // @[NV_NVDLA_CSC_dl_for_check.scala 199:15:@139.4]
  assign _GEN_11 = layer_st ? sub_h_total_w : sub_h_total_g4; // @[NV_NVDLA_CSC_dl_for_check.scala 199:15:@139.4]
  assign _GEN_12 = layer_st ? sub_h_total_w : sub_h_total_g5; // @[NV_NVDLA_CSC_dl_for_check.scala 199:15:@139.4]
  assign _GEN_13 = layer_st ? sub_h_total_w : sub_h_total_g6; // @[NV_NVDLA_CSC_dl_for_check.scala 199:15:@139.4]
  assign _GEN_15 = layer_st ? sub_h_total_w : sub_h_total_g8; // @[NV_NVDLA_CSC_dl_for_check.scala 199:15:@139.4]
  assign _GEN_16 = layer_st ? sub_h_total_w : sub_h_total_g9; // @[NV_NVDLA_CSC_dl_for_check.scala 199:15:@139.4]
  assign _GEN_18 = layer_st ? sub_h_total_w : sub_h_total_g11; // @[NV_NVDLA_CSC_dl_for_check.scala 199:15:@139.4]
  assign _GEN_19 = layer_st ? sub_h_cmp_w : sub_h_cmp_g0; // @[NV_NVDLA_CSC_dl_for_check.scala 199:15:@139.4]
  assign _GEN_20 = layer_st ? sub_h_cmp_w : sub_h_cmp_g1; // @[NV_NVDLA_CSC_dl_for_check.scala 199:15:@139.4]
  assign _GEN_21 = layer_st ? conv_x_stride_w : conv_x_stride; // @[NV_NVDLA_CSC_dl_for_check.scala 199:15:@139.4]
  assign _GEN_22 = layer_st ? conv_y_stride_w : conv_y_stride; // @[NV_NVDLA_CSC_dl_for_check.scala 199:15:@139.4]
  assign _GEN_24 = layer_st ? 6'h1 : data_batch; // @[NV_NVDLA_CSC_dl_for_check.scala 199:15:@139.4]
  assign _GEN_25 = layer_st ? 5'h0 : batch_cmp; // @[NV_NVDLA_CSC_dl_for_check.scala 199:15:@139.4]
  assign _GEN_26 = layer_st ? pixel_x_init_w : {{1'd0}, pixel_x_init}; // @[NV_NVDLA_CSC_dl_for_check.scala 199:15:@139.4]
  assign _GEN_27 = layer_st ? pixel_x_init_offset_w : pixel_x_init_offset; // @[NV_NVDLA_CSC_dl_for_check.scala 199:15:@139.4]
  assign _GEN_28 = layer_st ? pixel_x_add_w : {{1'd0}, pixel_x_add}; // @[NV_NVDLA_CSC_dl_for_check.scala 199:15:@139.4]
  assign _GEN_29 = layer_st ? {{1'd0}, pixel_x_stride_w} : pixel_x_byte_stride; // @[NV_NVDLA_CSC_dl_for_check.scala 199:15:@139.4]
  assign _GEN_30 = layer_st ? pixel_ch_stride_w : pixel_ch_stride; // @[NV_NVDLA_CSC_dl_for_check.scala 199:15:@139.4]
  assign _GEN_31 = layer_st ? x_dilate_w : x_dilate; // @[NV_NVDLA_CSC_dl_for_check.scala 199:15:@139.4]
  assign _GEN_32 = layer_st ? y_dilate_w : y_dilate; // @[NV_NVDLA_CSC_dl_for_check.scala 199:15:@139.4]
  assign _GEN_33 = layer_st ? reg2dp_pad_value : pad_value; // @[NV_NVDLA_CSC_dl_for_check.scala 199:15:@139.4]
  assign _GEN_34 = layer_st ? entries_w : {{2'd0}, entries}; // @[NV_NVDLA_CSC_dl_for_check.scala 199:15:@139.4]
  assign _GEN_35 = layer_st ? entries_batch_w : entries_batch; // @[NV_NVDLA_CSC_dl_for_check.scala 199:15:@139.4]
  assign _GEN_36 = layer_st ? _T_422 : entries_cmp; // @[NV_NVDLA_CSC_dl_for_check.scala 199:15:@139.4]
  assign _GEN_37 = layer_st ? {{2'd0}, h_offset_slice_w} : h_offset_slice; // @[NV_NVDLA_CSC_dl_for_check.scala 199:15:@139.4]
  assign _GEN_38 = layer_st ? {{1'd0}, rls_slices_w} : rls_slices; // @[NV_NVDLA_CSC_dl_for_check.scala 199:15:@139.4]
  assign _GEN_39 = layer_st ? slice_left_w : slice_left; // @[NV_NVDLA_CSC_dl_for_check.scala 199:15:@139.4]
  assign _GEN_40 = layer_st ? reg2dp_dataout_width : dataout_width_cmp; // @[NV_NVDLA_CSC_dl_for_check.scala 199:15:@139.4]
  assign _GEN_43 = layer_st_d1 ? h_bias_0_stride_w : {{9'd0}, h_bias_0_stride}; // @[NV_NVDLA_CSC_dl_for_check.scala 244:18:@202.4]
  assign _GEN_44 = layer_st_d1 ? h_bias_1_stride_w : {{17'd0}, h_bias_1_stride}; // @[NV_NVDLA_CSC_dl_for_check.scala 244:18:@202.4]
  assign _GEN_45 = layer_st_d1 ? entries : {{2'd0}, h_bias_2_stride}; // @[NV_NVDLA_CSC_dl_for_check.scala 244:18:@202.4]
  assign _GEN_46 = layer_st_d1 ? entries : {{2'd0}, h_bias_3_stride}; // @[NV_NVDLA_CSC_dl_for_check.scala 244:18:@202.4]
  assign _GEN_47 = layer_st_d1 ? slice_entries_w : {{14'd0}, rls_entries}; // @[NV_NVDLA_CSC_dl_for_check.scala 244:18:@202.4]
  assign _GEN_48 = is_sg_done ? slice_left : last_slices; // @[NV_NVDLA_CSC_dl_for_check.scala 251:17:@209.4]
  assign _GEN_49 = is_sg_done ? slice_entries_w : {{16'd0}, last_entries}; // @[NV_NVDLA_CSC_dl_for_check.scala 251:17:@209.4]
  assign _T_503 = last_slices != 14'h0; // @[NV_NVDLA_CSC_dl_for_check.scala 315:37:@293.4]
  assign _T_504 = sg2dl_reuse_rls & _T_503; // @[NV_NVDLA_CSC_dl_for_check.scala 315:23:@294.4]
  assign _T_1377 = sub_h_total_g3[2]; // @[NV_NVDLA_CSC_dl_for_check.scala 911:32:@1212.4]
  assign _T_1378 = _T_1377 & dat_rsp_l3_pvld; // @[NV_NVDLA_CSC_dl_for_check.scala 911:36:@1213.4]
  assign _T_1379 = sub_h_total_g3[1]; // @[NV_NVDLA_CSC_dl_for_check.scala 912:35:@1214.4]
  assign _T_1380 = _T_1379 & dat_rsp_l1_pvld; // @[NV_NVDLA_CSC_dl_for_check.scala 912:39:@1215.4]
  assign _T_1381 = _T_1378 | _T_1380; // @[NV_NVDLA_CSC_dl_for_check.scala 911:57:@1216.4]
  assign _T_1382 = sub_h_total_g3[0]; // @[NV_NVDLA_CSC_dl_for_check.scala 913:35:@1217.4]
  assign _T_1383 = _T_1382 & dat_rsp_l0_pvld; // @[NV_NVDLA_CSC_dl_for_check.scala 913:39:@1218.4]
  assign dat_rsp_pvld = _T_1381 | _T_1383; // @[NV_NVDLA_CSC_dl_for_check.scala 912:60:@1219.4]
  assign _T_1385 = sub_h_total_g4[2]; // @[NV_NVDLA_CSC_dl_for_check.scala 920:42:@1221.4]
  assign _T_1389 = _T_1385 ? 27'h7ffffff : 27'h0; // @[Bitwise.scala 72:12:@1223.4]
  assign _T_1390 = _T_1389 & _T_1367; // @[NV_NVDLA_CSC_dl_for_check.scala 920:47:@1224.4]
  assign _T_1391 = sub_h_total_g4[1]; // @[NV_NVDLA_CSC_dl_for_check.scala 921:42:@1225.4]
  assign _T_1395 = _T_1391 ? 27'h7ffffff : 27'h0; // @[Bitwise.scala 72:12:@1227.4]
  assign _T_1396 = _T_1395 & _T_1361; // @[NV_NVDLA_CSC_dl_for_check.scala 921:47:@1228.4]
  assign _T_1397 = _T_1390 | _T_1396; // @[NV_NVDLA_CSC_dl_for_check.scala 920:66:@1229.4]
  assign _T_1398 = sub_h_total_g4[0]; // @[NV_NVDLA_CSC_dl_for_check.scala 922:42:@1230.4]
  assign _T_1402 = _T_1398 ? 27'h7ffffff : 27'h0; // @[Bitwise.scala 72:12:@1232.4]
  assign _T_1403 = _T_1402 & _T_1358; // @[NV_NVDLA_CSC_dl_for_check.scala 922:47:@1233.4]
  assign dat_rsp_pd = _T_1397 | _T_1403; // @[NV_NVDLA_CSC_dl_for_check.scala 921:66:@1234.4]
  assign dat_rsp_rls = dat_rsp_pd[17]; // @[NV_NVDLA_CSC_dl_for_check.scala 946:26:@1253.4]
  assign sub_rls = dat_rsp_pvld & dat_rsp_rls; // @[NV_NVDLA_CSC_dl_for_check.scala 312:29:@292.4]
  assign _T_506 = rls_slices != 14'h0; // @[NV_NVDLA_CSC_dl_for_check.scala 315:66:@295.4]
  assign _T_507 = sub_rls & _T_506; // @[NV_NVDLA_CSC_dl_for_check.scala 315:53:@296.4]
  assign dat_rls = _T_504 | _T_507; // @[NV_NVDLA_CSC_dl_for_check.scala 315:42:@297.4]
  assign sc2cdma_dat_slices_w = sub_rls ? rls_slices : last_slices; // @[NV_NVDLA_CSC_dl_for_check.scala 316:28:@299.4]
  assign sc2cdma_dat_entries_w = sub_rls ? rls_entries : {{2'd0}, last_entries}; // @[NV_NVDLA_CSC_dl_for_check.scala 317:29:@301.4]
  assign dat_entry_avl_sub = dat_rls ? sc2cdma_dat_entries_w : 15'h0; // @[NV_NVDLA_CSC_dl_for_check.scala 284:28:@243.4]
  assign _T_460 = dat_entry_st + dat_entry_avl_sub; // @[NV_NVDLA_CSC_dl_for_check.scala 289:37:@248.4]
  assign dat_entry_st_inc = dat_entry_st + dat_entry_avl_sub; // @[NV_NVDLA_CSC_dl_for_check.scala 289:37:@249.4]
  assign _T_466 = {data_bank,9'h0}; // @[Cat.scala 30:58:@251.4]
  assign _GEN_690 = {{1'd0}, _T_466}; // @[NV_NVDLA_CSC_dl_for_check.scala 290:46:@252.4]
  assign _T_467 = dat_entry_st_inc - _GEN_690; // @[NV_NVDLA_CSC_dl_for_check.scala 290:46:@252.4]
  assign _T_468 = $unsigned(_T_467); // @[NV_NVDLA_CSC_dl_for_check.scala 290:46:@253.4]
  assign dat_entry_st_inc_wrap = _T_468[14:0]; // @[NV_NVDLA_CSC_dl_for_check.scala 290:46:@254.4]
  assign is_dat_entry_st_wrap = dat_entry_st_inc >= _GEN_690; // @[NV_NVDLA_CSC_dl_for_check.scala 291:45:@257.4]
  assign _T_476 = is_dat_entry_st_wrap ? dat_entry_st_inc_wrap : dat_entry_st_inc; // @[NV_NVDLA_CSC_dl_for_check.scala 292:83:@258.4]
  assign dat_entry_st_w = sc2cdma_dat_pending_req ? 15'h0 : _T_476; // @[NV_NVDLA_CSC_dl_for_check.scala 292:25:@259.4]
  assign _T_498 = dat_rls | sc2cdma_dat_pending_req; // @[NV_NVDLA_CSC_dl_for_check.scala 303:13:@282.4]
  assign _GEN_55 = _T_498 ? dat_entry_st_w : dat_entry_st; // @[NV_NVDLA_CSC_dl_for_check.scala 303:25:@283.4]
  assign _GEN_57 = dat_rls ? sc2cdma_dat_slices_w : _T_516; // @[Reg.scala 20:19:@307.4]
  assign _GEN_58 = dat_rls ? sc2cdma_dat_entries_w : _T_519; // @[Reg.scala 20:19:@312.4]
  assign _GEN_59 = sg2dl_pvld ? sg2dl_pd : _T_541; // @[NV_NVDLA_CSC_dl_for_check.scala 342:26:@331.4]
  assign _GEN_60 = _T_524 ? _T_541 : _T_544; // @[NV_NVDLA_CSC_dl_for_check.scala 342:26:@335.4]
  assign _GEN_61 = _T_527 ? _T_544 : _T_547; // @[NV_NVDLA_CSC_dl_for_check.scala 342:26:@339.4]
  assign _GEN_62 = _T_530 ? _T_547 : _T_550; // @[NV_NVDLA_CSC_dl_for_check.scala 342:26:@343.4]
  assign _GEN_63 = _T_533 ? _T_550 : _T_553; // @[NV_NVDLA_CSC_dl_for_check.scala 342:26:@347.4]
  assign _T_554 = is_winograd_d1[0]; // @[NV_NVDLA_CSC_dl_for_check.scala 347:36:@350.4]
  assign dl_in_pvld = _T_554 ? sg2dl_pvld : _T_536; // @[NV_NVDLA_CSC_dl_for_check.scala 347:21:@351.4]
  assign _T_555 = is_winograd_d1[1]; // @[NV_NVDLA_CSC_dl_for_check.scala 348:34:@352.4]
  assign dl_in_pd = _T_555 ? sg2dl_pd : _T_553; // @[NV_NVDLA_CSC_dl_for_check.scala 348:19:@353.4]
  assign _GEN_64 = dl_in_pvld ? dl_in_pd : _T_574; // @[NV_NVDLA_CSC_dl_for_check.scala 361:23:@367.4]
  assign _GEN_65 = _T_560 ? _T_574 : _T_577; // @[NV_NVDLA_CSC_dl_for_check.scala 361:23:@371.4]
  assign _GEN_66 = _T_563 ? _T_577 : _T_580; // @[NV_NVDLA_CSC_dl_for_check.scala 361:23:@375.4]
  assign _GEN_67 = _T_566 ? _T_580 : _T_583; // @[NV_NVDLA_CSC_dl_for_check.scala 361:23:@379.4]
  assign _T_584 = sub_h_total_g0[2]; // @[NV_NVDLA_CSC_dl_for_check.scala 366:30:@382.4]
  assign _T_585 = _T_584 & _T_560; // @[NV_NVDLA_CSC_dl_for_check.scala 366:34:@383.4]
  assign _T_586 = sub_h_total_g0[1]; // @[NV_NVDLA_CSC_dl_for_check.scala 367:30:@384.4]
  assign _T_587 = _T_586 & _T_566; // @[NV_NVDLA_CSC_dl_for_check.scala 367:34:@385.4]
  assign _T_588 = _T_585 | _T_587; // @[NV_NVDLA_CSC_dl_for_check.scala 366:50:@386.4]
  assign _T_589 = sub_h_total_g0[0]; // @[NV_NVDLA_CSC_dl_for_check.scala 368:30:@387.4]
  assign _T_590 = _T_589 & _T_569; // @[NV_NVDLA_CSC_dl_for_check.scala 368:34:@388.4]
  assign dl_pvld = _T_588 | _T_590; // @[NV_NVDLA_CSC_dl_for_check.scala 367:50:@389.4]
  assign _T_591 = sub_h_total_g1[2]; // @[NV_NVDLA_CSC_dl_for_check.scala 370:37:@390.4]
  assign _T_595 = _T_591 ? 31'h7fffffff : 31'h0; // @[Bitwise.scala 72:12:@392.4]
  assign _T_596 = _T_595 & _T_574; // @[NV_NVDLA_CSC_dl_for_check.scala 370:42:@393.4]
  assign _T_597 = sub_h_total_g1[1]; // @[NV_NVDLA_CSC_dl_for_check.scala 371:37:@394.4]
  assign _T_601 = _T_597 ? 31'h7fffffff : 31'h0; // @[Bitwise.scala 72:12:@396.4]
  assign _T_602 = _T_601 & _T_580; // @[NV_NVDLA_CSC_dl_for_check.scala 371:42:@397.4]
  assign _T_603 = _T_596 | _T_602; // @[NV_NVDLA_CSC_dl_for_check.scala 370:56:@398.4]
  assign _T_604 = sub_h_total_g1[0]; // @[NV_NVDLA_CSC_dl_for_check.scala 372:37:@399.4]
  assign _T_608 = _T_604 ? 31'h7fffffff : 31'h0; // @[Bitwise.scala 72:12:@401.4]
  assign _T_609 = _T_608 & _T_583; // @[NV_NVDLA_CSC_dl_for_check.scala 372:42:@402.4]
  assign dl_pd = _T_603 | _T_609; // @[NV_NVDLA_CSC_dl_for_check.scala 371:56:@403.4]
  assign dl_w_offset = dl_pd[4:0]; // @[NV_NVDLA_CSC_dl_for_check.scala 375:24:@404.4]
  assign dl_h_offset = dl_pd[9:5]; // @[NV_NVDLA_CSC_dl_for_check.scala 376:24:@405.4]
  assign dl_channel_size = dl_pd[16:10]; // @[NV_NVDLA_CSC_dl_for_check.scala 377:28:@406.4]
  assign dl_stripe_length = dl_pd[23:17]; // @[NV_NVDLA_CSC_dl_for_check.scala 378:29:@407.4]
  assign dl_cur_sub_h = dl_pd[25:24]; // @[NV_NVDLA_CSC_dl_for_check.scala 379:25:@408.4]
  assign dl_block_end = dl_pd[26]; // @[NV_NVDLA_CSC_dl_for_check.scala 380:25:@409.4]
  assign dl_channel_end = dl_pd[27]; // @[NV_NVDLA_CSC_dl_for_check.scala 381:27:@410.4]
  assign dl_group_end = dl_pd[28]; // @[NV_NVDLA_CSC_dl_for_check.scala 382:25:@411.4]
  assign dl_layer_end = dl_pd[29]; // @[NV_NVDLA_CSC_dl_for_check.scala 383:25:@412.4]
  assign dl_dat_release = dl_pd[30]; // @[NV_NVDLA_CSC_dl_for_check.scala 384:27:@413.4]
  assign _T_666 = stripe_cnt != 7'h0; // @[NV_NVDLA_CSC_dl_for_check.scala 439:37:@470.4]
  assign _T_667 = ~ _T_666; // @[NV_NVDLA_CSC_dl_for_check.scala 439:24:@471.4]
  assign _T_669 = sub_h_cnt != 2'h0; // @[NV_NVDLA_CSC_dl_for_check.scala 439:56:@472.4]
  assign _T_670 = ~ _T_669; // @[NV_NVDLA_CSC_dl_for_check.scala 439:44:@473.4]
  assign _T_671 = _T_667 & _T_670; // @[NV_NVDLA_CSC_dl_for_check.scala 439:42:@474.4]
  assign _T_673 = batch_cnt != 5'h0; // @[NV_NVDLA_CSC_dl_for_check.scala 439:75:@475.4]
  assign _T_674 = ~ _T_673; // @[NV_NVDLA_CSC_dl_for_check.scala 439:63:@476.4]
  assign _T_675 = _T_671 & _T_674; // @[NV_NVDLA_CSC_dl_for_check.scala 439:61:@477.4]
  assign _T_677 = _T_675 ? 1'h0 : dat_exec_valid_d1; // @[NV_NVDLA_CSC_dl_for_check.scala 439:22:@478.4]
  assign dat_exec_valid = dl_pvld ? 1'h1 : _T_677; // @[NV_NVDLA_CSC_dl_for_check.scala 438:22:@479.4]
  assign _T_614 = layer_st | dat_exec_valid; // @[NV_NVDLA_CSC_dl_for_check.scala 391:15:@417.4]
  assign _T_618 = batch_cnt + 5'h1; // @[NV_NVDLA_CSC_dl_for_check.scala 394:28:@419.6]
  assign is_batch_end = batch_cnt == batch_cmp; // @[NV_NVDLA_CSC_dl_for_check.scala 398:27:@424.4]
  assign _T_619 = is_batch_end ? 6'h0 : _T_618; // @[NV_NVDLA_CSC_dl_for_check.scala 393:21:@420.6]
  assign _T_620 = layer_st ? 6'h0 : _T_619; // @[NV_NVDLA_CSC_dl_for_check.scala 392:21:@421.6]
  assign _GEN_68 = _T_614 ? _T_620 : {{1'd0}, batch_cnt}; // @[NV_NVDLA_CSC_dl_for_check.scala 391:32:@418.4]
  assign sub_h_cnt_inc = sub_h_cnt + 2'h1; // @[NV_NVDLA_CSC_dl_for_check.scala 404:31:@428.4]
  assign is_sub_h_end = sub_h_cnt_inc == sub_h_cmp_g0; // @[NV_NVDLA_CSC_dl_for_check.scala 405:32:@429.4]
  assign _T_627 = is_winograd_d1[2]; // @[NV_NVDLA_CSC_dl_for_check.scala 406:51:@431.4]
  assign _T_629 = reg2dp_y_extension != 2'h0; // @[NV_NVDLA_CSC_dl_for_check.scala 406:82:@432.4]
  assign _T_630 = _T_627 | _T_629; // @[NV_NVDLA_CSC_dl_for_check.scala 406:55:@433.4]
  assign _T_631 = _T_630 & dat_exec_valid; // @[NV_NVDLA_CSC_dl_for_check.scala 406:88:@434.4]
  assign sub_h_cnt_reg_en = layer_st | _T_631; // @[NV_NVDLA_CSC_dl_for_check.scala 406:33:@435.4]
  assign _T_632 = layer_st | is_sub_h_end; // @[NV_NVDLA_CSC_dl_for_check.scala 408:31:@437.6]
  assign _T_634 = _T_632 ? 3'h0 : sub_h_cnt_inc; // @[NV_NVDLA_CSC_dl_for_check.scala 408:21:@438.6]
  assign _GEN_69 = sub_h_cnt_reg_en ? _T_634 : {{1'd0}, sub_h_cnt}; // @[NV_NVDLA_CSC_dl_for_check.scala 407:23:@436.4]
  assign _T_640 = stripe_cnt + 7'h1; // @[NV_NVDLA_CSC_dl_for_check.scala 416:34:@444.4]
  assign stripe_cnt_inc = _T_640[6:0]; // @[NV_NVDLA_CSC_dl_for_check.scala 416:41:@445.4]
  assign _T_641 = stripe_cnt_inc == dl_stripe_length; // @[NV_NVDLA_CSC_dl_for_check.scala 417:51:@446.4]
  assign is_stripe_equal = is_batch_end & _T_641; // @[NV_NVDLA_CSC_dl_for_check.scala 417:33:@447.4]
  assign is_stripe_end = is_stripe_equal & is_sub_h_end; // @[NV_NVDLA_CSC_dl_for_check.scala 418:34:@449.4]
  assign _T_644 = dat_exec_valid & is_batch_end; // @[NV_NVDLA_CSC_dl_for_check.scala 419:52:@451.4]
  assign stripe_cnt_reg_en = layer_st | _T_644; // @[NV_NVDLA_CSC_dl_for_check.scala 419:34:@452.4]
  assign _T_646 = ~ is_sub_h_end; // @[NV_NVDLA_CSC_dl_for_check.scala 423:41:@454.6]
  assign _T_647 = is_stripe_equal & _T_646; // @[NV_NVDLA_CSC_dl_for_check.scala 423:39:@455.6]
  assign _T_649 = is_stripe_end ? 7'h0 : stripe_cnt_inc; // @[NV_NVDLA_CSC_dl_for_check.scala 424:22:@456.6]
  assign _T_650 = _T_647 ? stripe_cnt : _T_649; // @[NV_NVDLA_CSC_dl_for_check.scala 423:22:@457.6]
  assign _T_651 = layer_st ? 7'h0 : _T_650; // @[NV_NVDLA_CSC_dl_for_check.scala 422:22:@458.6]
  assign _GEN_70 = stripe_cnt_reg_en ? _T_651 : stripe_cnt; // @[NV_NVDLA_CSC_dl_for_check.scala 421:24:@453.4]
  assign dat_pipe_valid = dl_pvld | dat_pipe_local_valid; // @[NV_NVDLA_CSC_dl_for_check.scala 437:27:@468.4]
  assign _T_659 = dat_pipe_valid & is_stripe_equal; // @[NV_NVDLA_CSC_dl_for_check.scala 434:49:@465.4]
  assign _T_662 = dl_pvld ? 1'h1 : dat_pipe_local_valid; // @[NV_NVDLA_CSC_dl_for_check.scala 435:32:@466.4]
  assign dat_pipe_local_valid_w = _T_659 ? 1'h0 : _T_662; // @[NV_NVDLA_CSC_dl_for_check.scala 434:33:@467.4]
  assign dat_req_bytes = {1'h0,dl_channel_size}; // @[Cat.scala 30:58:@485.4]
  assign _GEN_71 = dat_exec_valid ? dat_req_bytes : dat_req_bytes_d1; // @[NV_NVDLA_CSC_dl_for_check.scala 449:21:@486.4]
  assign _GEN_694 = {{10'd0}, sub_h_cmp_g1}; // @[NV_NVDLA_CSC_dl_for_check.scala 459:39:@491.4]
  assign _T_686 = dataout_w_cnt + _GEN_694; // @[NV_NVDLA_CSC_dl_for_check.scala 459:39:@491.4]
  assign dataout_w_cnt_inc = dataout_w_cnt + _GEN_694; // @[NV_NVDLA_CSC_dl_for_check.scala 459:39:@492.4]
  assign _T_687 = is_batch_end & is_sub_h_end; // @[NV_NVDLA_CSC_dl_for_check.scala 460:29:@493.4]
  assign _T_688 = dataout_w_cnt >= dataout_width_cmp; // @[NV_NVDLA_CSC_dl_for_check.scala 460:61:@494.4]
  assign is_w_end = _T_687 & _T_688; // @[NV_NVDLA_CSC_dl_for_check.scala 460:44:@495.4]
  assign _T_690 = ~ dl_channel_end; // @[NV_NVDLA_CSC_dl_for_check.scala 463:43:@498.4]
  assign _T_691 = is_stripe_end & _T_690; // @[NV_NVDLA_CSC_dl_for_check.scala 463:41:@499.4]
  assign _T_692 = is_w_end ? {{9'd0}, dataout_w_init} : dataout_w_cnt_inc; // @[NV_NVDLA_CSC_dl_for_check.scala 464:26:@500.4]
  assign _T_693 = _T_691 ? dataout_w_ori : _T_692; // @[NV_NVDLA_CSC_dl_for_check.scala 463:26:@501.4]
  assign dataout_w_cnt_w = layer_st ? {{9'd0}, dataout_w_init} : _T_693; // @[NV_NVDLA_CSC_dl_for_check.scala 462:26:@502.4]
  assign _T_695 = _T_644 & is_sub_h_end; // @[NV_NVDLA_CSC_dl_for_check.scala 465:70:@504.4]
  assign dataout_w_cnt_reg_en = layer_st | _T_695; // @[NV_NVDLA_CSC_dl_for_check.scala 465:37:@505.4]
  assign _T_696 = dat_exec_valid & is_stripe_end; // @[NV_NVDLA_CSC_dl_for_check.scala 466:55:@506.4]
  assign _T_697 = _T_696 & dl_channel_end; // @[NV_NVDLA_CSC_dl_for_check.scala 466:71:@507.4]
  assign dataout_w_ori_reg_en = layer_st | _T_697; // @[NV_NVDLA_CSC_dl_for_check.scala 466:37:@508.4]
  assign _GEN_72 = dataout_w_cnt_reg_en ? dataout_w_cnt_w : dataout_w_cnt; // @[NV_NVDLA_CSC_dl_for_check.scala 468:27:@509.4]
  assign _GEN_73 = dataout_w_ori_reg_en ? dataout_w_cnt_w : dataout_w_ori; // @[NV_NVDLA_CSC_dl_for_check.scala 471:27:@512.4]
  assign _GEN_695 = {{2'd0}, datain_c_cnt}; // @[NV_NVDLA_CSC_dl_for_check.scala 478:37:@516.4]
  assign is_last_channel = _GEN_695 == datain_channel_cmp; // @[NV_NVDLA_CSC_dl_for_check.scala 478:37:@516.4]
  assign _T_701 = _T_696 & dl_block_end; // @[NV_NVDLA_CSC_dl_for_check.scala 479:70:@518.4]
  assign datain_c_cnt_reg_en = layer_st | _T_701; // @[NV_NVDLA_CSC_dl_for_check.scala 479:36:@519.4]
  assign _T_705 = datain_c_cnt + 11'h1; // @[NV_NVDLA_CSC_dl_for_check.scala 484:34:@521.6]
  assign _T_706 = datain_c_cnt + 11'h1; // @[NV_NVDLA_CSC_dl_for_check.scala 484:34:@522.6]
  assign _T_707 = dl_channel_end ? 11'h0 : _T_706; // @[NV_NVDLA_CSC_dl_for_check.scala 483:24:@523.6]
  assign _T_708 = layer_st ? 11'h0 : _T_707; // @[NV_NVDLA_CSC_dl_for_check.scala 482:24:@524.6]
  assign _GEN_74 = datain_c_cnt_reg_en ? _T_708 : datain_c_cnt; // @[NV_NVDLA_CSC_dl_for_check.scala 481:26:@520.4]
  assign _GEN_696 = {{8'd0}, reg2dp_pad_left}; // @[NV_NVDLA_CSC_dl_for_check.scala 500:41:@536.4]
  assign _T_729 = 13'h0 - _GEN_696; // @[NV_NVDLA_CSC_dl_for_check.scala 500:41:@536.4]
  assign _T_730 = $unsigned(_T_729); // @[NV_NVDLA_CSC_dl_for_check.scala 500:41:@537.4]
  assign datain_w_cnt_st = is_img ? 14'h0 : _T_730; // @[NV_NVDLA_CSC_dl_for_check.scala 498:26:@539.4]
  assign _T_732 = is_winograd_d1[3]; // @[NV_NVDLA_CSC_dl_for_check.scala 501:42:@540.4]
  assign _T_734 = datain_w_cnt + 14'h2; // @[NV_NVDLA_CSC_dl_for_check.scala 501:60:@541.4]
  assign _GEN_697 = {{10'd0}, conv_x_stride}; // @[NV_NVDLA_CSC_dl_for_check.scala 501:81:@542.4]
  assign _T_735 = datain_w_cnt + _GEN_697; // @[NV_NVDLA_CSC_dl_for_check.scala 501:81:@542.4]
  assign datain_w_cnt_inc = _T_732 ? _T_734 : _T_735; // @[NV_NVDLA_CSC_dl_for_check.scala 501:27:@543.4]
  assign _T_738 = is_w_end ? {{1'd0}, datain_w_cnt_st} : datain_w_cnt_inc; // @[NV_NVDLA_CSC_dl_for_check.scala 506:25:@546.4]
  assign _T_739 = _T_691 ? {{1'd0}, datain_w_ori} : _T_738; // @[NV_NVDLA_CSC_dl_for_check.scala 505:25:@547.4]
  assign datain_w_cnt_w = layer_st ? {{1'd0}, datain_w_cnt_st} : _T_739; // @[NV_NVDLA_CSC_dl_for_check.scala 504:25:@548.4]
  assign _GEN_698 = {{1'd0}, dl_w_offset}; // @[NV_NVDLA_CSC_dl_for_check.scala 508:35:@549.4]
  assign dl_w_offset_ext = _GEN_698 * x_dilate; // @[NV_NVDLA_CSC_dl_for_check.scala 508:35:@549.4]
  assign _GEN_699 = {{3'd0}, dl_w_offset_ext}; // @[NV_NVDLA_CSC_dl_for_check.scala 509:34:@550.4]
  assign _T_740 = datain_w_cnt + _GEN_699; // @[NV_NVDLA_CSC_dl_for_check.scala 509:34:@550.4]
  assign datain_w_cur = _T_740[13:0]; // @[NV_NVDLA_CSC_dl_for_check.scala 509:53:@551.4]
  assign _T_743 = is_img_d1[0]; // @[NV_NVDLA_CSC_dl_for_check.scala 510:96:@554.4]
  assign _T_744 = ~ _T_743; // @[NV_NVDLA_CSC_dl_for_check.scala 510:86:@555.4]
  assign _T_745 = _T_695 & _T_744; // @[NV_NVDLA_CSC_dl_for_check.scala 510:84:@556.4]
  assign datain_w_cnt_reg_en = layer_st | _T_745; // @[NV_NVDLA_CSC_dl_for_check.scala 510:36:@557.4]
  assign _T_748 = is_img_d1[1]; // @[NV_NVDLA_CSC_dl_for_check.scala 511:99:@560.4]
  assign _T_749 = ~ _T_748; // @[NV_NVDLA_CSC_dl_for_check.scala 511:89:@561.4]
  assign _T_750 = _T_697 & _T_749; // @[NV_NVDLA_CSC_dl_for_check.scala 511:87:@562.4]
  assign datain_w_ori_reg_en = layer_st | _T_750; // @[NV_NVDLA_CSC_dl_for_check.scala 511:36:@563.4]
  assign pixel_x_cnt_add = is_sub_h_end ? pixel_x_add : 7'h0; // @[NV_NVDLA_CSC_dl_for_check.scala 514:26:@564.4]
  assign _T_754 = _T_243 == 6'h0; // @[NV_NVDLA_CSC_dl_for_check.scala 516:79:@566.4]
  assign _T_758 = _T_417 + 7'h1; // @[NV_NVDLA_CSC_dl_for_check.scala 517:75:@569.4]
  assign total_channel_op = _T_754 ? {{1'd0}, _T_417} : _T_758; // @[NV_NVDLA_CSC_dl_for_check.scala 516:27:@570.4]
  assign _T_759 = dl_channel_end & is_stripe_end; // @[NV_NVDLA_CSC_dl_for_check.scala 518:37:@571.4]
  assign _T_761 = dl_block_end & is_stripe_end; // @[NV_NVDLA_CSC_dl_for_check.scala 519:35:@572.4]
  assign _T_763 = channel_op_cnt + 13'h1; // @[NV_NVDLA_CSC_dl_for_check.scala 519:66:@573.4]
  assign _T_764 = _T_761 ? _T_763 : {{1'd0}, channel_op_cnt}; // @[NV_NVDLA_CSC_dl_for_check.scala 519:22:@574.4]
  assign _T_765 = _T_759 ? 14'h2 : _T_764; // @[NV_NVDLA_CSC_dl_for_check.scala 518:22:@575.4]
  assign _GEN_700 = {{5'd0}, total_channel_op}; // @[NV_NVDLA_CSC_dl_for_check.scala 521:44:@577.4]
  assign next_is_last_channel = channel_op_cnt >= _GEN_700; // @[NV_NVDLA_CSC_dl_for_check.scala 521:44:@577.4]
  assign _T_766 = is_stripe_end & dl_block_end; // @[NV_NVDLA_CSC_dl_for_check.scala 525:39:@578.4]
  assign _T_767 = _T_766 & dl_channel_end; // @[NV_NVDLA_CSC_dl_for_check.scala 525:54:@579.4]
  assign _T_768 = _T_767 & is_w_end; // @[NV_NVDLA_CSC_dl_for_check.scala 525:71:@580.4]
  assign _T_771 = ~ is_w_end; // @[NV_NVDLA_CSC_dl_for_check.scala 526:73:@583.4]
  assign _T_772 = _T_767 & _T_771; // @[NV_NVDLA_CSC_dl_for_check.scala 526:71:@584.4]
  assign _GEN_701 = {{4'd0}, pixel_ch_stride}; // @[NV_NVDLA_CSC_dl_for_check.scala 526:99:@585.4]
  assign _T_773 = pixel_w_ch_ori + _GEN_701; // @[NV_NVDLA_CSC_dl_for_check.scala 526:99:@585.4]
  assign _T_775 = _T_766 & next_is_last_channel; // @[NV_NVDLA_CSC_dl_for_check.scala 527:54:@587.4]
  assign _GEN_702 = {{9'd0}, pixel_x_init_offset}; // @[NV_NVDLA_CSC_dl_for_check.scala 527:90:@588.4]
  assign _T_776 = pixel_w_ori + _GEN_702; // @[NV_NVDLA_CSC_dl_for_check.scala 527:90:@588.4]
  assign _T_778 = ~ next_is_last_channel; // @[NV_NVDLA_CSC_dl_for_check.scala 528:56:@590.4]
  assign _T_779 = _T_766 & _T_778; // @[NV_NVDLA_CSC_dl_for_check.scala 528:54:@591.4]
  assign _T_781 = pixel_w_ori + 16'h40; // @[NV_NVDLA_CSC_dl_for_check.scala 528:91:@592.4]
  assign _T_782 = ~ dl_block_end; // @[NV_NVDLA_CSC_dl_for_check.scala 529:41:@593.4]
  assign _T_783 = is_stripe_end & _T_782; // @[NV_NVDLA_CSC_dl_for_check.scala 529:39:@594.4]
  assign _GEN_703 = {{9'd0}, pixel_x_cnt_add}; // @[NV_NVDLA_CSC_dl_for_check.scala 529:81:@595.4]
  assign _T_784 = pixel_w_cnt + _GEN_703; // @[NV_NVDLA_CSC_dl_for_check.scala 529:81:@595.4]
  assign _T_785 = _T_783 ? {{1'd0}, pixel_w_ori} : _T_784; // @[NV_NVDLA_CSC_dl_for_check.scala 529:24:@596.4]
  assign _T_786 = _T_779 ? _T_781 : _T_785; // @[NV_NVDLA_CSC_dl_for_check.scala 528:24:@597.4]
  assign _T_787 = _T_775 ? _T_776 : _T_786; // @[NV_NVDLA_CSC_dl_for_check.scala 527:24:@598.4]
  assign _T_788 = _T_772 ? _T_773 : _T_787; // @[NV_NVDLA_CSC_dl_for_check.scala 526:24:@599.4]
  assign _T_789 = _T_768 ? {{11'd0}, pixel_x_init} : _T_788; // @[NV_NVDLA_CSC_dl_for_check.scala 525:24:@600.4]
  assign pixel_w_cnt_w = layer_st_d1 ? {{11'd0}, pixel_x_init} : _T_789; // @[NV_NVDLA_CSC_dl_for_check.scala 524:24:@601.4]
  assign _T_795 = pixel_w_cnt[15:6]; // @[NV_NVDLA_CSC_dl_for_check.scala 531:68:@603.4]
  assign pixel_w_cur = {5'h0,_T_795}; // @[Cat.scala 30:58:@604.4]
  assign _T_804 = is_img_d1[4]; // @[NV_NVDLA_CSC_dl_for_check.scala 534:68:@615.4]
  assign _T_805 = dat_exec_valid & _T_804; // @[NV_NVDLA_CSC_dl_for_check.scala 534:57:@616.4]
  assign _T_806 = _T_805 & is_stripe_end; // @[NV_NVDLA_CSC_dl_for_check.scala 534:72:@617.4]
  assign _T_807 = _T_806 & dl_block_end; // @[NV_NVDLA_CSC_dl_for_check.scala 534:88:@618.4]
  assign _T_808 = _T_807 & dl_channel_end; // @[NV_NVDLA_CSC_dl_for_check.scala 534:103:@619.4]
  assign pixel_ch_ori_reg_en = layer_st_d1 | _T_808; // @[NV_NVDLA_CSC_dl_for_check.scala 534:39:@620.4]
  assign _T_810 = _T_743 & dl_pvld; // @[NV_NVDLA_CSC_dl_for_check.scala 536:42:@622.4]
  assign _T_813 = pixel_force_clr_d1 ? 1'h0 : pixel_force_fetch_d1; // @[NV_NVDLA_CSC_dl_for_check.scala 536:74:@623.4]
  assign pixel_force_fetch = _T_810 ? 1'h1 : _T_813; // @[NV_NVDLA_CSC_dl_for_check.scala 536:28:@624.4]
  assign _T_815 = _T_743 & is_sub_h_end; // @[NV_NVDLA_CSC_dl_for_check.scala 537:36:@626.4]
  assign _T_816 = pixel_force_fetch | pixel_force_fetch_d1; // @[NV_NVDLA_CSC_dl_for_check.scala 537:72:@627.4]
  assign pixel_force_clr = _T_815 & _T_816; // @[NV_NVDLA_CSC_dl_for_check.scala 537:51:@628.4]
  assign _GEN_75 = datain_w_cnt_reg_en ? datain_w_cnt_w : {{1'd0}, datain_w_cnt}; // @[NV_NVDLA_CSC_dl_for_check.scala 539:26:@629.4]
  assign _GEN_76 = datain_w_cnt_reg_en ? pixel_w_cnt_w : {{1'd0}, pixel_w_cnt}; // @[NV_NVDLA_CSC_dl_for_check.scala 539:26:@629.4]
  assign _GEN_77 = datain_w_ori_reg_en ? datain_w_cnt_w : {{1'd0}, datain_w_ori}; // @[NV_NVDLA_CSC_dl_for_check.scala 543:26:@633.4]
  assign _GEN_78 = datain_w_ori_reg_en ? pixel_w_cnt_w : {{1'd0}, pixel_w_ori}; // @[NV_NVDLA_CSC_dl_for_check.scala 543:26:@633.4]
  assign _GEN_79 = pixel_ch_ori_reg_en ? pixel_w_cnt_w : {{1'd0}, pixel_w_ch_ori}; // @[NV_NVDLA_CSC_dl_for_check.scala 547:26:@637.4]
  assign _GEN_704 = {{9'd0}, reg2dp_pad_top}; // @[NV_NVDLA_CSC_dl_for_check.scala 556:77:@642.4]
  assign _T_823 = 14'h0 - _GEN_704; // @[NV_NVDLA_CSC_dl_for_check.scala 556:77:@642.4]
  assign datain_h_cnt_st = $unsigned(_T_823); // @[NV_NVDLA_CSC_dl_for_check.scala 556:77:@643.4]
  assign _GEN_705 = {{10'd0}, conv_y_stride}; // @[NV_NVDLA_CSC_dl_for_check.scala 557:37:@645.4]
  assign _T_825 = datain_h_cnt + _GEN_705; // @[NV_NVDLA_CSC_dl_for_check.scala 557:37:@645.4]
  assign datain_h_cnt_inc = datain_h_cnt + _GEN_705; // @[NV_NVDLA_CSC_dl_for_check.scala 557:37:@646.4]
  assign _T_826 = is_stripe_end & dl_group_end; // @[NV_NVDLA_CSC_dl_for_check.scala 558:52:@647.4]
  assign _T_827 = layer_st | _T_826; // @[NV_NVDLA_CSC_dl_for_check.scala 558:35:@648.4]
  assign _T_830 = is_w_end ? datain_h_cnt_inc : datain_h_cnt; // @[NV_NVDLA_CSC_dl_for_check.scala 560:25:@651.4]
  assign _T_831 = _T_691 ? datain_h_ori : _T_830; // @[NV_NVDLA_CSC_dl_for_check.scala 559:25:@652.4]
  assign datain_h_cnt_w = _T_827 ? datain_h_cnt_st : {{1'd0}, _T_831}; // @[NV_NVDLA_CSC_dl_for_check.scala 558:25:@653.4]
  assign _T_834 = _T_691 | is_w_end; // @[NV_NVDLA_CSC_dl_for_check.scala 561:91:@656.4]
  assign _T_835 = dat_exec_valid & _T_834; // @[NV_NVDLA_CSC_dl_for_check.scala 561:54:@657.4]
  assign datain_h_cnt_reg_en = layer_st | _T_835; // @[NV_NVDLA_CSC_dl_for_check.scala 561:36:@658.4]
  assign _GEN_706 = {{1'd0}, dl_h_offset}; // @[NV_NVDLA_CSC_dl_for_check.scala 563:35:@662.4]
  assign dl_h_offset_ext = _GEN_706 * y_dilate; // @[NV_NVDLA_CSC_dl_for_check.scala 563:35:@662.4]
  assign _GEN_707 = {{3'd0}, dl_h_offset_ext}; // @[NV_NVDLA_CSC_dl_for_check.scala 564:34:@663.4]
  assign _T_838 = datain_h_cnt + _GEN_707; // @[NV_NVDLA_CSC_dl_for_check.scala 564:34:@663.4]
  assign _GEN_708 = {{13'd0}, sub_h_cnt}; // @[NV_NVDLA_CSC_dl_for_check.scala 564:53:@664.4]
  assign _T_839 = _T_838 + _GEN_708; // @[NV_NVDLA_CSC_dl_for_check.scala 564:53:@664.4]
  assign datain_h_cur = _T_839[13:0]; // @[NV_NVDLA_CSC_dl_for_check.scala 564:66:@665.4]
  assign _GEN_80 = datain_h_cnt_reg_en ? datain_h_cnt_w : {{1'd0}, datain_h_cnt}; // @[NV_NVDLA_CSC_dl_for_check.scala 566:26:@666.4]
  assign _GEN_81 = dataout_w_ori_reg_en ? datain_h_cnt_w : {{1'd0}, datain_h_ori}; // @[NV_NVDLA_CSC_dl_for_check.scala 567:26:@669.4]
  assign _T_840 = datain_w_cur[13]; // @[NV_NVDLA_CSC_dl_for_check.scala 570:39:@672.4]
  assign _GEN_709 = {{1'd0}, datain_width_cmp}; // @[NV_NVDLA_CSC_dl_for_check.scala 570:59:@673.4]
  assign _T_841 = datain_w_cur > _GEN_709; // @[NV_NVDLA_CSC_dl_for_check.scala 570:59:@673.4]
  assign _T_842 = _T_840 | _T_841; // @[NV_NVDLA_CSC_dl_for_check.scala 570:44:@674.4]
  assign _T_843 = datain_h_cur[13]; // @[NV_NVDLA_CSC_dl_for_check.scala 570:92:@675.4]
  assign _T_844 = _T_842 | _T_843; // @[NV_NVDLA_CSC_dl_for_check.scala 570:78:@676.4]
  assign _GEN_710 = {{1'd0}, datain_height_cmp}; // @[NV_NVDLA_CSC_dl_for_check.scala 570:112:@677.4]
  assign _T_845 = datain_h_cur > _GEN_710; // @[NV_NVDLA_CSC_dl_for_check.scala 570:112:@677.4]
  assign dat_conv_req_dummy = _T_844 | _T_845; // @[NV_NVDLA_CSC_dl_for_check.scala 570:97:@678.4]
  assign _T_846 = datain_w_cur[13:2]; // @[NV_NVDLA_CSC_dl_for_check.scala 572:35:@679.4]
  assign _T_848 = _T_846 != 12'h0; // @[NV_NVDLA_CSC_dl_for_check.scala 572:43:@680.4]
  assign _T_849 = datain_w_cur[1]; // @[NV_NVDLA_CSC_dl_for_check.scala 572:61:@681.4]
  assign _T_850 = _T_848 & _T_849; // @[NV_NVDLA_CSC_dl_for_check.scala 572:47:@682.4]
  assign _T_851 = stripe_cnt[6:1]; // @[NV_NVDLA_CSC_dl_for_check.scala 572:77:@683.4]
  assign _T_853 = _T_851 != 6'h0; // @[NV_NVDLA_CSC_dl_for_check.scala 572:84:@684.4]
  assign dat_wg_req_skip = _T_850 & _T_853; // @[NV_NVDLA_CSC_dl_for_check.scala 572:65:@685.4]
  assign dat_img_req_dummy = _T_843 | _T_845; // @[NV_NVDLA_CSC_dl_for_check.scala 573:42:@688.4]
  assign _T_940 = is_img_d1[10]; // @[NV_NVDLA_CSC_dl_for_check.scala 659:33:@786.4]
  assign _T_941 = is_winograd_d1[8]; // @[NV_NVDLA_CSC_dl_for_check.scala 660:38:@787.4]
  assign _T_942 = ~ is_last_channel; // @[NV_NVDLA_CSC_dl_for_check.scala 661:24:@788.4]
  assign _T_944 = _T_942 | _T_941; // @[NV_NVDLA_CSC_dl_for_check.scala 661:41:@790.4]
  assign _T_946 = datain_w_cur[12:0]; // @[NV_NVDLA_CSC_dl_for_check.scala 661:97:@791.4]
  assign _T_947 = {2'h0,_T_946}; // @[Cat.scala 30:58:@792.4]
  assign _T_949 = dat_req_bytes > 8'h20; // @[NV_NVDLA_CSC_dl_for_check.scala 662:38:@793.4]
  assign _T_954 = datain_w_cur[12:1]; // @[NV_NVDLA_CSC_dl_for_check.scala 663:54:@796.4]
  assign _T_955 = {3'h0,_T_954}; // @[Cat.scala 30:58:@797.4]
  assign _T_956 = _T_949 ? _T_947 : _T_955; // @[NV_NVDLA_CSC_dl_for_check.scala 662:23:@798.4]
  assign _T_957 = _T_944 ? _T_947 : _T_956; // @[NV_NVDLA_CSC_dl_for_check.scala 661:23:@799.4]
  assign _T_958 = _T_941 ? {{1'd0}, datain_w_cnt} : _T_957; // @[NV_NVDLA_CSC_dl_for_check.scala 660:23:@800.4]
  assign w_bias_int8 = _T_940 ? pixel_w_cur : _T_958; // @[NV_NVDLA_CSC_dl_for_check.scala 659:23:@801.4]
  assign w_bias_w = w_bias_int8[13:0]; // @[NV_NVDLA_CSC_dl_for_check.scala 673:24:@803.4]
  assign _T_857 = w_bias_w[13:2]; // @[NV_NVDLA_CSC_dl_for_check.scala 577:32:@690.4]
  assign _GEN_712 = {{3'd0}, _T_857}; // @[NV_NVDLA_CSC_dl_for_check.scala 577:40:@691.4]
  assign dat_img_req_skip = _GEN_712 > entries_cmp; // @[NV_NVDLA_CSC_dl_for_check.scala 577:40:@691.4]
  assign _T_858 = is_img_d1[5]; // @[NV_NVDLA_CSC_dl_for_check.scala 578:34:@692.4]
  assign _T_859 = is_winograd_d1[4]; // @[NV_NVDLA_CSC_dl_for_check.scala 578:76:@693.4]
  assign _T_860 = _T_859 ? 1'h0 : dat_conv_req_dummy; // @[NV_NVDLA_CSC_dl_for_check.scala 578:61:@694.4]
  assign dat_req_dummy = _T_858 ? dat_img_req_dummy : _T_860; // @[NV_NVDLA_CSC_dl_for_check.scala 578:24:@695.4]
  assign _T_861 = is_winograd_d1[5]; // @[NV_NVDLA_CSC_dl_for_check.scala 579:35:@696.4]
  assign _T_862 = _T_861 & dat_wg_req_skip; // @[NV_NVDLA_CSC_dl_for_check.scala 579:39:@697.4]
  assign _T_863 = is_img_d1[6]; // @[NV_NVDLA_CSC_dl_for_check.scala 579:70:@698.4]
  assign _T_864 = _T_863 & dat_img_req_skip; // @[NV_NVDLA_CSC_dl_for_check.scala 579:74:@699.4]
  assign dat_req_skip = _T_862 | _T_864; // @[NV_NVDLA_CSC_dl_for_check.scala 579:58:@700.4]
  assign _T_865 = ~ dat_req_dummy; // @[NV_NVDLA_CSC_dl_for_check.scala 580:39:@701.4]
  assign _T_866 = dat_exec_valid & _T_865; // @[NV_NVDLA_CSC_dl_for_check.scala 580:37:@702.4]
  assign _T_867 = ~ dat_req_skip; // @[NV_NVDLA_CSC_dl_for_check.scala 580:56:@703.4]
  assign dat_req_valid = _T_866 & _T_867; // @[NV_NVDLA_CSC_dl_for_check.scala 580:54:@704.4]
  assign _T_868 = is_img_d1[7]; // @[NV_NVDLA_CSC_dl_for_check.scala 583:37:@705.4]
  assign _T_869 = ~ _T_868; // @[NV_NVDLA_CSC_dl_for_check.scala 583:27:@706.4]
  assign _T_870 = datain_c_cnt[0]; // @[NV_NVDLA_CSC_dl_for_check.scala 583:54:@707.4]
  assign dat_req_sub_c_w = _T_869 ? _T_870 : dl_block_end; // @[NV_NVDLA_CSC_dl_for_check.scala 583:26:@708.4]
  assign _T_871 = is_winograd_d1[6]; // @[NV_NVDLA_CSC_dl_for_check.scala 584:41:@709.4]
  assign _T_873 = ~ _T_849; // @[NV_NVDLA_CSC_dl_for_check.scala 584:46:@711.4]
  assign _T_874 = datain_w_cur[1:0]; // @[NV_NVDLA_CSC_dl_for_check.scala 584:76:@712.4]
  assign dat_req_sub_w_w = _T_871 ? {{1'd0}, _T_873} : _T_874; // @[NV_NVDLA_CSC_dl_for_check.scala 584:26:@713.4]
  assign _T_876 = sub_h_cnt == 2'h0; // @[NV_NVDLA_CSC_dl_for_check.scala 585:55:@714.4]
  assign dat_req_sub_w_st_en = dat_exec_valid & _T_876; // @[NV_NVDLA_CSC_dl_for_check.scala 585:42:@715.4]
  assign dat_req_stripe_end = is_stripe_equal & dat_pipe_valid; // @[NV_NVDLA_CSC_dl_for_check.scala 588:42:@717.4]
  assign dat_req_flag_w = {dl_layer_end,dl_channel_end,dat_req_stripe_end,dl_pvld,batch_cnt}; // @[Cat.scala 30:58:@721.4]
  assign _T_900 = dl_dat_release & is_stripe_equal; // @[NV_NVDLA_CSC_dl_for_check.scala 615:38:@741.6]
  assign _T_901 = _T_900 & dat_pipe_valid; // @[NV_NVDLA_CSC_dl_for_check.scala 615:56:@742.6]
  assign _GEN_82 = dat_exec_valid ? dat_req_sub_w_w : dat_req_sub_w_d1; // @[NV_NVDLA_CSC_dl_for_check.scala 607:21:@733.4]
  assign _GEN_83 = dat_exec_valid ? sub_h_cnt : dat_req_sub_h_d1; // @[NV_NVDLA_CSC_dl_for_check.scala 607:21:@733.4]
  assign _GEN_84 = dat_exec_valid ? dat_req_sub_c_w : dat_req_sub_c_d1; // @[NV_NVDLA_CSC_dl_for_check.scala 607:21:@733.4]
  assign _GEN_85 = dat_exec_valid ? is_last_channel : dat_req_ch_end_d1; // @[NV_NVDLA_CSC_dl_for_check.scala 607:21:@733.4]
  assign _GEN_86 = dat_exec_valid ? dat_req_dummy : dat_req_dummy_d1; // @[NV_NVDLA_CSC_dl_for_check.scala 607:21:@733.4]
  assign _GEN_87 = dat_exec_valid ? dl_cur_sub_h : dat_req_cur_sub_h_d1; // @[NV_NVDLA_CSC_dl_for_check.scala 607:21:@733.4]
  assign _GEN_88 = dat_exec_valid ? dat_req_flag_w : dat_req_flag_d1; // @[NV_NVDLA_CSC_dl_for_check.scala 607:21:@733.4]
  assign _GEN_89 = dat_exec_valid ? _T_901 : dat_req_rls_d1; // @[NV_NVDLA_CSC_dl_for_check.scala 607:21:@733.4]
  assign _GEN_90 = dat_exec_valid ? pixel_force_fetch : pixel_force_fetch_d1; // @[NV_NVDLA_CSC_dl_for_check.scala 607:21:@733.4]
  assign _GEN_91 = dat_exec_valid ? pixel_force_clr : pixel_force_clr_d1; // @[NV_NVDLA_CSC_dl_for_check.scala 607:21:@733.4]
  assign _GEN_92 = dat_req_sub_w_st_en ? dl_pvld : dat_req_sub_w_st_d1; // @[NV_NVDLA_CSC_dl_for_check.scala 619:26:@747.4]
  assign _T_916 = is_img_d1[8]; // @[NV_NVDLA_CSC_dl_for_check.scala 636:32:@757.4]
  assign _T_917 = ~ _T_916; // @[NV_NVDLA_CSC_dl_for_check.scala 636:22:@758.4]
  assign _T_918 = datain_width[11:0]; // @[NV_NVDLA_CSC_dl_for_check.scala 636:49:@759.4]
  assign c_bias_add = _T_917 ? _T_918 : 12'h0; // @[NV_NVDLA_CSC_dl_for_check.scala 636:21:@760.4]
  assign _T_921 = is_stripe_end & dl_channel_end; // @[NV_NVDLA_CSC_dl_for_check.scala 638:34:@761.4]
  assign _GEN_713 = {{1'd0}, c_bias_add}; // @[NV_NVDLA_CSC_dl_for_check.scala 638:64:@762.4]
  assign _T_923 = c_bias + _GEN_713; // @[NV_NVDLA_CSC_dl_for_check.scala 638:64:@762.4]
  assign _T_924 = c_bias + _GEN_713; // @[NV_NVDLA_CSC_dl_for_check.scala 638:64:@763.4]
  assign _T_925 = _T_921 ? 13'h0 : _T_924; // @[NV_NVDLA_CSC_dl_for_check.scala 638:19:@764.4]
  assign c_bias_w = layer_st ? 13'h0 : _T_925; // @[NV_NVDLA_CSC_dl_for_check.scala 637:19:@765.4]
  assign c_bias_d1_reg_en = c_bias != c_bias_d1; // @[NV_NVDLA_CSC_dl_for_check.scala 640:31:@769.4]
  assign _GEN_714 = {{2'd0}, h_bias_0_stride}; // @[NV_NVDLA_CSC_dl_for_check.scala 643:32:@770.4]
  assign _T_928 = datain_h_cnt * _GEN_714; // @[NV_NVDLA_CSC_dl_for_check.scala 643:32:@770.4]
  assign h_bias_0_w = _T_928[12:0]; // @[NV_NVDLA_CSC_dl_for_check.scala 643:50:@771.4]
  assign _GEN_715 = {{7'd0}, dl_h_offset}; // @[NV_NVDLA_CSC_dl_for_check.scala 644:31:@772.4]
  assign _T_929 = _GEN_715 * h_bias_1_stride; // @[NV_NVDLA_CSC_dl_for_check.scala 644:31:@772.4]
  assign h_bias_1_w = _T_929[12:0]; // @[NV_NVDLA_CSC_dl_for_check.scala 644:49:@773.4]
  assign _GEN_716 = {{8'd0}, batch_cnt}; // @[NV_NVDLA_CSC_dl_for_check.scala 645:29:@774.4]
  assign _T_930 = _GEN_716 * h_bias_2_stride; // @[NV_NVDLA_CSC_dl_for_check.scala 645:29:@774.4]
  assign h_bias_2_w = _T_930[12:0]; // @[NV_NVDLA_CSC_dl_for_check.scala 645:47:@775.4]
  assign _GEN_717 = {{11'd0}, sub_h_cnt}; // @[NV_NVDLA_CSC_dl_for_check.scala 646:47:@776.4]
  assign _T_932 = _GEN_717 * h_bias_3_stride; // @[NV_NVDLA_CSC_dl_for_check.scala 646:47:@776.4]
  assign _T_933 = layer_st ? 15'h0 : _T_932; // @[NV_NVDLA_CSC_dl_for_check.scala 646:21:@777.4]
  assign h_bias_3_w = _T_933[12:0]; // @[NV_NVDLA_CSC_dl_for_check.scala 646:65:@778.4]
  assign _T_934 = is_winograd_d1[7]; // @[NV_NVDLA_CSC_dl_for_check.scala 647:69:@779.4]
  assign _T_935 = is_img_d1[9]; // @[NV_NVDLA_CSC_dl_for_check.scala 647:84:@780.4]
  assign _T_936 = _T_934 | _T_935; // @[NV_NVDLA_CSC_dl_for_check.scala 647:73:@781.4]
  assign _T_937 = dat_exec_valid & _T_936; // @[NV_NVDLA_CSC_dl_for_check.scala 647:52:@782.4]
  assign _T_938 = layer_st | _T_937; // @[NV_NVDLA_CSC_dl_for_check.scala 647:34:@783.4]
  assign h_bias_reg_en = {_T_938,dat_exec_valid}; // @[Cat.scala 30:58:@784.4]
  assign _GEN_93 = datain_c_cnt_reg_en ? c_bias_w : c_bias; // @[NV_NVDLA_CSC_dl_for_check.scala 677:20:@805.4]
  assign _GEN_94 = c_bias_d1_reg_en ? c_bias : c_bias_d1; // @[NV_NVDLA_CSC_dl_for_check.scala 680:23:@808.4]
  assign _T_961 = h_bias_reg_en[0]; // @[NV_NVDLA_CSC_dl_for_check.scala 683:19:@811.4]
  assign _GEN_95 = _T_961 ? h_bias_0_w : h_bias_0_d1; // @[NV_NVDLA_CSC_dl_for_check.scala 683:23:@812.4]
  assign _GEN_96 = _T_961 ? h_bias_1_w : h_bias_1_d1; // @[NV_NVDLA_CSC_dl_for_check.scala 683:23:@812.4]
  assign _GEN_97 = _T_961 ? h_bias_2_w : h_bias_2_d1; // @[NV_NVDLA_CSC_dl_for_check.scala 683:23:@812.4]
  assign _T_962 = h_bias_reg_en[1]; // @[NV_NVDLA_CSC_dl_for_check.scala 688:19:@817.4]
  assign _GEN_98 = _T_962 ? h_bias_3_w : h_bias_3_d1; // @[NV_NVDLA_CSC_dl_for_check.scala 688:23:@818.4]
  assign _GEN_99 = dat_exec_valid ? w_bias_w : {{1'd0}, w_bias_d1}; // @[NV_NVDLA_CSC_dl_for_check.scala 691:20:@821.4]
  assign _T_1057 = h_bias_0_d1 + h_bias_1_d1; // @[NV_NVDLA_CSC_dl_for_check.scala 717:30:@851.4]
  assign _GEN_718 = {{1'd0}, h_bias_2_d1}; // @[NV_NVDLA_CSC_dl_for_check.scala 717:45:@852.4]
  assign _T_1058 = _T_1057 + _GEN_718; // @[NV_NVDLA_CSC_dl_for_check.scala 717:45:@852.4]
  assign _GEN_719 = {{2'd0}, h_bias_3_d1}; // @[NV_NVDLA_CSC_dl_for_check.scala 717:60:@853.4]
  assign _T_1059 = _T_1058 + _GEN_719; // @[NV_NVDLA_CSC_dl_for_check.scala 717:60:@853.4]
  assign h_bias_d1 = _T_1059[12:0]; // @[NV_NVDLA_CSC_dl_for_check.scala 717:75:@854.4]
  assign _GEN_720 = {{2'd0}, c_bias_d1}; // @[NV_NVDLA_CSC_dl_for_check.scala 718:40:@855.4]
  assign _T_1060 = dat_entry_st + _GEN_720; // @[NV_NVDLA_CSC_dl_for_check.scala 718:40:@855.4]
  assign _GEN_721 = {{3'd0}, h_bias_d1}; // @[NV_NVDLA_CSC_dl_for_check.scala 718:53:@856.4]
  assign _T_1061 = _T_1060 + _GEN_721; // @[NV_NVDLA_CSC_dl_for_check.scala 718:53:@856.4]
  assign _GEN_722 = {{4'd0}, w_bias_d1}; // @[NV_NVDLA_CSC_dl_for_check.scala 718:66:@857.4]
  assign dat_req_addr_sum = _T_1061 + _GEN_722; // @[NV_NVDLA_CSC_dl_for_check.scala 718:66:@857.4]
  assign _GEN_723 = {{4'd0}, _T_466}; // @[NV_NVDLA_CSC_dl_for_check.scala 719:45:@860.4]
  assign is_dat_req_addr_wrap = dat_req_addr_sum >= _GEN_723; // @[NV_NVDLA_CSC_dl_for_check.scala 719:45:@860.4]
  assign _T_1074 = dat_req_addr_sum - _GEN_723; // @[NV_NVDLA_CSC_dl_for_check.scala 720:42:@863.4]
  assign dat_req_addr_wrap = $unsigned(_T_1074); // @[NV_NVDLA_CSC_dl_for_check.scala 720:42:@864.4]
  assign _T_1075 = layer_st | dat_req_dummy_d1; // @[NV_NVDLA_CSC_dl_for_check.scala 721:35:@865.4]
  assign _T_1081 = is_dat_req_addr_wrap ? dat_req_addr_wrap : {{1'd0}, dat_req_addr_sum}; // @[NV_NVDLA_CSC_dl_for_check.scala 722:25:@867.4]
  assign dat_req_addr_w = _T_1075 ? 19'h1fff : _T_1081; // @[NV_NVDLA_CSC_dl_for_check.scala 721:25:@868.4]
  assign _T_1085 = 2'h2 == dat_req_sub_h_d1; // @[Mux.scala 46:19:@869.4]
  assign _T_1086 = _T_1085 ? dat_req_sub_h_addr_2 : dat_req_sub_h_addr_3; // @[Mux.scala 46:16:@870.4]
  assign _T_1087 = 2'h1 == dat_req_sub_h_d1; // @[Mux.scala 46:19:@871.4]
  assign _T_1088 = _T_1087 ? dat_req_sub_h_addr_1 : _T_1086; // @[Mux.scala 46:16:@872.4]
  assign _T_1089 = 2'h0 == dat_req_sub_h_d1; // @[Mux.scala 46:19:@873.4]
  assign dat_req_addr_last = _T_1089 ? dat_req_sub_h_addr_0 : _T_1088; // @[Mux.scala 46:16:@874.4]
  assign _GEN_725 = {{6'd0}, dat_req_addr_last}; // @[NV_NVDLA_CSC_dl_for_check.scala 725:65:@875.4]
  assign _T_1090 = _GEN_725 != dat_req_addr_w; // @[NV_NVDLA_CSC_dl_for_check.scala 725:65:@875.4]
  assign _T_1091 = _T_1090 | pixel_force_fetch_d1; // @[NV_NVDLA_CSC_dl_for_check.scala 725:85:@876.4]
  assign sc2buf_dat_rd_en_w = dat_req_valid_d1 & _T_1091; // @[NV_NVDLA_CSC_dl_for_check.scala 725:43:@877.4]
  assign _T_1092 = dat_req_valid_d1 | dat_req_dummy_d1; // @[NV_NVDLA_CSC_dl_for_check.scala 727:38:@878.4]
  assign _T_1094 = dat_req_sub_h_d1 == 2'h0; // @[NV_NVDLA_CSC_dl_for_check.scala 727:78:@879.4]
  assign _T_1095 = _T_1092 & _T_1094; // @[NV_NVDLA_CSC_dl_for_check.scala 727:58:@880.4]
  assign dat_req_sub_h_addr_en_0 = layer_st | _T_1095; // @[NV_NVDLA_CSC_dl_for_check.scala 727:17:@881.4]
  assign _T_1099 = dat_req_sub_h_d1 == 2'h1; // @[NV_NVDLA_CSC_dl_for_check.scala 727:78:@883.4]
  assign _T_1100 = _T_1092 & _T_1099; // @[NV_NVDLA_CSC_dl_for_check.scala 727:58:@884.4]
  assign dat_req_sub_h_addr_en_1 = layer_st | _T_1100; // @[NV_NVDLA_CSC_dl_for_check.scala 727:17:@885.4]
  assign _T_1104 = dat_req_sub_h_d1 == 2'h2; // @[NV_NVDLA_CSC_dl_for_check.scala 727:78:@887.4]
  assign _T_1105 = _T_1092 & _T_1104; // @[NV_NVDLA_CSC_dl_for_check.scala 727:58:@888.4]
  assign dat_req_sub_h_addr_en_2 = layer_st | _T_1105; // @[NV_NVDLA_CSC_dl_for_check.scala 727:17:@889.4]
  assign _T_1109 = dat_req_sub_h_d1 == 2'h3; // @[NV_NVDLA_CSC_dl_for_check.scala 727:78:@891.4]
  assign _T_1110 = _T_1092 & _T_1109; // @[NV_NVDLA_CSC_dl_for_check.scala 727:58:@892.4]
  assign dat_req_sub_h_addr_en_3 = layer_st | _T_1110; // @[NV_NVDLA_CSC_dl_for_check.scala 727:17:@893.4]
  assign _GEN_100 = dat_req_sub_h_addr_en_0 ? dat_req_addr_w : {{6'd0}, dat_req_sub_h_addr_0}; // @[NV_NVDLA_CSC_dl_for_check.scala 734:35:@899.4]
  assign _GEN_101 = dat_req_sub_h_addr_en_1 ? dat_req_addr_w : {{6'd0}, dat_req_sub_h_addr_1}; // @[NV_NVDLA_CSC_dl_for_check.scala 734:35:@902.4]
  assign _GEN_102 = dat_req_sub_h_addr_en_2 ? dat_req_addr_w : {{6'd0}, dat_req_sub_h_addr_2}; // @[NV_NVDLA_CSC_dl_for_check.scala 734:35:@905.4]
  assign _GEN_103 = dat_req_sub_h_addr_en_3 ? dat_req_addr_w : {{6'd0}, dat_req_sub_h_addr_3}; // @[NV_NVDLA_CSC_dl_for_check.scala 734:35:@908.4]
  assign _T_1121 = layer_st | sc2buf_dat_rd_en_w; // @[NV_NVDLA_CSC_dl_for_check.scala 740:14:@912.4]
  assign _GEN_104 = _T_1121 ? dat_req_addr_w : sc2buf_dat_rd_addr_out; // @[NV_NVDLA_CSC_dl_for_check.scala 740:34:@913.4]
  assign _GEN_105 = dat_exec_valid_d1 ? dat_req_sub_w_d1 : dat_req_pipe_sub_w; // @[NV_NVDLA_CSC_dl_for_check.scala 748:24:@920.4]
  assign _GEN_106 = dat_exec_valid_d1 ? dat_req_sub_h_d1 : dat_req_pipe_sub_h; // @[NV_NVDLA_CSC_dl_for_check.scala 748:24:@920.4]
  assign _GEN_107 = dat_exec_valid_d1 ? dat_req_sub_c_d1 : dat_req_pipe_sub_c; // @[NV_NVDLA_CSC_dl_for_check.scala 748:24:@920.4]
  assign _GEN_108 = dat_exec_valid_d1 ? dat_req_ch_end_d1 : dat_req_pipe_ch_end; // @[NV_NVDLA_CSC_dl_for_check.scala 748:24:@920.4]
  assign _GEN_109 = dat_exec_valid_d1 ? dat_req_bytes_d1 : dat_req_pipe_bytes; // @[NV_NVDLA_CSC_dl_for_check.scala 748:24:@920.4]
  assign _GEN_110 = dat_exec_valid_d1 ? dat_req_dummy_d1 : dat_req_pipe_dummy; // @[NV_NVDLA_CSC_dl_for_check.scala 748:24:@920.4]
  assign _GEN_111 = dat_exec_valid_d1 ? dat_req_cur_sub_h_d1 : dat_req_pipe_cur_sub_h; // @[NV_NVDLA_CSC_dl_for_check.scala 748:24:@920.4]
  assign _GEN_112 = dat_exec_valid_d1 ? dat_req_sub_w_st_d1 : dat_req_pipe_sub_w_st; // @[NV_NVDLA_CSC_dl_for_check.scala 748:24:@920.4]
  assign _GEN_113 = dat_exec_valid_d1 ? dat_req_rls_d1 : dat_req_pipe_rls; // @[NV_NVDLA_CSC_dl_for_check.scala 748:24:@920.4]
  assign _GEN_114 = dat_exec_valid_d1 ? dat_req_flag_d1 : dat_req_pipe_flag; // @[NV_NVDLA_CSC_dl_for_check.scala 748:24:@920.4]
  assign _GEN_115 = dat_exec_valid_d1 ? dat_req_dummy_d1 : dat_req_exec_dummy; // @[NV_NVDLA_CSC_dl_for_check.scala 748:24:@920.4]
  assign _T_1126 = {1'h0,dat_req_pipe_ch_end,dat_req_pipe_sub_c,dat_req_pipe_sub_h,dat_req_pipe_sub_w}; // @[Cat.scala 30:58:@936.4]
  assign dat_req_pipe_pd = {dat_req_pipe_flag,dat_req_pipe_rls,dat_req_pipe_sub_w_st,dat_req_pipe_dummy,dat_req_pipe_cur_sub_h,dat_req_pipe_bytes,_T_1126}; // @[Cat.scala 30:58:@942.4]
  assign _GEN_116 = dat_req_pipe_pvld ? dat_req_pipe_pd : _T_1155; // @[NV_NVDLA_CSC_dl_for_check.scala 792:33:@984.4]
  assign _GEN_117 = dat_req_exec_pvld ? dat_req_exec_dummy : _T_1193; // @[NV_NVDLA_CSC_dl_for_check.scala 796:33:@988.4]
  assign _GEN_118 = dat_req_exec_pvld ? 2'h0 : _T_1212; // @[NV_NVDLA_CSC_dl_for_check.scala 796:33:@988.4]
  assign _GEN_119 = _T_1136 ? _T_1155 : _T_1158; // @[NV_NVDLA_CSC_dl_for_check.scala 792:33:@993.4]
  assign _GEN_120 = _T_1174 ? _T_1193 : _T_1196; // @[NV_NVDLA_CSC_dl_for_check.scala 796:33:@997.4]
  assign _GEN_121 = _T_1174 ? _T_1212 : _T_1215; // @[NV_NVDLA_CSC_dl_for_check.scala 796:33:@997.4]
  assign _GEN_122 = _T_1139 ? _T_1158 : _T_1161; // @[NV_NVDLA_CSC_dl_for_check.scala 792:33:@1002.4]
  assign _GEN_123 = _T_1177 ? _T_1196 : _T_1199; // @[NV_NVDLA_CSC_dl_for_check.scala 796:33:@1006.4]
  assign _GEN_124 = _T_1177 ? _T_1215 : _T_1218; // @[NV_NVDLA_CSC_dl_for_check.scala 796:33:@1006.4]
  assign _GEN_125 = _T_1142 ? _T_1161 : _T_1164; // @[NV_NVDLA_CSC_dl_for_check.scala 792:33:@1011.4]
  assign _GEN_126 = _T_1180 ? _T_1199 : _T_1202; // @[NV_NVDLA_CSC_dl_for_check.scala 796:33:@1015.4]
  assign _GEN_127 = _T_1180 ? _T_1218 : _T_1221; // @[NV_NVDLA_CSC_dl_for_check.scala 796:33:@1015.4]
  assign _GEN_128 = _T_1145 ? _T_1164 : _T_1167; // @[NV_NVDLA_CSC_dl_for_check.scala 792:33:@1020.4]
  assign _GEN_129 = _T_1183 ? _T_1202 : _T_1205; // @[NV_NVDLA_CSC_dl_for_check.scala 796:33:@1024.4]
  assign _GEN_130 = _T_1183 ? _T_1221 : _T_1224; // @[NV_NVDLA_CSC_dl_for_check.scala 796:33:@1024.4]
  assign _GEN_131 = _T_1148 ? _T_1167 : dat_rsp_pipe_pd; // @[NV_NVDLA_CSC_dl_for_check.scala 792:33:@1029.4]
  assign _GEN_132 = _T_1186 ? _T_1205 : dat_rsp_exec_dummy; // @[NV_NVDLA_CSC_dl_for_check.scala 796:33:@1033.4]
  assign _GEN_133 = _T_1186 ? _T_1224 : dat_rsp_exec_sub_h; // @[NV_NVDLA_CSC_dl_for_check.scala 796:33:@1033.4]
  assign dat_rsp_pipe_sub_w = dat_rsp_pipe_pd[1:0]; // @[NV_NVDLA_CSC_dl_for_check.scala 809:41:@1037.4]
  assign dat_rsp_pipe_sub_h = dat_rsp_pipe_pd[3:2]; // @[NV_NVDLA_CSC_dl_for_check.scala 810:41:@1038.4]
  assign dat_rsp_pipe_sub_c = dat_rsp_pipe_pd[4]; // @[NV_NVDLA_CSC_dl_for_check.scala 811:41:@1039.4]
  assign dat_rsp_pipe_ch_end = dat_rsp_pipe_pd[5]; // @[NV_NVDLA_CSC_dl_for_check.scala 812:42:@1040.4]
  assign dat_rsp_pipe_bytes = dat_rsp_pipe_pd[14:7]; // @[NV_NVDLA_CSC_dl_for_check.scala 813:41:@1041.4]
  assign dat_rsp_pipe_cur_sub_h = dat_rsp_pipe_pd[16:15]; // @[NV_NVDLA_CSC_dl_for_check.scala 814:45:@1042.4]
  assign dat_rsp_pipe_sub_w_st = dat_rsp_pipe_pd[18]; // @[NV_NVDLA_CSC_dl_for_check.scala 816:44:@1044.4]
  assign dat_rsp_pipe_rls = dat_rsp_pipe_pd[19]; // @[NV_NVDLA_CSC_dl_for_check.scala 817:39:@1045.4]
  assign dat_rsp_pipe_flag = dat_rsp_pipe_pd[28:20]; // @[NV_NVDLA_CSC_dl_for_check.scala 818:40:@1046.4]
  assign _T_1252 = dat_rsp_exec_sub_h == 2'h0; // @[NV_NVDLA_CSC_dl_for_check.scala 841:70:@1063.4]
  assign dat_l0c0_en = sc2buf_dat_rd_valid & _T_1252; // @[NV_NVDLA_CSC_dl_for_check.scala 841:48:@1064.4]
  assign _T_1254 = dat_rsp_exec_sub_h == 2'h1; // @[NV_NVDLA_CSC_dl_for_check.scala 842:70:@1065.4]
  assign dat_l1c0_en = sc2buf_dat_rd_valid & _T_1254; // @[NV_NVDLA_CSC_dl_for_check.scala 842:48:@1066.4]
  assign _T_1256 = dat_rsp_exec_sub_h == 2'h2; // @[NV_NVDLA_CSC_dl_for_check.scala 843:70:@1067.4]
  assign dat_l2c0_en = sc2buf_dat_rd_valid & _T_1256; // @[NV_NVDLA_CSC_dl_for_check.scala 843:48:@1068.4]
  assign _T_1258 = dat_rsp_exec_sub_h == 2'h3; // @[NV_NVDLA_CSC_dl_for_check.scala 844:70:@1069.4]
  assign dat_l3c0_en = sc2buf_dat_rd_valid & _T_1258; // @[NV_NVDLA_CSC_dl_for_check.scala 844:48:@1070.4]
  assign _T_1259 = is_winograd_d1[11]; // @[NV_NVDLA_CSC_dl_for_check.scala 847:62:@1071.4]
  assign _T_1260 = sc2buf_dat_rd_valid & _T_1259; // @[NV_NVDLA_CSC_dl_for_check.scala 847:46:@1072.4]
  assign _T_1261 = ~ dat_rsp_pipe_sub_w_st; // @[NV_NVDLA_CSC_dl_for_check.scala 847:69:@1073.4]
  assign dat_wg_adv = _T_1260 & _T_1261; // @[NV_NVDLA_CSC_dl_for_check.scala 847:67:@1074.4]
  assign _T_1262 = dat_rsp_exec_sub_h[0]; // @[NV_NVDLA_CSC_dl_for_check.scala 848:52:@1075.4]
  assign _T_1263 = ~ _T_1262; // @[NV_NVDLA_CSC_dl_for_check.scala 848:33:@1076.4]
  assign _T_1264 = dat_wg_adv & _T_1263; // @[NV_NVDLA_CSC_dl_for_check.scala 848:31:@1077.4]
  assign _T_1265 = is_img_d1[12]; // @[NV_NVDLA_CSC_dl_for_check.scala 848:69:@1078.4]
  assign _T_1266 = _T_1265 & dat_l0c0_en; // @[NV_NVDLA_CSC_dl_for_check.scala 848:74:@1079.4]
  assign _T_1267 = ~ dat_l0c0_dummy; // @[NV_NVDLA_CSC_dl_for_check.scala 848:90:@1080.4]
  assign _T_1268 = _T_1266 & _T_1267; // @[NV_NVDLA_CSC_dl_for_check.scala 848:88:@1081.4]
  assign dat_l0c1_en = _T_1264 | _T_1268; // @[NV_NVDLA_CSC_dl_for_check.scala 848:57:@1082.4]
  assign _T_1270 = dat_wg_adv & _T_1262; // @[NV_NVDLA_CSC_dl_for_check.scala 849:31:@1084.4]
  assign _T_1271 = is_img_d1[13]; // @[NV_NVDLA_CSC_dl_for_check.scala 849:68:@1085.4]
  assign _T_1272 = _T_1271 & dat_l1c0_en; // @[NV_NVDLA_CSC_dl_for_check.scala 849:73:@1086.4]
  assign _T_1273 = ~ dat_l1c0_dummy; // @[NV_NVDLA_CSC_dl_for_check.scala 849:89:@1087.4]
  assign _T_1274 = _T_1272 & _T_1273; // @[NV_NVDLA_CSC_dl_for_check.scala 849:87:@1088.4]
  assign dat_l1c1_en = _T_1270 | _T_1274; // @[NV_NVDLA_CSC_dl_for_check.scala 849:56:@1089.4]
  assign _T_1275 = is_img_d1[15]; // @[NV_NVDLA_CSC_dl_for_check.scala 850:29:@1090.4]
  assign _T_1276 = _T_1275 & dat_l2c0_en; // @[NV_NVDLA_CSC_dl_for_check.scala 850:34:@1091.4]
  assign _T_1277 = ~ dat_l2c0_dummy; // @[NV_NVDLA_CSC_dl_for_check.scala 850:50:@1092.4]
  assign dat_l2c1_en = _T_1276 & _T_1277; // @[NV_NVDLA_CSC_dl_for_check.scala 850:48:@1093.4]
  assign _T_1278 = is_img_d1[16]; // @[NV_NVDLA_CSC_dl_for_check.scala 851:29:@1094.4]
  assign _T_1279 = _T_1278 & dat_l3c0_en; // @[NV_NVDLA_CSC_dl_for_check.scala 851:34:@1095.4]
  assign _T_1280 = ~ dat_l3c0_dummy; // @[NV_NVDLA_CSC_dl_for_check.scala 851:50:@1096.4]
  assign dat_l3c1_en = _T_1279 & _T_1280; // @[NV_NVDLA_CSC_dl_for_check.scala 851:48:@1097.4]
  assign _T_1281 = dat_rsp_exec_pvld & dat_rsp_exec_dummy; // @[NV_NVDLA_CSC_dl_for_check.scala 853:41:@1098.4]
  assign dat_dummy_l0_en = _T_1281 & _T_1252; // @[NV_NVDLA_CSC_dl_for_check.scala 853:62:@1100.4]
  assign dat_dummy_l1_en = _T_1281 & _T_1254; // @[NV_NVDLA_CSC_dl_for_check.scala 854:62:@1103.4]
  assign dat_dummy_l2_en = _T_1281 & _T_1256; // @[NV_NVDLA_CSC_dl_for_check.scala 855:62:@1106.4]
  assign dat_dummy_l3_en = _T_1281 & _T_1258; // @[NV_NVDLA_CSC_dl_for_check.scala 856:62:@1109.4]
  assign dat_l0_set = dat_l0c0_en | dat_dummy_l0_en; // @[NV_NVDLA_CSC_dl_for_check.scala 858:30:@1110.4]
  assign dat_l1_set = dat_l1c0_en | dat_dummy_l1_en; // @[NV_NVDLA_CSC_dl_for_check.scala 859:30:@1111.4]
  assign dat_l2_set = dat_l2c0_en | dat_dummy_l2_en; // @[NV_NVDLA_CSC_dl_for_check.scala 860:30:@1112.4]
  assign dat_l3_set = dat_l3c0_en | dat_dummy_l3_en; // @[NV_NVDLA_CSC_dl_for_check.scala 861:30:@1113.4]
  assign _T_1295 = dat_dummy_l0_en ? 1'h1 : dat_l0c0_dummy; // @[NV_NVDLA_CSC_dl_for_check.scala 863:48:@1114.4]
  assign _T_1296 = dat_l0c0_en ? 1'h0 : _T_1295; // @[NV_NVDLA_CSC_dl_for_check.scala 863:22:@1115.4]
  assign _T_1299 = dat_dummy_l1_en ? 1'h1 : dat_l1c0_dummy; // @[NV_NVDLA_CSC_dl_for_check.scala 864:48:@1117.4]
  assign _T_1300 = dat_l1c0_en ? 1'h0 : _T_1299; // @[NV_NVDLA_CSC_dl_for_check.scala 864:22:@1118.4]
  assign _T_1303 = dat_dummy_l2_en ? 1'h1 : dat_l2c0_dummy; // @[NV_NVDLA_CSC_dl_for_check.scala 865:48:@1120.4]
  assign _T_1304 = dat_l2c0_en ? 1'h0 : _T_1303; // @[NV_NVDLA_CSC_dl_for_check.scala 865:22:@1121.4]
  assign _T_1307 = dat_dummy_l3_en ? 1'h1 : dat_l3c0_dummy; // @[NV_NVDLA_CSC_dl_for_check.scala 866:48:@1123.4]
  assign _T_1308 = dat_l3c0_en ? 1'h0 : _T_1307; // @[NV_NVDLA_CSC_dl_for_check.scala 866:22:@1124.4]
  assign _T_1310 = dat_l0_set ? dat_l0c0_dummy : dat_l0c1_dummy; // @[NV_NVDLA_CSC_dl_for_check.scala 867:48:@1126.4]
  assign _T_1311 = dat_l0c1_en ? 1'h0 : _T_1310; // @[NV_NVDLA_CSC_dl_for_check.scala 867:22:@1127.4]
  assign _T_1314 = sub_h_total_g2 != 2'h0; // @[NV_NVDLA_CSC_dl_for_check.scala 868:77:@1129.4]
  assign _T_1315 = dat_l1_set & _T_1314; // @[NV_NVDLA_CSC_dl_for_check.scala 868:60:@1130.4]
  assign _T_1316 = _T_1315 ? dat_l1c0_dummy : dat_l1c1_dummy; // @[NV_NVDLA_CSC_dl_for_check.scala 868:48:@1131.4]
  assign _T_1317 = dat_l1c1_en ? 1'h0 : _T_1316; // @[NV_NVDLA_CSC_dl_for_check.scala 868:22:@1132.4]
  assign _T_1319 = sub_h_total_g2[1]; // @[NV_NVDLA_CSC_dl_for_check.scala 869:76:@1134.4]
  assign _T_1320 = dat_l2_set & _T_1319; // @[NV_NVDLA_CSC_dl_for_check.scala 869:60:@1135.4]
  assign _T_1321 = _T_1320 ? dat_l2c0_dummy : dat_l2c1_dummy; // @[NV_NVDLA_CSC_dl_for_check.scala 869:48:@1136.4]
  assign _T_1322 = dat_l2c1_en ? 1'h0 : _T_1321; // @[NV_NVDLA_CSC_dl_for_check.scala 869:22:@1137.4]
  assign _T_1325 = dat_l3_set & _T_1319; // @[NV_NVDLA_CSC_dl_for_check.scala 870:60:@1140.4]
  assign _T_1326 = _T_1325 ? dat_l3c0_dummy : dat_l3c1_dummy; // @[NV_NVDLA_CSC_dl_for_check.scala 870:48:@1141.4]
  assign _T_1327 = dat_l3c1_en ? 1'h0 : _T_1326; // @[NV_NVDLA_CSC_dl_for_check.scala 870:22:@1142.4]
  assign _T_1376 = {dat_rsp_pipe_flag,dat_rsp_pipe_rls,dat_rsp_pipe_cur_sub_h,dat_rsp_pipe_bytes,1'h0,dat_rsp_pipe_ch_end,dat_rsp_pipe_sub_c,dat_rsp_pipe_sub_h,dat_rsp_pipe_sub_w}; // @[Cat.scala 30:58:@1194.4]
  assign _GEN_142 = dat_rsp_pipe_pvld ? _T_1376 : _T_1358; // @[NV_NVDLA_CSC_dl_for_check.scala 906:28:@1197.4]
  assign _GEN_143 = dat_rsp_l0_pvld ? _T_1358 : _T_1361; // @[NV_NVDLA_CSC_dl_for_check.scala 906:28:@1201.4]
  assign _GEN_144 = dat_rsp_l1_pvld ? _T_1361 : _T_1364; // @[NV_NVDLA_CSC_dl_for_check.scala 906:28:@1205.4]
  assign _GEN_145 = dat_rsp_l2_pvld ? _T_1364 : _T_1367; // @[NV_NVDLA_CSC_dl_for_check.scala 906:28:@1209.4]
  assign dat_rsp_l0_sub_c = _T_1358[4]; // @[NV_NVDLA_CSC_dl_for_check.scala 924:39:@1235.4]
  assign dat_rsp_l1_sub_c = _T_1361[4]; // @[NV_NVDLA_CSC_dl_for_check.scala 925:39:@1236.4]
  assign dat_rsp_l2_sub_c = _T_1364[4]; // @[NV_NVDLA_CSC_dl_for_check.scala 926:39:@1237.4]
  assign dat_rsp_l3_sub_c = _T_1367[4]; // @[NV_NVDLA_CSC_dl_for_check.scala 927:39:@1238.4]
  assign dat_rsp_l0_flag = _T_1358[26:18]; // @[NV_NVDLA_CSC_dl_for_check.scala 929:38:@1239.4]
  assign dat_rsp_l1_flag = _T_1361[26:18]; // @[NV_NVDLA_CSC_dl_for_check.scala 930:38:@1240.4]
  assign dat_rsp_l2_flag = _T_1364[26:18]; // @[NV_NVDLA_CSC_dl_for_check.scala 931:38:@1241.4]
  assign dat_rsp_l3_flag = _T_1367[26:18]; // @[NV_NVDLA_CSC_dl_for_check.scala 932:38:@1242.4]
  assign dat_rsp_l0_stripe_end = dat_rsp_l0_flag[6]; // @[NV_NVDLA_CSC_dl_for_check.scala 934:44:@1243.4]
  assign dat_rsp_l1_stripe_end = dat_rsp_l1_flag[6]; // @[NV_NVDLA_CSC_dl_for_check.scala 935:44:@1244.4]
  assign dat_rsp_l2_stripe_end = dat_rsp_l2_flag[6]; // @[NV_NVDLA_CSC_dl_for_check.scala 936:44:@1245.4]
  assign dat_rsp_l3_stripe_end = dat_rsp_l3_flag[6]; // @[NV_NVDLA_CSC_dl_for_check.scala 937:44:@1246.4]
  assign dat_rsp_sub_w = dat_rsp_pd[1:0]; // @[NV_NVDLA_CSC_dl_for_check.scala 940:31:@1247.4]
  assign dat_rsp_bytes = dat_rsp_pd[14:7]; // @[NV_NVDLA_CSC_dl_for_check.scala 944:31:@1251.4]
  assign dat_rsp_cur_sub_h = dat_rsp_pd[16:15]; // @[NV_NVDLA_CSC_dl_for_check.scala 945:35:@1252.4]
  assign dat_rsp_flag = dat_rsp_pd[26:18]; // @[NV_NVDLA_CSC_dl_for_check.scala 947:30:@1255.4]
  assign rsp_sft_cnt_l0_sub = dat_l0c0_en ? 8'h40 : 8'h0; // @[NV_NVDLA_CSC_dl_for_check.scala 956:29:@1261.4]
  assign rsp_sft_cnt_l1_sub = dat_l1c0_en ? 8'h40 : 8'h0; // @[NV_NVDLA_CSC_dl_for_check.scala 957:29:@1262.4]
  assign rsp_sft_cnt_l2_sub = dat_l2c0_en ? 8'h40 : 8'h0; // @[NV_NVDLA_CSC_dl_for_check.scala 958:29:@1263.4]
  assign rsp_sft_cnt_l3_sub = dat_l3c0_en ? 8'h40 : 8'h0; // @[NV_NVDLA_CSC_dl_for_check.scala 959:29:@1264.4]
  assign _T_1414 = pixel_x_byte_stride > 7'h40; // @[NV_NVDLA_CSC_dl_for_check.scala 961:50:@1265.4]
  assign _GEN_726 = {{1'd0}, pixel_x_byte_stride}; // @[NV_NVDLA_CSC_dl_for_check.scala 961:111:@1266.4]
  assign _T_1416 = rsp_sft_cnt_l0 + _GEN_726; // @[NV_NVDLA_CSC_dl_for_check.scala 961:111:@1266.4]
  assign _GEN_727 = {{1'd0}, rsp_sft_cnt_l0_sub}; // @[NV_NVDLA_CSC_dl_for_check.scala 961:134:@1267.4]
  assign _T_1417 = _T_1416 - _GEN_727; // @[NV_NVDLA_CSC_dl_for_check.scala 961:134:@1267.4]
  assign _T_1418 = $unsigned(_T_1417); // @[NV_NVDLA_CSC_dl_for_check.scala 961:134:@1268.4]
  assign _T_1419 = _T_1414 ? 10'h40 : _T_1418; // @[NV_NVDLA_CSC_dl_for_check.scala 961:29:@1269.4]
  assign rsp_sft_cnt_l0_inc = _T_1419[7:0]; // @[NV_NVDLA_CSC_dl_for_check.scala 961:156:@1270.4]
  assign _T_1423 = rsp_sft_cnt_l1 + _GEN_726; // @[NV_NVDLA_CSC_dl_for_check.scala 962:111:@1272.4]
  assign _GEN_729 = {{1'd0}, rsp_sft_cnt_l1_sub}; // @[NV_NVDLA_CSC_dl_for_check.scala 962:134:@1273.4]
  assign _T_1424 = _T_1423 - _GEN_729; // @[NV_NVDLA_CSC_dl_for_check.scala 962:134:@1273.4]
  assign _T_1425 = $unsigned(_T_1424); // @[NV_NVDLA_CSC_dl_for_check.scala 962:134:@1274.4]
  assign _T_1426 = _T_1414 ? 10'h40 : _T_1425; // @[NV_NVDLA_CSC_dl_for_check.scala 962:29:@1275.4]
  assign rsp_sft_cnt_l1_inc = _T_1426[7:0]; // @[NV_NVDLA_CSC_dl_for_check.scala 962:156:@1276.4]
  assign _T_1430 = rsp_sft_cnt_l2 + _GEN_726; // @[NV_NVDLA_CSC_dl_for_check.scala 963:111:@1278.4]
  assign _GEN_731 = {{1'd0}, rsp_sft_cnt_l2_sub}; // @[NV_NVDLA_CSC_dl_for_check.scala 963:134:@1279.4]
  assign _T_1431 = _T_1430 - _GEN_731; // @[NV_NVDLA_CSC_dl_for_check.scala 963:134:@1279.4]
  assign _T_1432 = $unsigned(_T_1431); // @[NV_NVDLA_CSC_dl_for_check.scala 963:134:@1280.4]
  assign _T_1433 = _T_1414 ? 10'h40 : _T_1432; // @[NV_NVDLA_CSC_dl_for_check.scala 963:29:@1281.4]
  assign rsp_sft_cnt_l2_inc = _T_1433[7:0]; // @[NV_NVDLA_CSC_dl_for_check.scala 963:156:@1282.4]
  assign _T_1437 = rsp_sft_cnt_l3 + _GEN_726; // @[NV_NVDLA_CSC_dl_for_check.scala 964:111:@1284.4]
  assign _GEN_733 = {{1'd0}, rsp_sft_cnt_l3_sub}; // @[NV_NVDLA_CSC_dl_for_check.scala 964:134:@1285.4]
  assign _T_1438 = _T_1437 - _GEN_733; // @[NV_NVDLA_CSC_dl_for_check.scala 964:134:@1285.4]
  assign _T_1439 = $unsigned(_T_1438); // @[NV_NVDLA_CSC_dl_for_check.scala 964:134:@1286.4]
  assign _T_1440 = _T_1414 ? 10'h40 : _T_1439; // @[NV_NVDLA_CSC_dl_for_check.scala 964:29:@1287.4]
  assign rsp_sft_cnt_l3_inc = _T_1440[7:0]; // @[NV_NVDLA_CSC_dl_for_check.scala 964:156:@1288.4]
  assign _T_1442 = ~ dat_rsp_l0_sub_c; // @[NV_NVDLA_CSC_dl_for_check.scala 973:52:@1289.4]
  assign _T_1443 = dat_rsp_l0_stripe_end & _T_1442; // @[NV_NVDLA_CSC_dl_for_check.scala 973:50:@1290.4]
  assign _T_1444 = dat_rsp_l0_stripe_end & dat_rsp_l0_sub_c; // @[NV_NVDLA_CSC_dl_for_check.scala 974:50:@1291.4]
  assign _T_1447 = rsp_sft_cnt_l0_inc & 8'h3f; // @[NV_NVDLA_CSC_dl_for_check.scala 975:64:@1292.4]
  assign _T_1448 = dat_dummy_l0_en ? _T_1447 : rsp_sft_cnt_l0_inc; // @[NV_NVDLA_CSC_dl_for_check.scala 975:27:@1293.4]
  assign _T_1449 = _T_1444 ? 8'h40 : _T_1448; // @[NV_NVDLA_CSC_dl_for_check.scala 974:27:@1294.4]
  assign _T_1450 = _T_1443 ? rsp_sft_cnt_l0_ori : _T_1449; // @[NV_NVDLA_CSC_dl_for_check.scala 973:27:@1295.4]
  assign rsp_sft_cnt_l0_w = layer_st ? 8'h40 : _T_1450; // @[NV_NVDLA_CSC_dl_for_check.scala 972:27:@1296.4]
  assign _T_1452 = ~ dat_rsp_l1_sub_c; // @[NV_NVDLA_CSC_dl_for_check.scala 978:52:@1297.4]
  assign _T_1453 = dat_rsp_l1_stripe_end & _T_1452; // @[NV_NVDLA_CSC_dl_for_check.scala 978:50:@1298.4]
  assign _T_1454 = dat_rsp_l1_stripe_end & dat_rsp_l1_sub_c; // @[NV_NVDLA_CSC_dl_for_check.scala 979:50:@1299.4]
  assign _T_1457 = rsp_sft_cnt_l1_inc & 8'h3f; // @[NV_NVDLA_CSC_dl_for_check.scala 980:64:@1300.4]
  assign _T_1458 = dat_dummy_l1_en ? _T_1457 : rsp_sft_cnt_l1_inc; // @[NV_NVDLA_CSC_dl_for_check.scala 980:27:@1301.4]
  assign _T_1459 = _T_1454 ? 8'h40 : _T_1458; // @[NV_NVDLA_CSC_dl_for_check.scala 979:27:@1302.4]
  assign _T_1460 = _T_1453 ? rsp_sft_cnt_l1_ori : _T_1459; // @[NV_NVDLA_CSC_dl_for_check.scala 978:27:@1303.4]
  assign rsp_sft_cnt_l1_w = layer_st ? 8'h40 : _T_1460; // @[NV_NVDLA_CSC_dl_for_check.scala 977:27:@1304.4]
  assign _T_1462 = ~ dat_rsp_l2_sub_c; // @[NV_NVDLA_CSC_dl_for_check.scala 983:52:@1305.4]
  assign _T_1463 = dat_rsp_l2_stripe_end & _T_1462; // @[NV_NVDLA_CSC_dl_for_check.scala 983:50:@1306.4]
  assign _T_1464 = dat_rsp_l2_stripe_end & dat_rsp_l2_sub_c; // @[NV_NVDLA_CSC_dl_for_check.scala 984:50:@1307.4]
  assign _T_1467 = rsp_sft_cnt_l2_inc & 8'h3f; // @[NV_NVDLA_CSC_dl_for_check.scala 985:64:@1308.4]
  assign _T_1468 = dat_dummy_l2_en ? _T_1467 : rsp_sft_cnt_l2_inc; // @[NV_NVDLA_CSC_dl_for_check.scala 985:27:@1309.4]
  assign _T_1469 = _T_1464 ? 8'h40 : _T_1468; // @[NV_NVDLA_CSC_dl_for_check.scala 984:27:@1310.4]
  assign _T_1470 = _T_1463 ? rsp_sft_cnt_l2_ori : _T_1469; // @[NV_NVDLA_CSC_dl_for_check.scala 983:27:@1311.4]
  assign rsp_sft_cnt_l2_w = layer_st ? 8'h40 : _T_1470; // @[NV_NVDLA_CSC_dl_for_check.scala 982:27:@1312.4]
  assign _T_1472 = ~ dat_rsp_l3_sub_c; // @[NV_NVDLA_CSC_dl_for_check.scala 988:52:@1313.4]
  assign _T_1473 = dat_rsp_l3_stripe_end & _T_1472; // @[NV_NVDLA_CSC_dl_for_check.scala 988:50:@1314.4]
  assign _T_1474 = dat_rsp_l3_stripe_end & dat_rsp_l3_sub_c; // @[NV_NVDLA_CSC_dl_for_check.scala 989:50:@1315.4]
  assign _T_1477 = rsp_sft_cnt_l3_inc & 8'h3f; // @[NV_NVDLA_CSC_dl_for_check.scala 990:64:@1316.4]
  assign _T_1478 = dat_dummy_l3_en ? _T_1477 : rsp_sft_cnt_l3_inc; // @[NV_NVDLA_CSC_dl_for_check.scala 990:27:@1317.4]
  assign _T_1479 = _T_1474 ? 8'h40 : _T_1478; // @[NV_NVDLA_CSC_dl_for_check.scala 989:27:@1318.4]
  assign _T_1480 = _T_1473 ? rsp_sft_cnt_l3_ori : _T_1479; // @[NV_NVDLA_CSC_dl_for_check.scala 988:27:@1319.4]
  assign rsp_sft_cnt_l3_w = layer_st ? 8'h40 : _T_1480; // @[NV_NVDLA_CSC_dl_for_check.scala 987:27:@1320.4]
  assign _T_1481 = is_img_d1[17]; // @[NV_NVDLA_CSC_dl_for_check.scala 993:46:@1321.4]
  assign _T_1482 = _T_1481 & dat_rsp_l0_pvld; // @[NV_NVDLA_CSC_dl_for_check.scala 993:51:@1322.4]
  assign rsp_sft_cnt_l0_en = layer_st | _T_1482; // @[NV_NVDLA_CSC_dl_for_check.scala 993:34:@1323.4]
  assign _T_1483 = is_img_d1[18]; // @[NV_NVDLA_CSC_dl_for_check.scala 994:46:@1324.4]
  assign _T_1484 = _T_1483 & dat_rsp_l1_pvld; // @[NV_NVDLA_CSC_dl_for_check.scala 994:51:@1325.4]
  assign _T_1486 = sub_h_total_g5 != 3'h1; // @[NV_NVDLA_CSC_dl_for_check.scala 994:87:@1326.4]
  assign _T_1487 = _T_1484 & _T_1486; // @[NV_NVDLA_CSC_dl_for_check.scala 994:69:@1327.4]
  assign rsp_sft_cnt_l1_en = layer_st | _T_1487; // @[NV_NVDLA_CSC_dl_for_check.scala 994:34:@1328.4]
  assign _T_1488 = is_img_d1[19]; // @[NV_NVDLA_CSC_dl_for_check.scala 995:46:@1329.4]
  assign _T_1489 = _T_1488 & dat_rsp_l2_pvld; // @[NV_NVDLA_CSC_dl_for_check.scala 995:51:@1330.4]
  assign _T_1491 = sub_h_total_g5 == 3'h4; // @[NV_NVDLA_CSC_dl_for_check.scala 995:87:@1331.4]
  assign _T_1492 = _T_1489 & _T_1491; // @[NV_NVDLA_CSC_dl_for_check.scala 995:69:@1332.4]
  assign rsp_sft_cnt_l2_en = layer_st | _T_1492; // @[NV_NVDLA_CSC_dl_for_check.scala 995:34:@1333.4]
  assign _T_1493 = is_img_d1[20]; // @[NV_NVDLA_CSC_dl_for_check.scala 996:46:@1334.4]
  assign _T_1494 = _T_1493 & dat_rsp_l3_pvld; // @[NV_NVDLA_CSC_dl_for_check.scala 996:51:@1335.4]
  assign _T_1497 = _T_1494 & _T_1491; // @[NV_NVDLA_CSC_dl_for_check.scala 996:69:@1337.4]
  assign rsp_sft_cnt_l3_en = layer_st | _T_1497; // @[NV_NVDLA_CSC_dl_for_check.scala 996:34:@1338.4]
  assign _T_1498 = is_img_d1[21]; // @[NV_NVDLA_CSC_dl_for_check.scala 998:50:@1339.4]
  assign _T_1499 = _T_1498 & dat_rsp_l0_pvld; // @[NV_NVDLA_CSC_dl_for_check.scala 998:55:@1340.4]
  assign _T_1500 = _T_1499 & dat_rsp_l0_stripe_end; // @[NV_NVDLA_CSC_dl_for_check.scala 998:73:@1341.4]
  assign _T_1501 = _T_1500 & dat_rsp_l0_sub_c; // @[NV_NVDLA_CSC_dl_for_check.scala 998:97:@1342.4]
  assign rsp_sft_cnt_l0_ori_en = layer_st | _T_1501; // @[NV_NVDLA_CSC_dl_for_check.scala 998:38:@1343.4]
  assign _T_1502 = is_img_d1[22]; // @[NV_NVDLA_CSC_dl_for_check.scala 999:50:@1344.4]
  assign _T_1503 = _T_1502 & dat_rsp_l1_pvld; // @[NV_NVDLA_CSC_dl_for_check.scala 999:55:@1345.4]
  assign _T_1504 = _T_1503 & dat_rsp_l1_stripe_end; // @[NV_NVDLA_CSC_dl_for_check.scala 999:73:@1346.4]
  assign _T_1505 = _T_1504 & dat_rsp_l1_sub_c; // @[NV_NVDLA_CSC_dl_for_check.scala 999:97:@1347.4]
  assign _T_1507 = sub_h_total_g6 != 3'h1; // @[NV_NVDLA_CSC_dl_for_check.scala 999:138:@1348.4]
  assign _T_1508 = _T_1505 & _T_1507; // @[NV_NVDLA_CSC_dl_for_check.scala 999:120:@1349.4]
  assign rsp_sft_cnt_l1_ori_en = layer_st | _T_1508; // @[NV_NVDLA_CSC_dl_for_check.scala 999:38:@1350.4]
  assign _T_1509 = is_img_d1[23]; // @[NV_NVDLA_CSC_dl_for_check.scala 1000:50:@1351.4]
  assign _T_1510 = _T_1509 & dat_rsp_l2_pvld; // @[NV_NVDLA_CSC_dl_for_check.scala 1000:55:@1352.4]
  assign _T_1511 = _T_1510 & dat_rsp_l2_stripe_end; // @[NV_NVDLA_CSC_dl_for_check.scala 1000:73:@1353.4]
  assign _T_1512 = _T_1511 & dat_rsp_l2_sub_c; // @[NV_NVDLA_CSC_dl_for_check.scala 1000:97:@1354.4]
  assign _T_1514 = sub_h_total_g6 == 3'h4; // @[NV_NVDLA_CSC_dl_for_check.scala 1000:138:@1355.4]
  assign _T_1515 = _T_1512 & _T_1514; // @[NV_NVDLA_CSC_dl_for_check.scala 1000:120:@1356.4]
  assign rsp_sft_cnt_l2_ori_en = layer_st | _T_1515; // @[NV_NVDLA_CSC_dl_for_check.scala 1000:38:@1357.4]
  assign _T_1516 = is_img_d1[24]; // @[NV_NVDLA_CSC_dl_for_check.scala 1001:50:@1358.4]
  assign _T_1517 = _T_1516 & dat_rsp_l3_pvld; // @[NV_NVDLA_CSC_dl_for_check.scala 1001:55:@1359.4]
  assign _T_1518 = _T_1517 & dat_rsp_l3_stripe_end; // @[NV_NVDLA_CSC_dl_for_check.scala 1001:73:@1360.4]
  assign _T_1519 = _T_1518 & dat_rsp_l3_sub_c; // @[NV_NVDLA_CSC_dl_for_check.scala 1001:97:@1361.4]
  assign _T_1522 = _T_1519 & _T_1514; // @[NV_NVDLA_CSC_dl_for_check.scala 1001:120:@1363.4]
  assign rsp_sft_cnt_l3_ori_en = layer_st | _T_1522; // @[NV_NVDLA_CSC_dl_for_check.scala 1001:38:@1364.4]
  assign _GEN_146 = rsp_sft_cnt_l0_en ? rsp_sft_cnt_l0_w : rsp_sft_cnt_l0; // @[NV_NVDLA_CSC_dl_for_check.scala 1003:24:@1365.4]
  assign _GEN_147 = rsp_sft_cnt_l1_en ? rsp_sft_cnt_l1_w : rsp_sft_cnt_l1; // @[NV_NVDLA_CSC_dl_for_check.scala 1004:24:@1368.4]
  assign _GEN_148 = rsp_sft_cnt_l2_en ? rsp_sft_cnt_l2_w : rsp_sft_cnt_l2; // @[NV_NVDLA_CSC_dl_for_check.scala 1005:24:@1371.4]
  assign _GEN_149 = rsp_sft_cnt_l3_en ? rsp_sft_cnt_l3_w : rsp_sft_cnt_l3; // @[NV_NVDLA_CSC_dl_for_check.scala 1006:24:@1374.4]
  assign _GEN_150 = rsp_sft_cnt_l0_ori_en ? rsp_sft_cnt_l0_w : rsp_sft_cnt_l0_ori; // @[NV_NVDLA_CSC_dl_for_check.scala 1007:28:@1377.4]
  assign _GEN_151 = rsp_sft_cnt_l1_ori_en ? rsp_sft_cnt_l1_w : rsp_sft_cnt_l1_ori; // @[NV_NVDLA_CSC_dl_for_check.scala 1008:28:@1380.4]
  assign _GEN_152 = rsp_sft_cnt_l2_ori_en ? rsp_sft_cnt_l2_w : rsp_sft_cnt_l2_ori; // @[NV_NVDLA_CSC_dl_for_check.scala 1009:28:@1383.4]
  assign _GEN_153 = rsp_sft_cnt_l3_ori_en ? rsp_sft_cnt_l3_w : rsp_sft_cnt_l3_ori; // @[NV_NVDLA_CSC_dl_for_check.scala 1010:28:@1386.4]
  assign _T_1523 = pad_value[7:0]; // @[NV_NVDLA_CSC_dl_for_check.scala 1019:55:@1389.4]
  assign _T_1526 = {_T_1523,_T_1523,_T_1523,_T_1523,_T_1523,_T_1523,_T_1523,_T_1523}; // @[Cat.scala 30:58:@1392.4]
  assign _T_1527 = {_T_1523,_T_1523,_T_1523,_T_1523,_T_1523,_T_1523,_T_1523,_T_1523,_T_1526}; // @[Cat.scala 30:58:@1393.4]
  assign _T_1528 = {_T_1523,_T_1523,_T_1523,_T_1523,_T_1523,_T_1523,_T_1523,_T_1523,_T_1526,_T_1527}; // @[Cat.scala 30:58:@1394.4]
  assign dat_rsp_pad_value = {_T_1528,_T_1528}; // @[Cat.scala 30:58:@1395.4]
  assign dat_rsp_l0c0 = dat_l0c0_dummy ? dat_rsp_pad_value : dat_l0c0; // @[NV_NVDLA_CSC_dl_for_check.scala 1021:23:@1396.4]
  assign dat_rsp_l1c0 = dat_l1c0_dummy ? dat_rsp_pad_value : dat_l1c0; // @[NV_NVDLA_CSC_dl_for_check.scala 1022:23:@1397.4]
  assign dat_rsp_l2c0 = dat_l2c0_dummy ? dat_rsp_pad_value : dat_l2c0; // @[NV_NVDLA_CSC_dl_for_check.scala 1023:23:@1398.4]
  assign dat_rsp_l3c0 = dat_l3c0_dummy ? dat_rsp_pad_value : dat_l3c0; // @[NV_NVDLA_CSC_dl_for_check.scala 1024:23:@1399.4]
  assign dat_rsp_l0c1 = dat_l0c1_dummy ? dat_rsp_pad_value : dat_l0c1; // @[NV_NVDLA_CSC_dl_for_check.scala 1026:23:@1400.4]
  assign dat_rsp_l1c1 = dat_l1c1_dummy ? dat_rsp_pad_value : dat_l1c1; // @[NV_NVDLA_CSC_dl_for_check.scala 1027:23:@1401.4]
  assign dat_rsp_l2c1 = dat_l2c1_dummy ? dat_rsp_pad_value : dat_l2c1; // @[NV_NVDLA_CSC_dl_for_check.scala 1028:23:@1402.4]
  assign dat_rsp_l3c1 = dat_l3c1_dummy ? dat_rsp_pad_value : dat_l3c1; // @[NV_NVDLA_CSC_dl_for_check.scala 1029:23:@1403.4]
  assign _T_1530 = is_winograd_d1[14]; // @[NV_NVDLA_CSC_dl_for_check.scala 1039:42:@1405.4]
  assign _T_1531 = is_img_d1[26]; // @[NV_NVDLA_CSC_dl_for_check.scala 1039:58:@1406.4]
  assign _T_1532 = _T_1530 | _T_1531; // @[NV_NVDLA_CSC_dl_for_check.scala 1039:47:@1407.4]
  assign _T_1535 = dat_rsp_bytes <= 8'h20; // @[NV_NVDLA_CSC_dl_for_check.scala 1040:43:@1408.4]
  assign _T_1536 = dat_rsp_sub_w[0]; // @[NV_NVDLA_CSC_dl_for_check.scala 1040:87:@1409.4]
  assign _T_1538 = _T_1536 == 1'h0; // @[NV_NVDLA_CSC_dl_for_check.scala 1040:91:@1410.4]
  assign _T_1539 = _T_1535 & _T_1538; // @[NV_NVDLA_CSC_dl_for_check.scala 1040:72:@1411.4]
  assign _T_1541 = dat_rsp_l0c0[255:0]; // @[NV_NVDLA_CSC_dl_for_check.scala 1040:171:@1412.4]
  assign _T_1542 = {256'h0,_T_1541}; // @[Cat.scala 30:58:@1413.4]
  assign _T_1548 = _T_1535 & _T_1536; // @[NV_NVDLA_CSC_dl_for_check.scala 1041:72:@1417.4]
  assign _T_1550 = dat_rsp_l0c0[511:256]; // @[NV_NVDLA_CSC_dl_for_check.scala 1041:171:@1418.4]
  assign _T_1551 = {256'h0,_T_1550}; // @[Cat.scala 30:58:@1419.4]
  assign _T_1552 = _T_1548 ? _T_1551 : dat_rsp_l0c0; // @[NV_NVDLA_CSC_dl_for_check.scala 1041:27:@1420.4]
  assign _T_1553 = _T_1539 ? _T_1542 : _T_1552; // @[NV_NVDLA_CSC_dl_for_check.scala 1040:27:@1421.4]
  assign dat_rsp_conv_8b = _T_1532 ? 512'h0 : _T_1553; // @[NV_NVDLA_CSC_dl_for_check.scala 1039:27:@1422.4]
  assign dat_rsp_conv_0 = dat_rsp_conv_8b[7:0]; // @[NV_NVDLA_CSC_dl_for_check.scala 1057:39:@1425.4]
  assign dat_rsp_conv_1 = dat_rsp_conv_8b[15:8]; // @[NV_NVDLA_CSC_dl_for_check.scala 1057:39:@1427.4]
  assign dat_rsp_conv_2 = dat_rsp_conv_8b[23:16]; // @[NV_NVDLA_CSC_dl_for_check.scala 1057:39:@1429.4]
  assign dat_rsp_conv_3 = dat_rsp_conv_8b[31:24]; // @[NV_NVDLA_CSC_dl_for_check.scala 1057:39:@1431.4]
  assign dat_rsp_conv_4 = dat_rsp_conv_8b[39:32]; // @[NV_NVDLA_CSC_dl_for_check.scala 1057:39:@1433.4]
  assign dat_rsp_conv_5 = dat_rsp_conv_8b[47:40]; // @[NV_NVDLA_CSC_dl_for_check.scala 1057:39:@1435.4]
  assign dat_rsp_conv_6 = dat_rsp_conv_8b[55:48]; // @[NV_NVDLA_CSC_dl_for_check.scala 1057:39:@1437.4]
  assign dat_rsp_conv_7 = dat_rsp_conv_8b[63:56]; // @[NV_NVDLA_CSC_dl_for_check.scala 1057:39:@1439.4]
  assign dat_rsp_conv_8 = dat_rsp_conv_8b[71:64]; // @[NV_NVDLA_CSC_dl_for_check.scala 1057:39:@1441.4]
  assign dat_rsp_conv_9 = dat_rsp_conv_8b[79:72]; // @[NV_NVDLA_CSC_dl_for_check.scala 1057:39:@1443.4]
  assign dat_rsp_conv_10 = dat_rsp_conv_8b[87:80]; // @[NV_NVDLA_CSC_dl_for_check.scala 1057:39:@1445.4]
  assign dat_rsp_conv_11 = dat_rsp_conv_8b[95:88]; // @[NV_NVDLA_CSC_dl_for_check.scala 1057:39:@1447.4]
  assign dat_rsp_conv_12 = dat_rsp_conv_8b[103:96]; // @[NV_NVDLA_CSC_dl_for_check.scala 1057:39:@1449.4]
  assign dat_rsp_conv_13 = dat_rsp_conv_8b[111:104]; // @[NV_NVDLA_CSC_dl_for_check.scala 1057:39:@1451.4]
  assign dat_rsp_conv_14 = dat_rsp_conv_8b[119:112]; // @[NV_NVDLA_CSC_dl_for_check.scala 1057:39:@1453.4]
  assign dat_rsp_conv_15 = dat_rsp_conv_8b[127:120]; // @[NV_NVDLA_CSC_dl_for_check.scala 1057:39:@1455.4]
  assign dat_rsp_conv_16 = dat_rsp_conv_8b[135:128]; // @[NV_NVDLA_CSC_dl_for_check.scala 1057:39:@1457.4]
  assign dat_rsp_conv_17 = dat_rsp_conv_8b[143:136]; // @[NV_NVDLA_CSC_dl_for_check.scala 1057:39:@1459.4]
  assign dat_rsp_conv_18 = dat_rsp_conv_8b[151:144]; // @[NV_NVDLA_CSC_dl_for_check.scala 1057:39:@1461.4]
  assign dat_rsp_conv_19 = dat_rsp_conv_8b[159:152]; // @[NV_NVDLA_CSC_dl_for_check.scala 1057:39:@1463.4]
  assign dat_rsp_conv_20 = dat_rsp_conv_8b[167:160]; // @[NV_NVDLA_CSC_dl_for_check.scala 1057:39:@1465.4]
  assign dat_rsp_conv_21 = dat_rsp_conv_8b[175:168]; // @[NV_NVDLA_CSC_dl_for_check.scala 1057:39:@1467.4]
  assign dat_rsp_conv_22 = dat_rsp_conv_8b[183:176]; // @[NV_NVDLA_CSC_dl_for_check.scala 1057:39:@1469.4]
  assign dat_rsp_conv_23 = dat_rsp_conv_8b[191:184]; // @[NV_NVDLA_CSC_dl_for_check.scala 1057:39:@1471.4]
  assign dat_rsp_conv_24 = dat_rsp_conv_8b[199:192]; // @[NV_NVDLA_CSC_dl_for_check.scala 1057:39:@1473.4]
  assign dat_rsp_conv_25 = dat_rsp_conv_8b[207:200]; // @[NV_NVDLA_CSC_dl_for_check.scala 1057:39:@1475.4]
  assign dat_rsp_conv_26 = dat_rsp_conv_8b[215:208]; // @[NV_NVDLA_CSC_dl_for_check.scala 1057:39:@1477.4]
  assign dat_rsp_conv_27 = dat_rsp_conv_8b[223:216]; // @[NV_NVDLA_CSC_dl_for_check.scala 1057:39:@1479.4]
  assign dat_rsp_conv_28 = dat_rsp_conv_8b[231:224]; // @[NV_NVDLA_CSC_dl_for_check.scala 1057:39:@1481.4]
  assign dat_rsp_conv_29 = dat_rsp_conv_8b[239:232]; // @[NV_NVDLA_CSC_dl_for_check.scala 1057:39:@1483.4]
  assign dat_rsp_conv_30 = dat_rsp_conv_8b[247:240]; // @[NV_NVDLA_CSC_dl_for_check.scala 1057:39:@1485.4]
  assign dat_rsp_conv_31 = dat_rsp_conv_8b[255:248]; // @[NV_NVDLA_CSC_dl_for_check.scala 1057:39:@1487.4]
  assign dat_rsp_conv_32 = dat_rsp_conv_8b[263:256]; // @[NV_NVDLA_CSC_dl_for_check.scala 1057:39:@1489.4]
  assign dat_rsp_conv_33 = dat_rsp_conv_8b[271:264]; // @[NV_NVDLA_CSC_dl_for_check.scala 1057:39:@1491.4]
  assign dat_rsp_conv_34 = dat_rsp_conv_8b[279:272]; // @[NV_NVDLA_CSC_dl_for_check.scala 1057:39:@1493.4]
  assign dat_rsp_conv_35 = dat_rsp_conv_8b[287:280]; // @[NV_NVDLA_CSC_dl_for_check.scala 1057:39:@1495.4]
  assign dat_rsp_conv_36 = dat_rsp_conv_8b[295:288]; // @[NV_NVDLA_CSC_dl_for_check.scala 1057:39:@1497.4]
  assign dat_rsp_conv_37 = dat_rsp_conv_8b[303:296]; // @[NV_NVDLA_CSC_dl_for_check.scala 1057:39:@1499.4]
  assign dat_rsp_conv_38 = dat_rsp_conv_8b[311:304]; // @[NV_NVDLA_CSC_dl_for_check.scala 1057:39:@1501.4]
  assign dat_rsp_conv_39 = dat_rsp_conv_8b[319:312]; // @[NV_NVDLA_CSC_dl_for_check.scala 1057:39:@1503.4]
  assign dat_rsp_conv_40 = dat_rsp_conv_8b[327:320]; // @[NV_NVDLA_CSC_dl_for_check.scala 1057:39:@1505.4]
  assign dat_rsp_conv_41 = dat_rsp_conv_8b[335:328]; // @[NV_NVDLA_CSC_dl_for_check.scala 1057:39:@1507.4]
  assign dat_rsp_conv_42 = dat_rsp_conv_8b[343:336]; // @[NV_NVDLA_CSC_dl_for_check.scala 1057:39:@1509.4]
  assign dat_rsp_conv_43 = dat_rsp_conv_8b[351:344]; // @[NV_NVDLA_CSC_dl_for_check.scala 1057:39:@1511.4]
  assign dat_rsp_conv_44 = dat_rsp_conv_8b[359:352]; // @[NV_NVDLA_CSC_dl_for_check.scala 1057:39:@1513.4]
  assign dat_rsp_conv_45 = dat_rsp_conv_8b[367:360]; // @[NV_NVDLA_CSC_dl_for_check.scala 1057:39:@1515.4]
  assign dat_rsp_conv_46 = dat_rsp_conv_8b[375:368]; // @[NV_NVDLA_CSC_dl_for_check.scala 1057:39:@1517.4]
  assign dat_rsp_conv_47 = dat_rsp_conv_8b[383:376]; // @[NV_NVDLA_CSC_dl_for_check.scala 1057:39:@1519.4]
  assign dat_rsp_conv_48 = dat_rsp_conv_8b[391:384]; // @[NV_NVDLA_CSC_dl_for_check.scala 1057:39:@1521.4]
  assign dat_rsp_conv_49 = dat_rsp_conv_8b[399:392]; // @[NV_NVDLA_CSC_dl_for_check.scala 1057:39:@1523.4]
  assign dat_rsp_conv_50 = dat_rsp_conv_8b[407:400]; // @[NV_NVDLA_CSC_dl_for_check.scala 1057:39:@1525.4]
  assign dat_rsp_conv_51 = dat_rsp_conv_8b[415:408]; // @[NV_NVDLA_CSC_dl_for_check.scala 1057:39:@1527.4]
  assign dat_rsp_conv_52 = dat_rsp_conv_8b[423:416]; // @[NV_NVDLA_CSC_dl_for_check.scala 1057:39:@1529.4]
  assign dat_rsp_conv_53 = dat_rsp_conv_8b[431:424]; // @[NV_NVDLA_CSC_dl_for_check.scala 1057:39:@1531.4]
  assign dat_rsp_conv_54 = dat_rsp_conv_8b[439:432]; // @[NV_NVDLA_CSC_dl_for_check.scala 1057:39:@1533.4]
  assign dat_rsp_conv_55 = dat_rsp_conv_8b[447:440]; // @[NV_NVDLA_CSC_dl_for_check.scala 1057:39:@1535.4]
  assign dat_rsp_conv_56 = dat_rsp_conv_8b[455:448]; // @[NV_NVDLA_CSC_dl_for_check.scala 1057:39:@1537.4]
  assign dat_rsp_conv_57 = dat_rsp_conv_8b[463:456]; // @[NV_NVDLA_CSC_dl_for_check.scala 1057:39:@1539.4]
  assign dat_rsp_conv_58 = dat_rsp_conv_8b[471:464]; // @[NV_NVDLA_CSC_dl_for_check.scala 1057:39:@1541.4]
  assign dat_rsp_conv_59 = dat_rsp_conv_8b[479:472]; // @[NV_NVDLA_CSC_dl_for_check.scala 1057:39:@1543.4]
  assign dat_rsp_conv_60 = dat_rsp_conv_8b[487:480]; // @[NV_NVDLA_CSC_dl_for_check.scala 1057:39:@1545.4]
  assign dat_rsp_conv_61 = dat_rsp_conv_8b[495:488]; // @[NV_NVDLA_CSC_dl_for_check.scala 1057:39:@1547.4]
  assign dat_rsp_conv_62 = dat_rsp_conv_8b[503:496]; // @[NV_NVDLA_CSC_dl_for_check.scala 1057:39:@1549.4]
  assign dat_rsp_conv_63 = dat_rsp_conv_8b[511:504]; // @[NV_NVDLA_CSC_dl_for_check.scala 1057:39:@1551.4]
  assign _T_1694 = is_img_d1[27]; // @[NV_NVDLA_CSC_dl_for_check.scala 1070:39:@1559.4]
  assign _T_1695 = ~ _T_1694; // @[NV_NVDLA_CSC_dl_for_check.scala 1070:29:@1560.4]
  assign _T_1697 = {dat_rsp_l0c0,dat_rsp_l0c1}; // @[Cat.scala 30:58:@1561.4]
  assign dat_rsp_l0_sft_in = _T_1695 ? 1024'h0 : _T_1697; // @[NV_NVDLA_CSC_dl_for_check.scala 1070:28:@1562.4]
  assign _T_1698 = is_img_d1[28]; // @[NV_NVDLA_CSC_dl_for_check.scala 1071:39:@1563.4]
  assign _T_1699 = ~ _T_1698; // @[NV_NVDLA_CSC_dl_for_check.scala 1071:29:@1564.4]
  assign _T_1701 = {dat_rsp_l1c0,dat_rsp_l1c1}; // @[Cat.scala 30:58:@1565.4]
  assign dat_rsp_l1_sft_in = _T_1699 ? 1024'h0 : _T_1701; // @[NV_NVDLA_CSC_dl_for_check.scala 1071:28:@1566.4]
  assign _T_1702 = is_img_d1[29]; // @[NV_NVDLA_CSC_dl_for_check.scala 1072:39:@1567.4]
  assign _T_1703 = ~ _T_1702; // @[NV_NVDLA_CSC_dl_for_check.scala 1072:29:@1568.4]
  assign _T_1705 = {dat_rsp_l2c0,dat_rsp_l2c1}; // @[Cat.scala 30:58:@1569.4]
  assign dat_rsp_l2_sft_in = _T_1703 ? 1024'h0 : _T_1705; // @[NV_NVDLA_CSC_dl_for_check.scala 1072:28:@1570.4]
  assign _T_1706 = is_img_d1[30]; // @[NV_NVDLA_CSC_dl_for_check.scala 1073:39:@1571.4]
  assign _T_1707 = ~ _T_1706; // @[NV_NVDLA_CSC_dl_for_check.scala 1073:29:@1572.4]
  assign _T_1709 = {dat_rsp_l3c0,dat_rsp_l3c1}; // @[Cat.scala 30:58:@1573.4]
  assign dat_rsp_l3_sft_in = _T_1707 ? 1024'h0 : _T_1709; // @[NV_NVDLA_CSC_dl_for_check.scala 1073:28:@1574.4]
  assign _T_1711 = {rsp_sft_cnt_l0,3'h0}; // @[Cat.scala 30:58:@1575.4]
  assign _T_1712 = dat_rsp_l0_sft_in >> _T_1711; // @[NV_NVDLA_CSC_dl_for_check.scala 1075:41:@1576.4]
  assign dat_rsp_l0_sft = _T_1712[511:0]; // @[NV_NVDLA_CSC_dl_for_check.scala 1075:82:@1577.4]
  assign _T_1714 = {rsp_sft_cnt_l1,3'h0}; // @[Cat.scala 30:58:@1578.4]
  assign _T_1715 = dat_rsp_l1_sft_in >> _T_1714; // @[NV_NVDLA_CSC_dl_for_check.scala 1076:41:@1579.4]
  assign dat_rsp_l1_sft = _T_1715[511:0]; // @[NV_NVDLA_CSC_dl_for_check.scala 1076:82:@1580.4]
  assign _T_1717 = {rsp_sft_cnt_l2,3'h0}; // @[Cat.scala 30:58:@1581.4]
  assign _T_1718 = dat_rsp_l2_sft_in >> _T_1717; // @[NV_NVDLA_CSC_dl_for_check.scala 1077:41:@1582.4]
  assign dat_rsp_l2_sft = _T_1718[511:0]; // @[NV_NVDLA_CSC_dl_for_check.scala 1077:82:@1583.4]
  assign _T_1720 = {rsp_sft_cnt_l3,3'h0}; // @[Cat.scala 30:58:@1584.4]
  assign _T_1721 = dat_rsp_l3_sft_in >> _T_1720; // @[NV_NVDLA_CSC_dl_for_check.scala 1078:41:@1585.4]
  assign dat_rsp_l3_sft = _T_1721[511:0]; // @[NV_NVDLA_CSC_dl_for_check.scala 1078:82:@1586.4]
  assign _T_1722 = is_img_d1[32]; // @[NV_NVDLA_CSC_dl_for_check.scala 1080:36:@1587.4]
  assign _T_1723 = ~ _T_1722; // @[NV_NVDLA_CSC_dl_for_check.scala 1080:26:@1588.4]
  assign _T_1726 = sub_h_total_g8 == 3'h4; // @[NV_NVDLA_CSC_dl_for_check.scala 1081:41:@1589.4]
  assign _T_1727 = dat_rsp_l3_sft[127:0]; // @[NV_NVDLA_CSC_dl_for_check.scala 1081:81:@1590.4]
  assign _T_1733 = {_T_1727,dat_rsp_l2_sft_d3,dat_rsp_l1_sft_d3,dat_rsp_l0_sft_d3}; // @[Cat.scala 30:58:@1596.4]
  assign _T_1735 = sub_h_total_g8 == 3'h2; // @[NV_NVDLA_CSC_dl_for_check.scala 1082:41:@1597.4]
  assign _T_1736 = dat_rsp_l1_sft[255:0]; // @[NV_NVDLA_CSC_dl_for_check.scala 1082:81:@1598.4]
  assign _T_1738 = {_T_1736,dat_rsp_l0_sft_d1}; // @[Cat.scala 30:58:@1600.4]
  assign _T_1740 = _T_1735 ? _T_1738 : dat_rsp_l0_sft; // @[NV_NVDLA_CSC_dl_for_check.scala 1082:25:@1602.4]
  assign _T_1741 = _T_1726 ? _T_1733 : _T_1740; // @[NV_NVDLA_CSC_dl_for_check.scala 1081:25:@1603.4]
  assign dat_rsp_img_8b = _T_1723 ? 512'h0 : _T_1741; // @[NV_NVDLA_CSC_dl_for_check.scala 1080:25:@1604.4]
  assign dat_rsp_img_0 = dat_rsp_img_8b[7:0]; // @[NV_NVDLA_CSC_dl_for_check.scala 1088:37:@1606.4]
  assign dat_rsp_img_1 = dat_rsp_img_8b[15:8]; // @[NV_NVDLA_CSC_dl_for_check.scala 1088:37:@1608.4]
  assign dat_rsp_img_2 = dat_rsp_img_8b[23:16]; // @[NV_NVDLA_CSC_dl_for_check.scala 1088:37:@1610.4]
  assign dat_rsp_img_3 = dat_rsp_img_8b[31:24]; // @[NV_NVDLA_CSC_dl_for_check.scala 1088:37:@1612.4]
  assign dat_rsp_img_4 = dat_rsp_img_8b[39:32]; // @[NV_NVDLA_CSC_dl_for_check.scala 1088:37:@1614.4]
  assign dat_rsp_img_5 = dat_rsp_img_8b[47:40]; // @[NV_NVDLA_CSC_dl_for_check.scala 1088:37:@1616.4]
  assign dat_rsp_img_6 = dat_rsp_img_8b[55:48]; // @[NV_NVDLA_CSC_dl_for_check.scala 1088:37:@1618.4]
  assign dat_rsp_img_7 = dat_rsp_img_8b[63:56]; // @[NV_NVDLA_CSC_dl_for_check.scala 1088:37:@1620.4]
  assign dat_rsp_img_8 = dat_rsp_img_8b[71:64]; // @[NV_NVDLA_CSC_dl_for_check.scala 1088:37:@1622.4]
  assign dat_rsp_img_9 = dat_rsp_img_8b[79:72]; // @[NV_NVDLA_CSC_dl_for_check.scala 1088:37:@1624.4]
  assign dat_rsp_img_10 = dat_rsp_img_8b[87:80]; // @[NV_NVDLA_CSC_dl_for_check.scala 1088:37:@1626.4]
  assign dat_rsp_img_11 = dat_rsp_img_8b[95:88]; // @[NV_NVDLA_CSC_dl_for_check.scala 1088:37:@1628.4]
  assign dat_rsp_img_12 = dat_rsp_img_8b[103:96]; // @[NV_NVDLA_CSC_dl_for_check.scala 1088:37:@1630.4]
  assign dat_rsp_img_13 = dat_rsp_img_8b[111:104]; // @[NV_NVDLA_CSC_dl_for_check.scala 1088:37:@1632.4]
  assign dat_rsp_img_14 = dat_rsp_img_8b[119:112]; // @[NV_NVDLA_CSC_dl_for_check.scala 1088:37:@1634.4]
  assign dat_rsp_img_15 = dat_rsp_img_8b[127:120]; // @[NV_NVDLA_CSC_dl_for_check.scala 1088:37:@1636.4]
  assign dat_rsp_img_16 = dat_rsp_img_8b[135:128]; // @[NV_NVDLA_CSC_dl_for_check.scala 1088:37:@1638.4]
  assign dat_rsp_img_17 = dat_rsp_img_8b[143:136]; // @[NV_NVDLA_CSC_dl_for_check.scala 1088:37:@1640.4]
  assign dat_rsp_img_18 = dat_rsp_img_8b[151:144]; // @[NV_NVDLA_CSC_dl_for_check.scala 1088:37:@1642.4]
  assign dat_rsp_img_19 = dat_rsp_img_8b[159:152]; // @[NV_NVDLA_CSC_dl_for_check.scala 1088:37:@1644.4]
  assign dat_rsp_img_20 = dat_rsp_img_8b[167:160]; // @[NV_NVDLA_CSC_dl_for_check.scala 1088:37:@1646.4]
  assign dat_rsp_img_21 = dat_rsp_img_8b[175:168]; // @[NV_NVDLA_CSC_dl_for_check.scala 1088:37:@1648.4]
  assign dat_rsp_img_22 = dat_rsp_img_8b[183:176]; // @[NV_NVDLA_CSC_dl_for_check.scala 1088:37:@1650.4]
  assign dat_rsp_img_23 = dat_rsp_img_8b[191:184]; // @[NV_NVDLA_CSC_dl_for_check.scala 1088:37:@1652.4]
  assign dat_rsp_img_24 = dat_rsp_img_8b[199:192]; // @[NV_NVDLA_CSC_dl_for_check.scala 1088:37:@1654.4]
  assign dat_rsp_img_25 = dat_rsp_img_8b[207:200]; // @[NV_NVDLA_CSC_dl_for_check.scala 1088:37:@1656.4]
  assign dat_rsp_img_26 = dat_rsp_img_8b[215:208]; // @[NV_NVDLA_CSC_dl_for_check.scala 1088:37:@1658.4]
  assign dat_rsp_img_27 = dat_rsp_img_8b[223:216]; // @[NV_NVDLA_CSC_dl_for_check.scala 1088:37:@1660.4]
  assign dat_rsp_img_28 = dat_rsp_img_8b[231:224]; // @[NV_NVDLA_CSC_dl_for_check.scala 1088:37:@1662.4]
  assign dat_rsp_img_29 = dat_rsp_img_8b[239:232]; // @[NV_NVDLA_CSC_dl_for_check.scala 1088:37:@1664.4]
  assign dat_rsp_img_30 = dat_rsp_img_8b[247:240]; // @[NV_NVDLA_CSC_dl_for_check.scala 1088:37:@1666.4]
  assign dat_rsp_img_31 = dat_rsp_img_8b[255:248]; // @[NV_NVDLA_CSC_dl_for_check.scala 1088:37:@1668.4]
  assign dat_rsp_img_32 = dat_rsp_img_8b[263:256]; // @[NV_NVDLA_CSC_dl_for_check.scala 1088:37:@1670.4]
  assign dat_rsp_img_33 = dat_rsp_img_8b[271:264]; // @[NV_NVDLA_CSC_dl_for_check.scala 1088:37:@1672.4]
  assign dat_rsp_img_34 = dat_rsp_img_8b[279:272]; // @[NV_NVDLA_CSC_dl_for_check.scala 1088:37:@1674.4]
  assign dat_rsp_img_35 = dat_rsp_img_8b[287:280]; // @[NV_NVDLA_CSC_dl_for_check.scala 1088:37:@1676.4]
  assign dat_rsp_img_36 = dat_rsp_img_8b[295:288]; // @[NV_NVDLA_CSC_dl_for_check.scala 1088:37:@1678.4]
  assign dat_rsp_img_37 = dat_rsp_img_8b[303:296]; // @[NV_NVDLA_CSC_dl_for_check.scala 1088:37:@1680.4]
  assign dat_rsp_img_38 = dat_rsp_img_8b[311:304]; // @[NV_NVDLA_CSC_dl_for_check.scala 1088:37:@1682.4]
  assign dat_rsp_img_39 = dat_rsp_img_8b[319:312]; // @[NV_NVDLA_CSC_dl_for_check.scala 1088:37:@1684.4]
  assign dat_rsp_img_40 = dat_rsp_img_8b[327:320]; // @[NV_NVDLA_CSC_dl_for_check.scala 1088:37:@1686.4]
  assign dat_rsp_img_41 = dat_rsp_img_8b[335:328]; // @[NV_NVDLA_CSC_dl_for_check.scala 1088:37:@1688.4]
  assign dat_rsp_img_42 = dat_rsp_img_8b[343:336]; // @[NV_NVDLA_CSC_dl_for_check.scala 1088:37:@1690.4]
  assign dat_rsp_img_43 = dat_rsp_img_8b[351:344]; // @[NV_NVDLA_CSC_dl_for_check.scala 1088:37:@1692.4]
  assign dat_rsp_img_44 = dat_rsp_img_8b[359:352]; // @[NV_NVDLA_CSC_dl_for_check.scala 1088:37:@1694.4]
  assign dat_rsp_img_45 = dat_rsp_img_8b[367:360]; // @[NV_NVDLA_CSC_dl_for_check.scala 1088:37:@1696.4]
  assign dat_rsp_img_46 = dat_rsp_img_8b[375:368]; // @[NV_NVDLA_CSC_dl_for_check.scala 1088:37:@1698.4]
  assign dat_rsp_img_47 = dat_rsp_img_8b[383:376]; // @[NV_NVDLA_CSC_dl_for_check.scala 1088:37:@1700.4]
  assign dat_rsp_img_48 = dat_rsp_img_8b[391:384]; // @[NV_NVDLA_CSC_dl_for_check.scala 1088:37:@1702.4]
  assign dat_rsp_img_49 = dat_rsp_img_8b[399:392]; // @[NV_NVDLA_CSC_dl_for_check.scala 1088:37:@1704.4]
  assign dat_rsp_img_50 = dat_rsp_img_8b[407:400]; // @[NV_NVDLA_CSC_dl_for_check.scala 1088:37:@1706.4]
  assign dat_rsp_img_51 = dat_rsp_img_8b[415:408]; // @[NV_NVDLA_CSC_dl_for_check.scala 1088:37:@1708.4]
  assign dat_rsp_img_52 = dat_rsp_img_8b[423:416]; // @[NV_NVDLA_CSC_dl_for_check.scala 1088:37:@1710.4]
  assign dat_rsp_img_53 = dat_rsp_img_8b[431:424]; // @[NV_NVDLA_CSC_dl_for_check.scala 1088:37:@1712.4]
  assign dat_rsp_img_54 = dat_rsp_img_8b[439:432]; // @[NV_NVDLA_CSC_dl_for_check.scala 1088:37:@1714.4]
  assign dat_rsp_img_55 = dat_rsp_img_8b[447:440]; // @[NV_NVDLA_CSC_dl_for_check.scala 1088:37:@1716.4]
  assign dat_rsp_img_56 = dat_rsp_img_8b[455:448]; // @[NV_NVDLA_CSC_dl_for_check.scala 1088:37:@1718.4]
  assign dat_rsp_img_57 = dat_rsp_img_8b[463:456]; // @[NV_NVDLA_CSC_dl_for_check.scala 1088:37:@1720.4]
  assign dat_rsp_img_58 = dat_rsp_img_8b[471:464]; // @[NV_NVDLA_CSC_dl_for_check.scala 1088:37:@1722.4]
  assign dat_rsp_img_59 = dat_rsp_img_8b[479:472]; // @[NV_NVDLA_CSC_dl_for_check.scala 1088:37:@1724.4]
  assign dat_rsp_img_60 = dat_rsp_img_8b[487:480]; // @[NV_NVDLA_CSC_dl_for_check.scala 1088:37:@1726.4]
  assign dat_rsp_img_61 = dat_rsp_img_8b[495:488]; // @[NV_NVDLA_CSC_dl_for_check.scala 1088:37:@1728.4]
  assign dat_rsp_img_62 = dat_rsp_img_8b[503:496]; // @[NV_NVDLA_CSC_dl_for_check.scala 1088:37:@1730.4]
  assign dat_rsp_img_63 = dat_rsp_img_8b[511:504]; // @[NV_NVDLA_CSC_dl_for_check.scala 1088:37:@1732.4]
  assign _T_1876 = sub_h_total_g9 != 3'h1; // @[NV_NVDLA_CSC_dl_for_check.scala 1091:59:@1734.4]
  assign dat_rsp_sft_d1_en = dat_rsp_l0_pvld & _T_1876; // @[NV_NVDLA_CSC_dl_for_check.scala 1091:41:@1735.4]
  assign _T_1878 = sub_h_total_g9 == 3'h4; // @[NV_NVDLA_CSC_dl_for_check.scala 1092:59:@1736.4]
  assign dat_rsp_sft_d2_en = dat_rsp_l1_pvld & _T_1878; // @[NV_NVDLA_CSC_dl_for_check.scala 1092:41:@1737.4]
  assign dat_rsp_sft_d3_en = dat_rsp_l2_pvld & _T_1878; // @[NV_NVDLA_CSC_dl_for_check.scala 1093:41:@1739.4]
  assign _GEN_154 = dat_rsp_sft_d1_en ? dat_rsp_l0_sft : {{256'd0}, dat_rsp_l0_sft_d1}; // @[NV_NVDLA_CSC_dl_for_check.scala 1095:24:@1740.4]
  assign _GEN_155 = dat_rsp_sft_d2_en ? dat_rsp_l0_sft_d1 : {{128'd0}, dat_rsp_l0_sft_d2}; // @[NV_NVDLA_CSC_dl_for_check.scala 1098:24:@1743.4]
  assign _GEN_156 = dat_rsp_sft_d2_en ? dat_rsp_l1_sft : {{384'd0}, dat_rsp_l1_sft_d2}; // @[NV_NVDLA_CSC_dl_for_check.scala 1098:24:@1743.4]
  assign _GEN_159 = dat_rsp_sft_d3_en ? dat_rsp_l2_sft : {{384'd0}, dat_rsp_l2_sft_d3}; // @[NV_NVDLA_CSC_dl_for_check.scala 1102:24:@1747.4]
  assign _T_1886 = 319'hffffffffffffffff << dat_rsp_bytes; // @[NV_NVDLA_CSC_dl_for_check.scala 1111:55:@1753.4]
  assign dat_rsp_ori_mask = ~ _T_1886; // @[NV_NVDLA_CSC_dl_for_check.scala 1111:24:@1754.4]
  assign _T_1888 = dat_rsp_cur_sub_h >= 2'h1; // @[NV_NVDLA_CSC_dl_for_check.scala 1113:51:@1755.4]
  assign dat_rsp_cur_h_mask_p1 = _T_1888 ? 64'hffffffffffffffff : 64'h0; // @[NV_NVDLA_CSC_dl_for_check.scala 1113:32:@1757.4]
  assign _T_1896 = dat_rsp_cur_sub_h >= 2'h2; // @[NV_NVDLA_CSC_dl_for_check.scala 1114:51:@1758.4]
  assign dat_rsp_cur_h_mask_p2 = _T_1896 ? 32'hffffffff : 32'h0; // @[NV_NVDLA_CSC_dl_for_check.scala 1114:32:@1760.4]
  assign _T_1904 = dat_rsp_cur_sub_h == 2'h3; // @[NV_NVDLA_CSC_dl_for_check.scala 1115:51:@1761.4]
  assign dat_rsp_cur_h_mask_p3 = _T_1904 ? 32'hffffffff : 32'h0; // @[NV_NVDLA_CSC_dl_for_check.scala 1115:32:@1763.4]
  assign _T_1911 = dat_rsp_cur_h_mask_p1[31:0]; // @[NV_NVDLA_CSC_dl_for_check.scala 1117:57:@1764.4]
  assign dat_rsp_cur_h_e2_mask_8b = {_T_1911,32'hffffffff}; // @[Cat.scala 30:58:@1766.4]
  assign _T_1917 = dat_rsp_cur_h_mask_p3[15:0]; // @[NV_NVDLA_CSC_dl_for_check.scala 1118:57:@1767.4]
  assign _T_1918 = dat_rsp_cur_h_mask_p2[15:0]; // @[NV_NVDLA_CSC_dl_for_check.scala 1118:106:@1768.4]
  assign _T_1919 = dat_rsp_cur_h_mask_p1[15:0]; // @[NV_NVDLA_CSC_dl_for_check.scala 1118:155:@1769.4]
  assign dat_rsp_cur_h_e4_mask_8b = {_T_1917,_T_1918,_T_1919,16'hffff}; // @[Cat.scala 30:58:@1773.4]
  assign _T_1928 = sub_h_total_g11 == 3'h4; // @[NV_NVDLA_CSC_dl_for_check.scala 1120:43:@1774.4]
  assign _T_1929 = dat_rsp_ori_mask[15:0]; // @[NV_NVDLA_CSC_dl_for_check.scala 1120:89:@1775.4]
  assign _T_1931 = {_T_1929,_T_1929,_T_1929,_T_1929}; // @[Cat.scala 30:58:@1777.4]
  assign _T_1932 = _T_1931 & dat_rsp_cur_h_e4_mask_8b; // @[NV_NVDLA_CSC_dl_for_check.scala 1120:116:@1778.4]
  assign _T_1934 = sub_h_total_g11 == 3'h2; // @[NV_NVDLA_CSC_dl_for_check.scala 1121:43:@1779.4]
  assign _T_1935 = dat_rsp_ori_mask[31:0]; // @[NV_NVDLA_CSC_dl_for_check.scala 1121:89:@1780.4]
  assign _T_1936 = {_T_1935,_T_1935}; // @[Cat.scala 30:58:@1781.4]
  assign _T_1937 = _T_1936 & dat_rsp_cur_h_e2_mask_8b; // @[NV_NVDLA_CSC_dl_for_check.scala 1121:116:@1782.4]
  assign _T_1938 = dat_rsp_ori_mask[63:0]; // @[NV_NVDLA_CSC_dl_for_check.scala 1122:39:@1783.4]
  assign _T_1939 = _T_1934 ? _T_1937 : _T_1938; // @[NV_NVDLA_CSC_dl_for_check.scala 1121:26:@1784.4]
  assign dat_rsp_mask_8b = _T_1928 ? _T_1932 : _T_1939; // @[NV_NVDLA_CSC_dl_for_check.scala 1120:26:@1785.4]
  assign _T_1940 = is_img_d1[33]; // @[NV_NVDLA_CSC_dl_for_check.scala 1125:35:@1786.4]
  assign dat_rsp_data_w_0 = _T_1940 ? dat_rsp_img_0 : dat_rsp_conv_0; // @[NV_NVDLA_CSC_dl_for_check.scala 1125:25:@1787.4]
  assign dat_rsp_data_w_1 = _T_1940 ? dat_rsp_img_1 : dat_rsp_conv_1; // @[NV_NVDLA_CSC_dl_for_check.scala 1125:25:@1787.4]
  assign dat_rsp_data_w_2 = _T_1940 ? dat_rsp_img_2 : dat_rsp_conv_2; // @[NV_NVDLA_CSC_dl_for_check.scala 1125:25:@1787.4]
  assign dat_rsp_data_w_3 = _T_1940 ? dat_rsp_img_3 : dat_rsp_conv_3; // @[NV_NVDLA_CSC_dl_for_check.scala 1125:25:@1787.4]
  assign dat_rsp_data_w_4 = _T_1940 ? dat_rsp_img_4 : dat_rsp_conv_4; // @[NV_NVDLA_CSC_dl_for_check.scala 1125:25:@1787.4]
  assign dat_rsp_data_w_5 = _T_1940 ? dat_rsp_img_5 : dat_rsp_conv_5; // @[NV_NVDLA_CSC_dl_for_check.scala 1125:25:@1787.4]
  assign dat_rsp_data_w_6 = _T_1940 ? dat_rsp_img_6 : dat_rsp_conv_6; // @[NV_NVDLA_CSC_dl_for_check.scala 1125:25:@1787.4]
  assign dat_rsp_data_w_7 = _T_1940 ? dat_rsp_img_7 : dat_rsp_conv_7; // @[NV_NVDLA_CSC_dl_for_check.scala 1125:25:@1787.4]
  assign dat_rsp_data_w_8 = _T_1940 ? dat_rsp_img_8 : dat_rsp_conv_8; // @[NV_NVDLA_CSC_dl_for_check.scala 1125:25:@1787.4]
  assign dat_rsp_data_w_9 = _T_1940 ? dat_rsp_img_9 : dat_rsp_conv_9; // @[NV_NVDLA_CSC_dl_for_check.scala 1125:25:@1787.4]
  assign dat_rsp_data_w_10 = _T_1940 ? dat_rsp_img_10 : dat_rsp_conv_10; // @[NV_NVDLA_CSC_dl_for_check.scala 1125:25:@1787.4]
  assign dat_rsp_data_w_11 = _T_1940 ? dat_rsp_img_11 : dat_rsp_conv_11; // @[NV_NVDLA_CSC_dl_for_check.scala 1125:25:@1787.4]
  assign dat_rsp_data_w_12 = _T_1940 ? dat_rsp_img_12 : dat_rsp_conv_12; // @[NV_NVDLA_CSC_dl_for_check.scala 1125:25:@1787.4]
  assign dat_rsp_data_w_13 = _T_1940 ? dat_rsp_img_13 : dat_rsp_conv_13; // @[NV_NVDLA_CSC_dl_for_check.scala 1125:25:@1787.4]
  assign dat_rsp_data_w_14 = _T_1940 ? dat_rsp_img_14 : dat_rsp_conv_14; // @[NV_NVDLA_CSC_dl_for_check.scala 1125:25:@1787.4]
  assign dat_rsp_data_w_15 = _T_1940 ? dat_rsp_img_15 : dat_rsp_conv_15; // @[NV_NVDLA_CSC_dl_for_check.scala 1125:25:@1787.4]
  assign dat_rsp_data_w_16 = _T_1940 ? dat_rsp_img_16 : dat_rsp_conv_16; // @[NV_NVDLA_CSC_dl_for_check.scala 1125:25:@1787.4]
  assign dat_rsp_data_w_17 = _T_1940 ? dat_rsp_img_17 : dat_rsp_conv_17; // @[NV_NVDLA_CSC_dl_for_check.scala 1125:25:@1787.4]
  assign dat_rsp_data_w_18 = _T_1940 ? dat_rsp_img_18 : dat_rsp_conv_18; // @[NV_NVDLA_CSC_dl_for_check.scala 1125:25:@1787.4]
  assign dat_rsp_data_w_19 = _T_1940 ? dat_rsp_img_19 : dat_rsp_conv_19; // @[NV_NVDLA_CSC_dl_for_check.scala 1125:25:@1787.4]
  assign dat_rsp_data_w_20 = _T_1940 ? dat_rsp_img_20 : dat_rsp_conv_20; // @[NV_NVDLA_CSC_dl_for_check.scala 1125:25:@1787.4]
  assign dat_rsp_data_w_21 = _T_1940 ? dat_rsp_img_21 : dat_rsp_conv_21; // @[NV_NVDLA_CSC_dl_for_check.scala 1125:25:@1787.4]
  assign dat_rsp_data_w_22 = _T_1940 ? dat_rsp_img_22 : dat_rsp_conv_22; // @[NV_NVDLA_CSC_dl_for_check.scala 1125:25:@1787.4]
  assign dat_rsp_data_w_23 = _T_1940 ? dat_rsp_img_23 : dat_rsp_conv_23; // @[NV_NVDLA_CSC_dl_for_check.scala 1125:25:@1787.4]
  assign dat_rsp_data_w_24 = _T_1940 ? dat_rsp_img_24 : dat_rsp_conv_24; // @[NV_NVDLA_CSC_dl_for_check.scala 1125:25:@1787.4]
  assign dat_rsp_data_w_25 = _T_1940 ? dat_rsp_img_25 : dat_rsp_conv_25; // @[NV_NVDLA_CSC_dl_for_check.scala 1125:25:@1787.4]
  assign dat_rsp_data_w_26 = _T_1940 ? dat_rsp_img_26 : dat_rsp_conv_26; // @[NV_NVDLA_CSC_dl_for_check.scala 1125:25:@1787.4]
  assign dat_rsp_data_w_27 = _T_1940 ? dat_rsp_img_27 : dat_rsp_conv_27; // @[NV_NVDLA_CSC_dl_for_check.scala 1125:25:@1787.4]
  assign dat_rsp_data_w_28 = _T_1940 ? dat_rsp_img_28 : dat_rsp_conv_28; // @[NV_NVDLA_CSC_dl_for_check.scala 1125:25:@1787.4]
  assign dat_rsp_data_w_29 = _T_1940 ? dat_rsp_img_29 : dat_rsp_conv_29; // @[NV_NVDLA_CSC_dl_for_check.scala 1125:25:@1787.4]
  assign dat_rsp_data_w_30 = _T_1940 ? dat_rsp_img_30 : dat_rsp_conv_30; // @[NV_NVDLA_CSC_dl_for_check.scala 1125:25:@1787.4]
  assign dat_rsp_data_w_31 = _T_1940 ? dat_rsp_img_31 : dat_rsp_conv_31; // @[NV_NVDLA_CSC_dl_for_check.scala 1125:25:@1787.4]
  assign dat_rsp_data_w_32 = _T_1940 ? dat_rsp_img_32 : dat_rsp_conv_32; // @[NV_NVDLA_CSC_dl_for_check.scala 1125:25:@1787.4]
  assign dat_rsp_data_w_33 = _T_1940 ? dat_rsp_img_33 : dat_rsp_conv_33; // @[NV_NVDLA_CSC_dl_for_check.scala 1125:25:@1787.4]
  assign dat_rsp_data_w_34 = _T_1940 ? dat_rsp_img_34 : dat_rsp_conv_34; // @[NV_NVDLA_CSC_dl_for_check.scala 1125:25:@1787.4]
  assign dat_rsp_data_w_35 = _T_1940 ? dat_rsp_img_35 : dat_rsp_conv_35; // @[NV_NVDLA_CSC_dl_for_check.scala 1125:25:@1787.4]
  assign dat_rsp_data_w_36 = _T_1940 ? dat_rsp_img_36 : dat_rsp_conv_36; // @[NV_NVDLA_CSC_dl_for_check.scala 1125:25:@1787.4]
  assign dat_rsp_data_w_37 = _T_1940 ? dat_rsp_img_37 : dat_rsp_conv_37; // @[NV_NVDLA_CSC_dl_for_check.scala 1125:25:@1787.4]
  assign dat_rsp_data_w_38 = _T_1940 ? dat_rsp_img_38 : dat_rsp_conv_38; // @[NV_NVDLA_CSC_dl_for_check.scala 1125:25:@1787.4]
  assign dat_rsp_data_w_39 = _T_1940 ? dat_rsp_img_39 : dat_rsp_conv_39; // @[NV_NVDLA_CSC_dl_for_check.scala 1125:25:@1787.4]
  assign dat_rsp_data_w_40 = _T_1940 ? dat_rsp_img_40 : dat_rsp_conv_40; // @[NV_NVDLA_CSC_dl_for_check.scala 1125:25:@1787.4]
  assign dat_rsp_data_w_41 = _T_1940 ? dat_rsp_img_41 : dat_rsp_conv_41; // @[NV_NVDLA_CSC_dl_for_check.scala 1125:25:@1787.4]
  assign dat_rsp_data_w_42 = _T_1940 ? dat_rsp_img_42 : dat_rsp_conv_42; // @[NV_NVDLA_CSC_dl_for_check.scala 1125:25:@1787.4]
  assign dat_rsp_data_w_43 = _T_1940 ? dat_rsp_img_43 : dat_rsp_conv_43; // @[NV_NVDLA_CSC_dl_for_check.scala 1125:25:@1787.4]
  assign dat_rsp_data_w_44 = _T_1940 ? dat_rsp_img_44 : dat_rsp_conv_44; // @[NV_NVDLA_CSC_dl_for_check.scala 1125:25:@1787.4]
  assign dat_rsp_data_w_45 = _T_1940 ? dat_rsp_img_45 : dat_rsp_conv_45; // @[NV_NVDLA_CSC_dl_for_check.scala 1125:25:@1787.4]
  assign dat_rsp_data_w_46 = _T_1940 ? dat_rsp_img_46 : dat_rsp_conv_46; // @[NV_NVDLA_CSC_dl_for_check.scala 1125:25:@1787.4]
  assign dat_rsp_data_w_47 = _T_1940 ? dat_rsp_img_47 : dat_rsp_conv_47; // @[NV_NVDLA_CSC_dl_for_check.scala 1125:25:@1787.4]
  assign dat_rsp_data_w_48 = _T_1940 ? dat_rsp_img_48 : dat_rsp_conv_48; // @[NV_NVDLA_CSC_dl_for_check.scala 1125:25:@1787.4]
  assign dat_rsp_data_w_49 = _T_1940 ? dat_rsp_img_49 : dat_rsp_conv_49; // @[NV_NVDLA_CSC_dl_for_check.scala 1125:25:@1787.4]
  assign dat_rsp_data_w_50 = _T_1940 ? dat_rsp_img_50 : dat_rsp_conv_50; // @[NV_NVDLA_CSC_dl_for_check.scala 1125:25:@1787.4]
  assign dat_rsp_data_w_51 = _T_1940 ? dat_rsp_img_51 : dat_rsp_conv_51; // @[NV_NVDLA_CSC_dl_for_check.scala 1125:25:@1787.4]
  assign dat_rsp_data_w_52 = _T_1940 ? dat_rsp_img_52 : dat_rsp_conv_52; // @[NV_NVDLA_CSC_dl_for_check.scala 1125:25:@1787.4]
  assign dat_rsp_data_w_53 = _T_1940 ? dat_rsp_img_53 : dat_rsp_conv_53; // @[NV_NVDLA_CSC_dl_for_check.scala 1125:25:@1787.4]
  assign dat_rsp_data_w_54 = _T_1940 ? dat_rsp_img_54 : dat_rsp_conv_54; // @[NV_NVDLA_CSC_dl_for_check.scala 1125:25:@1787.4]
  assign dat_rsp_data_w_55 = _T_1940 ? dat_rsp_img_55 : dat_rsp_conv_55; // @[NV_NVDLA_CSC_dl_for_check.scala 1125:25:@1787.4]
  assign dat_rsp_data_w_56 = _T_1940 ? dat_rsp_img_56 : dat_rsp_conv_56; // @[NV_NVDLA_CSC_dl_for_check.scala 1125:25:@1787.4]
  assign dat_rsp_data_w_57 = _T_1940 ? dat_rsp_img_57 : dat_rsp_conv_57; // @[NV_NVDLA_CSC_dl_for_check.scala 1125:25:@1787.4]
  assign dat_rsp_data_w_58 = _T_1940 ? dat_rsp_img_58 : dat_rsp_conv_58; // @[NV_NVDLA_CSC_dl_for_check.scala 1125:25:@1787.4]
  assign dat_rsp_data_w_59 = _T_1940 ? dat_rsp_img_59 : dat_rsp_conv_59; // @[NV_NVDLA_CSC_dl_for_check.scala 1125:25:@1787.4]
  assign dat_rsp_data_w_60 = _T_1940 ? dat_rsp_img_60 : dat_rsp_conv_60; // @[NV_NVDLA_CSC_dl_for_check.scala 1125:25:@1787.4]
  assign dat_rsp_data_w_61 = _T_1940 ? dat_rsp_img_61 : dat_rsp_conv_61; // @[NV_NVDLA_CSC_dl_for_check.scala 1125:25:@1787.4]
  assign dat_rsp_data_w_62 = _T_1940 ? dat_rsp_img_62 : dat_rsp_conv_62; // @[NV_NVDLA_CSC_dl_for_check.scala 1125:25:@1787.4]
  assign dat_rsp_data_w_63 = _T_1940 ? dat_rsp_img_63 : dat_rsp_conv_63; // @[NV_NVDLA_CSC_dl_for_check.scala 1125:25:@1787.4]
  assign dat_rsp_mask_val_int8_0 = dat_rsp_data_w_0 != 8'h0; // @[NV_NVDLA_CSC_dl_for_check.scala 1126:97:@1788.4]
  assign dat_rsp_mask_val_int8_1 = dat_rsp_data_w_1 != 8'h0; // @[NV_NVDLA_CSC_dl_for_check.scala 1126:97:@1789.4]
  assign dat_rsp_mask_val_int8_2 = dat_rsp_data_w_2 != 8'h0; // @[NV_NVDLA_CSC_dl_for_check.scala 1126:97:@1790.4]
  assign dat_rsp_mask_val_int8_3 = dat_rsp_data_w_3 != 8'h0; // @[NV_NVDLA_CSC_dl_for_check.scala 1126:97:@1791.4]
  assign dat_rsp_mask_val_int8_4 = dat_rsp_data_w_4 != 8'h0; // @[NV_NVDLA_CSC_dl_for_check.scala 1126:97:@1792.4]
  assign dat_rsp_mask_val_int8_5 = dat_rsp_data_w_5 != 8'h0; // @[NV_NVDLA_CSC_dl_for_check.scala 1126:97:@1793.4]
  assign dat_rsp_mask_val_int8_6 = dat_rsp_data_w_6 != 8'h0; // @[NV_NVDLA_CSC_dl_for_check.scala 1126:97:@1794.4]
  assign dat_rsp_mask_val_int8_7 = dat_rsp_data_w_7 != 8'h0; // @[NV_NVDLA_CSC_dl_for_check.scala 1126:97:@1795.4]
  assign dat_rsp_mask_val_int8_8 = dat_rsp_data_w_8 != 8'h0; // @[NV_NVDLA_CSC_dl_for_check.scala 1126:97:@1796.4]
  assign dat_rsp_mask_val_int8_9 = dat_rsp_data_w_9 != 8'h0; // @[NV_NVDLA_CSC_dl_for_check.scala 1126:97:@1797.4]
  assign dat_rsp_mask_val_int8_10 = dat_rsp_data_w_10 != 8'h0; // @[NV_NVDLA_CSC_dl_for_check.scala 1126:97:@1798.4]
  assign dat_rsp_mask_val_int8_11 = dat_rsp_data_w_11 != 8'h0; // @[NV_NVDLA_CSC_dl_for_check.scala 1126:97:@1799.4]
  assign dat_rsp_mask_val_int8_12 = dat_rsp_data_w_12 != 8'h0; // @[NV_NVDLA_CSC_dl_for_check.scala 1126:97:@1800.4]
  assign dat_rsp_mask_val_int8_13 = dat_rsp_data_w_13 != 8'h0; // @[NV_NVDLA_CSC_dl_for_check.scala 1126:97:@1801.4]
  assign dat_rsp_mask_val_int8_14 = dat_rsp_data_w_14 != 8'h0; // @[NV_NVDLA_CSC_dl_for_check.scala 1126:97:@1802.4]
  assign dat_rsp_mask_val_int8_15 = dat_rsp_data_w_15 != 8'h0; // @[NV_NVDLA_CSC_dl_for_check.scala 1126:97:@1803.4]
  assign dat_rsp_mask_val_int8_16 = dat_rsp_data_w_16 != 8'h0; // @[NV_NVDLA_CSC_dl_for_check.scala 1126:97:@1804.4]
  assign dat_rsp_mask_val_int8_17 = dat_rsp_data_w_17 != 8'h0; // @[NV_NVDLA_CSC_dl_for_check.scala 1126:97:@1805.4]
  assign dat_rsp_mask_val_int8_18 = dat_rsp_data_w_18 != 8'h0; // @[NV_NVDLA_CSC_dl_for_check.scala 1126:97:@1806.4]
  assign dat_rsp_mask_val_int8_19 = dat_rsp_data_w_19 != 8'h0; // @[NV_NVDLA_CSC_dl_for_check.scala 1126:97:@1807.4]
  assign dat_rsp_mask_val_int8_20 = dat_rsp_data_w_20 != 8'h0; // @[NV_NVDLA_CSC_dl_for_check.scala 1126:97:@1808.4]
  assign dat_rsp_mask_val_int8_21 = dat_rsp_data_w_21 != 8'h0; // @[NV_NVDLA_CSC_dl_for_check.scala 1126:97:@1809.4]
  assign dat_rsp_mask_val_int8_22 = dat_rsp_data_w_22 != 8'h0; // @[NV_NVDLA_CSC_dl_for_check.scala 1126:97:@1810.4]
  assign dat_rsp_mask_val_int8_23 = dat_rsp_data_w_23 != 8'h0; // @[NV_NVDLA_CSC_dl_for_check.scala 1126:97:@1811.4]
  assign dat_rsp_mask_val_int8_24 = dat_rsp_data_w_24 != 8'h0; // @[NV_NVDLA_CSC_dl_for_check.scala 1126:97:@1812.4]
  assign dat_rsp_mask_val_int8_25 = dat_rsp_data_w_25 != 8'h0; // @[NV_NVDLA_CSC_dl_for_check.scala 1126:97:@1813.4]
  assign dat_rsp_mask_val_int8_26 = dat_rsp_data_w_26 != 8'h0; // @[NV_NVDLA_CSC_dl_for_check.scala 1126:97:@1814.4]
  assign dat_rsp_mask_val_int8_27 = dat_rsp_data_w_27 != 8'h0; // @[NV_NVDLA_CSC_dl_for_check.scala 1126:97:@1815.4]
  assign dat_rsp_mask_val_int8_28 = dat_rsp_data_w_28 != 8'h0; // @[NV_NVDLA_CSC_dl_for_check.scala 1126:97:@1816.4]
  assign dat_rsp_mask_val_int8_29 = dat_rsp_data_w_29 != 8'h0; // @[NV_NVDLA_CSC_dl_for_check.scala 1126:97:@1817.4]
  assign dat_rsp_mask_val_int8_30 = dat_rsp_data_w_30 != 8'h0; // @[NV_NVDLA_CSC_dl_for_check.scala 1126:97:@1818.4]
  assign dat_rsp_mask_val_int8_31 = dat_rsp_data_w_31 != 8'h0; // @[NV_NVDLA_CSC_dl_for_check.scala 1126:97:@1819.4]
  assign dat_rsp_mask_val_int8_32 = dat_rsp_data_w_32 != 8'h0; // @[NV_NVDLA_CSC_dl_for_check.scala 1126:97:@1820.4]
  assign dat_rsp_mask_val_int8_33 = dat_rsp_data_w_33 != 8'h0; // @[NV_NVDLA_CSC_dl_for_check.scala 1126:97:@1821.4]
  assign dat_rsp_mask_val_int8_34 = dat_rsp_data_w_34 != 8'h0; // @[NV_NVDLA_CSC_dl_for_check.scala 1126:97:@1822.4]
  assign dat_rsp_mask_val_int8_35 = dat_rsp_data_w_35 != 8'h0; // @[NV_NVDLA_CSC_dl_for_check.scala 1126:97:@1823.4]
  assign dat_rsp_mask_val_int8_36 = dat_rsp_data_w_36 != 8'h0; // @[NV_NVDLA_CSC_dl_for_check.scala 1126:97:@1824.4]
  assign dat_rsp_mask_val_int8_37 = dat_rsp_data_w_37 != 8'h0; // @[NV_NVDLA_CSC_dl_for_check.scala 1126:97:@1825.4]
  assign dat_rsp_mask_val_int8_38 = dat_rsp_data_w_38 != 8'h0; // @[NV_NVDLA_CSC_dl_for_check.scala 1126:97:@1826.4]
  assign dat_rsp_mask_val_int8_39 = dat_rsp_data_w_39 != 8'h0; // @[NV_NVDLA_CSC_dl_for_check.scala 1126:97:@1827.4]
  assign dat_rsp_mask_val_int8_40 = dat_rsp_data_w_40 != 8'h0; // @[NV_NVDLA_CSC_dl_for_check.scala 1126:97:@1828.4]
  assign dat_rsp_mask_val_int8_41 = dat_rsp_data_w_41 != 8'h0; // @[NV_NVDLA_CSC_dl_for_check.scala 1126:97:@1829.4]
  assign dat_rsp_mask_val_int8_42 = dat_rsp_data_w_42 != 8'h0; // @[NV_NVDLA_CSC_dl_for_check.scala 1126:97:@1830.4]
  assign dat_rsp_mask_val_int8_43 = dat_rsp_data_w_43 != 8'h0; // @[NV_NVDLA_CSC_dl_for_check.scala 1126:97:@1831.4]
  assign dat_rsp_mask_val_int8_44 = dat_rsp_data_w_44 != 8'h0; // @[NV_NVDLA_CSC_dl_for_check.scala 1126:97:@1832.4]
  assign dat_rsp_mask_val_int8_45 = dat_rsp_data_w_45 != 8'h0; // @[NV_NVDLA_CSC_dl_for_check.scala 1126:97:@1833.4]
  assign dat_rsp_mask_val_int8_46 = dat_rsp_data_w_46 != 8'h0; // @[NV_NVDLA_CSC_dl_for_check.scala 1126:97:@1834.4]
  assign dat_rsp_mask_val_int8_47 = dat_rsp_data_w_47 != 8'h0; // @[NV_NVDLA_CSC_dl_for_check.scala 1126:97:@1835.4]
  assign dat_rsp_mask_val_int8_48 = dat_rsp_data_w_48 != 8'h0; // @[NV_NVDLA_CSC_dl_for_check.scala 1126:97:@1836.4]
  assign dat_rsp_mask_val_int8_49 = dat_rsp_data_w_49 != 8'h0; // @[NV_NVDLA_CSC_dl_for_check.scala 1126:97:@1837.4]
  assign dat_rsp_mask_val_int8_50 = dat_rsp_data_w_50 != 8'h0; // @[NV_NVDLA_CSC_dl_for_check.scala 1126:97:@1838.4]
  assign dat_rsp_mask_val_int8_51 = dat_rsp_data_w_51 != 8'h0; // @[NV_NVDLA_CSC_dl_for_check.scala 1126:97:@1839.4]
  assign dat_rsp_mask_val_int8_52 = dat_rsp_data_w_52 != 8'h0; // @[NV_NVDLA_CSC_dl_for_check.scala 1126:97:@1840.4]
  assign dat_rsp_mask_val_int8_53 = dat_rsp_data_w_53 != 8'h0; // @[NV_NVDLA_CSC_dl_for_check.scala 1126:97:@1841.4]
  assign dat_rsp_mask_val_int8_54 = dat_rsp_data_w_54 != 8'h0; // @[NV_NVDLA_CSC_dl_for_check.scala 1126:97:@1842.4]
  assign dat_rsp_mask_val_int8_55 = dat_rsp_data_w_55 != 8'h0; // @[NV_NVDLA_CSC_dl_for_check.scala 1126:97:@1843.4]
  assign dat_rsp_mask_val_int8_56 = dat_rsp_data_w_56 != 8'h0; // @[NV_NVDLA_CSC_dl_for_check.scala 1126:97:@1844.4]
  assign dat_rsp_mask_val_int8_57 = dat_rsp_data_w_57 != 8'h0; // @[NV_NVDLA_CSC_dl_for_check.scala 1126:97:@1845.4]
  assign dat_rsp_mask_val_int8_58 = dat_rsp_data_w_58 != 8'h0; // @[NV_NVDLA_CSC_dl_for_check.scala 1126:97:@1846.4]
  assign dat_rsp_mask_val_int8_59 = dat_rsp_data_w_59 != 8'h0; // @[NV_NVDLA_CSC_dl_for_check.scala 1126:97:@1847.4]
  assign dat_rsp_mask_val_int8_60 = dat_rsp_data_w_60 != 8'h0; // @[NV_NVDLA_CSC_dl_for_check.scala 1126:97:@1848.4]
  assign dat_rsp_mask_val_int8_61 = dat_rsp_data_w_61 != 8'h0; // @[NV_NVDLA_CSC_dl_for_check.scala 1126:97:@1849.4]
  assign dat_rsp_mask_val_int8_62 = dat_rsp_data_w_62 != 8'h0; // @[NV_NVDLA_CSC_dl_for_check.scala 1126:97:@1850.4]
  assign dat_rsp_mask_val_int8_63 = dat_rsp_data_w_63 != 8'h0; // @[NV_NVDLA_CSC_dl_for_check.scala 1126:97:@1851.4]
  assign _T_2269 = dat_rsp_mask_8b[0]; // @[NV_NVDLA_CSC_dl_for_check.scala 1127:80:@1917.4]
  assign dat_rsp_mask_w_0 = _T_2269 & dat_rsp_mask_val_int8_0; // @[NV_NVDLA_CSC_dl_for_check.scala 1127:83:@1918.4]
  assign _T_2271 = dat_rsp_mask_8b[1]; // @[NV_NVDLA_CSC_dl_for_check.scala 1127:80:@1919.4]
  assign dat_rsp_mask_w_1 = _T_2271 & dat_rsp_mask_val_int8_1; // @[NV_NVDLA_CSC_dl_for_check.scala 1127:83:@1920.4]
  assign _T_2273 = dat_rsp_mask_8b[2]; // @[NV_NVDLA_CSC_dl_for_check.scala 1127:80:@1921.4]
  assign dat_rsp_mask_w_2 = _T_2273 & dat_rsp_mask_val_int8_2; // @[NV_NVDLA_CSC_dl_for_check.scala 1127:83:@1922.4]
  assign _T_2275 = dat_rsp_mask_8b[3]; // @[NV_NVDLA_CSC_dl_for_check.scala 1127:80:@1923.4]
  assign dat_rsp_mask_w_3 = _T_2275 & dat_rsp_mask_val_int8_3; // @[NV_NVDLA_CSC_dl_for_check.scala 1127:83:@1924.4]
  assign _T_2277 = dat_rsp_mask_8b[4]; // @[NV_NVDLA_CSC_dl_for_check.scala 1127:80:@1925.4]
  assign dat_rsp_mask_w_4 = _T_2277 & dat_rsp_mask_val_int8_4; // @[NV_NVDLA_CSC_dl_for_check.scala 1127:83:@1926.4]
  assign _T_2279 = dat_rsp_mask_8b[5]; // @[NV_NVDLA_CSC_dl_for_check.scala 1127:80:@1927.4]
  assign dat_rsp_mask_w_5 = _T_2279 & dat_rsp_mask_val_int8_5; // @[NV_NVDLA_CSC_dl_for_check.scala 1127:83:@1928.4]
  assign _T_2281 = dat_rsp_mask_8b[6]; // @[NV_NVDLA_CSC_dl_for_check.scala 1127:80:@1929.4]
  assign dat_rsp_mask_w_6 = _T_2281 & dat_rsp_mask_val_int8_6; // @[NV_NVDLA_CSC_dl_for_check.scala 1127:83:@1930.4]
  assign _T_2283 = dat_rsp_mask_8b[7]; // @[NV_NVDLA_CSC_dl_for_check.scala 1127:80:@1931.4]
  assign dat_rsp_mask_w_7 = _T_2283 & dat_rsp_mask_val_int8_7; // @[NV_NVDLA_CSC_dl_for_check.scala 1127:83:@1932.4]
  assign _T_2285 = dat_rsp_mask_8b[8]; // @[NV_NVDLA_CSC_dl_for_check.scala 1127:80:@1933.4]
  assign dat_rsp_mask_w_8 = _T_2285 & dat_rsp_mask_val_int8_8; // @[NV_NVDLA_CSC_dl_for_check.scala 1127:83:@1934.4]
  assign _T_2287 = dat_rsp_mask_8b[9]; // @[NV_NVDLA_CSC_dl_for_check.scala 1127:80:@1935.4]
  assign dat_rsp_mask_w_9 = _T_2287 & dat_rsp_mask_val_int8_9; // @[NV_NVDLA_CSC_dl_for_check.scala 1127:83:@1936.4]
  assign _T_2289 = dat_rsp_mask_8b[10]; // @[NV_NVDLA_CSC_dl_for_check.scala 1127:80:@1937.4]
  assign dat_rsp_mask_w_10 = _T_2289 & dat_rsp_mask_val_int8_10; // @[NV_NVDLA_CSC_dl_for_check.scala 1127:83:@1938.4]
  assign _T_2291 = dat_rsp_mask_8b[11]; // @[NV_NVDLA_CSC_dl_for_check.scala 1127:80:@1939.4]
  assign dat_rsp_mask_w_11 = _T_2291 & dat_rsp_mask_val_int8_11; // @[NV_NVDLA_CSC_dl_for_check.scala 1127:83:@1940.4]
  assign _T_2293 = dat_rsp_mask_8b[12]; // @[NV_NVDLA_CSC_dl_for_check.scala 1127:80:@1941.4]
  assign dat_rsp_mask_w_12 = _T_2293 & dat_rsp_mask_val_int8_12; // @[NV_NVDLA_CSC_dl_for_check.scala 1127:83:@1942.4]
  assign _T_2295 = dat_rsp_mask_8b[13]; // @[NV_NVDLA_CSC_dl_for_check.scala 1127:80:@1943.4]
  assign dat_rsp_mask_w_13 = _T_2295 & dat_rsp_mask_val_int8_13; // @[NV_NVDLA_CSC_dl_for_check.scala 1127:83:@1944.4]
  assign _T_2297 = dat_rsp_mask_8b[14]; // @[NV_NVDLA_CSC_dl_for_check.scala 1127:80:@1945.4]
  assign dat_rsp_mask_w_14 = _T_2297 & dat_rsp_mask_val_int8_14; // @[NV_NVDLA_CSC_dl_for_check.scala 1127:83:@1946.4]
  assign _T_2299 = dat_rsp_mask_8b[15]; // @[NV_NVDLA_CSC_dl_for_check.scala 1127:80:@1947.4]
  assign dat_rsp_mask_w_15 = _T_2299 & dat_rsp_mask_val_int8_15; // @[NV_NVDLA_CSC_dl_for_check.scala 1127:83:@1948.4]
  assign _T_2301 = dat_rsp_mask_8b[16]; // @[NV_NVDLA_CSC_dl_for_check.scala 1127:80:@1949.4]
  assign dat_rsp_mask_w_16 = _T_2301 & dat_rsp_mask_val_int8_16; // @[NV_NVDLA_CSC_dl_for_check.scala 1127:83:@1950.4]
  assign _T_2303 = dat_rsp_mask_8b[17]; // @[NV_NVDLA_CSC_dl_for_check.scala 1127:80:@1951.4]
  assign dat_rsp_mask_w_17 = _T_2303 & dat_rsp_mask_val_int8_17; // @[NV_NVDLA_CSC_dl_for_check.scala 1127:83:@1952.4]
  assign _T_2305 = dat_rsp_mask_8b[18]; // @[NV_NVDLA_CSC_dl_for_check.scala 1127:80:@1953.4]
  assign dat_rsp_mask_w_18 = _T_2305 & dat_rsp_mask_val_int8_18; // @[NV_NVDLA_CSC_dl_for_check.scala 1127:83:@1954.4]
  assign _T_2307 = dat_rsp_mask_8b[19]; // @[NV_NVDLA_CSC_dl_for_check.scala 1127:80:@1955.4]
  assign dat_rsp_mask_w_19 = _T_2307 & dat_rsp_mask_val_int8_19; // @[NV_NVDLA_CSC_dl_for_check.scala 1127:83:@1956.4]
  assign _T_2309 = dat_rsp_mask_8b[20]; // @[NV_NVDLA_CSC_dl_for_check.scala 1127:80:@1957.4]
  assign dat_rsp_mask_w_20 = _T_2309 & dat_rsp_mask_val_int8_20; // @[NV_NVDLA_CSC_dl_for_check.scala 1127:83:@1958.4]
  assign _T_2311 = dat_rsp_mask_8b[21]; // @[NV_NVDLA_CSC_dl_for_check.scala 1127:80:@1959.4]
  assign dat_rsp_mask_w_21 = _T_2311 & dat_rsp_mask_val_int8_21; // @[NV_NVDLA_CSC_dl_for_check.scala 1127:83:@1960.4]
  assign _T_2313 = dat_rsp_mask_8b[22]; // @[NV_NVDLA_CSC_dl_for_check.scala 1127:80:@1961.4]
  assign dat_rsp_mask_w_22 = _T_2313 & dat_rsp_mask_val_int8_22; // @[NV_NVDLA_CSC_dl_for_check.scala 1127:83:@1962.4]
  assign _T_2315 = dat_rsp_mask_8b[23]; // @[NV_NVDLA_CSC_dl_for_check.scala 1127:80:@1963.4]
  assign dat_rsp_mask_w_23 = _T_2315 & dat_rsp_mask_val_int8_23; // @[NV_NVDLA_CSC_dl_for_check.scala 1127:83:@1964.4]
  assign _T_2317 = dat_rsp_mask_8b[24]; // @[NV_NVDLA_CSC_dl_for_check.scala 1127:80:@1965.4]
  assign dat_rsp_mask_w_24 = _T_2317 & dat_rsp_mask_val_int8_24; // @[NV_NVDLA_CSC_dl_for_check.scala 1127:83:@1966.4]
  assign _T_2319 = dat_rsp_mask_8b[25]; // @[NV_NVDLA_CSC_dl_for_check.scala 1127:80:@1967.4]
  assign dat_rsp_mask_w_25 = _T_2319 & dat_rsp_mask_val_int8_25; // @[NV_NVDLA_CSC_dl_for_check.scala 1127:83:@1968.4]
  assign _T_2321 = dat_rsp_mask_8b[26]; // @[NV_NVDLA_CSC_dl_for_check.scala 1127:80:@1969.4]
  assign dat_rsp_mask_w_26 = _T_2321 & dat_rsp_mask_val_int8_26; // @[NV_NVDLA_CSC_dl_for_check.scala 1127:83:@1970.4]
  assign _T_2323 = dat_rsp_mask_8b[27]; // @[NV_NVDLA_CSC_dl_for_check.scala 1127:80:@1971.4]
  assign dat_rsp_mask_w_27 = _T_2323 & dat_rsp_mask_val_int8_27; // @[NV_NVDLA_CSC_dl_for_check.scala 1127:83:@1972.4]
  assign _T_2325 = dat_rsp_mask_8b[28]; // @[NV_NVDLA_CSC_dl_for_check.scala 1127:80:@1973.4]
  assign dat_rsp_mask_w_28 = _T_2325 & dat_rsp_mask_val_int8_28; // @[NV_NVDLA_CSC_dl_for_check.scala 1127:83:@1974.4]
  assign _T_2327 = dat_rsp_mask_8b[29]; // @[NV_NVDLA_CSC_dl_for_check.scala 1127:80:@1975.4]
  assign dat_rsp_mask_w_29 = _T_2327 & dat_rsp_mask_val_int8_29; // @[NV_NVDLA_CSC_dl_for_check.scala 1127:83:@1976.4]
  assign _T_2329 = dat_rsp_mask_8b[30]; // @[NV_NVDLA_CSC_dl_for_check.scala 1127:80:@1977.4]
  assign dat_rsp_mask_w_30 = _T_2329 & dat_rsp_mask_val_int8_30; // @[NV_NVDLA_CSC_dl_for_check.scala 1127:83:@1978.4]
  assign _T_2331 = dat_rsp_mask_8b[31]; // @[NV_NVDLA_CSC_dl_for_check.scala 1127:80:@1979.4]
  assign dat_rsp_mask_w_31 = _T_2331 & dat_rsp_mask_val_int8_31; // @[NV_NVDLA_CSC_dl_for_check.scala 1127:83:@1980.4]
  assign _T_2333 = dat_rsp_mask_8b[32]; // @[NV_NVDLA_CSC_dl_for_check.scala 1127:80:@1981.4]
  assign dat_rsp_mask_w_32 = _T_2333 & dat_rsp_mask_val_int8_32; // @[NV_NVDLA_CSC_dl_for_check.scala 1127:83:@1982.4]
  assign _T_2335 = dat_rsp_mask_8b[33]; // @[NV_NVDLA_CSC_dl_for_check.scala 1127:80:@1983.4]
  assign dat_rsp_mask_w_33 = _T_2335 & dat_rsp_mask_val_int8_33; // @[NV_NVDLA_CSC_dl_for_check.scala 1127:83:@1984.4]
  assign _T_2337 = dat_rsp_mask_8b[34]; // @[NV_NVDLA_CSC_dl_for_check.scala 1127:80:@1985.4]
  assign dat_rsp_mask_w_34 = _T_2337 & dat_rsp_mask_val_int8_34; // @[NV_NVDLA_CSC_dl_for_check.scala 1127:83:@1986.4]
  assign _T_2339 = dat_rsp_mask_8b[35]; // @[NV_NVDLA_CSC_dl_for_check.scala 1127:80:@1987.4]
  assign dat_rsp_mask_w_35 = _T_2339 & dat_rsp_mask_val_int8_35; // @[NV_NVDLA_CSC_dl_for_check.scala 1127:83:@1988.4]
  assign _T_2341 = dat_rsp_mask_8b[36]; // @[NV_NVDLA_CSC_dl_for_check.scala 1127:80:@1989.4]
  assign dat_rsp_mask_w_36 = _T_2341 & dat_rsp_mask_val_int8_36; // @[NV_NVDLA_CSC_dl_for_check.scala 1127:83:@1990.4]
  assign _T_2343 = dat_rsp_mask_8b[37]; // @[NV_NVDLA_CSC_dl_for_check.scala 1127:80:@1991.4]
  assign dat_rsp_mask_w_37 = _T_2343 & dat_rsp_mask_val_int8_37; // @[NV_NVDLA_CSC_dl_for_check.scala 1127:83:@1992.4]
  assign _T_2345 = dat_rsp_mask_8b[38]; // @[NV_NVDLA_CSC_dl_for_check.scala 1127:80:@1993.4]
  assign dat_rsp_mask_w_38 = _T_2345 & dat_rsp_mask_val_int8_38; // @[NV_NVDLA_CSC_dl_for_check.scala 1127:83:@1994.4]
  assign _T_2347 = dat_rsp_mask_8b[39]; // @[NV_NVDLA_CSC_dl_for_check.scala 1127:80:@1995.4]
  assign dat_rsp_mask_w_39 = _T_2347 & dat_rsp_mask_val_int8_39; // @[NV_NVDLA_CSC_dl_for_check.scala 1127:83:@1996.4]
  assign _T_2349 = dat_rsp_mask_8b[40]; // @[NV_NVDLA_CSC_dl_for_check.scala 1127:80:@1997.4]
  assign dat_rsp_mask_w_40 = _T_2349 & dat_rsp_mask_val_int8_40; // @[NV_NVDLA_CSC_dl_for_check.scala 1127:83:@1998.4]
  assign _T_2351 = dat_rsp_mask_8b[41]; // @[NV_NVDLA_CSC_dl_for_check.scala 1127:80:@1999.4]
  assign dat_rsp_mask_w_41 = _T_2351 & dat_rsp_mask_val_int8_41; // @[NV_NVDLA_CSC_dl_for_check.scala 1127:83:@2000.4]
  assign _T_2353 = dat_rsp_mask_8b[42]; // @[NV_NVDLA_CSC_dl_for_check.scala 1127:80:@2001.4]
  assign dat_rsp_mask_w_42 = _T_2353 & dat_rsp_mask_val_int8_42; // @[NV_NVDLA_CSC_dl_for_check.scala 1127:83:@2002.4]
  assign _T_2355 = dat_rsp_mask_8b[43]; // @[NV_NVDLA_CSC_dl_for_check.scala 1127:80:@2003.4]
  assign dat_rsp_mask_w_43 = _T_2355 & dat_rsp_mask_val_int8_43; // @[NV_NVDLA_CSC_dl_for_check.scala 1127:83:@2004.4]
  assign _T_2357 = dat_rsp_mask_8b[44]; // @[NV_NVDLA_CSC_dl_for_check.scala 1127:80:@2005.4]
  assign dat_rsp_mask_w_44 = _T_2357 & dat_rsp_mask_val_int8_44; // @[NV_NVDLA_CSC_dl_for_check.scala 1127:83:@2006.4]
  assign _T_2359 = dat_rsp_mask_8b[45]; // @[NV_NVDLA_CSC_dl_for_check.scala 1127:80:@2007.4]
  assign dat_rsp_mask_w_45 = _T_2359 & dat_rsp_mask_val_int8_45; // @[NV_NVDLA_CSC_dl_for_check.scala 1127:83:@2008.4]
  assign _T_2361 = dat_rsp_mask_8b[46]; // @[NV_NVDLA_CSC_dl_for_check.scala 1127:80:@2009.4]
  assign dat_rsp_mask_w_46 = _T_2361 & dat_rsp_mask_val_int8_46; // @[NV_NVDLA_CSC_dl_for_check.scala 1127:83:@2010.4]
  assign _T_2363 = dat_rsp_mask_8b[47]; // @[NV_NVDLA_CSC_dl_for_check.scala 1127:80:@2011.4]
  assign dat_rsp_mask_w_47 = _T_2363 & dat_rsp_mask_val_int8_47; // @[NV_NVDLA_CSC_dl_for_check.scala 1127:83:@2012.4]
  assign _T_2365 = dat_rsp_mask_8b[48]; // @[NV_NVDLA_CSC_dl_for_check.scala 1127:80:@2013.4]
  assign dat_rsp_mask_w_48 = _T_2365 & dat_rsp_mask_val_int8_48; // @[NV_NVDLA_CSC_dl_for_check.scala 1127:83:@2014.4]
  assign _T_2367 = dat_rsp_mask_8b[49]; // @[NV_NVDLA_CSC_dl_for_check.scala 1127:80:@2015.4]
  assign dat_rsp_mask_w_49 = _T_2367 & dat_rsp_mask_val_int8_49; // @[NV_NVDLA_CSC_dl_for_check.scala 1127:83:@2016.4]
  assign _T_2369 = dat_rsp_mask_8b[50]; // @[NV_NVDLA_CSC_dl_for_check.scala 1127:80:@2017.4]
  assign dat_rsp_mask_w_50 = _T_2369 & dat_rsp_mask_val_int8_50; // @[NV_NVDLA_CSC_dl_for_check.scala 1127:83:@2018.4]
  assign _T_2371 = dat_rsp_mask_8b[51]; // @[NV_NVDLA_CSC_dl_for_check.scala 1127:80:@2019.4]
  assign dat_rsp_mask_w_51 = _T_2371 & dat_rsp_mask_val_int8_51; // @[NV_NVDLA_CSC_dl_for_check.scala 1127:83:@2020.4]
  assign _T_2373 = dat_rsp_mask_8b[52]; // @[NV_NVDLA_CSC_dl_for_check.scala 1127:80:@2021.4]
  assign dat_rsp_mask_w_52 = _T_2373 & dat_rsp_mask_val_int8_52; // @[NV_NVDLA_CSC_dl_for_check.scala 1127:83:@2022.4]
  assign _T_2375 = dat_rsp_mask_8b[53]; // @[NV_NVDLA_CSC_dl_for_check.scala 1127:80:@2023.4]
  assign dat_rsp_mask_w_53 = _T_2375 & dat_rsp_mask_val_int8_53; // @[NV_NVDLA_CSC_dl_for_check.scala 1127:83:@2024.4]
  assign _T_2377 = dat_rsp_mask_8b[54]; // @[NV_NVDLA_CSC_dl_for_check.scala 1127:80:@2025.4]
  assign dat_rsp_mask_w_54 = _T_2377 & dat_rsp_mask_val_int8_54; // @[NV_NVDLA_CSC_dl_for_check.scala 1127:83:@2026.4]
  assign _T_2379 = dat_rsp_mask_8b[55]; // @[NV_NVDLA_CSC_dl_for_check.scala 1127:80:@2027.4]
  assign dat_rsp_mask_w_55 = _T_2379 & dat_rsp_mask_val_int8_55; // @[NV_NVDLA_CSC_dl_for_check.scala 1127:83:@2028.4]
  assign _T_2381 = dat_rsp_mask_8b[56]; // @[NV_NVDLA_CSC_dl_for_check.scala 1127:80:@2029.4]
  assign dat_rsp_mask_w_56 = _T_2381 & dat_rsp_mask_val_int8_56; // @[NV_NVDLA_CSC_dl_for_check.scala 1127:83:@2030.4]
  assign _T_2383 = dat_rsp_mask_8b[57]; // @[NV_NVDLA_CSC_dl_for_check.scala 1127:80:@2031.4]
  assign dat_rsp_mask_w_57 = _T_2383 & dat_rsp_mask_val_int8_57; // @[NV_NVDLA_CSC_dl_for_check.scala 1127:83:@2032.4]
  assign _T_2385 = dat_rsp_mask_8b[58]; // @[NV_NVDLA_CSC_dl_for_check.scala 1127:80:@2033.4]
  assign dat_rsp_mask_w_58 = _T_2385 & dat_rsp_mask_val_int8_58; // @[NV_NVDLA_CSC_dl_for_check.scala 1127:83:@2034.4]
  assign _T_2387 = dat_rsp_mask_8b[59]; // @[NV_NVDLA_CSC_dl_for_check.scala 1127:80:@2035.4]
  assign dat_rsp_mask_w_59 = _T_2387 & dat_rsp_mask_val_int8_59; // @[NV_NVDLA_CSC_dl_for_check.scala 1127:83:@2036.4]
  assign _T_2389 = dat_rsp_mask_8b[60]; // @[NV_NVDLA_CSC_dl_for_check.scala 1127:80:@2037.4]
  assign dat_rsp_mask_w_60 = _T_2389 & dat_rsp_mask_val_int8_60; // @[NV_NVDLA_CSC_dl_for_check.scala 1127:83:@2038.4]
  assign _T_2391 = dat_rsp_mask_8b[61]; // @[NV_NVDLA_CSC_dl_for_check.scala 1127:80:@2039.4]
  assign dat_rsp_mask_w_61 = _T_2391 & dat_rsp_mask_val_int8_61; // @[NV_NVDLA_CSC_dl_for_check.scala 1127:83:@2040.4]
  assign _T_2393 = dat_rsp_mask_8b[62]; // @[NV_NVDLA_CSC_dl_for_check.scala 1127:80:@2041.4]
  assign dat_rsp_mask_w_62 = _T_2393 & dat_rsp_mask_val_int8_62; // @[NV_NVDLA_CSC_dl_for_check.scala 1127:83:@2042.4]
  assign _T_2395 = dat_rsp_mask_8b[63]; // @[NV_NVDLA_CSC_dl_for_check.scala 1127:80:@2043.4]
  assign dat_rsp_mask_w_63 = _T_2395 & dat_rsp_mask_val_int8_63; // @[NV_NVDLA_CSC_dl_for_check.scala 1127:83:@2044.4]
  assign _T_2466 = is_winograd_d1[16]; // @[NV_NVDLA_CSC_dl_for_check.scala 1128:54:@2110.4]
  assign _T_2467 = ~ _T_2466; // @[NV_NVDLA_CSC_dl_for_check.scala 1128:39:@2111.4]
  assign dat_rsp_p0_vld_w = dat_rsp_pvld & _T_2467; // @[NV_NVDLA_CSC_dl_for_check.scala 1128:37:@2112.4]
  assign _GEN_160 = dat_rsp_pvld ? dat_rsp_flag : _T_3024; // @[NV_NVDLA_CSC_dl_for_check.scala 1148:28:@2197.4]
  assign _GEN_161 = _T_3007 ? _T_3024 : _T_3027; // @[NV_NVDLA_CSC_dl_for_check.scala 1148:28:@2201.4]
  assign _GEN_162 = _T_3010 ? _T_3027 : _T_3030; // @[NV_NVDLA_CSC_dl_for_check.scala 1148:28:@2205.4]
  assign _GEN_163 = _T_3013 ? _T_3030 : _T_3033; // @[NV_NVDLA_CSC_dl_for_check.scala 1148:28:@2209.4]
  assign _GEN_164 = _T_3016 ? _T_3033 : _T_3036; // @[NV_NVDLA_CSC_dl_for_check.scala 1148:28:@2213.4]
  assign _T_3037 = is_winograd_d1[17]; // @[NV_NVDLA_CSC_dl_for_check.scala 1153:40:@2216.4]
  assign dat_out_pvld_w = _T_3037 ? _T_3019 : dat_rsp_pvld; // @[NV_NVDLA_CSC_dl_for_check.scala 1153:25:@2217.4]
  assign _T_3038 = is_winograd_d1[18]; // @[NV_NVDLA_CSC_dl_for_check.scala 1154:40:@2218.4]
  assign dat_out_flag_w = _T_3038 ? _T_3036 : dat_rsp_flag; // @[NV_NVDLA_CSC_dl_for_check.scala 1154:25:@2219.4]
  assign _GEN_165 = dat_out_pvld_w ? dat_out_flag_w : dat_out_flag; // @[NV_NVDLA_CSC_dl_for_check.scala 1161:21:@2221.4]
  assign _GEN_166 = dat_rsp_p0_vld_w ? dat_rsp_mask_w_0 : dat_out_bypass_mask_0; // @[NV_NVDLA_CSC_dl_for_check.scala 1164:30:@2224.4]
  assign _GEN_167 = dat_rsp_p0_vld_w ? dat_rsp_mask_w_1 : dat_out_bypass_mask_1; // @[NV_NVDLA_CSC_dl_for_check.scala 1164:30:@2224.4]
  assign _GEN_168 = dat_rsp_p0_vld_w ? dat_rsp_mask_w_2 : dat_out_bypass_mask_2; // @[NV_NVDLA_CSC_dl_for_check.scala 1164:30:@2224.4]
  assign _GEN_169 = dat_rsp_p0_vld_w ? dat_rsp_mask_w_3 : dat_out_bypass_mask_3; // @[NV_NVDLA_CSC_dl_for_check.scala 1164:30:@2224.4]
  assign _GEN_170 = dat_rsp_p0_vld_w ? dat_rsp_mask_w_4 : dat_out_bypass_mask_4; // @[NV_NVDLA_CSC_dl_for_check.scala 1164:30:@2224.4]
  assign _GEN_171 = dat_rsp_p0_vld_w ? dat_rsp_mask_w_5 : dat_out_bypass_mask_5; // @[NV_NVDLA_CSC_dl_for_check.scala 1164:30:@2224.4]
  assign _GEN_172 = dat_rsp_p0_vld_w ? dat_rsp_mask_w_6 : dat_out_bypass_mask_6; // @[NV_NVDLA_CSC_dl_for_check.scala 1164:30:@2224.4]
  assign _GEN_173 = dat_rsp_p0_vld_w ? dat_rsp_mask_w_7 : dat_out_bypass_mask_7; // @[NV_NVDLA_CSC_dl_for_check.scala 1164:30:@2224.4]
  assign _GEN_174 = dat_rsp_p0_vld_w ? dat_rsp_mask_w_8 : dat_out_bypass_mask_8; // @[NV_NVDLA_CSC_dl_for_check.scala 1164:30:@2224.4]
  assign _GEN_175 = dat_rsp_p0_vld_w ? dat_rsp_mask_w_9 : dat_out_bypass_mask_9; // @[NV_NVDLA_CSC_dl_for_check.scala 1164:30:@2224.4]
  assign _GEN_176 = dat_rsp_p0_vld_w ? dat_rsp_mask_w_10 : dat_out_bypass_mask_10; // @[NV_NVDLA_CSC_dl_for_check.scala 1164:30:@2224.4]
  assign _GEN_177 = dat_rsp_p0_vld_w ? dat_rsp_mask_w_11 : dat_out_bypass_mask_11; // @[NV_NVDLA_CSC_dl_for_check.scala 1164:30:@2224.4]
  assign _GEN_178 = dat_rsp_p0_vld_w ? dat_rsp_mask_w_12 : dat_out_bypass_mask_12; // @[NV_NVDLA_CSC_dl_for_check.scala 1164:30:@2224.4]
  assign _GEN_179 = dat_rsp_p0_vld_w ? dat_rsp_mask_w_13 : dat_out_bypass_mask_13; // @[NV_NVDLA_CSC_dl_for_check.scala 1164:30:@2224.4]
  assign _GEN_180 = dat_rsp_p0_vld_w ? dat_rsp_mask_w_14 : dat_out_bypass_mask_14; // @[NV_NVDLA_CSC_dl_for_check.scala 1164:30:@2224.4]
  assign _GEN_181 = dat_rsp_p0_vld_w ? dat_rsp_mask_w_15 : dat_out_bypass_mask_15; // @[NV_NVDLA_CSC_dl_for_check.scala 1164:30:@2224.4]
  assign _GEN_182 = dat_rsp_p0_vld_w ? dat_rsp_mask_w_16 : dat_out_bypass_mask_16; // @[NV_NVDLA_CSC_dl_for_check.scala 1164:30:@2224.4]
  assign _GEN_183 = dat_rsp_p0_vld_w ? dat_rsp_mask_w_17 : dat_out_bypass_mask_17; // @[NV_NVDLA_CSC_dl_for_check.scala 1164:30:@2224.4]
  assign _GEN_184 = dat_rsp_p0_vld_w ? dat_rsp_mask_w_18 : dat_out_bypass_mask_18; // @[NV_NVDLA_CSC_dl_for_check.scala 1164:30:@2224.4]
  assign _GEN_185 = dat_rsp_p0_vld_w ? dat_rsp_mask_w_19 : dat_out_bypass_mask_19; // @[NV_NVDLA_CSC_dl_for_check.scala 1164:30:@2224.4]
  assign _GEN_186 = dat_rsp_p0_vld_w ? dat_rsp_mask_w_20 : dat_out_bypass_mask_20; // @[NV_NVDLA_CSC_dl_for_check.scala 1164:30:@2224.4]
  assign _GEN_187 = dat_rsp_p0_vld_w ? dat_rsp_mask_w_21 : dat_out_bypass_mask_21; // @[NV_NVDLA_CSC_dl_for_check.scala 1164:30:@2224.4]
  assign _GEN_188 = dat_rsp_p0_vld_w ? dat_rsp_mask_w_22 : dat_out_bypass_mask_22; // @[NV_NVDLA_CSC_dl_for_check.scala 1164:30:@2224.4]
  assign _GEN_189 = dat_rsp_p0_vld_w ? dat_rsp_mask_w_23 : dat_out_bypass_mask_23; // @[NV_NVDLA_CSC_dl_for_check.scala 1164:30:@2224.4]
  assign _GEN_190 = dat_rsp_p0_vld_w ? dat_rsp_mask_w_24 : dat_out_bypass_mask_24; // @[NV_NVDLA_CSC_dl_for_check.scala 1164:30:@2224.4]
  assign _GEN_191 = dat_rsp_p0_vld_w ? dat_rsp_mask_w_25 : dat_out_bypass_mask_25; // @[NV_NVDLA_CSC_dl_for_check.scala 1164:30:@2224.4]
  assign _GEN_192 = dat_rsp_p0_vld_w ? dat_rsp_mask_w_26 : dat_out_bypass_mask_26; // @[NV_NVDLA_CSC_dl_for_check.scala 1164:30:@2224.4]
  assign _GEN_193 = dat_rsp_p0_vld_w ? dat_rsp_mask_w_27 : dat_out_bypass_mask_27; // @[NV_NVDLA_CSC_dl_for_check.scala 1164:30:@2224.4]
  assign _GEN_194 = dat_rsp_p0_vld_w ? dat_rsp_mask_w_28 : dat_out_bypass_mask_28; // @[NV_NVDLA_CSC_dl_for_check.scala 1164:30:@2224.4]
  assign _GEN_195 = dat_rsp_p0_vld_w ? dat_rsp_mask_w_29 : dat_out_bypass_mask_29; // @[NV_NVDLA_CSC_dl_for_check.scala 1164:30:@2224.4]
  assign _GEN_196 = dat_rsp_p0_vld_w ? dat_rsp_mask_w_30 : dat_out_bypass_mask_30; // @[NV_NVDLA_CSC_dl_for_check.scala 1164:30:@2224.4]
  assign _GEN_197 = dat_rsp_p0_vld_w ? dat_rsp_mask_w_31 : dat_out_bypass_mask_31; // @[NV_NVDLA_CSC_dl_for_check.scala 1164:30:@2224.4]
  assign _GEN_198 = dat_rsp_p0_vld_w ? dat_rsp_mask_w_32 : dat_out_bypass_mask_32; // @[NV_NVDLA_CSC_dl_for_check.scala 1164:30:@2224.4]
  assign _GEN_199 = dat_rsp_p0_vld_w ? dat_rsp_mask_w_33 : dat_out_bypass_mask_33; // @[NV_NVDLA_CSC_dl_for_check.scala 1164:30:@2224.4]
  assign _GEN_200 = dat_rsp_p0_vld_w ? dat_rsp_mask_w_34 : dat_out_bypass_mask_34; // @[NV_NVDLA_CSC_dl_for_check.scala 1164:30:@2224.4]
  assign _GEN_201 = dat_rsp_p0_vld_w ? dat_rsp_mask_w_35 : dat_out_bypass_mask_35; // @[NV_NVDLA_CSC_dl_for_check.scala 1164:30:@2224.4]
  assign _GEN_202 = dat_rsp_p0_vld_w ? dat_rsp_mask_w_36 : dat_out_bypass_mask_36; // @[NV_NVDLA_CSC_dl_for_check.scala 1164:30:@2224.4]
  assign _GEN_203 = dat_rsp_p0_vld_w ? dat_rsp_mask_w_37 : dat_out_bypass_mask_37; // @[NV_NVDLA_CSC_dl_for_check.scala 1164:30:@2224.4]
  assign _GEN_204 = dat_rsp_p0_vld_w ? dat_rsp_mask_w_38 : dat_out_bypass_mask_38; // @[NV_NVDLA_CSC_dl_for_check.scala 1164:30:@2224.4]
  assign _GEN_205 = dat_rsp_p0_vld_w ? dat_rsp_mask_w_39 : dat_out_bypass_mask_39; // @[NV_NVDLA_CSC_dl_for_check.scala 1164:30:@2224.4]
  assign _GEN_206 = dat_rsp_p0_vld_w ? dat_rsp_mask_w_40 : dat_out_bypass_mask_40; // @[NV_NVDLA_CSC_dl_for_check.scala 1164:30:@2224.4]
  assign _GEN_207 = dat_rsp_p0_vld_w ? dat_rsp_mask_w_41 : dat_out_bypass_mask_41; // @[NV_NVDLA_CSC_dl_for_check.scala 1164:30:@2224.4]
  assign _GEN_208 = dat_rsp_p0_vld_w ? dat_rsp_mask_w_42 : dat_out_bypass_mask_42; // @[NV_NVDLA_CSC_dl_for_check.scala 1164:30:@2224.4]
  assign _GEN_209 = dat_rsp_p0_vld_w ? dat_rsp_mask_w_43 : dat_out_bypass_mask_43; // @[NV_NVDLA_CSC_dl_for_check.scala 1164:30:@2224.4]
  assign _GEN_210 = dat_rsp_p0_vld_w ? dat_rsp_mask_w_44 : dat_out_bypass_mask_44; // @[NV_NVDLA_CSC_dl_for_check.scala 1164:30:@2224.4]
  assign _GEN_211 = dat_rsp_p0_vld_w ? dat_rsp_mask_w_45 : dat_out_bypass_mask_45; // @[NV_NVDLA_CSC_dl_for_check.scala 1164:30:@2224.4]
  assign _GEN_212 = dat_rsp_p0_vld_w ? dat_rsp_mask_w_46 : dat_out_bypass_mask_46; // @[NV_NVDLA_CSC_dl_for_check.scala 1164:30:@2224.4]
  assign _GEN_213 = dat_rsp_p0_vld_w ? dat_rsp_mask_w_47 : dat_out_bypass_mask_47; // @[NV_NVDLA_CSC_dl_for_check.scala 1164:30:@2224.4]
  assign _GEN_214 = dat_rsp_p0_vld_w ? dat_rsp_mask_w_48 : dat_out_bypass_mask_48; // @[NV_NVDLA_CSC_dl_for_check.scala 1164:30:@2224.4]
  assign _GEN_215 = dat_rsp_p0_vld_w ? dat_rsp_mask_w_49 : dat_out_bypass_mask_49; // @[NV_NVDLA_CSC_dl_for_check.scala 1164:30:@2224.4]
  assign _GEN_216 = dat_rsp_p0_vld_w ? dat_rsp_mask_w_50 : dat_out_bypass_mask_50; // @[NV_NVDLA_CSC_dl_for_check.scala 1164:30:@2224.4]
  assign _GEN_217 = dat_rsp_p0_vld_w ? dat_rsp_mask_w_51 : dat_out_bypass_mask_51; // @[NV_NVDLA_CSC_dl_for_check.scala 1164:30:@2224.4]
  assign _GEN_218 = dat_rsp_p0_vld_w ? dat_rsp_mask_w_52 : dat_out_bypass_mask_52; // @[NV_NVDLA_CSC_dl_for_check.scala 1164:30:@2224.4]
  assign _GEN_219 = dat_rsp_p0_vld_w ? dat_rsp_mask_w_53 : dat_out_bypass_mask_53; // @[NV_NVDLA_CSC_dl_for_check.scala 1164:30:@2224.4]
  assign _GEN_220 = dat_rsp_p0_vld_w ? dat_rsp_mask_w_54 : dat_out_bypass_mask_54; // @[NV_NVDLA_CSC_dl_for_check.scala 1164:30:@2224.4]
  assign _GEN_221 = dat_rsp_p0_vld_w ? dat_rsp_mask_w_55 : dat_out_bypass_mask_55; // @[NV_NVDLA_CSC_dl_for_check.scala 1164:30:@2224.4]
  assign _GEN_222 = dat_rsp_p0_vld_w ? dat_rsp_mask_w_56 : dat_out_bypass_mask_56; // @[NV_NVDLA_CSC_dl_for_check.scala 1164:30:@2224.4]
  assign _GEN_223 = dat_rsp_p0_vld_w ? dat_rsp_mask_w_57 : dat_out_bypass_mask_57; // @[NV_NVDLA_CSC_dl_for_check.scala 1164:30:@2224.4]
  assign _GEN_224 = dat_rsp_p0_vld_w ? dat_rsp_mask_w_58 : dat_out_bypass_mask_58; // @[NV_NVDLA_CSC_dl_for_check.scala 1164:30:@2224.4]
  assign _GEN_225 = dat_rsp_p0_vld_w ? dat_rsp_mask_w_59 : dat_out_bypass_mask_59; // @[NV_NVDLA_CSC_dl_for_check.scala 1164:30:@2224.4]
  assign _GEN_226 = dat_rsp_p0_vld_w ? dat_rsp_mask_w_60 : dat_out_bypass_mask_60; // @[NV_NVDLA_CSC_dl_for_check.scala 1164:30:@2224.4]
  assign _GEN_227 = dat_rsp_p0_vld_w ? dat_rsp_mask_w_61 : dat_out_bypass_mask_61; // @[NV_NVDLA_CSC_dl_for_check.scala 1164:30:@2224.4]
  assign _GEN_228 = dat_rsp_p0_vld_w ? dat_rsp_mask_w_62 : dat_out_bypass_mask_62; // @[NV_NVDLA_CSC_dl_for_check.scala 1164:30:@2224.4]
  assign _GEN_229 = dat_rsp_p0_vld_w ? dat_rsp_mask_w_63 : dat_out_bypass_mask_63; // @[NV_NVDLA_CSC_dl_for_check.scala 1164:30:@2224.4]
  assign _T_3039 = dat_rsp_p0_vld_w & dat_rsp_mask_w_0; // @[NV_NVDLA_CSC_dl_for_check.scala 1168:34:@2290.4]
  assign _T_3040 = dat_rsp_p0_vld_w & dat_rsp_mask_w_1; // @[NV_NVDLA_CSC_dl_for_check.scala 1168:34:@2294.4]
  assign _T_3041 = dat_rsp_p0_vld_w & dat_rsp_mask_w_2; // @[NV_NVDLA_CSC_dl_for_check.scala 1168:34:@2298.4]
  assign _T_3042 = dat_rsp_p0_vld_w & dat_rsp_mask_w_3; // @[NV_NVDLA_CSC_dl_for_check.scala 1168:34:@2302.4]
  assign _T_3043 = dat_rsp_p0_vld_w & dat_rsp_mask_w_4; // @[NV_NVDLA_CSC_dl_for_check.scala 1168:34:@2306.4]
  assign _T_3044 = dat_rsp_p0_vld_w & dat_rsp_mask_w_5; // @[NV_NVDLA_CSC_dl_for_check.scala 1168:34:@2310.4]
  assign _T_3045 = dat_rsp_p0_vld_w & dat_rsp_mask_w_6; // @[NV_NVDLA_CSC_dl_for_check.scala 1168:34:@2314.4]
  assign _T_3046 = dat_rsp_p0_vld_w & dat_rsp_mask_w_7; // @[NV_NVDLA_CSC_dl_for_check.scala 1168:34:@2318.4]
  assign _T_3047 = dat_rsp_p0_vld_w & dat_rsp_mask_w_8; // @[NV_NVDLA_CSC_dl_for_check.scala 1168:34:@2322.4]
  assign _T_3048 = dat_rsp_p0_vld_w & dat_rsp_mask_w_9; // @[NV_NVDLA_CSC_dl_for_check.scala 1168:34:@2326.4]
  assign _T_3049 = dat_rsp_p0_vld_w & dat_rsp_mask_w_10; // @[NV_NVDLA_CSC_dl_for_check.scala 1168:34:@2330.4]
  assign _T_3050 = dat_rsp_p0_vld_w & dat_rsp_mask_w_11; // @[NV_NVDLA_CSC_dl_for_check.scala 1168:34:@2334.4]
  assign _T_3051 = dat_rsp_p0_vld_w & dat_rsp_mask_w_12; // @[NV_NVDLA_CSC_dl_for_check.scala 1168:34:@2338.4]
  assign _T_3052 = dat_rsp_p0_vld_w & dat_rsp_mask_w_13; // @[NV_NVDLA_CSC_dl_for_check.scala 1168:34:@2342.4]
  assign _T_3053 = dat_rsp_p0_vld_w & dat_rsp_mask_w_14; // @[NV_NVDLA_CSC_dl_for_check.scala 1168:34:@2346.4]
  assign _T_3054 = dat_rsp_p0_vld_w & dat_rsp_mask_w_15; // @[NV_NVDLA_CSC_dl_for_check.scala 1168:34:@2350.4]
  assign _T_3055 = dat_rsp_p0_vld_w & dat_rsp_mask_w_16; // @[NV_NVDLA_CSC_dl_for_check.scala 1168:34:@2354.4]
  assign _T_3056 = dat_rsp_p0_vld_w & dat_rsp_mask_w_17; // @[NV_NVDLA_CSC_dl_for_check.scala 1168:34:@2358.4]
  assign _T_3057 = dat_rsp_p0_vld_w & dat_rsp_mask_w_18; // @[NV_NVDLA_CSC_dl_for_check.scala 1168:34:@2362.4]
  assign _T_3058 = dat_rsp_p0_vld_w & dat_rsp_mask_w_19; // @[NV_NVDLA_CSC_dl_for_check.scala 1168:34:@2366.4]
  assign _T_3059 = dat_rsp_p0_vld_w & dat_rsp_mask_w_20; // @[NV_NVDLA_CSC_dl_for_check.scala 1168:34:@2370.4]
  assign _T_3060 = dat_rsp_p0_vld_w & dat_rsp_mask_w_21; // @[NV_NVDLA_CSC_dl_for_check.scala 1168:34:@2374.4]
  assign _T_3061 = dat_rsp_p0_vld_w & dat_rsp_mask_w_22; // @[NV_NVDLA_CSC_dl_for_check.scala 1168:34:@2378.4]
  assign _T_3062 = dat_rsp_p0_vld_w & dat_rsp_mask_w_23; // @[NV_NVDLA_CSC_dl_for_check.scala 1168:34:@2382.4]
  assign _T_3063 = dat_rsp_p0_vld_w & dat_rsp_mask_w_24; // @[NV_NVDLA_CSC_dl_for_check.scala 1168:34:@2386.4]
  assign _T_3064 = dat_rsp_p0_vld_w & dat_rsp_mask_w_25; // @[NV_NVDLA_CSC_dl_for_check.scala 1168:34:@2390.4]
  assign _T_3065 = dat_rsp_p0_vld_w & dat_rsp_mask_w_26; // @[NV_NVDLA_CSC_dl_for_check.scala 1168:34:@2394.4]
  assign _T_3066 = dat_rsp_p0_vld_w & dat_rsp_mask_w_27; // @[NV_NVDLA_CSC_dl_for_check.scala 1168:34:@2398.4]
  assign _T_3067 = dat_rsp_p0_vld_w & dat_rsp_mask_w_28; // @[NV_NVDLA_CSC_dl_for_check.scala 1168:34:@2402.4]
  assign _T_3068 = dat_rsp_p0_vld_w & dat_rsp_mask_w_29; // @[NV_NVDLA_CSC_dl_for_check.scala 1168:34:@2406.4]
  assign _T_3069 = dat_rsp_p0_vld_w & dat_rsp_mask_w_30; // @[NV_NVDLA_CSC_dl_for_check.scala 1168:34:@2410.4]
  assign _T_3070 = dat_rsp_p0_vld_w & dat_rsp_mask_w_31; // @[NV_NVDLA_CSC_dl_for_check.scala 1168:34:@2414.4]
  assign _T_3071 = dat_rsp_p0_vld_w & dat_rsp_mask_w_32; // @[NV_NVDLA_CSC_dl_for_check.scala 1168:34:@2418.4]
  assign _T_3072 = dat_rsp_p0_vld_w & dat_rsp_mask_w_33; // @[NV_NVDLA_CSC_dl_for_check.scala 1168:34:@2422.4]
  assign _T_3073 = dat_rsp_p0_vld_w & dat_rsp_mask_w_34; // @[NV_NVDLA_CSC_dl_for_check.scala 1168:34:@2426.4]
  assign _T_3074 = dat_rsp_p0_vld_w & dat_rsp_mask_w_35; // @[NV_NVDLA_CSC_dl_for_check.scala 1168:34:@2430.4]
  assign _T_3075 = dat_rsp_p0_vld_w & dat_rsp_mask_w_36; // @[NV_NVDLA_CSC_dl_for_check.scala 1168:34:@2434.4]
  assign _T_3076 = dat_rsp_p0_vld_w & dat_rsp_mask_w_37; // @[NV_NVDLA_CSC_dl_for_check.scala 1168:34:@2438.4]
  assign _T_3077 = dat_rsp_p0_vld_w & dat_rsp_mask_w_38; // @[NV_NVDLA_CSC_dl_for_check.scala 1168:34:@2442.4]
  assign _T_3078 = dat_rsp_p0_vld_w & dat_rsp_mask_w_39; // @[NV_NVDLA_CSC_dl_for_check.scala 1168:34:@2446.4]
  assign _T_3079 = dat_rsp_p0_vld_w & dat_rsp_mask_w_40; // @[NV_NVDLA_CSC_dl_for_check.scala 1168:34:@2450.4]
  assign _T_3080 = dat_rsp_p0_vld_w & dat_rsp_mask_w_41; // @[NV_NVDLA_CSC_dl_for_check.scala 1168:34:@2454.4]
  assign _T_3081 = dat_rsp_p0_vld_w & dat_rsp_mask_w_42; // @[NV_NVDLA_CSC_dl_for_check.scala 1168:34:@2458.4]
  assign _T_3082 = dat_rsp_p0_vld_w & dat_rsp_mask_w_43; // @[NV_NVDLA_CSC_dl_for_check.scala 1168:34:@2462.4]
  assign _T_3083 = dat_rsp_p0_vld_w & dat_rsp_mask_w_44; // @[NV_NVDLA_CSC_dl_for_check.scala 1168:34:@2466.4]
  assign _T_3084 = dat_rsp_p0_vld_w & dat_rsp_mask_w_45; // @[NV_NVDLA_CSC_dl_for_check.scala 1168:34:@2470.4]
  assign _T_3085 = dat_rsp_p0_vld_w & dat_rsp_mask_w_46; // @[NV_NVDLA_CSC_dl_for_check.scala 1168:34:@2474.4]
  assign _T_3086 = dat_rsp_p0_vld_w & dat_rsp_mask_w_47; // @[NV_NVDLA_CSC_dl_for_check.scala 1168:34:@2478.4]
  assign _T_3087 = dat_rsp_p0_vld_w & dat_rsp_mask_w_48; // @[NV_NVDLA_CSC_dl_for_check.scala 1168:34:@2482.4]
  assign _T_3088 = dat_rsp_p0_vld_w & dat_rsp_mask_w_49; // @[NV_NVDLA_CSC_dl_for_check.scala 1168:34:@2486.4]
  assign _T_3089 = dat_rsp_p0_vld_w & dat_rsp_mask_w_50; // @[NV_NVDLA_CSC_dl_for_check.scala 1168:34:@2490.4]
  assign _T_3090 = dat_rsp_p0_vld_w & dat_rsp_mask_w_51; // @[NV_NVDLA_CSC_dl_for_check.scala 1168:34:@2494.4]
  assign _T_3091 = dat_rsp_p0_vld_w & dat_rsp_mask_w_52; // @[NV_NVDLA_CSC_dl_for_check.scala 1168:34:@2498.4]
  assign _T_3092 = dat_rsp_p0_vld_w & dat_rsp_mask_w_53; // @[NV_NVDLA_CSC_dl_for_check.scala 1168:34:@2502.4]
  assign _T_3093 = dat_rsp_p0_vld_w & dat_rsp_mask_w_54; // @[NV_NVDLA_CSC_dl_for_check.scala 1168:34:@2506.4]
  assign _T_3094 = dat_rsp_p0_vld_w & dat_rsp_mask_w_55; // @[NV_NVDLA_CSC_dl_for_check.scala 1168:34:@2510.4]
  assign _T_3095 = dat_rsp_p0_vld_w & dat_rsp_mask_w_56; // @[NV_NVDLA_CSC_dl_for_check.scala 1168:34:@2514.4]
  assign _T_3096 = dat_rsp_p0_vld_w & dat_rsp_mask_w_57; // @[NV_NVDLA_CSC_dl_for_check.scala 1168:34:@2518.4]
  assign _T_3097 = dat_rsp_p0_vld_w & dat_rsp_mask_w_58; // @[NV_NVDLA_CSC_dl_for_check.scala 1168:34:@2522.4]
  assign _T_3098 = dat_rsp_p0_vld_w & dat_rsp_mask_w_59; // @[NV_NVDLA_CSC_dl_for_check.scala 1168:34:@2526.4]
  assign _T_3099 = dat_rsp_p0_vld_w & dat_rsp_mask_w_60; // @[NV_NVDLA_CSC_dl_for_check.scala 1168:34:@2530.4]
  assign _T_3100 = dat_rsp_p0_vld_w & dat_rsp_mask_w_61; // @[NV_NVDLA_CSC_dl_for_check.scala 1168:34:@2534.4]
  assign _T_3101 = dat_rsp_p0_vld_w & dat_rsp_mask_w_62; // @[NV_NVDLA_CSC_dl_for_check.scala 1168:34:@2538.4]
  assign _T_3102 = dat_rsp_p0_vld_w & dat_rsp_mask_w_63; // @[NV_NVDLA_CSC_dl_for_check.scala 1168:34:@2542.4]
  assign _T_3904 = is_winograd_d1[20]; // @[NV_NVDLA_CSC_dl_for_check.scala 1187:38:@2745.4]
  assign dat_out_data_0 = _T_3904 ? 8'h0 : dat_out_bypass_data_0; // @[NV_NVDLA_CSC_dl_for_check.scala 1187:23:@2746.4]
  assign dat_out_data_1 = _T_3904 ? 8'h0 : dat_out_bypass_data_1; // @[NV_NVDLA_CSC_dl_for_check.scala 1187:23:@2746.4]
  assign dat_out_data_2 = _T_3904 ? 8'h0 : dat_out_bypass_data_2; // @[NV_NVDLA_CSC_dl_for_check.scala 1187:23:@2746.4]
  assign dat_out_data_3 = _T_3904 ? 8'h0 : dat_out_bypass_data_3; // @[NV_NVDLA_CSC_dl_for_check.scala 1187:23:@2746.4]
  assign dat_out_data_4 = _T_3904 ? 8'h0 : dat_out_bypass_data_4; // @[NV_NVDLA_CSC_dl_for_check.scala 1187:23:@2746.4]
  assign dat_out_data_5 = _T_3904 ? 8'h0 : dat_out_bypass_data_5; // @[NV_NVDLA_CSC_dl_for_check.scala 1187:23:@2746.4]
  assign dat_out_data_6 = _T_3904 ? 8'h0 : dat_out_bypass_data_6; // @[NV_NVDLA_CSC_dl_for_check.scala 1187:23:@2746.4]
  assign dat_out_data_7 = _T_3904 ? 8'h0 : dat_out_bypass_data_7; // @[NV_NVDLA_CSC_dl_for_check.scala 1187:23:@2746.4]
  assign dat_out_data_8 = _T_3904 ? 8'h0 : dat_out_bypass_data_8; // @[NV_NVDLA_CSC_dl_for_check.scala 1187:23:@2746.4]
  assign dat_out_data_9 = _T_3904 ? 8'h0 : dat_out_bypass_data_9; // @[NV_NVDLA_CSC_dl_for_check.scala 1187:23:@2746.4]
  assign dat_out_data_10 = _T_3904 ? 8'h0 : dat_out_bypass_data_10; // @[NV_NVDLA_CSC_dl_for_check.scala 1187:23:@2746.4]
  assign dat_out_data_11 = _T_3904 ? 8'h0 : dat_out_bypass_data_11; // @[NV_NVDLA_CSC_dl_for_check.scala 1187:23:@2746.4]
  assign dat_out_data_12 = _T_3904 ? 8'h0 : dat_out_bypass_data_12; // @[NV_NVDLA_CSC_dl_for_check.scala 1187:23:@2746.4]
  assign dat_out_data_13 = _T_3904 ? 8'h0 : dat_out_bypass_data_13; // @[NV_NVDLA_CSC_dl_for_check.scala 1187:23:@2746.4]
  assign dat_out_data_14 = _T_3904 ? 8'h0 : dat_out_bypass_data_14; // @[NV_NVDLA_CSC_dl_for_check.scala 1187:23:@2746.4]
  assign dat_out_data_15 = _T_3904 ? 8'h0 : dat_out_bypass_data_15; // @[NV_NVDLA_CSC_dl_for_check.scala 1187:23:@2746.4]
  assign dat_out_data_16 = _T_3904 ? 8'h0 : dat_out_bypass_data_16; // @[NV_NVDLA_CSC_dl_for_check.scala 1187:23:@2746.4]
  assign dat_out_data_17 = _T_3904 ? 8'h0 : dat_out_bypass_data_17; // @[NV_NVDLA_CSC_dl_for_check.scala 1187:23:@2746.4]
  assign dat_out_data_18 = _T_3904 ? 8'h0 : dat_out_bypass_data_18; // @[NV_NVDLA_CSC_dl_for_check.scala 1187:23:@2746.4]
  assign dat_out_data_19 = _T_3904 ? 8'h0 : dat_out_bypass_data_19; // @[NV_NVDLA_CSC_dl_for_check.scala 1187:23:@2746.4]
  assign dat_out_data_20 = _T_3904 ? 8'h0 : dat_out_bypass_data_20; // @[NV_NVDLA_CSC_dl_for_check.scala 1187:23:@2746.4]
  assign dat_out_data_21 = _T_3904 ? 8'h0 : dat_out_bypass_data_21; // @[NV_NVDLA_CSC_dl_for_check.scala 1187:23:@2746.4]
  assign dat_out_data_22 = _T_3904 ? 8'h0 : dat_out_bypass_data_22; // @[NV_NVDLA_CSC_dl_for_check.scala 1187:23:@2746.4]
  assign dat_out_data_23 = _T_3904 ? 8'h0 : dat_out_bypass_data_23; // @[NV_NVDLA_CSC_dl_for_check.scala 1187:23:@2746.4]
  assign dat_out_data_24 = _T_3904 ? 8'h0 : dat_out_bypass_data_24; // @[NV_NVDLA_CSC_dl_for_check.scala 1187:23:@2746.4]
  assign dat_out_data_25 = _T_3904 ? 8'h0 : dat_out_bypass_data_25; // @[NV_NVDLA_CSC_dl_for_check.scala 1187:23:@2746.4]
  assign dat_out_data_26 = _T_3904 ? 8'h0 : dat_out_bypass_data_26; // @[NV_NVDLA_CSC_dl_for_check.scala 1187:23:@2746.4]
  assign dat_out_data_27 = _T_3904 ? 8'h0 : dat_out_bypass_data_27; // @[NV_NVDLA_CSC_dl_for_check.scala 1187:23:@2746.4]
  assign dat_out_data_28 = _T_3904 ? 8'h0 : dat_out_bypass_data_28; // @[NV_NVDLA_CSC_dl_for_check.scala 1187:23:@2746.4]
  assign dat_out_data_29 = _T_3904 ? 8'h0 : dat_out_bypass_data_29; // @[NV_NVDLA_CSC_dl_for_check.scala 1187:23:@2746.4]
  assign dat_out_data_30 = _T_3904 ? 8'h0 : dat_out_bypass_data_30; // @[NV_NVDLA_CSC_dl_for_check.scala 1187:23:@2746.4]
  assign dat_out_data_31 = _T_3904 ? 8'h0 : dat_out_bypass_data_31; // @[NV_NVDLA_CSC_dl_for_check.scala 1187:23:@2746.4]
  assign dat_out_data_32 = _T_3904 ? 8'h0 : dat_out_bypass_data_32; // @[NV_NVDLA_CSC_dl_for_check.scala 1187:23:@2746.4]
  assign dat_out_data_33 = _T_3904 ? 8'h0 : dat_out_bypass_data_33; // @[NV_NVDLA_CSC_dl_for_check.scala 1187:23:@2746.4]
  assign dat_out_data_34 = _T_3904 ? 8'h0 : dat_out_bypass_data_34; // @[NV_NVDLA_CSC_dl_for_check.scala 1187:23:@2746.4]
  assign dat_out_data_35 = _T_3904 ? 8'h0 : dat_out_bypass_data_35; // @[NV_NVDLA_CSC_dl_for_check.scala 1187:23:@2746.4]
  assign dat_out_data_36 = _T_3904 ? 8'h0 : dat_out_bypass_data_36; // @[NV_NVDLA_CSC_dl_for_check.scala 1187:23:@2746.4]
  assign dat_out_data_37 = _T_3904 ? 8'h0 : dat_out_bypass_data_37; // @[NV_NVDLA_CSC_dl_for_check.scala 1187:23:@2746.4]
  assign dat_out_data_38 = _T_3904 ? 8'h0 : dat_out_bypass_data_38; // @[NV_NVDLA_CSC_dl_for_check.scala 1187:23:@2746.4]
  assign dat_out_data_39 = _T_3904 ? 8'h0 : dat_out_bypass_data_39; // @[NV_NVDLA_CSC_dl_for_check.scala 1187:23:@2746.4]
  assign dat_out_data_40 = _T_3904 ? 8'h0 : dat_out_bypass_data_40; // @[NV_NVDLA_CSC_dl_for_check.scala 1187:23:@2746.4]
  assign dat_out_data_41 = _T_3904 ? 8'h0 : dat_out_bypass_data_41; // @[NV_NVDLA_CSC_dl_for_check.scala 1187:23:@2746.4]
  assign dat_out_data_42 = _T_3904 ? 8'h0 : dat_out_bypass_data_42; // @[NV_NVDLA_CSC_dl_for_check.scala 1187:23:@2746.4]
  assign dat_out_data_43 = _T_3904 ? 8'h0 : dat_out_bypass_data_43; // @[NV_NVDLA_CSC_dl_for_check.scala 1187:23:@2746.4]
  assign dat_out_data_44 = _T_3904 ? 8'h0 : dat_out_bypass_data_44; // @[NV_NVDLA_CSC_dl_for_check.scala 1187:23:@2746.4]
  assign dat_out_data_45 = _T_3904 ? 8'h0 : dat_out_bypass_data_45; // @[NV_NVDLA_CSC_dl_for_check.scala 1187:23:@2746.4]
  assign dat_out_data_46 = _T_3904 ? 8'h0 : dat_out_bypass_data_46; // @[NV_NVDLA_CSC_dl_for_check.scala 1187:23:@2746.4]
  assign dat_out_data_47 = _T_3904 ? 8'h0 : dat_out_bypass_data_47; // @[NV_NVDLA_CSC_dl_for_check.scala 1187:23:@2746.4]
  assign dat_out_data_48 = _T_3904 ? 8'h0 : dat_out_bypass_data_48; // @[NV_NVDLA_CSC_dl_for_check.scala 1187:23:@2746.4]
  assign dat_out_data_49 = _T_3904 ? 8'h0 : dat_out_bypass_data_49; // @[NV_NVDLA_CSC_dl_for_check.scala 1187:23:@2746.4]
  assign dat_out_data_50 = _T_3904 ? 8'h0 : dat_out_bypass_data_50; // @[NV_NVDLA_CSC_dl_for_check.scala 1187:23:@2746.4]
  assign dat_out_data_51 = _T_3904 ? 8'h0 : dat_out_bypass_data_51; // @[NV_NVDLA_CSC_dl_for_check.scala 1187:23:@2746.4]
  assign dat_out_data_52 = _T_3904 ? 8'h0 : dat_out_bypass_data_52; // @[NV_NVDLA_CSC_dl_for_check.scala 1187:23:@2746.4]
  assign dat_out_data_53 = _T_3904 ? 8'h0 : dat_out_bypass_data_53; // @[NV_NVDLA_CSC_dl_for_check.scala 1187:23:@2746.4]
  assign dat_out_data_54 = _T_3904 ? 8'h0 : dat_out_bypass_data_54; // @[NV_NVDLA_CSC_dl_for_check.scala 1187:23:@2746.4]
  assign dat_out_data_55 = _T_3904 ? 8'h0 : dat_out_bypass_data_55; // @[NV_NVDLA_CSC_dl_for_check.scala 1187:23:@2746.4]
  assign dat_out_data_56 = _T_3904 ? 8'h0 : dat_out_bypass_data_56; // @[NV_NVDLA_CSC_dl_for_check.scala 1187:23:@2746.4]
  assign dat_out_data_57 = _T_3904 ? 8'h0 : dat_out_bypass_data_57; // @[NV_NVDLA_CSC_dl_for_check.scala 1187:23:@2746.4]
  assign dat_out_data_58 = _T_3904 ? 8'h0 : dat_out_bypass_data_58; // @[NV_NVDLA_CSC_dl_for_check.scala 1187:23:@2746.4]
  assign dat_out_data_59 = _T_3904 ? 8'h0 : dat_out_bypass_data_59; // @[NV_NVDLA_CSC_dl_for_check.scala 1187:23:@2746.4]
  assign dat_out_data_60 = _T_3904 ? 8'h0 : dat_out_bypass_data_60; // @[NV_NVDLA_CSC_dl_for_check.scala 1187:23:@2746.4]
  assign dat_out_data_61 = _T_3904 ? 8'h0 : dat_out_bypass_data_61; // @[NV_NVDLA_CSC_dl_for_check.scala 1187:23:@2746.4]
  assign dat_out_data_62 = _T_3904 ? 8'h0 : dat_out_bypass_data_62; // @[NV_NVDLA_CSC_dl_for_check.scala 1187:23:@2746.4]
  assign dat_out_data_63 = _T_3904 ? 8'h0 : dat_out_bypass_data_63; // @[NV_NVDLA_CSC_dl_for_check.scala 1187:23:@2746.4]
  assign _T_4036 = ~ dat_out_pvld; // @[NV_NVDLA_CSC_dl_for_check.scala 1188:24:@2747.4]
  assign _T_4171 = is_winograd_d1[21]; // @[NV_NVDLA_CSC_dl_for_check.scala 1189:38:@2813.4]
  assign _T_4172_0 = _T_4171 ? 1'h0 : dat_out_bypass_mask_0; // @[NV_NVDLA_CSC_dl_for_check.scala 1189:23:@2814.4]
  assign _T_4172_1 = _T_4171 ? 1'h0 : dat_out_bypass_mask_1; // @[NV_NVDLA_CSC_dl_for_check.scala 1189:23:@2814.4]
  assign _T_4172_2 = _T_4171 ? 1'h0 : dat_out_bypass_mask_2; // @[NV_NVDLA_CSC_dl_for_check.scala 1189:23:@2814.4]
  assign _T_4172_3 = _T_4171 ? 1'h0 : dat_out_bypass_mask_3; // @[NV_NVDLA_CSC_dl_for_check.scala 1189:23:@2814.4]
  assign _T_4172_4 = _T_4171 ? 1'h0 : dat_out_bypass_mask_4; // @[NV_NVDLA_CSC_dl_for_check.scala 1189:23:@2814.4]
  assign _T_4172_5 = _T_4171 ? 1'h0 : dat_out_bypass_mask_5; // @[NV_NVDLA_CSC_dl_for_check.scala 1189:23:@2814.4]
  assign _T_4172_6 = _T_4171 ? 1'h0 : dat_out_bypass_mask_6; // @[NV_NVDLA_CSC_dl_for_check.scala 1189:23:@2814.4]
  assign _T_4172_7 = _T_4171 ? 1'h0 : dat_out_bypass_mask_7; // @[NV_NVDLA_CSC_dl_for_check.scala 1189:23:@2814.4]
  assign _T_4172_8 = _T_4171 ? 1'h0 : dat_out_bypass_mask_8; // @[NV_NVDLA_CSC_dl_for_check.scala 1189:23:@2814.4]
  assign _T_4172_9 = _T_4171 ? 1'h0 : dat_out_bypass_mask_9; // @[NV_NVDLA_CSC_dl_for_check.scala 1189:23:@2814.4]
  assign _T_4172_10 = _T_4171 ? 1'h0 : dat_out_bypass_mask_10; // @[NV_NVDLA_CSC_dl_for_check.scala 1189:23:@2814.4]
  assign _T_4172_11 = _T_4171 ? 1'h0 : dat_out_bypass_mask_11; // @[NV_NVDLA_CSC_dl_for_check.scala 1189:23:@2814.4]
  assign _T_4172_12 = _T_4171 ? 1'h0 : dat_out_bypass_mask_12; // @[NV_NVDLA_CSC_dl_for_check.scala 1189:23:@2814.4]
  assign _T_4172_13 = _T_4171 ? 1'h0 : dat_out_bypass_mask_13; // @[NV_NVDLA_CSC_dl_for_check.scala 1189:23:@2814.4]
  assign _T_4172_14 = _T_4171 ? 1'h0 : dat_out_bypass_mask_14; // @[NV_NVDLA_CSC_dl_for_check.scala 1189:23:@2814.4]
  assign _T_4172_15 = _T_4171 ? 1'h0 : dat_out_bypass_mask_15; // @[NV_NVDLA_CSC_dl_for_check.scala 1189:23:@2814.4]
  assign _T_4172_16 = _T_4171 ? 1'h0 : dat_out_bypass_mask_16; // @[NV_NVDLA_CSC_dl_for_check.scala 1189:23:@2814.4]
  assign _T_4172_17 = _T_4171 ? 1'h0 : dat_out_bypass_mask_17; // @[NV_NVDLA_CSC_dl_for_check.scala 1189:23:@2814.4]
  assign _T_4172_18 = _T_4171 ? 1'h0 : dat_out_bypass_mask_18; // @[NV_NVDLA_CSC_dl_for_check.scala 1189:23:@2814.4]
  assign _T_4172_19 = _T_4171 ? 1'h0 : dat_out_bypass_mask_19; // @[NV_NVDLA_CSC_dl_for_check.scala 1189:23:@2814.4]
  assign _T_4172_20 = _T_4171 ? 1'h0 : dat_out_bypass_mask_20; // @[NV_NVDLA_CSC_dl_for_check.scala 1189:23:@2814.4]
  assign _T_4172_21 = _T_4171 ? 1'h0 : dat_out_bypass_mask_21; // @[NV_NVDLA_CSC_dl_for_check.scala 1189:23:@2814.4]
  assign _T_4172_22 = _T_4171 ? 1'h0 : dat_out_bypass_mask_22; // @[NV_NVDLA_CSC_dl_for_check.scala 1189:23:@2814.4]
  assign _T_4172_23 = _T_4171 ? 1'h0 : dat_out_bypass_mask_23; // @[NV_NVDLA_CSC_dl_for_check.scala 1189:23:@2814.4]
  assign _T_4172_24 = _T_4171 ? 1'h0 : dat_out_bypass_mask_24; // @[NV_NVDLA_CSC_dl_for_check.scala 1189:23:@2814.4]
  assign _T_4172_25 = _T_4171 ? 1'h0 : dat_out_bypass_mask_25; // @[NV_NVDLA_CSC_dl_for_check.scala 1189:23:@2814.4]
  assign _T_4172_26 = _T_4171 ? 1'h0 : dat_out_bypass_mask_26; // @[NV_NVDLA_CSC_dl_for_check.scala 1189:23:@2814.4]
  assign _T_4172_27 = _T_4171 ? 1'h0 : dat_out_bypass_mask_27; // @[NV_NVDLA_CSC_dl_for_check.scala 1189:23:@2814.4]
  assign _T_4172_28 = _T_4171 ? 1'h0 : dat_out_bypass_mask_28; // @[NV_NVDLA_CSC_dl_for_check.scala 1189:23:@2814.4]
  assign _T_4172_29 = _T_4171 ? 1'h0 : dat_out_bypass_mask_29; // @[NV_NVDLA_CSC_dl_for_check.scala 1189:23:@2814.4]
  assign _T_4172_30 = _T_4171 ? 1'h0 : dat_out_bypass_mask_30; // @[NV_NVDLA_CSC_dl_for_check.scala 1189:23:@2814.4]
  assign _T_4172_31 = _T_4171 ? 1'h0 : dat_out_bypass_mask_31; // @[NV_NVDLA_CSC_dl_for_check.scala 1189:23:@2814.4]
  assign _T_4172_32 = _T_4171 ? 1'h0 : dat_out_bypass_mask_32; // @[NV_NVDLA_CSC_dl_for_check.scala 1189:23:@2814.4]
  assign _T_4172_33 = _T_4171 ? 1'h0 : dat_out_bypass_mask_33; // @[NV_NVDLA_CSC_dl_for_check.scala 1189:23:@2814.4]
  assign _T_4172_34 = _T_4171 ? 1'h0 : dat_out_bypass_mask_34; // @[NV_NVDLA_CSC_dl_for_check.scala 1189:23:@2814.4]
  assign _T_4172_35 = _T_4171 ? 1'h0 : dat_out_bypass_mask_35; // @[NV_NVDLA_CSC_dl_for_check.scala 1189:23:@2814.4]
  assign _T_4172_36 = _T_4171 ? 1'h0 : dat_out_bypass_mask_36; // @[NV_NVDLA_CSC_dl_for_check.scala 1189:23:@2814.4]
  assign _T_4172_37 = _T_4171 ? 1'h0 : dat_out_bypass_mask_37; // @[NV_NVDLA_CSC_dl_for_check.scala 1189:23:@2814.4]
  assign _T_4172_38 = _T_4171 ? 1'h0 : dat_out_bypass_mask_38; // @[NV_NVDLA_CSC_dl_for_check.scala 1189:23:@2814.4]
  assign _T_4172_39 = _T_4171 ? 1'h0 : dat_out_bypass_mask_39; // @[NV_NVDLA_CSC_dl_for_check.scala 1189:23:@2814.4]
  assign _T_4172_40 = _T_4171 ? 1'h0 : dat_out_bypass_mask_40; // @[NV_NVDLA_CSC_dl_for_check.scala 1189:23:@2814.4]
  assign _T_4172_41 = _T_4171 ? 1'h0 : dat_out_bypass_mask_41; // @[NV_NVDLA_CSC_dl_for_check.scala 1189:23:@2814.4]
  assign _T_4172_42 = _T_4171 ? 1'h0 : dat_out_bypass_mask_42; // @[NV_NVDLA_CSC_dl_for_check.scala 1189:23:@2814.4]
  assign _T_4172_43 = _T_4171 ? 1'h0 : dat_out_bypass_mask_43; // @[NV_NVDLA_CSC_dl_for_check.scala 1189:23:@2814.4]
  assign _T_4172_44 = _T_4171 ? 1'h0 : dat_out_bypass_mask_44; // @[NV_NVDLA_CSC_dl_for_check.scala 1189:23:@2814.4]
  assign _T_4172_45 = _T_4171 ? 1'h0 : dat_out_bypass_mask_45; // @[NV_NVDLA_CSC_dl_for_check.scala 1189:23:@2814.4]
  assign _T_4172_46 = _T_4171 ? 1'h0 : dat_out_bypass_mask_46; // @[NV_NVDLA_CSC_dl_for_check.scala 1189:23:@2814.4]
  assign _T_4172_47 = _T_4171 ? 1'h0 : dat_out_bypass_mask_47; // @[NV_NVDLA_CSC_dl_for_check.scala 1189:23:@2814.4]
  assign _T_4172_48 = _T_4171 ? 1'h0 : dat_out_bypass_mask_48; // @[NV_NVDLA_CSC_dl_for_check.scala 1189:23:@2814.4]
  assign _T_4172_49 = _T_4171 ? 1'h0 : dat_out_bypass_mask_49; // @[NV_NVDLA_CSC_dl_for_check.scala 1189:23:@2814.4]
  assign _T_4172_50 = _T_4171 ? 1'h0 : dat_out_bypass_mask_50; // @[NV_NVDLA_CSC_dl_for_check.scala 1189:23:@2814.4]
  assign _T_4172_51 = _T_4171 ? 1'h0 : dat_out_bypass_mask_51; // @[NV_NVDLA_CSC_dl_for_check.scala 1189:23:@2814.4]
  assign _T_4172_52 = _T_4171 ? 1'h0 : dat_out_bypass_mask_52; // @[NV_NVDLA_CSC_dl_for_check.scala 1189:23:@2814.4]
  assign _T_4172_53 = _T_4171 ? 1'h0 : dat_out_bypass_mask_53; // @[NV_NVDLA_CSC_dl_for_check.scala 1189:23:@2814.4]
  assign _T_4172_54 = _T_4171 ? 1'h0 : dat_out_bypass_mask_54; // @[NV_NVDLA_CSC_dl_for_check.scala 1189:23:@2814.4]
  assign _T_4172_55 = _T_4171 ? 1'h0 : dat_out_bypass_mask_55; // @[NV_NVDLA_CSC_dl_for_check.scala 1189:23:@2814.4]
  assign _T_4172_56 = _T_4171 ? 1'h0 : dat_out_bypass_mask_56; // @[NV_NVDLA_CSC_dl_for_check.scala 1189:23:@2814.4]
  assign _T_4172_57 = _T_4171 ? 1'h0 : dat_out_bypass_mask_57; // @[NV_NVDLA_CSC_dl_for_check.scala 1189:23:@2814.4]
  assign _T_4172_58 = _T_4171 ? 1'h0 : dat_out_bypass_mask_58; // @[NV_NVDLA_CSC_dl_for_check.scala 1189:23:@2814.4]
  assign _T_4172_59 = _T_4171 ? 1'h0 : dat_out_bypass_mask_59; // @[NV_NVDLA_CSC_dl_for_check.scala 1189:23:@2814.4]
  assign _T_4172_60 = _T_4171 ? 1'h0 : dat_out_bypass_mask_60; // @[NV_NVDLA_CSC_dl_for_check.scala 1189:23:@2814.4]
  assign _T_4172_61 = _T_4171 ? 1'h0 : dat_out_bypass_mask_61; // @[NV_NVDLA_CSC_dl_for_check.scala 1189:23:@2814.4]
  assign _T_4172_62 = _T_4171 ? 1'h0 : dat_out_bypass_mask_62; // @[NV_NVDLA_CSC_dl_for_check.scala 1189:23:@2814.4]
  assign _T_4172_63 = _T_4171 ? 1'h0 : dat_out_bypass_mask_63; // @[NV_NVDLA_CSC_dl_for_check.scala 1189:23:@2814.4]
  assign dat_out_mask_0 = _T_4036 ? 1'h0 : _T_4172_0; // @[NV_NVDLA_CSC_dl_for_check.scala 1188:23:@2815.4]
  assign dat_out_mask_1 = _T_4036 ? 1'h0 : _T_4172_1; // @[NV_NVDLA_CSC_dl_for_check.scala 1188:23:@2815.4]
  assign dat_out_mask_2 = _T_4036 ? 1'h0 : _T_4172_2; // @[NV_NVDLA_CSC_dl_for_check.scala 1188:23:@2815.4]
  assign dat_out_mask_3 = _T_4036 ? 1'h0 : _T_4172_3; // @[NV_NVDLA_CSC_dl_for_check.scala 1188:23:@2815.4]
  assign dat_out_mask_4 = _T_4036 ? 1'h0 : _T_4172_4; // @[NV_NVDLA_CSC_dl_for_check.scala 1188:23:@2815.4]
  assign dat_out_mask_5 = _T_4036 ? 1'h0 : _T_4172_5; // @[NV_NVDLA_CSC_dl_for_check.scala 1188:23:@2815.4]
  assign dat_out_mask_6 = _T_4036 ? 1'h0 : _T_4172_6; // @[NV_NVDLA_CSC_dl_for_check.scala 1188:23:@2815.4]
  assign dat_out_mask_7 = _T_4036 ? 1'h0 : _T_4172_7; // @[NV_NVDLA_CSC_dl_for_check.scala 1188:23:@2815.4]
  assign dat_out_mask_8 = _T_4036 ? 1'h0 : _T_4172_8; // @[NV_NVDLA_CSC_dl_for_check.scala 1188:23:@2815.4]
  assign dat_out_mask_9 = _T_4036 ? 1'h0 : _T_4172_9; // @[NV_NVDLA_CSC_dl_for_check.scala 1188:23:@2815.4]
  assign dat_out_mask_10 = _T_4036 ? 1'h0 : _T_4172_10; // @[NV_NVDLA_CSC_dl_for_check.scala 1188:23:@2815.4]
  assign dat_out_mask_11 = _T_4036 ? 1'h0 : _T_4172_11; // @[NV_NVDLA_CSC_dl_for_check.scala 1188:23:@2815.4]
  assign dat_out_mask_12 = _T_4036 ? 1'h0 : _T_4172_12; // @[NV_NVDLA_CSC_dl_for_check.scala 1188:23:@2815.4]
  assign dat_out_mask_13 = _T_4036 ? 1'h0 : _T_4172_13; // @[NV_NVDLA_CSC_dl_for_check.scala 1188:23:@2815.4]
  assign dat_out_mask_14 = _T_4036 ? 1'h0 : _T_4172_14; // @[NV_NVDLA_CSC_dl_for_check.scala 1188:23:@2815.4]
  assign dat_out_mask_15 = _T_4036 ? 1'h0 : _T_4172_15; // @[NV_NVDLA_CSC_dl_for_check.scala 1188:23:@2815.4]
  assign dat_out_mask_16 = _T_4036 ? 1'h0 : _T_4172_16; // @[NV_NVDLA_CSC_dl_for_check.scala 1188:23:@2815.4]
  assign dat_out_mask_17 = _T_4036 ? 1'h0 : _T_4172_17; // @[NV_NVDLA_CSC_dl_for_check.scala 1188:23:@2815.4]
  assign dat_out_mask_18 = _T_4036 ? 1'h0 : _T_4172_18; // @[NV_NVDLA_CSC_dl_for_check.scala 1188:23:@2815.4]
  assign dat_out_mask_19 = _T_4036 ? 1'h0 : _T_4172_19; // @[NV_NVDLA_CSC_dl_for_check.scala 1188:23:@2815.4]
  assign dat_out_mask_20 = _T_4036 ? 1'h0 : _T_4172_20; // @[NV_NVDLA_CSC_dl_for_check.scala 1188:23:@2815.4]
  assign dat_out_mask_21 = _T_4036 ? 1'h0 : _T_4172_21; // @[NV_NVDLA_CSC_dl_for_check.scala 1188:23:@2815.4]
  assign dat_out_mask_22 = _T_4036 ? 1'h0 : _T_4172_22; // @[NV_NVDLA_CSC_dl_for_check.scala 1188:23:@2815.4]
  assign dat_out_mask_23 = _T_4036 ? 1'h0 : _T_4172_23; // @[NV_NVDLA_CSC_dl_for_check.scala 1188:23:@2815.4]
  assign dat_out_mask_24 = _T_4036 ? 1'h0 : _T_4172_24; // @[NV_NVDLA_CSC_dl_for_check.scala 1188:23:@2815.4]
  assign dat_out_mask_25 = _T_4036 ? 1'h0 : _T_4172_25; // @[NV_NVDLA_CSC_dl_for_check.scala 1188:23:@2815.4]
  assign dat_out_mask_26 = _T_4036 ? 1'h0 : _T_4172_26; // @[NV_NVDLA_CSC_dl_for_check.scala 1188:23:@2815.4]
  assign dat_out_mask_27 = _T_4036 ? 1'h0 : _T_4172_27; // @[NV_NVDLA_CSC_dl_for_check.scala 1188:23:@2815.4]
  assign dat_out_mask_28 = _T_4036 ? 1'h0 : _T_4172_28; // @[NV_NVDLA_CSC_dl_for_check.scala 1188:23:@2815.4]
  assign dat_out_mask_29 = _T_4036 ? 1'h0 : _T_4172_29; // @[NV_NVDLA_CSC_dl_for_check.scala 1188:23:@2815.4]
  assign dat_out_mask_30 = _T_4036 ? 1'h0 : _T_4172_30; // @[NV_NVDLA_CSC_dl_for_check.scala 1188:23:@2815.4]
  assign dat_out_mask_31 = _T_4036 ? 1'h0 : _T_4172_31; // @[NV_NVDLA_CSC_dl_for_check.scala 1188:23:@2815.4]
  assign dat_out_mask_32 = _T_4036 ? 1'h0 : _T_4172_32; // @[NV_NVDLA_CSC_dl_for_check.scala 1188:23:@2815.4]
  assign dat_out_mask_33 = _T_4036 ? 1'h0 : _T_4172_33; // @[NV_NVDLA_CSC_dl_for_check.scala 1188:23:@2815.4]
  assign dat_out_mask_34 = _T_4036 ? 1'h0 : _T_4172_34; // @[NV_NVDLA_CSC_dl_for_check.scala 1188:23:@2815.4]
  assign dat_out_mask_35 = _T_4036 ? 1'h0 : _T_4172_35; // @[NV_NVDLA_CSC_dl_for_check.scala 1188:23:@2815.4]
  assign dat_out_mask_36 = _T_4036 ? 1'h0 : _T_4172_36; // @[NV_NVDLA_CSC_dl_for_check.scala 1188:23:@2815.4]
  assign dat_out_mask_37 = _T_4036 ? 1'h0 : _T_4172_37; // @[NV_NVDLA_CSC_dl_for_check.scala 1188:23:@2815.4]
  assign dat_out_mask_38 = _T_4036 ? 1'h0 : _T_4172_38; // @[NV_NVDLA_CSC_dl_for_check.scala 1188:23:@2815.4]
  assign dat_out_mask_39 = _T_4036 ? 1'h0 : _T_4172_39; // @[NV_NVDLA_CSC_dl_for_check.scala 1188:23:@2815.4]
  assign dat_out_mask_40 = _T_4036 ? 1'h0 : _T_4172_40; // @[NV_NVDLA_CSC_dl_for_check.scala 1188:23:@2815.4]
  assign dat_out_mask_41 = _T_4036 ? 1'h0 : _T_4172_41; // @[NV_NVDLA_CSC_dl_for_check.scala 1188:23:@2815.4]
  assign dat_out_mask_42 = _T_4036 ? 1'h0 : _T_4172_42; // @[NV_NVDLA_CSC_dl_for_check.scala 1188:23:@2815.4]
  assign dat_out_mask_43 = _T_4036 ? 1'h0 : _T_4172_43; // @[NV_NVDLA_CSC_dl_for_check.scala 1188:23:@2815.4]
  assign dat_out_mask_44 = _T_4036 ? 1'h0 : _T_4172_44; // @[NV_NVDLA_CSC_dl_for_check.scala 1188:23:@2815.4]
  assign dat_out_mask_45 = _T_4036 ? 1'h0 : _T_4172_45; // @[NV_NVDLA_CSC_dl_for_check.scala 1188:23:@2815.4]
  assign dat_out_mask_46 = _T_4036 ? 1'h0 : _T_4172_46; // @[NV_NVDLA_CSC_dl_for_check.scala 1188:23:@2815.4]
  assign dat_out_mask_47 = _T_4036 ? 1'h0 : _T_4172_47; // @[NV_NVDLA_CSC_dl_for_check.scala 1188:23:@2815.4]
  assign dat_out_mask_48 = _T_4036 ? 1'h0 : _T_4172_48; // @[NV_NVDLA_CSC_dl_for_check.scala 1188:23:@2815.4]
  assign dat_out_mask_49 = _T_4036 ? 1'h0 : _T_4172_49; // @[NV_NVDLA_CSC_dl_for_check.scala 1188:23:@2815.4]
  assign dat_out_mask_50 = _T_4036 ? 1'h0 : _T_4172_50; // @[NV_NVDLA_CSC_dl_for_check.scala 1188:23:@2815.4]
  assign dat_out_mask_51 = _T_4036 ? 1'h0 : _T_4172_51; // @[NV_NVDLA_CSC_dl_for_check.scala 1188:23:@2815.4]
  assign dat_out_mask_52 = _T_4036 ? 1'h0 : _T_4172_52; // @[NV_NVDLA_CSC_dl_for_check.scala 1188:23:@2815.4]
  assign dat_out_mask_53 = _T_4036 ? 1'h0 : _T_4172_53; // @[NV_NVDLA_CSC_dl_for_check.scala 1188:23:@2815.4]
  assign dat_out_mask_54 = _T_4036 ? 1'h0 : _T_4172_54; // @[NV_NVDLA_CSC_dl_for_check.scala 1188:23:@2815.4]
  assign dat_out_mask_55 = _T_4036 ? 1'h0 : _T_4172_55; // @[NV_NVDLA_CSC_dl_for_check.scala 1188:23:@2815.4]
  assign dat_out_mask_56 = _T_4036 ? 1'h0 : _T_4172_56; // @[NV_NVDLA_CSC_dl_for_check.scala 1188:23:@2815.4]
  assign dat_out_mask_57 = _T_4036 ? 1'h0 : _T_4172_57; // @[NV_NVDLA_CSC_dl_for_check.scala 1188:23:@2815.4]
  assign dat_out_mask_58 = _T_4036 ? 1'h0 : _T_4172_58; // @[NV_NVDLA_CSC_dl_for_check.scala 1188:23:@2815.4]
  assign dat_out_mask_59 = _T_4036 ? 1'h0 : _T_4172_59; // @[NV_NVDLA_CSC_dl_for_check.scala 1188:23:@2815.4]
  assign dat_out_mask_60 = _T_4036 ? 1'h0 : _T_4172_60; // @[NV_NVDLA_CSC_dl_for_check.scala 1188:23:@2815.4]
  assign dat_out_mask_61 = _T_4036 ? 1'h0 : _T_4172_61; // @[NV_NVDLA_CSC_dl_for_check.scala 1188:23:@2815.4]
  assign dat_out_mask_62 = _T_4036 ? 1'h0 : _T_4172_62; // @[NV_NVDLA_CSC_dl_for_check.scala 1188:23:@2815.4]
  assign dat_out_mask_63 = _T_4036 ? 1'h0 : _T_4172_63; // @[NV_NVDLA_CSC_dl_for_check.scala 1188:23:@2815.4]
  assign _T_4435 = dat_out_pvld | dl_out_pvld; // @[NV_NVDLA_CSC_dl_for_check.scala 1192:19:@2817.4]
  assign _GEN_294 = _T_4435 ? dat_out_mask_0 : dl_out_mask_0; // @[NV_NVDLA_CSC_dl_for_check.scala 1192:33:@2818.4]
  assign _GEN_295 = _T_4435 ? dat_out_mask_1 : dl_out_mask_1; // @[NV_NVDLA_CSC_dl_for_check.scala 1192:33:@2818.4]
  assign _GEN_296 = _T_4435 ? dat_out_mask_2 : dl_out_mask_2; // @[NV_NVDLA_CSC_dl_for_check.scala 1192:33:@2818.4]
  assign _GEN_297 = _T_4435 ? dat_out_mask_3 : dl_out_mask_3; // @[NV_NVDLA_CSC_dl_for_check.scala 1192:33:@2818.4]
  assign _GEN_298 = _T_4435 ? dat_out_mask_4 : dl_out_mask_4; // @[NV_NVDLA_CSC_dl_for_check.scala 1192:33:@2818.4]
  assign _GEN_299 = _T_4435 ? dat_out_mask_5 : dl_out_mask_5; // @[NV_NVDLA_CSC_dl_for_check.scala 1192:33:@2818.4]
  assign _GEN_300 = _T_4435 ? dat_out_mask_6 : dl_out_mask_6; // @[NV_NVDLA_CSC_dl_for_check.scala 1192:33:@2818.4]
  assign _GEN_301 = _T_4435 ? dat_out_mask_7 : dl_out_mask_7; // @[NV_NVDLA_CSC_dl_for_check.scala 1192:33:@2818.4]
  assign _GEN_302 = _T_4435 ? dat_out_mask_8 : dl_out_mask_8; // @[NV_NVDLA_CSC_dl_for_check.scala 1192:33:@2818.4]
  assign _GEN_303 = _T_4435 ? dat_out_mask_9 : dl_out_mask_9; // @[NV_NVDLA_CSC_dl_for_check.scala 1192:33:@2818.4]
  assign _GEN_304 = _T_4435 ? dat_out_mask_10 : dl_out_mask_10; // @[NV_NVDLA_CSC_dl_for_check.scala 1192:33:@2818.4]
  assign _GEN_305 = _T_4435 ? dat_out_mask_11 : dl_out_mask_11; // @[NV_NVDLA_CSC_dl_for_check.scala 1192:33:@2818.4]
  assign _GEN_306 = _T_4435 ? dat_out_mask_12 : dl_out_mask_12; // @[NV_NVDLA_CSC_dl_for_check.scala 1192:33:@2818.4]
  assign _GEN_307 = _T_4435 ? dat_out_mask_13 : dl_out_mask_13; // @[NV_NVDLA_CSC_dl_for_check.scala 1192:33:@2818.4]
  assign _GEN_308 = _T_4435 ? dat_out_mask_14 : dl_out_mask_14; // @[NV_NVDLA_CSC_dl_for_check.scala 1192:33:@2818.4]
  assign _GEN_309 = _T_4435 ? dat_out_mask_15 : dl_out_mask_15; // @[NV_NVDLA_CSC_dl_for_check.scala 1192:33:@2818.4]
  assign _GEN_310 = _T_4435 ? dat_out_mask_16 : dl_out_mask_16; // @[NV_NVDLA_CSC_dl_for_check.scala 1192:33:@2818.4]
  assign _GEN_311 = _T_4435 ? dat_out_mask_17 : dl_out_mask_17; // @[NV_NVDLA_CSC_dl_for_check.scala 1192:33:@2818.4]
  assign _GEN_312 = _T_4435 ? dat_out_mask_18 : dl_out_mask_18; // @[NV_NVDLA_CSC_dl_for_check.scala 1192:33:@2818.4]
  assign _GEN_313 = _T_4435 ? dat_out_mask_19 : dl_out_mask_19; // @[NV_NVDLA_CSC_dl_for_check.scala 1192:33:@2818.4]
  assign _GEN_314 = _T_4435 ? dat_out_mask_20 : dl_out_mask_20; // @[NV_NVDLA_CSC_dl_for_check.scala 1192:33:@2818.4]
  assign _GEN_315 = _T_4435 ? dat_out_mask_21 : dl_out_mask_21; // @[NV_NVDLA_CSC_dl_for_check.scala 1192:33:@2818.4]
  assign _GEN_316 = _T_4435 ? dat_out_mask_22 : dl_out_mask_22; // @[NV_NVDLA_CSC_dl_for_check.scala 1192:33:@2818.4]
  assign _GEN_317 = _T_4435 ? dat_out_mask_23 : dl_out_mask_23; // @[NV_NVDLA_CSC_dl_for_check.scala 1192:33:@2818.4]
  assign _GEN_318 = _T_4435 ? dat_out_mask_24 : dl_out_mask_24; // @[NV_NVDLA_CSC_dl_for_check.scala 1192:33:@2818.4]
  assign _GEN_319 = _T_4435 ? dat_out_mask_25 : dl_out_mask_25; // @[NV_NVDLA_CSC_dl_for_check.scala 1192:33:@2818.4]
  assign _GEN_320 = _T_4435 ? dat_out_mask_26 : dl_out_mask_26; // @[NV_NVDLA_CSC_dl_for_check.scala 1192:33:@2818.4]
  assign _GEN_321 = _T_4435 ? dat_out_mask_27 : dl_out_mask_27; // @[NV_NVDLA_CSC_dl_for_check.scala 1192:33:@2818.4]
  assign _GEN_322 = _T_4435 ? dat_out_mask_28 : dl_out_mask_28; // @[NV_NVDLA_CSC_dl_for_check.scala 1192:33:@2818.4]
  assign _GEN_323 = _T_4435 ? dat_out_mask_29 : dl_out_mask_29; // @[NV_NVDLA_CSC_dl_for_check.scala 1192:33:@2818.4]
  assign _GEN_324 = _T_4435 ? dat_out_mask_30 : dl_out_mask_30; // @[NV_NVDLA_CSC_dl_for_check.scala 1192:33:@2818.4]
  assign _GEN_325 = _T_4435 ? dat_out_mask_31 : dl_out_mask_31; // @[NV_NVDLA_CSC_dl_for_check.scala 1192:33:@2818.4]
  assign _GEN_326 = _T_4435 ? dat_out_mask_32 : dl_out_mask_32; // @[NV_NVDLA_CSC_dl_for_check.scala 1192:33:@2818.4]
  assign _GEN_327 = _T_4435 ? dat_out_mask_33 : dl_out_mask_33; // @[NV_NVDLA_CSC_dl_for_check.scala 1192:33:@2818.4]
  assign _GEN_328 = _T_4435 ? dat_out_mask_34 : dl_out_mask_34; // @[NV_NVDLA_CSC_dl_for_check.scala 1192:33:@2818.4]
  assign _GEN_329 = _T_4435 ? dat_out_mask_35 : dl_out_mask_35; // @[NV_NVDLA_CSC_dl_for_check.scala 1192:33:@2818.4]
  assign _GEN_330 = _T_4435 ? dat_out_mask_36 : dl_out_mask_36; // @[NV_NVDLA_CSC_dl_for_check.scala 1192:33:@2818.4]
  assign _GEN_331 = _T_4435 ? dat_out_mask_37 : dl_out_mask_37; // @[NV_NVDLA_CSC_dl_for_check.scala 1192:33:@2818.4]
  assign _GEN_332 = _T_4435 ? dat_out_mask_38 : dl_out_mask_38; // @[NV_NVDLA_CSC_dl_for_check.scala 1192:33:@2818.4]
  assign _GEN_333 = _T_4435 ? dat_out_mask_39 : dl_out_mask_39; // @[NV_NVDLA_CSC_dl_for_check.scala 1192:33:@2818.4]
  assign _GEN_334 = _T_4435 ? dat_out_mask_40 : dl_out_mask_40; // @[NV_NVDLA_CSC_dl_for_check.scala 1192:33:@2818.4]
  assign _GEN_335 = _T_4435 ? dat_out_mask_41 : dl_out_mask_41; // @[NV_NVDLA_CSC_dl_for_check.scala 1192:33:@2818.4]
  assign _GEN_336 = _T_4435 ? dat_out_mask_42 : dl_out_mask_42; // @[NV_NVDLA_CSC_dl_for_check.scala 1192:33:@2818.4]
  assign _GEN_337 = _T_4435 ? dat_out_mask_43 : dl_out_mask_43; // @[NV_NVDLA_CSC_dl_for_check.scala 1192:33:@2818.4]
  assign _GEN_338 = _T_4435 ? dat_out_mask_44 : dl_out_mask_44; // @[NV_NVDLA_CSC_dl_for_check.scala 1192:33:@2818.4]
  assign _GEN_339 = _T_4435 ? dat_out_mask_45 : dl_out_mask_45; // @[NV_NVDLA_CSC_dl_for_check.scala 1192:33:@2818.4]
  assign _GEN_340 = _T_4435 ? dat_out_mask_46 : dl_out_mask_46; // @[NV_NVDLA_CSC_dl_for_check.scala 1192:33:@2818.4]
  assign _GEN_341 = _T_4435 ? dat_out_mask_47 : dl_out_mask_47; // @[NV_NVDLA_CSC_dl_for_check.scala 1192:33:@2818.4]
  assign _GEN_342 = _T_4435 ? dat_out_mask_48 : dl_out_mask_48; // @[NV_NVDLA_CSC_dl_for_check.scala 1192:33:@2818.4]
  assign _GEN_343 = _T_4435 ? dat_out_mask_49 : dl_out_mask_49; // @[NV_NVDLA_CSC_dl_for_check.scala 1192:33:@2818.4]
  assign _GEN_344 = _T_4435 ? dat_out_mask_50 : dl_out_mask_50; // @[NV_NVDLA_CSC_dl_for_check.scala 1192:33:@2818.4]
  assign _GEN_345 = _T_4435 ? dat_out_mask_51 : dl_out_mask_51; // @[NV_NVDLA_CSC_dl_for_check.scala 1192:33:@2818.4]
  assign _GEN_346 = _T_4435 ? dat_out_mask_52 : dl_out_mask_52; // @[NV_NVDLA_CSC_dl_for_check.scala 1192:33:@2818.4]
  assign _GEN_347 = _T_4435 ? dat_out_mask_53 : dl_out_mask_53; // @[NV_NVDLA_CSC_dl_for_check.scala 1192:33:@2818.4]
  assign _GEN_348 = _T_4435 ? dat_out_mask_54 : dl_out_mask_54; // @[NV_NVDLA_CSC_dl_for_check.scala 1192:33:@2818.4]
  assign _GEN_349 = _T_4435 ? dat_out_mask_55 : dl_out_mask_55; // @[NV_NVDLA_CSC_dl_for_check.scala 1192:33:@2818.4]
  assign _GEN_350 = _T_4435 ? dat_out_mask_56 : dl_out_mask_56; // @[NV_NVDLA_CSC_dl_for_check.scala 1192:33:@2818.4]
  assign _GEN_351 = _T_4435 ? dat_out_mask_57 : dl_out_mask_57; // @[NV_NVDLA_CSC_dl_for_check.scala 1192:33:@2818.4]
  assign _GEN_352 = _T_4435 ? dat_out_mask_58 : dl_out_mask_58; // @[NV_NVDLA_CSC_dl_for_check.scala 1192:33:@2818.4]
  assign _GEN_353 = _T_4435 ? dat_out_mask_59 : dl_out_mask_59; // @[NV_NVDLA_CSC_dl_for_check.scala 1192:33:@2818.4]
  assign _GEN_354 = _T_4435 ? dat_out_mask_60 : dl_out_mask_60; // @[NV_NVDLA_CSC_dl_for_check.scala 1192:33:@2818.4]
  assign _GEN_355 = _T_4435 ? dat_out_mask_61 : dl_out_mask_61; // @[NV_NVDLA_CSC_dl_for_check.scala 1192:33:@2818.4]
  assign _GEN_356 = _T_4435 ? dat_out_mask_62 : dl_out_mask_62; // @[NV_NVDLA_CSC_dl_for_check.scala 1192:33:@2818.4]
  assign _GEN_357 = _T_4435 ? dat_out_mask_63 : dl_out_mask_63; // @[NV_NVDLA_CSC_dl_for_check.scala 1192:33:@2818.4]
  assign _GEN_358 = dat_out_pvld ? dat_out_flag : dl_out_flag; // @[NV_NVDLA_CSC_dl_for_check.scala 1195:19:@2884.4]
  assign _T_4438 = ~ dl_out_pvld; // @[NV_NVDLA_CSC_dl_for_check.scala 1209:27:@3081.4]
  assign sc2mac_dat_pd_w = _T_4438 ? 9'h0 : dl_out_flag; // @[NV_NVDLA_CSC_dl_for_check.scala 1209:26:@3082.4]
  assign _T_4447 = dl_out_pvld | dl_out_pvld_d1; // @[NV_NVDLA_CSC_dl_for_check.scala 1213:80:@3089.4]
  assign _GEN_423 = _T_4447 ? sc2mac_dat_pd_w : _T_4449; // @[Reg.scala 20:19:@3091.4]
  assign _GEN_424 = _T_4447 ? sc2mac_dat_pd_w : _T_4453; // @[Reg.scala 20:19:@3097.4]
  assign _GEN_425 = _T_4447 ? dl_out_mask_0 : _T_4721_0; // @[Reg.scala 20:19:@3168.4]
  assign _GEN_426 = _T_4447 ? dl_out_mask_1 : _T_4721_1; // @[Reg.scala 20:19:@3168.4]
  assign _GEN_427 = _T_4447 ? dl_out_mask_2 : _T_4721_2; // @[Reg.scala 20:19:@3168.4]
  assign _GEN_428 = _T_4447 ? dl_out_mask_3 : _T_4721_3; // @[Reg.scala 20:19:@3168.4]
  assign _GEN_429 = _T_4447 ? dl_out_mask_4 : _T_4721_4; // @[Reg.scala 20:19:@3168.4]
  assign _GEN_430 = _T_4447 ? dl_out_mask_5 : _T_4721_5; // @[Reg.scala 20:19:@3168.4]
  assign _GEN_431 = _T_4447 ? dl_out_mask_6 : _T_4721_6; // @[Reg.scala 20:19:@3168.4]
  assign _GEN_432 = _T_4447 ? dl_out_mask_7 : _T_4721_7; // @[Reg.scala 20:19:@3168.4]
  assign _GEN_433 = _T_4447 ? dl_out_mask_8 : _T_4721_8; // @[Reg.scala 20:19:@3168.4]
  assign _GEN_434 = _T_4447 ? dl_out_mask_9 : _T_4721_9; // @[Reg.scala 20:19:@3168.4]
  assign _GEN_435 = _T_4447 ? dl_out_mask_10 : _T_4721_10; // @[Reg.scala 20:19:@3168.4]
  assign _GEN_436 = _T_4447 ? dl_out_mask_11 : _T_4721_11; // @[Reg.scala 20:19:@3168.4]
  assign _GEN_437 = _T_4447 ? dl_out_mask_12 : _T_4721_12; // @[Reg.scala 20:19:@3168.4]
  assign _GEN_438 = _T_4447 ? dl_out_mask_13 : _T_4721_13; // @[Reg.scala 20:19:@3168.4]
  assign _GEN_439 = _T_4447 ? dl_out_mask_14 : _T_4721_14; // @[Reg.scala 20:19:@3168.4]
  assign _GEN_440 = _T_4447 ? dl_out_mask_15 : _T_4721_15; // @[Reg.scala 20:19:@3168.4]
  assign _GEN_441 = _T_4447 ? dl_out_mask_16 : _T_4721_16; // @[Reg.scala 20:19:@3168.4]
  assign _GEN_442 = _T_4447 ? dl_out_mask_17 : _T_4721_17; // @[Reg.scala 20:19:@3168.4]
  assign _GEN_443 = _T_4447 ? dl_out_mask_18 : _T_4721_18; // @[Reg.scala 20:19:@3168.4]
  assign _GEN_444 = _T_4447 ? dl_out_mask_19 : _T_4721_19; // @[Reg.scala 20:19:@3168.4]
  assign _GEN_445 = _T_4447 ? dl_out_mask_20 : _T_4721_20; // @[Reg.scala 20:19:@3168.4]
  assign _GEN_446 = _T_4447 ? dl_out_mask_21 : _T_4721_21; // @[Reg.scala 20:19:@3168.4]
  assign _GEN_447 = _T_4447 ? dl_out_mask_22 : _T_4721_22; // @[Reg.scala 20:19:@3168.4]
  assign _GEN_448 = _T_4447 ? dl_out_mask_23 : _T_4721_23; // @[Reg.scala 20:19:@3168.4]
  assign _GEN_449 = _T_4447 ? dl_out_mask_24 : _T_4721_24; // @[Reg.scala 20:19:@3168.4]
  assign _GEN_450 = _T_4447 ? dl_out_mask_25 : _T_4721_25; // @[Reg.scala 20:19:@3168.4]
  assign _GEN_451 = _T_4447 ? dl_out_mask_26 : _T_4721_26; // @[Reg.scala 20:19:@3168.4]
  assign _GEN_452 = _T_4447 ? dl_out_mask_27 : _T_4721_27; // @[Reg.scala 20:19:@3168.4]
  assign _GEN_453 = _T_4447 ? dl_out_mask_28 : _T_4721_28; // @[Reg.scala 20:19:@3168.4]
  assign _GEN_454 = _T_4447 ? dl_out_mask_29 : _T_4721_29; // @[Reg.scala 20:19:@3168.4]
  assign _GEN_455 = _T_4447 ? dl_out_mask_30 : _T_4721_30; // @[Reg.scala 20:19:@3168.4]
  assign _GEN_456 = _T_4447 ? dl_out_mask_31 : _T_4721_31; // @[Reg.scala 20:19:@3168.4]
  assign _GEN_457 = _T_4447 ? dl_out_mask_32 : _T_4721_32; // @[Reg.scala 20:19:@3168.4]
  assign _GEN_458 = _T_4447 ? dl_out_mask_33 : _T_4721_33; // @[Reg.scala 20:19:@3168.4]
  assign _GEN_459 = _T_4447 ? dl_out_mask_34 : _T_4721_34; // @[Reg.scala 20:19:@3168.4]
  assign _GEN_460 = _T_4447 ? dl_out_mask_35 : _T_4721_35; // @[Reg.scala 20:19:@3168.4]
  assign _GEN_461 = _T_4447 ? dl_out_mask_36 : _T_4721_36; // @[Reg.scala 20:19:@3168.4]
  assign _GEN_462 = _T_4447 ? dl_out_mask_37 : _T_4721_37; // @[Reg.scala 20:19:@3168.4]
  assign _GEN_463 = _T_4447 ? dl_out_mask_38 : _T_4721_38; // @[Reg.scala 20:19:@3168.4]
  assign _GEN_464 = _T_4447 ? dl_out_mask_39 : _T_4721_39; // @[Reg.scala 20:19:@3168.4]
  assign _GEN_465 = _T_4447 ? dl_out_mask_40 : _T_4721_40; // @[Reg.scala 20:19:@3168.4]
  assign _GEN_466 = _T_4447 ? dl_out_mask_41 : _T_4721_41; // @[Reg.scala 20:19:@3168.4]
  assign _GEN_467 = _T_4447 ? dl_out_mask_42 : _T_4721_42; // @[Reg.scala 20:19:@3168.4]
  assign _GEN_468 = _T_4447 ? dl_out_mask_43 : _T_4721_43; // @[Reg.scala 20:19:@3168.4]
  assign _GEN_469 = _T_4447 ? dl_out_mask_44 : _T_4721_44; // @[Reg.scala 20:19:@3168.4]
  assign _GEN_470 = _T_4447 ? dl_out_mask_45 : _T_4721_45; // @[Reg.scala 20:19:@3168.4]
  assign _GEN_471 = _T_4447 ? dl_out_mask_46 : _T_4721_46; // @[Reg.scala 20:19:@3168.4]
  assign _GEN_472 = _T_4447 ? dl_out_mask_47 : _T_4721_47; // @[Reg.scala 20:19:@3168.4]
  assign _GEN_473 = _T_4447 ? dl_out_mask_48 : _T_4721_48; // @[Reg.scala 20:19:@3168.4]
  assign _GEN_474 = _T_4447 ? dl_out_mask_49 : _T_4721_49; // @[Reg.scala 20:19:@3168.4]
  assign _GEN_475 = _T_4447 ? dl_out_mask_50 : _T_4721_50; // @[Reg.scala 20:19:@3168.4]
  assign _GEN_476 = _T_4447 ? dl_out_mask_51 : _T_4721_51; // @[Reg.scala 20:19:@3168.4]
  assign _GEN_477 = _T_4447 ? dl_out_mask_52 : _T_4721_52; // @[Reg.scala 20:19:@3168.4]
  assign _GEN_478 = _T_4447 ? dl_out_mask_53 : _T_4721_53; // @[Reg.scala 20:19:@3168.4]
  assign _GEN_479 = _T_4447 ? dl_out_mask_54 : _T_4721_54; // @[Reg.scala 20:19:@3168.4]
  assign _GEN_480 = _T_4447 ? dl_out_mask_55 : _T_4721_55; // @[Reg.scala 20:19:@3168.4]
  assign _GEN_481 = _T_4447 ? dl_out_mask_56 : _T_4721_56; // @[Reg.scala 20:19:@3168.4]
  assign _GEN_482 = _T_4447 ? dl_out_mask_57 : _T_4721_57; // @[Reg.scala 20:19:@3168.4]
  assign _GEN_483 = _T_4447 ? dl_out_mask_58 : _T_4721_58; // @[Reg.scala 20:19:@3168.4]
  assign _GEN_484 = _T_4447 ? dl_out_mask_59 : _T_4721_59; // @[Reg.scala 20:19:@3168.4]
  assign _GEN_485 = _T_4447 ? dl_out_mask_60 : _T_4721_60; // @[Reg.scala 20:19:@3168.4]
  assign _GEN_486 = _T_4447 ? dl_out_mask_61 : _T_4721_61; // @[Reg.scala 20:19:@3168.4]
  assign _GEN_487 = _T_4447 ? dl_out_mask_62 : _T_4721_62; // @[Reg.scala 20:19:@3168.4]
  assign _GEN_488 = _T_4447 ? dl_out_mask_63 : _T_4721_63; // @[Reg.scala 20:19:@3168.4]
  assign _T_4924 = {_T_4721_7,_T_4721_6,_T_4721_5,_T_4721_4,_T_4721_3,_T_4721_2,_T_4721_1,_T_4721_0}; // @[NV_NVDLA_CSC_dl_for_check.scala 1215:122:@3240.4]
  assign _T_4932 = {_T_4721_15,_T_4721_14,_T_4721_13,_T_4721_12,_T_4721_11,_T_4721_10,_T_4721_9,_T_4721_8,_T_4924}; // @[NV_NVDLA_CSC_dl_for_check.scala 1215:122:@3248.4]
  assign _T_4939 = {_T_4721_23,_T_4721_22,_T_4721_21,_T_4721_20,_T_4721_19,_T_4721_18,_T_4721_17,_T_4721_16}; // @[NV_NVDLA_CSC_dl_for_check.scala 1215:122:@3255.4]
  assign _T_4948 = {_T_4721_31,_T_4721_30,_T_4721_29,_T_4721_28,_T_4721_27,_T_4721_26,_T_4721_25,_T_4721_24,_T_4939,_T_4932}; // @[NV_NVDLA_CSC_dl_for_check.scala 1215:122:@3264.4]
  assign _T_4955 = {_T_4721_39,_T_4721_38,_T_4721_37,_T_4721_36,_T_4721_35,_T_4721_34,_T_4721_33,_T_4721_32}; // @[NV_NVDLA_CSC_dl_for_check.scala 1215:122:@3271.4]
  assign _T_4963 = {_T_4721_47,_T_4721_46,_T_4721_45,_T_4721_44,_T_4721_43,_T_4721_42,_T_4721_41,_T_4721_40,_T_4955}; // @[NV_NVDLA_CSC_dl_for_check.scala 1215:122:@3279.4]
  assign _T_4970 = {_T_4721_55,_T_4721_54,_T_4721_53,_T_4721_52,_T_4721_51,_T_4721_50,_T_4721_49,_T_4721_48}; // @[NV_NVDLA_CSC_dl_for_check.scala 1215:122:@3286.4]
  assign _T_4979 = {_T_4721_63,_T_4721_62,_T_4721_61,_T_4721_60,_T_4721_59,_T_4721_58,_T_4721_57,_T_4721_56,_T_4970,_T_4963}; // @[NV_NVDLA_CSC_dl_for_check.scala 1215:122:@3295.4]
  assign _GEN_489 = _T_4447 ? dl_out_mask_0 : _T_5248_0; // @[Reg.scala 20:19:@3365.4]
  assign _GEN_490 = _T_4447 ? dl_out_mask_1 : _T_5248_1; // @[Reg.scala 20:19:@3365.4]
  assign _GEN_491 = _T_4447 ? dl_out_mask_2 : _T_5248_2; // @[Reg.scala 20:19:@3365.4]
  assign _GEN_492 = _T_4447 ? dl_out_mask_3 : _T_5248_3; // @[Reg.scala 20:19:@3365.4]
  assign _GEN_493 = _T_4447 ? dl_out_mask_4 : _T_5248_4; // @[Reg.scala 20:19:@3365.4]
  assign _GEN_494 = _T_4447 ? dl_out_mask_5 : _T_5248_5; // @[Reg.scala 20:19:@3365.4]
  assign _GEN_495 = _T_4447 ? dl_out_mask_6 : _T_5248_6; // @[Reg.scala 20:19:@3365.4]
  assign _GEN_496 = _T_4447 ? dl_out_mask_7 : _T_5248_7; // @[Reg.scala 20:19:@3365.4]
  assign _GEN_497 = _T_4447 ? dl_out_mask_8 : _T_5248_8; // @[Reg.scala 20:19:@3365.4]
  assign _GEN_498 = _T_4447 ? dl_out_mask_9 : _T_5248_9; // @[Reg.scala 20:19:@3365.4]
  assign _GEN_499 = _T_4447 ? dl_out_mask_10 : _T_5248_10; // @[Reg.scala 20:19:@3365.4]
  assign _GEN_500 = _T_4447 ? dl_out_mask_11 : _T_5248_11; // @[Reg.scala 20:19:@3365.4]
  assign _GEN_501 = _T_4447 ? dl_out_mask_12 : _T_5248_12; // @[Reg.scala 20:19:@3365.4]
  assign _GEN_502 = _T_4447 ? dl_out_mask_13 : _T_5248_13; // @[Reg.scala 20:19:@3365.4]
  assign _GEN_503 = _T_4447 ? dl_out_mask_14 : _T_5248_14; // @[Reg.scala 20:19:@3365.4]
  assign _GEN_504 = _T_4447 ? dl_out_mask_15 : _T_5248_15; // @[Reg.scala 20:19:@3365.4]
  assign _GEN_505 = _T_4447 ? dl_out_mask_16 : _T_5248_16; // @[Reg.scala 20:19:@3365.4]
  assign _GEN_506 = _T_4447 ? dl_out_mask_17 : _T_5248_17; // @[Reg.scala 20:19:@3365.4]
  assign _GEN_507 = _T_4447 ? dl_out_mask_18 : _T_5248_18; // @[Reg.scala 20:19:@3365.4]
  assign _GEN_508 = _T_4447 ? dl_out_mask_19 : _T_5248_19; // @[Reg.scala 20:19:@3365.4]
  assign _GEN_509 = _T_4447 ? dl_out_mask_20 : _T_5248_20; // @[Reg.scala 20:19:@3365.4]
  assign _GEN_510 = _T_4447 ? dl_out_mask_21 : _T_5248_21; // @[Reg.scala 20:19:@3365.4]
  assign _GEN_511 = _T_4447 ? dl_out_mask_22 : _T_5248_22; // @[Reg.scala 20:19:@3365.4]
  assign _GEN_512 = _T_4447 ? dl_out_mask_23 : _T_5248_23; // @[Reg.scala 20:19:@3365.4]
  assign _GEN_513 = _T_4447 ? dl_out_mask_24 : _T_5248_24; // @[Reg.scala 20:19:@3365.4]
  assign _GEN_514 = _T_4447 ? dl_out_mask_25 : _T_5248_25; // @[Reg.scala 20:19:@3365.4]
  assign _GEN_515 = _T_4447 ? dl_out_mask_26 : _T_5248_26; // @[Reg.scala 20:19:@3365.4]
  assign _GEN_516 = _T_4447 ? dl_out_mask_27 : _T_5248_27; // @[Reg.scala 20:19:@3365.4]
  assign _GEN_517 = _T_4447 ? dl_out_mask_28 : _T_5248_28; // @[Reg.scala 20:19:@3365.4]
  assign _GEN_518 = _T_4447 ? dl_out_mask_29 : _T_5248_29; // @[Reg.scala 20:19:@3365.4]
  assign _GEN_519 = _T_4447 ? dl_out_mask_30 : _T_5248_30; // @[Reg.scala 20:19:@3365.4]
  assign _GEN_520 = _T_4447 ? dl_out_mask_31 : _T_5248_31; // @[Reg.scala 20:19:@3365.4]
  assign _GEN_521 = _T_4447 ? dl_out_mask_32 : _T_5248_32; // @[Reg.scala 20:19:@3365.4]
  assign _GEN_522 = _T_4447 ? dl_out_mask_33 : _T_5248_33; // @[Reg.scala 20:19:@3365.4]
  assign _GEN_523 = _T_4447 ? dl_out_mask_34 : _T_5248_34; // @[Reg.scala 20:19:@3365.4]
  assign _GEN_524 = _T_4447 ? dl_out_mask_35 : _T_5248_35; // @[Reg.scala 20:19:@3365.4]
  assign _GEN_525 = _T_4447 ? dl_out_mask_36 : _T_5248_36; // @[Reg.scala 20:19:@3365.4]
  assign _GEN_526 = _T_4447 ? dl_out_mask_37 : _T_5248_37; // @[Reg.scala 20:19:@3365.4]
  assign _GEN_527 = _T_4447 ? dl_out_mask_38 : _T_5248_38; // @[Reg.scala 20:19:@3365.4]
  assign _GEN_528 = _T_4447 ? dl_out_mask_39 : _T_5248_39; // @[Reg.scala 20:19:@3365.4]
  assign _GEN_529 = _T_4447 ? dl_out_mask_40 : _T_5248_40; // @[Reg.scala 20:19:@3365.4]
  assign _GEN_530 = _T_4447 ? dl_out_mask_41 : _T_5248_41; // @[Reg.scala 20:19:@3365.4]
  assign _GEN_531 = _T_4447 ? dl_out_mask_42 : _T_5248_42; // @[Reg.scala 20:19:@3365.4]
  assign _GEN_532 = _T_4447 ? dl_out_mask_43 : _T_5248_43; // @[Reg.scala 20:19:@3365.4]
  assign _GEN_533 = _T_4447 ? dl_out_mask_44 : _T_5248_44; // @[Reg.scala 20:19:@3365.4]
  assign _GEN_534 = _T_4447 ? dl_out_mask_45 : _T_5248_45; // @[Reg.scala 20:19:@3365.4]
  assign _GEN_535 = _T_4447 ? dl_out_mask_46 : _T_5248_46; // @[Reg.scala 20:19:@3365.4]
  assign _GEN_536 = _T_4447 ? dl_out_mask_47 : _T_5248_47; // @[Reg.scala 20:19:@3365.4]
  assign _GEN_537 = _T_4447 ? dl_out_mask_48 : _T_5248_48; // @[Reg.scala 20:19:@3365.4]
  assign _GEN_538 = _T_4447 ? dl_out_mask_49 : _T_5248_49; // @[Reg.scala 20:19:@3365.4]
  assign _GEN_539 = _T_4447 ? dl_out_mask_50 : _T_5248_50; // @[Reg.scala 20:19:@3365.4]
  assign _GEN_540 = _T_4447 ? dl_out_mask_51 : _T_5248_51; // @[Reg.scala 20:19:@3365.4]
  assign _GEN_541 = _T_4447 ? dl_out_mask_52 : _T_5248_52; // @[Reg.scala 20:19:@3365.4]
  assign _GEN_542 = _T_4447 ? dl_out_mask_53 : _T_5248_53; // @[Reg.scala 20:19:@3365.4]
  assign _GEN_543 = _T_4447 ? dl_out_mask_54 : _T_5248_54; // @[Reg.scala 20:19:@3365.4]
  assign _GEN_544 = _T_4447 ? dl_out_mask_55 : _T_5248_55; // @[Reg.scala 20:19:@3365.4]
  assign _GEN_545 = _T_4447 ? dl_out_mask_56 : _T_5248_56; // @[Reg.scala 20:19:@3365.4]
  assign _GEN_546 = _T_4447 ? dl_out_mask_57 : _T_5248_57; // @[Reg.scala 20:19:@3365.4]
  assign _GEN_547 = _T_4447 ? dl_out_mask_58 : _T_5248_58; // @[Reg.scala 20:19:@3365.4]
  assign _GEN_548 = _T_4447 ? dl_out_mask_59 : _T_5248_59; // @[Reg.scala 20:19:@3365.4]
  assign _GEN_549 = _T_4447 ? dl_out_mask_60 : _T_5248_60; // @[Reg.scala 20:19:@3365.4]
  assign _GEN_550 = _T_4447 ? dl_out_mask_61 : _T_5248_61; // @[Reg.scala 20:19:@3365.4]
  assign _GEN_551 = _T_4447 ? dl_out_mask_62 : _T_5248_62; // @[Reg.scala 20:19:@3365.4]
  assign _GEN_552 = _T_4447 ? dl_out_mask_63 : _T_5248_63; // @[Reg.scala 20:19:@3365.4]
  assign _T_5451 = {_T_5248_7,_T_5248_6,_T_5248_5,_T_5248_4,_T_5248_3,_T_5248_2,_T_5248_1,_T_5248_0}; // @[NV_NVDLA_CSC_dl_for_check.scala 1216:122:@3437.4]
  assign _T_5459 = {_T_5248_15,_T_5248_14,_T_5248_13,_T_5248_12,_T_5248_11,_T_5248_10,_T_5248_9,_T_5248_8,_T_5451}; // @[NV_NVDLA_CSC_dl_for_check.scala 1216:122:@3445.4]
  assign _T_5466 = {_T_5248_23,_T_5248_22,_T_5248_21,_T_5248_20,_T_5248_19,_T_5248_18,_T_5248_17,_T_5248_16}; // @[NV_NVDLA_CSC_dl_for_check.scala 1216:122:@3452.4]
  assign _T_5475 = {_T_5248_31,_T_5248_30,_T_5248_29,_T_5248_28,_T_5248_27,_T_5248_26,_T_5248_25,_T_5248_24,_T_5466,_T_5459}; // @[NV_NVDLA_CSC_dl_for_check.scala 1216:122:@3461.4]
  assign _T_5482 = {_T_5248_39,_T_5248_38,_T_5248_37,_T_5248_36,_T_5248_35,_T_5248_34,_T_5248_33,_T_5248_32}; // @[NV_NVDLA_CSC_dl_for_check.scala 1216:122:@3468.4]
  assign _T_5490 = {_T_5248_47,_T_5248_46,_T_5248_45,_T_5248_44,_T_5248_43,_T_5248_42,_T_5248_41,_T_5248_40,_T_5482}; // @[NV_NVDLA_CSC_dl_for_check.scala 1216:122:@3476.4]
  assign _T_5497 = {_T_5248_55,_T_5248_54,_T_5248_53,_T_5248_52,_T_5248_51,_T_5248_50,_T_5248_49,_T_5248_48}; // @[NV_NVDLA_CSC_dl_for_check.scala 1216:122:@3483.4]
  assign _T_5506 = {_T_5248_63,_T_5248_62,_T_5248_61,_T_5248_60,_T_5248_59,_T_5248_58,_T_5248_57,_T_5248_56,_T_5497,_T_5490}; // @[NV_NVDLA_CSC_dl_for_check.scala 1216:122:@3492.4]
  assign sc2cdma_dat_updt = _T_513; // @[NV_NVDLA_CSC_dl_for_check.scala 319:27:@305.4]
  assign sc2cdma_dat_entries = _T_519; // @[NV_NVDLA_CSC_dl_for_check.scala 321:34:@315.4]
  assign sc2cdma_dat_slices = _T_516; // @[NV_NVDLA_CSC_dl_for_check.scala 320:33:@310.4]
  assign sc2buf_dat_rd_en = sc2buf_dat_rd_en_out; // @[NV_NVDLA_CSC_dl_for_check.scala 742:29:@916.4]
  assign sc2buf_dat_rd_addr = sc2buf_dat_rd_addr_out[12:0]; // @[NV_NVDLA_CSC_dl_for_check.scala 743:28:@917.4]
  assign sc2mac_dat_a_pvld = _T_4442; // @[NV_NVDLA_CSC_dl_for_check.scala 1211:22:@3085.4]
  assign sc2mac_dat_a_mask = {_T_4979,_T_4948}; // @[NV_NVDLA_CSC_dl_for_check.scala 1215:22:@3297.4]
  assign sc2mac_dat_a_data0 = _T_5509; // @[NV_NVDLA_CSC_dl_for_check.scala 1218:29:@3499.4]
  assign sc2mac_dat_a_data1 = _T_5513; // @[NV_NVDLA_CSC_dl_for_check.scala 1218:29:@3509.4]
  assign sc2mac_dat_a_data2 = _T_5517; // @[NV_NVDLA_CSC_dl_for_check.scala 1218:29:@3519.4]
  assign sc2mac_dat_a_data3 = _T_5521; // @[NV_NVDLA_CSC_dl_for_check.scala 1218:29:@3529.4]
  assign sc2mac_dat_a_data4 = _T_5525; // @[NV_NVDLA_CSC_dl_for_check.scala 1218:29:@3539.4]
  assign sc2mac_dat_a_data5 = _T_5529; // @[NV_NVDLA_CSC_dl_for_check.scala 1218:29:@3549.4]
  assign sc2mac_dat_a_data6 = _T_5533; // @[NV_NVDLA_CSC_dl_for_check.scala 1218:29:@3559.4]
  assign sc2mac_dat_a_data7 = _T_5537; // @[NV_NVDLA_CSC_dl_for_check.scala 1218:29:@3569.4]
  assign sc2mac_dat_a_data8 = _T_5541; // @[NV_NVDLA_CSC_dl_for_check.scala 1218:29:@3579.4]
  assign sc2mac_dat_a_data9 = _T_5545; // @[NV_NVDLA_CSC_dl_for_check.scala 1218:29:@3589.4]
  assign sc2mac_dat_a_data10 = _T_5549; // @[NV_NVDLA_CSC_dl_for_check.scala 1218:29:@3599.4]
  assign sc2mac_dat_a_data11 = _T_5553; // @[NV_NVDLA_CSC_dl_for_check.scala 1218:29:@3609.4]
  assign sc2mac_dat_a_data12 = _T_5557; // @[NV_NVDLA_CSC_dl_for_check.scala 1218:29:@3619.4]
  assign sc2mac_dat_a_data13 = _T_5561; // @[NV_NVDLA_CSC_dl_for_check.scala 1218:29:@3629.4]
  assign sc2mac_dat_a_data14 = _T_5565; // @[NV_NVDLA_CSC_dl_for_check.scala 1218:29:@3639.4]
  assign sc2mac_dat_a_data15 = _T_5569; // @[NV_NVDLA_CSC_dl_for_check.scala 1218:29:@3649.4]
  assign sc2mac_dat_a_data16 = _T_5573; // @[NV_NVDLA_CSC_dl_for_check.scala 1218:29:@3659.4]
  assign sc2mac_dat_a_data17 = _T_5577; // @[NV_NVDLA_CSC_dl_for_check.scala 1218:29:@3669.4]
  assign sc2mac_dat_a_data18 = _T_5581; // @[NV_NVDLA_CSC_dl_for_check.scala 1218:29:@3679.4]
  assign sc2mac_dat_a_data19 = _T_5585; // @[NV_NVDLA_CSC_dl_for_check.scala 1218:29:@3689.4]
  assign sc2mac_dat_a_data20 = _T_5589; // @[NV_NVDLA_CSC_dl_for_check.scala 1218:29:@3699.4]
  assign sc2mac_dat_a_data21 = _T_5593; // @[NV_NVDLA_CSC_dl_for_check.scala 1218:29:@3709.4]
  assign sc2mac_dat_a_data22 = _T_5597; // @[NV_NVDLA_CSC_dl_for_check.scala 1218:29:@3719.4]
  assign sc2mac_dat_a_data23 = _T_5601; // @[NV_NVDLA_CSC_dl_for_check.scala 1218:29:@3729.4]
  assign sc2mac_dat_a_data24 = _T_5605; // @[NV_NVDLA_CSC_dl_for_check.scala 1218:29:@3739.4]
  assign sc2mac_dat_a_data25 = _T_5609; // @[NV_NVDLA_CSC_dl_for_check.scala 1218:29:@3749.4]
  assign sc2mac_dat_a_data26 = _T_5613; // @[NV_NVDLA_CSC_dl_for_check.scala 1218:29:@3759.4]
  assign sc2mac_dat_a_data27 = _T_5617; // @[NV_NVDLA_CSC_dl_for_check.scala 1218:29:@3769.4]
  assign sc2mac_dat_a_data28 = _T_5621; // @[NV_NVDLA_CSC_dl_for_check.scala 1218:29:@3779.4]
  assign sc2mac_dat_a_data29 = _T_5625; // @[NV_NVDLA_CSC_dl_for_check.scala 1218:29:@3789.4]
  assign sc2mac_dat_a_data30 = _T_5629; // @[NV_NVDLA_CSC_dl_for_check.scala 1218:29:@3799.4]
  assign sc2mac_dat_a_data31 = _T_5633; // @[NV_NVDLA_CSC_dl_for_check.scala 1218:29:@3809.4]
  assign sc2mac_dat_a_data32 = _T_5637; // @[NV_NVDLA_CSC_dl_for_check.scala 1218:29:@3819.4]
  assign sc2mac_dat_a_data33 = _T_5641; // @[NV_NVDLA_CSC_dl_for_check.scala 1218:29:@3829.4]
  assign sc2mac_dat_a_data34 = _T_5645; // @[NV_NVDLA_CSC_dl_for_check.scala 1218:29:@3839.4]
  assign sc2mac_dat_a_data35 = _T_5649; // @[NV_NVDLA_CSC_dl_for_check.scala 1218:29:@3849.4]
  assign sc2mac_dat_a_data36 = _T_5653; // @[NV_NVDLA_CSC_dl_for_check.scala 1218:29:@3859.4]
  assign sc2mac_dat_a_data37 = _T_5657; // @[NV_NVDLA_CSC_dl_for_check.scala 1218:29:@3869.4]
  assign sc2mac_dat_a_data38 = _T_5661; // @[NV_NVDLA_CSC_dl_for_check.scala 1218:29:@3879.4]
  assign sc2mac_dat_a_data39 = _T_5665; // @[NV_NVDLA_CSC_dl_for_check.scala 1218:29:@3889.4]
  assign sc2mac_dat_a_data40 = _T_5669; // @[NV_NVDLA_CSC_dl_for_check.scala 1218:29:@3899.4]
  assign sc2mac_dat_a_data41 = _T_5673; // @[NV_NVDLA_CSC_dl_for_check.scala 1218:29:@3909.4]
  assign sc2mac_dat_a_data42 = _T_5677; // @[NV_NVDLA_CSC_dl_for_check.scala 1218:29:@3919.4]
  assign sc2mac_dat_a_data43 = _T_5681; // @[NV_NVDLA_CSC_dl_for_check.scala 1218:29:@3929.4]
  assign sc2mac_dat_a_data44 = _T_5685; // @[NV_NVDLA_CSC_dl_for_check.scala 1218:29:@3939.4]
  assign sc2mac_dat_a_data45 = _T_5689; // @[NV_NVDLA_CSC_dl_for_check.scala 1218:29:@3949.4]
  assign sc2mac_dat_a_data46 = _T_5693; // @[NV_NVDLA_CSC_dl_for_check.scala 1218:29:@3959.4]
  assign sc2mac_dat_a_data47 = _T_5697; // @[NV_NVDLA_CSC_dl_for_check.scala 1218:29:@3969.4]
  assign sc2mac_dat_a_data48 = _T_5701; // @[NV_NVDLA_CSC_dl_for_check.scala 1218:29:@3979.4]
  assign sc2mac_dat_a_data49 = _T_5705; // @[NV_NVDLA_CSC_dl_for_check.scala 1218:29:@3989.4]
  assign sc2mac_dat_a_data50 = _T_5709; // @[NV_NVDLA_CSC_dl_for_check.scala 1218:29:@3999.4]
  assign sc2mac_dat_a_data51 = _T_5713; // @[NV_NVDLA_CSC_dl_for_check.scala 1218:29:@4009.4]
  assign sc2mac_dat_a_data52 = _T_5717; // @[NV_NVDLA_CSC_dl_for_check.scala 1218:29:@4019.4]
  assign sc2mac_dat_a_data53 = _T_5721; // @[NV_NVDLA_CSC_dl_for_check.scala 1218:29:@4029.4]
  assign sc2mac_dat_a_data54 = _T_5725; // @[NV_NVDLA_CSC_dl_for_check.scala 1218:29:@4039.4]
  assign sc2mac_dat_a_data55 = _T_5729; // @[NV_NVDLA_CSC_dl_for_check.scala 1218:29:@4049.4]
  assign sc2mac_dat_a_data56 = _T_5733; // @[NV_NVDLA_CSC_dl_for_check.scala 1218:29:@4059.4]
  assign sc2mac_dat_a_data57 = _T_5737; // @[NV_NVDLA_CSC_dl_for_check.scala 1218:29:@4069.4]
  assign sc2mac_dat_a_data58 = _T_5741; // @[NV_NVDLA_CSC_dl_for_check.scala 1218:29:@4079.4]
  assign sc2mac_dat_a_data59 = _T_5745; // @[NV_NVDLA_CSC_dl_for_check.scala 1218:29:@4089.4]
  assign sc2mac_dat_a_data60 = _T_5749; // @[NV_NVDLA_CSC_dl_for_check.scala 1218:29:@4099.4]
  assign sc2mac_dat_a_data61 = _T_5753; // @[NV_NVDLA_CSC_dl_for_check.scala 1218:29:@4109.4]
  assign sc2mac_dat_a_data62 = _T_5757; // @[NV_NVDLA_CSC_dl_for_check.scala 1218:29:@4119.4]
  assign sc2mac_dat_a_data63 = _T_5761; // @[NV_NVDLA_CSC_dl_for_check.scala 1218:29:@4129.4]
  assign sc2mac_dat_a_pd = _T_4449; // @[NV_NVDLA_CSC_dl_for_check.scala 1213:20:@3094.4]
  assign sc2mac_dat_b_pvld = _T_4445; // @[NV_NVDLA_CSC_dl_for_check.scala 1212:22:@3088.4]
  assign sc2mac_dat_b_mask = {_T_5506,_T_5475}; // @[NV_NVDLA_CSC_dl_for_check.scala 1216:22:@3494.4]
  assign sc2mac_dat_b_data0 = _T_5511; // @[NV_NVDLA_CSC_dl_for_check.scala 1219:29:@3504.4]
  assign sc2mac_dat_b_data1 = _T_5515; // @[NV_NVDLA_CSC_dl_for_check.scala 1219:29:@3514.4]
  assign sc2mac_dat_b_data2 = _T_5519; // @[NV_NVDLA_CSC_dl_for_check.scala 1219:29:@3524.4]
  assign sc2mac_dat_b_data3 = _T_5523; // @[NV_NVDLA_CSC_dl_for_check.scala 1219:29:@3534.4]
  assign sc2mac_dat_b_data4 = _T_5527; // @[NV_NVDLA_CSC_dl_for_check.scala 1219:29:@3544.4]
  assign sc2mac_dat_b_data5 = _T_5531; // @[NV_NVDLA_CSC_dl_for_check.scala 1219:29:@3554.4]
  assign sc2mac_dat_b_data6 = _T_5535; // @[NV_NVDLA_CSC_dl_for_check.scala 1219:29:@3564.4]
  assign sc2mac_dat_b_data7 = _T_5539; // @[NV_NVDLA_CSC_dl_for_check.scala 1219:29:@3574.4]
  assign sc2mac_dat_b_data8 = _T_5543; // @[NV_NVDLA_CSC_dl_for_check.scala 1219:29:@3584.4]
  assign sc2mac_dat_b_data9 = _T_5547; // @[NV_NVDLA_CSC_dl_for_check.scala 1219:29:@3594.4]
  assign sc2mac_dat_b_data10 = _T_5551; // @[NV_NVDLA_CSC_dl_for_check.scala 1219:29:@3604.4]
  assign sc2mac_dat_b_data11 = _T_5555; // @[NV_NVDLA_CSC_dl_for_check.scala 1219:29:@3614.4]
  assign sc2mac_dat_b_data12 = _T_5559; // @[NV_NVDLA_CSC_dl_for_check.scala 1219:29:@3624.4]
  assign sc2mac_dat_b_data13 = _T_5563; // @[NV_NVDLA_CSC_dl_for_check.scala 1219:29:@3634.4]
  assign sc2mac_dat_b_data14 = _T_5567; // @[NV_NVDLA_CSC_dl_for_check.scala 1219:29:@3644.4]
  assign sc2mac_dat_b_data15 = _T_5571; // @[NV_NVDLA_CSC_dl_for_check.scala 1219:29:@3654.4]
  assign sc2mac_dat_b_data16 = _T_5575; // @[NV_NVDLA_CSC_dl_for_check.scala 1219:29:@3664.4]
  assign sc2mac_dat_b_data17 = _T_5579; // @[NV_NVDLA_CSC_dl_for_check.scala 1219:29:@3674.4]
  assign sc2mac_dat_b_data18 = _T_5583; // @[NV_NVDLA_CSC_dl_for_check.scala 1219:29:@3684.4]
  assign sc2mac_dat_b_data19 = _T_5587; // @[NV_NVDLA_CSC_dl_for_check.scala 1219:29:@3694.4]
  assign sc2mac_dat_b_data20 = _T_5591; // @[NV_NVDLA_CSC_dl_for_check.scala 1219:29:@3704.4]
  assign sc2mac_dat_b_data21 = _T_5595; // @[NV_NVDLA_CSC_dl_for_check.scala 1219:29:@3714.4]
  assign sc2mac_dat_b_data22 = _T_5599; // @[NV_NVDLA_CSC_dl_for_check.scala 1219:29:@3724.4]
  assign sc2mac_dat_b_data23 = _T_5603; // @[NV_NVDLA_CSC_dl_for_check.scala 1219:29:@3734.4]
  assign sc2mac_dat_b_data24 = _T_5607; // @[NV_NVDLA_CSC_dl_for_check.scala 1219:29:@3744.4]
  assign sc2mac_dat_b_data25 = _T_5611; // @[NV_NVDLA_CSC_dl_for_check.scala 1219:29:@3754.4]
  assign sc2mac_dat_b_data26 = _T_5615; // @[NV_NVDLA_CSC_dl_for_check.scala 1219:29:@3764.4]
  assign sc2mac_dat_b_data27 = _T_5619; // @[NV_NVDLA_CSC_dl_for_check.scala 1219:29:@3774.4]
  assign sc2mac_dat_b_data28 = _T_5623; // @[NV_NVDLA_CSC_dl_for_check.scala 1219:29:@3784.4]
  assign sc2mac_dat_b_data29 = _T_5627; // @[NV_NVDLA_CSC_dl_for_check.scala 1219:29:@3794.4]
  assign sc2mac_dat_b_data30 = _T_5631; // @[NV_NVDLA_CSC_dl_for_check.scala 1219:29:@3804.4]
  assign sc2mac_dat_b_data31 = _T_5635; // @[NV_NVDLA_CSC_dl_for_check.scala 1219:29:@3814.4]
  assign sc2mac_dat_b_data32 = _T_5639; // @[NV_NVDLA_CSC_dl_for_check.scala 1219:29:@3824.4]
  assign sc2mac_dat_b_data33 = _T_5643; // @[NV_NVDLA_CSC_dl_for_check.scala 1219:29:@3834.4]
  assign sc2mac_dat_b_data34 = _T_5647; // @[NV_NVDLA_CSC_dl_for_check.scala 1219:29:@3844.4]
  assign sc2mac_dat_b_data35 = _T_5651; // @[NV_NVDLA_CSC_dl_for_check.scala 1219:29:@3854.4]
  assign sc2mac_dat_b_data36 = _T_5655; // @[NV_NVDLA_CSC_dl_for_check.scala 1219:29:@3864.4]
  assign sc2mac_dat_b_data37 = _T_5659; // @[NV_NVDLA_CSC_dl_for_check.scala 1219:29:@3874.4]
  assign sc2mac_dat_b_data38 = _T_5663; // @[NV_NVDLA_CSC_dl_for_check.scala 1219:29:@3884.4]
  assign sc2mac_dat_b_data39 = _T_5667; // @[NV_NVDLA_CSC_dl_for_check.scala 1219:29:@3894.4]
  assign sc2mac_dat_b_data40 = _T_5671; // @[NV_NVDLA_CSC_dl_for_check.scala 1219:29:@3904.4]
  assign sc2mac_dat_b_data41 = _T_5675; // @[NV_NVDLA_CSC_dl_for_check.scala 1219:29:@3914.4]
  assign sc2mac_dat_b_data42 = _T_5679; // @[NV_NVDLA_CSC_dl_for_check.scala 1219:29:@3924.4]
  assign sc2mac_dat_b_data43 = _T_5683; // @[NV_NVDLA_CSC_dl_for_check.scala 1219:29:@3934.4]
  assign sc2mac_dat_b_data44 = _T_5687; // @[NV_NVDLA_CSC_dl_for_check.scala 1219:29:@3944.4]
  assign sc2mac_dat_b_data45 = _T_5691; // @[NV_NVDLA_CSC_dl_for_check.scala 1219:29:@3954.4]
  assign sc2mac_dat_b_data46 = _T_5695; // @[NV_NVDLA_CSC_dl_for_check.scala 1219:29:@3964.4]
  assign sc2mac_dat_b_data47 = _T_5699; // @[NV_NVDLA_CSC_dl_for_check.scala 1219:29:@3974.4]
  assign sc2mac_dat_b_data48 = _T_5703; // @[NV_NVDLA_CSC_dl_for_check.scala 1219:29:@3984.4]
  assign sc2mac_dat_b_data49 = _T_5707; // @[NV_NVDLA_CSC_dl_for_check.scala 1219:29:@3994.4]
  assign sc2mac_dat_b_data50 = _T_5711; // @[NV_NVDLA_CSC_dl_for_check.scala 1219:29:@4004.4]
  assign sc2mac_dat_b_data51 = _T_5715; // @[NV_NVDLA_CSC_dl_for_check.scala 1219:29:@4014.4]
  assign sc2mac_dat_b_data52 = _T_5719; // @[NV_NVDLA_CSC_dl_for_check.scala 1219:29:@4024.4]
  assign sc2mac_dat_b_data53 = _T_5723; // @[NV_NVDLA_CSC_dl_for_check.scala 1219:29:@4034.4]
  assign sc2mac_dat_b_data54 = _T_5727; // @[NV_NVDLA_CSC_dl_for_check.scala 1219:29:@4044.4]
  assign sc2mac_dat_b_data55 = _T_5731; // @[NV_NVDLA_CSC_dl_for_check.scala 1219:29:@4054.4]
  assign sc2mac_dat_b_data56 = _T_5735; // @[NV_NVDLA_CSC_dl_for_check.scala 1219:29:@4064.4]
  assign sc2mac_dat_b_data57 = _T_5739; // @[NV_NVDLA_CSC_dl_for_check.scala 1219:29:@4074.4]
  assign sc2mac_dat_b_data58 = _T_5743; // @[NV_NVDLA_CSC_dl_for_check.scala 1219:29:@4084.4]
  assign sc2mac_dat_b_data59 = _T_5747; // @[NV_NVDLA_CSC_dl_for_check.scala 1219:29:@4094.4]
  assign sc2mac_dat_b_data60 = _T_5751; // @[NV_NVDLA_CSC_dl_for_check.scala 1219:29:@4104.4]
  assign sc2mac_dat_b_data61 = _T_5755; // @[NV_NVDLA_CSC_dl_for_check.scala 1219:29:@4114.4]
  assign sc2mac_dat_b_data62 = _T_5759; // @[NV_NVDLA_CSC_dl_for_check.scala 1219:29:@4124.4]
  assign sc2mac_dat_b_data63 = _T_5763; // @[NV_NVDLA_CSC_dl_for_check.scala 1219:29:@4134.4]
  assign sc2mac_dat_b_pd = _T_4453; // @[NV_NVDLA_CSC_dl_for_check.scala 1214:20:@3100.4]
  assign slcg_wg_en = 1'h0; // @[NV_NVDLA_CSC_dl_for_check.scala 260:15:@226.4]
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
  _RAND_11 = {1{`RANDOM}};
  is_winograd_d1 = _RAND_11[21:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_12 = {2{`RANDOM}};
  is_img_d1 = _RAND_12[33:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_13 = {1{`RANDOM}};
  data_bank = _RAND_13[4:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_14 = {1{`RANDOM}};
  datain_width = _RAND_14[13:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_15 = {1{`RANDOM}};
  datain_width_cmp = _RAND_15[12:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_16 = {1{`RANDOM}};
  datain_height_cmp = _RAND_16[12:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_17 = {1{`RANDOM}};
  datain_channel_cmp = _RAND_17[12:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_18 = {1{`RANDOM}};
  sub_h_total_g0 = _RAND_18[2:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_19 = {1{`RANDOM}};
  sub_h_total_g1 = _RAND_19[2:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_20 = {1{`RANDOM}};
  sub_h_total_g2 = _RAND_20[1:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_21 = {1{`RANDOM}};
  sub_h_total_g3 = _RAND_21[2:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_22 = {1{`RANDOM}};
  sub_h_total_g4 = _RAND_22[2:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_23 = {1{`RANDOM}};
  sub_h_total_g5 = _RAND_23[2:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_24 = {1{`RANDOM}};
  sub_h_total_g6 = _RAND_24[2:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_25 = {1{`RANDOM}};
  sub_h_total_g8 = _RAND_25[2:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_26 = {1{`RANDOM}};
  sub_h_total_g9 = _RAND_26[2:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_27 = {1{`RANDOM}};
  sub_h_total_g11 = _RAND_27[2:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_28 = {1{`RANDOM}};
  sub_h_cmp_g0 = _RAND_28[2:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_29 = {1{`RANDOM}};
  sub_h_cmp_g1 = _RAND_29[2:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_30 = {1{`RANDOM}};
  conv_x_stride = _RAND_30[3:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_31 = {1{`RANDOM}};
  conv_y_stride = _RAND_31[3:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_32 = {1{`RANDOM}};
  batch_cmp = _RAND_32[4:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_33 = {1{`RANDOM}};
  pixel_x_init = _RAND_33[5:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_34 = {1{`RANDOM}};
  pixel_x_init_offset = _RAND_34[6:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_35 = {1{`RANDOM}};
  pixel_x_add = _RAND_35[6:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_36 = {1{`RANDOM}};
  pixel_x_byte_stride = _RAND_36[6:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_37 = {1{`RANDOM}};
  pixel_ch_stride = _RAND_37[11:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_38 = {1{`RANDOM}};
  x_dilate = _RAND_38[5:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_39 = {1{`RANDOM}};
  y_dilate = _RAND_39[5:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_40 = {1{`RANDOM}};
  pad_value = _RAND_40[15:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_41 = {1{`RANDOM}};
  entries_cmp = _RAND_41[14:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_42 = {1{`RANDOM}};
  h_bias_2_stride = _RAND_42[12:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_43 = {1{`RANDOM}};
  h_bias_3_stride = _RAND_43[12:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_44 = {1{`RANDOM}};
  last_slices = _RAND_44[13:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_45 = {1{`RANDOM}};
  last_entries = _RAND_45[12:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_46 = {1{`RANDOM}};
  dat_entry_st = _RAND_46[14:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_47 = {1{`RANDOM}};
  dat_rsp_l3_pvld = _RAND_47[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_48 = {1{`RANDOM}};
  dat_rsp_l1_pvld = _RAND_48[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_49 = {1{`RANDOM}};
  dat_rsp_l0_pvld = _RAND_49[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_50 = {1{`RANDOM}};
  _T_1367 = _RAND_50[26:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_51 = {1{`RANDOM}};
  _T_1361 = _RAND_51[26:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_52 = {1{`RANDOM}};
  _T_1358 = _RAND_52[26:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_53 = {1{`RANDOM}};
  _T_513 = _RAND_53[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_54 = {1{`RANDOM}};
  _T_516 = _RAND_54[13:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_55 = {1{`RANDOM}};
  _T_519 = _RAND_55[14:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_56 = {1{`RANDOM}};
  _T_524 = _RAND_56[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_57 = {1{`RANDOM}};
  _T_527 = _RAND_57[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_58 = {1{`RANDOM}};
  _T_530 = _RAND_58[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_59 = {1{`RANDOM}};
  _T_533 = _RAND_59[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_60 = {1{`RANDOM}};
  _T_536 = _RAND_60[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_61 = {1{`RANDOM}};
  _T_541 = _RAND_61[30:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_62 = {1{`RANDOM}};
  _T_544 = _RAND_62[30:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_63 = {1{`RANDOM}};
  _T_547 = _RAND_63[30:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_64 = {1{`RANDOM}};
  _T_550 = _RAND_64[30:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_65 = {1{`RANDOM}};
  _T_553 = _RAND_65[30:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_66 = {1{`RANDOM}};
  _T_560 = _RAND_66[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_67 = {1{`RANDOM}};
  _T_563 = _RAND_67[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_68 = {1{`RANDOM}};
  _T_566 = _RAND_68[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_69 = {1{`RANDOM}};
  _T_569 = _RAND_69[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_70 = {1{`RANDOM}};
  _T_574 = _RAND_70[30:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_71 = {1{`RANDOM}};
  _T_577 = _RAND_71[30:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_72 = {1{`RANDOM}};
  _T_580 = _RAND_72[30:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_73 = {1{`RANDOM}};
  _T_583 = _RAND_73[30:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_74 = {1{`RANDOM}};
  batch_cnt = _RAND_74[4:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_75 = {1{`RANDOM}};
  stripe_cnt = _RAND_75[6:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_76 = {1{`RANDOM}};
  sub_h_cnt = _RAND_76[1:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_77 = {1{`RANDOM}};
  dat_exec_valid_d1 = _RAND_77[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_78 = {1{`RANDOM}};
  dat_pipe_local_valid = _RAND_78[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_79 = {1{`RANDOM}};
  dat_pipe_valid_d1 = _RAND_79[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_80 = {1{`RANDOM}};
  dat_req_bytes_d1 = _RAND_80[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_81 = {1{`RANDOM}};
  dataout_w_cnt = _RAND_81[12:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_82 = {1{`RANDOM}};
  dataout_w_ori = _RAND_82[12:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_83 = {1{`RANDOM}};
  datain_c_cnt = _RAND_83[10:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_84 = {1{`RANDOM}};
  datain_w_cnt = _RAND_84[13:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_85 = {1{`RANDOM}};
  datain_w_ori = _RAND_85[13:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_86 = {1{`RANDOM}};
  pixel_w_cnt = _RAND_86[15:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_87 = {1{`RANDOM}};
  pixel_w_ori = _RAND_87[15:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_88 = {1{`RANDOM}};
  pixel_w_ch_ori = _RAND_88[15:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_89 = {1{`RANDOM}};
  channel_op_cnt = _RAND_89[12:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_90 = {1{`RANDOM}};
  pixel_force_clr_d1 = _RAND_90[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_91 = {1{`RANDOM}};
  pixel_force_fetch_d1 = _RAND_91[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_92 = {1{`RANDOM}};
  datain_h_cnt = _RAND_92[13:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_93 = {1{`RANDOM}};
  datain_h_ori = _RAND_93[13:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_94 = {1{`RANDOM}};
  dat_req_valid_d1 = _RAND_94[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_95 = {1{`RANDOM}};
  dat_req_sub_w_d1 = _RAND_95[1:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_96 = {1{`RANDOM}};
  dat_req_sub_h_d1 = _RAND_96[1:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_97 = {1{`RANDOM}};
  dat_req_sub_c_d1 = _RAND_97[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_98 = {1{`RANDOM}};
  dat_req_ch_end_d1 = _RAND_98[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_99 = {1{`RANDOM}};
  dat_req_dummy_d1 = _RAND_99[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_100 = {1{`RANDOM}};
  dat_req_cur_sub_h_d1 = _RAND_100[1:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_101 = {1{`RANDOM}};
  dat_req_sub_w_st_d1 = _RAND_101[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_102 = {1{`RANDOM}};
  dat_req_flag_d1 = _RAND_102[8:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_103 = {1{`RANDOM}};
  dat_req_rls_d1 = _RAND_103[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_104 = {1{`RANDOM}};
  c_bias = _RAND_104[12:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_105 = {1{`RANDOM}};
  c_bias_d1 = _RAND_105[12:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_106 = {1{`RANDOM}};
  h_bias_0_d1 = _RAND_106[12:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_107 = {1{`RANDOM}};
  h_bias_1_d1 = _RAND_107[12:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_108 = {1{`RANDOM}};
  h_bias_2_d1 = _RAND_108[12:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_109 = {1{`RANDOM}};
  h_bias_3_d1 = _RAND_109[12:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_110 = {1{`RANDOM}};
  w_bias_d1 = _RAND_110[12:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_111 = {1{`RANDOM}};
  dat_req_sub_h_addr_0 = _RAND_111[12:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_112 = {1{`RANDOM}};
  dat_req_sub_h_addr_1 = _RAND_112[12:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_113 = {1{`RANDOM}};
  dat_req_sub_h_addr_2 = _RAND_113[12:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_114 = {1{`RANDOM}};
  dat_req_sub_h_addr_3 = _RAND_114[12:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_115 = {1{`RANDOM}};
  sc2buf_dat_rd_en_out = _RAND_115[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_116 = {1{`RANDOM}};
  sc2buf_dat_rd_addr_out = _RAND_116[18:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_117 = {1{`RANDOM}};
  dat_req_pipe_pvld = _RAND_117[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_118 = {1{`RANDOM}};
  dat_req_exec_pvld = _RAND_118[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_119 = {1{`RANDOM}};
  dat_req_exec_dummy = _RAND_119[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_120 = {1{`RANDOM}};
  dat_req_pipe_sub_w = _RAND_120[1:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_121 = {1{`RANDOM}};
  dat_req_pipe_sub_h = _RAND_121[1:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_122 = {1{`RANDOM}};
  dat_req_pipe_sub_c = _RAND_122[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_123 = {1{`RANDOM}};
  dat_req_pipe_ch_end = _RAND_123[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_124 = {1{`RANDOM}};
  dat_req_pipe_bytes = _RAND_124[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_125 = {1{`RANDOM}};
  dat_req_pipe_dummy = _RAND_125[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_126 = {1{`RANDOM}};
  dat_req_pipe_cur_sub_h = _RAND_126[1:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_127 = {1{`RANDOM}};
  dat_req_pipe_sub_w_st = _RAND_127[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_128 = {1{`RANDOM}};
  dat_req_pipe_rls = _RAND_128[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_129 = {1{`RANDOM}};
  dat_req_pipe_flag = _RAND_129[8:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_130 = {1{`RANDOM}};
  _T_1136 = _RAND_130[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_131 = {1{`RANDOM}};
  _T_1139 = _RAND_131[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_132 = {1{`RANDOM}};
  _T_1142 = _RAND_132[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_133 = {1{`RANDOM}};
  _T_1145 = _RAND_133[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_134 = {1{`RANDOM}};
  _T_1148 = _RAND_134[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_135 = {1{`RANDOM}};
  dat_rsp_pipe_pvld = _RAND_135[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_136 = {1{`RANDOM}};
  _T_1155 = _RAND_136[28:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_137 = {1{`RANDOM}};
  _T_1158 = _RAND_137[28:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_138 = {1{`RANDOM}};
  _T_1161 = _RAND_138[28:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_139 = {1{`RANDOM}};
  _T_1164 = _RAND_139[28:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_140 = {1{`RANDOM}};
  _T_1167 = _RAND_140[28:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_141 = {1{`RANDOM}};
  dat_rsp_pipe_pd = _RAND_141[28:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_142 = {1{`RANDOM}};
  _T_1174 = _RAND_142[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_143 = {1{`RANDOM}};
  _T_1177 = _RAND_143[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_144 = {1{`RANDOM}};
  _T_1180 = _RAND_144[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_145 = {1{`RANDOM}};
  _T_1183 = _RAND_145[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_146 = {1{`RANDOM}};
  _T_1186 = _RAND_146[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_147 = {1{`RANDOM}};
  dat_rsp_exec_pvld = _RAND_147[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_148 = {1{`RANDOM}};
  _T_1193 = _RAND_148[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_149 = {1{`RANDOM}};
  _T_1196 = _RAND_149[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_150 = {1{`RANDOM}};
  _T_1199 = _RAND_150[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_151 = {1{`RANDOM}};
  _T_1202 = _RAND_151[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_152 = {1{`RANDOM}};
  _T_1205 = _RAND_152[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_153 = {1{`RANDOM}};
  dat_rsp_exec_dummy = _RAND_153[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_154 = {1{`RANDOM}};
  _T_1212 = _RAND_154[1:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_155 = {1{`RANDOM}};
  _T_1215 = _RAND_155[1:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_156 = {1{`RANDOM}};
  _T_1218 = _RAND_156[1:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_157 = {1{`RANDOM}};
  _T_1221 = _RAND_157[1:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_158 = {1{`RANDOM}};
  _T_1224 = _RAND_158[1:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_159 = {1{`RANDOM}};
  dat_rsp_exec_sub_h = _RAND_159[1:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_160 = {1{`RANDOM}};
  dat_l0c0_dummy = _RAND_160[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_161 = {1{`RANDOM}};
  dat_l1c0_dummy = _RAND_161[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_162 = {1{`RANDOM}};
  dat_l2c0_dummy = _RAND_162[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_163 = {1{`RANDOM}};
  dat_l3c0_dummy = _RAND_163[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_164 = {1{`RANDOM}};
  dat_l0c1_dummy = _RAND_164[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_165 = {1{`RANDOM}};
  dat_l1c1_dummy = _RAND_165[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_166 = {1{`RANDOM}};
  dat_l2c1_dummy = _RAND_166[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_167 = {1{`RANDOM}};
  dat_l3c1_dummy = _RAND_167[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_168 = {16{`RANDOM}};
  dat_l0c0 = _RAND_168[511:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_169 = {16{`RANDOM}};
  dat_l1c0 = _RAND_169[511:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_170 = {16{`RANDOM}};
  dat_l2c0 = _RAND_170[511:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_171 = {16{`RANDOM}};
  dat_l3c0 = _RAND_171[511:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_172 = {16{`RANDOM}};
  dat_l0c1 = _RAND_172[511:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_173 = {16{`RANDOM}};
  dat_l1c1 = _RAND_173[511:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_174 = {16{`RANDOM}};
  dat_l2c1 = _RAND_174[511:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_175 = {16{`RANDOM}};
  dat_l3c1 = _RAND_175[511:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_176 = {1{`RANDOM}};
  rsp_sft_cnt_l0 = _RAND_176[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_177 = {1{`RANDOM}};
  rsp_sft_cnt_l1 = _RAND_177[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_178 = {1{`RANDOM}};
  rsp_sft_cnt_l2 = _RAND_178[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_179 = {1{`RANDOM}};
  rsp_sft_cnt_l3 = _RAND_179[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_180 = {1{`RANDOM}};
  rsp_sft_cnt_l0_ori = _RAND_180[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_181 = {1{`RANDOM}};
  rsp_sft_cnt_l1_ori = _RAND_181[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_182 = {1{`RANDOM}};
  rsp_sft_cnt_l2_ori = _RAND_182[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_183 = {1{`RANDOM}};
  rsp_sft_cnt_l3_ori = _RAND_183[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_184 = {1{`RANDOM}};
  dat_rsp_l2_pvld = _RAND_184[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_185 = {1{`RANDOM}};
  _T_1364 = _RAND_185[26:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_186 = {8{`RANDOM}};
  dat_rsp_l0_sft_d1 = _RAND_186[255:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_187 = {4{`RANDOM}};
  dat_rsp_l0_sft_d2 = _RAND_187[127:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_188 = {4{`RANDOM}};
  dat_rsp_l0_sft_d3 = _RAND_188[127:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_189 = {4{`RANDOM}};
  dat_rsp_l1_sft_d2 = _RAND_189[127:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_190 = {4{`RANDOM}};
  dat_rsp_l1_sft_d3 = _RAND_190[127:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_191 = {4{`RANDOM}};
  dat_rsp_l2_sft_d3 = _RAND_191[127:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_192 = {1{`RANDOM}};
  dat_out_pvld = _RAND_192[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_193 = {1{`RANDOM}};
  dat_out_flag = _RAND_193[8:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_194 = {1{`RANDOM}};
  dat_out_bypass_mask_0 = _RAND_194[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_195 = {1{`RANDOM}};
  dat_out_bypass_mask_1 = _RAND_195[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_196 = {1{`RANDOM}};
  dat_out_bypass_mask_2 = _RAND_196[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_197 = {1{`RANDOM}};
  dat_out_bypass_mask_3 = _RAND_197[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_198 = {1{`RANDOM}};
  dat_out_bypass_mask_4 = _RAND_198[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_199 = {1{`RANDOM}};
  dat_out_bypass_mask_5 = _RAND_199[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_200 = {1{`RANDOM}};
  dat_out_bypass_mask_6 = _RAND_200[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_201 = {1{`RANDOM}};
  dat_out_bypass_mask_7 = _RAND_201[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_202 = {1{`RANDOM}};
  dat_out_bypass_mask_8 = _RAND_202[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_203 = {1{`RANDOM}};
  dat_out_bypass_mask_9 = _RAND_203[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_204 = {1{`RANDOM}};
  dat_out_bypass_mask_10 = _RAND_204[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_205 = {1{`RANDOM}};
  dat_out_bypass_mask_11 = _RAND_205[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_206 = {1{`RANDOM}};
  dat_out_bypass_mask_12 = _RAND_206[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_207 = {1{`RANDOM}};
  dat_out_bypass_mask_13 = _RAND_207[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_208 = {1{`RANDOM}};
  dat_out_bypass_mask_14 = _RAND_208[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_209 = {1{`RANDOM}};
  dat_out_bypass_mask_15 = _RAND_209[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_210 = {1{`RANDOM}};
  dat_out_bypass_mask_16 = _RAND_210[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_211 = {1{`RANDOM}};
  dat_out_bypass_mask_17 = _RAND_211[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_212 = {1{`RANDOM}};
  dat_out_bypass_mask_18 = _RAND_212[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_213 = {1{`RANDOM}};
  dat_out_bypass_mask_19 = _RAND_213[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_214 = {1{`RANDOM}};
  dat_out_bypass_mask_20 = _RAND_214[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_215 = {1{`RANDOM}};
  dat_out_bypass_mask_21 = _RAND_215[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_216 = {1{`RANDOM}};
  dat_out_bypass_mask_22 = _RAND_216[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_217 = {1{`RANDOM}};
  dat_out_bypass_mask_23 = _RAND_217[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_218 = {1{`RANDOM}};
  dat_out_bypass_mask_24 = _RAND_218[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_219 = {1{`RANDOM}};
  dat_out_bypass_mask_25 = _RAND_219[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_220 = {1{`RANDOM}};
  dat_out_bypass_mask_26 = _RAND_220[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_221 = {1{`RANDOM}};
  dat_out_bypass_mask_27 = _RAND_221[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_222 = {1{`RANDOM}};
  dat_out_bypass_mask_28 = _RAND_222[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_223 = {1{`RANDOM}};
  dat_out_bypass_mask_29 = _RAND_223[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_224 = {1{`RANDOM}};
  dat_out_bypass_mask_30 = _RAND_224[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_225 = {1{`RANDOM}};
  dat_out_bypass_mask_31 = _RAND_225[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_226 = {1{`RANDOM}};
  dat_out_bypass_mask_32 = _RAND_226[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_227 = {1{`RANDOM}};
  dat_out_bypass_mask_33 = _RAND_227[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_228 = {1{`RANDOM}};
  dat_out_bypass_mask_34 = _RAND_228[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_229 = {1{`RANDOM}};
  dat_out_bypass_mask_35 = _RAND_229[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_230 = {1{`RANDOM}};
  dat_out_bypass_mask_36 = _RAND_230[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_231 = {1{`RANDOM}};
  dat_out_bypass_mask_37 = _RAND_231[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_232 = {1{`RANDOM}};
  dat_out_bypass_mask_38 = _RAND_232[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_233 = {1{`RANDOM}};
  dat_out_bypass_mask_39 = _RAND_233[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_234 = {1{`RANDOM}};
  dat_out_bypass_mask_40 = _RAND_234[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_235 = {1{`RANDOM}};
  dat_out_bypass_mask_41 = _RAND_235[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_236 = {1{`RANDOM}};
  dat_out_bypass_mask_42 = _RAND_236[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_237 = {1{`RANDOM}};
  dat_out_bypass_mask_43 = _RAND_237[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_238 = {1{`RANDOM}};
  dat_out_bypass_mask_44 = _RAND_238[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_239 = {1{`RANDOM}};
  dat_out_bypass_mask_45 = _RAND_239[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_240 = {1{`RANDOM}};
  dat_out_bypass_mask_46 = _RAND_240[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_241 = {1{`RANDOM}};
  dat_out_bypass_mask_47 = _RAND_241[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_242 = {1{`RANDOM}};
  dat_out_bypass_mask_48 = _RAND_242[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_243 = {1{`RANDOM}};
  dat_out_bypass_mask_49 = _RAND_243[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_244 = {1{`RANDOM}};
  dat_out_bypass_mask_50 = _RAND_244[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_245 = {1{`RANDOM}};
  dat_out_bypass_mask_51 = _RAND_245[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_246 = {1{`RANDOM}};
  dat_out_bypass_mask_52 = _RAND_246[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_247 = {1{`RANDOM}};
  dat_out_bypass_mask_53 = _RAND_247[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_248 = {1{`RANDOM}};
  dat_out_bypass_mask_54 = _RAND_248[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_249 = {1{`RANDOM}};
  dat_out_bypass_mask_55 = _RAND_249[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_250 = {1{`RANDOM}};
  dat_out_bypass_mask_56 = _RAND_250[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_251 = {1{`RANDOM}};
  dat_out_bypass_mask_57 = _RAND_251[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_252 = {1{`RANDOM}};
  dat_out_bypass_mask_58 = _RAND_252[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_253 = {1{`RANDOM}};
  dat_out_bypass_mask_59 = _RAND_253[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_254 = {1{`RANDOM}};
  dat_out_bypass_mask_60 = _RAND_254[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_255 = {1{`RANDOM}};
  dat_out_bypass_mask_61 = _RAND_255[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_256 = {1{`RANDOM}};
  dat_out_bypass_mask_62 = _RAND_256[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_257 = {1{`RANDOM}};
  dat_out_bypass_mask_63 = _RAND_257[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_258 = {1{`RANDOM}};
  dat_out_bypass_data_0 = _RAND_258[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_259 = {1{`RANDOM}};
  dat_out_bypass_data_1 = _RAND_259[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_260 = {1{`RANDOM}};
  dat_out_bypass_data_2 = _RAND_260[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_261 = {1{`RANDOM}};
  dat_out_bypass_data_3 = _RAND_261[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_262 = {1{`RANDOM}};
  dat_out_bypass_data_4 = _RAND_262[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_263 = {1{`RANDOM}};
  dat_out_bypass_data_5 = _RAND_263[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_264 = {1{`RANDOM}};
  dat_out_bypass_data_6 = _RAND_264[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_265 = {1{`RANDOM}};
  dat_out_bypass_data_7 = _RAND_265[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_266 = {1{`RANDOM}};
  dat_out_bypass_data_8 = _RAND_266[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_267 = {1{`RANDOM}};
  dat_out_bypass_data_9 = _RAND_267[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_268 = {1{`RANDOM}};
  dat_out_bypass_data_10 = _RAND_268[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_269 = {1{`RANDOM}};
  dat_out_bypass_data_11 = _RAND_269[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_270 = {1{`RANDOM}};
  dat_out_bypass_data_12 = _RAND_270[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_271 = {1{`RANDOM}};
  dat_out_bypass_data_13 = _RAND_271[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_272 = {1{`RANDOM}};
  dat_out_bypass_data_14 = _RAND_272[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_273 = {1{`RANDOM}};
  dat_out_bypass_data_15 = _RAND_273[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_274 = {1{`RANDOM}};
  dat_out_bypass_data_16 = _RAND_274[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_275 = {1{`RANDOM}};
  dat_out_bypass_data_17 = _RAND_275[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_276 = {1{`RANDOM}};
  dat_out_bypass_data_18 = _RAND_276[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_277 = {1{`RANDOM}};
  dat_out_bypass_data_19 = _RAND_277[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_278 = {1{`RANDOM}};
  dat_out_bypass_data_20 = _RAND_278[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_279 = {1{`RANDOM}};
  dat_out_bypass_data_21 = _RAND_279[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_280 = {1{`RANDOM}};
  dat_out_bypass_data_22 = _RAND_280[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_281 = {1{`RANDOM}};
  dat_out_bypass_data_23 = _RAND_281[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_282 = {1{`RANDOM}};
  dat_out_bypass_data_24 = _RAND_282[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_283 = {1{`RANDOM}};
  dat_out_bypass_data_25 = _RAND_283[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_284 = {1{`RANDOM}};
  dat_out_bypass_data_26 = _RAND_284[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_285 = {1{`RANDOM}};
  dat_out_bypass_data_27 = _RAND_285[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_286 = {1{`RANDOM}};
  dat_out_bypass_data_28 = _RAND_286[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_287 = {1{`RANDOM}};
  dat_out_bypass_data_29 = _RAND_287[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_288 = {1{`RANDOM}};
  dat_out_bypass_data_30 = _RAND_288[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_289 = {1{`RANDOM}};
  dat_out_bypass_data_31 = _RAND_289[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_290 = {1{`RANDOM}};
  dat_out_bypass_data_32 = _RAND_290[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_291 = {1{`RANDOM}};
  dat_out_bypass_data_33 = _RAND_291[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_292 = {1{`RANDOM}};
  dat_out_bypass_data_34 = _RAND_292[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_293 = {1{`RANDOM}};
  dat_out_bypass_data_35 = _RAND_293[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_294 = {1{`RANDOM}};
  dat_out_bypass_data_36 = _RAND_294[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_295 = {1{`RANDOM}};
  dat_out_bypass_data_37 = _RAND_295[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_296 = {1{`RANDOM}};
  dat_out_bypass_data_38 = _RAND_296[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_297 = {1{`RANDOM}};
  dat_out_bypass_data_39 = _RAND_297[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_298 = {1{`RANDOM}};
  dat_out_bypass_data_40 = _RAND_298[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_299 = {1{`RANDOM}};
  dat_out_bypass_data_41 = _RAND_299[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_300 = {1{`RANDOM}};
  dat_out_bypass_data_42 = _RAND_300[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_301 = {1{`RANDOM}};
  dat_out_bypass_data_43 = _RAND_301[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_302 = {1{`RANDOM}};
  dat_out_bypass_data_44 = _RAND_302[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_303 = {1{`RANDOM}};
  dat_out_bypass_data_45 = _RAND_303[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_304 = {1{`RANDOM}};
  dat_out_bypass_data_46 = _RAND_304[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_305 = {1{`RANDOM}};
  dat_out_bypass_data_47 = _RAND_305[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_306 = {1{`RANDOM}};
  dat_out_bypass_data_48 = _RAND_306[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_307 = {1{`RANDOM}};
  dat_out_bypass_data_49 = _RAND_307[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_308 = {1{`RANDOM}};
  dat_out_bypass_data_50 = _RAND_308[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_309 = {1{`RANDOM}};
  dat_out_bypass_data_51 = _RAND_309[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_310 = {1{`RANDOM}};
  dat_out_bypass_data_52 = _RAND_310[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_311 = {1{`RANDOM}};
  dat_out_bypass_data_53 = _RAND_311[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_312 = {1{`RANDOM}};
  dat_out_bypass_data_54 = _RAND_312[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_313 = {1{`RANDOM}};
  dat_out_bypass_data_55 = _RAND_313[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_314 = {1{`RANDOM}};
  dat_out_bypass_data_56 = _RAND_314[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_315 = {1{`RANDOM}};
  dat_out_bypass_data_57 = _RAND_315[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_316 = {1{`RANDOM}};
  dat_out_bypass_data_58 = _RAND_316[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_317 = {1{`RANDOM}};
  dat_out_bypass_data_59 = _RAND_317[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_318 = {1{`RANDOM}};
  dat_out_bypass_data_60 = _RAND_318[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_319 = {1{`RANDOM}};
  dat_out_bypass_data_61 = _RAND_319[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_320 = {1{`RANDOM}};
  dat_out_bypass_data_62 = _RAND_320[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_321 = {1{`RANDOM}};
  dat_out_bypass_data_63 = _RAND_321[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_322 = {1{`RANDOM}};
  _T_3007 = _RAND_322[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_323 = {1{`RANDOM}};
  _T_3010 = _RAND_323[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_324 = {1{`RANDOM}};
  _T_3013 = _RAND_324[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_325 = {1{`RANDOM}};
  _T_3016 = _RAND_325[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_326 = {1{`RANDOM}};
  _T_3019 = _RAND_326[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_327 = {1{`RANDOM}};
  _T_3024 = _RAND_327[8:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_328 = {1{`RANDOM}};
  _T_3027 = _RAND_328[8:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_329 = {1{`RANDOM}};
  _T_3030 = _RAND_329[8:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_330 = {1{`RANDOM}};
  _T_3033 = _RAND_330[8:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_331 = {1{`RANDOM}};
  _T_3036 = _RAND_331[8:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_332 = {1{`RANDOM}};
  dl_out_pvld = _RAND_332[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_333 = {1{`RANDOM}};
  dl_out_mask_0 = _RAND_333[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_334 = {1{`RANDOM}};
  dl_out_mask_1 = _RAND_334[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_335 = {1{`RANDOM}};
  dl_out_mask_2 = _RAND_335[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_336 = {1{`RANDOM}};
  dl_out_mask_3 = _RAND_336[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_337 = {1{`RANDOM}};
  dl_out_mask_4 = _RAND_337[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_338 = {1{`RANDOM}};
  dl_out_mask_5 = _RAND_338[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_339 = {1{`RANDOM}};
  dl_out_mask_6 = _RAND_339[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_340 = {1{`RANDOM}};
  dl_out_mask_7 = _RAND_340[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_341 = {1{`RANDOM}};
  dl_out_mask_8 = _RAND_341[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_342 = {1{`RANDOM}};
  dl_out_mask_9 = _RAND_342[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_343 = {1{`RANDOM}};
  dl_out_mask_10 = _RAND_343[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_344 = {1{`RANDOM}};
  dl_out_mask_11 = _RAND_344[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_345 = {1{`RANDOM}};
  dl_out_mask_12 = _RAND_345[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_346 = {1{`RANDOM}};
  dl_out_mask_13 = _RAND_346[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_347 = {1{`RANDOM}};
  dl_out_mask_14 = _RAND_347[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_348 = {1{`RANDOM}};
  dl_out_mask_15 = _RAND_348[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_349 = {1{`RANDOM}};
  dl_out_mask_16 = _RAND_349[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_350 = {1{`RANDOM}};
  dl_out_mask_17 = _RAND_350[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_351 = {1{`RANDOM}};
  dl_out_mask_18 = _RAND_351[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_352 = {1{`RANDOM}};
  dl_out_mask_19 = _RAND_352[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_353 = {1{`RANDOM}};
  dl_out_mask_20 = _RAND_353[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_354 = {1{`RANDOM}};
  dl_out_mask_21 = _RAND_354[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_355 = {1{`RANDOM}};
  dl_out_mask_22 = _RAND_355[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_356 = {1{`RANDOM}};
  dl_out_mask_23 = _RAND_356[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_357 = {1{`RANDOM}};
  dl_out_mask_24 = _RAND_357[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_358 = {1{`RANDOM}};
  dl_out_mask_25 = _RAND_358[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_359 = {1{`RANDOM}};
  dl_out_mask_26 = _RAND_359[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_360 = {1{`RANDOM}};
  dl_out_mask_27 = _RAND_360[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_361 = {1{`RANDOM}};
  dl_out_mask_28 = _RAND_361[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_362 = {1{`RANDOM}};
  dl_out_mask_29 = _RAND_362[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_363 = {1{`RANDOM}};
  dl_out_mask_30 = _RAND_363[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_364 = {1{`RANDOM}};
  dl_out_mask_31 = _RAND_364[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_365 = {1{`RANDOM}};
  dl_out_mask_32 = _RAND_365[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_366 = {1{`RANDOM}};
  dl_out_mask_33 = _RAND_366[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_367 = {1{`RANDOM}};
  dl_out_mask_34 = _RAND_367[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_368 = {1{`RANDOM}};
  dl_out_mask_35 = _RAND_368[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_369 = {1{`RANDOM}};
  dl_out_mask_36 = _RAND_369[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_370 = {1{`RANDOM}};
  dl_out_mask_37 = _RAND_370[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_371 = {1{`RANDOM}};
  dl_out_mask_38 = _RAND_371[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_372 = {1{`RANDOM}};
  dl_out_mask_39 = _RAND_372[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_373 = {1{`RANDOM}};
  dl_out_mask_40 = _RAND_373[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_374 = {1{`RANDOM}};
  dl_out_mask_41 = _RAND_374[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_375 = {1{`RANDOM}};
  dl_out_mask_42 = _RAND_375[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_376 = {1{`RANDOM}};
  dl_out_mask_43 = _RAND_376[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_377 = {1{`RANDOM}};
  dl_out_mask_44 = _RAND_377[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_378 = {1{`RANDOM}};
  dl_out_mask_45 = _RAND_378[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_379 = {1{`RANDOM}};
  dl_out_mask_46 = _RAND_379[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_380 = {1{`RANDOM}};
  dl_out_mask_47 = _RAND_380[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_381 = {1{`RANDOM}};
  dl_out_mask_48 = _RAND_381[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_382 = {1{`RANDOM}};
  dl_out_mask_49 = _RAND_382[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_383 = {1{`RANDOM}};
  dl_out_mask_50 = _RAND_383[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_384 = {1{`RANDOM}};
  dl_out_mask_51 = _RAND_384[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_385 = {1{`RANDOM}};
  dl_out_mask_52 = _RAND_385[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_386 = {1{`RANDOM}};
  dl_out_mask_53 = _RAND_386[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_387 = {1{`RANDOM}};
  dl_out_mask_54 = _RAND_387[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_388 = {1{`RANDOM}};
  dl_out_mask_55 = _RAND_388[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_389 = {1{`RANDOM}};
  dl_out_mask_56 = _RAND_389[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_390 = {1{`RANDOM}};
  dl_out_mask_57 = _RAND_390[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_391 = {1{`RANDOM}};
  dl_out_mask_58 = _RAND_391[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_392 = {1{`RANDOM}};
  dl_out_mask_59 = _RAND_392[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_393 = {1{`RANDOM}};
  dl_out_mask_60 = _RAND_393[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_394 = {1{`RANDOM}};
  dl_out_mask_61 = _RAND_394[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_395 = {1{`RANDOM}};
  dl_out_mask_62 = _RAND_395[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_396 = {1{`RANDOM}};
  dl_out_mask_63 = _RAND_396[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_397 = {1{`RANDOM}};
  dl_out_flag = _RAND_397[8:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_398 = {1{`RANDOM}};
  dl_out_data_0 = _RAND_398[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_399 = {1{`RANDOM}};
  dl_out_data_1 = _RAND_399[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_400 = {1{`RANDOM}};
  dl_out_data_2 = _RAND_400[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_401 = {1{`RANDOM}};
  dl_out_data_3 = _RAND_401[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_402 = {1{`RANDOM}};
  dl_out_data_4 = _RAND_402[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_403 = {1{`RANDOM}};
  dl_out_data_5 = _RAND_403[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_404 = {1{`RANDOM}};
  dl_out_data_6 = _RAND_404[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_405 = {1{`RANDOM}};
  dl_out_data_7 = _RAND_405[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_406 = {1{`RANDOM}};
  dl_out_data_8 = _RAND_406[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_407 = {1{`RANDOM}};
  dl_out_data_9 = _RAND_407[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_408 = {1{`RANDOM}};
  dl_out_data_10 = _RAND_408[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_409 = {1{`RANDOM}};
  dl_out_data_11 = _RAND_409[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_410 = {1{`RANDOM}};
  dl_out_data_12 = _RAND_410[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_411 = {1{`RANDOM}};
  dl_out_data_13 = _RAND_411[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_412 = {1{`RANDOM}};
  dl_out_data_14 = _RAND_412[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_413 = {1{`RANDOM}};
  dl_out_data_15 = _RAND_413[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_414 = {1{`RANDOM}};
  dl_out_data_16 = _RAND_414[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_415 = {1{`RANDOM}};
  dl_out_data_17 = _RAND_415[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_416 = {1{`RANDOM}};
  dl_out_data_18 = _RAND_416[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_417 = {1{`RANDOM}};
  dl_out_data_19 = _RAND_417[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_418 = {1{`RANDOM}};
  dl_out_data_20 = _RAND_418[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_419 = {1{`RANDOM}};
  dl_out_data_21 = _RAND_419[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_420 = {1{`RANDOM}};
  dl_out_data_22 = _RAND_420[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_421 = {1{`RANDOM}};
  dl_out_data_23 = _RAND_421[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_422 = {1{`RANDOM}};
  dl_out_data_24 = _RAND_422[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_423 = {1{`RANDOM}};
  dl_out_data_25 = _RAND_423[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_424 = {1{`RANDOM}};
  dl_out_data_26 = _RAND_424[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_425 = {1{`RANDOM}};
  dl_out_data_27 = _RAND_425[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_426 = {1{`RANDOM}};
  dl_out_data_28 = _RAND_426[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_427 = {1{`RANDOM}};
  dl_out_data_29 = _RAND_427[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_428 = {1{`RANDOM}};
  dl_out_data_30 = _RAND_428[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_429 = {1{`RANDOM}};
  dl_out_data_31 = _RAND_429[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_430 = {1{`RANDOM}};
  dl_out_data_32 = _RAND_430[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_431 = {1{`RANDOM}};
  dl_out_data_33 = _RAND_431[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_432 = {1{`RANDOM}};
  dl_out_data_34 = _RAND_432[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_433 = {1{`RANDOM}};
  dl_out_data_35 = _RAND_433[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_434 = {1{`RANDOM}};
  dl_out_data_36 = _RAND_434[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_435 = {1{`RANDOM}};
  dl_out_data_37 = _RAND_435[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_436 = {1{`RANDOM}};
  dl_out_data_38 = _RAND_436[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_437 = {1{`RANDOM}};
  dl_out_data_39 = _RAND_437[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_438 = {1{`RANDOM}};
  dl_out_data_40 = _RAND_438[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_439 = {1{`RANDOM}};
  dl_out_data_41 = _RAND_439[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_440 = {1{`RANDOM}};
  dl_out_data_42 = _RAND_440[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_441 = {1{`RANDOM}};
  dl_out_data_43 = _RAND_441[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_442 = {1{`RANDOM}};
  dl_out_data_44 = _RAND_442[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_443 = {1{`RANDOM}};
  dl_out_data_45 = _RAND_443[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_444 = {1{`RANDOM}};
  dl_out_data_46 = _RAND_444[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_445 = {1{`RANDOM}};
  dl_out_data_47 = _RAND_445[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_446 = {1{`RANDOM}};
  dl_out_data_48 = _RAND_446[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_447 = {1{`RANDOM}};
  dl_out_data_49 = _RAND_447[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_448 = {1{`RANDOM}};
  dl_out_data_50 = _RAND_448[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_449 = {1{`RANDOM}};
  dl_out_data_51 = _RAND_449[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_450 = {1{`RANDOM}};
  dl_out_data_52 = _RAND_450[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_451 = {1{`RANDOM}};
  dl_out_data_53 = _RAND_451[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_452 = {1{`RANDOM}};
  dl_out_data_54 = _RAND_452[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_453 = {1{`RANDOM}};
  dl_out_data_55 = _RAND_453[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_454 = {1{`RANDOM}};
  dl_out_data_56 = _RAND_454[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_455 = {1{`RANDOM}};
  dl_out_data_57 = _RAND_455[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_456 = {1{`RANDOM}};
  dl_out_data_58 = _RAND_456[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_457 = {1{`RANDOM}};
  dl_out_data_59 = _RAND_457[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_458 = {1{`RANDOM}};
  dl_out_data_60 = _RAND_458[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_459 = {1{`RANDOM}};
  dl_out_data_61 = _RAND_459[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_460 = {1{`RANDOM}};
  dl_out_data_62 = _RAND_460[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_461 = {1{`RANDOM}};
  dl_out_data_63 = _RAND_461[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_462 = {1{`RANDOM}};
  dl_out_pvld_d1 = _RAND_462[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_463 = {1{`RANDOM}};
  _T_4442 = _RAND_463[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_464 = {1{`RANDOM}};
  _T_4445 = _RAND_464[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_465 = {1{`RANDOM}};
  _T_4449 = _RAND_465[8:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_466 = {1{`RANDOM}};
  _T_4453 = _RAND_466[8:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_467 = {1{`RANDOM}};
  _T_4721_0 = _RAND_467[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_468 = {1{`RANDOM}};
  _T_4721_1 = _RAND_468[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_469 = {1{`RANDOM}};
  _T_4721_2 = _RAND_469[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_470 = {1{`RANDOM}};
  _T_4721_3 = _RAND_470[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_471 = {1{`RANDOM}};
  _T_4721_4 = _RAND_471[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_472 = {1{`RANDOM}};
  _T_4721_5 = _RAND_472[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_473 = {1{`RANDOM}};
  _T_4721_6 = _RAND_473[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_474 = {1{`RANDOM}};
  _T_4721_7 = _RAND_474[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_475 = {1{`RANDOM}};
  _T_4721_8 = _RAND_475[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_476 = {1{`RANDOM}};
  _T_4721_9 = _RAND_476[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_477 = {1{`RANDOM}};
  _T_4721_10 = _RAND_477[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_478 = {1{`RANDOM}};
  _T_4721_11 = _RAND_478[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_479 = {1{`RANDOM}};
  _T_4721_12 = _RAND_479[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_480 = {1{`RANDOM}};
  _T_4721_13 = _RAND_480[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_481 = {1{`RANDOM}};
  _T_4721_14 = _RAND_481[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_482 = {1{`RANDOM}};
  _T_4721_15 = _RAND_482[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_483 = {1{`RANDOM}};
  _T_4721_16 = _RAND_483[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_484 = {1{`RANDOM}};
  _T_4721_17 = _RAND_484[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_485 = {1{`RANDOM}};
  _T_4721_18 = _RAND_485[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_486 = {1{`RANDOM}};
  _T_4721_19 = _RAND_486[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_487 = {1{`RANDOM}};
  _T_4721_20 = _RAND_487[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_488 = {1{`RANDOM}};
  _T_4721_21 = _RAND_488[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_489 = {1{`RANDOM}};
  _T_4721_22 = _RAND_489[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_490 = {1{`RANDOM}};
  _T_4721_23 = _RAND_490[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_491 = {1{`RANDOM}};
  _T_4721_24 = _RAND_491[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_492 = {1{`RANDOM}};
  _T_4721_25 = _RAND_492[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_493 = {1{`RANDOM}};
  _T_4721_26 = _RAND_493[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_494 = {1{`RANDOM}};
  _T_4721_27 = _RAND_494[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_495 = {1{`RANDOM}};
  _T_4721_28 = _RAND_495[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_496 = {1{`RANDOM}};
  _T_4721_29 = _RAND_496[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_497 = {1{`RANDOM}};
  _T_4721_30 = _RAND_497[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_498 = {1{`RANDOM}};
  _T_4721_31 = _RAND_498[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_499 = {1{`RANDOM}};
  _T_4721_32 = _RAND_499[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_500 = {1{`RANDOM}};
  _T_4721_33 = _RAND_500[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_501 = {1{`RANDOM}};
  _T_4721_34 = _RAND_501[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_502 = {1{`RANDOM}};
  _T_4721_35 = _RAND_502[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_503 = {1{`RANDOM}};
  _T_4721_36 = _RAND_503[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_504 = {1{`RANDOM}};
  _T_4721_37 = _RAND_504[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_505 = {1{`RANDOM}};
  _T_4721_38 = _RAND_505[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_506 = {1{`RANDOM}};
  _T_4721_39 = _RAND_506[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_507 = {1{`RANDOM}};
  _T_4721_40 = _RAND_507[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_508 = {1{`RANDOM}};
  _T_4721_41 = _RAND_508[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_509 = {1{`RANDOM}};
  _T_4721_42 = _RAND_509[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_510 = {1{`RANDOM}};
  _T_4721_43 = _RAND_510[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_511 = {1{`RANDOM}};
  _T_4721_44 = _RAND_511[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_512 = {1{`RANDOM}};
  _T_4721_45 = _RAND_512[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_513 = {1{`RANDOM}};
  _T_4721_46 = _RAND_513[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_514 = {1{`RANDOM}};
  _T_4721_47 = _RAND_514[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_515 = {1{`RANDOM}};
  _T_4721_48 = _RAND_515[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_516 = {1{`RANDOM}};
  _T_4721_49 = _RAND_516[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_517 = {1{`RANDOM}};
  _T_4721_50 = _RAND_517[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_518 = {1{`RANDOM}};
  _T_4721_51 = _RAND_518[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_519 = {1{`RANDOM}};
  _T_4721_52 = _RAND_519[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_520 = {1{`RANDOM}};
  _T_4721_53 = _RAND_520[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_521 = {1{`RANDOM}};
  _T_4721_54 = _RAND_521[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_522 = {1{`RANDOM}};
  _T_4721_55 = _RAND_522[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_523 = {1{`RANDOM}};
  _T_4721_56 = _RAND_523[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_524 = {1{`RANDOM}};
  _T_4721_57 = _RAND_524[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_525 = {1{`RANDOM}};
  _T_4721_58 = _RAND_525[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_526 = {1{`RANDOM}};
  _T_4721_59 = _RAND_526[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_527 = {1{`RANDOM}};
  _T_4721_60 = _RAND_527[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_528 = {1{`RANDOM}};
  _T_4721_61 = _RAND_528[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_529 = {1{`RANDOM}};
  _T_4721_62 = _RAND_529[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_530 = {1{`RANDOM}};
  _T_4721_63 = _RAND_530[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_531 = {1{`RANDOM}};
  _T_5248_0 = _RAND_531[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_532 = {1{`RANDOM}};
  _T_5248_1 = _RAND_532[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_533 = {1{`RANDOM}};
  _T_5248_2 = _RAND_533[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_534 = {1{`RANDOM}};
  _T_5248_3 = _RAND_534[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_535 = {1{`RANDOM}};
  _T_5248_4 = _RAND_535[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_536 = {1{`RANDOM}};
  _T_5248_5 = _RAND_536[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_537 = {1{`RANDOM}};
  _T_5248_6 = _RAND_537[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_538 = {1{`RANDOM}};
  _T_5248_7 = _RAND_538[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_539 = {1{`RANDOM}};
  _T_5248_8 = _RAND_539[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_540 = {1{`RANDOM}};
  _T_5248_9 = _RAND_540[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_541 = {1{`RANDOM}};
  _T_5248_10 = _RAND_541[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_542 = {1{`RANDOM}};
  _T_5248_11 = _RAND_542[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_543 = {1{`RANDOM}};
  _T_5248_12 = _RAND_543[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_544 = {1{`RANDOM}};
  _T_5248_13 = _RAND_544[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_545 = {1{`RANDOM}};
  _T_5248_14 = _RAND_545[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_546 = {1{`RANDOM}};
  _T_5248_15 = _RAND_546[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_547 = {1{`RANDOM}};
  _T_5248_16 = _RAND_547[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_548 = {1{`RANDOM}};
  _T_5248_17 = _RAND_548[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_549 = {1{`RANDOM}};
  _T_5248_18 = _RAND_549[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_550 = {1{`RANDOM}};
  _T_5248_19 = _RAND_550[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_551 = {1{`RANDOM}};
  _T_5248_20 = _RAND_551[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_552 = {1{`RANDOM}};
  _T_5248_21 = _RAND_552[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_553 = {1{`RANDOM}};
  _T_5248_22 = _RAND_553[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_554 = {1{`RANDOM}};
  _T_5248_23 = _RAND_554[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_555 = {1{`RANDOM}};
  _T_5248_24 = _RAND_555[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_556 = {1{`RANDOM}};
  _T_5248_25 = _RAND_556[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_557 = {1{`RANDOM}};
  _T_5248_26 = _RAND_557[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_558 = {1{`RANDOM}};
  _T_5248_27 = _RAND_558[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_559 = {1{`RANDOM}};
  _T_5248_28 = _RAND_559[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_560 = {1{`RANDOM}};
  _T_5248_29 = _RAND_560[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_561 = {1{`RANDOM}};
  _T_5248_30 = _RAND_561[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_562 = {1{`RANDOM}};
  _T_5248_31 = _RAND_562[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_563 = {1{`RANDOM}};
  _T_5248_32 = _RAND_563[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_564 = {1{`RANDOM}};
  _T_5248_33 = _RAND_564[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_565 = {1{`RANDOM}};
  _T_5248_34 = _RAND_565[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_566 = {1{`RANDOM}};
  _T_5248_35 = _RAND_566[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_567 = {1{`RANDOM}};
  _T_5248_36 = _RAND_567[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_568 = {1{`RANDOM}};
  _T_5248_37 = _RAND_568[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_569 = {1{`RANDOM}};
  _T_5248_38 = _RAND_569[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_570 = {1{`RANDOM}};
  _T_5248_39 = _RAND_570[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_571 = {1{`RANDOM}};
  _T_5248_40 = _RAND_571[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_572 = {1{`RANDOM}};
  _T_5248_41 = _RAND_572[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_573 = {1{`RANDOM}};
  _T_5248_42 = _RAND_573[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_574 = {1{`RANDOM}};
  _T_5248_43 = _RAND_574[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_575 = {1{`RANDOM}};
  _T_5248_44 = _RAND_575[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_576 = {1{`RANDOM}};
  _T_5248_45 = _RAND_576[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_577 = {1{`RANDOM}};
  _T_5248_46 = _RAND_577[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_578 = {1{`RANDOM}};
  _T_5248_47 = _RAND_578[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_579 = {1{`RANDOM}};
  _T_5248_48 = _RAND_579[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_580 = {1{`RANDOM}};
  _T_5248_49 = _RAND_580[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_581 = {1{`RANDOM}};
  _T_5248_50 = _RAND_581[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_582 = {1{`RANDOM}};
  _T_5248_51 = _RAND_582[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_583 = {1{`RANDOM}};
  _T_5248_52 = _RAND_583[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_584 = {1{`RANDOM}};
  _T_5248_53 = _RAND_584[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_585 = {1{`RANDOM}};
  _T_5248_54 = _RAND_585[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_586 = {1{`RANDOM}};
  _T_5248_55 = _RAND_586[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_587 = {1{`RANDOM}};
  _T_5248_56 = _RAND_587[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_588 = {1{`RANDOM}};
  _T_5248_57 = _RAND_588[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_589 = {1{`RANDOM}};
  _T_5248_58 = _RAND_589[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_590 = {1{`RANDOM}};
  _T_5248_59 = _RAND_590[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_591 = {1{`RANDOM}};
  _T_5248_60 = _RAND_591[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_592 = {1{`RANDOM}};
  _T_5248_61 = _RAND_592[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_593 = {1{`RANDOM}};
  _T_5248_62 = _RAND_593[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_594 = {1{`RANDOM}};
  _T_5248_63 = _RAND_594[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_595 = {1{`RANDOM}};
  _T_5509 = _RAND_595[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_596 = {1{`RANDOM}};
  _T_5511 = _RAND_596[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_597 = {1{`RANDOM}};
  _T_5513 = _RAND_597[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_598 = {1{`RANDOM}};
  _T_5515 = _RAND_598[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_599 = {1{`RANDOM}};
  _T_5517 = _RAND_599[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_600 = {1{`RANDOM}};
  _T_5519 = _RAND_600[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_601 = {1{`RANDOM}};
  _T_5521 = _RAND_601[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_602 = {1{`RANDOM}};
  _T_5523 = _RAND_602[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_603 = {1{`RANDOM}};
  _T_5525 = _RAND_603[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_604 = {1{`RANDOM}};
  _T_5527 = _RAND_604[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_605 = {1{`RANDOM}};
  _T_5529 = _RAND_605[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_606 = {1{`RANDOM}};
  _T_5531 = _RAND_606[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_607 = {1{`RANDOM}};
  _T_5533 = _RAND_607[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_608 = {1{`RANDOM}};
  _T_5535 = _RAND_608[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_609 = {1{`RANDOM}};
  _T_5537 = _RAND_609[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_610 = {1{`RANDOM}};
  _T_5539 = _RAND_610[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_611 = {1{`RANDOM}};
  _T_5541 = _RAND_611[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_612 = {1{`RANDOM}};
  _T_5543 = _RAND_612[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_613 = {1{`RANDOM}};
  _T_5545 = _RAND_613[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_614 = {1{`RANDOM}};
  _T_5547 = _RAND_614[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_615 = {1{`RANDOM}};
  _T_5549 = _RAND_615[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_616 = {1{`RANDOM}};
  _T_5551 = _RAND_616[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_617 = {1{`RANDOM}};
  _T_5553 = _RAND_617[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_618 = {1{`RANDOM}};
  _T_5555 = _RAND_618[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_619 = {1{`RANDOM}};
  _T_5557 = _RAND_619[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_620 = {1{`RANDOM}};
  _T_5559 = _RAND_620[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_621 = {1{`RANDOM}};
  _T_5561 = _RAND_621[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_622 = {1{`RANDOM}};
  _T_5563 = _RAND_622[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_623 = {1{`RANDOM}};
  _T_5565 = _RAND_623[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_624 = {1{`RANDOM}};
  _T_5567 = _RAND_624[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_625 = {1{`RANDOM}};
  _T_5569 = _RAND_625[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_626 = {1{`RANDOM}};
  _T_5571 = _RAND_626[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_627 = {1{`RANDOM}};
  _T_5573 = _RAND_627[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_628 = {1{`RANDOM}};
  _T_5575 = _RAND_628[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_629 = {1{`RANDOM}};
  _T_5577 = _RAND_629[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_630 = {1{`RANDOM}};
  _T_5579 = _RAND_630[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_631 = {1{`RANDOM}};
  _T_5581 = _RAND_631[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_632 = {1{`RANDOM}};
  _T_5583 = _RAND_632[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_633 = {1{`RANDOM}};
  _T_5585 = _RAND_633[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_634 = {1{`RANDOM}};
  _T_5587 = _RAND_634[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_635 = {1{`RANDOM}};
  _T_5589 = _RAND_635[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_636 = {1{`RANDOM}};
  _T_5591 = _RAND_636[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_637 = {1{`RANDOM}};
  _T_5593 = _RAND_637[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_638 = {1{`RANDOM}};
  _T_5595 = _RAND_638[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_639 = {1{`RANDOM}};
  _T_5597 = _RAND_639[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_640 = {1{`RANDOM}};
  _T_5599 = _RAND_640[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_641 = {1{`RANDOM}};
  _T_5601 = _RAND_641[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_642 = {1{`RANDOM}};
  _T_5603 = _RAND_642[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_643 = {1{`RANDOM}};
  _T_5605 = _RAND_643[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_644 = {1{`RANDOM}};
  _T_5607 = _RAND_644[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_645 = {1{`RANDOM}};
  _T_5609 = _RAND_645[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_646 = {1{`RANDOM}};
  _T_5611 = _RAND_646[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_647 = {1{`RANDOM}};
  _T_5613 = _RAND_647[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_648 = {1{`RANDOM}};
  _T_5615 = _RAND_648[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_649 = {1{`RANDOM}};
  _T_5617 = _RAND_649[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_650 = {1{`RANDOM}};
  _T_5619 = _RAND_650[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_651 = {1{`RANDOM}};
  _T_5621 = _RAND_651[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_652 = {1{`RANDOM}};
  _T_5623 = _RAND_652[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_653 = {1{`RANDOM}};
  _T_5625 = _RAND_653[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_654 = {1{`RANDOM}};
  _T_5627 = _RAND_654[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_655 = {1{`RANDOM}};
  _T_5629 = _RAND_655[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_656 = {1{`RANDOM}};
  _T_5631 = _RAND_656[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_657 = {1{`RANDOM}};
  _T_5633 = _RAND_657[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_658 = {1{`RANDOM}};
  _T_5635 = _RAND_658[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_659 = {1{`RANDOM}};
  _T_5637 = _RAND_659[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_660 = {1{`RANDOM}};
  _T_5639 = _RAND_660[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_661 = {1{`RANDOM}};
  _T_5641 = _RAND_661[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_662 = {1{`RANDOM}};
  _T_5643 = _RAND_662[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_663 = {1{`RANDOM}};
  _T_5645 = _RAND_663[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_664 = {1{`RANDOM}};
  _T_5647 = _RAND_664[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_665 = {1{`RANDOM}};
  _T_5649 = _RAND_665[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_666 = {1{`RANDOM}};
  _T_5651 = _RAND_666[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_667 = {1{`RANDOM}};
  _T_5653 = _RAND_667[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_668 = {1{`RANDOM}};
  _T_5655 = _RAND_668[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_669 = {1{`RANDOM}};
  _T_5657 = _RAND_669[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_670 = {1{`RANDOM}};
  _T_5659 = _RAND_670[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_671 = {1{`RANDOM}};
  _T_5661 = _RAND_671[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_672 = {1{`RANDOM}};
  _T_5663 = _RAND_672[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_673 = {1{`RANDOM}};
  _T_5665 = _RAND_673[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_674 = {1{`RANDOM}};
  _T_5667 = _RAND_674[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_675 = {1{`RANDOM}};
  _T_5669 = _RAND_675[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_676 = {1{`RANDOM}};
  _T_5671 = _RAND_676[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_677 = {1{`RANDOM}};
  _T_5673 = _RAND_677[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_678 = {1{`RANDOM}};
  _T_5675 = _RAND_678[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_679 = {1{`RANDOM}};
  _T_5677 = _RAND_679[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_680 = {1{`RANDOM}};
  _T_5679 = _RAND_680[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_681 = {1{`RANDOM}};
  _T_5681 = _RAND_681[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_682 = {1{`RANDOM}};
  _T_5683 = _RAND_682[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_683 = {1{`RANDOM}};
  _T_5685 = _RAND_683[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_684 = {1{`RANDOM}};
  _T_5687 = _RAND_684[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_685 = {1{`RANDOM}};
  _T_5689 = _RAND_685[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_686 = {1{`RANDOM}};
  _T_5691 = _RAND_686[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_687 = {1{`RANDOM}};
  _T_5693 = _RAND_687[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_688 = {1{`RANDOM}};
  _T_5695 = _RAND_688[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_689 = {1{`RANDOM}};
  _T_5697 = _RAND_689[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_690 = {1{`RANDOM}};
  _T_5699 = _RAND_690[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_691 = {1{`RANDOM}};
  _T_5701 = _RAND_691[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_692 = {1{`RANDOM}};
  _T_5703 = _RAND_692[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_693 = {1{`RANDOM}};
  _T_5705 = _RAND_693[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_694 = {1{`RANDOM}};
  _T_5707 = _RAND_694[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_695 = {1{`RANDOM}};
  _T_5709 = _RAND_695[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_696 = {1{`RANDOM}};
  _T_5711 = _RAND_696[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_697 = {1{`RANDOM}};
  _T_5713 = _RAND_697[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_698 = {1{`RANDOM}};
  _T_5715 = _RAND_698[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_699 = {1{`RANDOM}};
  _T_5717 = _RAND_699[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_700 = {1{`RANDOM}};
  _T_5719 = _RAND_700[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_701 = {1{`RANDOM}};
  _T_5721 = _RAND_701[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_702 = {1{`RANDOM}};
  _T_5723 = _RAND_702[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_703 = {1{`RANDOM}};
  _T_5725 = _RAND_703[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_704 = {1{`RANDOM}};
  _T_5727 = _RAND_704[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_705 = {1{`RANDOM}};
  _T_5729 = _RAND_705[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_706 = {1{`RANDOM}};
  _T_5731 = _RAND_706[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_707 = {1{`RANDOM}};
  _T_5733 = _RAND_707[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_708 = {1{`RANDOM}};
  _T_5735 = _RAND_708[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_709 = {1{`RANDOM}};
  _T_5737 = _RAND_709[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_710 = {1{`RANDOM}};
  _T_5739 = _RAND_710[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_711 = {1{`RANDOM}};
  _T_5741 = _RAND_711[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_712 = {1{`RANDOM}};
  _T_5743 = _RAND_712[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_713 = {1{`RANDOM}};
  _T_5745 = _RAND_713[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_714 = {1{`RANDOM}};
  _T_5747 = _RAND_714[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_715 = {1{`RANDOM}};
  _T_5749 = _RAND_715[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_716 = {1{`RANDOM}};
  _T_5751 = _RAND_716[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_717 = {1{`RANDOM}};
  _T_5753 = _RAND_717[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_718 = {1{`RANDOM}};
  _T_5755 = _RAND_718[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_719 = {1{`RANDOM}};
  _T_5757 = _RAND_719[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_720 = {1{`RANDOM}};
  _T_5759 = _RAND_720[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_721 = {1{`RANDOM}};
  _T_5761 = _RAND_721[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_722 = {1{`RANDOM}};
  _T_5763 = _RAND_722[7:0];
  `endif // RANDOMIZE_REG_INIT
  end
`endif // RANDOMIZE
  always @(posedge nvdla_core_clk) begin
    if (_T_207) begin
      layer_st_d1 <= 1'h0;
    end else begin
      layer_st_d1 <= layer_st;
    end
    if (_T_207) begin
      data_batch <= 6'h0;
    end else begin
      if (layer_st) begin
        data_batch <= 6'h1;
      end
    end
    if (_T_207) begin
      rls_slices <= 14'h0;
    end else begin
      if (layer_st) begin
        rls_slices <= {{1'd0}, rls_slices_w};
      end
    end
    if (_T_207) begin
      h_offset_slice <= 14'h0;
    end else begin
      if (layer_st) begin
        h_offset_slice <= {{2'd0}, h_offset_slice_w};
      end
    end
    if (_T_207) begin
      entries <= 15'h0;
    end else begin
      entries <= _GEN_34[14:0];
    end
    if (_T_207) begin
      entries_batch <= 15'h0;
    end else begin
      if (layer_st) begin
        entries_batch <= entries_batch_w;
      end
    end
    if (_T_207) begin
      dataout_width_cmp <= 13'h0;
    end else begin
      if (layer_st) begin
        dataout_width_cmp <= reg2dp_dataout_width;
      end
    end
    if (_T_207) begin
      rls_entries <= 15'h0;
    end else begin
      rls_entries <= _GEN_47[14:0];
    end
    if (_T_207) begin
      h_bias_0_stride <= 12'h0;
    end else begin
      h_bias_0_stride <= _GEN_43[11:0];
    end
    if (_T_207) begin
      h_bias_1_stride <= 12'h0;
    end else begin
      h_bias_1_stride <= _GEN_44[11:0];
    end
    if (_T_207) begin
      slice_left <= 14'h0;
    end else begin
      if (layer_st) begin
        if (reg2dp_skip_data_rls) begin
          slice_left <= _T_316;
        end else begin
          slice_left <= _T_318;
        end
      end
    end
    if (_T_207) begin
      is_winograd_d1 <= 22'h0;
    end else begin
      if (layer_st) begin
        is_winograd_d1 <= 22'h0;
      end
    end
    if (_T_207) begin
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
    if (_T_207) begin
      data_bank <= 5'h0;
    end else begin
      data_bank <= _GEN_2[4:0];
    end
    if (_T_207) begin
      datain_width <= 14'h0;
    end else begin
      if (layer_st) begin
        datain_width <= _T_414;
      end
    end
    if (_T_207) begin
      datain_width_cmp <= 13'h0;
    end else begin
      if (layer_st) begin
        datain_width_cmp <= reg2dp_datain_width_ext;
      end
    end
    if (_T_207) begin
      datain_height_cmp <= 13'h0;
    end else begin
      if (layer_st) begin
        datain_height_cmp <= reg2dp_datain_height_ext;
      end
    end
    if (_T_207) begin
      datain_channel_cmp <= 13'h0;
    end else begin
      if (layer_st) begin
        datain_channel_cmp <= {{2'd0}, _T_418};
      end
    end
    if (_T_207) begin
      sub_h_total_g0 <= 3'h1;
    end else begin
      if (layer_st) begin
        sub_h_total_g0 <= sub_h_total_w;
      end
    end
    if (_T_207) begin
      sub_h_total_g1 <= 3'h1;
    end else begin
      if (layer_st) begin
        sub_h_total_g1 <= sub_h_total_w;
      end
    end
    if (_T_207) begin
      sub_h_total_g2 <= 2'h1;
    end else begin
      if (layer_st) begin
        sub_h_total_g2 <= _T_419;
      end
    end
    if (_T_207) begin
      sub_h_total_g3 <= 3'h1;
    end else begin
      if (layer_st) begin
        sub_h_total_g3 <= sub_h_total_w;
      end
    end
    if (_T_207) begin
      sub_h_total_g4 <= 3'h1;
    end else begin
      if (layer_st) begin
        sub_h_total_g4 <= sub_h_total_w;
      end
    end
    if (_T_207) begin
      sub_h_total_g5 <= 3'h1;
    end else begin
      if (layer_st) begin
        sub_h_total_g5 <= sub_h_total_w;
      end
    end
    if (_T_207) begin
      sub_h_total_g6 <= 3'h1;
    end else begin
      if (layer_st) begin
        sub_h_total_g6 <= sub_h_total_w;
      end
    end
    if (_T_207) begin
      sub_h_total_g8 <= 3'h1;
    end else begin
      if (layer_st) begin
        sub_h_total_g8 <= sub_h_total_w;
      end
    end
    if (_T_207) begin
      sub_h_total_g9 <= 3'h1;
    end else begin
      if (layer_st) begin
        sub_h_total_g9 <= sub_h_total_w;
      end
    end
    if (_T_207) begin
      sub_h_total_g11 <= 3'h1;
    end else begin
      if (layer_st) begin
        sub_h_total_g11 <= sub_h_total_w;
      end
    end
    if (_T_207) begin
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
    if (_T_207) begin
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
    if (_T_207) begin
      conv_x_stride <= 4'h0;
    end else begin
      if (layer_st) begin
        conv_x_stride <= conv_x_stride_w;
      end
    end
    if (_T_207) begin
      conv_y_stride <= 4'h0;
    end else begin
      if (layer_st) begin
        conv_y_stride <= conv_y_stride_w;
      end
    end
    if (_T_207) begin
      batch_cmp <= 5'h0;
    end else begin
      if (layer_st) begin
        batch_cmp <= 5'h0;
      end
    end
    if (_T_207) begin
      pixel_x_init <= 6'h0;
    end else begin
      pixel_x_init <= _GEN_26[5:0];
    end
    if (_T_207) begin
      pixel_x_init_offset <= 7'h0;
    end else begin
      if (layer_st) begin
        pixel_x_init_offset <= pixel_x_init_offset_w;
      end
    end
    if (_T_207) begin
      pixel_x_add <= 7'h0;
    end else begin
      pixel_x_add <= _GEN_28[6:0];
    end
    if (_T_207) begin
      pixel_x_byte_stride <= 7'h0;
    end else begin
      if (layer_st) begin
        pixel_x_byte_stride <= {{1'd0}, pixel_x_stride_w};
      end
    end
    if (_T_207) begin
      pixel_ch_stride <= 12'h0;
    end else begin
      if (layer_st) begin
        pixel_ch_stride <= pixel_ch_stride_w;
      end
    end
    if (_T_207) begin
      x_dilate <= 6'h0;
    end else begin
      if (layer_st) begin
        if (is_img) begin
          x_dilate <= 6'h1;
        end else begin
          x_dilate <= _T_278;
        end
      end
    end
    if (_T_207) begin
      y_dilate <= 6'h0;
    end else begin
      if (layer_st) begin
        if (is_img) begin
          y_dilate <= 6'h1;
        end else begin
          y_dilate <= _T_282;
        end
      end
    end
    if (_T_207) begin
      pad_value <= 16'h0;
    end else begin
      if (layer_st) begin
        pad_value <= reg2dp_pad_value;
      end
    end
    if (_T_207) begin
      entries_cmp <= 15'h0;
    end else begin
      if (layer_st) begin
        entries_cmp <= _T_422;
      end
    end
    if (_T_207) begin
      h_bias_2_stride <= 13'h0;
    end else begin
      h_bias_2_stride <= _GEN_45[12:0];
    end
    if (_T_207) begin
      h_bias_3_stride <= 13'h0;
    end else begin
      h_bias_3_stride <= _GEN_46[12:0];
    end
    if (_T_207) begin
      last_slices <= 14'h0;
    end else begin
      if (is_sg_done) begin
        last_slices <= slice_left;
      end
    end
    if (_T_207) begin
      last_entries <= 13'h0;
    end else begin
      last_entries <= _GEN_49[12:0];
    end
    if (_T_207) begin
      dat_rsp_l3_pvld <= 1'h0;
    end else begin
      dat_rsp_l3_pvld <= dat_rsp_l2_pvld;
    end
    if (_T_207) begin
      dat_rsp_l1_pvld <= 1'h0;
    end else begin
      dat_rsp_l1_pvld <= dat_rsp_l0_pvld;
    end
    if (_T_207) begin
      dat_rsp_l0_pvld <= 1'h0;
    end else begin
      dat_rsp_l0_pvld <= dat_rsp_pipe_pvld;
    end
    if (_T_207) begin
      _T_1367 <= 27'h0;
    end else begin
      if (dat_rsp_l2_pvld) begin
        _T_1367 <= _T_1364;
      end
    end
    if (_T_207) begin
      _T_1361 <= 27'h0;
    end else begin
      if (dat_rsp_l0_pvld) begin
        _T_1361 <= _T_1358;
      end
    end
    if (_T_207) begin
      _T_1358 <= 27'h0;
    end else begin
      if (dat_rsp_pipe_pvld) begin
        _T_1358 <= _T_1376;
      end
    end
    if (_T_207) begin
      _T_513 <= 1'h0;
    end else begin
      _T_513 <= dat_rls;
    end
    if (_T_207) begin
      _T_516 <= 14'h0;
    end else begin
      if (dat_rls) begin
        if (sub_rls) begin
          _T_516 <= rls_slices;
        end else begin
          _T_516 <= last_slices;
        end
      end
    end
    if (_T_207) begin
      _T_519 <= 15'h0;
    end else begin
      if (dat_rls) begin
        if (sub_rls) begin
          _T_519 <= rls_entries;
        end else begin
          _T_519 <= {{2'd0}, last_entries};
        end
      end
    end
    if (_T_207) begin
      _T_524 <= 1'h0;
    end else begin
      _T_524 <= sg2dl_pvld;
    end
    if (_T_207) begin
      _T_527 <= 1'h0;
    end else begin
      _T_527 <= _T_524;
    end
    if (_T_207) begin
      _T_530 <= 1'h0;
    end else begin
      _T_530 <= _T_527;
    end
    if (_T_207) begin
      _T_533 <= 1'h0;
    end else begin
      _T_533 <= _T_530;
    end
    if (_T_207) begin
      _T_536 <= 1'h0;
    end else begin
      _T_536 <= _T_533;
    end
    if (_T_207) begin
      _T_541 <= 31'h0;
    end else begin
      if (sg2dl_pvld) begin
        _T_541 <= sg2dl_pd;
      end
    end
    if (_T_207) begin
      _T_544 <= 31'h0;
    end else begin
      if (_T_524) begin
        _T_544 <= _T_541;
      end
    end
    if (_T_207) begin
      _T_547 <= 31'h0;
    end else begin
      if (_T_527) begin
        _T_547 <= _T_544;
      end
    end
    if (_T_207) begin
      _T_550 <= 31'h0;
    end else begin
      if (_T_530) begin
        _T_550 <= _T_547;
      end
    end
    if (_T_207) begin
      _T_553 <= 31'h0;
    end else begin
      if (_T_533) begin
        _T_553 <= _T_550;
      end
    end
    if (_T_207) begin
      _T_560 <= 1'h0;
    end else begin
      if (_T_554) begin
        _T_560 <= sg2dl_pvld;
      end else begin
        _T_560 <= _T_536;
      end
    end
    if (_T_207) begin
      _T_563 <= 1'h0;
    end else begin
      _T_563 <= _T_560;
    end
    if (_T_207) begin
      _T_566 <= 1'h0;
    end else begin
      _T_566 <= _T_563;
    end
    if (_T_207) begin
      _T_569 <= 1'h0;
    end else begin
      _T_569 <= _T_566;
    end
    if (_T_207) begin
      _T_574 <= 31'h0;
    end else begin
      if (dl_in_pvld) begin
        if (_T_555) begin
          _T_574 <= sg2dl_pd;
        end else begin
          _T_574 <= _T_553;
        end
      end
    end
    if (_T_207) begin
      _T_577 <= 31'h0;
    end else begin
      if (_T_560) begin
        _T_577 <= _T_574;
      end
    end
    if (_T_207) begin
      _T_580 <= 31'h0;
    end else begin
      if (_T_563) begin
        _T_580 <= _T_577;
      end
    end
    if (_T_207) begin
      _T_583 <= 31'h0;
    end else begin
      if (_T_566) begin
        _T_583 <= _T_580;
      end
    end
    if (_T_207) begin
      batch_cnt <= 5'h0;
    end else begin
      batch_cnt <= _GEN_68[4:0];
    end
    if (_T_207) begin
      stripe_cnt <= 7'h0;
    end else begin
      if (stripe_cnt_reg_en) begin
        if (layer_st) begin
          stripe_cnt <= 7'h0;
        end else begin
          if (!(_T_647)) begin
            if (is_stripe_end) begin
              stripe_cnt <= 7'h0;
            end else begin
              stripe_cnt <= stripe_cnt_inc;
            end
          end
        end
      end
    end
    if (_T_207) begin
      sub_h_cnt <= 2'h0;
    end else begin
      sub_h_cnt <= _GEN_69[1:0];
    end
    if (_T_207) begin
      dat_exec_valid_d1 <= 1'h0;
    end else begin
      if (dl_pvld) begin
        dat_exec_valid_d1 <= 1'h1;
      end else begin
        if (_T_675) begin
          dat_exec_valid_d1 <= 1'h0;
        end
      end
    end
    if (_T_207) begin
      dat_pipe_local_valid <= 1'h0;
    end else begin
      if (_T_659) begin
        dat_pipe_local_valid <= 1'h0;
      end else begin
        if (dl_pvld) begin
          dat_pipe_local_valid <= 1'h1;
        end
      end
    end
    if (_T_207) begin
      dat_pipe_valid_d1 <= 1'h0;
    end else begin
      dat_pipe_valid_d1 <= dat_pipe_valid;
    end
    if (_T_207) begin
      dat_req_bytes_d1 <= 8'h0;
    end else begin
      if (dat_exec_valid) begin
        dat_req_bytes_d1 <= dat_req_bytes;
      end
    end
    if (_T_207) begin
      dataout_w_cnt <= 13'h0;
    end else begin
      if (dataout_w_cnt_reg_en) begin
        if (layer_st) begin
          dataout_w_cnt <= {{9'd0}, dataout_w_init};
        end else begin
          if (_T_691) begin
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
    if (_T_207) begin
      dataout_w_ori <= 13'h0;
    end else begin
      if (dataout_w_ori_reg_en) begin
        if (layer_st) begin
          dataout_w_ori <= {{9'd0}, dataout_w_init};
        end else begin
          if (!(_T_691)) begin
            if (is_w_end) begin
              dataout_w_ori <= {{9'd0}, dataout_w_init};
            end else begin
              dataout_w_ori <= dataout_w_cnt_inc;
            end
          end
        end
      end
    end
    if (_T_207) begin
      datain_c_cnt <= 11'h0;
    end else begin
      if (datain_c_cnt_reg_en) begin
        if (layer_st) begin
          datain_c_cnt <= 11'h0;
        end else begin
          if (dl_channel_end) begin
            datain_c_cnt <= 11'h0;
          end else begin
            datain_c_cnt <= _T_706;
          end
        end
      end
    end
    if (_T_207) begin
      datain_w_cnt <= 14'h0;
    end else begin
      datain_w_cnt <= _GEN_75[13:0];
    end
    if (_T_207) begin
      datain_w_ori <= 14'h0;
    end else begin
      datain_w_ori <= _GEN_77[13:0];
    end
    if (_T_207) begin
      pixel_w_cnt <= 16'h0;
    end else begin
      pixel_w_cnt <= _GEN_76[15:0];
    end
    if (_T_207) begin
      pixel_w_ori <= 16'h0;
    end else begin
      pixel_w_ori <= _GEN_78[15:0];
    end
    if (_T_207) begin
      pixel_w_ch_ori <= 16'h0;
    end else begin
      pixel_w_ch_ori <= _GEN_79[15:0];
    end
    if (_T_207) begin
      channel_op_cnt <= 13'h2;
    end else begin
      channel_op_cnt <= _T_765[12:0];
    end
    if (_T_207) begin
      pixel_force_clr_d1 <= 1'h0;
    end else begin
      if (dat_exec_valid) begin
        pixel_force_clr_d1 <= pixel_force_clr;
      end
    end
    if (_T_207) begin
      pixel_force_fetch_d1 <= 1'h0;
    end else begin
      if (dat_exec_valid) begin
        if (_T_810) begin
          pixel_force_fetch_d1 <= 1'h1;
        end else begin
          if (pixel_force_clr_d1) begin
            pixel_force_fetch_d1 <= 1'h0;
          end
        end
      end
    end
    if (_T_207) begin
      datain_h_cnt <= 14'h0;
    end else begin
      datain_h_cnt <= _GEN_80[13:0];
    end
    if (_T_207) begin
      datain_h_ori <= 14'h0;
    end else begin
      datain_h_ori <= _GEN_81[13:0];
    end
    if (_T_207) begin
      dat_req_valid_d1 <= 1'h0;
    end else begin
      dat_req_valid_d1 <= dat_req_valid;
    end
    if (_T_207) begin
      dat_req_sub_w_d1 <= 2'h0;
    end else begin
      if (dat_exec_valid) begin
        if (_T_871) begin
          dat_req_sub_w_d1 <= {{1'd0}, _T_873};
        end else begin
          dat_req_sub_w_d1 <= _T_874;
        end
      end
    end
    if (_T_207) begin
      dat_req_sub_h_d1 <= 2'h0;
    end else begin
      if (dat_exec_valid) begin
        dat_req_sub_h_d1 <= sub_h_cnt;
      end
    end
    if (_T_207) begin
      dat_req_sub_c_d1 <= 1'h0;
    end else begin
      if (dat_exec_valid) begin
        if (_T_869) begin
          dat_req_sub_c_d1 <= _T_870;
        end else begin
          dat_req_sub_c_d1 <= dl_block_end;
        end
      end
    end
    if (_T_207) begin
      dat_req_ch_end_d1 <= 1'h0;
    end else begin
      if (dat_exec_valid) begin
        dat_req_ch_end_d1 <= is_last_channel;
      end
    end
    if (_T_207) begin
      dat_req_dummy_d1 <= 1'h0;
    end else begin
      if (dat_exec_valid) begin
        if (_T_858) begin
          dat_req_dummy_d1 <= dat_img_req_dummy;
        end else begin
          if (_T_859) begin
            dat_req_dummy_d1 <= 1'h0;
          end else begin
            dat_req_dummy_d1 <= dat_conv_req_dummy;
          end
        end
      end
    end
    if (_T_207) begin
      dat_req_cur_sub_h_d1 <= 2'h0;
    end else begin
      if (dat_exec_valid) begin
        dat_req_cur_sub_h_d1 <= dl_cur_sub_h;
      end
    end
    if (_T_207) begin
      dat_req_sub_w_st_d1 <= 1'h0;
    end else begin
      if (dat_req_sub_w_st_en) begin
        dat_req_sub_w_st_d1 <= dl_pvld;
      end
    end
    if (_T_207) begin
      dat_req_flag_d1 <= 9'h0;
    end else begin
      if (dat_exec_valid) begin
        dat_req_flag_d1 <= dat_req_flag_w;
      end
    end
    if (_T_207) begin
      dat_req_rls_d1 <= 1'h0;
    end else begin
      if (dat_exec_valid) begin
        dat_req_rls_d1 <= _T_901;
      end
    end
    if (_T_207) begin
      c_bias <= 13'h0;
    end else begin
      if (datain_c_cnt_reg_en) begin
        if (layer_st) begin
          c_bias <= 13'h0;
        end else begin
          if (_T_921) begin
            c_bias <= 13'h0;
          end else begin
            c_bias <= _T_924;
          end
        end
      end
    end
    if (_T_207) begin
      c_bias_d1 <= 13'h0;
    end else begin
      if (c_bias_d1_reg_en) begin
        c_bias_d1 <= c_bias;
      end
    end
    if (_T_207) begin
      h_bias_0_d1 <= 13'h0;
    end else begin
      if (_T_961) begin
        h_bias_0_d1 <= h_bias_0_w;
      end
    end
    if (_T_207) begin
      h_bias_1_d1 <= 13'h0;
    end else begin
      if (_T_961) begin
        h_bias_1_d1 <= h_bias_1_w;
      end
    end
    if (_T_207) begin
      h_bias_2_d1 <= 13'h0;
    end else begin
      if (_T_961) begin
        h_bias_2_d1 <= h_bias_2_w;
      end
    end
    if (_T_207) begin
      h_bias_3_d1 <= 13'h0;
    end else begin
      if (_T_962) begin
        h_bias_3_d1 <= h_bias_3_w;
      end
    end
    if (_T_207) begin
      w_bias_d1 <= 13'h0;
    end else begin
      w_bias_d1 <= _GEN_99[12:0];
    end
    if (_T_207) begin
      dat_req_sub_h_addr_0 <= 13'h1fff;
    end else begin
      dat_req_sub_h_addr_0 <= _GEN_100[12:0];
    end
    if (_T_207) begin
      dat_req_sub_h_addr_1 <= 13'h1fff;
    end else begin
      dat_req_sub_h_addr_1 <= _GEN_101[12:0];
    end
    if (_T_207) begin
      dat_req_sub_h_addr_2 <= 13'h1fff;
    end else begin
      dat_req_sub_h_addr_2 <= _GEN_102[12:0];
    end
    if (_T_207) begin
      dat_req_sub_h_addr_3 <= 13'h1fff;
    end else begin
      dat_req_sub_h_addr_3 <= _GEN_103[12:0];
    end
    if (_T_207) begin
      sc2buf_dat_rd_en_out <= 1'h0;
    end else begin
      sc2buf_dat_rd_en_out <= sc2buf_dat_rd_en_w;
    end
    if (_T_207) begin
      sc2buf_dat_rd_addr_out <= 19'h1fff;
    end else begin
      if (_T_1121) begin
        if (_T_1075) begin
          sc2buf_dat_rd_addr_out <= 19'h1fff;
        end else begin
          if (is_dat_req_addr_wrap) begin
            sc2buf_dat_rd_addr_out <= dat_req_addr_wrap;
          end else begin
            sc2buf_dat_rd_addr_out <= {{1'd0}, dat_req_addr_sum};
          end
        end
      end
    end
    if (_T_207) begin
      dat_req_pipe_pvld <= 1'h0;
    end else begin
      dat_req_pipe_pvld <= dat_pipe_valid_d1;
    end
    if (_T_207) begin
      dat_req_exec_pvld <= 1'h0;
    end else begin
      dat_req_exec_pvld <= dat_exec_valid_d1;
    end
    if (_T_207) begin
      dat_req_exec_dummy <= 1'h0;
    end else begin
      if (dat_exec_valid_d1) begin
        dat_req_exec_dummy <= dat_req_dummy_d1;
      end
    end
    if (_T_207) begin
      dat_req_pipe_sub_w <= 2'h0;
    end else begin
      if (dat_exec_valid_d1) begin
        dat_req_pipe_sub_w <= dat_req_sub_w_d1;
      end
    end
    if (_T_207) begin
      dat_req_pipe_sub_h <= 2'h0;
    end else begin
      if (dat_exec_valid_d1) begin
        dat_req_pipe_sub_h <= dat_req_sub_h_d1;
      end
    end
    if (_T_207) begin
      dat_req_pipe_sub_c <= 1'h0;
    end else begin
      if (dat_exec_valid_d1) begin
        dat_req_pipe_sub_c <= dat_req_sub_c_d1;
      end
    end
    if (_T_207) begin
      dat_req_pipe_ch_end <= 1'h0;
    end else begin
      if (dat_exec_valid_d1) begin
        dat_req_pipe_ch_end <= dat_req_ch_end_d1;
      end
    end
    if (_T_207) begin
      dat_req_pipe_bytes <= 8'h0;
    end else begin
      if (dat_exec_valid_d1) begin
        dat_req_pipe_bytes <= dat_req_bytes_d1;
      end
    end
    if (_T_207) begin
      dat_req_pipe_dummy <= 1'h0;
    end else begin
      if (dat_exec_valid_d1) begin
        dat_req_pipe_dummy <= dat_req_dummy_d1;
      end
    end
    if (_T_207) begin
      dat_req_pipe_cur_sub_h <= 2'h0;
    end else begin
      if (dat_exec_valid_d1) begin
        dat_req_pipe_cur_sub_h <= dat_req_cur_sub_h_d1;
      end
    end
    if (_T_207) begin
      dat_req_pipe_sub_w_st <= 1'h0;
    end else begin
      if (dat_exec_valid_d1) begin
        dat_req_pipe_sub_w_st <= dat_req_sub_w_st_d1;
      end
    end
    if (_T_207) begin
      dat_req_pipe_rls <= 1'h0;
    end else begin
      if (dat_exec_valid_d1) begin
        dat_req_pipe_rls <= dat_req_rls_d1;
      end
    end
    if (_T_207) begin
      dat_req_pipe_flag <= 9'h0;
    end else begin
      if (dat_exec_valid_d1) begin
        dat_req_pipe_flag <= dat_req_flag_d1;
      end
    end
    if (_T_207) begin
      _T_1136 <= 1'h0;
    end else begin
      _T_1136 <= dat_req_pipe_pvld;
    end
    if (_T_207) begin
      _T_1139 <= 1'h0;
    end else begin
      _T_1139 <= _T_1136;
    end
    if (_T_207) begin
      _T_1142 <= 1'h0;
    end else begin
      _T_1142 <= _T_1139;
    end
    if (_T_207) begin
      _T_1145 <= 1'h0;
    end else begin
      _T_1145 <= _T_1142;
    end
    if (_T_207) begin
      _T_1148 <= 1'h0;
    end else begin
      _T_1148 <= _T_1145;
    end
    if (_T_207) begin
      dat_rsp_pipe_pvld <= 1'h0;
    end else begin
      dat_rsp_pipe_pvld <= _T_1148;
    end
    if (_T_207) begin
      _T_1155 <= 29'h0;
    end else begin
      if (dat_req_pipe_pvld) begin
        _T_1155 <= dat_req_pipe_pd;
      end
    end
    if (_T_207) begin
      _T_1158 <= 29'h0;
    end else begin
      if (_T_1136) begin
        _T_1158 <= _T_1155;
      end
    end
    if (_T_207) begin
      _T_1161 <= 29'h0;
    end else begin
      if (_T_1139) begin
        _T_1161 <= _T_1158;
      end
    end
    if (_T_207) begin
      _T_1164 <= 29'h0;
    end else begin
      if (_T_1142) begin
        _T_1164 <= _T_1161;
      end
    end
    if (_T_207) begin
      _T_1167 <= 29'h0;
    end else begin
      if (_T_1145) begin
        _T_1167 <= _T_1164;
      end
    end
    if (_T_207) begin
      dat_rsp_pipe_pd <= 29'h0;
    end else begin
      if (_T_1148) begin
        dat_rsp_pipe_pd <= _T_1167;
      end
    end
    if (_T_207) begin
      _T_1174 <= 1'h0;
    end else begin
      _T_1174 <= dat_req_exec_pvld;
    end
    if (_T_207) begin
      _T_1177 <= 1'h0;
    end else begin
      _T_1177 <= _T_1174;
    end
    if (_T_207) begin
      _T_1180 <= 1'h0;
    end else begin
      _T_1180 <= _T_1177;
    end
    if (_T_207) begin
      _T_1183 <= 1'h0;
    end else begin
      _T_1183 <= _T_1180;
    end
    if (_T_207) begin
      _T_1186 <= 1'h0;
    end else begin
      _T_1186 <= _T_1183;
    end
    if (_T_207) begin
      dat_rsp_exec_pvld <= 1'h0;
    end else begin
      dat_rsp_exec_pvld <= _T_1186;
    end
    if (_T_207) begin
      _T_1193 <= 1'h0;
    end else begin
      if (dat_req_exec_pvld) begin
        _T_1193 <= dat_req_exec_dummy;
      end
    end
    if (_T_207) begin
      _T_1196 <= 1'h0;
    end else begin
      if (_T_1174) begin
        _T_1196 <= _T_1193;
      end
    end
    if (_T_207) begin
      _T_1199 <= 1'h0;
    end else begin
      if (_T_1177) begin
        _T_1199 <= _T_1196;
      end
    end
    if (_T_207) begin
      _T_1202 <= 1'h0;
    end else begin
      if (_T_1180) begin
        _T_1202 <= _T_1199;
      end
    end
    if (_T_207) begin
      _T_1205 <= 1'h0;
    end else begin
      if (_T_1183) begin
        _T_1205 <= _T_1202;
      end
    end
    if (_T_207) begin
      dat_rsp_exec_dummy <= 1'h0;
    end else begin
      if (_T_1186) begin
        dat_rsp_exec_dummy <= _T_1205;
      end
    end
    if (_T_207) begin
      _T_1212 <= 2'h0;
    end else begin
      if (dat_req_exec_pvld) begin
        _T_1212 <= 2'h0;
      end
    end
    if (_T_207) begin
      _T_1215 <= 2'h0;
    end else begin
      if (_T_1174) begin
        _T_1215 <= _T_1212;
      end
    end
    if (_T_207) begin
      _T_1218 <= 2'h0;
    end else begin
      if (_T_1177) begin
        _T_1218 <= _T_1215;
      end
    end
    if (_T_207) begin
      _T_1221 <= 2'h0;
    end else begin
      if (_T_1180) begin
        _T_1221 <= _T_1218;
      end
    end
    if (_T_207) begin
      _T_1224 <= 2'h0;
    end else begin
      if (_T_1183) begin
        _T_1224 <= _T_1221;
      end
    end
    if (_T_207) begin
      dat_rsp_exec_sub_h <= 2'h0;
    end else begin
      if (_T_1186) begin
        dat_rsp_exec_sub_h <= _T_1224;
      end
    end
    if (_T_207) begin
      dat_l0c0_dummy <= 1'h1;
    end else begin
      if (dat_l0c0_en) begin
        dat_l0c0_dummy <= 1'h0;
      end else begin
        if (dat_dummy_l0_en) begin
          dat_l0c0_dummy <= 1'h1;
        end
      end
    end
    if (_T_207) begin
      dat_l1c0_dummy <= 1'h1;
    end else begin
      if (dat_l1c0_en) begin
        dat_l1c0_dummy <= 1'h0;
      end else begin
        if (dat_dummy_l1_en) begin
          dat_l1c0_dummy <= 1'h1;
        end
      end
    end
    if (_T_207) begin
      dat_l2c0_dummy <= 1'h1;
    end else begin
      if (dat_l2c0_en) begin
        dat_l2c0_dummy <= 1'h0;
      end else begin
        if (dat_dummy_l2_en) begin
          dat_l2c0_dummy <= 1'h1;
        end
      end
    end
    if (_T_207) begin
      dat_l3c0_dummy <= 1'h1;
    end else begin
      if (dat_l3c0_en) begin
        dat_l3c0_dummy <= 1'h0;
      end else begin
        if (dat_dummy_l3_en) begin
          dat_l3c0_dummy <= 1'h1;
        end
      end
    end
    if (_T_207) begin
      dat_l0c1_dummy <= 1'h1;
    end else begin
      if (dat_l0c1_en) begin
        dat_l0c1_dummy <= 1'h0;
      end else begin
        if (dat_l0_set) begin
          dat_l0c1_dummy <= dat_l0c0_dummy;
        end
      end
    end
    if (_T_207) begin
      dat_l1c1_dummy <= 1'h1;
    end else begin
      if (dat_l1c1_en) begin
        dat_l1c1_dummy <= 1'h0;
      end else begin
        if (_T_1315) begin
          dat_l1c1_dummy <= dat_l1c0_dummy;
        end
      end
    end
    if (_T_207) begin
      dat_l2c1_dummy <= 1'h1;
    end else begin
      if (dat_l2c1_en) begin
        dat_l2c1_dummy <= 1'h0;
      end else begin
        if (_T_1320) begin
          dat_l2c1_dummy <= dat_l2c0_dummy;
        end
      end
    end
    if (_T_207) begin
      dat_l3c1_dummy <= 1'h1;
    end else begin
      if (dat_l3c1_en) begin
        dat_l3c1_dummy <= 1'h0;
      end else begin
        if (_T_1325) begin
          dat_l3c1_dummy <= dat_l3c0_dummy;
        end
      end
    end
    if (dat_l0c0_en) begin
      dat_l0c0 <= sc2buf_dat_rd_data;
    end
    if (dat_l1c0_en) begin
      dat_l1c0 <= sc2buf_dat_rd_data;
    end
    if (dat_l2c0_en) begin
      dat_l2c0 <= sc2buf_dat_rd_data;
    end
    if (dat_l3c0_en) begin
      dat_l3c0 <= sc2buf_dat_rd_data;
    end
    if (dat_l0c1_en) begin
      dat_l0c1 <= dat_l0c0;
    end
    if (dat_l1c1_en) begin
      dat_l1c1 <= dat_l1c0;
    end
    if (dat_l2c1_en) begin
      dat_l2c1 <= dat_l2c0;
    end
    if (dat_l3c1_en) begin
      dat_l3c1 <= dat_l3c0;
    end
    if (_T_207) begin
      rsp_sft_cnt_l0 <= 8'h0;
    end else begin
      if (rsp_sft_cnt_l0_en) begin
        if (layer_st) begin
          rsp_sft_cnt_l0 <= 8'h40;
        end else begin
          if (_T_1443) begin
            rsp_sft_cnt_l0 <= rsp_sft_cnt_l0_ori;
          end else begin
            if (_T_1444) begin
              rsp_sft_cnt_l0 <= 8'h40;
            end else begin
              if (dat_dummy_l0_en) begin
                rsp_sft_cnt_l0 <= _T_1447;
              end else begin
                rsp_sft_cnt_l0 <= rsp_sft_cnt_l0_inc;
              end
            end
          end
        end
      end
    end
    if (_T_207) begin
      rsp_sft_cnt_l1 <= 8'h0;
    end else begin
      if (rsp_sft_cnt_l1_en) begin
        if (layer_st) begin
          rsp_sft_cnt_l1 <= 8'h40;
        end else begin
          if (_T_1453) begin
            rsp_sft_cnt_l1 <= rsp_sft_cnt_l1_ori;
          end else begin
            if (_T_1454) begin
              rsp_sft_cnt_l1 <= 8'h40;
            end else begin
              if (dat_dummy_l1_en) begin
                rsp_sft_cnt_l1 <= _T_1457;
              end else begin
                rsp_sft_cnt_l1 <= rsp_sft_cnt_l1_inc;
              end
            end
          end
        end
      end
    end
    if (_T_207) begin
      rsp_sft_cnt_l2 <= 8'h0;
    end else begin
      if (rsp_sft_cnt_l2_en) begin
        if (layer_st) begin
          rsp_sft_cnt_l2 <= 8'h40;
        end else begin
          if (_T_1463) begin
            rsp_sft_cnt_l2 <= rsp_sft_cnt_l2_ori;
          end else begin
            if (_T_1464) begin
              rsp_sft_cnt_l2 <= 8'h40;
            end else begin
              if (dat_dummy_l2_en) begin
                rsp_sft_cnt_l2 <= _T_1467;
              end else begin
                rsp_sft_cnt_l2 <= rsp_sft_cnt_l2_inc;
              end
            end
          end
        end
      end
    end
    if (_T_207) begin
      rsp_sft_cnt_l3 <= 8'h0;
    end else begin
      if (rsp_sft_cnt_l3_en) begin
        if (layer_st) begin
          rsp_sft_cnt_l3 <= 8'h40;
        end else begin
          if (_T_1473) begin
            rsp_sft_cnt_l3 <= rsp_sft_cnt_l3_ori;
          end else begin
            if (_T_1474) begin
              rsp_sft_cnt_l3 <= 8'h40;
            end else begin
              if (dat_dummy_l3_en) begin
                rsp_sft_cnt_l3 <= _T_1477;
              end else begin
                rsp_sft_cnt_l3 <= rsp_sft_cnt_l3_inc;
              end
            end
          end
        end
      end
    end
    if (_T_207) begin
      rsp_sft_cnt_l0_ori <= 8'h0;
    end else begin
      if (rsp_sft_cnt_l0_ori_en) begin
        if (layer_st) begin
          rsp_sft_cnt_l0_ori <= 8'h40;
        end else begin
          if (!(_T_1443)) begin
            if (_T_1444) begin
              rsp_sft_cnt_l0_ori <= 8'h40;
            end else begin
              if (dat_dummy_l0_en) begin
                rsp_sft_cnt_l0_ori <= _T_1447;
              end else begin
                rsp_sft_cnt_l0_ori <= rsp_sft_cnt_l0_inc;
              end
            end
          end
        end
      end
    end
    if (_T_207) begin
      rsp_sft_cnt_l1_ori <= 8'h0;
    end else begin
      if (rsp_sft_cnt_l1_ori_en) begin
        if (layer_st) begin
          rsp_sft_cnt_l1_ori <= 8'h40;
        end else begin
          if (!(_T_1453)) begin
            if (_T_1454) begin
              rsp_sft_cnt_l1_ori <= 8'h40;
            end else begin
              if (dat_dummy_l1_en) begin
                rsp_sft_cnt_l1_ori <= _T_1457;
              end else begin
                rsp_sft_cnt_l1_ori <= rsp_sft_cnt_l1_inc;
              end
            end
          end
        end
      end
    end
    if (_T_207) begin
      rsp_sft_cnt_l2_ori <= 8'h0;
    end else begin
      if (rsp_sft_cnt_l2_ori_en) begin
        if (layer_st) begin
          rsp_sft_cnt_l2_ori <= 8'h40;
        end else begin
          if (!(_T_1463)) begin
            if (_T_1464) begin
              rsp_sft_cnt_l2_ori <= 8'h40;
            end else begin
              if (dat_dummy_l2_en) begin
                rsp_sft_cnt_l2_ori <= _T_1467;
              end else begin
                rsp_sft_cnt_l2_ori <= rsp_sft_cnt_l2_inc;
              end
            end
          end
        end
      end
    end
    if (_T_207) begin
      rsp_sft_cnt_l3_ori <= 8'h0;
    end else begin
      if (rsp_sft_cnt_l3_ori_en) begin
        if (layer_st) begin
          rsp_sft_cnt_l3_ori <= 8'h40;
        end else begin
          if (!(_T_1473)) begin
            if (_T_1474) begin
              rsp_sft_cnt_l3_ori <= 8'h40;
            end else begin
              if (dat_dummy_l3_en) begin
                rsp_sft_cnt_l3_ori <= _T_1477;
              end else begin
                rsp_sft_cnt_l3_ori <= rsp_sft_cnt_l3_inc;
              end
            end
          end
        end
      end
    end
    if (_T_207) begin
      dat_rsp_l2_pvld <= 1'h0;
    end else begin
      dat_rsp_l2_pvld <= dat_rsp_l1_pvld;
    end
    if (_T_207) begin
      _T_1364 <= 27'h0;
    end else begin
      if (dat_rsp_l1_pvld) begin
        _T_1364 <= _T_1361;
      end
    end
    dat_rsp_l0_sft_d1 <= _GEN_154[255:0];
    dat_rsp_l0_sft_d2 <= _GEN_155[127:0];
    if (dat_rsp_sft_d3_en) begin
      dat_rsp_l0_sft_d3 <= dat_rsp_l0_sft_d2;
    end
    dat_rsp_l1_sft_d2 <= _GEN_156[127:0];
    if (dat_rsp_sft_d3_en) begin
      dat_rsp_l1_sft_d3 <= dat_rsp_l1_sft_d2;
    end
    dat_rsp_l2_sft_d3 <= _GEN_159[127:0];
    if (_T_207) begin
      dat_out_pvld <= 1'h0;
    end else begin
      if (_T_3037) begin
        dat_out_pvld <= _T_3019;
      end else begin
        dat_out_pvld <= dat_rsp_pvld;
      end
    end
    if (_T_207) begin
      dat_out_flag <= 9'h0;
    end else begin
      if (dat_out_pvld_w) begin
        if (_T_3038) begin
          dat_out_flag <= _T_3036;
        end else begin
          dat_out_flag <= dat_rsp_flag;
        end
      end
    end
    if (_T_207) begin
      dat_out_bypass_mask_0 <= 1'h0;
    end else begin
      if (dat_rsp_p0_vld_w) begin
        dat_out_bypass_mask_0 <= dat_rsp_mask_w_0;
      end
    end
    if (_T_207) begin
      dat_out_bypass_mask_1 <= 1'h0;
    end else begin
      if (dat_rsp_p0_vld_w) begin
        dat_out_bypass_mask_1 <= dat_rsp_mask_w_1;
      end
    end
    if (_T_207) begin
      dat_out_bypass_mask_2 <= 1'h0;
    end else begin
      if (dat_rsp_p0_vld_w) begin
        dat_out_bypass_mask_2 <= dat_rsp_mask_w_2;
      end
    end
    if (_T_207) begin
      dat_out_bypass_mask_3 <= 1'h0;
    end else begin
      if (dat_rsp_p0_vld_w) begin
        dat_out_bypass_mask_3 <= dat_rsp_mask_w_3;
      end
    end
    if (_T_207) begin
      dat_out_bypass_mask_4 <= 1'h0;
    end else begin
      if (dat_rsp_p0_vld_w) begin
        dat_out_bypass_mask_4 <= dat_rsp_mask_w_4;
      end
    end
    if (_T_207) begin
      dat_out_bypass_mask_5 <= 1'h0;
    end else begin
      if (dat_rsp_p0_vld_w) begin
        dat_out_bypass_mask_5 <= dat_rsp_mask_w_5;
      end
    end
    if (_T_207) begin
      dat_out_bypass_mask_6 <= 1'h0;
    end else begin
      if (dat_rsp_p0_vld_w) begin
        dat_out_bypass_mask_6 <= dat_rsp_mask_w_6;
      end
    end
    if (_T_207) begin
      dat_out_bypass_mask_7 <= 1'h0;
    end else begin
      if (dat_rsp_p0_vld_w) begin
        dat_out_bypass_mask_7 <= dat_rsp_mask_w_7;
      end
    end
    if (_T_207) begin
      dat_out_bypass_mask_8 <= 1'h0;
    end else begin
      if (dat_rsp_p0_vld_w) begin
        dat_out_bypass_mask_8 <= dat_rsp_mask_w_8;
      end
    end
    if (_T_207) begin
      dat_out_bypass_mask_9 <= 1'h0;
    end else begin
      if (dat_rsp_p0_vld_w) begin
        dat_out_bypass_mask_9 <= dat_rsp_mask_w_9;
      end
    end
    if (_T_207) begin
      dat_out_bypass_mask_10 <= 1'h0;
    end else begin
      if (dat_rsp_p0_vld_w) begin
        dat_out_bypass_mask_10 <= dat_rsp_mask_w_10;
      end
    end
    if (_T_207) begin
      dat_out_bypass_mask_11 <= 1'h0;
    end else begin
      if (dat_rsp_p0_vld_w) begin
        dat_out_bypass_mask_11 <= dat_rsp_mask_w_11;
      end
    end
    if (_T_207) begin
      dat_out_bypass_mask_12 <= 1'h0;
    end else begin
      if (dat_rsp_p0_vld_w) begin
        dat_out_bypass_mask_12 <= dat_rsp_mask_w_12;
      end
    end
    if (_T_207) begin
      dat_out_bypass_mask_13 <= 1'h0;
    end else begin
      if (dat_rsp_p0_vld_w) begin
        dat_out_bypass_mask_13 <= dat_rsp_mask_w_13;
      end
    end
    if (_T_207) begin
      dat_out_bypass_mask_14 <= 1'h0;
    end else begin
      if (dat_rsp_p0_vld_w) begin
        dat_out_bypass_mask_14 <= dat_rsp_mask_w_14;
      end
    end
    if (_T_207) begin
      dat_out_bypass_mask_15 <= 1'h0;
    end else begin
      if (dat_rsp_p0_vld_w) begin
        dat_out_bypass_mask_15 <= dat_rsp_mask_w_15;
      end
    end
    if (_T_207) begin
      dat_out_bypass_mask_16 <= 1'h0;
    end else begin
      if (dat_rsp_p0_vld_w) begin
        dat_out_bypass_mask_16 <= dat_rsp_mask_w_16;
      end
    end
    if (_T_207) begin
      dat_out_bypass_mask_17 <= 1'h0;
    end else begin
      if (dat_rsp_p0_vld_w) begin
        dat_out_bypass_mask_17 <= dat_rsp_mask_w_17;
      end
    end
    if (_T_207) begin
      dat_out_bypass_mask_18 <= 1'h0;
    end else begin
      if (dat_rsp_p0_vld_w) begin
        dat_out_bypass_mask_18 <= dat_rsp_mask_w_18;
      end
    end
    if (_T_207) begin
      dat_out_bypass_mask_19 <= 1'h0;
    end else begin
      if (dat_rsp_p0_vld_w) begin
        dat_out_bypass_mask_19 <= dat_rsp_mask_w_19;
      end
    end
    if (_T_207) begin
      dat_out_bypass_mask_20 <= 1'h0;
    end else begin
      if (dat_rsp_p0_vld_w) begin
        dat_out_bypass_mask_20 <= dat_rsp_mask_w_20;
      end
    end
    if (_T_207) begin
      dat_out_bypass_mask_21 <= 1'h0;
    end else begin
      if (dat_rsp_p0_vld_w) begin
        dat_out_bypass_mask_21 <= dat_rsp_mask_w_21;
      end
    end
    if (_T_207) begin
      dat_out_bypass_mask_22 <= 1'h0;
    end else begin
      if (dat_rsp_p0_vld_w) begin
        dat_out_bypass_mask_22 <= dat_rsp_mask_w_22;
      end
    end
    if (_T_207) begin
      dat_out_bypass_mask_23 <= 1'h0;
    end else begin
      if (dat_rsp_p0_vld_w) begin
        dat_out_bypass_mask_23 <= dat_rsp_mask_w_23;
      end
    end
    if (_T_207) begin
      dat_out_bypass_mask_24 <= 1'h0;
    end else begin
      if (dat_rsp_p0_vld_w) begin
        dat_out_bypass_mask_24 <= dat_rsp_mask_w_24;
      end
    end
    if (_T_207) begin
      dat_out_bypass_mask_25 <= 1'h0;
    end else begin
      if (dat_rsp_p0_vld_w) begin
        dat_out_bypass_mask_25 <= dat_rsp_mask_w_25;
      end
    end
    if (_T_207) begin
      dat_out_bypass_mask_26 <= 1'h0;
    end else begin
      if (dat_rsp_p0_vld_w) begin
        dat_out_bypass_mask_26 <= dat_rsp_mask_w_26;
      end
    end
    if (_T_207) begin
      dat_out_bypass_mask_27 <= 1'h0;
    end else begin
      if (dat_rsp_p0_vld_w) begin
        dat_out_bypass_mask_27 <= dat_rsp_mask_w_27;
      end
    end
    if (_T_207) begin
      dat_out_bypass_mask_28 <= 1'h0;
    end else begin
      if (dat_rsp_p0_vld_w) begin
        dat_out_bypass_mask_28 <= dat_rsp_mask_w_28;
      end
    end
    if (_T_207) begin
      dat_out_bypass_mask_29 <= 1'h0;
    end else begin
      if (dat_rsp_p0_vld_w) begin
        dat_out_bypass_mask_29 <= dat_rsp_mask_w_29;
      end
    end
    if (_T_207) begin
      dat_out_bypass_mask_30 <= 1'h0;
    end else begin
      if (dat_rsp_p0_vld_w) begin
        dat_out_bypass_mask_30 <= dat_rsp_mask_w_30;
      end
    end
    if (_T_207) begin
      dat_out_bypass_mask_31 <= 1'h0;
    end else begin
      if (dat_rsp_p0_vld_w) begin
        dat_out_bypass_mask_31 <= dat_rsp_mask_w_31;
      end
    end
    if (_T_207) begin
      dat_out_bypass_mask_32 <= 1'h0;
    end else begin
      if (dat_rsp_p0_vld_w) begin
        dat_out_bypass_mask_32 <= dat_rsp_mask_w_32;
      end
    end
    if (_T_207) begin
      dat_out_bypass_mask_33 <= 1'h0;
    end else begin
      if (dat_rsp_p0_vld_w) begin
        dat_out_bypass_mask_33 <= dat_rsp_mask_w_33;
      end
    end
    if (_T_207) begin
      dat_out_bypass_mask_34 <= 1'h0;
    end else begin
      if (dat_rsp_p0_vld_w) begin
        dat_out_bypass_mask_34 <= dat_rsp_mask_w_34;
      end
    end
    if (_T_207) begin
      dat_out_bypass_mask_35 <= 1'h0;
    end else begin
      if (dat_rsp_p0_vld_w) begin
        dat_out_bypass_mask_35 <= dat_rsp_mask_w_35;
      end
    end
    if (_T_207) begin
      dat_out_bypass_mask_36 <= 1'h0;
    end else begin
      if (dat_rsp_p0_vld_w) begin
        dat_out_bypass_mask_36 <= dat_rsp_mask_w_36;
      end
    end
    if (_T_207) begin
      dat_out_bypass_mask_37 <= 1'h0;
    end else begin
      if (dat_rsp_p0_vld_w) begin
        dat_out_bypass_mask_37 <= dat_rsp_mask_w_37;
      end
    end
    if (_T_207) begin
      dat_out_bypass_mask_38 <= 1'h0;
    end else begin
      if (dat_rsp_p0_vld_w) begin
        dat_out_bypass_mask_38 <= dat_rsp_mask_w_38;
      end
    end
    if (_T_207) begin
      dat_out_bypass_mask_39 <= 1'h0;
    end else begin
      if (dat_rsp_p0_vld_w) begin
        dat_out_bypass_mask_39 <= dat_rsp_mask_w_39;
      end
    end
    if (_T_207) begin
      dat_out_bypass_mask_40 <= 1'h0;
    end else begin
      if (dat_rsp_p0_vld_w) begin
        dat_out_bypass_mask_40 <= dat_rsp_mask_w_40;
      end
    end
    if (_T_207) begin
      dat_out_bypass_mask_41 <= 1'h0;
    end else begin
      if (dat_rsp_p0_vld_w) begin
        dat_out_bypass_mask_41 <= dat_rsp_mask_w_41;
      end
    end
    if (_T_207) begin
      dat_out_bypass_mask_42 <= 1'h0;
    end else begin
      if (dat_rsp_p0_vld_w) begin
        dat_out_bypass_mask_42 <= dat_rsp_mask_w_42;
      end
    end
    if (_T_207) begin
      dat_out_bypass_mask_43 <= 1'h0;
    end else begin
      if (dat_rsp_p0_vld_w) begin
        dat_out_bypass_mask_43 <= dat_rsp_mask_w_43;
      end
    end
    if (_T_207) begin
      dat_out_bypass_mask_44 <= 1'h0;
    end else begin
      if (dat_rsp_p0_vld_w) begin
        dat_out_bypass_mask_44 <= dat_rsp_mask_w_44;
      end
    end
    if (_T_207) begin
      dat_out_bypass_mask_45 <= 1'h0;
    end else begin
      if (dat_rsp_p0_vld_w) begin
        dat_out_bypass_mask_45 <= dat_rsp_mask_w_45;
      end
    end
    if (_T_207) begin
      dat_out_bypass_mask_46 <= 1'h0;
    end else begin
      if (dat_rsp_p0_vld_w) begin
        dat_out_bypass_mask_46 <= dat_rsp_mask_w_46;
      end
    end
    if (_T_207) begin
      dat_out_bypass_mask_47 <= 1'h0;
    end else begin
      if (dat_rsp_p0_vld_w) begin
        dat_out_bypass_mask_47 <= dat_rsp_mask_w_47;
      end
    end
    if (_T_207) begin
      dat_out_bypass_mask_48 <= 1'h0;
    end else begin
      if (dat_rsp_p0_vld_w) begin
        dat_out_bypass_mask_48 <= dat_rsp_mask_w_48;
      end
    end
    if (_T_207) begin
      dat_out_bypass_mask_49 <= 1'h0;
    end else begin
      if (dat_rsp_p0_vld_w) begin
        dat_out_bypass_mask_49 <= dat_rsp_mask_w_49;
      end
    end
    if (_T_207) begin
      dat_out_bypass_mask_50 <= 1'h0;
    end else begin
      if (dat_rsp_p0_vld_w) begin
        dat_out_bypass_mask_50 <= dat_rsp_mask_w_50;
      end
    end
    if (_T_207) begin
      dat_out_bypass_mask_51 <= 1'h0;
    end else begin
      if (dat_rsp_p0_vld_w) begin
        dat_out_bypass_mask_51 <= dat_rsp_mask_w_51;
      end
    end
    if (_T_207) begin
      dat_out_bypass_mask_52 <= 1'h0;
    end else begin
      if (dat_rsp_p0_vld_w) begin
        dat_out_bypass_mask_52 <= dat_rsp_mask_w_52;
      end
    end
    if (_T_207) begin
      dat_out_bypass_mask_53 <= 1'h0;
    end else begin
      if (dat_rsp_p0_vld_w) begin
        dat_out_bypass_mask_53 <= dat_rsp_mask_w_53;
      end
    end
    if (_T_207) begin
      dat_out_bypass_mask_54 <= 1'h0;
    end else begin
      if (dat_rsp_p0_vld_w) begin
        dat_out_bypass_mask_54 <= dat_rsp_mask_w_54;
      end
    end
    if (_T_207) begin
      dat_out_bypass_mask_55 <= 1'h0;
    end else begin
      if (dat_rsp_p0_vld_w) begin
        dat_out_bypass_mask_55 <= dat_rsp_mask_w_55;
      end
    end
    if (_T_207) begin
      dat_out_bypass_mask_56 <= 1'h0;
    end else begin
      if (dat_rsp_p0_vld_w) begin
        dat_out_bypass_mask_56 <= dat_rsp_mask_w_56;
      end
    end
    if (_T_207) begin
      dat_out_bypass_mask_57 <= 1'h0;
    end else begin
      if (dat_rsp_p0_vld_w) begin
        dat_out_bypass_mask_57 <= dat_rsp_mask_w_57;
      end
    end
    if (_T_207) begin
      dat_out_bypass_mask_58 <= 1'h0;
    end else begin
      if (dat_rsp_p0_vld_w) begin
        dat_out_bypass_mask_58 <= dat_rsp_mask_w_58;
      end
    end
    if (_T_207) begin
      dat_out_bypass_mask_59 <= 1'h0;
    end else begin
      if (dat_rsp_p0_vld_w) begin
        dat_out_bypass_mask_59 <= dat_rsp_mask_w_59;
      end
    end
    if (_T_207) begin
      dat_out_bypass_mask_60 <= 1'h0;
    end else begin
      if (dat_rsp_p0_vld_w) begin
        dat_out_bypass_mask_60 <= dat_rsp_mask_w_60;
      end
    end
    if (_T_207) begin
      dat_out_bypass_mask_61 <= 1'h0;
    end else begin
      if (dat_rsp_p0_vld_w) begin
        dat_out_bypass_mask_61 <= dat_rsp_mask_w_61;
      end
    end
    if (_T_207) begin
      dat_out_bypass_mask_62 <= 1'h0;
    end else begin
      if (dat_rsp_p0_vld_w) begin
        dat_out_bypass_mask_62 <= dat_rsp_mask_w_62;
      end
    end
    if (_T_207) begin
      dat_out_bypass_mask_63 <= 1'h0;
    end else begin
      if (dat_rsp_p0_vld_w) begin
        dat_out_bypass_mask_63 <= dat_rsp_mask_w_63;
      end
    end
    if (_T_3039) begin
      if (_T_1940) begin
        dat_out_bypass_data_0 <= dat_rsp_img_0;
      end else begin
        dat_out_bypass_data_0 <= dat_rsp_conv_0;
      end
    end
    if (_T_3040) begin
      if (_T_1940) begin
        dat_out_bypass_data_1 <= dat_rsp_img_1;
      end else begin
        dat_out_bypass_data_1 <= dat_rsp_conv_1;
      end
    end
    if (_T_3041) begin
      if (_T_1940) begin
        dat_out_bypass_data_2 <= dat_rsp_img_2;
      end else begin
        dat_out_bypass_data_2 <= dat_rsp_conv_2;
      end
    end
    if (_T_3042) begin
      if (_T_1940) begin
        dat_out_bypass_data_3 <= dat_rsp_img_3;
      end else begin
        dat_out_bypass_data_3 <= dat_rsp_conv_3;
      end
    end
    if (_T_3043) begin
      if (_T_1940) begin
        dat_out_bypass_data_4 <= dat_rsp_img_4;
      end else begin
        dat_out_bypass_data_4 <= dat_rsp_conv_4;
      end
    end
    if (_T_3044) begin
      if (_T_1940) begin
        dat_out_bypass_data_5 <= dat_rsp_img_5;
      end else begin
        dat_out_bypass_data_5 <= dat_rsp_conv_5;
      end
    end
    if (_T_3045) begin
      if (_T_1940) begin
        dat_out_bypass_data_6 <= dat_rsp_img_6;
      end else begin
        dat_out_bypass_data_6 <= dat_rsp_conv_6;
      end
    end
    if (_T_3046) begin
      if (_T_1940) begin
        dat_out_bypass_data_7 <= dat_rsp_img_7;
      end else begin
        dat_out_bypass_data_7 <= dat_rsp_conv_7;
      end
    end
    if (_T_3047) begin
      if (_T_1940) begin
        dat_out_bypass_data_8 <= dat_rsp_img_8;
      end else begin
        dat_out_bypass_data_8 <= dat_rsp_conv_8;
      end
    end
    if (_T_3048) begin
      if (_T_1940) begin
        dat_out_bypass_data_9 <= dat_rsp_img_9;
      end else begin
        dat_out_bypass_data_9 <= dat_rsp_conv_9;
      end
    end
    if (_T_3049) begin
      if (_T_1940) begin
        dat_out_bypass_data_10 <= dat_rsp_img_10;
      end else begin
        dat_out_bypass_data_10 <= dat_rsp_conv_10;
      end
    end
    if (_T_3050) begin
      if (_T_1940) begin
        dat_out_bypass_data_11 <= dat_rsp_img_11;
      end else begin
        dat_out_bypass_data_11 <= dat_rsp_conv_11;
      end
    end
    if (_T_3051) begin
      if (_T_1940) begin
        dat_out_bypass_data_12 <= dat_rsp_img_12;
      end else begin
        dat_out_bypass_data_12 <= dat_rsp_conv_12;
      end
    end
    if (_T_3052) begin
      if (_T_1940) begin
        dat_out_bypass_data_13 <= dat_rsp_img_13;
      end else begin
        dat_out_bypass_data_13 <= dat_rsp_conv_13;
      end
    end
    if (_T_3053) begin
      if (_T_1940) begin
        dat_out_bypass_data_14 <= dat_rsp_img_14;
      end else begin
        dat_out_bypass_data_14 <= dat_rsp_conv_14;
      end
    end
    if (_T_3054) begin
      if (_T_1940) begin
        dat_out_bypass_data_15 <= dat_rsp_img_15;
      end else begin
        dat_out_bypass_data_15 <= dat_rsp_conv_15;
      end
    end
    if (_T_3055) begin
      if (_T_1940) begin
        dat_out_bypass_data_16 <= dat_rsp_img_16;
      end else begin
        dat_out_bypass_data_16 <= dat_rsp_conv_16;
      end
    end
    if (_T_3056) begin
      if (_T_1940) begin
        dat_out_bypass_data_17 <= dat_rsp_img_17;
      end else begin
        dat_out_bypass_data_17 <= dat_rsp_conv_17;
      end
    end
    if (_T_3057) begin
      if (_T_1940) begin
        dat_out_bypass_data_18 <= dat_rsp_img_18;
      end else begin
        dat_out_bypass_data_18 <= dat_rsp_conv_18;
      end
    end
    if (_T_3058) begin
      if (_T_1940) begin
        dat_out_bypass_data_19 <= dat_rsp_img_19;
      end else begin
        dat_out_bypass_data_19 <= dat_rsp_conv_19;
      end
    end
    if (_T_3059) begin
      if (_T_1940) begin
        dat_out_bypass_data_20 <= dat_rsp_img_20;
      end else begin
        dat_out_bypass_data_20 <= dat_rsp_conv_20;
      end
    end
    if (_T_3060) begin
      if (_T_1940) begin
        dat_out_bypass_data_21 <= dat_rsp_img_21;
      end else begin
        dat_out_bypass_data_21 <= dat_rsp_conv_21;
      end
    end
    if (_T_3061) begin
      if (_T_1940) begin
        dat_out_bypass_data_22 <= dat_rsp_img_22;
      end else begin
        dat_out_bypass_data_22 <= dat_rsp_conv_22;
      end
    end
    if (_T_3062) begin
      if (_T_1940) begin
        dat_out_bypass_data_23 <= dat_rsp_img_23;
      end else begin
        dat_out_bypass_data_23 <= dat_rsp_conv_23;
      end
    end
    if (_T_3063) begin
      if (_T_1940) begin
        dat_out_bypass_data_24 <= dat_rsp_img_24;
      end else begin
        dat_out_bypass_data_24 <= dat_rsp_conv_24;
      end
    end
    if (_T_3064) begin
      if (_T_1940) begin
        dat_out_bypass_data_25 <= dat_rsp_img_25;
      end else begin
        dat_out_bypass_data_25 <= dat_rsp_conv_25;
      end
    end
    if (_T_3065) begin
      if (_T_1940) begin
        dat_out_bypass_data_26 <= dat_rsp_img_26;
      end else begin
        dat_out_bypass_data_26 <= dat_rsp_conv_26;
      end
    end
    if (_T_3066) begin
      if (_T_1940) begin
        dat_out_bypass_data_27 <= dat_rsp_img_27;
      end else begin
        dat_out_bypass_data_27 <= dat_rsp_conv_27;
      end
    end
    if (_T_3067) begin
      if (_T_1940) begin
        dat_out_bypass_data_28 <= dat_rsp_img_28;
      end else begin
        dat_out_bypass_data_28 <= dat_rsp_conv_28;
      end
    end
    if (_T_3068) begin
      if (_T_1940) begin
        dat_out_bypass_data_29 <= dat_rsp_img_29;
      end else begin
        dat_out_bypass_data_29 <= dat_rsp_conv_29;
      end
    end
    if (_T_3069) begin
      if (_T_1940) begin
        dat_out_bypass_data_30 <= dat_rsp_img_30;
      end else begin
        dat_out_bypass_data_30 <= dat_rsp_conv_30;
      end
    end
    if (_T_3070) begin
      if (_T_1940) begin
        dat_out_bypass_data_31 <= dat_rsp_img_31;
      end else begin
        dat_out_bypass_data_31 <= dat_rsp_conv_31;
      end
    end
    if (_T_3071) begin
      if (_T_1940) begin
        dat_out_bypass_data_32 <= dat_rsp_img_32;
      end else begin
        dat_out_bypass_data_32 <= dat_rsp_conv_32;
      end
    end
    if (_T_3072) begin
      if (_T_1940) begin
        dat_out_bypass_data_33 <= dat_rsp_img_33;
      end else begin
        dat_out_bypass_data_33 <= dat_rsp_conv_33;
      end
    end
    if (_T_3073) begin
      if (_T_1940) begin
        dat_out_bypass_data_34 <= dat_rsp_img_34;
      end else begin
        dat_out_bypass_data_34 <= dat_rsp_conv_34;
      end
    end
    if (_T_3074) begin
      if (_T_1940) begin
        dat_out_bypass_data_35 <= dat_rsp_img_35;
      end else begin
        dat_out_bypass_data_35 <= dat_rsp_conv_35;
      end
    end
    if (_T_3075) begin
      if (_T_1940) begin
        dat_out_bypass_data_36 <= dat_rsp_img_36;
      end else begin
        dat_out_bypass_data_36 <= dat_rsp_conv_36;
      end
    end
    if (_T_3076) begin
      if (_T_1940) begin
        dat_out_bypass_data_37 <= dat_rsp_img_37;
      end else begin
        dat_out_bypass_data_37 <= dat_rsp_conv_37;
      end
    end
    if (_T_3077) begin
      if (_T_1940) begin
        dat_out_bypass_data_38 <= dat_rsp_img_38;
      end else begin
        dat_out_bypass_data_38 <= dat_rsp_conv_38;
      end
    end
    if (_T_3078) begin
      if (_T_1940) begin
        dat_out_bypass_data_39 <= dat_rsp_img_39;
      end else begin
        dat_out_bypass_data_39 <= dat_rsp_conv_39;
      end
    end
    if (_T_3079) begin
      if (_T_1940) begin
        dat_out_bypass_data_40 <= dat_rsp_img_40;
      end else begin
        dat_out_bypass_data_40 <= dat_rsp_conv_40;
      end
    end
    if (_T_3080) begin
      if (_T_1940) begin
        dat_out_bypass_data_41 <= dat_rsp_img_41;
      end else begin
        dat_out_bypass_data_41 <= dat_rsp_conv_41;
      end
    end
    if (_T_3081) begin
      if (_T_1940) begin
        dat_out_bypass_data_42 <= dat_rsp_img_42;
      end else begin
        dat_out_bypass_data_42 <= dat_rsp_conv_42;
      end
    end
    if (_T_3082) begin
      if (_T_1940) begin
        dat_out_bypass_data_43 <= dat_rsp_img_43;
      end else begin
        dat_out_bypass_data_43 <= dat_rsp_conv_43;
      end
    end
    if (_T_3083) begin
      if (_T_1940) begin
        dat_out_bypass_data_44 <= dat_rsp_img_44;
      end else begin
        dat_out_bypass_data_44 <= dat_rsp_conv_44;
      end
    end
    if (_T_3084) begin
      if (_T_1940) begin
        dat_out_bypass_data_45 <= dat_rsp_img_45;
      end else begin
        dat_out_bypass_data_45 <= dat_rsp_conv_45;
      end
    end
    if (_T_3085) begin
      if (_T_1940) begin
        dat_out_bypass_data_46 <= dat_rsp_img_46;
      end else begin
        dat_out_bypass_data_46 <= dat_rsp_conv_46;
      end
    end
    if (_T_3086) begin
      if (_T_1940) begin
        dat_out_bypass_data_47 <= dat_rsp_img_47;
      end else begin
        dat_out_bypass_data_47 <= dat_rsp_conv_47;
      end
    end
    if (_T_3087) begin
      if (_T_1940) begin
        dat_out_bypass_data_48 <= dat_rsp_img_48;
      end else begin
        dat_out_bypass_data_48 <= dat_rsp_conv_48;
      end
    end
    if (_T_3088) begin
      if (_T_1940) begin
        dat_out_bypass_data_49 <= dat_rsp_img_49;
      end else begin
        dat_out_bypass_data_49 <= dat_rsp_conv_49;
      end
    end
    if (_T_3089) begin
      if (_T_1940) begin
        dat_out_bypass_data_50 <= dat_rsp_img_50;
      end else begin
        dat_out_bypass_data_50 <= dat_rsp_conv_50;
      end
    end
    if (_T_3090) begin
      if (_T_1940) begin
        dat_out_bypass_data_51 <= dat_rsp_img_51;
      end else begin
        dat_out_bypass_data_51 <= dat_rsp_conv_51;
      end
    end
    if (_T_3091) begin
      if (_T_1940) begin
        dat_out_bypass_data_52 <= dat_rsp_img_52;
      end else begin
        dat_out_bypass_data_52 <= dat_rsp_conv_52;
      end
    end
    if (_T_3092) begin
      if (_T_1940) begin
        dat_out_bypass_data_53 <= dat_rsp_img_53;
      end else begin
        dat_out_bypass_data_53 <= dat_rsp_conv_53;
      end
    end
    if (_T_3093) begin
      if (_T_1940) begin
        dat_out_bypass_data_54 <= dat_rsp_img_54;
      end else begin
        dat_out_bypass_data_54 <= dat_rsp_conv_54;
      end
    end
    if (_T_3094) begin
      if (_T_1940) begin
        dat_out_bypass_data_55 <= dat_rsp_img_55;
      end else begin
        dat_out_bypass_data_55 <= dat_rsp_conv_55;
      end
    end
    if (_T_3095) begin
      if (_T_1940) begin
        dat_out_bypass_data_56 <= dat_rsp_img_56;
      end else begin
        dat_out_bypass_data_56 <= dat_rsp_conv_56;
      end
    end
    if (_T_3096) begin
      if (_T_1940) begin
        dat_out_bypass_data_57 <= dat_rsp_img_57;
      end else begin
        dat_out_bypass_data_57 <= dat_rsp_conv_57;
      end
    end
    if (_T_3097) begin
      if (_T_1940) begin
        dat_out_bypass_data_58 <= dat_rsp_img_58;
      end else begin
        dat_out_bypass_data_58 <= dat_rsp_conv_58;
      end
    end
    if (_T_3098) begin
      if (_T_1940) begin
        dat_out_bypass_data_59 <= dat_rsp_img_59;
      end else begin
        dat_out_bypass_data_59 <= dat_rsp_conv_59;
      end
    end
    if (_T_3099) begin
      if (_T_1940) begin
        dat_out_bypass_data_60 <= dat_rsp_img_60;
      end else begin
        dat_out_bypass_data_60 <= dat_rsp_conv_60;
      end
    end
    if (_T_3100) begin
      if (_T_1940) begin
        dat_out_bypass_data_61 <= dat_rsp_img_61;
      end else begin
        dat_out_bypass_data_61 <= dat_rsp_conv_61;
      end
    end
    if (_T_3101) begin
      if (_T_1940) begin
        dat_out_bypass_data_62 <= dat_rsp_img_62;
      end else begin
        dat_out_bypass_data_62 <= dat_rsp_conv_62;
      end
    end
    if (_T_3102) begin
      if (_T_1940) begin
        dat_out_bypass_data_63 <= dat_rsp_img_63;
      end else begin
        dat_out_bypass_data_63 <= dat_rsp_conv_63;
      end
    end
    if (_T_207) begin
      _T_3007 <= 1'h0;
    end else begin
      _T_3007 <= dat_rsp_pvld;
    end
    if (_T_207) begin
      _T_3010 <= 1'h0;
    end else begin
      _T_3010 <= _T_3007;
    end
    if (_T_207) begin
      _T_3013 <= 1'h0;
    end else begin
      _T_3013 <= _T_3010;
    end
    if (_T_207) begin
      _T_3016 <= 1'h0;
    end else begin
      _T_3016 <= _T_3013;
    end
    if (_T_207) begin
      _T_3019 <= 1'h0;
    end else begin
      _T_3019 <= _T_3016;
    end
    if (_T_207) begin
      _T_3024 <= 9'h0;
    end else begin
      if (dat_rsp_pvld) begin
        _T_3024 <= dat_rsp_flag;
      end
    end
    if (_T_207) begin
      _T_3027 <= 9'h0;
    end else begin
      if (_T_3007) begin
        _T_3027 <= _T_3024;
      end
    end
    if (_T_207) begin
      _T_3030 <= 9'h0;
    end else begin
      if (_T_3010) begin
        _T_3030 <= _T_3027;
      end
    end
    if (_T_207) begin
      _T_3033 <= 9'h0;
    end else begin
      if (_T_3013) begin
        _T_3033 <= _T_3030;
      end
    end
    if (_T_207) begin
      _T_3036 <= 9'h0;
    end else begin
      if (_T_3016) begin
        _T_3036 <= _T_3033;
      end
    end
    if (_T_207) begin
      dl_out_pvld <= 1'h0;
    end else begin
      dl_out_pvld <= dat_out_pvld;
    end
    if (_T_207) begin
      dl_out_mask_0 <= 1'h0;
    end else begin
      if (_T_4435) begin
        if (_T_4036) begin
          dl_out_mask_0 <= 1'h0;
        end else begin
          if (_T_4171) begin
            dl_out_mask_0 <= 1'h0;
          end else begin
            dl_out_mask_0 <= dat_out_bypass_mask_0;
          end
        end
      end
    end
    if (_T_207) begin
      dl_out_mask_1 <= 1'h0;
    end else begin
      if (_T_4435) begin
        if (_T_4036) begin
          dl_out_mask_1 <= 1'h0;
        end else begin
          if (_T_4171) begin
            dl_out_mask_1 <= 1'h0;
          end else begin
            dl_out_mask_1 <= dat_out_bypass_mask_1;
          end
        end
      end
    end
    if (_T_207) begin
      dl_out_mask_2 <= 1'h0;
    end else begin
      if (_T_4435) begin
        if (_T_4036) begin
          dl_out_mask_2 <= 1'h0;
        end else begin
          if (_T_4171) begin
            dl_out_mask_2 <= 1'h0;
          end else begin
            dl_out_mask_2 <= dat_out_bypass_mask_2;
          end
        end
      end
    end
    if (_T_207) begin
      dl_out_mask_3 <= 1'h0;
    end else begin
      if (_T_4435) begin
        if (_T_4036) begin
          dl_out_mask_3 <= 1'h0;
        end else begin
          if (_T_4171) begin
            dl_out_mask_3 <= 1'h0;
          end else begin
            dl_out_mask_3 <= dat_out_bypass_mask_3;
          end
        end
      end
    end
    if (_T_207) begin
      dl_out_mask_4 <= 1'h0;
    end else begin
      if (_T_4435) begin
        if (_T_4036) begin
          dl_out_mask_4 <= 1'h0;
        end else begin
          if (_T_4171) begin
            dl_out_mask_4 <= 1'h0;
          end else begin
            dl_out_mask_4 <= dat_out_bypass_mask_4;
          end
        end
      end
    end
    if (_T_207) begin
      dl_out_mask_5 <= 1'h0;
    end else begin
      if (_T_4435) begin
        if (_T_4036) begin
          dl_out_mask_5 <= 1'h0;
        end else begin
          if (_T_4171) begin
            dl_out_mask_5 <= 1'h0;
          end else begin
            dl_out_mask_5 <= dat_out_bypass_mask_5;
          end
        end
      end
    end
    if (_T_207) begin
      dl_out_mask_6 <= 1'h0;
    end else begin
      if (_T_4435) begin
        if (_T_4036) begin
          dl_out_mask_6 <= 1'h0;
        end else begin
          if (_T_4171) begin
            dl_out_mask_6 <= 1'h0;
          end else begin
            dl_out_mask_6 <= dat_out_bypass_mask_6;
          end
        end
      end
    end
    if (_T_207) begin
      dl_out_mask_7 <= 1'h0;
    end else begin
      if (_T_4435) begin
        if (_T_4036) begin
          dl_out_mask_7 <= 1'h0;
        end else begin
          if (_T_4171) begin
            dl_out_mask_7 <= 1'h0;
          end else begin
            dl_out_mask_7 <= dat_out_bypass_mask_7;
          end
        end
      end
    end
    if (_T_207) begin
      dl_out_mask_8 <= 1'h0;
    end else begin
      if (_T_4435) begin
        if (_T_4036) begin
          dl_out_mask_8 <= 1'h0;
        end else begin
          if (_T_4171) begin
            dl_out_mask_8 <= 1'h0;
          end else begin
            dl_out_mask_8 <= dat_out_bypass_mask_8;
          end
        end
      end
    end
    if (_T_207) begin
      dl_out_mask_9 <= 1'h0;
    end else begin
      if (_T_4435) begin
        if (_T_4036) begin
          dl_out_mask_9 <= 1'h0;
        end else begin
          if (_T_4171) begin
            dl_out_mask_9 <= 1'h0;
          end else begin
            dl_out_mask_9 <= dat_out_bypass_mask_9;
          end
        end
      end
    end
    if (_T_207) begin
      dl_out_mask_10 <= 1'h0;
    end else begin
      if (_T_4435) begin
        if (_T_4036) begin
          dl_out_mask_10 <= 1'h0;
        end else begin
          if (_T_4171) begin
            dl_out_mask_10 <= 1'h0;
          end else begin
            dl_out_mask_10 <= dat_out_bypass_mask_10;
          end
        end
      end
    end
    if (_T_207) begin
      dl_out_mask_11 <= 1'h0;
    end else begin
      if (_T_4435) begin
        if (_T_4036) begin
          dl_out_mask_11 <= 1'h0;
        end else begin
          if (_T_4171) begin
            dl_out_mask_11 <= 1'h0;
          end else begin
            dl_out_mask_11 <= dat_out_bypass_mask_11;
          end
        end
      end
    end
    if (_T_207) begin
      dl_out_mask_12 <= 1'h0;
    end else begin
      if (_T_4435) begin
        if (_T_4036) begin
          dl_out_mask_12 <= 1'h0;
        end else begin
          if (_T_4171) begin
            dl_out_mask_12 <= 1'h0;
          end else begin
            dl_out_mask_12 <= dat_out_bypass_mask_12;
          end
        end
      end
    end
    if (_T_207) begin
      dl_out_mask_13 <= 1'h0;
    end else begin
      if (_T_4435) begin
        if (_T_4036) begin
          dl_out_mask_13 <= 1'h0;
        end else begin
          if (_T_4171) begin
            dl_out_mask_13 <= 1'h0;
          end else begin
            dl_out_mask_13 <= dat_out_bypass_mask_13;
          end
        end
      end
    end
    if (_T_207) begin
      dl_out_mask_14 <= 1'h0;
    end else begin
      if (_T_4435) begin
        if (_T_4036) begin
          dl_out_mask_14 <= 1'h0;
        end else begin
          if (_T_4171) begin
            dl_out_mask_14 <= 1'h0;
          end else begin
            dl_out_mask_14 <= dat_out_bypass_mask_14;
          end
        end
      end
    end
    if (_T_207) begin
      dl_out_mask_15 <= 1'h0;
    end else begin
      if (_T_4435) begin
        if (_T_4036) begin
          dl_out_mask_15 <= 1'h0;
        end else begin
          if (_T_4171) begin
            dl_out_mask_15 <= 1'h0;
          end else begin
            dl_out_mask_15 <= dat_out_bypass_mask_15;
          end
        end
      end
    end
    if (_T_207) begin
      dl_out_mask_16 <= 1'h0;
    end else begin
      if (_T_4435) begin
        if (_T_4036) begin
          dl_out_mask_16 <= 1'h0;
        end else begin
          if (_T_4171) begin
            dl_out_mask_16 <= 1'h0;
          end else begin
            dl_out_mask_16 <= dat_out_bypass_mask_16;
          end
        end
      end
    end
    if (_T_207) begin
      dl_out_mask_17 <= 1'h0;
    end else begin
      if (_T_4435) begin
        if (_T_4036) begin
          dl_out_mask_17 <= 1'h0;
        end else begin
          if (_T_4171) begin
            dl_out_mask_17 <= 1'h0;
          end else begin
            dl_out_mask_17 <= dat_out_bypass_mask_17;
          end
        end
      end
    end
    if (_T_207) begin
      dl_out_mask_18 <= 1'h0;
    end else begin
      if (_T_4435) begin
        if (_T_4036) begin
          dl_out_mask_18 <= 1'h0;
        end else begin
          if (_T_4171) begin
            dl_out_mask_18 <= 1'h0;
          end else begin
            dl_out_mask_18 <= dat_out_bypass_mask_18;
          end
        end
      end
    end
    if (_T_207) begin
      dl_out_mask_19 <= 1'h0;
    end else begin
      if (_T_4435) begin
        if (_T_4036) begin
          dl_out_mask_19 <= 1'h0;
        end else begin
          if (_T_4171) begin
            dl_out_mask_19 <= 1'h0;
          end else begin
            dl_out_mask_19 <= dat_out_bypass_mask_19;
          end
        end
      end
    end
    if (_T_207) begin
      dl_out_mask_20 <= 1'h0;
    end else begin
      if (_T_4435) begin
        if (_T_4036) begin
          dl_out_mask_20 <= 1'h0;
        end else begin
          if (_T_4171) begin
            dl_out_mask_20 <= 1'h0;
          end else begin
            dl_out_mask_20 <= dat_out_bypass_mask_20;
          end
        end
      end
    end
    if (_T_207) begin
      dl_out_mask_21 <= 1'h0;
    end else begin
      if (_T_4435) begin
        if (_T_4036) begin
          dl_out_mask_21 <= 1'h0;
        end else begin
          if (_T_4171) begin
            dl_out_mask_21 <= 1'h0;
          end else begin
            dl_out_mask_21 <= dat_out_bypass_mask_21;
          end
        end
      end
    end
    if (_T_207) begin
      dl_out_mask_22 <= 1'h0;
    end else begin
      if (_T_4435) begin
        if (_T_4036) begin
          dl_out_mask_22 <= 1'h0;
        end else begin
          if (_T_4171) begin
            dl_out_mask_22 <= 1'h0;
          end else begin
            dl_out_mask_22 <= dat_out_bypass_mask_22;
          end
        end
      end
    end
    if (_T_207) begin
      dl_out_mask_23 <= 1'h0;
    end else begin
      if (_T_4435) begin
        if (_T_4036) begin
          dl_out_mask_23 <= 1'h0;
        end else begin
          if (_T_4171) begin
            dl_out_mask_23 <= 1'h0;
          end else begin
            dl_out_mask_23 <= dat_out_bypass_mask_23;
          end
        end
      end
    end
    if (_T_207) begin
      dl_out_mask_24 <= 1'h0;
    end else begin
      if (_T_4435) begin
        if (_T_4036) begin
          dl_out_mask_24 <= 1'h0;
        end else begin
          if (_T_4171) begin
            dl_out_mask_24 <= 1'h0;
          end else begin
            dl_out_mask_24 <= dat_out_bypass_mask_24;
          end
        end
      end
    end
    if (_T_207) begin
      dl_out_mask_25 <= 1'h0;
    end else begin
      if (_T_4435) begin
        if (_T_4036) begin
          dl_out_mask_25 <= 1'h0;
        end else begin
          if (_T_4171) begin
            dl_out_mask_25 <= 1'h0;
          end else begin
            dl_out_mask_25 <= dat_out_bypass_mask_25;
          end
        end
      end
    end
    if (_T_207) begin
      dl_out_mask_26 <= 1'h0;
    end else begin
      if (_T_4435) begin
        if (_T_4036) begin
          dl_out_mask_26 <= 1'h0;
        end else begin
          if (_T_4171) begin
            dl_out_mask_26 <= 1'h0;
          end else begin
            dl_out_mask_26 <= dat_out_bypass_mask_26;
          end
        end
      end
    end
    if (_T_207) begin
      dl_out_mask_27 <= 1'h0;
    end else begin
      if (_T_4435) begin
        if (_T_4036) begin
          dl_out_mask_27 <= 1'h0;
        end else begin
          if (_T_4171) begin
            dl_out_mask_27 <= 1'h0;
          end else begin
            dl_out_mask_27 <= dat_out_bypass_mask_27;
          end
        end
      end
    end
    if (_T_207) begin
      dl_out_mask_28 <= 1'h0;
    end else begin
      if (_T_4435) begin
        if (_T_4036) begin
          dl_out_mask_28 <= 1'h0;
        end else begin
          if (_T_4171) begin
            dl_out_mask_28 <= 1'h0;
          end else begin
            dl_out_mask_28 <= dat_out_bypass_mask_28;
          end
        end
      end
    end
    if (_T_207) begin
      dl_out_mask_29 <= 1'h0;
    end else begin
      if (_T_4435) begin
        if (_T_4036) begin
          dl_out_mask_29 <= 1'h0;
        end else begin
          if (_T_4171) begin
            dl_out_mask_29 <= 1'h0;
          end else begin
            dl_out_mask_29 <= dat_out_bypass_mask_29;
          end
        end
      end
    end
    if (_T_207) begin
      dl_out_mask_30 <= 1'h0;
    end else begin
      if (_T_4435) begin
        if (_T_4036) begin
          dl_out_mask_30 <= 1'h0;
        end else begin
          if (_T_4171) begin
            dl_out_mask_30 <= 1'h0;
          end else begin
            dl_out_mask_30 <= dat_out_bypass_mask_30;
          end
        end
      end
    end
    if (_T_207) begin
      dl_out_mask_31 <= 1'h0;
    end else begin
      if (_T_4435) begin
        if (_T_4036) begin
          dl_out_mask_31 <= 1'h0;
        end else begin
          if (_T_4171) begin
            dl_out_mask_31 <= 1'h0;
          end else begin
            dl_out_mask_31 <= dat_out_bypass_mask_31;
          end
        end
      end
    end
    if (_T_207) begin
      dl_out_mask_32 <= 1'h0;
    end else begin
      if (_T_4435) begin
        if (_T_4036) begin
          dl_out_mask_32 <= 1'h0;
        end else begin
          if (_T_4171) begin
            dl_out_mask_32 <= 1'h0;
          end else begin
            dl_out_mask_32 <= dat_out_bypass_mask_32;
          end
        end
      end
    end
    if (_T_207) begin
      dl_out_mask_33 <= 1'h0;
    end else begin
      if (_T_4435) begin
        if (_T_4036) begin
          dl_out_mask_33 <= 1'h0;
        end else begin
          if (_T_4171) begin
            dl_out_mask_33 <= 1'h0;
          end else begin
            dl_out_mask_33 <= dat_out_bypass_mask_33;
          end
        end
      end
    end
    if (_T_207) begin
      dl_out_mask_34 <= 1'h0;
    end else begin
      if (_T_4435) begin
        if (_T_4036) begin
          dl_out_mask_34 <= 1'h0;
        end else begin
          if (_T_4171) begin
            dl_out_mask_34 <= 1'h0;
          end else begin
            dl_out_mask_34 <= dat_out_bypass_mask_34;
          end
        end
      end
    end
    if (_T_207) begin
      dl_out_mask_35 <= 1'h0;
    end else begin
      if (_T_4435) begin
        if (_T_4036) begin
          dl_out_mask_35 <= 1'h0;
        end else begin
          if (_T_4171) begin
            dl_out_mask_35 <= 1'h0;
          end else begin
            dl_out_mask_35 <= dat_out_bypass_mask_35;
          end
        end
      end
    end
    if (_T_207) begin
      dl_out_mask_36 <= 1'h0;
    end else begin
      if (_T_4435) begin
        if (_T_4036) begin
          dl_out_mask_36 <= 1'h0;
        end else begin
          if (_T_4171) begin
            dl_out_mask_36 <= 1'h0;
          end else begin
            dl_out_mask_36 <= dat_out_bypass_mask_36;
          end
        end
      end
    end
    if (_T_207) begin
      dl_out_mask_37 <= 1'h0;
    end else begin
      if (_T_4435) begin
        if (_T_4036) begin
          dl_out_mask_37 <= 1'h0;
        end else begin
          if (_T_4171) begin
            dl_out_mask_37 <= 1'h0;
          end else begin
            dl_out_mask_37 <= dat_out_bypass_mask_37;
          end
        end
      end
    end
    if (_T_207) begin
      dl_out_mask_38 <= 1'h0;
    end else begin
      if (_T_4435) begin
        if (_T_4036) begin
          dl_out_mask_38 <= 1'h0;
        end else begin
          if (_T_4171) begin
            dl_out_mask_38 <= 1'h0;
          end else begin
            dl_out_mask_38 <= dat_out_bypass_mask_38;
          end
        end
      end
    end
    if (_T_207) begin
      dl_out_mask_39 <= 1'h0;
    end else begin
      if (_T_4435) begin
        if (_T_4036) begin
          dl_out_mask_39 <= 1'h0;
        end else begin
          if (_T_4171) begin
            dl_out_mask_39 <= 1'h0;
          end else begin
            dl_out_mask_39 <= dat_out_bypass_mask_39;
          end
        end
      end
    end
    if (_T_207) begin
      dl_out_mask_40 <= 1'h0;
    end else begin
      if (_T_4435) begin
        if (_T_4036) begin
          dl_out_mask_40 <= 1'h0;
        end else begin
          if (_T_4171) begin
            dl_out_mask_40 <= 1'h0;
          end else begin
            dl_out_mask_40 <= dat_out_bypass_mask_40;
          end
        end
      end
    end
    if (_T_207) begin
      dl_out_mask_41 <= 1'h0;
    end else begin
      if (_T_4435) begin
        if (_T_4036) begin
          dl_out_mask_41 <= 1'h0;
        end else begin
          if (_T_4171) begin
            dl_out_mask_41 <= 1'h0;
          end else begin
            dl_out_mask_41 <= dat_out_bypass_mask_41;
          end
        end
      end
    end
    if (_T_207) begin
      dl_out_mask_42 <= 1'h0;
    end else begin
      if (_T_4435) begin
        if (_T_4036) begin
          dl_out_mask_42 <= 1'h0;
        end else begin
          if (_T_4171) begin
            dl_out_mask_42 <= 1'h0;
          end else begin
            dl_out_mask_42 <= dat_out_bypass_mask_42;
          end
        end
      end
    end
    if (_T_207) begin
      dl_out_mask_43 <= 1'h0;
    end else begin
      if (_T_4435) begin
        if (_T_4036) begin
          dl_out_mask_43 <= 1'h0;
        end else begin
          if (_T_4171) begin
            dl_out_mask_43 <= 1'h0;
          end else begin
            dl_out_mask_43 <= dat_out_bypass_mask_43;
          end
        end
      end
    end
    if (_T_207) begin
      dl_out_mask_44 <= 1'h0;
    end else begin
      if (_T_4435) begin
        if (_T_4036) begin
          dl_out_mask_44 <= 1'h0;
        end else begin
          if (_T_4171) begin
            dl_out_mask_44 <= 1'h0;
          end else begin
            dl_out_mask_44 <= dat_out_bypass_mask_44;
          end
        end
      end
    end
    if (_T_207) begin
      dl_out_mask_45 <= 1'h0;
    end else begin
      if (_T_4435) begin
        if (_T_4036) begin
          dl_out_mask_45 <= 1'h0;
        end else begin
          if (_T_4171) begin
            dl_out_mask_45 <= 1'h0;
          end else begin
            dl_out_mask_45 <= dat_out_bypass_mask_45;
          end
        end
      end
    end
    if (_T_207) begin
      dl_out_mask_46 <= 1'h0;
    end else begin
      if (_T_4435) begin
        if (_T_4036) begin
          dl_out_mask_46 <= 1'h0;
        end else begin
          if (_T_4171) begin
            dl_out_mask_46 <= 1'h0;
          end else begin
            dl_out_mask_46 <= dat_out_bypass_mask_46;
          end
        end
      end
    end
    if (_T_207) begin
      dl_out_mask_47 <= 1'h0;
    end else begin
      if (_T_4435) begin
        if (_T_4036) begin
          dl_out_mask_47 <= 1'h0;
        end else begin
          if (_T_4171) begin
            dl_out_mask_47 <= 1'h0;
          end else begin
            dl_out_mask_47 <= dat_out_bypass_mask_47;
          end
        end
      end
    end
    if (_T_207) begin
      dl_out_mask_48 <= 1'h0;
    end else begin
      if (_T_4435) begin
        if (_T_4036) begin
          dl_out_mask_48 <= 1'h0;
        end else begin
          if (_T_4171) begin
            dl_out_mask_48 <= 1'h0;
          end else begin
            dl_out_mask_48 <= dat_out_bypass_mask_48;
          end
        end
      end
    end
    if (_T_207) begin
      dl_out_mask_49 <= 1'h0;
    end else begin
      if (_T_4435) begin
        if (_T_4036) begin
          dl_out_mask_49 <= 1'h0;
        end else begin
          if (_T_4171) begin
            dl_out_mask_49 <= 1'h0;
          end else begin
            dl_out_mask_49 <= dat_out_bypass_mask_49;
          end
        end
      end
    end
    if (_T_207) begin
      dl_out_mask_50 <= 1'h0;
    end else begin
      if (_T_4435) begin
        if (_T_4036) begin
          dl_out_mask_50 <= 1'h0;
        end else begin
          if (_T_4171) begin
            dl_out_mask_50 <= 1'h0;
          end else begin
            dl_out_mask_50 <= dat_out_bypass_mask_50;
          end
        end
      end
    end
    if (_T_207) begin
      dl_out_mask_51 <= 1'h0;
    end else begin
      if (_T_4435) begin
        if (_T_4036) begin
          dl_out_mask_51 <= 1'h0;
        end else begin
          if (_T_4171) begin
            dl_out_mask_51 <= 1'h0;
          end else begin
            dl_out_mask_51 <= dat_out_bypass_mask_51;
          end
        end
      end
    end
    if (_T_207) begin
      dl_out_mask_52 <= 1'h0;
    end else begin
      if (_T_4435) begin
        if (_T_4036) begin
          dl_out_mask_52 <= 1'h0;
        end else begin
          if (_T_4171) begin
            dl_out_mask_52 <= 1'h0;
          end else begin
            dl_out_mask_52 <= dat_out_bypass_mask_52;
          end
        end
      end
    end
    if (_T_207) begin
      dl_out_mask_53 <= 1'h0;
    end else begin
      if (_T_4435) begin
        if (_T_4036) begin
          dl_out_mask_53 <= 1'h0;
        end else begin
          if (_T_4171) begin
            dl_out_mask_53 <= 1'h0;
          end else begin
            dl_out_mask_53 <= dat_out_bypass_mask_53;
          end
        end
      end
    end
    if (_T_207) begin
      dl_out_mask_54 <= 1'h0;
    end else begin
      if (_T_4435) begin
        if (_T_4036) begin
          dl_out_mask_54 <= 1'h0;
        end else begin
          if (_T_4171) begin
            dl_out_mask_54 <= 1'h0;
          end else begin
            dl_out_mask_54 <= dat_out_bypass_mask_54;
          end
        end
      end
    end
    if (_T_207) begin
      dl_out_mask_55 <= 1'h0;
    end else begin
      if (_T_4435) begin
        if (_T_4036) begin
          dl_out_mask_55 <= 1'h0;
        end else begin
          if (_T_4171) begin
            dl_out_mask_55 <= 1'h0;
          end else begin
            dl_out_mask_55 <= dat_out_bypass_mask_55;
          end
        end
      end
    end
    if (_T_207) begin
      dl_out_mask_56 <= 1'h0;
    end else begin
      if (_T_4435) begin
        if (_T_4036) begin
          dl_out_mask_56 <= 1'h0;
        end else begin
          if (_T_4171) begin
            dl_out_mask_56 <= 1'h0;
          end else begin
            dl_out_mask_56 <= dat_out_bypass_mask_56;
          end
        end
      end
    end
    if (_T_207) begin
      dl_out_mask_57 <= 1'h0;
    end else begin
      if (_T_4435) begin
        if (_T_4036) begin
          dl_out_mask_57 <= 1'h0;
        end else begin
          if (_T_4171) begin
            dl_out_mask_57 <= 1'h0;
          end else begin
            dl_out_mask_57 <= dat_out_bypass_mask_57;
          end
        end
      end
    end
    if (_T_207) begin
      dl_out_mask_58 <= 1'h0;
    end else begin
      if (_T_4435) begin
        if (_T_4036) begin
          dl_out_mask_58 <= 1'h0;
        end else begin
          if (_T_4171) begin
            dl_out_mask_58 <= 1'h0;
          end else begin
            dl_out_mask_58 <= dat_out_bypass_mask_58;
          end
        end
      end
    end
    if (_T_207) begin
      dl_out_mask_59 <= 1'h0;
    end else begin
      if (_T_4435) begin
        if (_T_4036) begin
          dl_out_mask_59 <= 1'h0;
        end else begin
          if (_T_4171) begin
            dl_out_mask_59 <= 1'h0;
          end else begin
            dl_out_mask_59 <= dat_out_bypass_mask_59;
          end
        end
      end
    end
    if (_T_207) begin
      dl_out_mask_60 <= 1'h0;
    end else begin
      if (_T_4435) begin
        if (_T_4036) begin
          dl_out_mask_60 <= 1'h0;
        end else begin
          if (_T_4171) begin
            dl_out_mask_60 <= 1'h0;
          end else begin
            dl_out_mask_60 <= dat_out_bypass_mask_60;
          end
        end
      end
    end
    if (_T_207) begin
      dl_out_mask_61 <= 1'h0;
    end else begin
      if (_T_4435) begin
        if (_T_4036) begin
          dl_out_mask_61 <= 1'h0;
        end else begin
          if (_T_4171) begin
            dl_out_mask_61 <= 1'h0;
          end else begin
            dl_out_mask_61 <= dat_out_bypass_mask_61;
          end
        end
      end
    end
    if (_T_207) begin
      dl_out_mask_62 <= 1'h0;
    end else begin
      if (_T_4435) begin
        if (_T_4036) begin
          dl_out_mask_62 <= 1'h0;
        end else begin
          if (_T_4171) begin
            dl_out_mask_62 <= 1'h0;
          end else begin
            dl_out_mask_62 <= dat_out_bypass_mask_62;
          end
        end
      end
    end
    if (_T_207) begin
      dl_out_mask_63 <= 1'h0;
    end else begin
      if (_T_4435) begin
        if (_T_4036) begin
          dl_out_mask_63 <= 1'h0;
        end else begin
          if (_T_4171) begin
            dl_out_mask_63 <= 1'h0;
          end else begin
            dl_out_mask_63 <= dat_out_bypass_mask_63;
          end
        end
      end
    end
    if (_T_207) begin
      dl_out_flag <= 9'h0;
    end else begin
      if (dat_out_pvld) begin
        dl_out_flag <= dat_out_flag;
      end
    end
    if (dat_out_mask_0) begin
      if (_T_3904) begin
        dl_out_data_0 <= 8'h0;
      end else begin
        dl_out_data_0 <= dat_out_bypass_data_0;
      end
    end
    if (dat_out_mask_1) begin
      if (_T_3904) begin
        dl_out_data_1 <= 8'h0;
      end else begin
        dl_out_data_1 <= dat_out_bypass_data_1;
      end
    end
    if (dat_out_mask_2) begin
      if (_T_3904) begin
        dl_out_data_2 <= 8'h0;
      end else begin
        dl_out_data_2 <= dat_out_bypass_data_2;
      end
    end
    if (dat_out_mask_3) begin
      if (_T_3904) begin
        dl_out_data_3 <= 8'h0;
      end else begin
        dl_out_data_3 <= dat_out_bypass_data_3;
      end
    end
    if (dat_out_mask_4) begin
      if (_T_3904) begin
        dl_out_data_4 <= 8'h0;
      end else begin
        dl_out_data_4 <= dat_out_bypass_data_4;
      end
    end
    if (dat_out_mask_5) begin
      if (_T_3904) begin
        dl_out_data_5 <= 8'h0;
      end else begin
        dl_out_data_5 <= dat_out_bypass_data_5;
      end
    end
    if (dat_out_mask_6) begin
      if (_T_3904) begin
        dl_out_data_6 <= 8'h0;
      end else begin
        dl_out_data_6 <= dat_out_bypass_data_6;
      end
    end
    if (dat_out_mask_7) begin
      if (_T_3904) begin
        dl_out_data_7 <= 8'h0;
      end else begin
        dl_out_data_7 <= dat_out_bypass_data_7;
      end
    end
    if (dat_out_mask_8) begin
      if (_T_3904) begin
        dl_out_data_8 <= 8'h0;
      end else begin
        dl_out_data_8 <= dat_out_bypass_data_8;
      end
    end
    if (dat_out_mask_9) begin
      if (_T_3904) begin
        dl_out_data_9 <= 8'h0;
      end else begin
        dl_out_data_9 <= dat_out_bypass_data_9;
      end
    end
    if (dat_out_mask_10) begin
      if (_T_3904) begin
        dl_out_data_10 <= 8'h0;
      end else begin
        dl_out_data_10 <= dat_out_bypass_data_10;
      end
    end
    if (dat_out_mask_11) begin
      if (_T_3904) begin
        dl_out_data_11 <= 8'h0;
      end else begin
        dl_out_data_11 <= dat_out_bypass_data_11;
      end
    end
    if (dat_out_mask_12) begin
      if (_T_3904) begin
        dl_out_data_12 <= 8'h0;
      end else begin
        dl_out_data_12 <= dat_out_bypass_data_12;
      end
    end
    if (dat_out_mask_13) begin
      if (_T_3904) begin
        dl_out_data_13 <= 8'h0;
      end else begin
        dl_out_data_13 <= dat_out_bypass_data_13;
      end
    end
    if (dat_out_mask_14) begin
      if (_T_3904) begin
        dl_out_data_14 <= 8'h0;
      end else begin
        dl_out_data_14 <= dat_out_bypass_data_14;
      end
    end
    if (dat_out_mask_15) begin
      if (_T_3904) begin
        dl_out_data_15 <= 8'h0;
      end else begin
        dl_out_data_15 <= dat_out_bypass_data_15;
      end
    end
    if (dat_out_mask_16) begin
      if (_T_3904) begin
        dl_out_data_16 <= 8'h0;
      end else begin
        dl_out_data_16 <= dat_out_bypass_data_16;
      end
    end
    if (dat_out_mask_17) begin
      if (_T_3904) begin
        dl_out_data_17 <= 8'h0;
      end else begin
        dl_out_data_17 <= dat_out_bypass_data_17;
      end
    end
    if (dat_out_mask_18) begin
      if (_T_3904) begin
        dl_out_data_18 <= 8'h0;
      end else begin
        dl_out_data_18 <= dat_out_bypass_data_18;
      end
    end
    if (dat_out_mask_19) begin
      if (_T_3904) begin
        dl_out_data_19 <= 8'h0;
      end else begin
        dl_out_data_19 <= dat_out_bypass_data_19;
      end
    end
    if (dat_out_mask_20) begin
      if (_T_3904) begin
        dl_out_data_20 <= 8'h0;
      end else begin
        dl_out_data_20 <= dat_out_bypass_data_20;
      end
    end
    if (dat_out_mask_21) begin
      if (_T_3904) begin
        dl_out_data_21 <= 8'h0;
      end else begin
        dl_out_data_21 <= dat_out_bypass_data_21;
      end
    end
    if (dat_out_mask_22) begin
      if (_T_3904) begin
        dl_out_data_22 <= 8'h0;
      end else begin
        dl_out_data_22 <= dat_out_bypass_data_22;
      end
    end
    if (dat_out_mask_23) begin
      if (_T_3904) begin
        dl_out_data_23 <= 8'h0;
      end else begin
        dl_out_data_23 <= dat_out_bypass_data_23;
      end
    end
    if (dat_out_mask_24) begin
      if (_T_3904) begin
        dl_out_data_24 <= 8'h0;
      end else begin
        dl_out_data_24 <= dat_out_bypass_data_24;
      end
    end
    if (dat_out_mask_25) begin
      if (_T_3904) begin
        dl_out_data_25 <= 8'h0;
      end else begin
        dl_out_data_25 <= dat_out_bypass_data_25;
      end
    end
    if (dat_out_mask_26) begin
      if (_T_3904) begin
        dl_out_data_26 <= 8'h0;
      end else begin
        dl_out_data_26 <= dat_out_bypass_data_26;
      end
    end
    if (dat_out_mask_27) begin
      if (_T_3904) begin
        dl_out_data_27 <= 8'h0;
      end else begin
        dl_out_data_27 <= dat_out_bypass_data_27;
      end
    end
    if (dat_out_mask_28) begin
      if (_T_3904) begin
        dl_out_data_28 <= 8'h0;
      end else begin
        dl_out_data_28 <= dat_out_bypass_data_28;
      end
    end
    if (dat_out_mask_29) begin
      if (_T_3904) begin
        dl_out_data_29 <= 8'h0;
      end else begin
        dl_out_data_29 <= dat_out_bypass_data_29;
      end
    end
    if (dat_out_mask_30) begin
      if (_T_3904) begin
        dl_out_data_30 <= 8'h0;
      end else begin
        dl_out_data_30 <= dat_out_bypass_data_30;
      end
    end
    if (dat_out_mask_31) begin
      if (_T_3904) begin
        dl_out_data_31 <= 8'h0;
      end else begin
        dl_out_data_31 <= dat_out_bypass_data_31;
      end
    end
    if (dat_out_mask_32) begin
      if (_T_3904) begin
        dl_out_data_32 <= 8'h0;
      end else begin
        dl_out_data_32 <= dat_out_bypass_data_32;
      end
    end
    if (dat_out_mask_33) begin
      if (_T_3904) begin
        dl_out_data_33 <= 8'h0;
      end else begin
        dl_out_data_33 <= dat_out_bypass_data_33;
      end
    end
    if (dat_out_mask_34) begin
      if (_T_3904) begin
        dl_out_data_34 <= 8'h0;
      end else begin
        dl_out_data_34 <= dat_out_bypass_data_34;
      end
    end
    if (dat_out_mask_35) begin
      if (_T_3904) begin
        dl_out_data_35 <= 8'h0;
      end else begin
        dl_out_data_35 <= dat_out_bypass_data_35;
      end
    end
    if (dat_out_mask_36) begin
      if (_T_3904) begin
        dl_out_data_36 <= 8'h0;
      end else begin
        dl_out_data_36 <= dat_out_bypass_data_36;
      end
    end
    if (dat_out_mask_37) begin
      if (_T_3904) begin
        dl_out_data_37 <= 8'h0;
      end else begin
        dl_out_data_37 <= dat_out_bypass_data_37;
      end
    end
    if (dat_out_mask_38) begin
      if (_T_3904) begin
        dl_out_data_38 <= 8'h0;
      end else begin
        dl_out_data_38 <= dat_out_bypass_data_38;
      end
    end
    if (dat_out_mask_39) begin
      if (_T_3904) begin
        dl_out_data_39 <= 8'h0;
      end else begin
        dl_out_data_39 <= dat_out_bypass_data_39;
      end
    end
    if (dat_out_mask_40) begin
      if (_T_3904) begin
        dl_out_data_40 <= 8'h0;
      end else begin
        dl_out_data_40 <= dat_out_bypass_data_40;
      end
    end
    if (dat_out_mask_41) begin
      if (_T_3904) begin
        dl_out_data_41 <= 8'h0;
      end else begin
        dl_out_data_41 <= dat_out_bypass_data_41;
      end
    end
    if (dat_out_mask_42) begin
      if (_T_3904) begin
        dl_out_data_42 <= 8'h0;
      end else begin
        dl_out_data_42 <= dat_out_bypass_data_42;
      end
    end
    if (dat_out_mask_43) begin
      if (_T_3904) begin
        dl_out_data_43 <= 8'h0;
      end else begin
        dl_out_data_43 <= dat_out_bypass_data_43;
      end
    end
    if (dat_out_mask_44) begin
      if (_T_3904) begin
        dl_out_data_44 <= 8'h0;
      end else begin
        dl_out_data_44 <= dat_out_bypass_data_44;
      end
    end
    if (dat_out_mask_45) begin
      if (_T_3904) begin
        dl_out_data_45 <= 8'h0;
      end else begin
        dl_out_data_45 <= dat_out_bypass_data_45;
      end
    end
    if (dat_out_mask_46) begin
      if (_T_3904) begin
        dl_out_data_46 <= 8'h0;
      end else begin
        dl_out_data_46 <= dat_out_bypass_data_46;
      end
    end
    if (dat_out_mask_47) begin
      if (_T_3904) begin
        dl_out_data_47 <= 8'h0;
      end else begin
        dl_out_data_47 <= dat_out_bypass_data_47;
      end
    end
    if (dat_out_mask_48) begin
      if (_T_3904) begin
        dl_out_data_48 <= 8'h0;
      end else begin
        dl_out_data_48 <= dat_out_bypass_data_48;
      end
    end
    if (dat_out_mask_49) begin
      if (_T_3904) begin
        dl_out_data_49 <= 8'h0;
      end else begin
        dl_out_data_49 <= dat_out_bypass_data_49;
      end
    end
    if (dat_out_mask_50) begin
      if (_T_3904) begin
        dl_out_data_50 <= 8'h0;
      end else begin
        dl_out_data_50 <= dat_out_bypass_data_50;
      end
    end
    if (dat_out_mask_51) begin
      if (_T_3904) begin
        dl_out_data_51 <= 8'h0;
      end else begin
        dl_out_data_51 <= dat_out_bypass_data_51;
      end
    end
    if (dat_out_mask_52) begin
      if (_T_3904) begin
        dl_out_data_52 <= 8'h0;
      end else begin
        dl_out_data_52 <= dat_out_bypass_data_52;
      end
    end
    if (dat_out_mask_53) begin
      if (_T_3904) begin
        dl_out_data_53 <= 8'h0;
      end else begin
        dl_out_data_53 <= dat_out_bypass_data_53;
      end
    end
    if (dat_out_mask_54) begin
      if (_T_3904) begin
        dl_out_data_54 <= 8'h0;
      end else begin
        dl_out_data_54 <= dat_out_bypass_data_54;
      end
    end
    if (dat_out_mask_55) begin
      if (_T_3904) begin
        dl_out_data_55 <= 8'h0;
      end else begin
        dl_out_data_55 <= dat_out_bypass_data_55;
      end
    end
    if (dat_out_mask_56) begin
      if (_T_3904) begin
        dl_out_data_56 <= 8'h0;
      end else begin
        dl_out_data_56 <= dat_out_bypass_data_56;
      end
    end
    if (dat_out_mask_57) begin
      if (_T_3904) begin
        dl_out_data_57 <= 8'h0;
      end else begin
        dl_out_data_57 <= dat_out_bypass_data_57;
      end
    end
    if (dat_out_mask_58) begin
      if (_T_3904) begin
        dl_out_data_58 <= 8'h0;
      end else begin
        dl_out_data_58 <= dat_out_bypass_data_58;
      end
    end
    if (dat_out_mask_59) begin
      if (_T_3904) begin
        dl_out_data_59 <= 8'h0;
      end else begin
        dl_out_data_59 <= dat_out_bypass_data_59;
      end
    end
    if (dat_out_mask_60) begin
      if (_T_3904) begin
        dl_out_data_60 <= 8'h0;
      end else begin
        dl_out_data_60 <= dat_out_bypass_data_60;
      end
    end
    if (dat_out_mask_61) begin
      if (_T_3904) begin
        dl_out_data_61 <= 8'h0;
      end else begin
        dl_out_data_61 <= dat_out_bypass_data_61;
      end
    end
    if (dat_out_mask_62) begin
      if (_T_3904) begin
        dl_out_data_62 <= 8'h0;
      end else begin
        dl_out_data_62 <= dat_out_bypass_data_62;
      end
    end
    if (dat_out_mask_63) begin
      if (_T_3904) begin
        dl_out_data_63 <= 8'h0;
      end else begin
        dl_out_data_63 <= dat_out_bypass_data_63;
      end
    end
    if (_T_207) begin
      dl_out_pvld_d1 <= 1'h0;
    end else begin
      dl_out_pvld_d1 <= dl_out_pvld;
    end
    if (_T_207) begin
      _T_4442 <= 1'h0;
    end else begin
      _T_4442 <= dl_out_pvld;
    end
    if (_T_207) begin
      _T_4445 <= 1'h0;
    end else begin
      _T_4445 <= dl_out_pvld;
    end
    if (_T_207) begin
      _T_4449 <= 9'h0;
    end else begin
      if (_T_4447) begin
        if (_T_4438) begin
          _T_4449 <= 9'h0;
        end else begin
          _T_4449 <= dl_out_flag;
        end
      end
    end
    if (_T_207) begin
      _T_4453 <= 9'h0;
    end else begin
      if (_T_4447) begin
        if (_T_4438) begin
          _T_4453 <= 9'h0;
        end else begin
          _T_4453 <= dl_out_flag;
        end
      end
    end
    if (_T_207) begin
      _T_4721_0 <= 1'h0;
    end else begin
      if (_T_4447) begin
        _T_4721_0 <= dl_out_mask_0;
      end
    end
    if (_T_207) begin
      _T_4721_1 <= 1'h0;
    end else begin
      if (_T_4447) begin
        _T_4721_1 <= dl_out_mask_1;
      end
    end
    if (_T_207) begin
      _T_4721_2 <= 1'h0;
    end else begin
      if (_T_4447) begin
        _T_4721_2 <= dl_out_mask_2;
      end
    end
    if (_T_207) begin
      _T_4721_3 <= 1'h0;
    end else begin
      if (_T_4447) begin
        _T_4721_3 <= dl_out_mask_3;
      end
    end
    if (_T_207) begin
      _T_4721_4 <= 1'h0;
    end else begin
      if (_T_4447) begin
        _T_4721_4 <= dl_out_mask_4;
      end
    end
    if (_T_207) begin
      _T_4721_5 <= 1'h0;
    end else begin
      if (_T_4447) begin
        _T_4721_5 <= dl_out_mask_5;
      end
    end
    if (_T_207) begin
      _T_4721_6 <= 1'h0;
    end else begin
      if (_T_4447) begin
        _T_4721_6 <= dl_out_mask_6;
      end
    end
    if (_T_207) begin
      _T_4721_7 <= 1'h0;
    end else begin
      if (_T_4447) begin
        _T_4721_7 <= dl_out_mask_7;
      end
    end
    if (_T_207) begin
      _T_4721_8 <= 1'h0;
    end else begin
      if (_T_4447) begin
        _T_4721_8 <= dl_out_mask_8;
      end
    end
    if (_T_207) begin
      _T_4721_9 <= 1'h0;
    end else begin
      if (_T_4447) begin
        _T_4721_9 <= dl_out_mask_9;
      end
    end
    if (_T_207) begin
      _T_4721_10 <= 1'h0;
    end else begin
      if (_T_4447) begin
        _T_4721_10 <= dl_out_mask_10;
      end
    end
    if (_T_207) begin
      _T_4721_11 <= 1'h0;
    end else begin
      if (_T_4447) begin
        _T_4721_11 <= dl_out_mask_11;
      end
    end
    if (_T_207) begin
      _T_4721_12 <= 1'h0;
    end else begin
      if (_T_4447) begin
        _T_4721_12 <= dl_out_mask_12;
      end
    end
    if (_T_207) begin
      _T_4721_13 <= 1'h0;
    end else begin
      if (_T_4447) begin
        _T_4721_13 <= dl_out_mask_13;
      end
    end
    if (_T_207) begin
      _T_4721_14 <= 1'h0;
    end else begin
      if (_T_4447) begin
        _T_4721_14 <= dl_out_mask_14;
      end
    end
    if (_T_207) begin
      _T_4721_15 <= 1'h0;
    end else begin
      if (_T_4447) begin
        _T_4721_15 <= dl_out_mask_15;
      end
    end
    if (_T_207) begin
      _T_4721_16 <= 1'h0;
    end else begin
      if (_T_4447) begin
        _T_4721_16 <= dl_out_mask_16;
      end
    end
    if (_T_207) begin
      _T_4721_17 <= 1'h0;
    end else begin
      if (_T_4447) begin
        _T_4721_17 <= dl_out_mask_17;
      end
    end
    if (_T_207) begin
      _T_4721_18 <= 1'h0;
    end else begin
      if (_T_4447) begin
        _T_4721_18 <= dl_out_mask_18;
      end
    end
    if (_T_207) begin
      _T_4721_19 <= 1'h0;
    end else begin
      if (_T_4447) begin
        _T_4721_19 <= dl_out_mask_19;
      end
    end
    if (_T_207) begin
      _T_4721_20 <= 1'h0;
    end else begin
      if (_T_4447) begin
        _T_4721_20 <= dl_out_mask_20;
      end
    end
    if (_T_207) begin
      _T_4721_21 <= 1'h0;
    end else begin
      if (_T_4447) begin
        _T_4721_21 <= dl_out_mask_21;
      end
    end
    if (_T_207) begin
      _T_4721_22 <= 1'h0;
    end else begin
      if (_T_4447) begin
        _T_4721_22 <= dl_out_mask_22;
      end
    end
    if (_T_207) begin
      _T_4721_23 <= 1'h0;
    end else begin
      if (_T_4447) begin
        _T_4721_23 <= dl_out_mask_23;
      end
    end
    if (_T_207) begin
      _T_4721_24 <= 1'h0;
    end else begin
      if (_T_4447) begin
        _T_4721_24 <= dl_out_mask_24;
      end
    end
    if (_T_207) begin
      _T_4721_25 <= 1'h0;
    end else begin
      if (_T_4447) begin
        _T_4721_25 <= dl_out_mask_25;
      end
    end
    if (_T_207) begin
      _T_4721_26 <= 1'h0;
    end else begin
      if (_T_4447) begin
        _T_4721_26 <= dl_out_mask_26;
      end
    end
    if (_T_207) begin
      _T_4721_27 <= 1'h0;
    end else begin
      if (_T_4447) begin
        _T_4721_27 <= dl_out_mask_27;
      end
    end
    if (_T_207) begin
      _T_4721_28 <= 1'h0;
    end else begin
      if (_T_4447) begin
        _T_4721_28 <= dl_out_mask_28;
      end
    end
    if (_T_207) begin
      _T_4721_29 <= 1'h0;
    end else begin
      if (_T_4447) begin
        _T_4721_29 <= dl_out_mask_29;
      end
    end
    if (_T_207) begin
      _T_4721_30 <= 1'h0;
    end else begin
      if (_T_4447) begin
        _T_4721_30 <= dl_out_mask_30;
      end
    end
    if (_T_207) begin
      _T_4721_31 <= 1'h0;
    end else begin
      if (_T_4447) begin
        _T_4721_31 <= dl_out_mask_31;
      end
    end
    if (_T_207) begin
      _T_4721_32 <= 1'h0;
    end else begin
      if (_T_4447) begin
        _T_4721_32 <= dl_out_mask_32;
      end
    end
    if (_T_207) begin
      _T_4721_33 <= 1'h0;
    end else begin
      if (_T_4447) begin
        _T_4721_33 <= dl_out_mask_33;
      end
    end
    if (_T_207) begin
      _T_4721_34 <= 1'h0;
    end else begin
      if (_T_4447) begin
        _T_4721_34 <= dl_out_mask_34;
      end
    end
    if (_T_207) begin
      _T_4721_35 <= 1'h0;
    end else begin
      if (_T_4447) begin
        _T_4721_35 <= dl_out_mask_35;
      end
    end
    if (_T_207) begin
      _T_4721_36 <= 1'h0;
    end else begin
      if (_T_4447) begin
        _T_4721_36 <= dl_out_mask_36;
      end
    end
    if (_T_207) begin
      _T_4721_37 <= 1'h0;
    end else begin
      if (_T_4447) begin
        _T_4721_37 <= dl_out_mask_37;
      end
    end
    if (_T_207) begin
      _T_4721_38 <= 1'h0;
    end else begin
      if (_T_4447) begin
        _T_4721_38 <= dl_out_mask_38;
      end
    end
    if (_T_207) begin
      _T_4721_39 <= 1'h0;
    end else begin
      if (_T_4447) begin
        _T_4721_39 <= dl_out_mask_39;
      end
    end
    if (_T_207) begin
      _T_4721_40 <= 1'h0;
    end else begin
      if (_T_4447) begin
        _T_4721_40 <= dl_out_mask_40;
      end
    end
    if (_T_207) begin
      _T_4721_41 <= 1'h0;
    end else begin
      if (_T_4447) begin
        _T_4721_41 <= dl_out_mask_41;
      end
    end
    if (_T_207) begin
      _T_4721_42 <= 1'h0;
    end else begin
      if (_T_4447) begin
        _T_4721_42 <= dl_out_mask_42;
      end
    end
    if (_T_207) begin
      _T_4721_43 <= 1'h0;
    end else begin
      if (_T_4447) begin
        _T_4721_43 <= dl_out_mask_43;
      end
    end
    if (_T_207) begin
      _T_4721_44 <= 1'h0;
    end else begin
      if (_T_4447) begin
        _T_4721_44 <= dl_out_mask_44;
      end
    end
    if (_T_207) begin
      _T_4721_45 <= 1'h0;
    end else begin
      if (_T_4447) begin
        _T_4721_45 <= dl_out_mask_45;
      end
    end
    if (_T_207) begin
      _T_4721_46 <= 1'h0;
    end else begin
      if (_T_4447) begin
        _T_4721_46 <= dl_out_mask_46;
      end
    end
    if (_T_207) begin
      _T_4721_47 <= 1'h0;
    end else begin
      if (_T_4447) begin
        _T_4721_47 <= dl_out_mask_47;
      end
    end
    if (_T_207) begin
      _T_4721_48 <= 1'h0;
    end else begin
      if (_T_4447) begin
        _T_4721_48 <= dl_out_mask_48;
      end
    end
    if (_T_207) begin
      _T_4721_49 <= 1'h0;
    end else begin
      if (_T_4447) begin
        _T_4721_49 <= dl_out_mask_49;
      end
    end
    if (_T_207) begin
      _T_4721_50 <= 1'h0;
    end else begin
      if (_T_4447) begin
        _T_4721_50 <= dl_out_mask_50;
      end
    end
    if (_T_207) begin
      _T_4721_51 <= 1'h0;
    end else begin
      if (_T_4447) begin
        _T_4721_51 <= dl_out_mask_51;
      end
    end
    if (_T_207) begin
      _T_4721_52 <= 1'h0;
    end else begin
      if (_T_4447) begin
        _T_4721_52 <= dl_out_mask_52;
      end
    end
    if (_T_207) begin
      _T_4721_53 <= 1'h0;
    end else begin
      if (_T_4447) begin
        _T_4721_53 <= dl_out_mask_53;
      end
    end
    if (_T_207) begin
      _T_4721_54 <= 1'h0;
    end else begin
      if (_T_4447) begin
        _T_4721_54 <= dl_out_mask_54;
      end
    end
    if (_T_207) begin
      _T_4721_55 <= 1'h0;
    end else begin
      if (_T_4447) begin
        _T_4721_55 <= dl_out_mask_55;
      end
    end
    if (_T_207) begin
      _T_4721_56 <= 1'h0;
    end else begin
      if (_T_4447) begin
        _T_4721_56 <= dl_out_mask_56;
      end
    end
    if (_T_207) begin
      _T_4721_57 <= 1'h0;
    end else begin
      if (_T_4447) begin
        _T_4721_57 <= dl_out_mask_57;
      end
    end
    if (_T_207) begin
      _T_4721_58 <= 1'h0;
    end else begin
      if (_T_4447) begin
        _T_4721_58 <= dl_out_mask_58;
      end
    end
    if (_T_207) begin
      _T_4721_59 <= 1'h0;
    end else begin
      if (_T_4447) begin
        _T_4721_59 <= dl_out_mask_59;
      end
    end
    if (_T_207) begin
      _T_4721_60 <= 1'h0;
    end else begin
      if (_T_4447) begin
        _T_4721_60 <= dl_out_mask_60;
      end
    end
    if (_T_207) begin
      _T_4721_61 <= 1'h0;
    end else begin
      if (_T_4447) begin
        _T_4721_61 <= dl_out_mask_61;
      end
    end
    if (_T_207) begin
      _T_4721_62 <= 1'h0;
    end else begin
      if (_T_4447) begin
        _T_4721_62 <= dl_out_mask_62;
      end
    end
    if (_T_207) begin
      _T_4721_63 <= 1'h0;
    end else begin
      if (_T_4447) begin
        _T_4721_63 <= dl_out_mask_63;
      end
    end
    if (_T_207) begin
      _T_5248_0 <= 1'h0;
    end else begin
      if (_T_4447) begin
        _T_5248_0 <= dl_out_mask_0;
      end
    end
    if (_T_207) begin
      _T_5248_1 <= 1'h0;
    end else begin
      if (_T_4447) begin
        _T_5248_1 <= dl_out_mask_1;
      end
    end
    if (_T_207) begin
      _T_5248_2 <= 1'h0;
    end else begin
      if (_T_4447) begin
        _T_5248_2 <= dl_out_mask_2;
      end
    end
    if (_T_207) begin
      _T_5248_3 <= 1'h0;
    end else begin
      if (_T_4447) begin
        _T_5248_3 <= dl_out_mask_3;
      end
    end
    if (_T_207) begin
      _T_5248_4 <= 1'h0;
    end else begin
      if (_T_4447) begin
        _T_5248_4 <= dl_out_mask_4;
      end
    end
    if (_T_207) begin
      _T_5248_5 <= 1'h0;
    end else begin
      if (_T_4447) begin
        _T_5248_5 <= dl_out_mask_5;
      end
    end
    if (_T_207) begin
      _T_5248_6 <= 1'h0;
    end else begin
      if (_T_4447) begin
        _T_5248_6 <= dl_out_mask_6;
      end
    end
    if (_T_207) begin
      _T_5248_7 <= 1'h0;
    end else begin
      if (_T_4447) begin
        _T_5248_7 <= dl_out_mask_7;
      end
    end
    if (_T_207) begin
      _T_5248_8 <= 1'h0;
    end else begin
      if (_T_4447) begin
        _T_5248_8 <= dl_out_mask_8;
      end
    end
    if (_T_207) begin
      _T_5248_9 <= 1'h0;
    end else begin
      if (_T_4447) begin
        _T_5248_9 <= dl_out_mask_9;
      end
    end
    if (_T_207) begin
      _T_5248_10 <= 1'h0;
    end else begin
      if (_T_4447) begin
        _T_5248_10 <= dl_out_mask_10;
      end
    end
    if (_T_207) begin
      _T_5248_11 <= 1'h0;
    end else begin
      if (_T_4447) begin
        _T_5248_11 <= dl_out_mask_11;
      end
    end
    if (_T_207) begin
      _T_5248_12 <= 1'h0;
    end else begin
      if (_T_4447) begin
        _T_5248_12 <= dl_out_mask_12;
      end
    end
    if (_T_207) begin
      _T_5248_13 <= 1'h0;
    end else begin
      if (_T_4447) begin
        _T_5248_13 <= dl_out_mask_13;
      end
    end
    if (_T_207) begin
      _T_5248_14 <= 1'h0;
    end else begin
      if (_T_4447) begin
        _T_5248_14 <= dl_out_mask_14;
      end
    end
    if (_T_207) begin
      _T_5248_15 <= 1'h0;
    end else begin
      if (_T_4447) begin
        _T_5248_15 <= dl_out_mask_15;
      end
    end
    if (_T_207) begin
      _T_5248_16 <= 1'h0;
    end else begin
      if (_T_4447) begin
        _T_5248_16 <= dl_out_mask_16;
      end
    end
    if (_T_207) begin
      _T_5248_17 <= 1'h0;
    end else begin
      if (_T_4447) begin
        _T_5248_17 <= dl_out_mask_17;
      end
    end
    if (_T_207) begin
      _T_5248_18 <= 1'h0;
    end else begin
      if (_T_4447) begin
        _T_5248_18 <= dl_out_mask_18;
      end
    end
    if (_T_207) begin
      _T_5248_19 <= 1'h0;
    end else begin
      if (_T_4447) begin
        _T_5248_19 <= dl_out_mask_19;
      end
    end
    if (_T_207) begin
      _T_5248_20 <= 1'h0;
    end else begin
      if (_T_4447) begin
        _T_5248_20 <= dl_out_mask_20;
      end
    end
    if (_T_207) begin
      _T_5248_21 <= 1'h0;
    end else begin
      if (_T_4447) begin
        _T_5248_21 <= dl_out_mask_21;
      end
    end
    if (_T_207) begin
      _T_5248_22 <= 1'h0;
    end else begin
      if (_T_4447) begin
        _T_5248_22 <= dl_out_mask_22;
      end
    end
    if (_T_207) begin
      _T_5248_23 <= 1'h0;
    end else begin
      if (_T_4447) begin
        _T_5248_23 <= dl_out_mask_23;
      end
    end
    if (_T_207) begin
      _T_5248_24 <= 1'h0;
    end else begin
      if (_T_4447) begin
        _T_5248_24 <= dl_out_mask_24;
      end
    end
    if (_T_207) begin
      _T_5248_25 <= 1'h0;
    end else begin
      if (_T_4447) begin
        _T_5248_25 <= dl_out_mask_25;
      end
    end
    if (_T_207) begin
      _T_5248_26 <= 1'h0;
    end else begin
      if (_T_4447) begin
        _T_5248_26 <= dl_out_mask_26;
      end
    end
    if (_T_207) begin
      _T_5248_27 <= 1'h0;
    end else begin
      if (_T_4447) begin
        _T_5248_27 <= dl_out_mask_27;
      end
    end
    if (_T_207) begin
      _T_5248_28 <= 1'h0;
    end else begin
      if (_T_4447) begin
        _T_5248_28 <= dl_out_mask_28;
      end
    end
    if (_T_207) begin
      _T_5248_29 <= 1'h0;
    end else begin
      if (_T_4447) begin
        _T_5248_29 <= dl_out_mask_29;
      end
    end
    if (_T_207) begin
      _T_5248_30 <= 1'h0;
    end else begin
      if (_T_4447) begin
        _T_5248_30 <= dl_out_mask_30;
      end
    end
    if (_T_207) begin
      _T_5248_31 <= 1'h0;
    end else begin
      if (_T_4447) begin
        _T_5248_31 <= dl_out_mask_31;
      end
    end
    if (_T_207) begin
      _T_5248_32 <= 1'h0;
    end else begin
      if (_T_4447) begin
        _T_5248_32 <= dl_out_mask_32;
      end
    end
    if (_T_207) begin
      _T_5248_33 <= 1'h0;
    end else begin
      if (_T_4447) begin
        _T_5248_33 <= dl_out_mask_33;
      end
    end
    if (_T_207) begin
      _T_5248_34 <= 1'h0;
    end else begin
      if (_T_4447) begin
        _T_5248_34 <= dl_out_mask_34;
      end
    end
    if (_T_207) begin
      _T_5248_35 <= 1'h0;
    end else begin
      if (_T_4447) begin
        _T_5248_35 <= dl_out_mask_35;
      end
    end
    if (_T_207) begin
      _T_5248_36 <= 1'h0;
    end else begin
      if (_T_4447) begin
        _T_5248_36 <= dl_out_mask_36;
      end
    end
    if (_T_207) begin
      _T_5248_37 <= 1'h0;
    end else begin
      if (_T_4447) begin
        _T_5248_37 <= dl_out_mask_37;
      end
    end
    if (_T_207) begin
      _T_5248_38 <= 1'h0;
    end else begin
      if (_T_4447) begin
        _T_5248_38 <= dl_out_mask_38;
      end
    end
    if (_T_207) begin
      _T_5248_39 <= 1'h0;
    end else begin
      if (_T_4447) begin
        _T_5248_39 <= dl_out_mask_39;
      end
    end
    if (_T_207) begin
      _T_5248_40 <= 1'h0;
    end else begin
      if (_T_4447) begin
        _T_5248_40 <= dl_out_mask_40;
      end
    end
    if (_T_207) begin
      _T_5248_41 <= 1'h0;
    end else begin
      if (_T_4447) begin
        _T_5248_41 <= dl_out_mask_41;
      end
    end
    if (_T_207) begin
      _T_5248_42 <= 1'h0;
    end else begin
      if (_T_4447) begin
        _T_5248_42 <= dl_out_mask_42;
      end
    end
    if (_T_207) begin
      _T_5248_43 <= 1'h0;
    end else begin
      if (_T_4447) begin
        _T_5248_43 <= dl_out_mask_43;
      end
    end
    if (_T_207) begin
      _T_5248_44 <= 1'h0;
    end else begin
      if (_T_4447) begin
        _T_5248_44 <= dl_out_mask_44;
      end
    end
    if (_T_207) begin
      _T_5248_45 <= 1'h0;
    end else begin
      if (_T_4447) begin
        _T_5248_45 <= dl_out_mask_45;
      end
    end
    if (_T_207) begin
      _T_5248_46 <= 1'h0;
    end else begin
      if (_T_4447) begin
        _T_5248_46 <= dl_out_mask_46;
      end
    end
    if (_T_207) begin
      _T_5248_47 <= 1'h0;
    end else begin
      if (_T_4447) begin
        _T_5248_47 <= dl_out_mask_47;
      end
    end
    if (_T_207) begin
      _T_5248_48 <= 1'h0;
    end else begin
      if (_T_4447) begin
        _T_5248_48 <= dl_out_mask_48;
      end
    end
    if (_T_207) begin
      _T_5248_49 <= 1'h0;
    end else begin
      if (_T_4447) begin
        _T_5248_49 <= dl_out_mask_49;
      end
    end
    if (_T_207) begin
      _T_5248_50 <= 1'h0;
    end else begin
      if (_T_4447) begin
        _T_5248_50 <= dl_out_mask_50;
      end
    end
    if (_T_207) begin
      _T_5248_51 <= 1'h0;
    end else begin
      if (_T_4447) begin
        _T_5248_51 <= dl_out_mask_51;
      end
    end
    if (_T_207) begin
      _T_5248_52 <= 1'h0;
    end else begin
      if (_T_4447) begin
        _T_5248_52 <= dl_out_mask_52;
      end
    end
    if (_T_207) begin
      _T_5248_53 <= 1'h0;
    end else begin
      if (_T_4447) begin
        _T_5248_53 <= dl_out_mask_53;
      end
    end
    if (_T_207) begin
      _T_5248_54 <= 1'h0;
    end else begin
      if (_T_4447) begin
        _T_5248_54 <= dl_out_mask_54;
      end
    end
    if (_T_207) begin
      _T_5248_55 <= 1'h0;
    end else begin
      if (_T_4447) begin
        _T_5248_55 <= dl_out_mask_55;
      end
    end
    if (_T_207) begin
      _T_5248_56 <= 1'h0;
    end else begin
      if (_T_4447) begin
        _T_5248_56 <= dl_out_mask_56;
      end
    end
    if (_T_207) begin
      _T_5248_57 <= 1'h0;
    end else begin
      if (_T_4447) begin
        _T_5248_57 <= dl_out_mask_57;
      end
    end
    if (_T_207) begin
      _T_5248_58 <= 1'h0;
    end else begin
      if (_T_4447) begin
        _T_5248_58 <= dl_out_mask_58;
      end
    end
    if (_T_207) begin
      _T_5248_59 <= 1'h0;
    end else begin
      if (_T_4447) begin
        _T_5248_59 <= dl_out_mask_59;
      end
    end
    if (_T_207) begin
      _T_5248_60 <= 1'h0;
    end else begin
      if (_T_4447) begin
        _T_5248_60 <= dl_out_mask_60;
      end
    end
    if (_T_207) begin
      _T_5248_61 <= 1'h0;
    end else begin
      if (_T_4447) begin
        _T_5248_61 <= dl_out_mask_61;
      end
    end
    if (_T_207) begin
      _T_5248_62 <= 1'h0;
    end else begin
      if (_T_4447) begin
        _T_5248_62 <= dl_out_mask_62;
      end
    end
    if (_T_207) begin
      _T_5248_63 <= 1'h0;
    end else begin
      if (_T_4447) begin
        _T_5248_63 <= dl_out_mask_63;
      end
    end
    if (dl_out_mask_0) begin
      _T_5509 <= dl_out_data_0;
    end
    if (dl_out_mask_0) begin
      _T_5511 <= dl_out_data_0;
    end
    if (dl_out_mask_1) begin
      _T_5513 <= dl_out_data_1;
    end
    if (dl_out_mask_1) begin
      _T_5515 <= dl_out_data_1;
    end
    if (dl_out_mask_2) begin
      _T_5517 <= dl_out_data_2;
    end
    if (dl_out_mask_2) begin
      _T_5519 <= dl_out_data_2;
    end
    if (dl_out_mask_3) begin
      _T_5521 <= dl_out_data_3;
    end
    if (dl_out_mask_3) begin
      _T_5523 <= dl_out_data_3;
    end
    if (dl_out_mask_4) begin
      _T_5525 <= dl_out_data_4;
    end
    if (dl_out_mask_4) begin
      _T_5527 <= dl_out_data_4;
    end
    if (dl_out_mask_5) begin
      _T_5529 <= dl_out_data_5;
    end
    if (dl_out_mask_5) begin
      _T_5531 <= dl_out_data_5;
    end
    if (dl_out_mask_6) begin
      _T_5533 <= dl_out_data_6;
    end
    if (dl_out_mask_6) begin
      _T_5535 <= dl_out_data_6;
    end
    if (dl_out_mask_7) begin
      _T_5537 <= dl_out_data_7;
    end
    if (dl_out_mask_7) begin
      _T_5539 <= dl_out_data_7;
    end
    if (dl_out_mask_8) begin
      _T_5541 <= dl_out_data_8;
    end
    if (dl_out_mask_8) begin
      _T_5543 <= dl_out_data_8;
    end
    if (dl_out_mask_9) begin
      _T_5545 <= dl_out_data_9;
    end
    if (dl_out_mask_9) begin
      _T_5547 <= dl_out_data_9;
    end
    if (dl_out_mask_10) begin
      _T_5549 <= dl_out_data_10;
    end
    if (dl_out_mask_10) begin
      _T_5551 <= dl_out_data_10;
    end
    if (dl_out_mask_11) begin
      _T_5553 <= dl_out_data_11;
    end
    if (dl_out_mask_11) begin
      _T_5555 <= dl_out_data_11;
    end
    if (dl_out_mask_12) begin
      _T_5557 <= dl_out_data_12;
    end
    if (dl_out_mask_12) begin
      _T_5559 <= dl_out_data_12;
    end
    if (dl_out_mask_13) begin
      _T_5561 <= dl_out_data_13;
    end
    if (dl_out_mask_13) begin
      _T_5563 <= dl_out_data_13;
    end
    if (dl_out_mask_14) begin
      _T_5565 <= dl_out_data_14;
    end
    if (dl_out_mask_14) begin
      _T_5567 <= dl_out_data_14;
    end
    if (dl_out_mask_15) begin
      _T_5569 <= dl_out_data_15;
    end
    if (dl_out_mask_15) begin
      _T_5571 <= dl_out_data_15;
    end
    if (dl_out_mask_16) begin
      _T_5573 <= dl_out_data_16;
    end
    if (dl_out_mask_16) begin
      _T_5575 <= dl_out_data_16;
    end
    if (dl_out_mask_17) begin
      _T_5577 <= dl_out_data_17;
    end
    if (dl_out_mask_17) begin
      _T_5579 <= dl_out_data_17;
    end
    if (dl_out_mask_18) begin
      _T_5581 <= dl_out_data_18;
    end
    if (dl_out_mask_18) begin
      _T_5583 <= dl_out_data_18;
    end
    if (dl_out_mask_19) begin
      _T_5585 <= dl_out_data_19;
    end
    if (dl_out_mask_19) begin
      _T_5587 <= dl_out_data_19;
    end
    if (dl_out_mask_20) begin
      _T_5589 <= dl_out_data_20;
    end
    if (dl_out_mask_20) begin
      _T_5591 <= dl_out_data_20;
    end
    if (dl_out_mask_21) begin
      _T_5593 <= dl_out_data_21;
    end
    if (dl_out_mask_21) begin
      _T_5595 <= dl_out_data_21;
    end
    if (dl_out_mask_22) begin
      _T_5597 <= dl_out_data_22;
    end
    if (dl_out_mask_22) begin
      _T_5599 <= dl_out_data_22;
    end
    if (dl_out_mask_23) begin
      _T_5601 <= dl_out_data_23;
    end
    if (dl_out_mask_23) begin
      _T_5603 <= dl_out_data_23;
    end
    if (dl_out_mask_24) begin
      _T_5605 <= dl_out_data_24;
    end
    if (dl_out_mask_24) begin
      _T_5607 <= dl_out_data_24;
    end
    if (dl_out_mask_25) begin
      _T_5609 <= dl_out_data_25;
    end
    if (dl_out_mask_25) begin
      _T_5611 <= dl_out_data_25;
    end
    if (dl_out_mask_26) begin
      _T_5613 <= dl_out_data_26;
    end
    if (dl_out_mask_26) begin
      _T_5615 <= dl_out_data_26;
    end
    if (dl_out_mask_27) begin
      _T_5617 <= dl_out_data_27;
    end
    if (dl_out_mask_27) begin
      _T_5619 <= dl_out_data_27;
    end
    if (dl_out_mask_28) begin
      _T_5621 <= dl_out_data_28;
    end
    if (dl_out_mask_28) begin
      _T_5623 <= dl_out_data_28;
    end
    if (dl_out_mask_29) begin
      _T_5625 <= dl_out_data_29;
    end
    if (dl_out_mask_29) begin
      _T_5627 <= dl_out_data_29;
    end
    if (dl_out_mask_30) begin
      _T_5629 <= dl_out_data_30;
    end
    if (dl_out_mask_30) begin
      _T_5631 <= dl_out_data_30;
    end
    if (dl_out_mask_31) begin
      _T_5633 <= dl_out_data_31;
    end
    if (dl_out_mask_31) begin
      _T_5635 <= dl_out_data_31;
    end
    if (dl_out_mask_32) begin
      _T_5637 <= dl_out_data_32;
    end
    if (dl_out_mask_32) begin
      _T_5639 <= dl_out_data_32;
    end
    if (dl_out_mask_33) begin
      _T_5641 <= dl_out_data_33;
    end
    if (dl_out_mask_33) begin
      _T_5643 <= dl_out_data_33;
    end
    if (dl_out_mask_34) begin
      _T_5645 <= dl_out_data_34;
    end
    if (dl_out_mask_34) begin
      _T_5647 <= dl_out_data_34;
    end
    if (dl_out_mask_35) begin
      _T_5649 <= dl_out_data_35;
    end
    if (dl_out_mask_35) begin
      _T_5651 <= dl_out_data_35;
    end
    if (dl_out_mask_36) begin
      _T_5653 <= dl_out_data_36;
    end
    if (dl_out_mask_36) begin
      _T_5655 <= dl_out_data_36;
    end
    if (dl_out_mask_37) begin
      _T_5657 <= dl_out_data_37;
    end
    if (dl_out_mask_37) begin
      _T_5659 <= dl_out_data_37;
    end
    if (dl_out_mask_38) begin
      _T_5661 <= dl_out_data_38;
    end
    if (dl_out_mask_38) begin
      _T_5663 <= dl_out_data_38;
    end
    if (dl_out_mask_39) begin
      _T_5665 <= dl_out_data_39;
    end
    if (dl_out_mask_39) begin
      _T_5667 <= dl_out_data_39;
    end
    if (dl_out_mask_40) begin
      _T_5669 <= dl_out_data_40;
    end
    if (dl_out_mask_40) begin
      _T_5671 <= dl_out_data_40;
    end
    if (dl_out_mask_41) begin
      _T_5673 <= dl_out_data_41;
    end
    if (dl_out_mask_41) begin
      _T_5675 <= dl_out_data_41;
    end
    if (dl_out_mask_42) begin
      _T_5677 <= dl_out_data_42;
    end
    if (dl_out_mask_42) begin
      _T_5679 <= dl_out_data_42;
    end
    if (dl_out_mask_43) begin
      _T_5681 <= dl_out_data_43;
    end
    if (dl_out_mask_43) begin
      _T_5683 <= dl_out_data_43;
    end
    if (dl_out_mask_44) begin
      _T_5685 <= dl_out_data_44;
    end
    if (dl_out_mask_44) begin
      _T_5687 <= dl_out_data_44;
    end
    if (dl_out_mask_45) begin
      _T_5689 <= dl_out_data_45;
    end
    if (dl_out_mask_45) begin
      _T_5691 <= dl_out_data_45;
    end
    if (dl_out_mask_46) begin
      _T_5693 <= dl_out_data_46;
    end
    if (dl_out_mask_46) begin
      _T_5695 <= dl_out_data_46;
    end
    if (dl_out_mask_47) begin
      _T_5697 <= dl_out_data_47;
    end
    if (dl_out_mask_47) begin
      _T_5699 <= dl_out_data_47;
    end
    if (dl_out_mask_48) begin
      _T_5701 <= dl_out_data_48;
    end
    if (dl_out_mask_48) begin
      _T_5703 <= dl_out_data_48;
    end
    if (dl_out_mask_49) begin
      _T_5705 <= dl_out_data_49;
    end
    if (dl_out_mask_49) begin
      _T_5707 <= dl_out_data_49;
    end
    if (dl_out_mask_50) begin
      _T_5709 <= dl_out_data_50;
    end
    if (dl_out_mask_50) begin
      _T_5711 <= dl_out_data_50;
    end
    if (dl_out_mask_51) begin
      _T_5713 <= dl_out_data_51;
    end
    if (dl_out_mask_51) begin
      _T_5715 <= dl_out_data_51;
    end
    if (dl_out_mask_52) begin
      _T_5717 <= dl_out_data_52;
    end
    if (dl_out_mask_52) begin
      _T_5719 <= dl_out_data_52;
    end
    if (dl_out_mask_53) begin
      _T_5721 <= dl_out_data_53;
    end
    if (dl_out_mask_53) begin
      _T_5723 <= dl_out_data_53;
    end
    if (dl_out_mask_54) begin
      _T_5725 <= dl_out_data_54;
    end
    if (dl_out_mask_54) begin
      _T_5727 <= dl_out_data_54;
    end
    if (dl_out_mask_55) begin
      _T_5729 <= dl_out_data_55;
    end
    if (dl_out_mask_55) begin
      _T_5731 <= dl_out_data_55;
    end
    if (dl_out_mask_56) begin
      _T_5733 <= dl_out_data_56;
    end
    if (dl_out_mask_56) begin
      _T_5735 <= dl_out_data_56;
    end
    if (dl_out_mask_57) begin
      _T_5737 <= dl_out_data_57;
    end
    if (dl_out_mask_57) begin
      _T_5739 <= dl_out_data_57;
    end
    if (dl_out_mask_58) begin
      _T_5741 <= dl_out_data_58;
    end
    if (dl_out_mask_58) begin
      _T_5743 <= dl_out_data_58;
    end
    if (dl_out_mask_59) begin
      _T_5745 <= dl_out_data_59;
    end
    if (dl_out_mask_59) begin
      _T_5747 <= dl_out_data_59;
    end
    if (dl_out_mask_60) begin
      _T_5749 <= dl_out_data_60;
    end
    if (dl_out_mask_60) begin
      _T_5751 <= dl_out_data_60;
    end
    if (dl_out_mask_61) begin
      _T_5753 <= dl_out_data_61;
    end
    if (dl_out_mask_61) begin
      _T_5755 <= dl_out_data_61;
    end
    if (dl_out_mask_62) begin
      _T_5757 <= dl_out_data_62;
    end
    if (dl_out_mask_62) begin
      _T_5759 <= dl_out_data_62;
    end
    if (dl_out_mask_63) begin
      _T_5761 <= dl_out_data_63;
    end
    if (dl_out_mask_63) begin
      _T_5763 <= dl_out_data_63;
    end
  end
  always @(posedge nvdla_core_ng_clk) begin
    if (_T_207) begin
      dat_entry_st <= 15'h0;
    end else begin
      if (_T_498) begin
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
