module NV_soDLA_CACC_CALC_int8( // @[:@3.2]
  input         reset, // @[:@5.4]
  input         nvdla_core_clk, // @[:@6.4]
  input  [4:0]  cfg_truncate, // @[:@6.4]
  input  [21:0] in_data, // @[:@6.4]
  input  [33:0] in_op, // @[:@6.4]
  input         in_op_valid, // @[:@6.4]
  input         in_sel, // @[:@6.4]
  input         in_valid, // @[:@6.4]
  output [31:0] out_final_data, // @[:@6.4]
  output        out_final_sat, // @[:@6.4]
  output        out_final_valid, // @[:@6.4]
  output [33:0] out_partial_data, // @[:@6.4]
  output        out_partial_valid // @[:@6.4]
);
  reg  i_sat_vld; // @[NV_soDLA_CACC_CALC_int8.scala 56:28:@8.4]
  reg [31:0] _RAND_0;
  reg  i_sat_sel; // @[NV_soDLA_CACC_CALC_int8.scala 57:29:@9.4]
  reg [31:0] _RAND_1;
  reg [34:0] i_sum_pd; // @[NV_soDLA_CACC_CALC_int8.scala 58:23:@10.4]
  reg [63:0] _RAND_2;
  wire [21:0] _T_34; // @[NV_soDLA_CACC_CALC_int8.scala 63:33:@14.6]
  wire [33:0] _T_36; // @[NV_soDLA_CACC_CALC_int8.scala 63:46:@15.6]
  wire [33:0] _T_37; // @[NV_soDLA_CACC_CALC_int8.scala 63:89:@16.6]
  wire [33:0] _GEN_5; // @[NV_soDLA_CACC_CALC_int8.scala 63:40:@17.6]
  wire [34:0] _T_38; // @[NV_soDLA_CACC_CALC_int8.scala 63:40:@17.6]
  wire [34:0] _T_39; // @[NV_soDLA_CACC_CALC_int8.scala 63:97:@18.6]
  wire  _GEN_0; // @[NV_soDLA_CACC_CALC_int8.scala 61:22:@12.4]
  wire  i_sum_sign; // @[NV_soDLA_CACC_CALC_int8.scala 69:30:@21.4]
  wire  i_sum_msb; // @[NV_soDLA_CACC_CALC_int8.scala 70:29:@22.4]
  wire  _T_42; // @[NV_soDLA_CACC_CALC_int8.scala 74:20:@25.4]
  wire  _T_43; // @[NV_soDLA_CACC_CALC_int8.scala 75:32:@27.6]
  wire [32:0] _T_47; // @[Bitwise.scala 72:12:@29.6]
  wire [32:0] _T_48; // @[NV_soDLA_CACC_CALC_int8.scala 78:31:@33.6]
  wire [32:0] i_sat_bits; // @[NV_soDLA_CACC_CALC_int8.scala 74:31:@26.4]
  wire [33:0] i_sat_pd; // @[Cat.scala 30:58:@36.4]
  wire [33:0] i_pre_sft_pd; // @[NV_soDLA_CACC_CALC_int8.scala 88:27:@40.4]
  wire [49:0] _T_57; // @[Cat.scala 30:58:@41.4]
  wire [49:0] _T_58; // @[NV_soDLA_CACC_CALC_int8.scala 89:66:@42.4]
  wire [49:0] i_pre_sft_pd_pack; // @[NV_soDLA_CACC_CALC_int8.scala 89:73:@43.4]
  wire [49:0] _T_59; // @[Cat.scala 30:58:@44.4]
  wire [33:0] i_sft_pd; // @[NV_soDLA_CACC_CALC_int8.scala 90:42:@45.4]
  wire  i_guide; // @[NV_soDLA_CACC_CALC_int8.scala 91:41:@47.4]
  wire [14:0] i_stick; // @[NV_soDLA_CACC_CALC_int8.scala 92:41:@49.4]
  wire [1:0] _T_62; // @[NV_soDLA_CACC_CALC_int8.scala 94:51:@50.4]
  wire [1:0] _T_63; // @[NV_soDLA_CACC_CALC_int8.scala 94:60:@51.4]
  wire  _T_65; // @[NV_soDLA_CACC_CALC_int8.scala 94:60:@52.4]
  wire  _T_66; // @[NV_soDLA_CACC_CALC_int8.scala 94:41:@53.4]
  wire  _T_67; // @[NV_soDLA_CACC_CALC_int8.scala 94:38:@54.4]
  wire  _T_71; // @[NV_soDLA_CACC_CALC_int8.scala 95:59:@57.4]
  wire  _T_72; // @[NV_soDLA_CACC_CALC_int8.scala 95:39:@58.4]
  wire  _T_73; // @[NV_soDLA_CACC_CALC_int8.scala 94:67:@59.4]
  wire [30:0] _T_75; // @[NV_soDLA_CACC_CALC_int8.scala 96:53:@61.4]
  wire  _T_88; // @[NV_soDLA_CACC_CALC_int8.scala 99:27:@71.4]
  wire  _T_91; // @[NV_soDLA_CACC_CALC_int8.scala 99:61:@73.4]
  wire  _T_92; // @[NV_soDLA_CACC_CALC_int8.scala 99:51:@74.4]
  wire  i_point5; // @[NV_soDLA_CACC_CALC_int8.scala 99:37:@75.4]
  wire [31:0] _T_76; // @[Cat.scala 30:58:@62.4]
  wire [31:0] _T_77; // @[NV_soDLA_CACC_CALC_int8.scala 96:71:@63.4]
  wire  _T_79; // @[NV_soDLA_CACC_CALC_int8.scala 96:71:@64.4]
  wire  _T_80; // @[NV_soDLA_CACC_CALC_int8.scala 96:39:@65.4]
  wire  i_sft_need_sat; // @[NV_soDLA_CACC_CALC_int8.scala 95:65:@66.4]
  wire [31:0] i_sft_max; // @[NV_soDLA_CACC_CALC_int8.scala 97:24:@70.4]
  wire [31:0] _T_94; // @[NV_soDLA_CACC_CALC_int8.scala 100:28:@77.4]
  wire [31:0] _GEN_6; // @[NV_soDLA_CACC_CALC_int8.scala 100:36:@78.4]
  wire [32:0] _T_95; // @[NV_soDLA_CACC_CALC_int8.scala 100:36:@78.4]
  wire [31:0] i_pos_pd; // @[NV_soDLA_CACC_CALC_int8.scala 100:36:@79.4]
  wire [31:0] i_final_result; // @[NV_soDLA_CACC_CALC_int8.scala 103:29:@80.4]
  wire  _T_96; // @[NV_soDLA_CACC_CALC_int8.scala 105:37:@81.4]
  wire  i_partial_vld; // @[NV_soDLA_CACC_CALC_int8.scala 105:35:@82.4]
  wire  i_final_vld; // @[NV_soDLA_CACC_CALC_int8.scala 106:32:@83.4]
  reg  _T_99; // @[NV_soDLA_CACC_CALC_int8.scala 108:36:@84.4]
  reg [31:0] _RAND_3;
  reg [33:0] _T_101; // @[Reg.scala 11:16:@87.4]
  reg [63:0] _RAND_4;
  reg  _T_104; // @[NV_soDLA_CACC_CALC_int8.scala 110:34:@92.4]
  reg [31:0] _RAND_5;
  wire  _T_105; // @[NV_soDLA_CACC_CALC_int8.scala 111:45:@95.4]
  reg  _T_108; // @[NV_soDLA_CACC_CALC_int8.scala 111:32:@96.4]
  reg [31:0] _RAND_6;
  reg [31:0] _T_110; // @[Reg.scala 11:16:@99.4]
  reg [31:0] _RAND_7;
  assign _T_34 = $signed(in_data); // @[NV_soDLA_CACC_CALC_int8.scala 63:33:@14.6]
  assign _T_36 = in_op_valid ? in_op : 34'h0; // @[NV_soDLA_CACC_CALC_int8.scala 63:46:@15.6]
  assign _T_37 = $signed(_T_36); // @[NV_soDLA_CACC_CALC_int8.scala 63:89:@16.6]
  assign _GEN_5 = {{12{_T_34[21]}},_T_34}; // @[NV_soDLA_CACC_CALC_int8.scala 63:40:@17.6]
  assign _T_38 = $signed(_GEN_5) + $signed(_T_37); // @[NV_soDLA_CACC_CALC_int8.scala 63:40:@17.6]
  assign _T_39 = $unsigned(_T_38); // @[NV_soDLA_CACC_CALC_int8.scala 63:97:@18.6]
  assign _GEN_0 = in_valid ? in_sel : i_sat_sel; // @[NV_soDLA_CACC_CALC_int8.scala 61:22:@12.4]
  assign i_sum_sign = i_sum_pd[34]; // @[NV_soDLA_CACC_CALC_int8.scala 69:30:@21.4]
  assign i_sum_msb = i_sum_pd[33]; // @[NV_soDLA_CACC_CALC_int8.scala 70:29:@22.4]
  assign _T_42 = i_sum_sign ^ i_sum_msb; // @[NV_soDLA_CACC_CALC_int8.scala 74:20:@25.4]
  assign _T_43 = ~ i_sum_sign; // @[NV_soDLA_CACC_CALC_int8.scala 75:32:@27.6]
  assign _T_47 = _T_43 ? 33'h1ffffffff : 33'h0; // @[Bitwise.scala 72:12:@29.6]
  assign _T_48 = i_sum_pd[32:0]; // @[NV_soDLA_CACC_CALC_int8.scala 78:31:@33.6]
  assign i_sat_bits = _T_42 ? _T_47 : _T_48; // @[NV_soDLA_CACC_CALC_int8.scala 74:31:@26.4]
  assign i_sat_pd = {i_sum_sign,i_sat_bits}; // @[Cat.scala 30:58:@36.4]
  assign i_pre_sft_pd = i_sat_sel ? i_sat_pd : 34'h0; // @[NV_soDLA_CACC_CALC_int8.scala 88:27:@40.4]
  assign _T_57 = {i_pre_sft_pd,16'h0}; // @[Cat.scala 30:58:@41.4]
  assign _T_58 = $signed(_T_57); // @[NV_soDLA_CACC_CALC_int8.scala 89:66:@42.4]
  assign i_pre_sft_pd_pack = $signed(_T_58) >>> cfg_truncate; // @[NV_soDLA_CACC_CALC_int8.scala 89:73:@43.4]
  assign _T_59 = $unsigned(i_pre_sft_pd_pack); // @[Cat.scala 30:58:@44.4]
  assign i_sft_pd = _T_59[49:16]; // @[NV_soDLA_CACC_CALC_int8.scala 90:42:@45.4]
  assign i_guide = _T_59[15]; // @[NV_soDLA_CACC_CALC_int8.scala 91:41:@47.4]
  assign i_stick = _T_59[14:0]; // @[NV_soDLA_CACC_CALC_int8.scala 92:41:@49.4]
  assign _T_62 = i_sft_pd[32:31]; // @[NV_soDLA_CACC_CALC_int8.scala 94:51:@50.4]
  assign _T_63 = ~ _T_62; // @[NV_soDLA_CACC_CALC_int8.scala 94:60:@51.4]
  assign _T_65 = _T_63 == 2'h0; // @[NV_soDLA_CACC_CALC_int8.scala 94:60:@52.4]
  assign _T_66 = ~ _T_65; // @[NV_soDLA_CACC_CALC_int8.scala 94:41:@53.4]
  assign _T_67 = i_sum_sign & _T_66; // @[NV_soDLA_CACC_CALC_int8.scala 94:38:@54.4]
  assign _T_71 = _T_62 != 2'h0; // @[NV_soDLA_CACC_CALC_int8.scala 95:59:@57.4]
  assign _T_72 = _T_43 & _T_71; // @[NV_soDLA_CACC_CALC_int8.scala 95:39:@58.4]
  assign _T_73 = _T_67 | _T_72; // @[NV_soDLA_CACC_CALC_int8.scala 94:67:@59.4]
  assign _T_75 = i_sft_pd[30:0]; // @[NV_soDLA_CACC_CALC_int8.scala 96:53:@61.4]
  assign _T_88 = i_sat_sel & i_guide; // @[NV_soDLA_CACC_CALC_int8.scala 99:27:@71.4]
  assign _T_91 = i_stick != 15'h0; // @[NV_soDLA_CACC_CALC_int8.scala 99:61:@73.4]
  assign _T_92 = _T_43 | _T_91; // @[NV_soDLA_CACC_CALC_int8.scala 99:51:@74.4]
  assign i_point5 = _T_88 & _T_92; // @[NV_soDLA_CACC_CALC_int8.scala 99:37:@75.4]
  assign _T_76 = {_T_75,i_point5}; // @[Cat.scala 30:58:@62.4]
  assign _T_77 = ~ _T_76; // @[NV_soDLA_CACC_CALC_int8.scala 96:71:@63.4]
  assign _T_79 = _T_77 == 32'h0; // @[NV_soDLA_CACC_CALC_int8.scala 96:71:@64.4]
  assign _T_80 = _T_43 & _T_79; // @[NV_soDLA_CACC_CALC_int8.scala 96:39:@65.4]
  assign i_sft_need_sat = _T_73 | _T_80; // @[NV_soDLA_CACC_CALC_int8.scala 95:65:@66.4]
  assign i_sft_max = i_sum_sign ? 32'h80000000 : 32'h7fffffff; // @[NV_soDLA_CACC_CALC_int8.scala 97:24:@70.4]
  assign _T_94 = i_sft_pd[31:0]; // @[NV_soDLA_CACC_CALC_int8.scala 100:28:@77.4]
  assign _GEN_6 = {{31'd0}, i_point5}; // @[NV_soDLA_CACC_CALC_int8.scala 100:36:@78.4]
  assign _T_95 = _T_94 + _GEN_6; // @[NV_soDLA_CACC_CALC_int8.scala 100:36:@78.4]
  assign i_pos_pd = _T_94 + _GEN_6; // @[NV_soDLA_CACC_CALC_int8.scala 100:36:@79.4]
  assign i_final_result = i_sft_need_sat ? i_sft_max : i_pos_pd; // @[NV_soDLA_CACC_CALC_int8.scala 103:29:@80.4]
  assign _T_96 = ~ i_sat_sel; // @[NV_soDLA_CACC_CALC_int8.scala 105:37:@81.4]
  assign i_partial_vld = i_sat_vld & _T_96; // @[NV_soDLA_CACC_CALC_int8.scala 105:35:@82.4]
  assign i_final_vld = i_sat_vld & i_sat_sel; // @[NV_soDLA_CACC_CALC_int8.scala 106:32:@83.4]
  assign _T_105 = i_final_vld & i_sft_need_sat; // @[NV_soDLA_CACC_CALC_int8.scala 111:45:@95.4]
  assign out_final_data = _T_110; // @[NV_soDLA_CACC_CALC_int8.scala 112:23:@103.4]
  assign out_final_sat = _T_108; // @[NV_soDLA_CACC_CALC_int8.scala 111:22:@98.4]
  assign out_final_valid = _T_104; // @[NV_soDLA_CACC_CALC_int8.scala 110:24:@94.4]
  assign out_partial_data = _T_101; // @[NV_soDLA_CACC_CALC_int8.scala 109:25:@91.4]
  assign out_partial_valid = _T_99; // @[NV_soDLA_CACC_CALC_int8.scala 108:26:@86.4]
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
  i_sat_vld = _RAND_0[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_1 = {1{`RANDOM}};
  i_sat_sel = _RAND_1[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_2 = {2{`RANDOM}};
  i_sum_pd = _RAND_2[34:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_3 = {1{`RANDOM}};
  _T_99 = _RAND_3[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_4 = {2{`RANDOM}};
  _T_101 = _RAND_4[33:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_5 = {1{`RANDOM}};
  _T_104 = _RAND_5[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_6 = {1{`RANDOM}};
  _T_108 = _RAND_6[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_7 = {1{`RANDOM}};
  _T_110 = _RAND_7[31:0];
  `endif // RANDOMIZE_REG_INIT
  end
`endif // RANDOMIZE
  always @(posedge nvdla_core_clk) begin
    if (reset) begin
      i_sat_vld <= 1'h0;
    end else begin
      i_sat_vld <= in_valid;
    end
    if (reset) begin
      i_sat_sel <= 1'h0;
    end else begin
      if (in_valid) begin
        i_sat_sel <= in_sel;
      end
    end
    if (in_valid) begin
      i_sum_pd <= _T_39;
    end
    if (reset) begin
      _T_99 <= 1'h0;
    end else begin
      _T_99 <= i_partial_vld;
    end
    if (i_partial_vld) begin
      _T_101 <= i_sat_pd;
    end
    if (reset) begin
      _T_104 <= 1'h0;
    end else begin
      _T_104 <= i_final_vld;
    end
    if (reset) begin
      _T_108 <= 1'h0;
    end else begin
      _T_108 <= _T_105;
    end
    if (i_final_vld) begin
      if (i_sft_need_sat) begin
        if (i_sum_sign) begin
          _T_110 <= 32'h80000000;
        end else begin
          _T_110 <= 32'h7fffffff;
        end
      end else begin
        _T_110 <= i_pos_pd;
      end
    end
  end
endmodule
module NV_soDLA_CACC_calculator_for_check( // @[:@3267.2]
  input           nvdla_core_clk, // @[:@3270.4]
  input           nvdla_cell_clk, // @[:@3270.4]
  input           nvdla_core_rstn, // @[:@3270.4]
  input  [1087:0] abuf_rd_data, // @[:@3270.4]
  output          abuf_wr_en, // @[:@3270.4]
  output [5:0]    abuf_wr_addr, // @[:@3270.4]
  output [1087:0] abuf_wr_data, // @[:@3270.4]
  output          dlv_valid, // @[:@3270.4]
  output          dlv_mask, // @[:@3270.4]
  output [1023:0] dlv_data, // @[:@3270.4]
  output [1:0]    dlv_pd, // @[:@3270.4]
  input           accu_ctrl_valid, // @[:@3270.4]
  input  [12:0]   accu_ctrl_pd, // @[:@3270.4]
  input           accu_ctrl_ram_valid, // @[:@3270.4]
  input  [4:0]    cfg_truncate, // @[:@3270.4]
  input  [21:0]   mac_a2accu_data0, // @[:@3270.4]
  input  [21:0]   mac_a2accu_data1, // @[:@3270.4]
  input  [21:0]   mac_a2accu_data2, // @[:@3270.4]
  input  [21:0]   mac_a2accu_data3, // @[:@3270.4]
  input  [21:0]   mac_a2accu_data4, // @[:@3270.4]
  input  [21:0]   mac_a2accu_data5, // @[:@3270.4]
  input  [21:0]   mac_a2accu_data6, // @[:@3270.4]
  input  [21:0]   mac_a2accu_data7, // @[:@3270.4]
  input  [21:0]   mac_a2accu_data8, // @[:@3270.4]
  input  [21:0]   mac_a2accu_data9, // @[:@3270.4]
  input  [21:0]   mac_a2accu_data10, // @[:@3270.4]
  input  [21:0]   mac_a2accu_data11, // @[:@3270.4]
  input  [21:0]   mac_a2accu_data12, // @[:@3270.4]
  input  [21:0]   mac_a2accu_data13, // @[:@3270.4]
  input  [21:0]   mac_a2accu_data14, // @[:@3270.4]
  input  [21:0]   mac_a2accu_data15, // @[:@3270.4]
  input  [15:0]   mac_a2accu_mask, // @[:@3270.4]
  input           mac_a2accu_mode, 
  input           mac_a2accu_pvld, // @[:@3270.4]
  input  [21:0]   mac_b2accu_data0, // @[:@3270.4]
  input  [21:0]   mac_b2accu_data1, // @[:@3270.4]
  input  [21:0]   mac_b2accu_data2, // @[:@3270.4]
  input  [21:0]   mac_b2accu_data3, // @[:@3270.4]
  input  [21:0]   mac_b2accu_data4, // @[:@3270.4]
  input  [21:0]   mac_b2accu_data5, // @[:@3270.4]
  input  [21:0]   mac_b2accu_data6, // @[:@3270.4]
  input  [21:0]   mac_b2accu_data7, // @[:@3270.4]
  input  [21:0]   mac_b2accu_data8, // @[:@3270.4]
  input  [21:0]   mac_b2accu_data9, // @[:@3270.4]
  input  [21:0]   mac_b2accu_data10, // @[:@3270.4]
  input  [21:0]   mac_b2accu_data11, // @[:@3270.4]
  input  [21:0]   mac_b2accu_data12, // @[:@3270.4]
  input  [21:0]   mac_b2accu_data13, // @[:@3270.4]
  input  [21:0]   mac_b2accu_data14, // @[:@3270.4]
  input  [21:0]   mac_b2accu_data15, // @[:@3270.4]
  input  [15:0]   mac_b2accu_mask, // @[:@3270.4]
  input           mac_b2accu_mode, 
  input           mac_b2accu_pvld, // @[:@3270.4]
  output [31:0]   dp2reg_sat_count // @[:@3270.4]
);
  wire  NV_soDLA_CACC_CALC_int8_reset; // @[NV_NVDLA_CACC_calculator_for_check.scala 112:57:@3565.4]
  wire  NV_soDLA_CACC_CALC_int8_nvdla_core_clk; // @[NV_NVDLA_CACC_calculator_for_check.scala 112:57:@3565.4]
  wire [4:0] NV_soDLA_CACC_CALC_int8_cfg_truncate; // @[NV_NVDLA_CACC_calculator_for_check.scala 112:57:@3565.4]
  wire [21:0] NV_soDLA_CACC_CALC_int8_in_data; // @[NV_NVDLA_CACC_calculator_for_check.scala 112:57:@3565.4]
  wire [33:0] NV_soDLA_CACC_CALC_int8_in_op; // @[NV_NVDLA_CACC_calculator_for_check.scala 112:57:@3565.4]
  wire  NV_soDLA_CACC_CALC_int8_in_op_valid; // @[NV_NVDLA_CACC_calculator_for_check.scala 112:57:@3565.4]
  wire  NV_soDLA_CACC_CALC_int8_in_sel; // @[NV_NVDLA_CACC_calculator_for_check.scala 112:57:@3565.4]
  wire  NV_soDLA_CACC_CALC_int8_in_valid; // @[NV_NVDLA_CACC_calculator_for_check.scala 112:57:@3565.4]
  wire [31:0] NV_soDLA_CACC_CALC_int8_out_final_data; // @[NV_NVDLA_CACC_calculator_for_check.scala 112:57:@3565.4]
  wire  NV_soDLA_CACC_CALC_int8_out_final_sat; // @[NV_NVDLA_CACC_calculator_for_check.scala 112:57:@3565.4]
  wire  NV_soDLA_CACC_CALC_int8_out_final_valid; // @[NV_NVDLA_CACC_calculator_for_check.scala 112:57:@3565.4]
  wire [33:0] NV_soDLA_CACC_CALC_int8_out_partial_data; // @[NV_NVDLA_CACC_calculator_for_check.scala 112:57:@3565.4]
  wire  NV_soDLA_CACC_CALC_int8_out_partial_valid; // @[NV_NVDLA_CACC_calculator_for_check.scala 112:57:@3565.4]
  wire  NV_soDLA_CACC_CALC_int8_1_reset; // @[NV_NVDLA_CACC_calculator_for_check.scala 112:57:@3568.4]
  wire  NV_soDLA_CACC_CALC_int8_1_nvdla_core_clk; // @[NV_NVDLA_CACC_calculator_for_check.scala 112:57:@3568.4]
  wire [4:0] NV_soDLA_CACC_CALC_int8_1_cfg_truncate; // @[NV_NVDLA_CACC_calculator_for_check.scala 112:57:@3568.4]
  wire [21:0] NV_soDLA_CACC_CALC_int8_1_in_data; // @[NV_NVDLA_CACC_calculator_for_check.scala 112:57:@3568.4]
  wire [33:0] NV_soDLA_CACC_CALC_int8_1_in_op; // @[NV_NVDLA_CACC_calculator_for_check.scala 112:57:@3568.4]
  wire  NV_soDLA_CACC_CALC_int8_1_in_op_valid; // @[NV_NVDLA_CACC_calculator_for_check.scala 112:57:@3568.4]
  wire  NV_soDLA_CACC_CALC_int8_1_in_sel; // @[NV_NVDLA_CACC_calculator_for_check.scala 112:57:@3568.4]
  wire  NV_soDLA_CACC_CALC_int8_1_in_valid; // @[NV_NVDLA_CACC_calculator_for_check.scala 112:57:@3568.4]
  wire [31:0] NV_soDLA_CACC_CALC_int8_1_out_final_data; // @[NV_NVDLA_CACC_calculator_for_check.scala 112:57:@3568.4]
  wire  NV_soDLA_CACC_CALC_int8_1_out_final_sat; // @[NV_NVDLA_CACC_calculator_for_check.scala 112:57:@3568.4]
  wire  NV_soDLA_CACC_CALC_int8_1_out_final_valid; // @[NV_NVDLA_CACC_calculator_for_check.scala 112:57:@3568.4]
  wire [33:0] NV_soDLA_CACC_CALC_int8_1_out_partial_data; // @[NV_NVDLA_CACC_calculator_for_check.scala 112:57:@3568.4]
  wire  NV_soDLA_CACC_CALC_int8_1_out_partial_valid; // @[NV_NVDLA_CACC_calculator_for_check.scala 112:57:@3568.4]
  wire  NV_soDLA_CACC_CALC_int8_2_reset; // @[NV_NVDLA_CACC_calculator_for_check.scala 112:57:@3571.4]
  wire  NV_soDLA_CACC_CALC_int8_2_nvdla_core_clk; // @[NV_NVDLA_CACC_calculator_for_check.scala 112:57:@3571.4]
  wire [4:0] NV_soDLA_CACC_CALC_int8_2_cfg_truncate; // @[NV_NVDLA_CACC_calculator_for_check.scala 112:57:@3571.4]
  wire [21:0] NV_soDLA_CACC_CALC_int8_2_in_data; // @[NV_NVDLA_CACC_calculator_for_check.scala 112:57:@3571.4]
  wire [33:0] NV_soDLA_CACC_CALC_int8_2_in_op; // @[NV_NVDLA_CACC_calculator_for_check.scala 112:57:@3571.4]
  wire  NV_soDLA_CACC_CALC_int8_2_in_op_valid; // @[NV_NVDLA_CACC_calculator_for_check.scala 112:57:@3571.4]
  wire  NV_soDLA_CACC_CALC_int8_2_in_sel; // @[NV_NVDLA_CACC_calculator_for_check.scala 112:57:@3571.4]
  wire  NV_soDLA_CACC_CALC_int8_2_in_valid; // @[NV_NVDLA_CACC_calculator_for_check.scala 112:57:@3571.4]
  wire [31:0] NV_soDLA_CACC_CALC_int8_2_out_final_data; // @[NV_NVDLA_CACC_calculator_for_check.scala 112:57:@3571.4]
  wire  NV_soDLA_CACC_CALC_int8_2_out_final_sat; // @[NV_NVDLA_CACC_calculator_for_check.scala 112:57:@3571.4]
  wire  NV_soDLA_CACC_CALC_int8_2_out_final_valid; // @[NV_NVDLA_CACC_calculator_for_check.scala 112:57:@3571.4]
  wire [33:0] NV_soDLA_CACC_CALC_int8_2_out_partial_data; // @[NV_NVDLA_CACC_calculator_for_check.scala 112:57:@3571.4]
  wire  NV_soDLA_CACC_CALC_int8_2_out_partial_valid; // @[NV_NVDLA_CACC_calculator_for_check.scala 112:57:@3571.4]
  wire  NV_soDLA_CACC_CALC_int8_3_reset; // @[NV_NVDLA_CACC_calculator_for_check.scala 112:57:@3574.4]
  wire  NV_soDLA_CACC_CALC_int8_3_nvdla_core_clk; // @[NV_NVDLA_CACC_calculator_for_check.scala 112:57:@3574.4]
  wire [4:0] NV_soDLA_CACC_CALC_int8_3_cfg_truncate; // @[NV_NVDLA_CACC_calculator_for_check.scala 112:57:@3574.4]
  wire [21:0] NV_soDLA_CACC_CALC_int8_3_in_data; // @[NV_NVDLA_CACC_calculator_for_check.scala 112:57:@3574.4]
  wire [33:0] NV_soDLA_CACC_CALC_int8_3_in_op; // @[NV_NVDLA_CACC_calculator_for_check.scala 112:57:@3574.4]
  wire  NV_soDLA_CACC_CALC_int8_3_in_op_valid; // @[NV_NVDLA_CACC_calculator_for_check.scala 112:57:@3574.4]
  wire  NV_soDLA_CACC_CALC_int8_3_in_sel; // @[NV_NVDLA_CACC_calculator_for_check.scala 112:57:@3574.4]
  wire  NV_soDLA_CACC_CALC_int8_3_in_valid; // @[NV_NVDLA_CACC_calculator_for_check.scala 112:57:@3574.4]
  wire [31:0] NV_soDLA_CACC_CALC_int8_3_out_final_data; // @[NV_NVDLA_CACC_calculator_for_check.scala 112:57:@3574.4]
  wire  NV_soDLA_CACC_CALC_int8_3_out_final_sat; // @[NV_NVDLA_CACC_calculator_for_check.scala 112:57:@3574.4]
  wire  NV_soDLA_CACC_CALC_int8_3_out_final_valid; // @[NV_NVDLA_CACC_calculator_for_check.scala 112:57:@3574.4]
  wire [33:0] NV_soDLA_CACC_CALC_int8_3_out_partial_data; // @[NV_NVDLA_CACC_calculator_for_check.scala 112:57:@3574.4]
  wire  NV_soDLA_CACC_CALC_int8_3_out_partial_valid; // @[NV_NVDLA_CACC_calculator_for_check.scala 112:57:@3574.4]
  wire  NV_soDLA_CACC_CALC_int8_4_reset; // @[NV_NVDLA_CACC_calculator_for_check.scala 112:57:@3577.4]
  wire  NV_soDLA_CACC_CALC_int8_4_nvdla_core_clk; // @[NV_NVDLA_CACC_calculator_for_check.scala 112:57:@3577.4]
  wire [4:0] NV_soDLA_CACC_CALC_int8_4_cfg_truncate; // @[NV_NVDLA_CACC_calculator_for_check.scala 112:57:@3577.4]
  wire [21:0] NV_soDLA_CACC_CALC_int8_4_in_data; // @[NV_NVDLA_CACC_calculator_for_check.scala 112:57:@3577.4]
  wire [33:0] NV_soDLA_CACC_CALC_int8_4_in_op; // @[NV_NVDLA_CACC_calculator_for_check.scala 112:57:@3577.4]
  wire  NV_soDLA_CACC_CALC_int8_4_in_op_valid; // @[NV_NVDLA_CACC_calculator_for_check.scala 112:57:@3577.4]
  wire  NV_soDLA_CACC_CALC_int8_4_in_sel; // @[NV_NVDLA_CACC_calculator_for_check.scala 112:57:@3577.4]
  wire  NV_soDLA_CACC_CALC_int8_4_in_valid; // @[NV_NVDLA_CACC_calculator_for_check.scala 112:57:@3577.4]
  wire [31:0] NV_soDLA_CACC_CALC_int8_4_out_final_data; // @[NV_NVDLA_CACC_calculator_for_check.scala 112:57:@3577.4]
  wire  NV_soDLA_CACC_CALC_int8_4_out_final_sat; // @[NV_NVDLA_CACC_calculator_for_check.scala 112:57:@3577.4]
  wire  NV_soDLA_CACC_CALC_int8_4_out_final_valid; // @[NV_NVDLA_CACC_calculator_for_check.scala 112:57:@3577.4]
  wire [33:0] NV_soDLA_CACC_CALC_int8_4_out_partial_data; // @[NV_NVDLA_CACC_calculator_for_check.scala 112:57:@3577.4]
  wire  NV_soDLA_CACC_CALC_int8_4_out_partial_valid; // @[NV_NVDLA_CACC_calculator_for_check.scala 112:57:@3577.4]
  wire  NV_soDLA_CACC_CALC_int8_5_reset; // @[NV_NVDLA_CACC_calculator_for_check.scala 112:57:@3580.4]
  wire  NV_soDLA_CACC_CALC_int8_5_nvdla_core_clk; // @[NV_NVDLA_CACC_calculator_for_check.scala 112:57:@3580.4]
  wire [4:0] NV_soDLA_CACC_CALC_int8_5_cfg_truncate; // @[NV_NVDLA_CACC_calculator_for_check.scala 112:57:@3580.4]
  wire [21:0] NV_soDLA_CACC_CALC_int8_5_in_data; // @[NV_NVDLA_CACC_calculator_for_check.scala 112:57:@3580.4]
  wire [33:0] NV_soDLA_CACC_CALC_int8_5_in_op; // @[NV_NVDLA_CACC_calculator_for_check.scala 112:57:@3580.4]
  wire  NV_soDLA_CACC_CALC_int8_5_in_op_valid; // @[NV_NVDLA_CACC_calculator_for_check.scala 112:57:@3580.4]
  wire  NV_soDLA_CACC_CALC_int8_5_in_sel; // @[NV_NVDLA_CACC_calculator_for_check.scala 112:57:@3580.4]
  wire  NV_soDLA_CACC_CALC_int8_5_in_valid; // @[NV_NVDLA_CACC_calculator_for_check.scala 112:57:@3580.4]
  wire [31:0] NV_soDLA_CACC_CALC_int8_5_out_final_data; // @[NV_NVDLA_CACC_calculator_for_check.scala 112:57:@3580.4]
  wire  NV_soDLA_CACC_CALC_int8_5_out_final_sat; // @[NV_NVDLA_CACC_calculator_for_check.scala 112:57:@3580.4]
  wire  NV_soDLA_CACC_CALC_int8_5_out_final_valid; // @[NV_NVDLA_CACC_calculator_for_check.scala 112:57:@3580.4]
  wire [33:0] NV_soDLA_CACC_CALC_int8_5_out_partial_data; // @[NV_NVDLA_CACC_calculator_for_check.scala 112:57:@3580.4]
  wire  NV_soDLA_CACC_CALC_int8_5_out_partial_valid; // @[NV_NVDLA_CACC_calculator_for_check.scala 112:57:@3580.4]
  wire  NV_soDLA_CACC_CALC_int8_6_reset; // @[NV_NVDLA_CACC_calculator_for_check.scala 112:57:@3583.4]
  wire  NV_soDLA_CACC_CALC_int8_6_nvdla_core_clk; // @[NV_NVDLA_CACC_calculator_for_check.scala 112:57:@3583.4]
  wire [4:0] NV_soDLA_CACC_CALC_int8_6_cfg_truncate; // @[NV_NVDLA_CACC_calculator_for_check.scala 112:57:@3583.4]
  wire [21:0] NV_soDLA_CACC_CALC_int8_6_in_data; // @[NV_NVDLA_CACC_calculator_for_check.scala 112:57:@3583.4]
  wire [33:0] NV_soDLA_CACC_CALC_int8_6_in_op; // @[NV_NVDLA_CACC_calculator_for_check.scala 112:57:@3583.4]
  wire  NV_soDLA_CACC_CALC_int8_6_in_op_valid; // @[NV_NVDLA_CACC_calculator_for_check.scala 112:57:@3583.4]
  wire  NV_soDLA_CACC_CALC_int8_6_in_sel; // @[NV_NVDLA_CACC_calculator_for_check.scala 112:57:@3583.4]
  wire  NV_soDLA_CACC_CALC_int8_6_in_valid; // @[NV_NVDLA_CACC_calculator_for_check.scala 112:57:@3583.4]
  wire [31:0] NV_soDLA_CACC_CALC_int8_6_out_final_data; // @[NV_NVDLA_CACC_calculator_for_check.scala 112:57:@3583.4]
  wire  NV_soDLA_CACC_CALC_int8_6_out_final_sat; // @[NV_NVDLA_CACC_calculator_for_check.scala 112:57:@3583.4]
  wire  NV_soDLA_CACC_CALC_int8_6_out_final_valid; // @[NV_NVDLA_CACC_calculator_for_check.scala 112:57:@3583.4]
  wire [33:0] NV_soDLA_CACC_CALC_int8_6_out_partial_data; // @[NV_NVDLA_CACC_calculator_for_check.scala 112:57:@3583.4]
  wire  NV_soDLA_CACC_CALC_int8_6_out_partial_valid; // @[NV_NVDLA_CACC_calculator_for_check.scala 112:57:@3583.4]
  wire  NV_soDLA_CACC_CALC_int8_7_reset; // @[NV_NVDLA_CACC_calculator_for_check.scala 112:57:@3586.4]
  wire  NV_soDLA_CACC_CALC_int8_7_nvdla_core_clk; // @[NV_NVDLA_CACC_calculator_for_check.scala 112:57:@3586.4]
  wire [4:0] NV_soDLA_CACC_CALC_int8_7_cfg_truncate; // @[NV_NVDLA_CACC_calculator_for_check.scala 112:57:@3586.4]
  wire [21:0] NV_soDLA_CACC_CALC_int8_7_in_data; // @[NV_NVDLA_CACC_calculator_for_check.scala 112:57:@3586.4]
  wire [33:0] NV_soDLA_CACC_CALC_int8_7_in_op; // @[NV_NVDLA_CACC_calculator_for_check.scala 112:57:@3586.4]
  wire  NV_soDLA_CACC_CALC_int8_7_in_op_valid; // @[NV_NVDLA_CACC_calculator_for_check.scala 112:57:@3586.4]
  wire  NV_soDLA_CACC_CALC_int8_7_in_sel; // @[NV_NVDLA_CACC_calculator_for_check.scala 112:57:@3586.4]
  wire  NV_soDLA_CACC_CALC_int8_7_in_valid; // @[NV_NVDLA_CACC_calculator_for_check.scala 112:57:@3586.4]
  wire [31:0] NV_soDLA_CACC_CALC_int8_7_out_final_data; // @[NV_NVDLA_CACC_calculator_for_check.scala 112:57:@3586.4]
  wire  NV_soDLA_CACC_CALC_int8_7_out_final_sat; // @[NV_NVDLA_CACC_calculator_for_check.scala 112:57:@3586.4]
  wire  NV_soDLA_CACC_CALC_int8_7_out_final_valid; // @[NV_NVDLA_CACC_calculator_for_check.scala 112:57:@3586.4]
  wire [33:0] NV_soDLA_CACC_CALC_int8_7_out_partial_data; // @[NV_NVDLA_CACC_calculator_for_check.scala 112:57:@3586.4]
  wire  NV_soDLA_CACC_CALC_int8_7_out_partial_valid; // @[NV_NVDLA_CACC_calculator_for_check.scala 112:57:@3586.4]
  wire  NV_soDLA_CACC_CALC_int8_8_reset; // @[NV_NVDLA_CACC_calculator_for_check.scala 112:57:@3589.4]
  wire  NV_soDLA_CACC_CALC_int8_8_nvdla_core_clk; // @[NV_NVDLA_CACC_calculator_for_check.scala 112:57:@3589.4]
  wire [4:0] NV_soDLA_CACC_CALC_int8_8_cfg_truncate; // @[NV_NVDLA_CACC_calculator_for_check.scala 112:57:@3589.4]
  wire [21:0] NV_soDLA_CACC_CALC_int8_8_in_data; // @[NV_NVDLA_CACC_calculator_for_check.scala 112:57:@3589.4]
  wire [33:0] NV_soDLA_CACC_CALC_int8_8_in_op; // @[NV_NVDLA_CACC_calculator_for_check.scala 112:57:@3589.4]
  wire  NV_soDLA_CACC_CALC_int8_8_in_op_valid; // @[NV_NVDLA_CACC_calculator_for_check.scala 112:57:@3589.4]
  wire  NV_soDLA_CACC_CALC_int8_8_in_sel; // @[NV_NVDLA_CACC_calculator_for_check.scala 112:57:@3589.4]
  wire  NV_soDLA_CACC_CALC_int8_8_in_valid; // @[NV_NVDLA_CACC_calculator_for_check.scala 112:57:@3589.4]
  wire [31:0] NV_soDLA_CACC_CALC_int8_8_out_final_data; // @[NV_NVDLA_CACC_calculator_for_check.scala 112:57:@3589.4]
  wire  NV_soDLA_CACC_CALC_int8_8_out_final_sat; // @[NV_NVDLA_CACC_calculator_for_check.scala 112:57:@3589.4]
  wire  NV_soDLA_CACC_CALC_int8_8_out_final_valid; // @[NV_NVDLA_CACC_calculator_for_check.scala 112:57:@3589.4]
  wire [33:0] NV_soDLA_CACC_CALC_int8_8_out_partial_data; // @[NV_NVDLA_CACC_calculator_for_check.scala 112:57:@3589.4]
  wire  NV_soDLA_CACC_CALC_int8_8_out_partial_valid; // @[NV_NVDLA_CACC_calculator_for_check.scala 112:57:@3589.4]
  wire  NV_soDLA_CACC_CALC_int8_9_reset; // @[NV_NVDLA_CACC_calculator_for_check.scala 112:57:@3592.4]
  wire  NV_soDLA_CACC_CALC_int8_9_nvdla_core_clk; // @[NV_NVDLA_CACC_calculator_for_check.scala 112:57:@3592.4]
  wire [4:0] NV_soDLA_CACC_CALC_int8_9_cfg_truncate; // @[NV_NVDLA_CACC_calculator_for_check.scala 112:57:@3592.4]
  wire [21:0] NV_soDLA_CACC_CALC_int8_9_in_data; // @[NV_NVDLA_CACC_calculator_for_check.scala 112:57:@3592.4]
  wire [33:0] NV_soDLA_CACC_CALC_int8_9_in_op; // @[NV_NVDLA_CACC_calculator_for_check.scala 112:57:@3592.4]
  wire  NV_soDLA_CACC_CALC_int8_9_in_op_valid; // @[NV_NVDLA_CACC_calculator_for_check.scala 112:57:@3592.4]
  wire  NV_soDLA_CACC_CALC_int8_9_in_sel; // @[NV_NVDLA_CACC_calculator_for_check.scala 112:57:@3592.4]
  wire  NV_soDLA_CACC_CALC_int8_9_in_valid; // @[NV_NVDLA_CACC_calculator_for_check.scala 112:57:@3592.4]
  wire [31:0] NV_soDLA_CACC_CALC_int8_9_out_final_data; // @[NV_NVDLA_CACC_calculator_for_check.scala 112:57:@3592.4]
  wire  NV_soDLA_CACC_CALC_int8_9_out_final_sat; // @[NV_NVDLA_CACC_calculator_for_check.scala 112:57:@3592.4]
  wire  NV_soDLA_CACC_CALC_int8_9_out_final_valid; // @[NV_NVDLA_CACC_calculator_for_check.scala 112:57:@3592.4]
  wire [33:0] NV_soDLA_CACC_CALC_int8_9_out_partial_data; // @[NV_NVDLA_CACC_calculator_for_check.scala 112:57:@3592.4]
  wire  NV_soDLA_CACC_CALC_int8_9_out_partial_valid; // @[NV_NVDLA_CACC_calculator_for_check.scala 112:57:@3592.4]
  wire  NV_soDLA_CACC_CALC_int8_10_reset; // @[NV_NVDLA_CACC_calculator_for_check.scala 112:57:@3595.4]
  wire  NV_soDLA_CACC_CALC_int8_10_nvdla_core_clk; // @[NV_NVDLA_CACC_calculator_for_check.scala 112:57:@3595.4]
  wire [4:0] NV_soDLA_CACC_CALC_int8_10_cfg_truncate; // @[NV_NVDLA_CACC_calculator_for_check.scala 112:57:@3595.4]
  wire [21:0] NV_soDLA_CACC_CALC_int8_10_in_data; // @[NV_NVDLA_CACC_calculator_for_check.scala 112:57:@3595.4]
  wire [33:0] NV_soDLA_CACC_CALC_int8_10_in_op; // @[NV_NVDLA_CACC_calculator_for_check.scala 112:57:@3595.4]
  wire  NV_soDLA_CACC_CALC_int8_10_in_op_valid; // @[NV_NVDLA_CACC_calculator_for_check.scala 112:57:@3595.4]
  wire  NV_soDLA_CACC_CALC_int8_10_in_sel; // @[NV_NVDLA_CACC_calculator_for_check.scala 112:57:@3595.4]
  wire  NV_soDLA_CACC_CALC_int8_10_in_valid; // @[NV_NVDLA_CACC_calculator_for_check.scala 112:57:@3595.4]
  wire [31:0] NV_soDLA_CACC_CALC_int8_10_out_final_data; // @[NV_NVDLA_CACC_calculator_for_check.scala 112:57:@3595.4]
  wire  NV_soDLA_CACC_CALC_int8_10_out_final_sat; // @[NV_NVDLA_CACC_calculator_for_check.scala 112:57:@3595.4]
  wire  NV_soDLA_CACC_CALC_int8_10_out_final_valid; // @[NV_NVDLA_CACC_calculator_for_check.scala 112:57:@3595.4]
  wire [33:0] NV_soDLA_CACC_CALC_int8_10_out_partial_data; // @[NV_NVDLA_CACC_calculator_for_check.scala 112:57:@3595.4]
  wire  NV_soDLA_CACC_CALC_int8_10_out_partial_valid; // @[NV_NVDLA_CACC_calculator_for_check.scala 112:57:@3595.4]
  wire  NV_soDLA_CACC_CALC_int8_11_reset; // @[NV_NVDLA_CACC_calculator_for_check.scala 112:57:@3598.4]
  wire  NV_soDLA_CACC_CALC_int8_11_nvdla_core_clk; // @[NV_NVDLA_CACC_calculator_for_check.scala 112:57:@3598.4]
  wire [4:0] NV_soDLA_CACC_CALC_int8_11_cfg_truncate; // @[NV_NVDLA_CACC_calculator_for_check.scala 112:57:@3598.4]
  wire [21:0] NV_soDLA_CACC_CALC_int8_11_in_data; // @[NV_NVDLA_CACC_calculator_for_check.scala 112:57:@3598.4]
  wire [33:0] NV_soDLA_CACC_CALC_int8_11_in_op; // @[NV_NVDLA_CACC_calculator_for_check.scala 112:57:@3598.4]
  wire  NV_soDLA_CACC_CALC_int8_11_in_op_valid; // @[NV_NVDLA_CACC_calculator_for_check.scala 112:57:@3598.4]
  wire  NV_soDLA_CACC_CALC_int8_11_in_sel; // @[NV_NVDLA_CACC_calculator_for_check.scala 112:57:@3598.4]
  wire  NV_soDLA_CACC_CALC_int8_11_in_valid; // @[NV_NVDLA_CACC_calculator_for_check.scala 112:57:@3598.4]
  wire [31:0] NV_soDLA_CACC_CALC_int8_11_out_final_data; // @[NV_NVDLA_CACC_calculator_for_check.scala 112:57:@3598.4]
  wire  NV_soDLA_CACC_CALC_int8_11_out_final_sat; // @[NV_NVDLA_CACC_calculator_for_check.scala 112:57:@3598.4]
  wire  NV_soDLA_CACC_CALC_int8_11_out_final_valid; // @[NV_NVDLA_CACC_calculator_for_check.scala 112:57:@3598.4]
  wire [33:0] NV_soDLA_CACC_CALC_int8_11_out_partial_data; // @[NV_NVDLA_CACC_calculator_for_check.scala 112:57:@3598.4]
  wire  NV_soDLA_CACC_CALC_int8_11_out_partial_valid; // @[NV_NVDLA_CACC_calculator_for_check.scala 112:57:@3598.4]
  wire  NV_soDLA_CACC_CALC_int8_12_reset; // @[NV_NVDLA_CACC_calculator_for_check.scala 112:57:@3601.4]
  wire  NV_soDLA_CACC_CALC_int8_12_nvdla_core_clk; // @[NV_NVDLA_CACC_calculator_for_check.scala 112:57:@3601.4]
  wire [4:0] NV_soDLA_CACC_CALC_int8_12_cfg_truncate; // @[NV_NVDLA_CACC_calculator_for_check.scala 112:57:@3601.4]
  wire [21:0] NV_soDLA_CACC_CALC_int8_12_in_data; // @[NV_NVDLA_CACC_calculator_for_check.scala 112:57:@3601.4]
  wire [33:0] NV_soDLA_CACC_CALC_int8_12_in_op; // @[NV_NVDLA_CACC_calculator_for_check.scala 112:57:@3601.4]
  wire  NV_soDLA_CACC_CALC_int8_12_in_op_valid; // @[NV_NVDLA_CACC_calculator_for_check.scala 112:57:@3601.4]
  wire  NV_soDLA_CACC_CALC_int8_12_in_sel; // @[NV_NVDLA_CACC_calculator_for_check.scala 112:57:@3601.4]
  wire  NV_soDLA_CACC_CALC_int8_12_in_valid; // @[NV_NVDLA_CACC_calculator_for_check.scala 112:57:@3601.4]
  wire [31:0] NV_soDLA_CACC_CALC_int8_12_out_final_data; // @[NV_NVDLA_CACC_calculator_for_check.scala 112:57:@3601.4]
  wire  NV_soDLA_CACC_CALC_int8_12_out_final_sat; // @[NV_NVDLA_CACC_calculator_for_check.scala 112:57:@3601.4]
  wire  NV_soDLA_CACC_CALC_int8_12_out_final_valid; // @[NV_NVDLA_CACC_calculator_for_check.scala 112:57:@3601.4]
  wire [33:0] NV_soDLA_CACC_CALC_int8_12_out_partial_data; // @[NV_NVDLA_CACC_calculator_for_check.scala 112:57:@3601.4]
  wire  NV_soDLA_CACC_CALC_int8_12_out_partial_valid; // @[NV_NVDLA_CACC_calculator_for_check.scala 112:57:@3601.4]
  wire  NV_soDLA_CACC_CALC_int8_13_reset; // @[NV_NVDLA_CACC_calculator_for_check.scala 112:57:@3604.4]
  wire  NV_soDLA_CACC_CALC_int8_13_nvdla_core_clk; // @[NV_NVDLA_CACC_calculator_for_check.scala 112:57:@3604.4]
  wire [4:0] NV_soDLA_CACC_CALC_int8_13_cfg_truncate; // @[NV_NVDLA_CACC_calculator_for_check.scala 112:57:@3604.4]
  wire [21:0] NV_soDLA_CACC_CALC_int8_13_in_data; // @[NV_NVDLA_CACC_calculator_for_check.scala 112:57:@3604.4]
  wire [33:0] NV_soDLA_CACC_CALC_int8_13_in_op; // @[NV_NVDLA_CACC_calculator_for_check.scala 112:57:@3604.4]
  wire  NV_soDLA_CACC_CALC_int8_13_in_op_valid; // @[NV_NVDLA_CACC_calculator_for_check.scala 112:57:@3604.4]
  wire  NV_soDLA_CACC_CALC_int8_13_in_sel; // @[NV_NVDLA_CACC_calculator_for_check.scala 112:57:@3604.4]
  wire  NV_soDLA_CACC_CALC_int8_13_in_valid; // @[NV_NVDLA_CACC_calculator_for_check.scala 112:57:@3604.4]
  wire [31:0] NV_soDLA_CACC_CALC_int8_13_out_final_data; // @[NV_NVDLA_CACC_calculator_for_check.scala 112:57:@3604.4]
  wire  NV_soDLA_CACC_CALC_int8_13_out_final_sat; // @[NV_NVDLA_CACC_calculator_for_check.scala 112:57:@3604.4]
  wire  NV_soDLA_CACC_CALC_int8_13_out_final_valid; // @[NV_NVDLA_CACC_calculator_for_check.scala 112:57:@3604.4]
  wire [33:0] NV_soDLA_CACC_CALC_int8_13_out_partial_data; // @[NV_NVDLA_CACC_calculator_for_check.scala 112:57:@3604.4]
  wire  NV_soDLA_CACC_CALC_int8_13_out_partial_valid; // @[NV_NVDLA_CACC_calculator_for_check.scala 112:57:@3604.4]
  wire  NV_soDLA_CACC_CALC_int8_14_reset; // @[NV_NVDLA_CACC_calculator_for_check.scala 112:57:@3607.4]
  wire  NV_soDLA_CACC_CALC_int8_14_nvdla_core_clk; // @[NV_NVDLA_CACC_calculator_for_check.scala 112:57:@3607.4]
  wire [4:0] NV_soDLA_CACC_CALC_int8_14_cfg_truncate; // @[NV_NVDLA_CACC_calculator_for_check.scala 112:57:@3607.4]
  wire [21:0] NV_soDLA_CACC_CALC_int8_14_in_data; // @[NV_NVDLA_CACC_calculator_for_check.scala 112:57:@3607.4]
  wire [33:0] NV_soDLA_CACC_CALC_int8_14_in_op; // @[NV_NVDLA_CACC_calculator_for_check.scala 112:57:@3607.4]
  wire  NV_soDLA_CACC_CALC_int8_14_in_op_valid; // @[NV_NVDLA_CACC_calculator_for_check.scala 112:57:@3607.4]
  wire  NV_soDLA_CACC_CALC_int8_14_in_sel; // @[NV_NVDLA_CACC_calculator_for_check.scala 112:57:@3607.4]
  wire  NV_soDLA_CACC_CALC_int8_14_in_valid; // @[NV_NVDLA_CACC_calculator_for_check.scala 112:57:@3607.4]
  wire [31:0] NV_soDLA_CACC_CALC_int8_14_out_final_data; // @[NV_NVDLA_CACC_calculator_for_check.scala 112:57:@3607.4]
  wire  NV_soDLA_CACC_CALC_int8_14_out_final_sat; // @[NV_NVDLA_CACC_calculator_for_check.scala 112:57:@3607.4]
  wire  NV_soDLA_CACC_CALC_int8_14_out_final_valid; // @[NV_NVDLA_CACC_calculator_for_check.scala 112:57:@3607.4]
  wire [33:0] NV_soDLA_CACC_CALC_int8_14_out_partial_data; // @[NV_NVDLA_CACC_calculator_for_check.scala 112:57:@3607.4]
  wire  NV_soDLA_CACC_CALC_int8_14_out_partial_valid; // @[NV_NVDLA_CACC_calculator_for_check.scala 112:57:@3607.4]
  wire  NV_soDLA_CACC_CALC_int8_15_reset; // @[NV_NVDLA_CACC_calculator_for_check.scala 112:57:@3610.4]
  wire  NV_soDLA_CACC_CALC_int8_15_nvdla_core_clk; // @[NV_NVDLA_CACC_calculator_for_check.scala 112:57:@3610.4]
  wire [4:0] NV_soDLA_CACC_CALC_int8_15_cfg_truncate; // @[NV_NVDLA_CACC_calculator_for_check.scala 112:57:@3610.4]
  wire [21:0] NV_soDLA_CACC_CALC_int8_15_in_data; // @[NV_NVDLA_CACC_calculator_for_check.scala 112:57:@3610.4]
  wire [33:0] NV_soDLA_CACC_CALC_int8_15_in_op; // @[NV_NVDLA_CACC_calculator_for_check.scala 112:57:@3610.4]
  wire  NV_soDLA_CACC_CALC_int8_15_in_op_valid; // @[NV_NVDLA_CACC_calculator_for_check.scala 112:57:@3610.4]
  wire  NV_soDLA_CACC_CALC_int8_15_in_sel; // @[NV_NVDLA_CACC_calculator_for_check.scala 112:57:@3610.4]
  wire  NV_soDLA_CACC_CALC_int8_15_in_valid; // @[NV_NVDLA_CACC_calculator_for_check.scala 112:57:@3610.4]
  wire [31:0] NV_soDLA_CACC_CALC_int8_15_out_final_data; // @[NV_NVDLA_CACC_calculator_for_check.scala 112:57:@3610.4]
  wire  NV_soDLA_CACC_CALC_int8_15_out_final_sat; // @[NV_NVDLA_CACC_calculator_for_check.scala 112:57:@3610.4]
  wire  NV_soDLA_CACC_CALC_int8_15_out_final_valid; // @[NV_NVDLA_CACC_calculator_for_check.scala 112:57:@3610.4]
  wire [33:0] NV_soDLA_CACC_CALC_int8_15_out_partial_data; // @[NV_NVDLA_CACC_calculator_for_check.scala 112:57:@3610.4]
  wire  NV_soDLA_CACC_CALC_int8_15_out_partial_valid; // @[NV_NVDLA_CACC_calculator_for_check.scala 112:57:@3610.4]
  wire  NV_soDLA_CACC_CALC_int8_16_reset; // @[NV_NVDLA_CACC_calculator_for_check.scala 112:57:@3613.4]
  wire  NV_soDLA_CACC_CALC_int8_16_nvdla_core_clk; // @[NV_NVDLA_CACC_calculator_for_check.scala 112:57:@3613.4]
  wire [4:0] NV_soDLA_CACC_CALC_int8_16_cfg_truncate; // @[NV_NVDLA_CACC_calculator_for_check.scala 112:57:@3613.4]
  wire [21:0] NV_soDLA_CACC_CALC_int8_16_in_data; // @[NV_NVDLA_CACC_calculator_for_check.scala 112:57:@3613.4]
  wire [33:0] NV_soDLA_CACC_CALC_int8_16_in_op; // @[NV_NVDLA_CACC_calculator_for_check.scala 112:57:@3613.4]
  wire  NV_soDLA_CACC_CALC_int8_16_in_op_valid; // @[NV_NVDLA_CACC_calculator_for_check.scala 112:57:@3613.4]
  wire  NV_soDLA_CACC_CALC_int8_16_in_sel; // @[NV_NVDLA_CACC_calculator_for_check.scala 112:57:@3613.4]
  wire  NV_soDLA_CACC_CALC_int8_16_in_valid; // @[NV_NVDLA_CACC_calculator_for_check.scala 112:57:@3613.4]
  wire [31:0] NV_soDLA_CACC_CALC_int8_16_out_final_data; // @[NV_NVDLA_CACC_calculator_for_check.scala 112:57:@3613.4]
  wire  NV_soDLA_CACC_CALC_int8_16_out_final_sat; // @[NV_NVDLA_CACC_calculator_for_check.scala 112:57:@3613.4]
  wire  NV_soDLA_CACC_CALC_int8_16_out_final_valid; // @[NV_NVDLA_CACC_calculator_for_check.scala 112:57:@3613.4]
  wire [33:0] NV_soDLA_CACC_CALC_int8_16_out_partial_data; // @[NV_NVDLA_CACC_calculator_for_check.scala 112:57:@3613.4]
  wire  NV_soDLA_CACC_CALC_int8_16_out_partial_valid; // @[NV_NVDLA_CACC_calculator_for_check.scala 112:57:@3613.4]
  wire  NV_soDLA_CACC_CALC_int8_17_reset; // @[NV_NVDLA_CACC_calculator_for_check.scala 112:57:@3616.4]
  wire  NV_soDLA_CACC_CALC_int8_17_nvdla_core_clk; // @[NV_NVDLA_CACC_calculator_for_check.scala 112:57:@3616.4]
  wire [4:0] NV_soDLA_CACC_CALC_int8_17_cfg_truncate; // @[NV_NVDLA_CACC_calculator_for_check.scala 112:57:@3616.4]
  wire [21:0] NV_soDLA_CACC_CALC_int8_17_in_data; // @[NV_NVDLA_CACC_calculator_for_check.scala 112:57:@3616.4]
  wire [33:0] NV_soDLA_CACC_CALC_int8_17_in_op; // @[NV_NVDLA_CACC_calculator_for_check.scala 112:57:@3616.4]
  wire  NV_soDLA_CACC_CALC_int8_17_in_op_valid; // @[NV_NVDLA_CACC_calculator_for_check.scala 112:57:@3616.4]
  wire  NV_soDLA_CACC_CALC_int8_17_in_sel; // @[NV_NVDLA_CACC_calculator_for_check.scala 112:57:@3616.4]
  wire  NV_soDLA_CACC_CALC_int8_17_in_valid; // @[NV_NVDLA_CACC_calculator_for_check.scala 112:57:@3616.4]
  wire [31:0] NV_soDLA_CACC_CALC_int8_17_out_final_data; // @[NV_NVDLA_CACC_calculator_for_check.scala 112:57:@3616.4]
  wire  NV_soDLA_CACC_CALC_int8_17_out_final_sat; // @[NV_NVDLA_CACC_calculator_for_check.scala 112:57:@3616.4]
  wire  NV_soDLA_CACC_CALC_int8_17_out_final_valid; // @[NV_NVDLA_CACC_calculator_for_check.scala 112:57:@3616.4]
  wire [33:0] NV_soDLA_CACC_CALC_int8_17_out_partial_data; // @[NV_NVDLA_CACC_calculator_for_check.scala 112:57:@3616.4]
  wire  NV_soDLA_CACC_CALC_int8_17_out_partial_valid; // @[NV_NVDLA_CACC_calculator_for_check.scala 112:57:@3616.4]
  wire  NV_soDLA_CACC_CALC_int8_18_reset; // @[NV_NVDLA_CACC_calculator_for_check.scala 112:57:@3619.4]
  wire  NV_soDLA_CACC_CALC_int8_18_nvdla_core_clk; // @[NV_NVDLA_CACC_calculator_for_check.scala 112:57:@3619.4]
  wire [4:0] NV_soDLA_CACC_CALC_int8_18_cfg_truncate; // @[NV_NVDLA_CACC_calculator_for_check.scala 112:57:@3619.4]
  wire [21:0] NV_soDLA_CACC_CALC_int8_18_in_data; // @[NV_NVDLA_CACC_calculator_for_check.scala 112:57:@3619.4]
  wire [33:0] NV_soDLA_CACC_CALC_int8_18_in_op; // @[NV_NVDLA_CACC_calculator_for_check.scala 112:57:@3619.4]
  wire  NV_soDLA_CACC_CALC_int8_18_in_op_valid; // @[NV_NVDLA_CACC_calculator_for_check.scala 112:57:@3619.4]
  wire  NV_soDLA_CACC_CALC_int8_18_in_sel; // @[NV_NVDLA_CACC_calculator_for_check.scala 112:57:@3619.4]
  wire  NV_soDLA_CACC_CALC_int8_18_in_valid; // @[NV_NVDLA_CACC_calculator_for_check.scala 112:57:@3619.4]
  wire [31:0] NV_soDLA_CACC_CALC_int8_18_out_final_data; // @[NV_NVDLA_CACC_calculator_for_check.scala 112:57:@3619.4]
  wire  NV_soDLA_CACC_CALC_int8_18_out_final_sat; // @[NV_NVDLA_CACC_calculator_for_check.scala 112:57:@3619.4]
  wire  NV_soDLA_CACC_CALC_int8_18_out_final_valid; // @[NV_NVDLA_CACC_calculator_for_check.scala 112:57:@3619.4]
  wire [33:0] NV_soDLA_CACC_CALC_int8_18_out_partial_data; // @[NV_NVDLA_CACC_calculator_for_check.scala 112:57:@3619.4]
  wire  NV_soDLA_CACC_CALC_int8_18_out_partial_valid; // @[NV_NVDLA_CACC_calculator_for_check.scala 112:57:@3619.4]
  wire  NV_soDLA_CACC_CALC_int8_19_reset; // @[NV_NVDLA_CACC_calculator_for_check.scala 112:57:@3622.4]
  wire  NV_soDLA_CACC_CALC_int8_19_nvdla_core_clk; // @[NV_NVDLA_CACC_calculator_for_check.scala 112:57:@3622.4]
  wire [4:0] NV_soDLA_CACC_CALC_int8_19_cfg_truncate; // @[NV_NVDLA_CACC_calculator_for_check.scala 112:57:@3622.4]
  wire [21:0] NV_soDLA_CACC_CALC_int8_19_in_data; // @[NV_NVDLA_CACC_calculator_for_check.scala 112:57:@3622.4]
  wire [33:0] NV_soDLA_CACC_CALC_int8_19_in_op; // @[NV_NVDLA_CACC_calculator_for_check.scala 112:57:@3622.4]
  wire  NV_soDLA_CACC_CALC_int8_19_in_op_valid; // @[NV_NVDLA_CACC_calculator_for_check.scala 112:57:@3622.4]
  wire  NV_soDLA_CACC_CALC_int8_19_in_sel; // @[NV_NVDLA_CACC_calculator_for_check.scala 112:57:@3622.4]
  wire  NV_soDLA_CACC_CALC_int8_19_in_valid; // @[NV_NVDLA_CACC_calculator_for_check.scala 112:57:@3622.4]
  wire [31:0] NV_soDLA_CACC_CALC_int8_19_out_final_data; // @[NV_NVDLA_CACC_calculator_for_check.scala 112:57:@3622.4]
  wire  NV_soDLA_CACC_CALC_int8_19_out_final_sat; // @[NV_NVDLA_CACC_calculator_for_check.scala 112:57:@3622.4]
  wire  NV_soDLA_CACC_CALC_int8_19_out_final_valid; // @[NV_NVDLA_CACC_calculator_for_check.scala 112:57:@3622.4]
  wire [33:0] NV_soDLA_CACC_CALC_int8_19_out_partial_data; // @[NV_NVDLA_CACC_calculator_for_check.scala 112:57:@3622.4]
  wire  NV_soDLA_CACC_CALC_int8_19_out_partial_valid; // @[NV_NVDLA_CACC_calculator_for_check.scala 112:57:@3622.4]
  wire  NV_soDLA_CACC_CALC_int8_20_reset; // @[NV_NVDLA_CACC_calculator_for_check.scala 112:57:@3625.4]
  wire  NV_soDLA_CACC_CALC_int8_20_nvdla_core_clk; // @[NV_NVDLA_CACC_calculator_for_check.scala 112:57:@3625.4]
  wire [4:0] NV_soDLA_CACC_CALC_int8_20_cfg_truncate; // @[NV_NVDLA_CACC_calculator_for_check.scala 112:57:@3625.4]
  wire [21:0] NV_soDLA_CACC_CALC_int8_20_in_data; // @[NV_NVDLA_CACC_calculator_for_check.scala 112:57:@3625.4]
  wire [33:0] NV_soDLA_CACC_CALC_int8_20_in_op; // @[NV_NVDLA_CACC_calculator_for_check.scala 112:57:@3625.4]
  wire  NV_soDLA_CACC_CALC_int8_20_in_op_valid; // @[NV_NVDLA_CACC_calculator_for_check.scala 112:57:@3625.4]
  wire  NV_soDLA_CACC_CALC_int8_20_in_sel; // @[NV_NVDLA_CACC_calculator_for_check.scala 112:57:@3625.4]
  wire  NV_soDLA_CACC_CALC_int8_20_in_valid; // @[NV_NVDLA_CACC_calculator_for_check.scala 112:57:@3625.4]
  wire [31:0] NV_soDLA_CACC_CALC_int8_20_out_final_data; // @[NV_NVDLA_CACC_calculator_for_check.scala 112:57:@3625.4]
  wire  NV_soDLA_CACC_CALC_int8_20_out_final_sat; // @[NV_NVDLA_CACC_calculator_for_check.scala 112:57:@3625.4]
  wire  NV_soDLA_CACC_CALC_int8_20_out_final_valid; // @[NV_NVDLA_CACC_calculator_for_check.scala 112:57:@3625.4]
  wire [33:0] NV_soDLA_CACC_CALC_int8_20_out_partial_data; // @[NV_NVDLA_CACC_calculator_for_check.scala 112:57:@3625.4]
  wire  NV_soDLA_CACC_CALC_int8_20_out_partial_valid; // @[NV_NVDLA_CACC_calculator_for_check.scala 112:57:@3625.4]
  wire  NV_soDLA_CACC_CALC_int8_21_reset; // @[NV_NVDLA_CACC_calculator_for_check.scala 112:57:@3628.4]
  wire  NV_soDLA_CACC_CALC_int8_21_nvdla_core_clk; // @[NV_NVDLA_CACC_calculator_for_check.scala 112:57:@3628.4]
  wire [4:0] NV_soDLA_CACC_CALC_int8_21_cfg_truncate; // @[NV_NVDLA_CACC_calculator_for_check.scala 112:57:@3628.4]
  wire [21:0] NV_soDLA_CACC_CALC_int8_21_in_data; // @[NV_NVDLA_CACC_calculator_for_check.scala 112:57:@3628.4]
  wire [33:0] NV_soDLA_CACC_CALC_int8_21_in_op; // @[NV_NVDLA_CACC_calculator_for_check.scala 112:57:@3628.4]
  wire  NV_soDLA_CACC_CALC_int8_21_in_op_valid; // @[NV_NVDLA_CACC_calculator_for_check.scala 112:57:@3628.4]
  wire  NV_soDLA_CACC_CALC_int8_21_in_sel; // @[NV_NVDLA_CACC_calculator_for_check.scala 112:57:@3628.4]
  wire  NV_soDLA_CACC_CALC_int8_21_in_valid; // @[NV_NVDLA_CACC_calculator_for_check.scala 112:57:@3628.4]
  wire [31:0] NV_soDLA_CACC_CALC_int8_21_out_final_data; // @[NV_NVDLA_CACC_calculator_for_check.scala 112:57:@3628.4]
  wire  NV_soDLA_CACC_CALC_int8_21_out_final_sat; // @[NV_NVDLA_CACC_calculator_for_check.scala 112:57:@3628.4]
  wire  NV_soDLA_CACC_CALC_int8_21_out_final_valid; // @[NV_NVDLA_CACC_calculator_for_check.scala 112:57:@3628.4]
  wire [33:0] NV_soDLA_CACC_CALC_int8_21_out_partial_data; // @[NV_NVDLA_CACC_calculator_for_check.scala 112:57:@3628.4]
  wire  NV_soDLA_CACC_CALC_int8_21_out_partial_valid; // @[NV_NVDLA_CACC_calculator_for_check.scala 112:57:@3628.4]
  wire  NV_soDLA_CACC_CALC_int8_22_reset; // @[NV_NVDLA_CACC_calculator_for_check.scala 112:57:@3631.4]
  wire  NV_soDLA_CACC_CALC_int8_22_nvdla_core_clk; // @[NV_NVDLA_CACC_calculator_for_check.scala 112:57:@3631.4]
  wire [4:0] NV_soDLA_CACC_CALC_int8_22_cfg_truncate; // @[NV_NVDLA_CACC_calculator_for_check.scala 112:57:@3631.4]
  wire [21:0] NV_soDLA_CACC_CALC_int8_22_in_data; // @[NV_NVDLA_CACC_calculator_for_check.scala 112:57:@3631.4]
  wire [33:0] NV_soDLA_CACC_CALC_int8_22_in_op; // @[NV_NVDLA_CACC_calculator_for_check.scala 112:57:@3631.4]
  wire  NV_soDLA_CACC_CALC_int8_22_in_op_valid; // @[NV_NVDLA_CACC_calculator_for_check.scala 112:57:@3631.4]
  wire  NV_soDLA_CACC_CALC_int8_22_in_sel; // @[NV_NVDLA_CACC_calculator_for_check.scala 112:57:@3631.4]
  wire  NV_soDLA_CACC_CALC_int8_22_in_valid; // @[NV_NVDLA_CACC_calculator_for_check.scala 112:57:@3631.4]
  wire [31:0] NV_soDLA_CACC_CALC_int8_22_out_final_data; // @[NV_NVDLA_CACC_calculator_for_check.scala 112:57:@3631.4]
  wire  NV_soDLA_CACC_CALC_int8_22_out_final_sat; // @[NV_NVDLA_CACC_calculator_for_check.scala 112:57:@3631.4]
  wire  NV_soDLA_CACC_CALC_int8_22_out_final_valid; // @[NV_NVDLA_CACC_calculator_for_check.scala 112:57:@3631.4]
  wire [33:0] NV_soDLA_CACC_CALC_int8_22_out_partial_data; // @[NV_NVDLA_CACC_calculator_for_check.scala 112:57:@3631.4]
  wire  NV_soDLA_CACC_CALC_int8_22_out_partial_valid; // @[NV_NVDLA_CACC_calculator_for_check.scala 112:57:@3631.4]
  wire  NV_soDLA_CACC_CALC_int8_23_reset; // @[NV_NVDLA_CACC_calculator_for_check.scala 112:57:@3634.4]
  wire  NV_soDLA_CACC_CALC_int8_23_nvdla_core_clk; // @[NV_NVDLA_CACC_calculator_for_check.scala 112:57:@3634.4]
  wire [4:0] NV_soDLA_CACC_CALC_int8_23_cfg_truncate; // @[NV_NVDLA_CACC_calculator_for_check.scala 112:57:@3634.4]
  wire [21:0] NV_soDLA_CACC_CALC_int8_23_in_data; // @[NV_NVDLA_CACC_calculator_for_check.scala 112:57:@3634.4]
  wire [33:0] NV_soDLA_CACC_CALC_int8_23_in_op; // @[NV_NVDLA_CACC_calculator_for_check.scala 112:57:@3634.4]
  wire  NV_soDLA_CACC_CALC_int8_23_in_op_valid; // @[NV_NVDLA_CACC_calculator_for_check.scala 112:57:@3634.4]
  wire  NV_soDLA_CACC_CALC_int8_23_in_sel; // @[NV_NVDLA_CACC_calculator_for_check.scala 112:57:@3634.4]
  wire  NV_soDLA_CACC_CALC_int8_23_in_valid; // @[NV_NVDLA_CACC_calculator_for_check.scala 112:57:@3634.4]
  wire [31:0] NV_soDLA_CACC_CALC_int8_23_out_final_data; // @[NV_NVDLA_CACC_calculator_for_check.scala 112:57:@3634.4]
  wire  NV_soDLA_CACC_CALC_int8_23_out_final_sat; // @[NV_NVDLA_CACC_calculator_for_check.scala 112:57:@3634.4]
  wire  NV_soDLA_CACC_CALC_int8_23_out_final_valid; // @[NV_NVDLA_CACC_calculator_for_check.scala 112:57:@3634.4]
  wire [33:0] NV_soDLA_CACC_CALC_int8_23_out_partial_data; // @[NV_NVDLA_CACC_calculator_for_check.scala 112:57:@3634.4]
  wire  NV_soDLA_CACC_CALC_int8_23_out_partial_valid; // @[NV_NVDLA_CACC_calculator_for_check.scala 112:57:@3634.4]
  wire  NV_soDLA_CACC_CALC_int8_24_reset; // @[NV_NVDLA_CACC_calculator_for_check.scala 112:57:@3637.4]
  wire  NV_soDLA_CACC_CALC_int8_24_nvdla_core_clk; // @[NV_NVDLA_CACC_calculator_for_check.scala 112:57:@3637.4]
  wire [4:0] NV_soDLA_CACC_CALC_int8_24_cfg_truncate; // @[NV_NVDLA_CACC_calculator_for_check.scala 112:57:@3637.4]
  wire [21:0] NV_soDLA_CACC_CALC_int8_24_in_data; // @[NV_NVDLA_CACC_calculator_for_check.scala 112:57:@3637.4]
  wire [33:0] NV_soDLA_CACC_CALC_int8_24_in_op; // @[NV_NVDLA_CACC_calculator_for_check.scala 112:57:@3637.4]
  wire  NV_soDLA_CACC_CALC_int8_24_in_op_valid; // @[NV_NVDLA_CACC_calculator_for_check.scala 112:57:@3637.4]
  wire  NV_soDLA_CACC_CALC_int8_24_in_sel; // @[NV_NVDLA_CACC_calculator_for_check.scala 112:57:@3637.4]
  wire  NV_soDLA_CACC_CALC_int8_24_in_valid; // @[NV_NVDLA_CACC_calculator_for_check.scala 112:57:@3637.4]
  wire [31:0] NV_soDLA_CACC_CALC_int8_24_out_final_data; // @[NV_NVDLA_CACC_calculator_for_check.scala 112:57:@3637.4]
  wire  NV_soDLA_CACC_CALC_int8_24_out_final_sat; // @[NV_NVDLA_CACC_calculator_for_check.scala 112:57:@3637.4]
  wire  NV_soDLA_CACC_CALC_int8_24_out_final_valid; // @[NV_NVDLA_CACC_calculator_for_check.scala 112:57:@3637.4]
  wire [33:0] NV_soDLA_CACC_CALC_int8_24_out_partial_data; // @[NV_NVDLA_CACC_calculator_for_check.scala 112:57:@3637.4]
  wire  NV_soDLA_CACC_CALC_int8_24_out_partial_valid; // @[NV_NVDLA_CACC_calculator_for_check.scala 112:57:@3637.4]
  wire  NV_soDLA_CACC_CALC_int8_25_reset; // @[NV_NVDLA_CACC_calculator_for_check.scala 112:57:@3640.4]
  wire  NV_soDLA_CACC_CALC_int8_25_nvdla_core_clk; // @[NV_NVDLA_CACC_calculator_for_check.scala 112:57:@3640.4]
  wire [4:0] NV_soDLA_CACC_CALC_int8_25_cfg_truncate; // @[NV_NVDLA_CACC_calculator_for_check.scala 112:57:@3640.4]
  wire [21:0] NV_soDLA_CACC_CALC_int8_25_in_data; // @[NV_NVDLA_CACC_calculator_for_check.scala 112:57:@3640.4]
  wire [33:0] NV_soDLA_CACC_CALC_int8_25_in_op; // @[NV_NVDLA_CACC_calculator_for_check.scala 112:57:@3640.4]
  wire  NV_soDLA_CACC_CALC_int8_25_in_op_valid; // @[NV_NVDLA_CACC_calculator_for_check.scala 112:57:@3640.4]
  wire  NV_soDLA_CACC_CALC_int8_25_in_sel; // @[NV_NVDLA_CACC_calculator_for_check.scala 112:57:@3640.4]
  wire  NV_soDLA_CACC_CALC_int8_25_in_valid; // @[NV_NVDLA_CACC_calculator_for_check.scala 112:57:@3640.4]
  wire [31:0] NV_soDLA_CACC_CALC_int8_25_out_final_data; // @[NV_NVDLA_CACC_calculator_for_check.scala 112:57:@3640.4]
  wire  NV_soDLA_CACC_CALC_int8_25_out_final_sat; // @[NV_NVDLA_CACC_calculator_for_check.scala 112:57:@3640.4]
  wire  NV_soDLA_CACC_CALC_int8_25_out_final_valid; // @[NV_NVDLA_CACC_calculator_for_check.scala 112:57:@3640.4]
  wire [33:0] NV_soDLA_CACC_CALC_int8_25_out_partial_data; // @[NV_NVDLA_CACC_calculator_for_check.scala 112:57:@3640.4]
  wire  NV_soDLA_CACC_CALC_int8_25_out_partial_valid; // @[NV_NVDLA_CACC_calculator_for_check.scala 112:57:@3640.4]
  wire  NV_soDLA_CACC_CALC_int8_26_reset; // @[NV_NVDLA_CACC_calculator_for_check.scala 112:57:@3643.4]
  wire  NV_soDLA_CACC_CALC_int8_26_nvdla_core_clk; // @[NV_NVDLA_CACC_calculator_for_check.scala 112:57:@3643.4]
  wire [4:0] NV_soDLA_CACC_CALC_int8_26_cfg_truncate; // @[NV_NVDLA_CACC_calculator_for_check.scala 112:57:@3643.4]
  wire [21:0] NV_soDLA_CACC_CALC_int8_26_in_data; // @[NV_NVDLA_CACC_calculator_for_check.scala 112:57:@3643.4]
  wire [33:0] NV_soDLA_CACC_CALC_int8_26_in_op; // @[NV_NVDLA_CACC_calculator_for_check.scala 112:57:@3643.4]
  wire  NV_soDLA_CACC_CALC_int8_26_in_op_valid; // @[NV_NVDLA_CACC_calculator_for_check.scala 112:57:@3643.4]
  wire  NV_soDLA_CACC_CALC_int8_26_in_sel; // @[NV_NVDLA_CACC_calculator_for_check.scala 112:57:@3643.4]
  wire  NV_soDLA_CACC_CALC_int8_26_in_valid; // @[NV_NVDLA_CACC_calculator_for_check.scala 112:57:@3643.4]
  wire [31:0] NV_soDLA_CACC_CALC_int8_26_out_final_data; // @[NV_NVDLA_CACC_calculator_for_check.scala 112:57:@3643.4]
  wire  NV_soDLA_CACC_CALC_int8_26_out_final_sat; // @[NV_NVDLA_CACC_calculator_for_check.scala 112:57:@3643.4]
  wire  NV_soDLA_CACC_CALC_int8_26_out_final_valid; // @[NV_NVDLA_CACC_calculator_for_check.scala 112:57:@3643.4]
  wire [33:0] NV_soDLA_CACC_CALC_int8_26_out_partial_data; // @[NV_NVDLA_CACC_calculator_for_check.scala 112:57:@3643.4]
  wire  NV_soDLA_CACC_CALC_int8_26_out_partial_valid; // @[NV_NVDLA_CACC_calculator_for_check.scala 112:57:@3643.4]
  wire  NV_soDLA_CACC_CALC_int8_27_reset; // @[NV_NVDLA_CACC_calculator_for_check.scala 112:57:@3646.4]
  wire  NV_soDLA_CACC_CALC_int8_27_nvdla_core_clk; // @[NV_NVDLA_CACC_calculator_for_check.scala 112:57:@3646.4]
  wire [4:0] NV_soDLA_CACC_CALC_int8_27_cfg_truncate; // @[NV_NVDLA_CACC_calculator_for_check.scala 112:57:@3646.4]
  wire [21:0] NV_soDLA_CACC_CALC_int8_27_in_data; // @[NV_NVDLA_CACC_calculator_for_check.scala 112:57:@3646.4]
  wire [33:0] NV_soDLA_CACC_CALC_int8_27_in_op; // @[NV_NVDLA_CACC_calculator_for_check.scala 112:57:@3646.4]
  wire  NV_soDLA_CACC_CALC_int8_27_in_op_valid; // @[NV_NVDLA_CACC_calculator_for_check.scala 112:57:@3646.4]
  wire  NV_soDLA_CACC_CALC_int8_27_in_sel; // @[NV_NVDLA_CACC_calculator_for_check.scala 112:57:@3646.4]
  wire  NV_soDLA_CACC_CALC_int8_27_in_valid; // @[NV_NVDLA_CACC_calculator_for_check.scala 112:57:@3646.4]
  wire [31:0] NV_soDLA_CACC_CALC_int8_27_out_final_data; // @[NV_NVDLA_CACC_calculator_for_check.scala 112:57:@3646.4]
  wire  NV_soDLA_CACC_CALC_int8_27_out_final_sat; // @[NV_NVDLA_CACC_calculator_for_check.scala 112:57:@3646.4]
  wire  NV_soDLA_CACC_CALC_int8_27_out_final_valid; // @[NV_NVDLA_CACC_calculator_for_check.scala 112:57:@3646.4]
  wire [33:0] NV_soDLA_CACC_CALC_int8_27_out_partial_data; // @[NV_NVDLA_CACC_calculator_for_check.scala 112:57:@3646.4]
  wire  NV_soDLA_CACC_CALC_int8_27_out_partial_valid; // @[NV_NVDLA_CACC_calculator_for_check.scala 112:57:@3646.4]
  wire  NV_soDLA_CACC_CALC_int8_28_reset; // @[NV_NVDLA_CACC_calculator_for_check.scala 112:57:@3649.4]
  wire  NV_soDLA_CACC_CALC_int8_28_nvdla_core_clk; // @[NV_NVDLA_CACC_calculator_for_check.scala 112:57:@3649.4]
  wire [4:0] NV_soDLA_CACC_CALC_int8_28_cfg_truncate; // @[NV_NVDLA_CACC_calculator_for_check.scala 112:57:@3649.4]
  wire [21:0] NV_soDLA_CACC_CALC_int8_28_in_data; // @[NV_NVDLA_CACC_calculator_for_check.scala 112:57:@3649.4]
  wire [33:0] NV_soDLA_CACC_CALC_int8_28_in_op; // @[NV_NVDLA_CACC_calculator_for_check.scala 112:57:@3649.4]
  wire  NV_soDLA_CACC_CALC_int8_28_in_op_valid; // @[NV_NVDLA_CACC_calculator_for_check.scala 112:57:@3649.4]
  wire  NV_soDLA_CACC_CALC_int8_28_in_sel; // @[NV_NVDLA_CACC_calculator_for_check.scala 112:57:@3649.4]
  wire  NV_soDLA_CACC_CALC_int8_28_in_valid; // @[NV_NVDLA_CACC_calculator_for_check.scala 112:57:@3649.4]
  wire [31:0] NV_soDLA_CACC_CALC_int8_28_out_final_data; // @[NV_NVDLA_CACC_calculator_for_check.scala 112:57:@3649.4]
  wire  NV_soDLA_CACC_CALC_int8_28_out_final_sat; // @[NV_NVDLA_CACC_calculator_for_check.scala 112:57:@3649.4]
  wire  NV_soDLA_CACC_CALC_int8_28_out_final_valid; // @[NV_NVDLA_CACC_calculator_for_check.scala 112:57:@3649.4]
  wire [33:0] NV_soDLA_CACC_CALC_int8_28_out_partial_data; // @[NV_NVDLA_CACC_calculator_for_check.scala 112:57:@3649.4]
  wire  NV_soDLA_CACC_CALC_int8_28_out_partial_valid; // @[NV_NVDLA_CACC_calculator_for_check.scala 112:57:@3649.4]
  wire  NV_soDLA_CACC_CALC_int8_29_reset; // @[NV_NVDLA_CACC_calculator_for_check.scala 112:57:@3652.4]
  wire  NV_soDLA_CACC_CALC_int8_29_nvdla_core_clk; // @[NV_NVDLA_CACC_calculator_for_check.scala 112:57:@3652.4]
  wire [4:0] NV_soDLA_CACC_CALC_int8_29_cfg_truncate; // @[NV_NVDLA_CACC_calculator_for_check.scala 112:57:@3652.4]
  wire [21:0] NV_soDLA_CACC_CALC_int8_29_in_data; // @[NV_NVDLA_CACC_calculator_for_check.scala 112:57:@3652.4]
  wire [33:0] NV_soDLA_CACC_CALC_int8_29_in_op; // @[NV_NVDLA_CACC_calculator_for_check.scala 112:57:@3652.4]
  wire  NV_soDLA_CACC_CALC_int8_29_in_op_valid; // @[NV_NVDLA_CACC_calculator_for_check.scala 112:57:@3652.4]
  wire  NV_soDLA_CACC_CALC_int8_29_in_sel; // @[NV_NVDLA_CACC_calculator_for_check.scala 112:57:@3652.4]
  wire  NV_soDLA_CACC_CALC_int8_29_in_valid; // @[NV_NVDLA_CACC_calculator_for_check.scala 112:57:@3652.4]
  wire [31:0] NV_soDLA_CACC_CALC_int8_29_out_final_data; // @[NV_NVDLA_CACC_calculator_for_check.scala 112:57:@3652.4]
  wire  NV_soDLA_CACC_CALC_int8_29_out_final_sat; // @[NV_NVDLA_CACC_calculator_for_check.scala 112:57:@3652.4]
  wire  NV_soDLA_CACC_CALC_int8_29_out_final_valid; // @[NV_NVDLA_CACC_calculator_for_check.scala 112:57:@3652.4]
  wire [33:0] NV_soDLA_CACC_CALC_int8_29_out_partial_data; // @[NV_NVDLA_CACC_calculator_for_check.scala 112:57:@3652.4]
  wire  NV_soDLA_CACC_CALC_int8_29_out_partial_valid; // @[NV_NVDLA_CACC_calculator_for_check.scala 112:57:@3652.4]
  wire  NV_soDLA_CACC_CALC_int8_30_reset; // @[NV_NVDLA_CACC_calculator_for_check.scala 112:57:@3655.4]
  wire  NV_soDLA_CACC_CALC_int8_30_nvdla_core_clk; // @[NV_NVDLA_CACC_calculator_for_check.scala 112:57:@3655.4]
  wire [4:0] NV_soDLA_CACC_CALC_int8_30_cfg_truncate; // @[NV_NVDLA_CACC_calculator_for_check.scala 112:57:@3655.4]
  wire [21:0] NV_soDLA_CACC_CALC_int8_30_in_data; // @[NV_NVDLA_CACC_calculator_for_check.scala 112:57:@3655.4]
  wire [33:0] NV_soDLA_CACC_CALC_int8_30_in_op; // @[NV_NVDLA_CACC_calculator_for_check.scala 112:57:@3655.4]
  wire  NV_soDLA_CACC_CALC_int8_30_in_op_valid; // @[NV_NVDLA_CACC_calculator_for_check.scala 112:57:@3655.4]
  wire  NV_soDLA_CACC_CALC_int8_30_in_sel; // @[NV_NVDLA_CACC_calculator_for_check.scala 112:57:@3655.4]
  wire  NV_soDLA_CACC_CALC_int8_30_in_valid; // @[NV_NVDLA_CACC_calculator_for_check.scala 112:57:@3655.4]
  wire [31:0] NV_soDLA_CACC_CALC_int8_30_out_final_data; // @[NV_NVDLA_CACC_calculator_for_check.scala 112:57:@3655.4]
  wire  NV_soDLA_CACC_CALC_int8_30_out_final_sat; // @[NV_NVDLA_CACC_calculator_for_check.scala 112:57:@3655.4]
  wire  NV_soDLA_CACC_CALC_int8_30_out_final_valid; // @[NV_NVDLA_CACC_calculator_for_check.scala 112:57:@3655.4]
  wire [33:0] NV_soDLA_CACC_CALC_int8_30_out_partial_data; // @[NV_NVDLA_CACC_calculator_for_check.scala 112:57:@3655.4]
  wire  NV_soDLA_CACC_CALC_int8_30_out_partial_valid; // @[NV_NVDLA_CACC_calculator_for_check.scala 112:57:@3655.4]
  wire  NV_soDLA_CACC_CALC_int8_31_reset; // @[NV_NVDLA_CACC_calculator_for_check.scala 112:57:@3658.4]
  wire  NV_soDLA_CACC_CALC_int8_31_nvdla_core_clk; // @[NV_NVDLA_CACC_calculator_for_check.scala 112:57:@3658.4]
  wire [4:0] NV_soDLA_CACC_CALC_int8_31_cfg_truncate; // @[NV_NVDLA_CACC_calculator_for_check.scala 112:57:@3658.4]
  wire [21:0] NV_soDLA_CACC_CALC_int8_31_in_data; // @[NV_NVDLA_CACC_calculator_for_check.scala 112:57:@3658.4]
  wire [33:0] NV_soDLA_CACC_CALC_int8_31_in_op; // @[NV_NVDLA_CACC_calculator_for_check.scala 112:57:@3658.4]
  wire  NV_soDLA_CACC_CALC_int8_31_in_op_valid; // @[NV_NVDLA_CACC_calculator_for_check.scala 112:57:@3658.4]
  wire  NV_soDLA_CACC_CALC_int8_31_in_sel; // @[NV_NVDLA_CACC_calculator_for_check.scala 112:57:@3658.4]
  wire  NV_soDLA_CACC_CALC_int8_31_in_valid; // @[NV_NVDLA_CACC_calculator_for_check.scala 112:57:@3658.4]
  wire [31:0] NV_soDLA_CACC_CALC_int8_31_out_final_data; // @[NV_NVDLA_CACC_calculator_for_check.scala 112:57:@3658.4]
  wire  NV_soDLA_CACC_CALC_int8_31_out_final_sat; // @[NV_NVDLA_CACC_calculator_for_check.scala 112:57:@3658.4]
  wire  NV_soDLA_CACC_CALC_int8_31_out_final_valid; // @[NV_NVDLA_CACC_calculator_for_check.scala 112:57:@3658.4]
  wire [33:0] NV_soDLA_CACC_CALC_int8_31_out_partial_data; // @[NV_NVDLA_CACC_calculator_for_check.scala 112:57:@3658.4]
  wire  NV_soDLA_CACC_CALC_int8_31_out_partial_valid; // @[NV_NVDLA_CACC_calculator_for_check.scala 112:57:@3658.4]
  wire  _T_134; // @[NV_NVDLA_CACC_calculator_for_check.scala 69:38:@3272.4]
  reg [12:0] accu_ctrl_pd_d1; // @[Reg.scala 19:20:@3338.4]
  reg [31:0] _RAND_0;
  wire [12:0] _GEN_0; // @[Reg.scala 20:19:@3339.4]
  wire  calc_valid_in; // @[NV_NVDLA_CACC_calculator_for_check.scala 75:45:@3342.4]
  reg  _T_209; // @[Reg.scala 19:20:@3343.4]
  reg [31:0] _RAND_1;
  reg  _T_211; // @[Reg.scala 19:20:@3347.4]
  reg [31:0] _RAND_2;
  reg  calc_valid; // @[Reg.scala 19:20:@3351.4]
  reg [31:0] _RAND_3;
  wire [5:0] calc_addr; // @[NV_NVDLA_CACC_calculator_for_check.scala 80:36:@3355.4]
  wire  calc_stripe_end; // @[NV_NVDLA_CACC_calculator_for_check.scala 82:42:@3357.4]
  wire  calc_channel_end; // @[NV_NVDLA_CACC_calculator_for_check.scala 83:43:@3358.4]
  wire  calc_layer_end; // @[NV_NVDLA_CACC_calculator_for_check.scala 84:41:@3359.4]
  wire  calc_in_mask_0; // @[NV_NVDLA_CACC_calculator_for_check.scala 92:46:@3365.4]
  wire  calc_in_mask_16; // @[NV_NVDLA_CACC_calculator_for_check.scala 93:66:@3367.4]
  wire  calc_in_mask_1; // @[NV_NVDLA_CACC_calculator_for_check.scala 92:46:@3371.4]
  wire  calc_in_mask_17; // @[NV_NVDLA_CACC_calculator_for_check.scala 93:66:@3373.4]
  wire  calc_in_mask_2; // @[NV_NVDLA_CACC_calculator_for_check.scala 92:46:@3377.4]
  wire  calc_in_mask_18; // @[NV_NVDLA_CACC_calculator_for_check.scala 93:66:@3379.4]
  wire  calc_in_mask_3; // @[NV_NVDLA_CACC_calculator_for_check.scala 92:46:@3383.4]
  wire  calc_in_mask_19; // @[NV_NVDLA_CACC_calculator_for_check.scala 93:66:@3385.4]
  wire  calc_in_mask_4; // @[NV_NVDLA_CACC_calculator_for_check.scala 92:46:@3389.4]
  wire  calc_in_mask_20; // @[NV_NVDLA_CACC_calculator_for_check.scala 93:66:@3391.4]
  wire  calc_in_mask_5; // @[NV_NVDLA_CACC_calculator_for_check.scala 92:46:@3395.4]
  wire  calc_in_mask_21; // @[NV_NVDLA_CACC_calculator_for_check.scala 93:66:@3397.4]
  wire  calc_in_mask_6; // @[NV_NVDLA_CACC_calculator_for_check.scala 92:46:@3401.4]
  wire  calc_in_mask_22; // @[NV_NVDLA_CACC_calculator_for_check.scala 93:66:@3403.4]
  wire  calc_in_mask_7; // @[NV_NVDLA_CACC_calculator_for_check.scala 92:46:@3407.4]
  wire  calc_in_mask_23; // @[NV_NVDLA_CACC_calculator_for_check.scala 93:66:@3409.4]
  wire  calc_in_mask_8; // @[NV_NVDLA_CACC_calculator_for_check.scala 92:46:@3413.4]
  wire  calc_in_mask_24; // @[NV_NVDLA_CACC_calculator_for_check.scala 93:66:@3415.4]
  wire  calc_in_mask_9; // @[NV_NVDLA_CACC_calculator_for_check.scala 92:46:@3419.4]
  wire  calc_in_mask_25; // @[NV_NVDLA_CACC_calculator_for_check.scala 93:66:@3421.4]
  wire  calc_in_mask_10; // @[NV_NVDLA_CACC_calculator_for_check.scala 92:46:@3425.4]
  wire  calc_in_mask_26; // @[NV_NVDLA_CACC_calculator_for_check.scala 93:66:@3427.4]
  wire  calc_in_mask_11; // @[NV_NVDLA_CACC_calculator_for_check.scala 92:46:@3431.4]
  wire  calc_in_mask_27; // @[NV_NVDLA_CACC_calculator_for_check.scala 93:66:@3433.4]
  wire  calc_in_mask_12; // @[NV_NVDLA_CACC_calculator_for_check.scala 92:46:@3437.4]
  wire  calc_in_mask_28; // @[NV_NVDLA_CACC_calculator_for_check.scala 93:66:@3439.4]
  wire  calc_in_mask_13; // @[NV_NVDLA_CACC_calculator_for_check.scala 92:46:@3443.4]
  wire  calc_in_mask_29; // @[NV_NVDLA_CACC_calculator_for_check.scala 93:66:@3445.4]
  wire  calc_in_mask_14; // @[NV_NVDLA_CACC_calculator_for_check.scala 92:46:@3449.4]
  wire  calc_in_mask_30; // @[NV_NVDLA_CACC_calculator_for_check.scala 93:66:@3451.4]
  wire  calc_in_mask_15; // @[NV_NVDLA_CACC_calculator_for_check.scala 92:46:@3455.4]
  wire  calc_in_mask_31; // @[NV_NVDLA_CACC_calculator_for_check.scala 93:66:@3457.4]
  wire  calc_dlv_valid; // @[NV_NVDLA_CACC_calculator_for_check.scala 98:37:@3557.4]
  wire  _T_425; // @[NV_NVDLA_CACC_calculator_for_check.scala 99:36:@3558.4]
  wire  calc_wr_en; // @[NV_NVDLA_CACC_calculator_for_check.scala 99:33:@3559.4]
  reg  _T_615; // @[NV_NVDLA_CACC_calculator_for_check.scala 132:72:@4046.4]
  reg [31:0] _RAND_4;
  reg  _T_622; // @[NV_NVDLA_CACC_calculator_for_check.scala 134:72:@4049.4]
  reg [31:0] _RAND_5;
  reg  calc_wr_en_out; // @[NV_NVDLA_CACC_calculator_for_check.scala 134:72:@4050.4]
  reg [31:0] _RAND_6;
  reg [5:0] _T_629; // @[NV_NVDLA_CACC_calculator_for_check.scala 136:71:@4052.4]
  reg [31:0] _RAND_7;
  reg [5:0] calc_addr_out; // @[NV_NVDLA_CACC_calculator_for_check.scala 136:71:@4053.4]
  reg [31:0] _RAND_8;
  wire [5:0] _GEN_4; // @[NV_NVDLA_CACC_calculator_for_check.scala 145:30:@4059.4]
  wire [5:0] _GEN_5; // @[NV_NVDLA_CACC_calculator_for_check.scala 145:30:@4064.4]
  reg  _T_636; // @[NV_NVDLA_CACC_calculator_for_check.scala 155:74:@4068.4]
  reg [31:0] _RAND_9;
  reg  calc_dlv_valid_out; // @[NV_NVDLA_CACC_calculator_for_check.scala 155:74:@4069.4]
  reg [31:0] _RAND_10;
  reg  _T_643; // @[NV_NVDLA_CACC_calculator_for_check.scala 157:75:@4071.4]
  reg [31:0] _RAND_11;
  reg  calc_stripe_end_out; // @[NV_NVDLA_CACC_calculator_for_check.scala 157:75:@4072.4]
  reg [31:0] _RAND_12;
  reg  _T_650; // @[NV_NVDLA_CACC_calculator_for_check.scala 159:74:@4074.4]
  reg [31:0] _RAND_13;
  reg  calc_layer_end_out; // @[NV_NVDLA_CACC_calculator_for_check.scala 159:74:@4075.4]
  reg [31:0] _RAND_14;
  wire  _GEN_6; // @[NV_NVDLA_CACC_calculator_for_check.scala 167:34:@4080.4]
  wire  _GEN_7; // @[NV_NVDLA_CACC_calculator_for_check.scala 167:34:@4080.4]
  wire  _GEN_8; // @[NV_NVDLA_CACC_calculator_for_check.scala 167:34:@4085.4]
  wire  _GEN_9; // @[NV_NVDLA_CACC_calculator_for_check.scala 167:34:@4085.4]
  wire  calc_pout_vld_0; // @[NV_NVDLA_CACC_calculator_for_check.scala 107:29:@3561.4 NV_NVDLA_CACC_calculator_for_check.scala 126:26:@3672.4]
  wire [33:0] calc_pout_sum_0; // @[NV_NVDLA_CACC_calculator_for_check.scala 109:29:@3563.4 NV_NVDLA_CACC_calculator_for_check.scala 125:26:@3671.4]
  wire [33:0] calc_pout_0; // @[NV_NVDLA_CACC_calculator_for_check.scala 180:31:@4090.4]
  wire  calc_pout_vld_1; // @[NV_NVDLA_CACC_calculator_for_check.scala 107:29:@3561.4 NV_NVDLA_CACC_calculator_for_check.scala 126:26:@3684.4]
  wire [33:0] calc_pout_sum_1; // @[NV_NVDLA_CACC_calculator_for_check.scala 109:29:@3563.4 NV_NVDLA_CACC_calculator_for_check.scala 125:26:@3683.4]
  wire [33:0] calc_pout_1; // @[NV_NVDLA_CACC_calculator_for_check.scala 180:31:@4096.4]
  wire  calc_pout_vld_2; // @[NV_NVDLA_CACC_calculator_for_check.scala 107:29:@3561.4 NV_NVDLA_CACC_calculator_for_check.scala 126:26:@3696.4]
  wire [33:0] calc_pout_sum_2; // @[NV_NVDLA_CACC_calculator_for_check.scala 109:29:@3563.4 NV_NVDLA_CACC_calculator_for_check.scala 125:26:@3695.4]
  wire [33:0] calc_pout_2; // @[NV_NVDLA_CACC_calculator_for_check.scala 180:31:@4102.4]
  wire  calc_pout_vld_3; // @[NV_NVDLA_CACC_calculator_for_check.scala 107:29:@3561.4 NV_NVDLA_CACC_calculator_for_check.scala 126:26:@3708.4]
  wire [33:0] calc_pout_sum_3; // @[NV_NVDLA_CACC_calculator_for_check.scala 109:29:@3563.4 NV_NVDLA_CACC_calculator_for_check.scala 125:26:@3707.4]
  wire [33:0] calc_pout_3; // @[NV_NVDLA_CACC_calculator_for_check.scala 180:31:@4108.4]
  wire  calc_pout_vld_4; // @[NV_NVDLA_CACC_calculator_for_check.scala 107:29:@3561.4 NV_NVDLA_CACC_calculator_for_check.scala 126:26:@3720.4]
  wire [33:0] calc_pout_sum_4; // @[NV_NVDLA_CACC_calculator_for_check.scala 109:29:@3563.4 NV_NVDLA_CACC_calculator_for_check.scala 125:26:@3719.4]
  wire [33:0] calc_pout_4; // @[NV_NVDLA_CACC_calculator_for_check.scala 180:31:@4114.4]
  wire  calc_pout_vld_5; // @[NV_NVDLA_CACC_calculator_for_check.scala 107:29:@3561.4 NV_NVDLA_CACC_calculator_for_check.scala 126:26:@3732.4]
  wire [33:0] calc_pout_sum_5; // @[NV_NVDLA_CACC_calculator_for_check.scala 109:29:@3563.4 NV_NVDLA_CACC_calculator_for_check.scala 125:26:@3731.4]
  wire [33:0] calc_pout_5; // @[NV_NVDLA_CACC_calculator_for_check.scala 180:31:@4120.4]
  wire  calc_pout_vld_6; // @[NV_NVDLA_CACC_calculator_for_check.scala 107:29:@3561.4 NV_NVDLA_CACC_calculator_for_check.scala 126:26:@3744.4]
  wire [33:0] calc_pout_sum_6; // @[NV_NVDLA_CACC_calculator_for_check.scala 109:29:@3563.4 NV_NVDLA_CACC_calculator_for_check.scala 125:26:@3743.4]
  wire [33:0] calc_pout_6; // @[NV_NVDLA_CACC_calculator_for_check.scala 180:31:@4126.4]
  wire  calc_pout_vld_7; // @[NV_NVDLA_CACC_calculator_for_check.scala 107:29:@3561.4 NV_NVDLA_CACC_calculator_for_check.scala 126:26:@3756.4]
  wire [33:0] calc_pout_sum_7; // @[NV_NVDLA_CACC_calculator_for_check.scala 109:29:@3563.4 NV_NVDLA_CACC_calculator_for_check.scala 125:26:@3755.4]
  wire [33:0] calc_pout_7; // @[NV_NVDLA_CACC_calculator_for_check.scala 180:31:@4132.4]
  wire  calc_pout_vld_8; // @[NV_NVDLA_CACC_calculator_for_check.scala 107:29:@3561.4 NV_NVDLA_CACC_calculator_for_check.scala 126:26:@3768.4]
  wire [33:0] calc_pout_sum_8; // @[NV_NVDLA_CACC_calculator_for_check.scala 109:29:@3563.4 NV_NVDLA_CACC_calculator_for_check.scala 125:26:@3767.4]
  wire [33:0] calc_pout_8; // @[NV_NVDLA_CACC_calculator_for_check.scala 180:31:@4138.4]
  wire  calc_pout_vld_9; // @[NV_NVDLA_CACC_calculator_for_check.scala 107:29:@3561.4 NV_NVDLA_CACC_calculator_for_check.scala 126:26:@3780.4]
  wire [33:0] calc_pout_sum_9; // @[NV_NVDLA_CACC_calculator_for_check.scala 109:29:@3563.4 NV_NVDLA_CACC_calculator_for_check.scala 125:26:@3779.4]
  wire [33:0] calc_pout_9; // @[NV_NVDLA_CACC_calculator_for_check.scala 180:31:@4144.4]
  wire  calc_pout_vld_10; // @[NV_NVDLA_CACC_calculator_for_check.scala 107:29:@3561.4 NV_NVDLA_CACC_calculator_for_check.scala 126:26:@3792.4]
  wire [33:0] calc_pout_sum_10; // @[NV_NVDLA_CACC_calculator_for_check.scala 109:29:@3563.4 NV_NVDLA_CACC_calculator_for_check.scala 125:26:@3791.4]
  wire [33:0] calc_pout_10; // @[NV_NVDLA_CACC_calculator_for_check.scala 180:31:@4150.4]
  wire  calc_pout_vld_11; // @[NV_NVDLA_CACC_calculator_for_check.scala 107:29:@3561.4 NV_NVDLA_CACC_calculator_for_check.scala 126:26:@3804.4]
  wire [33:0] calc_pout_sum_11; // @[NV_NVDLA_CACC_calculator_for_check.scala 109:29:@3563.4 NV_NVDLA_CACC_calculator_for_check.scala 125:26:@3803.4]
  wire [33:0] calc_pout_11; // @[NV_NVDLA_CACC_calculator_for_check.scala 180:31:@4156.4]
  wire  calc_pout_vld_12; // @[NV_NVDLA_CACC_calculator_for_check.scala 107:29:@3561.4 NV_NVDLA_CACC_calculator_for_check.scala 126:26:@3816.4]
  wire [33:0] calc_pout_sum_12; // @[NV_NVDLA_CACC_calculator_for_check.scala 109:29:@3563.4 NV_NVDLA_CACC_calculator_for_check.scala 125:26:@3815.4]
  wire [33:0] calc_pout_12; // @[NV_NVDLA_CACC_calculator_for_check.scala 180:31:@4162.4]
  wire  calc_pout_vld_13; // @[NV_NVDLA_CACC_calculator_for_check.scala 107:29:@3561.4 NV_NVDLA_CACC_calculator_for_check.scala 126:26:@3828.4]
  wire [33:0] calc_pout_sum_13; // @[NV_NVDLA_CACC_calculator_for_check.scala 109:29:@3563.4 NV_NVDLA_CACC_calculator_for_check.scala 125:26:@3827.4]
  wire [33:0] calc_pout_13; // @[NV_NVDLA_CACC_calculator_for_check.scala 180:31:@4168.4]
  wire  calc_pout_vld_14; // @[NV_NVDLA_CACC_calculator_for_check.scala 107:29:@3561.4 NV_NVDLA_CACC_calculator_for_check.scala 126:26:@3840.4]
  wire [33:0] calc_pout_sum_14; // @[NV_NVDLA_CACC_calculator_for_check.scala 109:29:@3563.4 NV_NVDLA_CACC_calculator_for_check.scala 125:26:@3839.4]
  wire [33:0] calc_pout_14; // @[NV_NVDLA_CACC_calculator_for_check.scala 180:31:@4174.4]
  wire  calc_pout_vld_15; // @[NV_NVDLA_CACC_calculator_for_check.scala 107:29:@3561.4 NV_NVDLA_CACC_calculator_for_check.scala 126:26:@3852.4]
  wire [33:0] calc_pout_sum_15; // @[NV_NVDLA_CACC_calculator_for_check.scala 109:29:@3563.4 NV_NVDLA_CACC_calculator_for_check.scala 125:26:@3851.4]
  wire [33:0] calc_pout_15; // @[NV_NVDLA_CACC_calculator_for_check.scala 180:31:@4180.4]
  wire  calc_pout_vld_16; // @[NV_NVDLA_CACC_calculator_for_check.scala 107:29:@3561.4 NV_NVDLA_CACC_calculator_for_check.scala 126:26:@3864.4]
  wire [33:0] calc_pout_sum_16; // @[NV_NVDLA_CACC_calculator_for_check.scala 109:29:@3563.4 NV_NVDLA_CACC_calculator_for_check.scala 125:26:@3863.4]
  wire [33:0] calc_pout_16; // @[NV_NVDLA_CACC_calculator_for_check.scala 180:31:@4186.4]
  wire  calc_pout_vld_17; // @[NV_NVDLA_CACC_calculator_for_check.scala 107:29:@3561.4 NV_NVDLA_CACC_calculator_for_check.scala 126:26:@3876.4]
  wire [33:0] calc_pout_sum_17; // @[NV_NVDLA_CACC_calculator_for_check.scala 109:29:@3563.4 NV_NVDLA_CACC_calculator_for_check.scala 125:26:@3875.4]
  wire [33:0] calc_pout_17; // @[NV_NVDLA_CACC_calculator_for_check.scala 180:31:@4192.4]
  wire  calc_pout_vld_18; // @[NV_NVDLA_CACC_calculator_for_check.scala 107:29:@3561.4 NV_NVDLA_CACC_calculator_for_check.scala 126:26:@3888.4]
  wire [33:0] calc_pout_sum_18; // @[NV_NVDLA_CACC_calculator_for_check.scala 109:29:@3563.4 NV_NVDLA_CACC_calculator_for_check.scala 125:26:@3887.4]
  wire [33:0] calc_pout_18; // @[NV_NVDLA_CACC_calculator_for_check.scala 180:31:@4198.4]
  wire  calc_pout_vld_19; // @[NV_NVDLA_CACC_calculator_for_check.scala 107:29:@3561.4 NV_NVDLA_CACC_calculator_for_check.scala 126:26:@3900.4]
  wire [33:0] calc_pout_sum_19; // @[NV_NVDLA_CACC_calculator_for_check.scala 109:29:@3563.4 NV_NVDLA_CACC_calculator_for_check.scala 125:26:@3899.4]
  wire [33:0] calc_pout_19; // @[NV_NVDLA_CACC_calculator_for_check.scala 180:31:@4204.4]
  wire  calc_pout_vld_20; // @[NV_NVDLA_CACC_calculator_for_check.scala 107:29:@3561.4 NV_NVDLA_CACC_calculator_for_check.scala 126:26:@3912.4]
  wire [33:0] calc_pout_sum_20; // @[NV_NVDLA_CACC_calculator_for_check.scala 109:29:@3563.4 NV_NVDLA_CACC_calculator_for_check.scala 125:26:@3911.4]
  wire [33:0] calc_pout_20; // @[NV_NVDLA_CACC_calculator_for_check.scala 180:31:@4210.4]
  wire  calc_pout_vld_21; // @[NV_NVDLA_CACC_calculator_for_check.scala 107:29:@3561.4 NV_NVDLA_CACC_calculator_for_check.scala 126:26:@3924.4]
  wire [33:0] calc_pout_sum_21; // @[NV_NVDLA_CACC_calculator_for_check.scala 109:29:@3563.4 NV_NVDLA_CACC_calculator_for_check.scala 125:26:@3923.4]
  wire [33:0] calc_pout_21; // @[NV_NVDLA_CACC_calculator_for_check.scala 180:31:@4216.4]
  wire  calc_pout_vld_22; // @[NV_NVDLA_CACC_calculator_for_check.scala 107:29:@3561.4 NV_NVDLA_CACC_calculator_for_check.scala 126:26:@3936.4]
  wire [33:0] calc_pout_sum_22; // @[NV_NVDLA_CACC_calculator_for_check.scala 109:29:@3563.4 NV_NVDLA_CACC_calculator_for_check.scala 125:26:@3935.4]
  wire [33:0] calc_pout_22; // @[NV_NVDLA_CACC_calculator_for_check.scala 180:31:@4222.4]
  wire  calc_pout_vld_23; // @[NV_NVDLA_CACC_calculator_for_check.scala 107:29:@3561.4 NV_NVDLA_CACC_calculator_for_check.scala 126:26:@3948.4]
  wire [33:0] calc_pout_sum_23; // @[NV_NVDLA_CACC_calculator_for_check.scala 109:29:@3563.4 NV_NVDLA_CACC_calculator_for_check.scala 125:26:@3947.4]
  wire [33:0] calc_pout_23; // @[NV_NVDLA_CACC_calculator_for_check.scala 180:31:@4228.4]
  wire  calc_pout_vld_24; // @[NV_NVDLA_CACC_calculator_for_check.scala 107:29:@3561.4 NV_NVDLA_CACC_calculator_for_check.scala 126:26:@3960.4]
  wire [33:0] calc_pout_sum_24; // @[NV_NVDLA_CACC_calculator_for_check.scala 109:29:@3563.4 NV_NVDLA_CACC_calculator_for_check.scala 125:26:@3959.4]
  wire [33:0] calc_pout_24; // @[NV_NVDLA_CACC_calculator_for_check.scala 180:31:@4234.4]
  wire  calc_pout_vld_25; // @[NV_NVDLA_CACC_calculator_for_check.scala 107:29:@3561.4 NV_NVDLA_CACC_calculator_for_check.scala 126:26:@3972.4]
  wire [33:0] calc_pout_sum_25; // @[NV_NVDLA_CACC_calculator_for_check.scala 109:29:@3563.4 NV_NVDLA_CACC_calculator_for_check.scala 125:26:@3971.4]
  wire [33:0] calc_pout_25; // @[NV_NVDLA_CACC_calculator_for_check.scala 180:31:@4240.4]
  wire  calc_pout_vld_26; // @[NV_NVDLA_CACC_calculator_for_check.scala 107:29:@3561.4 NV_NVDLA_CACC_calculator_for_check.scala 126:26:@3984.4]
  wire [33:0] calc_pout_sum_26; // @[NV_NVDLA_CACC_calculator_for_check.scala 109:29:@3563.4 NV_NVDLA_CACC_calculator_for_check.scala 125:26:@3983.4]
  wire [33:0] calc_pout_26; // @[NV_NVDLA_CACC_calculator_for_check.scala 180:31:@4246.4]
  wire  calc_pout_vld_27; // @[NV_NVDLA_CACC_calculator_for_check.scala 107:29:@3561.4 NV_NVDLA_CACC_calculator_for_check.scala 126:26:@3996.4]
  wire [33:0] calc_pout_sum_27; // @[NV_NVDLA_CACC_calculator_for_check.scala 109:29:@3563.4 NV_NVDLA_CACC_calculator_for_check.scala 125:26:@3995.4]
  wire [33:0] calc_pout_27; // @[NV_NVDLA_CACC_calculator_for_check.scala 180:31:@4252.4]
  wire  calc_pout_vld_28; // @[NV_NVDLA_CACC_calculator_for_check.scala 107:29:@3561.4 NV_NVDLA_CACC_calculator_for_check.scala 126:26:@4008.4]
  wire [33:0] calc_pout_sum_28; // @[NV_NVDLA_CACC_calculator_for_check.scala 109:29:@3563.4 NV_NVDLA_CACC_calculator_for_check.scala 125:26:@4007.4]
  wire [33:0] calc_pout_28; // @[NV_NVDLA_CACC_calculator_for_check.scala 180:31:@4258.4]
  wire  calc_pout_vld_29; // @[NV_NVDLA_CACC_calculator_for_check.scala 107:29:@3561.4 NV_NVDLA_CACC_calculator_for_check.scala 126:26:@4020.4]
  wire [33:0] calc_pout_sum_29; // @[NV_NVDLA_CACC_calculator_for_check.scala 109:29:@3563.4 NV_NVDLA_CACC_calculator_for_check.scala 125:26:@4019.4]
  wire [33:0] calc_pout_29; // @[NV_NVDLA_CACC_calculator_for_check.scala 180:31:@4264.4]
  wire  calc_pout_vld_30; // @[NV_NVDLA_CACC_calculator_for_check.scala 107:29:@3561.4 NV_NVDLA_CACC_calculator_for_check.scala 126:26:@4032.4]
  wire [33:0] calc_pout_sum_30; // @[NV_NVDLA_CACC_calculator_for_check.scala 109:29:@3563.4 NV_NVDLA_CACC_calculator_for_check.scala 125:26:@4031.4]
  wire [33:0] calc_pout_30; // @[NV_NVDLA_CACC_calculator_for_check.scala 180:31:@4270.4]
  wire  calc_pout_vld_31; // @[NV_NVDLA_CACC_calculator_for_check.scala 107:29:@3561.4 NV_NVDLA_CACC_calculator_for_check.scala 126:26:@4044.4]
  wire [33:0] calc_pout_sum_31; // @[NV_NVDLA_CACC_calculator_for_check.scala 109:29:@3563.4 NV_NVDLA_CACC_calculator_for_check.scala 125:26:@4043.4]
  wire [33:0] calc_pout_31; // @[NV_NVDLA_CACC_calculator_for_check.scala 180:31:@4276.4]
  wire  calc_fout_vld_0; // @[NV_NVDLA_CACC_calculator_for_check.scala 108:29:@3562.4 NV_NVDLA_CACC_calculator_for_check.scala 124:26:@3670.4]
  wire [31:0] calc_fout_sum_0; // @[NV_NVDLA_CACC_calculator_for_check.scala 110:29:@3564.4 NV_NVDLA_CACC_calculator_for_check.scala 122:26:@3668.4]
  wire [31:0] calc_fout_0; // @[NV_NVDLA_CACC_calculator_for_check.scala 189:31:@4283.4]
  wire  calc_fout_vld_1; // @[NV_NVDLA_CACC_calculator_for_check.scala 108:29:@3562.4 NV_NVDLA_CACC_calculator_for_check.scala 124:26:@3682.4]
  wire [31:0] calc_fout_sum_1; // @[NV_NVDLA_CACC_calculator_for_check.scala 110:29:@3564.4 NV_NVDLA_CACC_calculator_for_check.scala 122:26:@3680.4]
  wire [31:0] calc_fout_1; // @[NV_NVDLA_CACC_calculator_for_check.scala 189:31:@4289.4]
  wire  calc_fout_vld_2; // @[NV_NVDLA_CACC_calculator_for_check.scala 108:29:@3562.4 NV_NVDLA_CACC_calculator_for_check.scala 124:26:@3694.4]
  wire [31:0] calc_fout_sum_2; // @[NV_NVDLA_CACC_calculator_for_check.scala 110:29:@3564.4 NV_NVDLA_CACC_calculator_for_check.scala 122:26:@3692.4]
  wire [31:0] calc_fout_2; // @[NV_NVDLA_CACC_calculator_for_check.scala 189:31:@4295.4]
  wire  calc_fout_vld_3; // @[NV_NVDLA_CACC_calculator_for_check.scala 108:29:@3562.4 NV_NVDLA_CACC_calculator_for_check.scala 124:26:@3706.4]
  wire [31:0] calc_fout_sum_3; // @[NV_NVDLA_CACC_calculator_for_check.scala 110:29:@3564.4 NV_NVDLA_CACC_calculator_for_check.scala 122:26:@3704.4]
  wire [31:0] calc_fout_3; // @[NV_NVDLA_CACC_calculator_for_check.scala 189:31:@4301.4]
  wire  calc_fout_vld_4; // @[NV_NVDLA_CACC_calculator_for_check.scala 108:29:@3562.4 NV_NVDLA_CACC_calculator_for_check.scala 124:26:@3718.4]
  wire [31:0] calc_fout_sum_4; // @[NV_NVDLA_CACC_calculator_for_check.scala 110:29:@3564.4 NV_NVDLA_CACC_calculator_for_check.scala 122:26:@3716.4]
  wire [31:0] calc_fout_4; // @[NV_NVDLA_CACC_calculator_for_check.scala 189:31:@4307.4]
  wire  calc_fout_vld_5; // @[NV_NVDLA_CACC_calculator_for_check.scala 108:29:@3562.4 NV_NVDLA_CACC_calculator_for_check.scala 124:26:@3730.4]
  wire [31:0] calc_fout_sum_5; // @[NV_NVDLA_CACC_calculator_for_check.scala 110:29:@3564.4 NV_NVDLA_CACC_calculator_for_check.scala 122:26:@3728.4]
  wire [31:0] calc_fout_5; // @[NV_NVDLA_CACC_calculator_for_check.scala 189:31:@4313.4]
  wire  calc_fout_vld_6; // @[NV_NVDLA_CACC_calculator_for_check.scala 108:29:@3562.4 NV_NVDLA_CACC_calculator_for_check.scala 124:26:@3742.4]
  wire [31:0] calc_fout_sum_6; // @[NV_NVDLA_CACC_calculator_for_check.scala 110:29:@3564.4 NV_NVDLA_CACC_calculator_for_check.scala 122:26:@3740.4]
  wire [31:0] calc_fout_6; // @[NV_NVDLA_CACC_calculator_for_check.scala 189:31:@4319.4]
  wire  calc_fout_vld_7; // @[NV_NVDLA_CACC_calculator_for_check.scala 108:29:@3562.4 NV_NVDLA_CACC_calculator_for_check.scala 124:26:@3754.4]
  wire [31:0] calc_fout_sum_7; // @[NV_NVDLA_CACC_calculator_for_check.scala 110:29:@3564.4 NV_NVDLA_CACC_calculator_for_check.scala 122:26:@3752.4]
  wire [31:0] calc_fout_7; // @[NV_NVDLA_CACC_calculator_for_check.scala 189:31:@4325.4]
  wire  calc_fout_vld_8; // @[NV_NVDLA_CACC_calculator_for_check.scala 108:29:@3562.4 NV_NVDLA_CACC_calculator_for_check.scala 124:26:@3766.4]
  wire [31:0] calc_fout_sum_8; // @[NV_NVDLA_CACC_calculator_for_check.scala 110:29:@3564.4 NV_NVDLA_CACC_calculator_for_check.scala 122:26:@3764.4]
  wire [31:0] calc_fout_8; // @[NV_NVDLA_CACC_calculator_for_check.scala 189:31:@4331.4]
  wire  calc_fout_vld_9; // @[NV_NVDLA_CACC_calculator_for_check.scala 108:29:@3562.4 NV_NVDLA_CACC_calculator_for_check.scala 124:26:@3778.4]
  wire [31:0] calc_fout_sum_9; // @[NV_NVDLA_CACC_calculator_for_check.scala 110:29:@3564.4 NV_NVDLA_CACC_calculator_for_check.scala 122:26:@3776.4]
  wire [31:0] calc_fout_9; // @[NV_NVDLA_CACC_calculator_for_check.scala 189:31:@4337.4]
  wire  calc_fout_vld_10; // @[NV_NVDLA_CACC_calculator_for_check.scala 108:29:@3562.4 NV_NVDLA_CACC_calculator_for_check.scala 124:26:@3790.4]
  wire [31:0] calc_fout_sum_10; // @[NV_NVDLA_CACC_calculator_for_check.scala 110:29:@3564.4 NV_NVDLA_CACC_calculator_for_check.scala 122:26:@3788.4]
  wire [31:0] calc_fout_10; // @[NV_NVDLA_CACC_calculator_for_check.scala 189:31:@4343.4]
  wire  calc_fout_vld_11; // @[NV_NVDLA_CACC_calculator_for_check.scala 108:29:@3562.4 NV_NVDLA_CACC_calculator_for_check.scala 124:26:@3802.4]
  wire [31:0] calc_fout_sum_11; // @[NV_NVDLA_CACC_calculator_for_check.scala 110:29:@3564.4 NV_NVDLA_CACC_calculator_for_check.scala 122:26:@3800.4]
  wire [31:0] calc_fout_11; // @[NV_NVDLA_CACC_calculator_for_check.scala 189:31:@4349.4]
  wire  calc_fout_vld_12; // @[NV_NVDLA_CACC_calculator_for_check.scala 108:29:@3562.4 NV_NVDLA_CACC_calculator_for_check.scala 124:26:@3814.4]
  wire [31:0] calc_fout_sum_12; // @[NV_NVDLA_CACC_calculator_for_check.scala 110:29:@3564.4 NV_NVDLA_CACC_calculator_for_check.scala 122:26:@3812.4]
  wire [31:0] calc_fout_12; // @[NV_NVDLA_CACC_calculator_for_check.scala 189:31:@4355.4]
  wire  calc_fout_vld_13; // @[NV_NVDLA_CACC_calculator_for_check.scala 108:29:@3562.4 NV_NVDLA_CACC_calculator_for_check.scala 124:26:@3826.4]
  wire [31:0] calc_fout_sum_13; // @[NV_NVDLA_CACC_calculator_for_check.scala 110:29:@3564.4 NV_NVDLA_CACC_calculator_for_check.scala 122:26:@3824.4]
  wire [31:0] calc_fout_13; // @[NV_NVDLA_CACC_calculator_for_check.scala 189:31:@4361.4]
  wire  calc_fout_vld_14; // @[NV_NVDLA_CACC_calculator_for_check.scala 108:29:@3562.4 NV_NVDLA_CACC_calculator_for_check.scala 124:26:@3838.4]
  wire [31:0] calc_fout_sum_14; // @[NV_NVDLA_CACC_calculator_for_check.scala 110:29:@3564.4 NV_NVDLA_CACC_calculator_for_check.scala 122:26:@3836.4]
  wire [31:0] calc_fout_14; // @[NV_NVDLA_CACC_calculator_for_check.scala 189:31:@4367.4]
  wire  calc_fout_vld_15; // @[NV_NVDLA_CACC_calculator_for_check.scala 108:29:@3562.4 NV_NVDLA_CACC_calculator_for_check.scala 124:26:@3850.4]
  wire [31:0] calc_fout_sum_15; // @[NV_NVDLA_CACC_calculator_for_check.scala 110:29:@3564.4 NV_NVDLA_CACC_calculator_for_check.scala 122:26:@3848.4]
  wire [31:0] calc_fout_15; // @[NV_NVDLA_CACC_calculator_for_check.scala 189:31:@4373.4]
  wire  calc_fout_vld_16; // @[NV_NVDLA_CACC_calculator_for_check.scala 108:29:@3562.4 NV_NVDLA_CACC_calculator_for_check.scala 124:26:@3862.4]
  wire [31:0] calc_fout_sum_16; // @[NV_NVDLA_CACC_calculator_for_check.scala 110:29:@3564.4 NV_NVDLA_CACC_calculator_for_check.scala 122:26:@3860.4]
  wire [31:0] calc_fout_16; // @[NV_NVDLA_CACC_calculator_for_check.scala 189:31:@4379.4]
  wire  calc_fout_vld_17; // @[NV_NVDLA_CACC_calculator_for_check.scala 108:29:@3562.4 NV_NVDLA_CACC_calculator_for_check.scala 124:26:@3874.4]
  wire [31:0] calc_fout_sum_17; // @[NV_NVDLA_CACC_calculator_for_check.scala 110:29:@3564.4 NV_NVDLA_CACC_calculator_for_check.scala 122:26:@3872.4]
  wire [31:0] calc_fout_17; // @[NV_NVDLA_CACC_calculator_for_check.scala 189:31:@4385.4]
  wire  calc_fout_vld_18; // @[NV_NVDLA_CACC_calculator_for_check.scala 108:29:@3562.4 NV_NVDLA_CACC_calculator_for_check.scala 124:26:@3886.4]
  wire [31:0] calc_fout_sum_18; // @[NV_NVDLA_CACC_calculator_for_check.scala 110:29:@3564.4 NV_NVDLA_CACC_calculator_for_check.scala 122:26:@3884.4]
  wire [31:0] calc_fout_18; // @[NV_NVDLA_CACC_calculator_for_check.scala 189:31:@4391.4]
  wire  calc_fout_vld_19; // @[NV_NVDLA_CACC_calculator_for_check.scala 108:29:@3562.4 NV_NVDLA_CACC_calculator_for_check.scala 124:26:@3898.4]
  wire [31:0] calc_fout_sum_19; // @[NV_NVDLA_CACC_calculator_for_check.scala 110:29:@3564.4 NV_NVDLA_CACC_calculator_for_check.scala 122:26:@3896.4]
  wire [31:0] calc_fout_19; // @[NV_NVDLA_CACC_calculator_for_check.scala 189:31:@4397.4]
  wire  calc_fout_vld_20; // @[NV_NVDLA_CACC_calculator_for_check.scala 108:29:@3562.4 NV_NVDLA_CACC_calculator_for_check.scala 124:26:@3910.4]
  wire [31:0] calc_fout_sum_20; // @[NV_NVDLA_CACC_calculator_for_check.scala 110:29:@3564.4 NV_NVDLA_CACC_calculator_for_check.scala 122:26:@3908.4]
  wire [31:0] calc_fout_20; // @[NV_NVDLA_CACC_calculator_for_check.scala 189:31:@4403.4]
  wire  calc_fout_vld_21; // @[NV_NVDLA_CACC_calculator_for_check.scala 108:29:@3562.4 NV_NVDLA_CACC_calculator_for_check.scala 124:26:@3922.4]
  wire [31:0] calc_fout_sum_21; // @[NV_NVDLA_CACC_calculator_for_check.scala 110:29:@3564.4 NV_NVDLA_CACC_calculator_for_check.scala 122:26:@3920.4]
  wire [31:0] calc_fout_21; // @[NV_NVDLA_CACC_calculator_for_check.scala 189:31:@4409.4]
  wire  calc_fout_vld_22; // @[NV_NVDLA_CACC_calculator_for_check.scala 108:29:@3562.4 NV_NVDLA_CACC_calculator_for_check.scala 124:26:@3934.4]
  wire [31:0] calc_fout_sum_22; // @[NV_NVDLA_CACC_calculator_for_check.scala 110:29:@3564.4 NV_NVDLA_CACC_calculator_for_check.scala 122:26:@3932.4]
  wire [31:0] calc_fout_22; // @[NV_NVDLA_CACC_calculator_for_check.scala 189:31:@4415.4]
  wire  calc_fout_vld_23; // @[NV_NVDLA_CACC_calculator_for_check.scala 108:29:@3562.4 NV_NVDLA_CACC_calculator_for_check.scala 124:26:@3946.4]
  wire [31:0] calc_fout_sum_23; // @[NV_NVDLA_CACC_calculator_for_check.scala 110:29:@3564.4 NV_NVDLA_CACC_calculator_for_check.scala 122:26:@3944.4]
  wire [31:0] calc_fout_23; // @[NV_NVDLA_CACC_calculator_for_check.scala 189:31:@4421.4]
  wire  calc_fout_vld_24; // @[NV_NVDLA_CACC_calculator_for_check.scala 108:29:@3562.4 NV_NVDLA_CACC_calculator_for_check.scala 124:26:@3958.4]
  wire [31:0] calc_fout_sum_24; // @[NV_NVDLA_CACC_calculator_for_check.scala 110:29:@3564.4 NV_NVDLA_CACC_calculator_for_check.scala 122:26:@3956.4]
  wire [31:0] calc_fout_24; // @[NV_NVDLA_CACC_calculator_for_check.scala 189:31:@4427.4]
  wire  calc_fout_vld_25; // @[NV_NVDLA_CACC_calculator_for_check.scala 108:29:@3562.4 NV_NVDLA_CACC_calculator_for_check.scala 124:26:@3970.4]
  wire [31:0] calc_fout_sum_25; // @[NV_NVDLA_CACC_calculator_for_check.scala 110:29:@3564.4 NV_NVDLA_CACC_calculator_for_check.scala 122:26:@3968.4]
  wire [31:0] calc_fout_25; // @[NV_NVDLA_CACC_calculator_for_check.scala 189:31:@4433.4]
  wire  calc_fout_vld_26; // @[NV_NVDLA_CACC_calculator_for_check.scala 108:29:@3562.4 NV_NVDLA_CACC_calculator_for_check.scala 124:26:@3982.4]
  wire [31:0] calc_fout_sum_26; // @[NV_NVDLA_CACC_calculator_for_check.scala 110:29:@3564.4 NV_NVDLA_CACC_calculator_for_check.scala 122:26:@3980.4]
  wire [31:0] calc_fout_26; // @[NV_NVDLA_CACC_calculator_for_check.scala 189:31:@4439.4]
  wire  calc_fout_vld_27; // @[NV_NVDLA_CACC_calculator_for_check.scala 108:29:@3562.4 NV_NVDLA_CACC_calculator_for_check.scala 124:26:@3994.4]
  wire [31:0] calc_fout_sum_27; // @[NV_NVDLA_CACC_calculator_for_check.scala 110:29:@3564.4 NV_NVDLA_CACC_calculator_for_check.scala 122:26:@3992.4]
  wire [31:0] calc_fout_27; // @[NV_NVDLA_CACC_calculator_for_check.scala 189:31:@4445.4]
  wire  calc_fout_vld_28; // @[NV_NVDLA_CACC_calculator_for_check.scala 108:29:@3562.4 NV_NVDLA_CACC_calculator_for_check.scala 124:26:@4006.4]
  wire [31:0] calc_fout_sum_28; // @[NV_NVDLA_CACC_calculator_for_check.scala 110:29:@3564.4 NV_NVDLA_CACC_calculator_for_check.scala 122:26:@4004.4]
  wire [31:0] calc_fout_28; // @[NV_NVDLA_CACC_calculator_for_check.scala 189:31:@4451.4]
  wire  calc_fout_vld_29; // @[NV_NVDLA_CACC_calculator_for_check.scala 108:29:@3562.4 NV_NVDLA_CACC_calculator_for_check.scala 124:26:@4018.4]
  wire [31:0] calc_fout_sum_29; // @[NV_NVDLA_CACC_calculator_for_check.scala 110:29:@3564.4 NV_NVDLA_CACC_calculator_for_check.scala 122:26:@4016.4]
  wire [31:0] calc_fout_29; // @[NV_NVDLA_CACC_calculator_for_check.scala 189:31:@4457.4]
  wire  calc_fout_vld_30; // @[NV_NVDLA_CACC_calculator_for_check.scala 108:29:@3562.4 NV_NVDLA_CACC_calculator_for_check.scala 124:26:@4030.4]
  wire [31:0] calc_fout_sum_30; // @[NV_NVDLA_CACC_calculator_for_check.scala 110:29:@3564.4 NV_NVDLA_CACC_calculator_for_check.scala 122:26:@4028.4]
  wire [31:0] calc_fout_30; // @[NV_NVDLA_CACC_calculator_for_check.scala 189:31:@4463.4]
  wire  calc_fout_vld_31; // @[NV_NVDLA_CACC_calculator_for_check.scala 108:29:@3562.4 NV_NVDLA_CACC_calculator_for_check.scala 124:26:@4042.4]
  wire [31:0] calc_fout_sum_31; // @[NV_NVDLA_CACC_calculator_for_check.scala 110:29:@3564.4 NV_NVDLA_CACC_calculator_for_check.scala 122:26:@4040.4]
  wire [31:0] calc_fout_31; // @[NV_NVDLA_CACC_calculator_for_check.scala 189:31:@4469.4]
  reg  _T_793; // @[NV_NVDLA_CACC_calculator_for_check.scala 199:37:@4475.4]
  reg [31:0] _RAND_15;
  reg [5:0] _T_795; // @[Reg.scala 11:16:@4478.4]
  reg [31:0] _RAND_16;
  wire [271:0] _T_802; // @[NV_NVDLA_CACC_calculator_for_check.scala 201:44:@4489.4]
  wire [543:0] _T_810; // @[NV_NVDLA_CACC_calculator_for_check.scala 201:44:@4497.4]
  wire [271:0] _T_817; // @[NV_NVDLA_CACC_calculator_for_check.scala 201:44:@4504.4]
  wire [1087:0] _T_826; // @[NV_NVDLA_CACC_calculator_for_check.scala 201:44:@4513.4]
  reg [1087:0] _T_828; // @[Reg.scala 11:16:@4514.4]
  reg [1087:0] _RAND_17;
  wire [255:0] _T_835; // @[NV_NVDLA_CACC_calculator_for_check.scala 204:40:@4525.4]
  wire [511:0] _T_843; // @[NV_NVDLA_CACC_calculator_for_check.scala 204:40:@4533.4]
  wire [255:0] _T_850; // @[NV_NVDLA_CACC_calculator_for_check.scala 204:40:@4540.4]
  wire [1023:0] _T_859; // @[NV_NVDLA_CACC_calculator_for_check.scala 204:40:@4549.4]
  reg [1023:0] _T_861; // @[Reg.scala 11:16:@4550.4]
  reg [1023:0] _RAND_18;
  reg  _T_864; // @[NV_NVDLA_CACC_calculator_for_check.scala 205:28:@4555.4]
  reg [31:0] _RAND_19;
  reg  _T_867; // @[NV_NVDLA_CACC_calculator_for_check.scala 206:27:@4558.4]
  reg [31:0] _RAND_20;
  reg  dlv_stripe_end; // @[Reg.scala 19:20:@4561.4]
  reg [31:0] _RAND_21;
  wire  _GEN_77; // @[Reg.scala 20:19:@4562.4]
  reg  dlv_layer_end; // @[Reg.scala 19:20:@4565.4]
  reg [31:0] _RAND_22;
  wire  _GEN_78; // @[Reg.scala 20:19:@4566.4]
  reg  dlv_sat_vld_d1; // @[NV_NVDLA_CACC_calculator_for_check.scala 212:33:@4571.4]
  reg [31:0] _RAND_23;
  reg  dlv_sat_end_d1; // @[NV_NVDLA_CACC_calculator_for_check.scala 213:33:@4572.4]
  reg [31:0] _RAND_24;
  reg  dlv_sat_bit_d1_0; // @[NV_NVDLA_CACC_calculator_for_check.scala 214:33:@4606.4]
  reg [31:0] _RAND_25;
  reg  dlv_sat_bit_d1_1; // @[NV_NVDLA_CACC_calculator_for_check.scala 214:33:@4606.4]
  reg [31:0] _RAND_26;
  reg  dlv_sat_bit_d1_2; // @[NV_NVDLA_CACC_calculator_for_check.scala 214:33:@4606.4]
  reg [31:0] _RAND_27;
  reg  dlv_sat_bit_d1_3; // @[NV_NVDLA_CACC_calculator_for_check.scala 214:33:@4606.4]
  reg [31:0] _RAND_28;
  reg  dlv_sat_bit_d1_4; // @[NV_NVDLA_CACC_calculator_for_check.scala 214:33:@4606.4]
  reg [31:0] _RAND_29;
  reg  dlv_sat_bit_d1_5; // @[NV_NVDLA_CACC_calculator_for_check.scala 214:33:@4606.4]
  reg [31:0] _RAND_30;
  reg  dlv_sat_bit_d1_6; // @[NV_NVDLA_CACC_calculator_for_check.scala 214:33:@4606.4]
  reg [31:0] _RAND_31;
  reg  dlv_sat_bit_d1_7; // @[NV_NVDLA_CACC_calculator_for_check.scala 214:33:@4606.4]
  reg [31:0] _RAND_32;
  reg  dlv_sat_bit_d1_8; // @[NV_NVDLA_CACC_calculator_for_check.scala 214:33:@4606.4]
  reg [31:0] _RAND_33;
  reg  dlv_sat_bit_d1_9; // @[NV_NVDLA_CACC_calculator_for_check.scala 214:33:@4606.4]
  reg [31:0] _RAND_34;
  reg  dlv_sat_bit_d1_10; // @[NV_NVDLA_CACC_calculator_for_check.scala 214:33:@4606.4]
  reg [31:0] _RAND_35;
  reg  dlv_sat_bit_d1_11; // @[NV_NVDLA_CACC_calculator_for_check.scala 214:33:@4606.4]
  reg [31:0] _RAND_36;
  reg  dlv_sat_bit_d1_12; // @[NV_NVDLA_CACC_calculator_for_check.scala 214:33:@4606.4]
  reg [31:0] _RAND_37;
  reg  dlv_sat_bit_d1_13; // @[NV_NVDLA_CACC_calculator_for_check.scala 214:33:@4606.4]
  reg [31:0] _RAND_38;
  reg  dlv_sat_bit_d1_14; // @[NV_NVDLA_CACC_calculator_for_check.scala 214:33:@4606.4]
  reg [31:0] _RAND_39;
  reg  dlv_sat_bit_d1_15; // @[NV_NVDLA_CACC_calculator_for_check.scala 214:33:@4606.4]
  reg [31:0] _RAND_40;
  reg  dlv_sat_bit_d1_16; // @[NV_NVDLA_CACC_calculator_for_check.scala 214:33:@4606.4]
  reg [31:0] _RAND_41;
  reg  dlv_sat_bit_d1_17; // @[NV_NVDLA_CACC_calculator_for_check.scala 214:33:@4606.4]
  reg [31:0] _RAND_42;
  reg  dlv_sat_bit_d1_18; // @[NV_NVDLA_CACC_calculator_for_check.scala 214:33:@4606.4]
  reg [31:0] _RAND_43;
  reg  dlv_sat_bit_d1_19; // @[NV_NVDLA_CACC_calculator_for_check.scala 214:33:@4606.4]
  reg [31:0] _RAND_44;
  reg  dlv_sat_bit_d1_20; // @[NV_NVDLA_CACC_calculator_for_check.scala 214:33:@4606.4]
  reg [31:0] _RAND_45;
  reg  dlv_sat_bit_d1_21; // @[NV_NVDLA_CACC_calculator_for_check.scala 214:33:@4606.4]
  reg [31:0] _RAND_46;
  reg  dlv_sat_bit_d1_22; // @[NV_NVDLA_CACC_calculator_for_check.scala 214:33:@4606.4]
  reg [31:0] _RAND_47;
  reg  dlv_sat_bit_d1_23; // @[NV_NVDLA_CACC_calculator_for_check.scala 214:33:@4606.4]
  reg [31:0] _RAND_48;
  reg  dlv_sat_bit_d1_24; // @[NV_NVDLA_CACC_calculator_for_check.scala 214:33:@4606.4]
  reg [31:0] _RAND_49;
  reg  dlv_sat_bit_d1_25; // @[NV_NVDLA_CACC_calculator_for_check.scala 214:33:@4606.4]
  reg [31:0] _RAND_50;
  reg  dlv_sat_bit_d1_26; // @[NV_NVDLA_CACC_calculator_for_check.scala 214:33:@4606.4]
  reg [31:0] _RAND_51;
  reg  dlv_sat_bit_d1_27; // @[NV_NVDLA_CACC_calculator_for_check.scala 214:33:@4606.4]
  reg [31:0] _RAND_52;
  reg  dlv_sat_bit_d1_28; // @[NV_NVDLA_CACC_calculator_for_check.scala 214:33:@4606.4]
  reg [31:0] _RAND_53;
  reg  dlv_sat_bit_d1_29; // @[NV_NVDLA_CACC_calculator_for_check.scala 214:33:@4606.4]
  reg [31:0] _RAND_54;
  reg  dlv_sat_bit_d1_30; // @[NV_NVDLA_CACC_calculator_for_check.scala 214:33:@4606.4]
  reg [31:0] _RAND_55;
  reg  dlv_sat_bit_d1_31; // @[NV_NVDLA_CACC_calculator_for_check.scala 214:33:@4606.4]
  reg [31:0] _RAND_56;
  reg  dlv_sat_clr_d1; // @[NV_NVDLA_CACC_calculator_for_check.scala 215:33:@4607.4]
  reg [31:0] _RAND_57;
  wire  dlv_sat_end; // @[NV_NVDLA_CACC_calculator_for_check.scala 218:42:@4608.4]
  wire  _T_1117; // @[NV_NVDLA_CACC_calculator_for_check.scala 219:44:@4609.4]
  wire  _T_1118; // @[NV_NVDLA_CACC_calculator_for_check.scala 219:42:@4610.4]
  wire  dlv_sat_clr; // @[NV_NVDLA_CACC_calculator_for_check.scala 219:57:@4611.4]
  wire  _GEN_79; // @[NV_NVDLA_CACC_calculator_for_check.scala 222:29:@4613.4]
  wire  calc_fout_sat_0; // @[NV_NVDLA_CACC_calculator_for_check.scala 106:29:@3560.4 NV_NVDLA_CACC_calculator_for_check.scala 123:26:@3669.4]
  wire  _GEN_80; // @[NV_NVDLA_CACC_calculator_for_check.scala 222:29:@4613.4]
  wire  calc_fout_sat_1; // @[NV_NVDLA_CACC_calculator_for_check.scala 106:29:@3560.4 NV_NVDLA_CACC_calculator_for_check.scala 123:26:@3681.4]
  wire  _GEN_81; // @[NV_NVDLA_CACC_calculator_for_check.scala 222:29:@4613.4]
  wire  calc_fout_sat_2; // @[NV_NVDLA_CACC_calculator_for_check.scala 106:29:@3560.4 NV_NVDLA_CACC_calculator_for_check.scala 123:26:@3693.4]
  wire  _GEN_82; // @[NV_NVDLA_CACC_calculator_for_check.scala 222:29:@4613.4]
  wire  calc_fout_sat_3; // @[NV_NVDLA_CACC_calculator_for_check.scala 106:29:@3560.4 NV_NVDLA_CACC_calculator_for_check.scala 123:26:@3705.4]
  wire  _GEN_83; // @[NV_NVDLA_CACC_calculator_for_check.scala 222:29:@4613.4]
  wire  calc_fout_sat_4; // @[NV_NVDLA_CACC_calculator_for_check.scala 106:29:@3560.4 NV_NVDLA_CACC_calculator_for_check.scala 123:26:@3717.4]
  wire  _GEN_84; // @[NV_NVDLA_CACC_calculator_for_check.scala 222:29:@4613.4]
  wire  calc_fout_sat_5; // @[NV_NVDLA_CACC_calculator_for_check.scala 106:29:@3560.4 NV_NVDLA_CACC_calculator_for_check.scala 123:26:@3729.4]
  wire  _GEN_85; // @[NV_NVDLA_CACC_calculator_for_check.scala 222:29:@4613.4]
  wire  calc_fout_sat_6; // @[NV_NVDLA_CACC_calculator_for_check.scala 106:29:@3560.4 NV_NVDLA_CACC_calculator_for_check.scala 123:26:@3741.4]
  wire  _GEN_86; // @[NV_NVDLA_CACC_calculator_for_check.scala 222:29:@4613.4]
  wire  calc_fout_sat_7; // @[NV_NVDLA_CACC_calculator_for_check.scala 106:29:@3560.4 NV_NVDLA_CACC_calculator_for_check.scala 123:26:@3753.4]
  wire  _GEN_87; // @[NV_NVDLA_CACC_calculator_for_check.scala 222:29:@4613.4]
  wire  calc_fout_sat_8; // @[NV_NVDLA_CACC_calculator_for_check.scala 106:29:@3560.4 NV_NVDLA_CACC_calculator_for_check.scala 123:26:@3765.4]
  wire  _GEN_88; // @[NV_NVDLA_CACC_calculator_for_check.scala 222:29:@4613.4]
  wire  calc_fout_sat_9; // @[NV_NVDLA_CACC_calculator_for_check.scala 106:29:@3560.4 NV_NVDLA_CACC_calculator_for_check.scala 123:26:@3777.4]
  wire  _GEN_89; // @[NV_NVDLA_CACC_calculator_for_check.scala 222:29:@4613.4]
  wire  calc_fout_sat_10; // @[NV_NVDLA_CACC_calculator_for_check.scala 106:29:@3560.4 NV_NVDLA_CACC_calculator_for_check.scala 123:26:@3789.4]
  wire  _GEN_90; // @[NV_NVDLA_CACC_calculator_for_check.scala 222:29:@4613.4]
  wire  calc_fout_sat_11; // @[NV_NVDLA_CACC_calculator_for_check.scala 106:29:@3560.4 NV_NVDLA_CACC_calculator_for_check.scala 123:26:@3801.4]
  wire  _GEN_91; // @[NV_NVDLA_CACC_calculator_for_check.scala 222:29:@4613.4]
  wire  calc_fout_sat_12; // @[NV_NVDLA_CACC_calculator_for_check.scala 106:29:@3560.4 NV_NVDLA_CACC_calculator_for_check.scala 123:26:@3813.4]
  wire  _GEN_92; // @[NV_NVDLA_CACC_calculator_for_check.scala 222:29:@4613.4]
  wire  calc_fout_sat_13; // @[NV_NVDLA_CACC_calculator_for_check.scala 106:29:@3560.4 NV_NVDLA_CACC_calculator_for_check.scala 123:26:@3825.4]
  wire  _GEN_93; // @[NV_NVDLA_CACC_calculator_for_check.scala 222:29:@4613.4]
  wire  calc_fout_sat_14; // @[NV_NVDLA_CACC_calculator_for_check.scala 106:29:@3560.4 NV_NVDLA_CACC_calculator_for_check.scala 123:26:@3837.4]
  wire  _GEN_94; // @[NV_NVDLA_CACC_calculator_for_check.scala 222:29:@4613.4]
  wire  calc_fout_sat_15; // @[NV_NVDLA_CACC_calculator_for_check.scala 106:29:@3560.4 NV_NVDLA_CACC_calculator_for_check.scala 123:26:@3849.4]
  wire  _GEN_95; // @[NV_NVDLA_CACC_calculator_for_check.scala 222:29:@4613.4]
  wire  calc_fout_sat_16; // @[NV_NVDLA_CACC_calculator_for_check.scala 106:29:@3560.4 NV_NVDLA_CACC_calculator_for_check.scala 123:26:@3861.4]
  wire  _GEN_96; // @[NV_NVDLA_CACC_calculator_for_check.scala 222:29:@4613.4]
  wire  calc_fout_sat_17; // @[NV_NVDLA_CACC_calculator_for_check.scala 106:29:@3560.4 NV_NVDLA_CACC_calculator_for_check.scala 123:26:@3873.4]
  wire  _GEN_97; // @[NV_NVDLA_CACC_calculator_for_check.scala 222:29:@4613.4]
  wire  calc_fout_sat_18; // @[NV_NVDLA_CACC_calculator_for_check.scala 106:29:@3560.4 NV_NVDLA_CACC_calculator_for_check.scala 123:26:@3885.4]
  wire  _GEN_98; // @[NV_NVDLA_CACC_calculator_for_check.scala 222:29:@4613.4]
  wire  calc_fout_sat_19; // @[NV_NVDLA_CACC_calculator_for_check.scala 106:29:@3560.4 NV_NVDLA_CACC_calculator_for_check.scala 123:26:@3897.4]
  wire  _GEN_99; // @[NV_NVDLA_CACC_calculator_for_check.scala 222:29:@4613.4]
  wire  calc_fout_sat_20; // @[NV_NVDLA_CACC_calculator_for_check.scala 106:29:@3560.4 NV_NVDLA_CACC_calculator_for_check.scala 123:26:@3909.4]
  wire  _GEN_100; // @[NV_NVDLA_CACC_calculator_for_check.scala 222:29:@4613.4]
  wire  calc_fout_sat_21; // @[NV_NVDLA_CACC_calculator_for_check.scala 106:29:@3560.4 NV_NVDLA_CACC_calculator_for_check.scala 123:26:@3921.4]
  wire  _GEN_101; // @[NV_NVDLA_CACC_calculator_for_check.scala 222:29:@4613.4]
  wire  calc_fout_sat_22; // @[NV_NVDLA_CACC_calculator_for_check.scala 106:29:@3560.4 NV_NVDLA_CACC_calculator_for_check.scala 123:26:@3933.4]
  wire  _GEN_102; // @[NV_NVDLA_CACC_calculator_for_check.scala 222:29:@4613.4]
  wire  calc_fout_sat_23; // @[NV_NVDLA_CACC_calculator_for_check.scala 106:29:@3560.4 NV_NVDLA_CACC_calculator_for_check.scala 123:26:@3945.4]
  wire  _GEN_103; // @[NV_NVDLA_CACC_calculator_for_check.scala 222:29:@4613.4]
  wire  calc_fout_sat_24; // @[NV_NVDLA_CACC_calculator_for_check.scala 106:29:@3560.4 NV_NVDLA_CACC_calculator_for_check.scala 123:26:@3957.4]
  wire  _GEN_104; // @[NV_NVDLA_CACC_calculator_for_check.scala 222:29:@4613.4]
  wire  calc_fout_sat_25; // @[NV_NVDLA_CACC_calculator_for_check.scala 106:29:@3560.4 NV_NVDLA_CACC_calculator_for_check.scala 123:26:@3969.4]
  wire  _GEN_105; // @[NV_NVDLA_CACC_calculator_for_check.scala 222:29:@4613.4]
  wire  calc_fout_sat_26; // @[NV_NVDLA_CACC_calculator_for_check.scala 106:29:@3560.4 NV_NVDLA_CACC_calculator_for_check.scala 123:26:@3981.4]
  wire  _GEN_106; // @[NV_NVDLA_CACC_calculator_for_check.scala 222:29:@4613.4]
  wire  calc_fout_sat_27; // @[NV_NVDLA_CACC_calculator_for_check.scala 106:29:@3560.4 NV_NVDLA_CACC_calculator_for_check.scala 123:26:@3993.4]
  wire  _GEN_107; // @[NV_NVDLA_CACC_calculator_for_check.scala 222:29:@4613.4]
  wire  calc_fout_sat_28; // @[NV_NVDLA_CACC_calculator_for_check.scala 106:29:@3560.4 NV_NVDLA_CACC_calculator_for_check.scala 123:26:@4005.4]
  wire  _GEN_108; // @[NV_NVDLA_CACC_calculator_for_check.scala 222:29:@4613.4]
  wire  calc_fout_sat_29; // @[NV_NVDLA_CACC_calculator_for_check.scala 106:29:@3560.4 NV_NVDLA_CACC_calculator_for_check.scala 123:26:@4017.4]
  wire  _GEN_109; // @[NV_NVDLA_CACC_calculator_for_check.scala 222:29:@4613.4]
  wire  calc_fout_sat_30; // @[NV_NVDLA_CACC_calculator_for_check.scala 106:29:@3560.4 NV_NVDLA_CACC_calculator_for_check.scala 123:26:@4029.4]
  wire  _GEN_110; // @[NV_NVDLA_CACC_calculator_for_check.scala 222:29:@4613.4]
  wire  calc_fout_sat_31; // @[NV_NVDLA_CACC_calculator_for_check.scala 106:29:@3560.4 NV_NVDLA_CACC_calculator_for_check.scala 123:26:@4041.4]
  wire  _GEN_111; // @[NV_NVDLA_CACC_calculator_for_check.scala 222:29:@4613.4]
  wire [1:0] _T_1157; // @[NV_NVDLA_CACC_calculator_for_check.scala 227:98:@4682.4]
  wire [1:0] _GEN_113; // @[NV_NVDLA_CACC_calculator_for_check.scala 227:98:@4683.4]
  wire [2:0] _T_1158; // @[NV_NVDLA_CACC_calculator_for_check.scala 227:98:@4683.4]
  wire [2:0] _GEN_114; // @[NV_NVDLA_CACC_calculator_for_check.scala 227:98:@4684.4]
  wire [3:0] _T_1159; // @[NV_NVDLA_CACC_calculator_for_check.scala 227:98:@4684.4]
  wire [3:0] _GEN_115; // @[NV_NVDLA_CACC_calculator_for_check.scala 227:98:@4685.4]
  wire [4:0] _T_1160; // @[NV_NVDLA_CACC_calculator_for_check.scala 227:98:@4685.4]
  wire [4:0] _GEN_116; // @[NV_NVDLA_CACC_calculator_for_check.scala 227:98:@4686.4]
  wire [5:0] _T_1161; // @[NV_NVDLA_CACC_calculator_for_check.scala 227:98:@4686.4]
  wire [5:0] _GEN_117; // @[NV_NVDLA_CACC_calculator_for_check.scala 227:98:@4687.4]
  wire [6:0] _T_1162; // @[NV_NVDLA_CACC_calculator_for_check.scala 227:98:@4687.4]
  wire [6:0] _GEN_118; // @[NV_NVDLA_CACC_calculator_for_check.scala 227:98:@4688.4]
  wire [7:0] _T_1163; // @[NV_NVDLA_CACC_calculator_for_check.scala 227:98:@4688.4]
  wire [7:0] _GEN_119; // @[NV_NVDLA_CACC_calculator_for_check.scala 227:98:@4689.4]
  wire [8:0] _T_1164; // @[NV_NVDLA_CACC_calculator_for_check.scala 227:98:@4689.4]
  wire [8:0] _GEN_120; // @[NV_NVDLA_CACC_calculator_for_check.scala 227:98:@4690.4]
  wire [9:0] _T_1165; // @[NV_NVDLA_CACC_calculator_for_check.scala 227:98:@4690.4]
  wire [9:0] _GEN_121; // @[NV_NVDLA_CACC_calculator_for_check.scala 227:98:@4691.4]
  wire [10:0] _T_1166; // @[NV_NVDLA_CACC_calculator_for_check.scala 227:98:@4691.4]
  wire [10:0] _GEN_122; // @[NV_NVDLA_CACC_calculator_for_check.scala 227:98:@4692.4]
  wire [11:0] _T_1167; // @[NV_NVDLA_CACC_calculator_for_check.scala 227:98:@4692.4]
  wire [11:0] _GEN_123; // @[NV_NVDLA_CACC_calculator_for_check.scala 227:98:@4693.4]
  wire [12:0] _T_1168; // @[NV_NVDLA_CACC_calculator_for_check.scala 227:98:@4693.4]
  wire [12:0] _GEN_124; // @[NV_NVDLA_CACC_calculator_for_check.scala 227:98:@4694.4]
  wire [13:0] _T_1169; // @[NV_NVDLA_CACC_calculator_for_check.scala 227:98:@4694.4]
  wire [13:0] _GEN_125; // @[NV_NVDLA_CACC_calculator_for_check.scala 227:98:@4695.4]
  wire [14:0] _T_1170; // @[NV_NVDLA_CACC_calculator_for_check.scala 227:98:@4695.4]
  wire [14:0] _GEN_126; // @[NV_NVDLA_CACC_calculator_for_check.scala 227:98:@4696.4]
  wire [15:0] _T_1171; // @[NV_NVDLA_CACC_calculator_for_check.scala 227:98:@4696.4]
  wire [15:0] _GEN_127; // @[NV_NVDLA_CACC_calculator_for_check.scala 227:98:@4697.4]
  wire [16:0] _T_1172; // @[NV_NVDLA_CACC_calculator_for_check.scala 227:98:@4697.4]
  wire [16:0] _GEN_128; // @[NV_NVDLA_CACC_calculator_for_check.scala 227:98:@4698.4]
  wire [17:0] _T_1173; // @[NV_NVDLA_CACC_calculator_for_check.scala 227:98:@4698.4]
  wire [17:0] _GEN_129; // @[NV_NVDLA_CACC_calculator_for_check.scala 227:98:@4699.4]
  wire [18:0] _T_1174; // @[NV_NVDLA_CACC_calculator_for_check.scala 227:98:@4699.4]
  wire [18:0] _GEN_130; // @[NV_NVDLA_CACC_calculator_for_check.scala 227:98:@4700.4]
  wire [19:0] _T_1175; // @[NV_NVDLA_CACC_calculator_for_check.scala 227:98:@4700.4]
  wire [19:0] _GEN_131; // @[NV_NVDLA_CACC_calculator_for_check.scala 227:98:@4701.4]
  wire [20:0] _T_1176; // @[NV_NVDLA_CACC_calculator_for_check.scala 227:98:@4701.4]
  wire [20:0] _GEN_132; // @[NV_NVDLA_CACC_calculator_for_check.scala 227:98:@4702.4]
  wire [21:0] _T_1177; // @[NV_NVDLA_CACC_calculator_for_check.scala 227:98:@4702.4]
  wire [21:0] _GEN_133; // @[NV_NVDLA_CACC_calculator_for_check.scala 227:98:@4703.4]
  wire [22:0] _T_1178; // @[NV_NVDLA_CACC_calculator_for_check.scala 227:98:@4703.4]
  wire [22:0] _GEN_134; // @[NV_NVDLA_CACC_calculator_for_check.scala 227:98:@4704.4]
  wire [23:0] _T_1179; // @[NV_NVDLA_CACC_calculator_for_check.scala 227:98:@4704.4]
  wire [23:0] _GEN_135; // @[NV_NVDLA_CACC_calculator_for_check.scala 227:98:@4705.4]
  wire [24:0] _T_1180; // @[NV_NVDLA_CACC_calculator_for_check.scala 227:98:@4705.4]
  wire [24:0] _GEN_136; // @[NV_NVDLA_CACC_calculator_for_check.scala 227:98:@4706.4]
  wire [25:0] _T_1181; // @[NV_NVDLA_CACC_calculator_for_check.scala 227:98:@4706.4]
  wire [25:0] _GEN_137; // @[NV_NVDLA_CACC_calculator_for_check.scala 227:98:@4707.4]
  wire [26:0] _T_1182; // @[NV_NVDLA_CACC_calculator_for_check.scala 227:98:@4707.4]
  wire [26:0] _GEN_138; // @[NV_NVDLA_CACC_calculator_for_check.scala 227:98:@4708.4]
  wire [27:0] _T_1183; // @[NV_NVDLA_CACC_calculator_for_check.scala 227:98:@4708.4]
  wire [27:0] _GEN_139; // @[NV_NVDLA_CACC_calculator_for_check.scala 227:98:@4709.4]
  wire [28:0] _T_1184; // @[NV_NVDLA_CACC_calculator_for_check.scala 227:98:@4709.4]
  wire [28:0] _GEN_140; // @[NV_NVDLA_CACC_calculator_for_check.scala 227:98:@4710.4]
  wire [29:0] _T_1185; // @[NV_NVDLA_CACC_calculator_for_check.scala 227:98:@4710.4]
  wire [29:0] _GEN_141; // @[NV_NVDLA_CACC_calculator_for_check.scala 227:98:@4711.4]
  wire [30:0] _T_1186; // @[NV_NVDLA_CACC_calculator_for_check.scala 227:98:@4711.4]
  wire [30:0] _GEN_142; // @[NV_NVDLA_CACC_calculator_for_check.scala 227:98:@4712.4]
  wire [31:0] sat_sum; // @[NV_NVDLA_CACC_calculator_for_check.scala 227:98:@4712.4]
  reg [31:0] sat_count; // @[NV_NVDLA_CACC_calculator_for_check.scala 229:28:@4713.4]
  reg [31:0] _RAND_58;
  wire [32:0] _T_1189; // @[NV_NVDLA_CACC_calculator_for_check.scala 230:36:@4714.4]
  wire [31:0] sat_count_inc; // @[NV_NVDLA_CACC_calculator_for_check.scala 230:47:@4715.4]
  wire  sat_carry; // @[NV_NVDLA_CACC_calculator_for_check.scala 231:43:@4717.4]
  wire [55:0] _T_1192; // @[Cat.scala 30:58:@4718.4]
  wire [31:0] _T_1198; // @[NV_NVDLA_CACC_calculator_for_check.scala 233:26:@4720.4]
  wire [55:0] sat_count_w; // @[NV_NVDLA_CACC_calculator_for_check.scala 232:26:@4721.4]
  wire  _T_1200; // @[NV_NVDLA_CACC_calculator_for_check.scala 234:49:@4722.4]
  wire  _T_1201; // @[NV_NVDLA_CACC_calculator_for_check.scala 234:54:@4723.4]
  wire  sat_reg_en; // @[NV_NVDLA_CACC_calculator_for_check.scala 234:37:@4724.4]
  wire [55:0] _GEN_112; // @[NV_NVDLA_CACC_calculator_for_check.scala 235:21:@4725.4]
  NV_soDLA_CACC_CALC_int8 NV_soDLA_CACC_CALC_int8 ( // @[NV_NVDLA_CACC_calculator_for_check.scala 112:57:@3565.4]
    .reset(NV_soDLA_CACC_CALC_int8_reset),
    .nvdla_core_clk(NV_soDLA_CACC_CALC_int8_nvdla_core_clk),
    .cfg_truncate(NV_soDLA_CACC_CALC_int8_cfg_truncate),
    .in_data(NV_soDLA_CACC_CALC_int8_in_data),
    .in_op(NV_soDLA_CACC_CALC_int8_in_op),
    .in_op_valid(NV_soDLA_CACC_CALC_int8_in_op_valid),
    .in_sel(NV_soDLA_CACC_CALC_int8_in_sel),
    .in_valid(NV_soDLA_CACC_CALC_int8_in_valid),
    .out_final_data(NV_soDLA_CACC_CALC_int8_out_final_data),
    .out_final_sat(NV_soDLA_CACC_CALC_int8_out_final_sat),
    .out_final_valid(NV_soDLA_CACC_CALC_int8_out_final_valid),
    .out_partial_data(NV_soDLA_CACC_CALC_int8_out_partial_data),
    .out_partial_valid(NV_soDLA_CACC_CALC_int8_out_partial_valid)
  );
  NV_soDLA_CACC_CALC_int8 NV_soDLA_CACC_CALC_int8_1 ( // @[NV_NVDLA_CACC_calculator_for_check.scala 112:57:@3568.4]
    .reset(NV_soDLA_CACC_CALC_int8_1_reset),
    .nvdla_core_clk(NV_soDLA_CACC_CALC_int8_1_nvdla_core_clk),
    .cfg_truncate(NV_soDLA_CACC_CALC_int8_1_cfg_truncate),
    .in_data(NV_soDLA_CACC_CALC_int8_1_in_data),
    .in_op(NV_soDLA_CACC_CALC_int8_1_in_op),
    .in_op_valid(NV_soDLA_CACC_CALC_int8_1_in_op_valid),
    .in_sel(NV_soDLA_CACC_CALC_int8_1_in_sel),
    .in_valid(NV_soDLA_CACC_CALC_int8_1_in_valid),
    .out_final_data(NV_soDLA_CACC_CALC_int8_1_out_final_data),
    .out_final_sat(NV_soDLA_CACC_CALC_int8_1_out_final_sat),
    .out_final_valid(NV_soDLA_CACC_CALC_int8_1_out_final_valid),
    .out_partial_data(NV_soDLA_CACC_CALC_int8_1_out_partial_data),
    .out_partial_valid(NV_soDLA_CACC_CALC_int8_1_out_partial_valid)
  );
  NV_soDLA_CACC_CALC_int8 NV_soDLA_CACC_CALC_int8_2 ( // @[NV_NVDLA_CACC_calculator_for_check.scala 112:57:@3571.4]
    .reset(NV_soDLA_CACC_CALC_int8_2_reset),
    .nvdla_core_clk(NV_soDLA_CACC_CALC_int8_2_nvdla_core_clk),
    .cfg_truncate(NV_soDLA_CACC_CALC_int8_2_cfg_truncate),
    .in_data(NV_soDLA_CACC_CALC_int8_2_in_data),
    .in_op(NV_soDLA_CACC_CALC_int8_2_in_op),
    .in_op_valid(NV_soDLA_CACC_CALC_int8_2_in_op_valid),
    .in_sel(NV_soDLA_CACC_CALC_int8_2_in_sel),
    .in_valid(NV_soDLA_CACC_CALC_int8_2_in_valid),
    .out_final_data(NV_soDLA_CACC_CALC_int8_2_out_final_data),
    .out_final_sat(NV_soDLA_CACC_CALC_int8_2_out_final_sat),
    .out_final_valid(NV_soDLA_CACC_CALC_int8_2_out_final_valid),
    .out_partial_data(NV_soDLA_CACC_CALC_int8_2_out_partial_data),
    .out_partial_valid(NV_soDLA_CACC_CALC_int8_2_out_partial_valid)
  );
  NV_soDLA_CACC_CALC_int8 NV_soDLA_CACC_CALC_int8_3 ( // @[NV_NVDLA_CACC_calculator_for_check.scala 112:57:@3574.4]
    .reset(NV_soDLA_CACC_CALC_int8_3_reset),
    .nvdla_core_clk(NV_soDLA_CACC_CALC_int8_3_nvdla_core_clk),
    .cfg_truncate(NV_soDLA_CACC_CALC_int8_3_cfg_truncate),
    .in_data(NV_soDLA_CACC_CALC_int8_3_in_data),
    .in_op(NV_soDLA_CACC_CALC_int8_3_in_op),
    .in_op_valid(NV_soDLA_CACC_CALC_int8_3_in_op_valid),
    .in_sel(NV_soDLA_CACC_CALC_int8_3_in_sel),
    .in_valid(NV_soDLA_CACC_CALC_int8_3_in_valid),
    .out_final_data(NV_soDLA_CACC_CALC_int8_3_out_final_data),
    .out_final_sat(NV_soDLA_CACC_CALC_int8_3_out_final_sat),
    .out_final_valid(NV_soDLA_CACC_CALC_int8_3_out_final_valid),
    .out_partial_data(NV_soDLA_CACC_CALC_int8_3_out_partial_data),
    .out_partial_valid(NV_soDLA_CACC_CALC_int8_3_out_partial_valid)
  );
  NV_soDLA_CACC_CALC_int8 NV_soDLA_CACC_CALC_int8_4 ( // @[NV_NVDLA_CACC_calculator_for_check.scala 112:57:@3577.4]
    .reset(NV_soDLA_CACC_CALC_int8_4_reset),
    .nvdla_core_clk(NV_soDLA_CACC_CALC_int8_4_nvdla_core_clk),
    .cfg_truncate(NV_soDLA_CACC_CALC_int8_4_cfg_truncate),
    .in_data(NV_soDLA_CACC_CALC_int8_4_in_data),
    .in_op(NV_soDLA_CACC_CALC_int8_4_in_op),
    .in_op_valid(NV_soDLA_CACC_CALC_int8_4_in_op_valid),
    .in_sel(NV_soDLA_CACC_CALC_int8_4_in_sel),
    .in_valid(NV_soDLA_CACC_CALC_int8_4_in_valid),
    .out_final_data(NV_soDLA_CACC_CALC_int8_4_out_final_data),
    .out_final_sat(NV_soDLA_CACC_CALC_int8_4_out_final_sat),
    .out_final_valid(NV_soDLA_CACC_CALC_int8_4_out_final_valid),
    .out_partial_data(NV_soDLA_CACC_CALC_int8_4_out_partial_data),
    .out_partial_valid(NV_soDLA_CACC_CALC_int8_4_out_partial_valid)
  );
  NV_soDLA_CACC_CALC_int8 NV_soDLA_CACC_CALC_int8_5 ( // @[NV_NVDLA_CACC_calculator_for_check.scala 112:57:@3580.4]
    .reset(NV_soDLA_CACC_CALC_int8_5_reset),
    .nvdla_core_clk(NV_soDLA_CACC_CALC_int8_5_nvdla_core_clk),
    .cfg_truncate(NV_soDLA_CACC_CALC_int8_5_cfg_truncate),
    .in_data(NV_soDLA_CACC_CALC_int8_5_in_data),
    .in_op(NV_soDLA_CACC_CALC_int8_5_in_op),
    .in_op_valid(NV_soDLA_CACC_CALC_int8_5_in_op_valid),
    .in_sel(NV_soDLA_CACC_CALC_int8_5_in_sel),
    .in_valid(NV_soDLA_CACC_CALC_int8_5_in_valid),
    .out_final_data(NV_soDLA_CACC_CALC_int8_5_out_final_data),
    .out_final_sat(NV_soDLA_CACC_CALC_int8_5_out_final_sat),
    .out_final_valid(NV_soDLA_CACC_CALC_int8_5_out_final_valid),
    .out_partial_data(NV_soDLA_CACC_CALC_int8_5_out_partial_data),
    .out_partial_valid(NV_soDLA_CACC_CALC_int8_5_out_partial_valid)
  );
  NV_soDLA_CACC_CALC_int8 NV_soDLA_CACC_CALC_int8_6 ( // @[NV_NVDLA_CACC_calculator_for_check.scala 112:57:@3583.4]
    .reset(NV_soDLA_CACC_CALC_int8_6_reset),
    .nvdla_core_clk(NV_soDLA_CACC_CALC_int8_6_nvdla_core_clk),
    .cfg_truncate(NV_soDLA_CACC_CALC_int8_6_cfg_truncate),
    .in_data(NV_soDLA_CACC_CALC_int8_6_in_data),
    .in_op(NV_soDLA_CACC_CALC_int8_6_in_op),
    .in_op_valid(NV_soDLA_CACC_CALC_int8_6_in_op_valid),
    .in_sel(NV_soDLA_CACC_CALC_int8_6_in_sel),
    .in_valid(NV_soDLA_CACC_CALC_int8_6_in_valid),
    .out_final_data(NV_soDLA_CACC_CALC_int8_6_out_final_data),
    .out_final_sat(NV_soDLA_CACC_CALC_int8_6_out_final_sat),
    .out_final_valid(NV_soDLA_CACC_CALC_int8_6_out_final_valid),
    .out_partial_data(NV_soDLA_CACC_CALC_int8_6_out_partial_data),
    .out_partial_valid(NV_soDLA_CACC_CALC_int8_6_out_partial_valid)
  );
  NV_soDLA_CACC_CALC_int8 NV_soDLA_CACC_CALC_int8_7 ( // @[NV_NVDLA_CACC_calculator_for_check.scala 112:57:@3586.4]
    .reset(NV_soDLA_CACC_CALC_int8_7_reset),
    .nvdla_core_clk(NV_soDLA_CACC_CALC_int8_7_nvdla_core_clk),
    .cfg_truncate(NV_soDLA_CACC_CALC_int8_7_cfg_truncate),
    .in_data(NV_soDLA_CACC_CALC_int8_7_in_data),
    .in_op(NV_soDLA_CACC_CALC_int8_7_in_op),
    .in_op_valid(NV_soDLA_CACC_CALC_int8_7_in_op_valid),
    .in_sel(NV_soDLA_CACC_CALC_int8_7_in_sel),
    .in_valid(NV_soDLA_CACC_CALC_int8_7_in_valid),
    .out_final_data(NV_soDLA_CACC_CALC_int8_7_out_final_data),
    .out_final_sat(NV_soDLA_CACC_CALC_int8_7_out_final_sat),
    .out_final_valid(NV_soDLA_CACC_CALC_int8_7_out_final_valid),
    .out_partial_data(NV_soDLA_CACC_CALC_int8_7_out_partial_data),
    .out_partial_valid(NV_soDLA_CACC_CALC_int8_7_out_partial_valid)
  );
  NV_soDLA_CACC_CALC_int8 NV_soDLA_CACC_CALC_int8_8 ( // @[NV_NVDLA_CACC_calculator_for_check.scala 112:57:@3589.4]
    .reset(NV_soDLA_CACC_CALC_int8_8_reset),
    .nvdla_core_clk(NV_soDLA_CACC_CALC_int8_8_nvdla_core_clk),
    .cfg_truncate(NV_soDLA_CACC_CALC_int8_8_cfg_truncate),
    .in_data(NV_soDLA_CACC_CALC_int8_8_in_data),
    .in_op(NV_soDLA_CACC_CALC_int8_8_in_op),
    .in_op_valid(NV_soDLA_CACC_CALC_int8_8_in_op_valid),
    .in_sel(NV_soDLA_CACC_CALC_int8_8_in_sel),
    .in_valid(NV_soDLA_CACC_CALC_int8_8_in_valid),
    .out_final_data(NV_soDLA_CACC_CALC_int8_8_out_final_data),
    .out_final_sat(NV_soDLA_CACC_CALC_int8_8_out_final_sat),
    .out_final_valid(NV_soDLA_CACC_CALC_int8_8_out_final_valid),
    .out_partial_data(NV_soDLA_CACC_CALC_int8_8_out_partial_data),
    .out_partial_valid(NV_soDLA_CACC_CALC_int8_8_out_partial_valid)
  );
  NV_soDLA_CACC_CALC_int8 NV_soDLA_CACC_CALC_int8_9 ( // @[NV_NVDLA_CACC_calculator_for_check.scala 112:57:@3592.4]
    .reset(NV_soDLA_CACC_CALC_int8_9_reset),
    .nvdla_core_clk(NV_soDLA_CACC_CALC_int8_9_nvdla_core_clk),
    .cfg_truncate(NV_soDLA_CACC_CALC_int8_9_cfg_truncate),
    .in_data(NV_soDLA_CACC_CALC_int8_9_in_data),
    .in_op(NV_soDLA_CACC_CALC_int8_9_in_op),
    .in_op_valid(NV_soDLA_CACC_CALC_int8_9_in_op_valid),
    .in_sel(NV_soDLA_CACC_CALC_int8_9_in_sel),
    .in_valid(NV_soDLA_CACC_CALC_int8_9_in_valid),
    .out_final_data(NV_soDLA_CACC_CALC_int8_9_out_final_data),
    .out_final_sat(NV_soDLA_CACC_CALC_int8_9_out_final_sat),
    .out_final_valid(NV_soDLA_CACC_CALC_int8_9_out_final_valid),
    .out_partial_data(NV_soDLA_CACC_CALC_int8_9_out_partial_data),
    .out_partial_valid(NV_soDLA_CACC_CALC_int8_9_out_partial_valid)
  );
  NV_soDLA_CACC_CALC_int8 NV_soDLA_CACC_CALC_int8_10 ( // @[NV_NVDLA_CACC_calculator_for_check.scala 112:57:@3595.4]
    .reset(NV_soDLA_CACC_CALC_int8_10_reset),
    .nvdla_core_clk(NV_soDLA_CACC_CALC_int8_10_nvdla_core_clk),
    .cfg_truncate(NV_soDLA_CACC_CALC_int8_10_cfg_truncate),
    .in_data(NV_soDLA_CACC_CALC_int8_10_in_data),
    .in_op(NV_soDLA_CACC_CALC_int8_10_in_op),
    .in_op_valid(NV_soDLA_CACC_CALC_int8_10_in_op_valid),
    .in_sel(NV_soDLA_CACC_CALC_int8_10_in_sel),
    .in_valid(NV_soDLA_CACC_CALC_int8_10_in_valid),
    .out_final_data(NV_soDLA_CACC_CALC_int8_10_out_final_data),
    .out_final_sat(NV_soDLA_CACC_CALC_int8_10_out_final_sat),
    .out_final_valid(NV_soDLA_CACC_CALC_int8_10_out_final_valid),
    .out_partial_data(NV_soDLA_CACC_CALC_int8_10_out_partial_data),
    .out_partial_valid(NV_soDLA_CACC_CALC_int8_10_out_partial_valid)
  );
  NV_soDLA_CACC_CALC_int8 NV_soDLA_CACC_CALC_int8_11 ( // @[NV_NVDLA_CACC_calculator_for_check.scala 112:57:@3598.4]
    .reset(NV_soDLA_CACC_CALC_int8_11_reset),
    .nvdla_core_clk(NV_soDLA_CACC_CALC_int8_11_nvdla_core_clk),
    .cfg_truncate(NV_soDLA_CACC_CALC_int8_11_cfg_truncate),
    .in_data(NV_soDLA_CACC_CALC_int8_11_in_data),
    .in_op(NV_soDLA_CACC_CALC_int8_11_in_op),
    .in_op_valid(NV_soDLA_CACC_CALC_int8_11_in_op_valid),
    .in_sel(NV_soDLA_CACC_CALC_int8_11_in_sel),
    .in_valid(NV_soDLA_CACC_CALC_int8_11_in_valid),
    .out_final_data(NV_soDLA_CACC_CALC_int8_11_out_final_data),
    .out_final_sat(NV_soDLA_CACC_CALC_int8_11_out_final_sat),
    .out_final_valid(NV_soDLA_CACC_CALC_int8_11_out_final_valid),
    .out_partial_data(NV_soDLA_CACC_CALC_int8_11_out_partial_data),
    .out_partial_valid(NV_soDLA_CACC_CALC_int8_11_out_partial_valid)
  );
  NV_soDLA_CACC_CALC_int8 NV_soDLA_CACC_CALC_int8_12 ( // @[NV_NVDLA_CACC_calculator_for_check.scala 112:57:@3601.4]
    .reset(NV_soDLA_CACC_CALC_int8_12_reset),
    .nvdla_core_clk(NV_soDLA_CACC_CALC_int8_12_nvdla_core_clk),
    .cfg_truncate(NV_soDLA_CACC_CALC_int8_12_cfg_truncate),
    .in_data(NV_soDLA_CACC_CALC_int8_12_in_data),
    .in_op(NV_soDLA_CACC_CALC_int8_12_in_op),
    .in_op_valid(NV_soDLA_CACC_CALC_int8_12_in_op_valid),
    .in_sel(NV_soDLA_CACC_CALC_int8_12_in_sel),
    .in_valid(NV_soDLA_CACC_CALC_int8_12_in_valid),
    .out_final_data(NV_soDLA_CACC_CALC_int8_12_out_final_data),
    .out_final_sat(NV_soDLA_CACC_CALC_int8_12_out_final_sat),
    .out_final_valid(NV_soDLA_CACC_CALC_int8_12_out_final_valid),
    .out_partial_data(NV_soDLA_CACC_CALC_int8_12_out_partial_data),
    .out_partial_valid(NV_soDLA_CACC_CALC_int8_12_out_partial_valid)
  );
  NV_soDLA_CACC_CALC_int8 NV_soDLA_CACC_CALC_int8_13 ( // @[NV_NVDLA_CACC_calculator_for_check.scala 112:57:@3604.4]
    .reset(NV_soDLA_CACC_CALC_int8_13_reset),
    .nvdla_core_clk(NV_soDLA_CACC_CALC_int8_13_nvdla_core_clk),
    .cfg_truncate(NV_soDLA_CACC_CALC_int8_13_cfg_truncate),
    .in_data(NV_soDLA_CACC_CALC_int8_13_in_data),
    .in_op(NV_soDLA_CACC_CALC_int8_13_in_op),
    .in_op_valid(NV_soDLA_CACC_CALC_int8_13_in_op_valid),
    .in_sel(NV_soDLA_CACC_CALC_int8_13_in_sel),
    .in_valid(NV_soDLA_CACC_CALC_int8_13_in_valid),
    .out_final_data(NV_soDLA_CACC_CALC_int8_13_out_final_data),
    .out_final_sat(NV_soDLA_CACC_CALC_int8_13_out_final_sat),
    .out_final_valid(NV_soDLA_CACC_CALC_int8_13_out_final_valid),
    .out_partial_data(NV_soDLA_CACC_CALC_int8_13_out_partial_data),
    .out_partial_valid(NV_soDLA_CACC_CALC_int8_13_out_partial_valid)
  );
  NV_soDLA_CACC_CALC_int8 NV_soDLA_CACC_CALC_int8_14 ( // @[NV_NVDLA_CACC_calculator_for_check.scala 112:57:@3607.4]
    .reset(NV_soDLA_CACC_CALC_int8_14_reset),
    .nvdla_core_clk(NV_soDLA_CACC_CALC_int8_14_nvdla_core_clk),
    .cfg_truncate(NV_soDLA_CACC_CALC_int8_14_cfg_truncate),
    .in_data(NV_soDLA_CACC_CALC_int8_14_in_data),
    .in_op(NV_soDLA_CACC_CALC_int8_14_in_op),
    .in_op_valid(NV_soDLA_CACC_CALC_int8_14_in_op_valid),
    .in_sel(NV_soDLA_CACC_CALC_int8_14_in_sel),
    .in_valid(NV_soDLA_CACC_CALC_int8_14_in_valid),
    .out_final_data(NV_soDLA_CACC_CALC_int8_14_out_final_data),
    .out_final_sat(NV_soDLA_CACC_CALC_int8_14_out_final_sat),
    .out_final_valid(NV_soDLA_CACC_CALC_int8_14_out_final_valid),
    .out_partial_data(NV_soDLA_CACC_CALC_int8_14_out_partial_data),
    .out_partial_valid(NV_soDLA_CACC_CALC_int8_14_out_partial_valid)
  );
  NV_soDLA_CACC_CALC_int8 NV_soDLA_CACC_CALC_int8_15 ( // @[NV_NVDLA_CACC_calculator_for_check.scala 112:57:@3610.4]
    .reset(NV_soDLA_CACC_CALC_int8_15_reset),
    .nvdla_core_clk(NV_soDLA_CACC_CALC_int8_15_nvdla_core_clk),
    .cfg_truncate(NV_soDLA_CACC_CALC_int8_15_cfg_truncate),
    .in_data(NV_soDLA_CACC_CALC_int8_15_in_data),
    .in_op(NV_soDLA_CACC_CALC_int8_15_in_op),
    .in_op_valid(NV_soDLA_CACC_CALC_int8_15_in_op_valid),
    .in_sel(NV_soDLA_CACC_CALC_int8_15_in_sel),
    .in_valid(NV_soDLA_CACC_CALC_int8_15_in_valid),
    .out_final_data(NV_soDLA_CACC_CALC_int8_15_out_final_data),
    .out_final_sat(NV_soDLA_CACC_CALC_int8_15_out_final_sat),
    .out_final_valid(NV_soDLA_CACC_CALC_int8_15_out_final_valid),
    .out_partial_data(NV_soDLA_CACC_CALC_int8_15_out_partial_data),
    .out_partial_valid(NV_soDLA_CACC_CALC_int8_15_out_partial_valid)
  );
  NV_soDLA_CACC_CALC_int8 NV_soDLA_CACC_CALC_int8_16 ( // @[NV_NVDLA_CACC_calculator_for_check.scala 112:57:@3613.4]
    .reset(NV_soDLA_CACC_CALC_int8_16_reset),
    .nvdla_core_clk(NV_soDLA_CACC_CALC_int8_16_nvdla_core_clk),
    .cfg_truncate(NV_soDLA_CACC_CALC_int8_16_cfg_truncate),
    .in_data(NV_soDLA_CACC_CALC_int8_16_in_data),
    .in_op(NV_soDLA_CACC_CALC_int8_16_in_op),
    .in_op_valid(NV_soDLA_CACC_CALC_int8_16_in_op_valid),
    .in_sel(NV_soDLA_CACC_CALC_int8_16_in_sel),
    .in_valid(NV_soDLA_CACC_CALC_int8_16_in_valid),
    .out_final_data(NV_soDLA_CACC_CALC_int8_16_out_final_data),
    .out_final_sat(NV_soDLA_CACC_CALC_int8_16_out_final_sat),
    .out_final_valid(NV_soDLA_CACC_CALC_int8_16_out_final_valid),
    .out_partial_data(NV_soDLA_CACC_CALC_int8_16_out_partial_data),
    .out_partial_valid(NV_soDLA_CACC_CALC_int8_16_out_partial_valid)
  );
  NV_soDLA_CACC_CALC_int8 NV_soDLA_CACC_CALC_int8_17 ( // @[NV_NVDLA_CACC_calculator_for_check.scala 112:57:@3616.4]
    .reset(NV_soDLA_CACC_CALC_int8_17_reset),
    .nvdla_core_clk(NV_soDLA_CACC_CALC_int8_17_nvdla_core_clk),
    .cfg_truncate(NV_soDLA_CACC_CALC_int8_17_cfg_truncate),
    .in_data(NV_soDLA_CACC_CALC_int8_17_in_data),
    .in_op(NV_soDLA_CACC_CALC_int8_17_in_op),
    .in_op_valid(NV_soDLA_CACC_CALC_int8_17_in_op_valid),
    .in_sel(NV_soDLA_CACC_CALC_int8_17_in_sel),
    .in_valid(NV_soDLA_CACC_CALC_int8_17_in_valid),
    .out_final_data(NV_soDLA_CACC_CALC_int8_17_out_final_data),
    .out_final_sat(NV_soDLA_CACC_CALC_int8_17_out_final_sat),
    .out_final_valid(NV_soDLA_CACC_CALC_int8_17_out_final_valid),
    .out_partial_data(NV_soDLA_CACC_CALC_int8_17_out_partial_data),
    .out_partial_valid(NV_soDLA_CACC_CALC_int8_17_out_partial_valid)
  );
  NV_soDLA_CACC_CALC_int8 NV_soDLA_CACC_CALC_int8_18 ( // @[NV_NVDLA_CACC_calculator_for_check.scala 112:57:@3619.4]
    .reset(NV_soDLA_CACC_CALC_int8_18_reset),
    .nvdla_core_clk(NV_soDLA_CACC_CALC_int8_18_nvdla_core_clk),
    .cfg_truncate(NV_soDLA_CACC_CALC_int8_18_cfg_truncate),
    .in_data(NV_soDLA_CACC_CALC_int8_18_in_data),
    .in_op(NV_soDLA_CACC_CALC_int8_18_in_op),
    .in_op_valid(NV_soDLA_CACC_CALC_int8_18_in_op_valid),
    .in_sel(NV_soDLA_CACC_CALC_int8_18_in_sel),
    .in_valid(NV_soDLA_CACC_CALC_int8_18_in_valid),
    .out_final_data(NV_soDLA_CACC_CALC_int8_18_out_final_data),
    .out_final_sat(NV_soDLA_CACC_CALC_int8_18_out_final_sat),
    .out_final_valid(NV_soDLA_CACC_CALC_int8_18_out_final_valid),
    .out_partial_data(NV_soDLA_CACC_CALC_int8_18_out_partial_data),
    .out_partial_valid(NV_soDLA_CACC_CALC_int8_18_out_partial_valid)
  );
  NV_soDLA_CACC_CALC_int8 NV_soDLA_CACC_CALC_int8_19 ( // @[NV_NVDLA_CACC_calculator_for_check.scala 112:57:@3622.4]
    .reset(NV_soDLA_CACC_CALC_int8_19_reset),
    .nvdla_core_clk(NV_soDLA_CACC_CALC_int8_19_nvdla_core_clk),
    .cfg_truncate(NV_soDLA_CACC_CALC_int8_19_cfg_truncate),
    .in_data(NV_soDLA_CACC_CALC_int8_19_in_data),
    .in_op(NV_soDLA_CACC_CALC_int8_19_in_op),
    .in_op_valid(NV_soDLA_CACC_CALC_int8_19_in_op_valid),
    .in_sel(NV_soDLA_CACC_CALC_int8_19_in_sel),
    .in_valid(NV_soDLA_CACC_CALC_int8_19_in_valid),
    .out_final_data(NV_soDLA_CACC_CALC_int8_19_out_final_data),
    .out_final_sat(NV_soDLA_CACC_CALC_int8_19_out_final_sat),
    .out_final_valid(NV_soDLA_CACC_CALC_int8_19_out_final_valid),
    .out_partial_data(NV_soDLA_CACC_CALC_int8_19_out_partial_data),
    .out_partial_valid(NV_soDLA_CACC_CALC_int8_19_out_partial_valid)
  );
  NV_soDLA_CACC_CALC_int8 NV_soDLA_CACC_CALC_int8_20 ( // @[NV_NVDLA_CACC_calculator_for_check.scala 112:57:@3625.4]
    .reset(NV_soDLA_CACC_CALC_int8_20_reset),
    .nvdla_core_clk(NV_soDLA_CACC_CALC_int8_20_nvdla_core_clk),
    .cfg_truncate(NV_soDLA_CACC_CALC_int8_20_cfg_truncate),
    .in_data(NV_soDLA_CACC_CALC_int8_20_in_data),
    .in_op(NV_soDLA_CACC_CALC_int8_20_in_op),
    .in_op_valid(NV_soDLA_CACC_CALC_int8_20_in_op_valid),
    .in_sel(NV_soDLA_CACC_CALC_int8_20_in_sel),
    .in_valid(NV_soDLA_CACC_CALC_int8_20_in_valid),
    .out_final_data(NV_soDLA_CACC_CALC_int8_20_out_final_data),
    .out_final_sat(NV_soDLA_CACC_CALC_int8_20_out_final_sat),
    .out_final_valid(NV_soDLA_CACC_CALC_int8_20_out_final_valid),
    .out_partial_data(NV_soDLA_CACC_CALC_int8_20_out_partial_data),
    .out_partial_valid(NV_soDLA_CACC_CALC_int8_20_out_partial_valid)
  );
  NV_soDLA_CACC_CALC_int8 NV_soDLA_CACC_CALC_int8_21 ( // @[NV_NVDLA_CACC_calculator_for_check.scala 112:57:@3628.4]
    .reset(NV_soDLA_CACC_CALC_int8_21_reset),
    .nvdla_core_clk(NV_soDLA_CACC_CALC_int8_21_nvdla_core_clk),
    .cfg_truncate(NV_soDLA_CACC_CALC_int8_21_cfg_truncate),
    .in_data(NV_soDLA_CACC_CALC_int8_21_in_data),
    .in_op(NV_soDLA_CACC_CALC_int8_21_in_op),
    .in_op_valid(NV_soDLA_CACC_CALC_int8_21_in_op_valid),
    .in_sel(NV_soDLA_CACC_CALC_int8_21_in_sel),
    .in_valid(NV_soDLA_CACC_CALC_int8_21_in_valid),
    .out_final_data(NV_soDLA_CACC_CALC_int8_21_out_final_data),
    .out_final_sat(NV_soDLA_CACC_CALC_int8_21_out_final_sat),
    .out_final_valid(NV_soDLA_CACC_CALC_int8_21_out_final_valid),
    .out_partial_data(NV_soDLA_CACC_CALC_int8_21_out_partial_data),
    .out_partial_valid(NV_soDLA_CACC_CALC_int8_21_out_partial_valid)
  );
  NV_soDLA_CACC_CALC_int8 NV_soDLA_CACC_CALC_int8_22 ( // @[NV_NVDLA_CACC_calculator_for_check.scala 112:57:@3631.4]
    .reset(NV_soDLA_CACC_CALC_int8_22_reset),
    .nvdla_core_clk(NV_soDLA_CACC_CALC_int8_22_nvdla_core_clk),
    .cfg_truncate(NV_soDLA_CACC_CALC_int8_22_cfg_truncate),
    .in_data(NV_soDLA_CACC_CALC_int8_22_in_data),
    .in_op(NV_soDLA_CACC_CALC_int8_22_in_op),
    .in_op_valid(NV_soDLA_CACC_CALC_int8_22_in_op_valid),
    .in_sel(NV_soDLA_CACC_CALC_int8_22_in_sel),
    .in_valid(NV_soDLA_CACC_CALC_int8_22_in_valid),
    .out_final_data(NV_soDLA_CACC_CALC_int8_22_out_final_data),
    .out_final_sat(NV_soDLA_CACC_CALC_int8_22_out_final_sat),
    .out_final_valid(NV_soDLA_CACC_CALC_int8_22_out_final_valid),
    .out_partial_data(NV_soDLA_CACC_CALC_int8_22_out_partial_data),
    .out_partial_valid(NV_soDLA_CACC_CALC_int8_22_out_partial_valid)
  );
  NV_soDLA_CACC_CALC_int8 NV_soDLA_CACC_CALC_int8_23 ( // @[NV_NVDLA_CACC_calculator_for_check.scala 112:57:@3634.4]
    .reset(NV_soDLA_CACC_CALC_int8_23_reset),
    .nvdla_core_clk(NV_soDLA_CACC_CALC_int8_23_nvdla_core_clk),
    .cfg_truncate(NV_soDLA_CACC_CALC_int8_23_cfg_truncate),
    .in_data(NV_soDLA_CACC_CALC_int8_23_in_data),
    .in_op(NV_soDLA_CACC_CALC_int8_23_in_op),
    .in_op_valid(NV_soDLA_CACC_CALC_int8_23_in_op_valid),
    .in_sel(NV_soDLA_CACC_CALC_int8_23_in_sel),
    .in_valid(NV_soDLA_CACC_CALC_int8_23_in_valid),
    .out_final_data(NV_soDLA_CACC_CALC_int8_23_out_final_data),
    .out_final_sat(NV_soDLA_CACC_CALC_int8_23_out_final_sat),
    .out_final_valid(NV_soDLA_CACC_CALC_int8_23_out_final_valid),
    .out_partial_data(NV_soDLA_CACC_CALC_int8_23_out_partial_data),
    .out_partial_valid(NV_soDLA_CACC_CALC_int8_23_out_partial_valid)
  );
  NV_soDLA_CACC_CALC_int8 NV_soDLA_CACC_CALC_int8_24 ( // @[NV_NVDLA_CACC_calculator_for_check.scala 112:57:@3637.4]
    .reset(NV_soDLA_CACC_CALC_int8_24_reset),
    .nvdla_core_clk(NV_soDLA_CACC_CALC_int8_24_nvdla_core_clk),
    .cfg_truncate(NV_soDLA_CACC_CALC_int8_24_cfg_truncate),
    .in_data(NV_soDLA_CACC_CALC_int8_24_in_data),
    .in_op(NV_soDLA_CACC_CALC_int8_24_in_op),
    .in_op_valid(NV_soDLA_CACC_CALC_int8_24_in_op_valid),
    .in_sel(NV_soDLA_CACC_CALC_int8_24_in_sel),
    .in_valid(NV_soDLA_CACC_CALC_int8_24_in_valid),
    .out_final_data(NV_soDLA_CACC_CALC_int8_24_out_final_data),
    .out_final_sat(NV_soDLA_CACC_CALC_int8_24_out_final_sat),
    .out_final_valid(NV_soDLA_CACC_CALC_int8_24_out_final_valid),
    .out_partial_data(NV_soDLA_CACC_CALC_int8_24_out_partial_data),
    .out_partial_valid(NV_soDLA_CACC_CALC_int8_24_out_partial_valid)
  );
  NV_soDLA_CACC_CALC_int8 NV_soDLA_CACC_CALC_int8_25 ( // @[NV_NVDLA_CACC_calculator_for_check.scala 112:57:@3640.4]
    .reset(NV_soDLA_CACC_CALC_int8_25_reset),
    .nvdla_core_clk(NV_soDLA_CACC_CALC_int8_25_nvdla_core_clk),
    .cfg_truncate(NV_soDLA_CACC_CALC_int8_25_cfg_truncate),
    .in_data(NV_soDLA_CACC_CALC_int8_25_in_data),
    .in_op(NV_soDLA_CACC_CALC_int8_25_in_op),
    .in_op_valid(NV_soDLA_CACC_CALC_int8_25_in_op_valid),
    .in_sel(NV_soDLA_CACC_CALC_int8_25_in_sel),
    .in_valid(NV_soDLA_CACC_CALC_int8_25_in_valid),
    .out_final_data(NV_soDLA_CACC_CALC_int8_25_out_final_data),
    .out_final_sat(NV_soDLA_CACC_CALC_int8_25_out_final_sat),
    .out_final_valid(NV_soDLA_CACC_CALC_int8_25_out_final_valid),
    .out_partial_data(NV_soDLA_CACC_CALC_int8_25_out_partial_data),
    .out_partial_valid(NV_soDLA_CACC_CALC_int8_25_out_partial_valid)
  );
  NV_soDLA_CACC_CALC_int8 NV_soDLA_CACC_CALC_int8_26 ( // @[NV_NVDLA_CACC_calculator_for_check.scala 112:57:@3643.4]
    .reset(NV_soDLA_CACC_CALC_int8_26_reset),
    .nvdla_core_clk(NV_soDLA_CACC_CALC_int8_26_nvdla_core_clk),
    .cfg_truncate(NV_soDLA_CACC_CALC_int8_26_cfg_truncate),
    .in_data(NV_soDLA_CACC_CALC_int8_26_in_data),
    .in_op(NV_soDLA_CACC_CALC_int8_26_in_op),
    .in_op_valid(NV_soDLA_CACC_CALC_int8_26_in_op_valid),
    .in_sel(NV_soDLA_CACC_CALC_int8_26_in_sel),
    .in_valid(NV_soDLA_CACC_CALC_int8_26_in_valid),
    .out_final_data(NV_soDLA_CACC_CALC_int8_26_out_final_data),
    .out_final_sat(NV_soDLA_CACC_CALC_int8_26_out_final_sat),
    .out_final_valid(NV_soDLA_CACC_CALC_int8_26_out_final_valid),
    .out_partial_data(NV_soDLA_CACC_CALC_int8_26_out_partial_data),
    .out_partial_valid(NV_soDLA_CACC_CALC_int8_26_out_partial_valid)
  );
  NV_soDLA_CACC_CALC_int8 NV_soDLA_CACC_CALC_int8_27 ( // @[NV_NVDLA_CACC_calculator_for_check.scala 112:57:@3646.4]
    .reset(NV_soDLA_CACC_CALC_int8_27_reset),
    .nvdla_core_clk(NV_soDLA_CACC_CALC_int8_27_nvdla_core_clk),
    .cfg_truncate(NV_soDLA_CACC_CALC_int8_27_cfg_truncate),
    .in_data(NV_soDLA_CACC_CALC_int8_27_in_data),
    .in_op(NV_soDLA_CACC_CALC_int8_27_in_op),
    .in_op_valid(NV_soDLA_CACC_CALC_int8_27_in_op_valid),
    .in_sel(NV_soDLA_CACC_CALC_int8_27_in_sel),
    .in_valid(NV_soDLA_CACC_CALC_int8_27_in_valid),
    .out_final_data(NV_soDLA_CACC_CALC_int8_27_out_final_data),
    .out_final_sat(NV_soDLA_CACC_CALC_int8_27_out_final_sat),
    .out_final_valid(NV_soDLA_CACC_CALC_int8_27_out_final_valid),
    .out_partial_data(NV_soDLA_CACC_CALC_int8_27_out_partial_data),
    .out_partial_valid(NV_soDLA_CACC_CALC_int8_27_out_partial_valid)
  );
  NV_soDLA_CACC_CALC_int8 NV_soDLA_CACC_CALC_int8_28 ( // @[NV_NVDLA_CACC_calculator_for_check.scala 112:57:@3649.4]
    .reset(NV_soDLA_CACC_CALC_int8_28_reset),
    .nvdla_core_clk(NV_soDLA_CACC_CALC_int8_28_nvdla_core_clk),
    .cfg_truncate(NV_soDLA_CACC_CALC_int8_28_cfg_truncate),
    .in_data(NV_soDLA_CACC_CALC_int8_28_in_data),
    .in_op(NV_soDLA_CACC_CALC_int8_28_in_op),
    .in_op_valid(NV_soDLA_CACC_CALC_int8_28_in_op_valid),
    .in_sel(NV_soDLA_CACC_CALC_int8_28_in_sel),
    .in_valid(NV_soDLA_CACC_CALC_int8_28_in_valid),
    .out_final_data(NV_soDLA_CACC_CALC_int8_28_out_final_data),
    .out_final_sat(NV_soDLA_CACC_CALC_int8_28_out_final_sat),
    .out_final_valid(NV_soDLA_CACC_CALC_int8_28_out_final_valid),
    .out_partial_data(NV_soDLA_CACC_CALC_int8_28_out_partial_data),
    .out_partial_valid(NV_soDLA_CACC_CALC_int8_28_out_partial_valid)
  );
  NV_soDLA_CACC_CALC_int8 NV_soDLA_CACC_CALC_int8_29 ( // @[NV_NVDLA_CACC_calculator_for_check.scala 112:57:@3652.4]
    .reset(NV_soDLA_CACC_CALC_int8_29_reset),
    .nvdla_core_clk(NV_soDLA_CACC_CALC_int8_29_nvdla_core_clk),
    .cfg_truncate(NV_soDLA_CACC_CALC_int8_29_cfg_truncate),
    .in_data(NV_soDLA_CACC_CALC_int8_29_in_data),
    .in_op(NV_soDLA_CACC_CALC_int8_29_in_op),
    .in_op_valid(NV_soDLA_CACC_CALC_int8_29_in_op_valid),
    .in_sel(NV_soDLA_CACC_CALC_int8_29_in_sel),
    .in_valid(NV_soDLA_CACC_CALC_int8_29_in_valid),
    .out_final_data(NV_soDLA_CACC_CALC_int8_29_out_final_data),
    .out_final_sat(NV_soDLA_CACC_CALC_int8_29_out_final_sat),
    .out_final_valid(NV_soDLA_CACC_CALC_int8_29_out_final_valid),
    .out_partial_data(NV_soDLA_CACC_CALC_int8_29_out_partial_data),
    .out_partial_valid(NV_soDLA_CACC_CALC_int8_29_out_partial_valid)
  );
  NV_soDLA_CACC_CALC_int8 NV_soDLA_CACC_CALC_int8_30 ( // @[NV_NVDLA_CACC_calculator_for_check.scala 112:57:@3655.4]
    .reset(NV_soDLA_CACC_CALC_int8_30_reset),
    .nvdla_core_clk(NV_soDLA_CACC_CALC_int8_30_nvdla_core_clk),
    .cfg_truncate(NV_soDLA_CACC_CALC_int8_30_cfg_truncate),
    .in_data(NV_soDLA_CACC_CALC_int8_30_in_data),
    .in_op(NV_soDLA_CACC_CALC_int8_30_in_op),
    .in_op_valid(NV_soDLA_CACC_CALC_int8_30_in_op_valid),
    .in_sel(NV_soDLA_CACC_CALC_int8_30_in_sel),
    .in_valid(NV_soDLA_CACC_CALC_int8_30_in_valid),
    .out_final_data(NV_soDLA_CACC_CALC_int8_30_out_final_data),
    .out_final_sat(NV_soDLA_CACC_CALC_int8_30_out_final_sat),
    .out_final_valid(NV_soDLA_CACC_CALC_int8_30_out_final_valid),
    .out_partial_data(NV_soDLA_CACC_CALC_int8_30_out_partial_data),
    .out_partial_valid(NV_soDLA_CACC_CALC_int8_30_out_partial_valid)
  );
  NV_soDLA_CACC_CALC_int8 NV_soDLA_CACC_CALC_int8_31 ( // @[NV_NVDLA_CACC_calculator_for_check.scala 112:57:@3658.4]
    .reset(NV_soDLA_CACC_CALC_int8_31_reset),
    .nvdla_core_clk(NV_soDLA_CACC_CALC_int8_31_nvdla_core_clk),
    .cfg_truncate(NV_soDLA_CACC_CALC_int8_31_cfg_truncate),
    .in_data(NV_soDLA_CACC_CALC_int8_31_in_data),
    .in_op(NV_soDLA_CACC_CALC_int8_31_in_op),
    .in_op_valid(NV_soDLA_CACC_CALC_int8_31_in_op_valid),
    .in_sel(NV_soDLA_CACC_CALC_int8_31_in_sel),
    .in_valid(NV_soDLA_CACC_CALC_int8_31_in_valid),
    .out_final_data(NV_soDLA_CACC_CALC_int8_31_out_final_data),
    .out_final_sat(NV_soDLA_CACC_CALC_int8_31_out_final_sat),
    .out_final_valid(NV_soDLA_CACC_CALC_int8_31_out_final_valid),
    .out_partial_data(NV_soDLA_CACC_CALC_int8_31_out_partial_data),
    .out_partial_valid(NV_soDLA_CACC_CALC_int8_31_out_partial_valid)
  );
  assign _T_134 = nvdla_core_rstn == 1'h0; // @[NV_NVDLA_CACC_calculator_for_check.scala 69:38:@3272.4]
  assign _GEN_0 = accu_ctrl_valid ? accu_ctrl_pd : accu_ctrl_pd_d1; // @[Reg.scala 20:19:@3339.4]
  assign calc_valid_in = mac_b2accu_pvld | mac_a2accu_pvld; // @[NV_NVDLA_CACC_calculator_for_check.scala 75:45:@3342.4]
  assign calc_addr = accu_ctrl_pd_d1[5:0]; // @[NV_NVDLA_CACC_calculator_for_check.scala 80:36:@3355.4]
  assign calc_stripe_end = accu_ctrl_pd_d1[9]; // @[NV_NVDLA_CACC_calculator_for_check.scala 82:42:@3357.4]
  assign calc_channel_end = accu_ctrl_pd_d1[10]; // @[NV_NVDLA_CACC_calculator_for_check.scala 83:43:@3358.4]
  assign calc_layer_end = accu_ctrl_pd_d1[11]; // @[NV_NVDLA_CACC_calculator_for_check.scala 84:41:@3359.4]
  assign calc_in_mask_0 = mac_a2accu_mask[0]; // @[NV_NVDLA_CACC_calculator_for_check.scala 92:46:@3365.4]
  assign calc_in_mask_16 = mac_b2accu_mask[0]; // @[NV_NVDLA_CACC_calculator_for_check.scala 93:66:@3367.4]
  assign calc_in_mask_1 = mac_a2accu_mask[1]; // @[NV_NVDLA_CACC_calculator_for_check.scala 92:46:@3371.4]
  assign calc_in_mask_17 = mac_b2accu_mask[1]; // @[NV_NVDLA_CACC_calculator_for_check.scala 93:66:@3373.4]
  assign calc_in_mask_2 = mac_a2accu_mask[2]; // @[NV_NVDLA_CACC_calculator_for_check.scala 92:46:@3377.4]
  assign calc_in_mask_18 = mac_b2accu_mask[2]; // @[NV_NVDLA_CACC_calculator_for_check.scala 93:66:@3379.4]
  assign calc_in_mask_3 = mac_a2accu_mask[3]; // @[NV_NVDLA_CACC_calculator_for_check.scala 92:46:@3383.4]
  assign calc_in_mask_19 = mac_b2accu_mask[3]; // @[NV_NVDLA_CACC_calculator_for_check.scala 93:66:@3385.4]
  assign calc_in_mask_4 = mac_a2accu_mask[4]; // @[NV_NVDLA_CACC_calculator_for_check.scala 92:46:@3389.4]
  assign calc_in_mask_20 = mac_b2accu_mask[4]; // @[NV_NVDLA_CACC_calculator_for_check.scala 93:66:@3391.4]
  assign calc_in_mask_5 = mac_a2accu_mask[5]; // @[NV_NVDLA_CACC_calculator_for_check.scala 92:46:@3395.4]
  assign calc_in_mask_21 = mac_b2accu_mask[5]; // @[NV_NVDLA_CACC_calculator_for_check.scala 93:66:@3397.4]
  assign calc_in_mask_6 = mac_a2accu_mask[6]; // @[NV_NVDLA_CACC_calculator_for_check.scala 92:46:@3401.4]
  assign calc_in_mask_22 = mac_b2accu_mask[6]; // @[NV_NVDLA_CACC_calculator_for_check.scala 93:66:@3403.4]
  assign calc_in_mask_7 = mac_a2accu_mask[7]; // @[NV_NVDLA_CACC_calculator_for_check.scala 92:46:@3407.4]
  assign calc_in_mask_23 = mac_b2accu_mask[7]; // @[NV_NVDLA_CACC_calculator_for_check.scala 93:66:@3409.4]
  assign calc_in_mask_8 = mac_a2accu_mask[8]; // @[NV_NVDLA_CACC_calculator_for_check.scala 92:46:@3413.4]
  assign calc_in_mask_24 = mac_b2accu_mask[8]; // @[NV_NVDLA_CACC_calculator_for_check.scala 93:66:@3415.4]
  assign calc_in_mask_9 = mac_a2accu_mask[9]; // @[NV_NVDLA_CACC_calculator_for_check.scala 92:46:@3419.4]
  assign calc_in_mask_25 = mac_b2accu_mask[9]; // @[NV_NVDLA_CACC_calculator_for_check.scala 93:66:@3421.4]
  assign calc_in_mask_10 = mac_a2accu_mask[10]; // @[NV_NVDLA_CACC_calculator_for_check.scala 92:46:@3425.4]
  assign calc_in_mask_26 = mac_b2accu_mask[10]; // @[NV_NVDLA_CACC_calculator_for_check.scala 93:66:@3427.4]
  assign calc_in_mask_11 = mac_a2accu_mask[11]; // @[NV_NVDLA_CACC_calculator_for_check.scala 92:46:@3431.4]
  assign calc_in_mask_27 = mac_b2accu_mask[11]; // @[NV_NVDLA_CACC_calculator_for_check.scala 93:66:@3433.4]
  assign calc_in_mask_12 = mac_a2accu_mask[12]; // @[NV_NVDLA_CACC_calculator_for_check.scala 92:46:@3437.4]
  assign calc_in_mask_28 = mac_b2accu_mask[12]; // @[NV_NVDLA_CACC_calculator_for_check.scala 93:66:@3439.4]
  assign calc_in_mask_13 = mac_a2accu_mask[13]; // @[NV_NVDLA_CACC_calculator_for_check.scala 92:46:@3443.4]
  assign calc_in_mask_29 = mac_b2accu_mask[13]; // @[NV_NVDLA_CACC_calculator_for_check.scala 93:66:@3445.4]
  assign calc_in_mask_14 = mac_a2accu_mask[14]; // @[NV_NVDLA_CACC_calculator_for_check.scala 92:46:@3449.4]
  assign calc_in_mask_30 = mac_b2accu_mask[14]; // @[NV_NVDLA_CACC_calculator_for_check.scala 93:66:@3451.4]
  assign calc_in_mask_15 = mac_a2accu_mask[15]; // @[NV_NVDLA_CACC_calculator_for_check.scala 92:46:@3455.4]
  assign calc_in_mask_31 = mac_b2accu_mask[15]; // @[NV_NVDLA_CACC_calculator_for_check.scala 93:66:@3457.4]
  assign calc_dlv_valid = calc_valid & calc_channel_end; // @[NV_NVDLA_CACC_calculator_for_check.scala 98:37:@3557.4]
  assign _T_425 = ~ calc_channel_end; // @[NV_NVDLA_CACC_calculator_for_check.scala 99:36:@3558.4]
  assign calc_wr_en = calc_valid & _T_425; // @[NV_NVDLA_CACC_calculator_for_check.scala 99:33:@3559.4]
  assign _GEN_4 = calc_valid ? calc_addr : _T_629; // @[NV_NVDLA_CACC_calculator_for_check.scala 145:30:@4059.4]
  assign _GEN_5 = _T_615 ? _T_629 : calc_addr_out; // @[NV_NVDLA_CACC_calculator_for_check.scala 145:30:@4064.4]
  assign _GEN_6 = calc_dlv_valid ? calc_stripe_end : _T_643; // @[NV_NVDLA_CACC_calculator_for_check.scala 167:34:@4080.4]
  assign _GEN_7 = calc_dlv_valid ? calc_layer_end : _T_650; // @[NV_NVDLA_CACC_calculator_for_check.scala 167:34:@4080.4]
  assign _GEN_8 = _T_636 ? _T_643 : calc_stripe_end_out; // @[NV_NVDLA_CACC_calculator_for_check.scala 167:34:@4085.4]
  assign _GEN_9 = _T_636 ? _T_650 : calc_layer_end_out; // @[NV_NVDLA_CACC_calculator_for_check.scala 167:34:@4085.4]
  assign calc_pout_vld_0 = NV_soDLA_CACC_CALC_int8_out_partial_valid; // @[NV_NVDLA_CACC_calculator_for_check.scala 107:29:@3561.4 NV_NVDLA_CACC_calculator_for_check.scala 126:26:@3672.4]
  assign calc_pout_sum_0 = NV_soDLA_CACC_CALC_int8_out_partial_data; // @[NV_NVDLA_CACC_calculator_for_check.scala 109:29:@3563.4 NV_NVDLA_CACC_calculator_for_check.scala 125:26:@3671.4]
  assign calc_pout_0 = calc_pout_vld_0 ? calc_pout_sum_0 : 34'h0; // @[NV_NVDLA_CACC_calculator_for_check.scala 180:31:@4090.4]
  assign calc_pout_vld_1 = NV_soDLA_CACC_CALC_int8_1_out_partial_valid; // @[NV_NVDLA_CACC_calculator_for_check.scala 107:29:@3561.4 NV_NVDLA_CACC_calculator_for_check.scala 126:26:@3684.4]
  assign calc_pout_sum_1 = NV_soDLA_CACC_CALC_int8_1_out_partial_data; // @[NV_NVDLA_CACC_calculator_for_check.scala 109:29:@3563.4 NV_NVDLA_CACC_calculator_for_check.scala 125:26:@3683.4]
  assign calc_pout_1 = calc_pout_vld_1 ? calc_pout_sum_1 : 34'h0; // @[NV_NVDLA_CACC_calculator_for_check.scala 180:31:@4096.4]
  assign calc_pout_vld_2 = NV_soDLA_CACC_CALC_int8_2_out_partial_valid; // @[NV_NVDLA_CACC_calculator_for_check.scala 107:29:@3561.4 NV_NVDLA_CACC_calculator_for_check.scala 126:26:@3696.4]
  assign calc_pout_sum_2 = NV_soDLA_CACC_CALC_int8_2_out_partial_data; // @[NV_NVDLA_CACC_calculator_for_check.scala 109:29:@3563.4 NV_NVDLA_CACC_calculator_for_check.scala 125:26:@3695.4]
  assign calc_pout_2 = calc_pout_vld_2 ? calc_pout_sum_2 : 34'h0; // @[NV_NVDLA_CACC_calculator_for_check.scala 180:31:@4102.4]
  assign calc_pout_vld_3 = NV_soDLA_CACC_CALC_int8_3_out_partial_valid; // @[NV_NVDLA_CACC_calculator_for_check.scala 107:29:@3561.4 NV_NVDLA_CACC_calculator_for_check.scala 126:26:@3708.4]
  assign calc_pout_sum_3 = NV_soDLA_CACC_CALC_int8_3_out_partial_data; // @[NV_NVDLA_CACC_calculator_for_check.scala 109:29:@3563.4 NV_NVDLA_CACC_calculator_for_check.scala 125:26:@3707.4]
  assign calc_pout_3 = calc_pout_vld_3 ? calc_pout_sum_3 : 34'h0; // @[NV_NVDLA_CACC_calculator_for_check.scala 180:31:@4108.4]
  assign calc_pout_vld_4 = NV_soDLA_CACC_CALC_int8_4_out_partial_valid; // @[NV_NVDLA_CACC_calculator_for_check.scala 107:29:@3561.4 NV_NVDLA_CACC_calculator_for_check.scala 126:26:@3720.4]
  assign calc_pout_sum_4 = NV_soDLA_CACC_CALC_int8_4_out_partial_data; // @[NV_NVDLA_CACC_calculator_for_check.scala 109:29:@3563.4 NV_NVDLA_CACC_calculator_for_check.scala 125:26:@3719.4]
  assign calc_pout_4 = calc_pout_vld_4 ? calc_pout_sum_4 : 34'h0; // @[NV_NVDLA_CACC_calculator_for_check.scala 180:31:@4114.4]
  assign calc_pout_vld_5 = NV_soDLA_CACC_CALC_int8_5_out_partial_valid; // @[NV_NVDLA_CACC_calculator_for_check.scala 107:29:@3561.4 NV_NVDLA_CACC_calculator_for_check.scala 126:26:@3732.4]
  assign calc_pout_sum_5 = NV_soDLA_CACC_CALC_int8_5_out_partial_data; // @[NV_NVDLA_CACC_calculator_for_check.scala 109:29:@3563.4 NV_NVDLA_CACC_calculator_for_check.scala 125:26:@3731.4]
  assign calc_pout_5 = calc_pout_vld_5 ? calc_pout_sum_5 : 34'h0; // @[NV_NVDLA_CACC_calculator_for_check.scala 180:31:@4120.4]
  assign calc_pout_vld_6 = NV_soDLA_CACC_CALC_int8_6_out_partial_valid; // @[NV_NVDLA_CACC_calculator_for_check.scala 107:29:@3561.4 NV_NVDLA_CACC_calculator_for_check.scala 126:26:@3744.4]
  assign calc_pout_sum_6 = NV_soDLA_CACC_CALC_int8_6_out_partial_data; // @[NV_NVDLA_CACC_calculator_for_check.scala 109:29:@3563.4 NV_NVDLA_CACC_calculator_for_check.scala 125:26:@3743.4]
  assign calc_pout_6 = calc_pout_vld_6 ? calc_pout_sum_6 : 34'h0; // @[NV_NVDLA_CACC_calculator_for_check.scala 180:31:@4126.4]
  assign calc_pout_vld_7 = NV_soDLA_CACC_CALC_int8_7_out_partial_valid; // @[NV_NVDLA_CACC_calculator_for_check.scala 107:29:@3561.4 NV_NVDLA_CACC_calculator_for_check.scala 126:26:@3756.4]
  assign calc_pout_sum_7 = NV_soDLA_CACC_CALC_int8_7_out_partial_data; // @[NV_NVDLA_CACC_calculator_for_check.scala 109:29:@3563.4 NV_NVDLA_CACC_calculator_for_check.scala 125:26:@3755.4]
  assign calc_pout_7 = calc_pout_vld_7 ? calc_pout_sum_7 : 34'h0; // @[NV_NVDLA_CACC_calculator_for_check.scala 180:31:@4132.4]
  assign calc_pout_vld_8 = NV_soDLA_CACC_CALC_int8_8_out_partial_valid; // @[NV_NVDLA_CACC_calculator_for_check.scala 107:29:@3561.4 NV_NVDLA_CACC_calculator_for_check.scala 126:26:@3768.4]
  assign calc_pout_sum_8 = NV_soDLA_CACC_CALC_int8_8_out_partial_data; // @[NV_NVDLA_CACC_calculator_for_check.scala 109:29:@3563.4 NV_NVDLA_CACC_calculator_for_check.scala 125:26:@3767.4]
  assign calc_pout_8 = calc_pout_vld_8 ? calc_pout_sum_8 : 34'h0; // @[NV_NVDLA_CACC_calculator_for_check.scala 180:31:@4138.4]
  assign calc_pout_vld_9 = NV_soDLA_CACC_CALC_int8_9_out_partial_valid; // @[NV_NVDLA_CACC_calculator_for_check.scala 107:29:@3561.4 NV_NVDLA_CACC_calculator_for_check.scala 126:26:@3780.4]
  assign calc_pout_sum_9 = NV_soDLA_CACC_CALC_int8_9_out_partial_data; // @[NV_NVDLA_CACC_calculator_for_check.scala 109:29:@3563.4 NV_NVDLA_CACC_calculator_for_check.scala 125:26:@3779.4]
  assign calc_pout_9 = calc_pout_vld_9 ? calc_pout_sum_9 : 34'h0; // @[NV_NVDLA_CACC_calculator_for_check.scala 180:31:@4144.4]
  assign calc_pout_vld_10 = NV_soDLA_CACC_CALC_int8_10_out_partial_valid; // @[NV_NVDLA_CACC_calculator_for_check.scala 107:29:@3561.4 NV_NVDLA_CACC_calculator_for_check.scala 126:26:@3792.4]
  assign calc_pout_sum_10 = NV_soDLA_CACC_CALC_int8_10_out_partial_data; // @[NV_NVDLA_CACC_calculator_for_check.scala 109:29:@3563.4 NV_NVDLA_CACC_calculator_for_check.scala 125:26:@3791.4]
  assign calc_pout_10 = calc_pout_vld_10 ? calc_pout_sum_10 : 34'h0; // @[NV_NVDLA_CACC_calculator_for_check.scala 180:31:@4150.4]
  assign calc_pout_vld_11 = NV_soDLA_CACC_CALC_int8_11_out_partial_valid; // @[NV_NVDLA_CACC_calculator_for_check.scala 107:29:@3561.4 NV_NVDLA_CACC_calculator_for_check.scala 126:26:@3804.4]
  assign calc_pout_sum_11 = NV_soDLA_CACC_CALC_int8_11_out_partial_data; // @[NV_NVDLA_CACC_calculator_for_check.scala 109:29:@3563.4 NV_NVDLA_CACC_calculator_for_check.scala 125:26:@3803.4]
  assign calc_pout_11 = calc_pout_vld_11 ? calc_pout_sum_11 : 34'h0; // @[NV_NVDLA_CACC_calculator_for_check.scala 180:31:@4156.4]
  assign calc_pout_vld_12 = NV_soDLA_CACC_CALC_int8_12_out_partial_valid; // @[NV_NVDLA_CACC_calculator_for_check.scala 107:29:@3561.4 NV_NVDLA_CACC_calculator_for_check.scala 126:26:@3816.4]
  assign calc_pout_sum_12 = NV_soDLA_CACC_CALC_int8_12_out_partial_data; // @[NV_NVDLA_CACC_calculator_for_check.scala 109:29:@3563.4 NV_NVDLA_CACC_calculator_for_check.scala 125:26:@3815.4]
  assign calc_pout_12 = calc_pout_vld_12 ? calc_pout_sum_12 : 34'h0; // @[NV_NVDLA_CACC_calculator_for_check.scala 180:31:@4162.4]
  assign calc_pout_vld_13 = NV_soDLA_CACC_CALC_int8_13_out_partial_valid; // @[NV_NVDLA_CACC_calculator_for_check.scala 107:29:@3561.4 NV_NVDLA_CACC_calculator_for_check.scala 126:26:@3828.4]
  assign calc_pout_sum_13 = NV_soDLA_CACC_CALC_int8_13_out_partial_data; // @[NV_NVDLA_CACC_calculator_for_check.scala 109:29:@3563.4 NV_NVDLA_CACC_calculator_for_check.scala 125:26:@3827.4]
  assign calc_pout_13 = calc_pout_vld_13 ? calc_pout_sum_13 : 34'h0; // @[NV_NVDLA_CACC_calculator_for_check.scala 180:31:@4168.4]
  assign calc_pout_vld_14 = NV_soDLA_CACC_CALC_int8_14_out_partial_valid; // @[NV_NVDLA_CACC_calculator_for_check.scala 107:29:@3561.4 NV_NVDLA_CACC_calculator_for_check.scala 126:26:@3840.4]
  assign calc_pout_sum_14 = NV_soDLA_CACC_CALC_int8_14_out_partial_data; // @[NV_NVDLA_CACC_calculator_for_check.scala 109:29:@3563.4 NV_NVDLA_CACC_calculator_for_check.scala 125:26:@3839.4]
  assign calc_pout_14 = calc_pout_vld_14 ? calc_pout_sum_14 : 34'h0; // @[NV_NVDLA_CACC_calculator_for_check.scala 180:31:@4174.4]
  assign calc_pout_vld_15 = NV_soDLA_CACC_CALC_int8_15_out_partial_valid; // @[NV_NVDLA_CACC_calculator_for_check.scala 107:29:@3561.4 NV_NVDLA_CACC_calculator_for_check.scala 126:26:@3852.4]
  assign calc_pout_sum_15 = NV_soDLA_CACC_CALC_int8_15_out_partial_data; // @[NV_NVDLA_CACC_calculator_for_check.scala 109:29:@3563.4 NV_NVDLA_CACC_calculator_for_check.scala 125:26:@3851.4]
  assign calc_pout_15 = calc_pout_vld_15 ? calc_pout_sum_15 : 34'h0; // @[NV_NVDLA_CACC_calculator_for_check.scala 180:31:@4180.4]
  assign calc_pout_vld_16 = NV_soDLA_CACC_CALC_int8_16_out_partial_valid; // @[NV_NVDLA_CACC_calculator_for_check.scala 107:29:@3561.4 NV_NVDLA_CACC_calculator_for_check.scala 126:26:@3864.4]
  assign calc_pout_sum_16 = NV_soDLA_CACC_CALC_int8_16_out_partial_data; // @[NV_NVDLA_CACC_calculator_for_check.scala 109:29:@3563.4 NV_NVDLA_CACC_calculator_for_check.scala 125:26:@3863.4]
  assign calc_pout_16 = calc_pout_vld_16 ? calc_pout_sum_16 : 34'h0; // @[NV_NVDLA_CACC_calculator_for_check.scala 180:31:@4186.4]
  assign calc_pout_vld_17 = NV_soDLA_CACC_CALC_int8_17_out_partial_valid; // @[NV_NVDLA_CACC_calculator_for_check.scala 107:29:@3561.4 NV_NVDLA_CACC_calculator_for_check.scala 126:26:@3876.4]
  assign calc_pout_sum_17 = NV_soDLA_CACC_CALC_int8_17_out_partial_data; // @[NV_NVDLA_CACC_calculator_for_check.scala 109:29:@3563.4 NV_NVDLA_CACC_calculator_for_check.scala 125:26:@3875.4]
  assign calc_pout_17 = calc_pout_vld_17 ? calc_pout_sum_17 : 34'h0; // @[NV_NVDLA_CACC_calculator_for_check.scala 180:31:@4192.4]
  assign calc_pout_vld_18 = NV_soDLA_CACC_CALC_int8_18_out_partial_valid; // @[NV_NVDLA_CACC_calculator_for_check.scala 107:29:@3561.4 NV_NVDLA_CACC_calculator_for_check.scala 126:26:@3888.4]
  assign calc_pout_sum_18 = NV_soDLA_CACC_CALC_int8_18_out_partial_data; // @[NV_NVDLA_CACC_calculator_for_check.scala 109:29:@3563.4 NV_NVDLA_CACC_calculator_for_check.scala 125:26:@3887.4]
  assign calc_pout_18 = calc_pout_vld_18 ? calc_pout_sum_18 : 34'h0; // @[NV_NVDLA_CACC_calculator_for_check.scala 180:31:@4198.4]
  assign calc_pout_vld_19 = NV_soDLA_CACC_CALC_int8_19_out_partial_valid; // @[NV_NVDLA_CACC_calculator_for_check.scala 107:29:@3561.4 NV_NVDLA_CACC_calculator_for_check.scala 126:26:@3900.4]
  assign calc_pout_sum_19 = NV_soDLA_CACC_CALC_int8_19_out_partial_data; // @[NV_NVDLA_CACC_calculator_for_check.scala 109:29:@3563.4 NV_NVDLA_CACC_calculator_for_check.scala 125:26:@3899.4]
  assign calc_pout_19 = calc_pout_vld_19 ? calc_pout_sum_19 : 34'h0; // @[NV_NVDLA_CACC_calculator_for_check.scala 180:31:@4204.4]
  assign calc_pout_vld_20 = NV_soDLA_CACC_CALC_int8_20_out_partial_valid; // @[NV_NVDLA_CACC_calculator_for_check.scala 107:29:@3561.4 NV_NVDLA_CACC_calculator_for_check.scala 126:26:@3912.4]
  assign calc_pout_sum_20 = NV_soDLA_CACC_CALC_int8_20_out_partial_data; // @[NV_NVDLA_CACC_calculator_for_check.scala 109:29:@3563.4 NV_NVDLA_CACC_calculator_for_check.scala 125:26:@3911.4]
  assign calc_pout_20 = calc_pout_vld_20 ? calc_pout_sum_20 : 34'h0; // @[NV_NVDLA_CACC_calculator_for_check.scala 180:31:@4210.4]
  assign calc_pout_vld_21 = NV_soDLA_CACC_CALC_int8_21_out_partial_valid; // @[NV_NVDLA_CACC_calculator_for_check.scala 107:29:@3561.4 NV_NVDLA_CACC_calculator_for_check.scala 126:26:@3924.4]
  assign calc_pout_sum_21 = NV_soDLA_CACC_CALC_int8_21_out_partial_data; // @[NV_NVDLA_CACC_calculator_for_check.scala 109:29:@3563.4 NV_NVDLA_CACC_calculator_for_check.scala 125:26:@3923.4]
  assign calc_pout_21 = calc_pout_vld_21 ? calc_pout_sum_21 : 34'h0; // @[NV_NVDLA_CACC_calculator_for_check.scala 180:31:@4216.4]
  assign calc_pout_vld_22 = NV_soDLA_CACC_CALC_int8_22_out_partial_valid; // @[NV_NVDLA_CACC_calculator_for_check.scala 107:29:@3561.4 NV_NVDLA_CACC_calculator_for_check.scala 126:26:@3936.4]
  assign calc_pout_sum_22 = NV_soDLA_CACC_CALC_int8_22_out_partial_data; // @[NV_NVDLA_CACC_calculator_for_check.scala 109:29:@3563.4 NV_NVDLA_CACC_calculator_for_check.scala 125:26:@3935.4]
  assign calc_pout_22 = calc_pout_vld_22 ? calc_pout_sum_22 : 34'h0; // @[NV_NVDLA_CACC_calculator_for_check.scala 180:31:@4222.4]
  assign calc_pout_vld_23 = NV_soDLA_CACC_CALC_int8_23_out_partial_valid; // @[NV_NVDLA_CACC_calculator_for_check.scala 107:29:@3561.4 NV_NVDLA_CACC_calculator_for_check.scala 126:26:@3948.4]
  assign calc_pout_sum_23 = NV_soDLA_CACC_CALC_int8_23_out_partial_data; // @[NV_NVDLA_CACC_calculator_for_check.scala 109:29:@3563.4 NV_NVDLA_CACC_calculator_for_check.scala 125:26:@3947.4]
  assign calc_pout_23 = calc_pout_vld_23 ? calc_pout_sum_23 : 34'h0; // @[NV_NVDLA_CACC_calculator_for_check.scala 180:31:@4228.4]
  assign calc_pout_vld_24 = NV_soDLA_CACC_CALC_int8_24_out_partial_valid; // @[NV_NVDLA_CACC_calculator_for_check.scala 107:29:@3561.4 NV_NVDLA_CACC_calculator_for_check.scala 126:26:@3960.4]
  assign calc_pout_sum_24 = NV_soDLA_CACC_CALC_int8_24_out_partial_data; // @[NV_NVDLA_CACC_calculator_for_check.scala 109:29:@3563.4 NV_NVDLA_CACC_calculator_for_check.scala 125:26:@3959.4]
  assign calc_pout_24 = calc_pout_vld_24 ? calc_pout_sum_24 : 34'h0; // @[NV_NVDLA_CACC_calculator_for_check.scala 180:31:@4234.4]
  assign calc_pout_vld_25 = NV_soDLA_CACC_CALC_int8_25_out_partial_valid; // @[NV_NVDLA_CACC_calculator_for_check.scala 107:29:@3561.4 NV_NVDLA_CACC_calculator_for_check.scala 126:26:@3972.4]
  assign calc_pout_sum_25 = NV_soDLA_CACC_CALC_int8_25_out_partial_data; // @[NV_NVDLA_CACC_calculator_for_check.scala 109:29:@3563.4 NV_NVDLA_CACC_calculator_for_check.scala 125:26:@3971.4]
  assign calc_pout_25 = calc_pout_vld_25 ? calc_pout_sum_25 : 34'h0; // @[NV_NVDLA_CACC_calculator_for_check.scala 180:31:@4240.4]
  assign calc_pout_vld_26 = NV_soDLA_CACC_CALC_int8_26_out_partial_valid; // @[NV_NVDLA_CACC_calculator_for_check.scala 107:29:@3561.4 NV_NVDLA_CACC_calculator_for_check.scala 126:26:@3984.4]
  assign calc_pout_sum_26 = NV_soDLA_CACC_CALC_int8_26_out_partial_data; // @[NV_NVDLA_CACC_calculator_for_check.scala 109:29:@3563.4 NV_NVDLA_CACC_calculator_for_check.scala 125:26:@3983.4]
  assign calc_pout_26 = calc_pout_vld_26 ? calc_pout_sum_26 : 34'h0; // @[NV_NVDLA_CACC_calculator_for_check.scala 180:31:@4246.4]
  assign calc_pout_vld_27 = NV_soDLA_CACC_CALC_int8_27_out_partial_valid; // @[NV_NVDLA_CACC_calculator_for_check.scala 107:29:@3561.4 NV_NVDLA_CACC_calculator_for_check.scala 126:26:@3996.4]
  assign calc_pout_sum_27 = NV_soDLA_CACC_CALC_int8_27_out_partial_data; // @[NV_NVDLA_CACC_calculator_for_check.scala 109:29:@3563.4 NV_NVDLA_CACC_calculator_for_check.scala 125:26:@3995.4]
  assign calc_pout_27 = calc_pout_vld_27 ? calc_pout_sum_27 : 34'h0; // @[NV_NVDLA_CACC_calculator_for_check.scala 180:31:@4252.4]
  assign calc_pout_vld_28 = NV_soDLA_CACC_CALC_int8_28_out_partial_valid; // @[NV_NVDLA_CACC_calculator_for_check.scala 107:29:@3561.4 NV_NVDLA_CACC_calculator_for_check.scala 126:26:@4008.4]
  assign calc_pout_sum_28 = NV_soDLA_CACC_CALC_int8_28_out_partial_data; // @[NV_NVDLA_CACC_calculator_for_check.scala 109:29:@3563.4 NV_NVDLA_CACC_calculator_for_check.scala 125:26:@4007.4]
  assign calc_pout_28 = calc_pout_vld_28 ? calc_pout_sum_28 : 34'h0; // @[NV_NVDLA_CACC_calculator_for_check.scala 180:31:@4258.4]
  assign calc_pout_vld_29 = NV_soDLA_CACC_CALC_int8_29_out_partial_valid; // @[NV_NVDLA_CACC_calculator_for_check.scala 107:29:@3561.4 NV_NVDLA_CACC_calculator_for_check.scala 126:26:@4020.4]
  assign calc_pout_sum_29 = NV_soDLA_CACC_CALC_int8_29_out_partial_data; // @[NV_NVDLA_CACC_calculator_for_check.scala 109:29:@3563.4 NV_NVDLA_CACC_calculator_for_check.scala 125:26:@4019.4]
  assign calc_pout_29 = calc_pout_vld_29 ? calc_pout_sum_29 : 34'h0; // @[NV_NVDLA_CACC_calculator_for_check.scala 180:31:@4264.4]
  assign calc_pout_vld_30 = NV_soDLA_CACC_CALC_int8_30_out_partial_valid; // @[NV_NVDLA_CACC_calculator_for_check.scala 107:29:@3561.4 NV_NVDLA_CACC_calculator_for_check.scala 126:26:@4032.4]
  assign calc_pout_sum_30 = NV_soDLA_CACC_CALC_int8_30_out_partial_data; // @[NV_NVDLA_CACC_calculator_for_check.scala 109:29:@3563.4 NV_NVDLA_CACC_calculator_for_check.scala 125:26:@4031.4]
  assign calc_pout_30 = calc_pout_vld_30 ? calc_pout_sum_30 : 34'h0; // @[NV_NVDLA_CACC_calculator_for_check.scala 180:31:@4270.4]
  assign calc_pout_vld_31 = NV_soDLA_CACC_CALC_int8_31_out_partial_valid; // @[NV_NVDLA_CACC_calculator_for_check.scala 107:29:@3561.4 NV_NVDLA_CACC_calculator_for_check.scala 126:26:@4044.4]
  assign calc_pout_sum_31 = NV_soDLA_CACC_CALC_int8_31_out_partial_data; // @[NV_NVDLA_CACC_calculator_for_check.scala 109:29:@3563.4 NV_NVDLA_CACC_calculator_for_check.scala 125:26:@4043.4]
  assign calc_pout_31 = calc_pout_vld_31 ? calc_pout_sum_31 : 34'h0; // @[NV_NVDLA_CACC_calculator_for_check.scala 180:31:@4276.4]
  assign calc_fout_vld_0 = NV_soDLA_CACC_CALC_int8_out_final_valid; // @[NV_NVDLA_CACC_calculator_for_check.scala 108:29:@3562.4 NV_NVDLA_CACC_calculator_for_check.scala 124:26:@3670.4]
  assign calc_fout_sum_0 = NV_soDLA_CACC_CALC_int8_out_final_data; // @[NV_NVDLA_CACC_calculator_for_check.scala 110:29:@3564.4 NV_NVDLA_CACC_calculator_for_check.scala 122:26:@3668.4]
  assign calc_fout_0 = calc_fout_vld_0 ? calc_fout_sum_0 : 32'h0; // @[NV_NVDLA_CACC_calculator_for_check.scala 189:31:@4283.4]
  assign calc_fout_vld_1 = NV_soDLA_CACC_CALC_int8_1_out_final_valid; // @[NV_NVDLA_CACC_calculator_for_check.scala 108:29:@3562.4 NV_NVDLA_CACC_calculator_for_check.scala 124:26:@3682.4]
  assign calc_fout_sum_1 = NV_soDLA_CACC_CALC_int8_1_out_final_data; // @[NV_NVDLA_CACC_calculator_for_check.scala 110:29:@3564.4 NV_NVDLA_CACC_calculator_for_check.scala 122:26:@3680.4]
  assign calc_fout_1 = calc_fout_vld_1 ? calc_fout_sum_1 : 32'h0; // @[NV_NVDLA_CACC_calculator_for_check.scala 189:31:@4289.4]
  assign calc_fout_vld_2 = NV_soDLA_CACC_CALC_int8_2_out_final_valid; // @[NV_NVDLA_CACC_calculator_for_check.scala 108:29:@3562.4 NV_NVDLA_CACC_calculator_for_check.scala 124:26:@3694.4]
  assign calc_fout_sum_2 = NV_soDLA_CACC_CALC_int8_2_out_final_data; // @[NV_NVDLA_CACC_calculator_for_check.scala 110:29:@3564.4 NV_NVDLA_CACC_calculator_for_check.scala 122:26:@3692.4]
  assign calc_fout_2 = calc_fout_vld_2 ? calc_fout_sum_2 : 32'h0; // @[NV_NVDLA_CACC_calculator_for_check.scala 189:31:@4295.4]
  assign calc_fout_vld_3 = NV_soDLA_CACC_CALC_int8_3_out_final_valid; // @[NV_NVDLA_CACC_calculator_for_check.scala 108:29:@3562.4 NV_NVDLA_CACC_calculator_for_check.scala 124:26:@3706.4]
  assign calc_fout_sum_3 = NV_soDLA_CACC_CALC_int8_3_out_final_data; // @[NV_NVDLA_CACC_calculator_for_check.scala 110:29:@3564.4 NV_NVDLA_CACC_calculator_for_check.scala 122:26:@3704.4]
  assign calc_fout_3 = calc_fout_vld_3 ? calc_fout_sum_3 : 32'h0; // @[NV_NVDLA_CACC_calculator_for_check.scala 189:31:@4301.4]
  assign calc_fout_vld_4 = NV_soDLA_CACC_CALC_int8_4_out_final_valid; // @[NV_NVDLA_CACC_calculator_for_check.scala 108:29:@3562.4 NV_NVDLA_CACC_calculator_for_check.scala 124:26:@3718.4]
  assign calc_fout_sum_4 = NV_soDLA_CACC_CALC_int8_4_out_final_data; // @[NV_NVDLA_CACC_calculator_for_check.scala 110:29:@3564.4 NV_NVDLA_CACC_calculator_for_check.scala 122:26:@3716.4]
  assign calc_fout_4 = calc_fout_vld_4 ? calc_fout_sum_4 : 32'h0; // @[NV_NVDLA_CACC_calculator_for_check.scala 189:31:@4307.4]
  assign calc_fout_vld_5 = NV_soDLA_CACC_CALC_int8_5_out_final_valid; // @[NV_NVDLA_CACC_calculator_for_check.scala 108:29:@3562.4 NV_NVDLA_CACC_calculator_for_check.scala 124:26:@3730.4]
  assign calc_fout_sum_5 = NV_soDLA_CACC_CALC_int8_5_out_final_data; // @[NV_NVDLA_CACC_calculator_for_check.scala 110:29:@3564.4 NV_NVDLA_CACC_calculator_for_check.scala 122:26:@3728.4]
  assign calc_fout_5 = calc_fout_vld_5 ? calc_fout_sum_5 : 32'h0; // @[NV_NVDLA_CACC_calculator_for_check.scala 189:31:@4313.4]
  assign calc_fout_vld_6 = NV_soDLA_CACC_CALC_int8_6_out_final_valid; // @[NV_NVDLA_CACC_calculator_for_check.scala 108:29:@3562.4 NV_NVDLA_CACC_calculator_for_check.scala 124:26:@3742.4]
  assign calc_fout_sum_6 = NV_soDLA_CACC_CALC_int8_6_out_final_data; // @[NV_NVDLA_CACC_calculator_for_check.scala 110:29:@3564.4 NV_NVDLA_CACC_calculator_for_check.scala 122:26:@3740.4]
  assign calc_fout_6 = calc_fout_vld_6 ? calc_fout_sum_6 : 32'h0; // @[NV_NVDLA_CACC_calculator_for_check.scala 189:31:@4319.4]
  assign calc_fout_vld_7 = NV_soDLA_CACC_CALC_int8_7_out_final_valid; // @[NV_NVDLA_CACC_calculator_for_check.scala 108:29:@3562.4 NV_NVDLA_CACC_calculator_for_check.scala 124:26:@3754.4]
  assign calc_fout_sum_7 = NV_soDLA_CACC_CALC_int8_7_out_final_data; // @[NV_NVDLA_CACC_calculator_for_check.scala 110:29:@3564.4 NV_NVDLA_CACC_calculator_for_check.scala 122:26:@3752.4]
  assign calc_fout_7 = calc_fout_vld_7 ? calc_fout_sum_7 : 32'h0; // @[NV_NVDLA_CACC_calculator_for_check.scala 189:31:@4325.4]
  assign calc_fout_vld_8 = NV_soDLA_CACC_CALC_int8_8_out_final_valid; // @[NV_NVDLA_CACC_calculator_for_check.scala 108:29:@3562.4 NV_NVDLA_CACC_calculator_for_check.scala 124:26:@3766.4]
  assign calc_fout_sum_8 = NV_soDLA_CACC_CALC_int8_8_out_final_data; // @[NV_NVDLA_CACC_calculator_for_check.scala 110:29:@3564.4 NV_NVDLA_CACC_calculator_for_check.scala 122:26:@3764.4]
  assign calc_fout_8 = calc_fout_vld_8 ? calc_fout_sum_8 : 32'h0; // @[NV_NVDLA_CACC_calculator_for_check.scala 189:31:@4331.4]
  assign calc_fout_vld_9 = NV_soDLA_CACC_CALC_int8_9_out_final_valid; // @[NV_NVDLA_CACC_calculator_for_check.scala 108:29:@3562.4 NV_NVDLA_CACC_calculator_for_check.scala 124:26:@3778.4]
  assign calc_fout_sum_9 = NV_soDLA_CACC_CALC_int8_9_out_final_data; // @[NV_NVDLA_CACC_calculator_for_check.scala 110:29:@3564.4 NV_NVDLA_CACC_calculator_for_check.scala 122:26:@3776.4]
  assign calc_fout_9 = calc_fout_vld_9 ? calc_fout_sum_9 : 32'h0; // @[NV_NVDLA_CACC_calculator_for_check.scala 189:31:@4337.4]
  assign calc_fout_vld_10 = NV_soDLA_CACC_CALC_int8_10_out_final_valid; // @[NV_NVDLA_CACC_calculator_for_check.scala 108:29:@3562.4 NV_NVDLA_CACC_calculator_for_check.scala 124:26:@3790.4]
  assign calc_fout_sum_10 = NV_soDLA_CACC_CALC_int8_10_out_final_data; // @[NV_NVDLA_CACC_calculator_for_check.scala 110:29:@3564.4 NV_NVDLA_CACC_calculator_for_check.scala 122:26:@3788.4]
  assign calc_fout_10 = calc_fout_vld_10 ? calc_fout_sum_10 : 32'h0; // @[NV_NVDLA_CACC_calculator_for_check.scala 189:31:@4343.4]
  assign calc_fout_vld_11 = NV_soDLA_CACC_CALC_int8_11_out_final_valid; // @[NV_NVDLA_CACC_calculator_for_check.scala 108:29:@3562.4 NV_NVDLA_CACC_calculator_for_check.scala 124:26:@3802.4]
  assign calc_fout_sum_11 = NV_soDLA_CACC_CALC_int8_11_out_final_data; // @[NV_NVDLA_CACC_calculator_for_check.scala 110:29:@3564.4 NV_NVDLA_CACC_calculator_for_check.scala 122:26:@3800.4]
  assign calc_fout_11 = calc_fout_vld_11 ? calc_fout_sum_11 : 32'h0; // @[NV_NVDLA_CACC_calculator_for_check.scala 189:31:@4349.4]
  assign calc_fout_vld_12 = NV_soDLA_CACC_CALC_int8_12_out_final_valid; // @[NV_NVDLA_CACC_calculator_for_check.scala 108:29:@3562.4 NV_NVDLA_CACC_calculator_for_check.scala 124:26:@3814.4]
  assign calc_fout_sum_12 = NV_soDLA_CACC_CALC_int8_12_out_final_data; // @[NV_NVDLA_CACC_calculator_for_check.scala 110:29:@3564.4 NV_NVDLA_CACC_calculator_for_check.scala 122:26:@3812.4]
  assign calc_fout_12 = calc_fout_vld_12 ? calc_fout_sum_12 : 32'h0; // @[NV_NVDLA_CACC_calculator_for_check.scala 189:31:@4355.4]
  assign calc_fout_vld_13 = NV_soDLA_CACC_CALC_int8_13_out_final_valid; // @[NV_NVDLA_CACC_calculator_for_check.scala 108:29:@3562.4 NV_NVDLA_CACC_calculator_for_check.scala 124:26:@3826.4]
  assign calc_fout_sum_13 = NV_soDLA_CACC_CALC_int8_13_out_final_data; // @[NV_NVDLA_CACC_calculator_for_check.scala 110:29:@3564.4 NV_NVDLA_CACC_calculator_for_check.scala 122:26:@3824.4]
  assign calc_fout_13 = calc_fout_vld_13 ? calc_fout_sum_13 : 32'h0; // @[NV_NVDLA_CACC_calculator_for_check.scala 189:31:@4361.4]
  assign calc_fout_vld_14 = NV_soDLA_CACC_CALC_int8_14_out_final_valid; // @[NV_NVDLA_CACC_calculator_for_check.scala 108:29:@3562.4 NV_NVDLA_CACC_calculator_for_check.scala 124:26:@3838.4]
  assign calc_fout_sum_14 = NV_soDLA_CACC_CALC_int8_14_out_final_data; // @[NV_NVDLA_CACC_calculator_for_check.scala 110:29:@3564.4 NV_NVDLA_CACC_calculator_for_check.scala 122:26:@3836.4]
  assign calc_fout_14 = calc_fout_vld_14 ? calc_fout_sum_14 : 32'h0; // @[NV_NVDLA_CACC_calculator_for_check.scala 189:31:@4367.4]
  assign calc_fout_vld_15 = NV_soDLA_CACC_CALC_int8_15_out_final_valid; // @[NV_NVDLA_CACC_calculator_for_check.scala 108:29:@3562.4 NV_NVDLA_CACC_calculator_for_check.scala 124:26:@3850.4]
  assign calc_fout_sum_15 = NV_soDLA_CACC_CALC_int8_15_out_final_data; // @[NV_NVDLA_CACC_calculator_for_check.scala 110:29:@3564.4 NV_NVDLA_CACC_calculator_for_check.scala 122:26:@3848.4]
  assign calc_fout_15 = calc_fout_vld_15 ? calc_fout_sum_15 : 32'h0; // @[NV_NVDLA_CACC_calculator_for_check.scala 189:31:@4373.4]
  assign calc_fout_vld_16 = NV_soDLA_CACC_CALC_int8_16_out_final_valid; // @[NV_NVDLA_CACC_calculator_for_check.scala 108:29:@3562.4 NV_NVDLA_CACC_calculator_for_check.scala 124:26:@3862.4]
  assign calc_fout_sum_16 = NV_soDLA_CACC_CALC_int8_16_out_final_data; // @[NV_NVDLA_CACC_calculator_for_check.scala 110:29:@3564.4 NV_NVDLA_CACC_calculator_for_check.scala 122:26:@3860.4]
  assign calc_fout_16 = calc_fout_vld_16 ? calc_fout_sum_16 : 32'h0; // @[NV_NVDLA_CACC_calculator_for_check.scala 189:31:@4379.4]
  assign calc_fout_vld_17 = NV_soDLA_CACC_CALC_int8_17_out_final_valid; // @[NV_NVDLA_CACC_calculator_for_check.scala 108:29:@3562.4 NV_NVDLA_CACC_calculator_for_check.scala 124:26:@3874.4]
  assign calc_fout_sum_17 = NV_soDLA_CACC_CALC_int8_17_out_final_data; // @[NV_NVDLA_CACC_calculator_for_check.scala 110:29:@3564.4 NV_NVDLA_CACC_calculator_for_check.scala 122:26:@3872.4]
  assign calc_fout_17 = calc_fout_vld_17 ? calc_fout_sum_17 : 32'h0; // @[NV_NVDLA_CACC_calculator_for_check.scala 189:31:@4385.4]
  assign calc_fout_vld_18 = NV_soDLA_CACC_CALC_int8_18_out_final_valid; // @[NV_NVDLA_CACC_calculator_for_check.scala 108:29:@3562.4 NV_NVDLA_CACC_calculator_for_check.scala 124:26:@3886.4]
  assign calc_fout_sum_18 = NV_soDLA_CACC_CALC_int8_18_out_final_data; // @[NV_NVDLA_CACC_calculator_for_check.scala 110:29:@3564.4 NV_NVDLA_CACC_calculator_for_check.scala 122:26:@3884.4]
  assign calc_fout_18 = calc_fout_vld_18 ? calc_fout_sum_18 : 32'h0; // @[NV_NVDLA_CACC_calculator_for_check.scala 189:31:@4391.4]
  assign calc_fout_vld_19 = NV_soDLA_CACC_CALC_int8_19_out_final_valid; // @[NV_NVDLA_CACC_calculator_for_check.scala 108:29:@3562.4 NV_NVDLA_CACC_calculator_for_check.scala 124:26:@3898.4]
  assign calc_fout_sum_19 = NV_soDLA_CACC_CALC_int8_19_out_final_data; // @[NV_NVDLA_CACC_calculator_for_check.scala 110:29:@3564.4 NV_NVDLA_CACC_calculator_for_check.scala 122:26:@3896.4]
  assign calc_fout_19 = calc_fout_vld_19 ? calc_fout_sum_19 : 32'h0; // @[NV_NVDLA_CACC_calculator_for_check.scala 189:31:@4397.4]
  assign calc_fout_vld_20 = NV_soDLA_CACC_CALC_int8_20_out_final_valid; // @[NV_NVDLA_CACC_calculator_for_check.scala 108:29:@3562.4 NV_NVDLA_CACC_calculator_for_check.scala 124:26:@3910.4]
  assign calc_fout_sum_20 = NV_soDLA_CACC_CALC_int8_20_out_final_data; // @[NV_NVDLA_CACC_calculator_for_check.scala 110:29:@3564.4 NV_NVDLA_CACC_calculator_for_check.scala 122:26:@3908.4]
  assign calc_fout_20 = calc_fout_vld_20 ? calc_fout_sum_20 : 32'h0; // @[NV_NVDLA_CACC_calculator_for_check.scala 189:31:@4403.4]
  assign calc_fout_vld_21 = NV_soDLA_CACC_CALC_int8_21_out_final_valid; // @[NV_NVDLA_CACC_calculator_for_check.scala 108:29:@3562.4 NV_NVDLA_CACC_calculator_for_check.scala 124:26:@3922.4]
  assign calc_fout_sum_21 = NV_soDLA_CACC_CALC_int8_21_out_final_data; // @[NV_NVDLA_CACC_calculator_for_check.scala 110:29:@3564.4 NV_NVDLA_CACC_calculator_for_check.scala 122:26:@3920.4]
  assign calc_fout_21 = calc_fout_vld_21 ? calc_fout_sum_21 : 32'h0; // @[NV_NVDLA_CACC_calculator_for_check.scala 189:31:@4409.4]
  assign calc_fout_vld_22 = NV_soDLA_CACC_CALC_int8_22_out_final_valid; // @[NV_NVDLA_CACC_calculator_for_check.scala 108:29:@3562.4 NV_NVDLA_CACC_calculator_for_check.scala 124:26:@3934.4]
  assign calc_fout_sum_22 = NV_soDLA_CACC_CALC_int8_22_out_final_data; // @[NV_NVDLA_CACC_calculator_for_check.scala 110:29:@3564.4 NV_NVDLA_CACC_calculator_for_check.scala 122:26:@3932.4]
  assign calc_fout_22 = calc_fout_vld_22 ? calc_fout_sum_22 : 32'h0; // @[NV_NVDLA_CACC_calculator_for_check.scala 189:31:@4415.4]
  assign calc_fout_vld_23 = NV_soDLA_CACC_CALC_int8_23_out_final_valid; // @[NV_NVDLA_CACC_calculator_for_check.scala 108:29:@3562.4 NV_NVDLA_CACC_calculator_for_check.scala 124:26:@3946.4]
  assign calc_fout_sum_23 = NV_soDLA_CACC_CALC_int8_23_out_final_data; // @[NV_NVDLA_CACC_calculator_for_check.scala 110:29:@3564.4 NV_NVDLA_CACC_calculator_for_check.scala 122:26:@3944.4]
  assign calc_fout_23 = calc_fout_vld_23 ? calc_fout_sum_23 : 32'h0; // @[NV_NVDLA_CACC_calculator_for_check.scala 189:31:@4421.4]
  assign calc_fout_vld_24 = NV_soDLA_CACC_CALC_int8_24_out_final_valid; // @[NV_NVDLA_CACC_calculator_for_check.scala 108:29:@3562.4 NV_NVDLA_CACC_calculator_for_check.scala 124:26:@3958.4]
  assign calc_fout_sum_24 = NV_soDLA_CACC_CALC_int8_24_out_final_data; // @[NV_NVDLA_CACC_calculator_for_check.scala 110:29:@3564.4 NV_NVDLA_CACC_calculator_for_check.scala 122:26:@3956.4]
  assign calc_fout_24 = calc_fout_vld_24 ? calc_fout_sum_24 : 32'h0; // @[NV_NVDLA_CACC_calculator_for_check.scala 189:31:@4427.4]
  assign calc_fout_vld_25 = NV_soDLA_CACC_CALC_int8_25_out_final_valid; // @[NV_NVDLA_CACC_calculator_for_check.scala 108:29:@3562.4 NV_NVDLA_CACC_calculator_for_check.scala 124:26:@3970.4]
  assign calc_fout_sum_25 = NV_soDLA_CACC_CALC_int8_25_out_final_data; // @[NV_NVDLA_CACC_calculator_for_check.scala 110:29:@3564.4 NV_NVDLA_CACC_calculator_for_check.scala 122:26:@3968.4]
  assign calc_fout_25 = calc_fout_vld_25 ? calc_fout_sum_25 : 32'h0; // @[NV_NVDLA_CACC_calculator_for_check.scala 189:31:@4433.4]
  assign calc_fout_vld_26 = NV_soDLA_CACC_CALC_int8_26_out_final_valid; // @[NV_NVDLA_CACC_calculator_for_check.scala 108:29:@3562.4 NV_NVDLA_CACC_calculator_for_check.scala 124:26:@3982.4]
  assign calc_fout_sum_26 = NV_soDLA_CACC_CALC_int8_26_out_final_data; // @[NV_NVDLA_CACC_calculator_for_check.scala 110:29:@3564.4 NV_NVDLA_CACC_calculator_for_check.scala 122:26:@3980.4]
  assign calc_fout_26 = calc_fout_vld_26 ? calc_fout_sum_26 : 32'h0; // @[NV_NVDLA_CACC_calculator_for_check.scala 189:31:@4439.4]
  assign calc_fout_vld_27 = NV_soDLA_CACC_CALC_int8_27_out_final_valid; // @[NV_NVDLA_CACC_calculator_for_check.scala 108:29:@3562.4 NV_NVDLA_CACC_calculator_for_check.scala 124:26:@3994.4]
  assign calc_fout_sum_27 = NV_soDLA_CACC_CALC_int8_27_out_final_data; // @[NV_NVDLA_CACC_calculator_for_check.scala 110:29:@3564.4 NV_NVDLA_CACC_calculator_for_check.scala 122:26:@3992.4]
  assign calc_fout_27 = calc_fout_vld_27 ? calc_fout_sum_27 : 32'h0; // @[NV_NVDLA_CACC_calculator_for_check.scala 189:31:@4445.4]
  assign calc_fout_vld_28 = NV_soDLA_CACC_CALC_int8_28_out_final_valid; // @[NV_NVDLA_CACC_calculator_for_check.scala 108:29:@3562.4 NV_NVDLA_CACC_calculator_for_check.scala 124:26:@4006.4]
  assign calc_fout_sum_28 = NV_soDLA_CACC_CALC_int8_28_out_final_data; // @[NV_NVDLA_CACC_calculator_for_check.scala 110:29:@3564.4 NV_NVDLA_CACC_calculator_for_check.scala 122:26:@4004.4]
  assign calc_fout_28 = calc_fout_vld_28 ? calc_fout_sum_28 : 32'h0; // @[NV_NVDLA_CACC_calculator_for_check.scala 189:31:@4451.4]
  assign calc_fout_vld_29 = NV_soDLA_CACC_CALC_int8_29_out_final_valid; // @[NV_NVDLA_CACC_calculator_for_check.scala 108:29:@3562.4 NV_NVDLA_CACC_calculator_for_check.scala 124:26:@4018.4]
  assign calc_fout_sum_29 = NV_soDLA_CACC_CALC_int8_29_out_final_data; // @[NV_NVDLA_CACC_calculator_for_check.scala 110:29:@3564.4 NV_NVDLA_CACC_calculator_for_check.scala 122:26:@4016.4]
  assign calc_fout_29 = calc_fout_vld_29 ? calc_fout_sum_29 : 32'h0; // @[NV_NVDLA_CACC_calculator_for_check.scala 189:31:@4457.4]
  assign calc_fout_vld_30 = NV_soDLA_CACC_CALC_int8_30_out_final_valid; // @[NV_NVDLA_CACC_calculator_for_check.scala 108:29:@3562.4 NV_NVDLA_CACC_calculator_for_check.scala 124:26:@4030.4]
  assign calc_fout_sum_30 = NV_soDLA_CACC_CALC_int8_30_out_final_data; // @[NV_NVDLA_CACC_calculator_for_check.scala 110:29:@3564.4 NV_NVDLA_CACC_calculator_for_check.scala 122:26:@4028.4]
  assign calc_fout_30 = calc_fout_vld_30 ? calc_fout_sum_30 : 32'h0; // @[NV_NVDLA_CACC_calculator_for_check.scala 189:31:@4463.4]
  assign calc_fout_vld_31 = NV_soDLA_CACC_CALC_int8_31_out_final_valid; // @[NV_NVDLA_CACC_calculator_for_check.scala 108:29:@3562.4 NV_NVDLA_CACC_calculator_for_check.scala 124:26:@4042.4]
  assign calc_fout_sum_31 = NV_soDLA_CACC_CALC_int8_31_out_final_data; // @[NV_NVDLA_CACC_calculator_for_check.scala 110:29:@3564.4 NV_NVDLA_CACC_calculator_for_check.scala 122:26:@4040.4]
  assign calc_fout_31 = calc_fout_vld_31 ? calc_fout_sum_31 : 32'h0; // @[NV_NVDLA_CACC_calculator_for_check.scala 189:31:@4469.4]
  assign _T_802 = {calc_pout_7,calc_pout_6,calc_pout_5,calc_pout_4,calc_pout_3,calc_pout_2,calc_pout_1,calc_pout_0}; // @[NV_NVDLA_CACC_calculator_for_check.scala 201:44:@4489.4]
  assign _T_810 = {calc_pout_15,calc_pout_14,calc_pout_13,calc_pout_12,calc_pout_11,calc_pout_10,calc_pout_9,calc_pout_8,_T_802}; // @[NV_NVDLA_CACC_calculator_for_check.scala 201:44:@4497.4]
  assign _T_817 = {calc_pout_23,calc_pout_22,calc_pout_21,calc_pout_20,calc_pout_19,calc_pout_18,calc_pout_17,calc_pout_16}; // @[NV_NVDLA_CACC_calculator_for_check.scala 201:44:@4504.4]
  assign _T_826 = {calc_pout_31,calc_pout_30,calc_pout_29,calc_pout_28,calc_pout_27,calc_pout_26,calc_pout_25,calc_pout_24,_T_817,_T_810}; // @[NV_NVDLA_CACC_calculator_for_check.scala 201:44:@4513.4]
  assign _T_835 = {calc_fout_7,calc_fout_6,calc_fout_5,calc_fout_4,calc_fout_3,calc_fout_2,calc_fout_1,calc_fout_0}; // @[NV_NVDLA_CACC_calculator_for_check.scala 204:40:@4525.4]
  assign _T_843 = {calc_fout_15,calc_fout_14,calc_fout_13,calc_fout_12,calc_fout_11,calc_fout_10,calc_fout_9,calc_fout_8,_T_835}; // @[NV_NVDLA_CACC_calculator_for_check.scala 204:40:@4533.4]
  assign _T_850 = {calc_fout_23,calc_fout_22,calc_fout_21,calc_fout_20,calc_fout_19,calc_fout_18,calc_fout_17,calc_fout_16}; // @[NV_NVDLA_CACC_calculator_for_check.scala 204:40:@4540.4]
  assign _T_859 = {calc_fout_31,calc_fout_30,calc_fout_29,calc_fout_28,calc_fout_27,calc_fout_26,calc_fout_25,calc_fout_24,_T_850,_T_843}; // @[NV_NVDLA_CACC_calculator_for_check.scala 204:40:@4549.4]
  assign _GEN_77 = calc_dlv_valid_out ? calc_stripe_end_out : dlv_stripe_end; // @[Reg.scala 20:19:@4562.4]
  assign _GEN_78 = calc_dlv_valid_out ? calc_layer_end_out : dlv_layer_end; // @[Reg.scala 20:19:@4566.4]
  assign dlv_sat_end = calc_layer_end_out & calc_stripe_end_out; // @[NV_NVDLA_CACC_calculator_for_check.scala 218:42:@4608.4]
  assign _T_1117 = ~ dlv_sat_end; // @[NV_NVDLA_CACC_calculator_for_check.scala 219:44:@4609.4]
  assign _T_1118 = calc_dlv_valid_out & _T_1117; // @[NV_NVDLA_CACC_calculator_for_check.scala 219:42:@4610.4]
  assign dlv_sat_clr = _T_1118 & dlv_sat_end_d1; // @[NV_NVDLA_CACC_calculator_for_check.scala 219:57:@4611.4]
  assign _GEN_79 = calc_dlv_valid_out ? dlv_sat_end : dlv_sat_end_d1; // @[NV_NVDLA_CACC_calculator_for_check.scala 222:29:@4613.4]
  assign calc_fout_sat_0 = NV_soDLA_CACC_CALC_int8_out_final_sat; // @[NV_NVDLA_CACC_calculator_for_check.scala 106:29:@3560.4 NV_NVDLA_CACC_calculator_for_check.scala 123:26:@3669.4]
  assign _GEN_80 = calc_dlv_valid_out ? calc_fout_sat_0 : dlv_sat_bit_d1_0; // @[NV_NVDLA_CACC_calculator_for_check.scala 222:29:@4613.4]
  assign calc_fout_sat_1 = NV_soDLA_CACC_CALC_int8_1_out_final_sat; // @[NV_NVDLA_CACC_calculator_for_check.scala 106:29:@3560.4 NV_NVDLA_CACC_calculator_for_check.scala 123:26:@3681.4]
  assign _GEN_81 = calc_dlv_valid_out ? calc_fout_sat_1 : dlv_sat_bit_d1_1; // @[NV_NVDLA_CACC_calculator_for_check.scala 222:29:@4613.4]
  assign calc_fout_sat_2 = NV_soDLA_CACC_CALC_int8_2_out_final_sat; // @[NV_NVDLA_CACC_calculator_for_check.scala 106:29:@3560.4 NV_NVDLA_CACC_calculator_for_check.scala 123:26:@3693.4]
  assign _GEN_82 = calc_dlv_valid_out ? calc_fout_sat_2 : dlv_sat_bit_d1_2; // @[NV_NVDLA_CACC_calculator_for_check.scala 222:29:@4613.4]
  assign calc_fout_sat_3 = NV_soDLA_CACC_CALC_int8_3_out_final_sat; // @[NV_NVDLA_CACC_calculator_for_check.scala 106:29:@3560.4 NV_NVDLA_CACC_calculator_for_check.scala 123:26:@3705.4]
  assign _GEN_83 = calc_dlv_valid_out ? calc_fout_sat_3 : dlv_sat_bit_d1_3; // @[NV_NVDLA_CACC_calculator_for_check.scala 222:29:@4613.4]
  assign calc_fout_sat_4 = NV_soDLA_CACC_CALC_int8_4_out_final_sat; // @[NV_NVDLA_CACC_calculator_for_check.scala 106:29:@3560.4 NV_NVDLA_CACC_calculator_for_check.scala 123:26:@3717.4]
  assign _GEN_84 = calc_dlv_valid_out ? calc_fout_sat_4 : dlv_sat_bit_d1_4; // @[NV_NVDLA_CACC_calculator_for_check.scala 222:29:@4613.4]
  assign calc_fout_sat_5 = NV_soDLA_CACC_CALC_int8_5_out_final_sat; // @[NV_NVDLA_CACC_calculator_for_check.scala 106:29:@3560.4 NV_NVDLA_CACC_calculator_for_check.scala 123:26:@3729.4]
  assign _GEN_85 = calc_dlv_valid_out ? calc_fout_sat_5 : dlv_sat_bit_d1_5; // @[NV_NVDLA_CACC_calculator_for_check.scala 222:29:@4613.4]
  assign calc_fout_sat_6 = NV_soDLA_CACC_CALC_int8_6_out_final_sat; // @[NV_NVDLA_CACC_calculator_for_check.scala 106:29:@3560.4 NV_NVDLA_CACC_calculator_for_check.scala 123:26:@3741.4]
  assign _GEN_86 = calc_dlv_valid_out ? calc_fout_sat_6 : dlv_sat_bit_d1_6; // @[NV_NVDLA_CACC_calculator_for_check.scala 222:29:@4613.4]
  assign calc_fout_sat_7 = NV_soDLA_CACC_CALC_int8_7_out_final_sat; // @[NV_NVDLA_CACC_calculator_for_check.scala 106:29:@3560.4 NV_NVDLA_CACC_calculator_for_check.scala 123:26:@3753.4]
  assign _GEN_87 = calc_dlv_valid_out ? calc_fout_sat_7 : dlv_sat_bit_d1_7; // @[NV_NVDLA_CACC_calculator_for_check.scala 222:29:@4613.4]
  assign calc_fout_sat_8 = NV_soDLA_CACC_CALC_int8_8_out_final_sat; // @[NV_NVDLA_CACC_calculator_for_check.scala 106:29:@3560.4 NV_NVDLA_CACC_calculator_for_check.scala 123:26:@3765.4]
  assign _GEN_88 = calc_dlv_valid_out ? calc_fout_sat_8 : dlv_sat_bit_d1_8; // @[NV_NVDLA_CACC_calculator_for_check.scala 222:29:@4613.4]
  assign calc_fout_sat_9 = NV_soDLA_CACC_CALC_int8_9_out_final_sat; // @[NV_NVDLA_CACC_calculator_for_check.scala 106:29:@3560.4 NV_NVDLA_CACC_calculator_for_check.scala 123:26:@3777.4]
  assign _GEN_89 = calc_dlv_valid_out ? calc_fout_sat_9 : dlv_sat_bit_d1_9; // @[NV_NVDLA_CACC_calculator_for_check.scala 222:29:@4613.4]
  assign calc_fout_sat_10 = NV_soDLA_CACC_CALC_int8_10_out_final_sat; // @[NV_NVDLA_CACC_calculator_for_check.scala 106:29:@3560.4 NV_NVDLA_CACC_calculator_for_check.scala 123:26:@3789.4]
  assign _GEN_90 = calc_dlv_valid_out ? calc_fout_sat_10 : dlv_sat_bit_d1_10; // @[NV_NVDLA_CACC_calculator_for_check.scala 222:29:@4613.4]
  assign calc_fout_sat_11 = NV_soDLA_CACC_CALC_int8_11_out_final_sat; // @[NV_NVDLA_CACC_calculator_for_check.scala 106:29:@3560.4 NV_NVDLA_CACC_calculator_for_check.scala 123:26:@3801.4]
  assign _GEN_91 = calc_dlv_valid_out ? calc_fout_sat_11 : dlv_sat_bit_d1_11; // @[NV_NVDLA_CACC_calculator_for_check.scala 222:29:@4613.4]
  assign calc_fout_sat_12 = NV_soDLA_CACC_CALC_int8_12_out_final_sat; // @[NV_NVDLA_CACC_calculator_for_check.scala 106:29:@3560.4 NV_NVDLA_CACC_calculator_for_check.scala 123:26:@3813.4]
  assign _GEN_92 = calc_dlv_valid_out ? calc_fout_sat_12 : dlv_sat_bit_d1_12; // @[NV_NVDLA_CACC_calculator_for_check.scala 222:29:@4613.4]
  assign calc_fout_sat_13 = NV_soDLA_CACC_CALC_int8_13_out_final_sat; // @[NV_NVDLA_CACC_calculator_for_check.scala 106:29:@3560.4 NV_NVDLA_CACC_calculator_for_check.scala 123:26:@3825.4]
  assign _GEN_93 = calc_dlv_valid_out ? calc_fout_sat_13 : dlv_sat_bit_d1_13; // @[NV_NVDLA_CACC_calculator_for_check.scala 222:29:@4613.4]
  assign calc_fout_sat_14 = NV_soDLA_CACC_CALC_int8_14_out_final_sat; // @[NV_NVDLA_CACC_calculator_for_check.scala 106:29:@3560.4 NV_NVDLA_CACC_calculator_for_check.scala 123:26:@3837.4]
  assign _GEN_94 = calc_dlv_valid_out ? calc_fout_sat_14 : dlv_sat_bit_d1_14; // @[NV_NVDLA_CACC_calculator_for_check.scala 222:29:@4613.4]
  assign calc_fout_sat_15 = NV_soDLA_CACC_CALC_int8_15_out_final_sat; // @[NV_NVDLA_CACC_calculator_for_check.scala 106:29:@3560.4 NV_NVDLA_CACC_calculator_for_check.scala 123:26:@3849.4]
  assign _GEN_95 = calc_dlv_valid_out ? calc_fout_sat_15 : dlv_sat_bit_d1_15; // @[NV_NVDLA_CACC_calculator_for_check.scala 222:29:@4613.4]
  assign calc_fout_sat_16 = NV_soDLA_CACC_CALC_int8_16_out_final_sat; // @[NV_NVDLA_CACC_calculator_for_check.scala 106:29:@3560.4 NV_NVDLA_CACC_calculator_for_check.scala 123:26:@3861.4]
  assign _GEN_96 = calc_dlv_valid_out ? calc_fout_sat_16 : dlv_sat_bit_d1_16; // @[NV_NVDLA_CACC_calculator_for_check.scala 222:29:@4613.4]
  assign calc_fout_sat_17 = NV_soDLA_CACC_CALC_int8_17_out_final_sat; // @[NV_NVDLA_CACC_calculator_for_check.scala 106:29:@3560.4 NV_NVDLA_CACC_calculator_for_check.scala 123:26:@3873.4]
  assign _GEN_97 = calc_dlv_valid_out ? calc_fout_sat_17 : dlv_sat_bit_d1_17; // @[NV_NVDLA_CACC_calculator_for_check.scala 222:29:@4613.4]
  assign calc_fout_sat_18 = NV_soDLA_CACC_CALC_int8_18_out_final_sat; // @[NV_NVDLA_CACC_calculator_for_check.scala 106:29:@3560.4 NV_NVDLA_CACC_calculator_for_check.scala 123:26:@3885.4]
  assign _GEN_98 = calc_dlv_valid_out ? calc_fout_sat_18 : dlv_sat_bit_d1_18; // @[NV_NVDLA_CACC_calculator_for_check.scala 222:29:@4613.4]
  assign calc_fout_sat_19 = NV_soDLA_CACC_CALC_int8_19_out_final_sat; // @[NV_NVDLA_CACC_calculator_for_check.scala 106:29:@3560.4 NV_NVDLA_CACC_calculator_for_check.scala 123:26:@3897.4]
  assign _GEN_99 = calc_dlv_valid_out ? calc_fout_sat_19 : dlv_sat_bit_d1_19; // @[NV_NVDLA_CACC_calculator_for_check.scala 222:29:@4613.4]
  assign calc_fout_sat_20 = NV_soDLA_CACC_CALC_int8_20_out_final_sat; // @[NV_NVDLA_CACC_calculator_for_check.scala 106:29:@3560.4 NV_NVDLA_CACC_calculator_for_check.scala 123:26:@3909.4]
  assign _GEN_100 = calc_dlv_valid_out ? calc_fout_sat_20 : dlv_sat_bit_d1_20; // @[NV_NVDLA_CACC_calculator_for_check.scala 222:29:@4613.4]
  assign calc_fout_sat_21 = NV_soDLA_CACC_CALC_int8_21_out_final_sat; // @[NV_NVDLA_CACC_calculator_for_check.scala 106:29:@3560.4 NV_NVDLA_CACC_calculator_for_check.scala 123:26:@3921.4]
  assign _GEN_101 = calc_dlv_valid_out ? calc_fout_sat_21 : dlv_sat_bit_d1_21; // @[NV_NVDLA_CACC_calculator_for_check.scala 222:29:@4613.4]
  assign calc_fout_sat_22 = NV_soDLA_CACC_CALC_int8_22_out_final_sat; // @[NV_NVDLA_CACC_calculator_for_check.scala 106:29:@3560.4 NV_NVDLA_CACC_calculator_for_check.scala 123:26:@3933.4]
  assign _GEN_102 = calc_dlv_valid_out ? calc_fout_sat_22 : dlv_sat_bit_d1_22; // @[NV_NVDLA_CACC_calculator_for_check.scala 222:29:@4613.4]
  assign calc_fout_sat_23 = NV_soDLA_CACC_CALC_int8_23_out_final_sat; // @[NV_NVDLA_CACC_calculator_for_check.scala 106:29:@3560.4 NV_NVDLA_CACC_calculator_for_check.scala 123:26:@3945.4]
  assign _GEN_103 = calc_dlv_valid_out ? calc_fout_sat_23 : dlv_sat_bit_d1_23; // @[NV_NVDLA_CACC_calculator_for_check.scala 222:29:@4613.4]
  assign calc_fout_sat_24 = NV_soDLA_CACC_CALC_int8_24_out_final_sat; // @[NV_NVDLA_CACC_calculator_for_check.scala 106:29:@3560.4 NV_NVDLA_CACC_calculator_for_check.scala 123:26:@3957.4]
  assign _GEN_104 = calc_dlv_valid_out ? calc_fout_sat_24 : dlv_sat_bit_d1_24; // @[NV_NVDLA_CACC_calculator_for_check.scala 222:29:@4613.4]
  assign calc_fout_sat_25 = NV_soDLA_CACC_CALC_int8_25_out_final_sat; // @[NV_NVDLA_CACC_calculator_for_check.scala 106:29:@3560.4 NV_NVDLA_CACC_calculator_for_check.scala 123:26:@3969.4]
  assign _GEN_105 = calc_dlv_valid_out ? calc_fout_sat_25 : dlv_sat_bit_d1_25; // @[NV_NVDLA_CACC_calculator_for_check.scala 222:29:@4613.4]
  assign calc_fout_sat_26 = NV_soDLA_CACC_CALC_int8_26_out_final_sat; // @[NV_NVDLA_CACC_calculator_for_check.scala 106:29:@3560.4 NV_NVDLA_CACC_calculator_for_check.scala 123:26:@3981.4]
  assign _GEN_106 = calc_dlv_valid_out ? calc_fout_sat_26 : dlv_sat_bit_d1_26; // @[NV_NVDLA_CACC_calculator_for_check.scala 222:29:@4613.4]
  assign calc_fout_sat_27 = NV_soDLA_CACC_CALC_int8_27_out_final_sat; // @[NV_NVDLA_CACC_calculator_for_check.scala 106:29:@3560.4 NV_NVDLA_CACC_calculator_for_check.scala 123:26:@3993.4]
  assign _GEN_107 = calc_dlv_valid_out ? calc_fout_sat_27 : dlv_sat_bit_d1_27; // @[NV_NVDLA_CACC_calculator_for_check.scala 222:29:@4613.4]
  assign calc_fout_sat_28 = NV_soDLA_CACC_CALC_int8_28_out_final_sat; // @[NV_NVDLA_CACC_calculator_for_check.scala 106:29:@3560.4 NV_NVDLA_CACC_calculator_for_check.scala 123:26:@4005.4]
  assign _GEN_108 = calc_dlv_valid_out ? calc_fout_sat_28 : dlv_sat_bit_d1_28; // @[NV_NVDLA_CACC_calculator_for_check.scala 222:29:@4613.4]
  assign calc_fout_sat_29 = NV_soDLA_CACC_CALC_int8_29_out_final_sat; // @[NV_NVDLA_CACC_calculator_for_check.scala 106:29:@3560.4 NV_NVDLA_CACC_calculator_for_check.scala 123:26:@4017.4]
  assign _GEN_109 = calc_dlv_valid_out ? calc_fout_sat_29 : dlv_sat_bit_d1_29; // @[NV_NVDLA_CACC_calculator_for_check.scala 222:29:@4613.4]
  assign calc_fout_sat_30 = NV_soDLA_CACC_CALC_int8_30_out_final_sat; // @[NV_NVDLA_CACC_calculator_for_check.scala 106:29:@3560.4 NV_NVDLA_CACC_calculator_for_check.scala 123:26:@4029.4]
  assign _GEN_110 = calc_dlv_valid_out ? calc_fout_sat_30 : dlv_sat_bit_d1_30; // @[NV_NVDLA_CACC_calculator_for_check.scala 222:29:@4613.4]
  assign calc_fout_sat_31 = NV_soDLA_CACC_CALC_int8_31_out_final_sat; // @[NV_NVDLA_CACC_calculator_for_check.scala 106:29:@3560.4 NV_NVDLA_CACC_calculator_for_check.scala 123:26:@4041.4]
  assign _GEN_111 = calc_dlv_valid_out ? calc_fout_sat_31 : dlv_sat_bit_d1_31; // @[NV_NVDLA_CACC_calculator_for_check.scala 222:29:@4613.4]
  assign _T_1157 = dlv_sat_bit_d1_0 + dlv_sat_bit_d1_1; // @[NV_NVDLA_CACC_calculator_for_check.scala 227:98:@4682.4]
  assign _GEN_113 = {{1'd0}, dlv_sat_bit_d1_2}; // @[NV_NVDLA_CACC_calculator_for_check.scala 227:98:@4683.4]
  assign _T_1158 = _T_1157 + _GEN_113; // @[NV_NVDLA_CACC_calculator_for_check.scala 227:98:@4683.4]
  assign _GEN_114 = {{2'd0}, dlv_sat_bit_d1_3}; // @[NV_NVDLA_CACC_calculator_for_check.scala 227:98:@4684.4]
  assign _T_1159 = _T_1158 + _GEN_114; // @[NV_NVDLA_CACC_calculator_for_check.scala 227:98:@4684.4]
  assign _GEN_115 = {{3'd0}, dlv_sat_bit_d1_4}; // @[NV_NVDLA_CACC_calculator_for_check.scala 227:98:@4685.4]
  assign _T_1160 = _T_1159 + _GEN_115; // @[NV_NVDLA_CACC_calculator_for_check.scala 227:98:@4685.4]
  assign _GEN_116 = {{4'd0}, dlv_sat_bit_d1_5}; // @[NV_NVDLA_CACC_calculator_for_check.scala 227:98:@4686.4]
  assign _T_1161 = _T_1160 + _GEN_116; // @[NV_NVDLA_CACC_calculator_for_check.scala 227:98:@4686.4]
  assign _GEN_117 = {{5'd0}, dlv_sat_bit_d1_6}; // @[NV_NVDLA_CACC_calculator_for_check.scala 227:98:@4687.4]
  assign _T_1162 = _T_1161 + _GEN_117; // @[NV_NVDLA_CACC_calculator_for_check.scala 227:98:@4687.4]
  assign _GEN_118 = {{6'd0}, dlv_sat_bit_d1_7}; // @[NV_NVDLA_CACC_calculator_for_check.scala 227:98:@4688.4]
  assign _T_1163 = _T_1162 + _GEN_118; // @[NV_NVDLA_CACC_calculator_for_check.scala 227:98:@4688.4]
  assign _GEN_119 = {{7'd0}, dlv_sat_bit_d1_8}; // @[NV_NVDLA_CACC_calculator_for_check.scala 227:98:@4689.4]
  assign _T_1164 = _T_1163 + _GEN_119; // @[NV_NVDLA_CACC_calculator_for_check.scala 227:98:@4689.4]
  assign _GEN_120 = {{8'd0}, dlv_sat_bit_d1_9}; // @[NV_NVDLA_CACC_calculator_for_check.scala 227:98:@4690.4]
  assign _T_1165 = _T_1164 + _GEN_120; // @[NV_NVDLA_CACC_calculator_for_check.scala 227:98:@4690.4]
  assign _GEN_121 = {{9'd0}, dlv_sat_bit_d1_10}; // @[NV_NVDLA_CACC_calculator_for_check.scala 227:98:@4691.4]
  assign _T_1166 = _T_1165 + _GEN_121; // @[NV_NVDLA_CACC_calculator_for_check.scala 227:98:@4691.4]
  assign _GEN_122 = {{10'd0}, dlv_sat_bit_d1_11}; // @[NV_NVDLA_CACC_calculator_for_check.scala 227:98:@4692.4]
  assign _T_1167 = _T_1166 + _GEN_122; // @[NV_NVDLA_CACC_calculator_for_check.scala 227:98:@4692.4]
  assign _GEN_123 = {{11'd0}, dlv_sat_bit_d1_12}; // @[NV_NVDLA_CACC_calculator_for_check.scala 227:98:@4693.4]
  assign _T_1168 = _T_1167 + _GEN_123; // @[NV_NVDLA_CACC_calculator_for_check.scala 227:98:@4693.4]
  assign _GEN_124 = {{12'd0}, dlv_sat_bit_d1_13}; // @[NV_NVDLA_CACC_calculator_for_check.scala 227:98:@4694.4]
  assign _T_1169 = _T_1168 + _GEN_124; // @[NV_NVDLA_CACC_calculator_for_check.scala 227:98:@4694.4]
  assign _GEN_125 = {{13'd0}, dlv_sat_bit_d1_14}; // @[NV_NVDLA_CACC_calculator_for_check.scala 227:98:@4695.4]
  assign _T_1170 = _T_1169 + _GEN_125; // @[NV_NVDLA_CACC_calculator_for_check.scala 227:98:@4695.4]
  assign _GEN_126 = {{14'd0}, dlv_sat_bit_d1_15}; // @[NV_NVDLA_CACC_calculator_for_check.scala 227:98:@4696.4]
  assign _T_1171 = _T_1170 + _GEN_126; // @[NV_NVDLA_CACC_calculator_for_check.scala 227:98:@4696.4]
  assign _GEN_127 = {{15'd0}, dlv_sat_bit_d1_16}; // @[NV_NVDLA_CACC_calculator_for_check.scala 227:98:@4697.4]
  assign _T_1172 = _T_1171 + _GEN_127; // @[NV_NVDLA_CACC_calculator_for_check.scala 227:98:@4697.4]
  assign _GEN_128 = {{16'd0}, dlv_sat_bit_d1_17}; // @[NV_NVDLA_CACC_calculator_for_check.scala 227:98:@4698.4]
  assign _T_1173 = _T_1172 + _GEN_128; // @[NV_NVDLA_CACC_calculator_for_check.scala 227:98:@4698.4]
  assign _GEN_129 = {{17'd0}, dlv_sat_bit_d1_18}; // @[NV_NVDLA_CACC_calculator_for_check.scala 227:98:@4699.4]
  assign _T_1174 = _T_1173 + _GEN_129; // @[NV_NVDLA_CACC_calculator_for_check.scala 227:98:@4699.4]
  assign _GEN_130 = {{18'd0}, dlv_sat_bit_d1_19}; // @[NV_NVDLA_CACC_calculator_for_check.scala 227:98:@4700.4]
  assign _T_1175 = _T_1174 + _GEN_130; // @[NV_NVDLA_CACC_calculator_for_check.scala 227:98:@4700.4]
  assign _GEN_131 = {{19'd0}, dlv_sat_bit_d1_20}; // @[NV_NVDLA_CACC_calculator_for_check.scala 227:98:@4701.4]
  assign _T_1176 = _T_1175 + _GEN_131; // @[NV_NVDLA_CACC_calculator_for_check.scala 227:98:@4701.4]
  assign _GEN_132 = {{20'd0}, dlv_sat_bit_d1_21}; // @[NV_NVDLA_CACC_calculator_for_check.scala 227:98:@4702.4]
  assign _T_1177 = _T_1176 + _GEN_132; // @[NV_NVDLA_CACC_calculator_for_check.scala 227:98:@4702.4]
  assign _GEN_133 = {{21'd0}, dlv_sat_bit_d1_22}; // @[NV_NVDLA_CACC_calculator_for_check.scala 227:98:@4703.4]
  assign _T_1178 = _T_1177 + _GEN_133; // @[NV_NVDLA_CACC_calculator_for_check.scala 227:98:@4703.4]
  assign _GEN_134 = {{22'd0}, dlv_sat_bit_d1_23}; // @[NV_NVDLA_CACC_calculator_for_check.scala 227:98:@4704.4]
  assign _T_1179 = _T_1178 + _GEN_134; // @[NV_NVDLA_CACC_calculator_for_check.scala 227:98:@4704.4]
  assign _GEN_135 = {{23'd0}, dlv_sat_bit_d1_24}; // @[NV_NVDLA_CACC_calculator_for_check.scala 227:98:@4705.4]
  assign _T_1180 = _T_1179 + _GEN_135; // @[NV_NVDLA_CACC_calculator_for_check.scala 227:98:@4705.4]
  assign _GEN_136 = {{24'd0}, dlv_sat_bit_d1_25}; // @[NV_NVDLA_CACC_calculator_for_check.scala 227:98:@4706.4]
  assign _T_1181 = _T_1180 + _GEN_136; // @[NV_NVDLA_CACC_calculator_for_check.scala 227:98:@4706.4]
  assign _GEN_137 = {{25'd0}, dlv_sat_bit_d1_26}; // @[NV_NVDLA_CACC_calculator_for_check.scala 227:98:@4707.4]
  assign _T_1182 = _T_1181 + _GEN_137; // @[NV_NVDLA_CACC_calculator_for_check.scala 227:98:@4707.4]
  assign _GEN_138 = {{26'd0}, dlv_sat_bit_d1_27}; // @[NV_NVDLA_CACC_calculator_for_check.scala 227:98:@4708.4]
  assign _T_1183 = _T_1182 + _GEN_138; // @[NV_NVDLA_CACC_calculator_for_check.scala 227:98:@4708.4]
  assign _GEN_139 = {{27'd0}, dlv_sat_bit_d1_28}; // @[NV_NVDLA_CACC_calculator_for_check.scala 227:98:@4709.4]
  assign _T_1184 = _T_1183 + _GEN_139; // @[NV_NVDLA_CACC_calculator_for_check.scala 227:98:@4709.4]
  assign _GEN_140 = {{28'd0}, dlv_sat_bit_d1_29}; // @[NV_NVDLA_CACC_calculator_for_check.scala 227:98:@4710.4]
  assign _T_1185 = _T_1184 + _GEN_140; // @[NV_NVDLA_CACC_calculator_for_check.scala 227:98:@4710.4]
  assign _GEN_141 = {{29'd0}, dlv_sat_bit_d1_30}; // @[NV_NVDLA_CACC_calculator_for_check.scala 227:98:@4711.4]
  assign _T_1186 = _T_1185 + _GEN_141; // @[NV_NVDLA_CACC_calculator_for_check.scala 227:98:@4711.4]
  assign _GEN_142 = {{30'd0}, dlv_sat_bit_d1_31}; // @[NV_NVDLA_CACC_calculator_for_check.scala 227:98:@4712.4]
  assign sat_sum = _T_1186 + _GEN_142; // @[NV_NVDLA_CACC_calculator_for_check.scala 227:98:@4712.4]
  assign _T_1189 = sat_count + sat_sum; // @[NV_NVDLA_CACC_calculator_for_check.scala 230:36:@4714.4]
  assign sat_count_inc = _T_1189[31:0]; // @[NV_NVDLA_CACC_calculator_for_check.scala 230:47:@4715.4]
  assign sat_carry = _T_1189[32]; // @[NV_NVDLA_CACC_calculator_for_check.scala 231:43:@4717.4]
  assign _T_1192 = {24'h0,sat_sum}; // @[Cat.scala 30:58:@4718.4]
  assign _T_1198 = sat_carry ? 32'hffffffff : sat_count_inc; // @[NV_NVDLA_CACC_calculator_for_check.scala 233:26:@4720.4]
  assign sat_count_w = dlv_sat_clr_d1 ? _T_1192 : {{24'd0}, _T_1198}; // @[NV_NVDLA_CACC_calculator_for_check.scala 232:26:@4721.4]
  assign _T_1200 = sat_sum != 32'h0; // @[NV_NVDLA_CACC_calculator_for_check.scala 234:49:@4722.4]
  assign _T_1201 = _T_1200 | dlv_sat_clr_d1; // @[NV_NVDLA_CACC_calculator_for_check.scala 234:54:@4723.4]
  assign sat_reg_en = dlv_sat_vld_d1 & _T_1201; // @[NV_NVDLA_CACC_calculator_for_check.scala 234:37:@4724.4]
  assign _GEN_112 = sat_reg_en ? sat_count_w : {{24'd0}, sat_count}; // @[NV_NVDLA_CACC_calculator_for_check.scala 235:21:@4725.4]
  assign abuf_wr_en = _T_793; // @[NV_NVDLA_CACC_calculator_for_check.scala 199:27:@4477.4]
  assign abuf_wr_addr = _T_795; // @[NV_NVDLA_CACC_calculator_for_check.scala 200:26:@4482.4]
  assign abuf_wr_data = _T_828; // @[NV_NVDLA_CACC_calculator_for_check.scala 201:21:@4518.4]
  assign dlv_valid = _T_864; // @[NV_NVDLA_CACC_calculator_for_check.scala 205:18:@4557.4]
  assign dlv_mask = _T_867; // @[NV_NVDLA_CACC_calculator_for_check.scala 206:17:@4560.4]
  assign dlv_data = _T_861; // @[NV_NVDLA_CACC_calculator_for_check.scala 204:17:@4554.4]
  assign dlv_pd = {dlv_layer_end,dlv_stripe_end}; // @[NV_NVDLA_CACC_calculator_for_check.scala 209:15:@4570.4]
  assign dp2reg_sat_count = sat_count; // @[NV_NVDLA_CACC_calculator_for_check.scala 239:25:@4728.4]
  assign NV_soDLA_CACC_CALC_int8_reset = nvdla_core_rstn == 1'h0; // @[:@3567.4]
  assign NV_soDLA_CACC_CALC_int8_nvdla_core_clk = nvdla_cell_clk; // @[NV_NVDLA_CACC_calculator_for_check.scala 115:42:@3661.4]
  assign NV_soDLA_CACC_CALC_int8_cfg_truncate = cfg_truncate; // @[NV_NVDLA_CACC_calculator_for_check.scala 116:40:@3662.4]
  assign NV_soDLA_CACC_CALC_int8_in_data = mac_a2accu_data0; // @[NV_NVDLA_CACC_calculator_for_check.scala 117:35:@3663.4]
  assign NV_soDLA_CACC_CALC_int8_in_op = abuf_rd_data[33:0]; // @[NV_NVDLA_CACC_calculator_for_check.scala 118:33:@3664.4]
  assign NV_soDLA_CACC_CALC_int8_in_op_valid = calc_in_mask_0 & accu_ctrl_ram_valid; // @[NV_NVDLA_CACC_calculator_for_check.scala 119:39:@3665.4]
  assign NV_soDLA_CACC_CALC_int8_in_sel = calc_valid & calc_channel_end; // @[NV_NVDLA_CACC_calculator_for_check.scala 120:34:@3666.4]
  assign NV_soDLA_CACC_CALC_int8_in_valid = mac_a2accu_mask[0]; // @[NV_NVDLA_CACC_calculator_for_check.scala 121:36:@3667.4]
  assign NV_soDLA_CACC_CALC_int8_1_reset = nvdla_core_rstn == 1'h0; // @[:@3570.4]
  assign NV_soDLA_CACC_CALC_int8_1_nvdla_core_clk = nvdla_cell_clk; // @[NV_NVDLA_CACC_calculator_for_check.scala 115:42:@3673.4]
  assign NV_soDLA_CACC_CALC_int8_1_cfg_truncate = cfg_truncate; // @[NV_NVDLA_CACC_calculator_for_check.scala 116:40:@3674.4]
  assign NV_soDLA_CACC_CALC_int8_1_in_data = mac_a2accu_data1; // @[NV_NVDLA_CACC_calculator_for_check.scala 117:35:@3675.4]
  assign NV_soDLA_CACC_CALC_int8_1_in_op = abuf_rd_data[67:34]; // @[NV_NVDLA_CACC_calculator_for_check.scala 118:33:@3676.4]
  assign NV_soDLA_CACC_CALC_int8_1_in_op_valid = calc_in_mask_1 & accu_ctrl_ram_valid; // @[NV_NVDLA_CACC_calculator_for_check.scala 119:39:@3677.4]
  assign NV_soDLA_CACC_CALC_int8_1_in_sel = calc_valid & calc_channel_end; // @[NV_NVDLA_CACC_calculator_for_check.scala 120:34:@3678.4]
  assign NV_soDLA_CACC_CALC_int8_1_in_valid = mac_a2accu_mask[1]; // @[NV_NVDLA_CACC_calculator_for_check.scala 121:36:@3679.4]
  assign NV_soDLA_CACC_CALC_int8_2_reset = nvdla_core_rstn == 1'h0; // @[:@3573.4]
  assign NV_soDLA_CACC_CALC_int8_2_nvdla_core_clk = nvdla_cell_clk; // @[NV_NVDLA_CACC_calculator_for_check.scala 115:42:@3685.4]
  assign NV_soDLA_CACC_CALC_int8_2_cfg_truncate = cfg_truncate; // @[NV_NVDLA_CACC_calculator_for_check.scala 116:40:@3686.4]
  assign NV_soDLA_CACC_CALC_int8_2_in_data = mac_a2accu_data2; // @[NV_NVDLA_CACC_calculator_for_check.scala 117:35:@3687.4]
  assign NV_soDLA_CACC_CALC_int8_2_in_op = abuf_rd_data[101:68]; // @[NV_NVDLA_CACC_calculator_for_check.scala 118:33:@3688.4]
  assign NV_soDLA_CACC_CALC_int8_2_in_op_valid = calc_in_mask_2 & accu_ctrl_ram_valid; // @[NV_NVDLA_CACC_calculator_for_check.scala 119:39:@3689.4]
  assign NV_soDLA_CACC_CALC_int8_2_in_sel = calc_valid & calc_channel_end; // @[NV_NVDLA_CACC_calculator_for_check.scala 120:34:@3690.4]
  assign NV_soDLA_CACC_CALC_int8_2_in_valid = mac_a2accu_mask[2]; // @[NV_NVDLA_CACC_calculator_for_check.scala 121:36:@3691.4]
  assign NV_soDLA_CACC_CALC_int8_3_reset = nvdla_core_rstn == 1'h0; // @[:@3576.4]
  assign NV_soDLA_CACC_CALC_int8_3_nvdla_core_clk = nvdla_cell_clk; // @[NV_NVDLA_CACC_calculator_for_check.scala 115:42:@3697.4]
  assign NV_soDLA_CACC_CALC_int8_3_cfg_truncate = cfg_truncate; // @[NV_NVDLA_CACC_calculator_for_check.scala 116:40:@3698.4]
  assign NV_soDLA_CACC_CALC_int8_3_in_data = mac_a2accu_data3; // @[NV_NVDLA_CACC_calculator_for_check.scala 117:35:@3699.4]
  assign NV_soDLA_CACC_CALC_int8_3_in_op = abuf_rd_data[135:102]; // @[NV_NVDLA_CACC_calculator_for_check.scala 118:33:@3700.4]
  assign NV_soDLA_CACC_CALC_int8_3_in_op_valid = calc_in_mask_3 & accu_ctrl_ram_valid; // @[NV_NVDLA_CACC_calculator_for_check.scala 119:39:@3701.4]
  assign NV_soDLA_CACC_CALC_int8_3_in_sel = calc_valid & calc_channel_end; // @[NV_NVDLA_CACC_calculator_for_check.scala 120:34:@3702.4]
  assign NV_soDLA_CACC_CALC_int8_3_in_valid = mac_a2accu_mask[3]; // @[NV_NVDLA_CACC_calculator_for_check.scala 121:36:@3703.4]
  assign NV_soDLA_CACC_CALC_int8_4_reset = nvdla_core_rstn == 1'h0; // @[:@3579.4]
  assign NV_soDLA_CACC_CALC_int8_4_nvdla_core_clk = nvdla_cell_clk; // @[NV_NVDLA_CACC_calculator_for_check.scala 115:42:@3709.4]
  assign NV_soDLA_CACC_CALC_int8_4_cfg_truncate = cfg_truncate; // @[NV_NVDLA_CACC_calculator_for_check.scala 116:40:@3710.4]
  assign NV_soDLA_CACC_CALC_int8_4_in_data = mac_a2accu_data4; // @[NV_NVDLA_CACC_calculator_for_check.scala 117:35:@3711.4]
  assign NV_soDLA_CACC_CALC_int8_4_in_op = abuf_rd_data[169:136]; // @[NV_NVDLA_CACC_calculator_for_check.scala 118:33:@3712.4]
  assign NV_soDLA_CACC_CALC_int8_4_in_op_valid = calc_in_mask_4 & accu_ctrl_ram_valid; // @[NV_NVDLA_CACC_calculator_for_check.scala 119:39:@3713.4]
  assign NV_soDLA_CACC_CALC_int8_4_in_sel = calc_valid & calc_channel_end; // @[NV_NVDLA_CACC_calculator_for_check.scala 120:34:@3714.4]
  assign NV_soDLA_CACC_CALC_int8_4_in_valid = mac_a2accu_mask[4]; // @[NV_NVDLA_CACC_calculator_for_check.scala 121:36:@3715.4]
  assign NV_soDLA_CACC_CALC_int8_5_reset = nvdla_core_rstn == 1'h0; // @[:@3582.4]
  assign NV_soDLA_CACC_CALC_int8_5_nvdla_core_clk = nvdla_cell_clk; // @[NV_NVDLA_CACC_calculator_for_check.scala 115:42:@3721.4]
  assign NV_soDLA_CACC_CALC_int8_5_cfg_truncate = cfg_truncate; // @[NV_NVDLA_CACC_calculator_for_check.scala 116:40:@3722.4]
  assign NV_soDLA_CACC_CALC_int8_5_in_data = mac_a2accu_data5; // @[NV_NVDLA_CACC_calculator_for_check.scala 117:35:@3723.4]
  assign NV_soDLA_CACC_CALC_int8_5_in_op = abuf_rd_data[203:170]; // @[NV_NVDLA_CACC_calculator_for_check.scala 118:33:@3724.4]
  assign NV_soDLA_CACC_CALC_int8_5_in_op_valid = calc_in_mask_5 & accu_ctrl_ram_valid; // @[NV_NVDLA_CACC_calculator_for_check.scala 119:39:@3725.4]
  assign NV_soDLA_CACC_CALC_int8_5_in_sel = calc_valid & calc_channel_end; // @[NV_NVDLA_CACC_calculator_for_check.scala 120:34:@3726.4]
  assign NV_soDLA_CACC_CALC_int8_5_in_valid = mac_a2accu_mask[5]; // @[NV_NVDLA_CACC_calculator_for_check.scala 121:36:@3727.4]
  assign NV_soDLA_CACC_CALC_int8_6_reset = nvdla_core_rstn == 1'h0; // @[:@3585.4]
  assign NV_soDLA_CACC_CALC_int8_6_nvdla_core_clk = nvdla_cell_clk; // @[NV_NVDLA_CACC_calculator_for_check.scala 115:42:@3733.4]
  assign NV_soDLA_CACC_CALC_int8_6_cfg_truncate = cfg_truncate; // @[NV_NVDLA_CACC_calculator_for_check.scala 116:40:@3734.4]
  assign NV_soDLA_CACC_CALC_int8_6_in_data = mac_a2accu_data6; // @[NV_NVDLA_CACC_calculator_for_check.scala 117:35:@3735.4]
  assign NV_soDLA_CACC_CALC_int8_6_in_op = abuf_rd_data[237:204]; // @[NV_NVDLA_CACC_calculator_for_check.scala 118:33:@3736.4]
  assign NV_soDLA_CACC_CALC_int8_6_in_op_valid = calc_in_mask_6 & accu_ctrl_ram_valid; // @[NV_NVDLA_CACC_calculator_for_check.scala 119:39:@3737.4]
  assign NV_soDLA_CACC_CALC_int8_6_in_sel = calc_valid & calc_channel_end; // @[NV_NVDLA_CACC_calculator_for_check.scala 120:34:@3738.4]
  assign NV_soDLA_CACC_CALC_int8_6_in_valid = mac_a2accu_mask[6]; // @[NV_NVDLA_CACC_calculator_for_check.scala 121:36:@3739.4]
  assign NV_soDLA_CACC_CALC_int8_7_reset = nvdla_core_rstn == 1'h0; // @[:@3588.4]
  assign NV_soDLA_CACC_CALC_int8_7_nvdla_core_clk = nvdla_cell_clk; // @[NV_NVDLA_CACC_calculator_for_check.scala 115:42:@3745.4]
  assign NV_soDLA_CACC_CALC_int8_7_cfg_truncate = cfg_truncate; // @[NV_NVDLA_CACC_calculator_for_check.scala 116:40:@3746.4]
  assign NV_soDLA_CACC_CALC_int8_7_in_data = mac_a2accu_data7; // @[NV_NVDLA_CACC_calculator_for_check.scala 117:35:@3747.4]
  assign NV_soDLA_CACC_CALC_int8_7_in_op = abuf_rd_data[271:238]; // @[NV_NVDLA_CACC_calculator_for_check.scala 118:33:@3748.4]
  assign NV_soDLA_CACC_CALC_int8_7_in_op_valid = calc_in_mask_7 & accu_ctrl_ram_valid; // @[NV_NVDLA_CACC_calculator_for_check.scala 119:39:@3749.4]
  assign NV_soDLA_CACC_CALC_int8_7_in_sel = calc_valid & calc_channel_end; // @[NV_NVDLA_CACC_calculator_for_check.scala 120:34:@3750.4]
  assign NV_soDLA_CACC_CALC_int8_7_in_valid = mac_a2accu_mask[7]; // @[NV_NVDLA_CACC_calculator_for_check.scala 121:36:@3751.4]
  assign NV_soDLA_CACC_CALC_int8_8_reset = nvdla_core_rstn == 1'h0; // @[:@3591.4]
  assign NV_soDLA_CACC_CALC_int8_8_nvdla_core_clk = nvdla_cell_clk; // @[NV_NVDLA_CACC_calculator_for_check.scala 115:42:@3757.4]
  assign NV_soDLA_CACC_CALC_int8_8_cfg_truncate = cfg_truncate; // @[NV_NVDLA_CACC_calculator_for_check.scala 116:40:@3758.4]
  assign NV_soDLA_CACC_CALC_int8_8_in_data = mac_a2accu_data8; // @[NV_NVDLA_CACC_calculator_for_check.scala 117:35:@3759.4]
  assign NV_soDLA_CACC_CALC_int8_8_in_op = abuf_rd_data[305:272]; // @[NV_NVDLA_CACC_calculator_for_check.scala 118:33:@3760.4]
  assign NV_soDLA_CACC_CALC_int8_8_in_op_valid = calc_in_mask_8 & accu_ctrl_ram_valid; // @[NV_NVDLA_CACC_calculator_for_check.scala 119:39:@3761.4]
  assign NV_soDLA_CACC_CALC_int8_8_in_sel = calc_valid & calc_channel_end; // @[NV_NVDLA_CACC_calculator_for_check.scala 120:34:@3762.4]
  assign NV_soDLA_CACC_CALC_int8_8_in_valid = mac_a2accu_mask[8]; // @[NV_NVDLA_CACC_calculator_for_check.scala 121:36:@3763.4]
  assign NV_soDLA_CACC_CALC_int8_9_reset = nvdla_core_rstn == 1'h0; // @[:@3594.4]
  assign NV_soDLA_CACC_CALC_int8_9_nvdla_core_clk = nvdla_cell_clk; // @[NV_NVDLA_CACC_calculator_for_check.scala 115:42:@3769.4]
  assign NV_soDLA_CACC_CALC_int8_9_cfg_truncate = cfg_truncate; // @[NV_NVDLA_CACC_calculator_for_check.scala 116:40:@3770.4]
  assign NV_soDLA_CACC_CALC_int8_9_in_data = mac_a2accu_data9; // @[NV_NVDLA_CACC_calculator_for_check.scala 117:35:@3771.4]
  assign NV_soDLA_CACC_CALC_int8_9_in_op = abuf_rd_data[339:306]; // @[NV_NVDLA_CACC_calculator_for_check.scala 118:33:@3772.4]
  assign NV_soDLA_CACC_CALC_int8_9_in_op_valid = calc_in_mask_9 & accu_ctrl_ram_valid; // @[NV_NVDLA_CACC_calculator_for_check.scala 119:39:@3773.4]
  assign NV_soDLA_CACC_CALC_int8_9_in_sel = calc_valid & calc_channel_end; // @[NV_NVDLA_CACC_calculator_for_check.scala 120:34:@3774.4]
  assign NV_soDLA_CACC_CALC_int8_9_in_valid = mac_a2accu_mask[9]; // @[NV_NVDLA_CACC_calculator_for_check.scala 121:36:@3775.4]
  assign NV_soDLA_CACC_CALC_int8_10_reset = nvdla_core_rstn == 1'h0; // @[:@3597.4]
  assign NV_soDLA_CACC_CALC_int8_10_nvdla_core_clk = nvdla_cell_clk; // @[NV_NVDLA_CACC_calculator_for_check.scala 115:42:@3781.4]
  assign NV_soDLA_CACC_CALC_int8_10_cfg_truncate = cfg_truncate; // @[NV_NVDLA_CACC_calculator_for_check.scala 116:40:@3782.4]
  assign NV_soDLA_CACC_CALC_int8_10_in_data = mac_a2accu_data10; // @[NV_NVDLA_CACC_calculator_for_check.scala 117:35:@3783.4]
  assign NV_soDLA_CACC_CALC_int8_10_in_op = abuf_rd_data[373:340]; // @[NV_NVDLA_CACC_calculator_for_check.scala 118:33:@3784.4]
  assign NV_soDLA_CACC_CALC_int8_10_in_op_valid = calc_in_mask_10 & accu_ctrl_ram_valid; // @[NV_NVDLA_CACC_calculator_for_check.scala 119:39:@3785.4]
  assign NV_soDLA_CACC_CALC_int8_10_in_sel = calc_valid & calc_channel_end; // @[NV_NVDLA_CACC_calculator_for_check.scala 120:34:@3786.4]
  assign NV_soDLA_CACC_CALC_int8_10_in_valid = mac_a2accu_mask[10]; // @[NV_NVDLA_CACC_calculator_for_check.scala 121:36:@3787.4]
  assign NV_soDLA_CACC_CALC_int8_11_reset = nvdla_core_rstn == 1'h0; // @[:@3600.4]
  assign NV_soDLA_CACC_CALC_int8_11_nvdla_core_clk = nvdla_cell_clk; // @[NV_NVDLA_CACC_calculator_for_check.scala 115:42:@3793.4]
  assign NV_soDLA_CACC_CALC_int8_11_cfg_truncate = cfg_truncate; // @[NV_NVDLA_CACC_calculator_for_check.scala 116:40:@3794.4]
  assign NV_soDLA_CACC_CALC_int8_11_in_data = mac_a2accu_data11; // @[NV_NVDLA_CACC_calculator_for_check.scala 117:35:@3795.4]
  assign NV_soDLA_CACC_CALC_int8_11_in_op = abuf_rd_data[407:374]; // @[NV_NVDLA_CACC_calculator_for_check.scala 118:33:@3796.4]
  assign NV_soDLA_CACC_CALC_int8_11_in_op_valid = calc_in_mask_11 & accu_ctrl_ram_valid; // @[NV_NVDLA_CACC_calculator_for_check.scala 119:39:@3797.4]
  assign NV_soDLA_CACC_CALC_int8_11_in_sel = calc_valid & calc_channel_end; // @[NV_NVDLA_CACC_calculator_for_check.scala 120:34:@3798.4]
  assign NV_soDLA_CACC_CALC_int8_11_in_valid = mac_a2accu_mask[11]; // @[NV_NVDLA_CACC_calculator_for_check.scala 121:36:@3799.4]
  assign NV_soDLA_CACC_CALC_int8_12_reset = nvdla_core_rstn == 1'h0; // @[:@3603.4]
  assign NV_soDLA_CACC_CALC_int8_12_nvdla_core_clk = nvdla_cell_clk; // @[NV_NVDLA_CACC_calculator_for_check.scala 115:42:@3805.4]
  assign NV_soDLA_CACC_CALC_int8_12_cfg_truncate = cfg_truncate; // @[NV_NVDLA_CACC_calculator_for_check.scala 116:40:@3806.4]
  assign NV_soDLA_CACC_CALC_int8_12_in_data = mac_a2accu_data12; // @[NV_NVDLA_CACC_calculator_for_check.scala 117:35:@3807.4]
  assign NV_soDLA_CACC_CALC_int8_12_in_op = abuf_rd_data[441:408]; // @[NV_NVDLA_CACC_calculator_for_check.scala 118:33:@3808.4]
  assign NV_soDLA_CACC_CALC_int8_12_in_op_valid = calc_in_mask_12 & accu_ctrl_ram_valid; // @[NV_NVDLA_CACC_calculator_for_check.scala 119:39:@3809.4]
  assign NV_soDLA_CACC_CALC_int8_12_in_sel = calc_valid & calc_channel_end; // @[NV_NVDLA_CACC_calculator_for_check.scala 120:34:@3810.4]
  assign NV_soDLA_CACC_CALC_int8_12_in_valid = mac_a2accu_mask[12]; // @[NV_NVDLA_CACC_calculator_for_check.scala 121:36:@3811.4]
  assign NV_soDLA_CACC_CALC_int8_13_reset = nvdla_core_rstn == 1'h0; // @[:@3606.4]
  assign NV_soDLA_CACC_CALC_int8_13_nvdla_core_clk = nvdla_cell_clk; // @[NV_NVDLA_CACC_calculator_for_check.scala 115:42:@3817.4]
  assign NV_soDLA_CACC_CALC_int8_13_cfg_truncate = cfg_truncate; // @[NV_NVDLA_CACC_calculator_for_check.scala 116:40:@3818.4]
  assign NV_soDLA_CACC_CALC_int8_13_in_data = mac_a2accu_data13; // @[NV_NVDLA_CACC_calculator_for_check.scala 117:35:@3819.4]
  assign NV_soDLA_CACC_CALC_int8_13_in_op = abuf_rd_data[475:442]; // @[NV_NVDLA_CACC_calculator_for_check.scala 118:33:@3820.4]
  assign NV_soDLA_CACC_CALC_int8_13_in_op_valid = calc_in_mask_13 & accu_ctrl_ram_valid; // @[NV_NVDLA_CACC_calculator_for_check.scala 119:39:@3821.4]
  assign NV_soDLA_CACC_CALC_int8_13_in_sel = calc_valid & calc_channel_end; // @[NV_NVDLA_CACC_calculator_for_check.scala 120:34:@3822.4]
  assign NV_soDLA_CACC_CALC_int8_13_in_valid = mac_a2accu_mask[13]; // @[NV_NVDLA_CACC_calculator_for_check.scala 121:36:@3823.4]
  assign NV_soDLA_CACC_CALC_int8_14_reset = nvdla_core_rstn == 1'h0; // @[:@3609.4]
  assign NV_soDLA_CACC_CALC_int8_14_nvdla_core_clk = nvdla_cell_clk; // @[NV_NVDLA_CACC_calculator_for_check.scala 115:42:@3829.4]
  assign NV_soDLA_CACC_CALC_int8_14_cfg_truncate = cfg_truncate; // @[NV_NVDLA_CACC_calculator_for_check.scala 116:40:@3830.4]
  assign NV_soDLA_CACC_CALC_int8_14_in_data = mac_a2accu_data14; // @[NV_NVDLA_CACC_calculator_for_check.scala 117:35:@3831.4]
  assign NV_soDLA_CACC_CALC_int8_14_in_op = abuf_rd_data[509:476]; // @[NV_NVDLA_CACC_calculator_for_check.scala 118:33:@3832.4]
  assign NV_soDLA_CACC_CALC_int8_14_in_op_valid = calc_in_mask_14 & accu_ctrl_ram_valid; // @[NV_NVDLA_CACC_calculator_for_check.scala 119:39:@3833.4]
  assign NV_soDLA_CACC_CALC_int8_14_in_sel = calc_valid & calc_channel_end; // @[NV_NVDLA_CACC_calculator_for_check.scala 120:34:@3834.4]
  assign NV_soDLA_CACC_CALC_int8_14_in_valid = mac_a2accu_mask[14]; // @[NV_NVDLA_CACC_calculator_for_check.scala 121:36:@3835.4]
  assign NV_soDLA_CACC_CALC_int8_15_reset = nvdla_core_rstn == 1'h0; // @[:@3612.4]
  assign NV_soDLA_CACC_CALC_int8_15_nvdla_core_clk = nvdla_cell_clk; // @[NV_NVDLA_CACC_calculator_for_check.scala 115:42:@3841.4]
  assign NV_soDLA_CACC_CALC_int8_15_cfg_truncate = cfg_truncate; // @[NV_NVDLA_CACC_calculator_for_check.scala 116:40:@3842.4]
  assign NV_soDLA_CACC_CALC_int8_15_in_data = mac_a2accu_data15; // @[NV_NVDLA_CACC_calculator_for_check.scala 117:35:@3843.4]
  assign NV_soDLA_CACC_CALC_int8_15_in_op = abuf_rd_data[543:510]; // @[NV_NVDLA_CACC_calculator_for_check.scala 118:33:@3844.4]
  assign NV_soDLA_CACC_CALC_int8_15_in_op_valid = calc_in_mask_15 & accu_ctrl_ram_valid; // @[NV_NVDLA_CACC_calculator_for_check.scala 119:39:@3845.4]
  assign NV_soDLA_CACC_CALC_int8_15_in_sel = calc_valid & calc_channel_end; // @[NV_NVDLA_CACC_calculator_for_check.scala 120:34:@3846.4]
  assign NV_soDLA_CACC_CALC_int8_15_in_valid = mac_a2accu_mask[15]; // @[NV_NVDLA_CACC_calculator_for_check.scala 121:36:@3847.4]
  assign NV_soDLA_CACC_CALC_int8_16_reset = nvdla_core_rstn == 1'h0; // @[:@3615.4]
  assign NV_soDLA_CACC_CALC_int8_16_nvdla_core_clk = nvdla_cell_clk; // @[NV_NVDLA_CACC_calculator_for_check.scala 115:42:@3853.4]
  assign NV_soDLA_CACC_CALC_int8_16_cfg_truncate = cfg_truncate; // @[NV_NVDLA_CACC_calculator_for_check.scala 116:40:@3854.4]
  assign NV_soDLA_CACC_CALC_int8_16_in_data = mac_b2accu_data0; // @[NV_NVDLA_CACC_calculator_for_check.scala 117:35:@3855.4]
  assign NV_soDLA_CACC_CALC_int8_16_in_op = abuf_rd_data[577:544]; // @[NV_NVDLA_CACC_calculator_for_check.scala 118:33:@3856.4]
  assign NV_soDLA_CACC_CALC_int8_16_in_op_valid = calc_in_mask_16 & accu_ctrl_ram_valid; // @[NV_NVDLA_CACC_calculator_for_check.scala 119:39:@3857.4]
  assign NV_soDLA_CACC_CALC_int8_16_in_sel = calc_valid & calc_channel_end; // @[NV_NVDLA_CACC_calculator_for_check.scala 120:34:@3858.4]
  assign NV_soDLA_CACC_CALC_int8_16_in_valid = mac_b2accu_mask[0]; // @[NV_NVDLA_CACC_calculator_for_check.scala 121:36:@3859.4]
  assign NV_soDLA_CACC_CALC_int8_17_reset = nvdla_core_rstn == 1'h0; // @[:@3618.4]
  assign NV_soDLA_CACC_CALC_int8_17_nvdla_core_clk = nvdla_cell_clk; // @[NV_NVDLA_CACC_calculator_for_check.scala 115:42:@3865.4]
  assign NV_soDLA_CACC_CALC_int8_17_cfg_truncate = cfg_truncate; // @[NV_NVDLA_CACC_calculator_for_check.scala 116:40:@3866.4]
  assign NV_soDLA_CACC_CALC_int8_17_in_data = mac_b2accu_data1; // @[NV_NVDLA_CACC_calculator_for_check.scala 117:35:@3867.4]
  assign NV_soDLA_CACC_CALC_int8_17_in_op = abuf_rd_data[611:578]; // @[NV_NVDLA_CACC_calculator_for_check.scala 118:33:@3868.4]
  assign NV_soDLA_CACC_CALC_int8_17_in_op_valid = calc_in_mask_17 & accu_ctrl_ram_valid; // @[NV_NVDLA_CACC_calculator_for_check.scala 119:39:@3869.4]
  assign NV_soDLA_CACC_CALC_int8_17_in_sel = calc_valid & calc_channel_end; // @[NV_NVDLA_CACC_calculator_for_check.scala 120:34:@3870.4]
  assign NV_soDLA_CACC_CALC_int8_17_in_valid = mac_b2accu_mask[1]; // @[NV_NVDLA_CACC_calculator_for_check.scala 121:36:@3871.4]
  assign NV_soDLA_CACC_CALC_int8_18_reset = nvdla_core_rstn == 1'h0; // @[:@3621.4]
  assign NV_soDLA_CACC_CALC_int8_18_nvdla_core_clk = nvdla_cell_clk; // @[NV_NVDLA_CACC_calculator_for_check.scala 115:42:@3877.4]
  assign NV_soDLA_CACC_CALC_int8_18_cfg_truncate = cfg_truncate; // @[NV_NVDLA_CACC_calculator_for_check.scala 116:40:@3878.4]
  assign NV_soDLA_CACC_CALC_int8_18_in_data = mac_b2accu_data2; // @[NV_NVDLA_CACC_calculator_for_check.scala 117:35:@3879.4]
  assign NV_soDLA_CACC_CALC_int8_18_in_op = abuf_rd_data[645:612]; // @[NV_NVDLA_CACC_calculator_for_check.scala 118:33:@3880.4]
  assign NV_soDLA_CACC_CALC_int8_18_in_op_valid = calc_in_mask_18 & accu_ctrl_ram_valid; // @[NV_NVDLA_CACC_calculator_for_check.scala 119:39:@3881.4]
  assign NV_soDLA_CACC_CALC_int8_18_in_sel = calc_valid & calc_channel_end; // @[NV_NVDLA_CACC_calculator_for_check.scala 120:34:@3882.4]
  assign NV_soDLA_CACC_CALC_int8_18_in_valid = mac_b2accu_mask[2]; // @[NV_NVDLA_CACC_calculator_for_check.scala 121:36:@3883.4]
  assign NV_soDLA_CACC_CALC_int8_19_reset = nvdla_core_rstn == 1'h0; // @[:@3624.4]
  assign NV_soDLA_CACC_CALC_int8_19_nvdla_core_clk = nvdla_cell_clk; // @[NV_NVDLA_CACC_calculator_for_check.scala 115:42:@3889.4]
  assign NV_soDLA_CACC_CALC_int8_19_cfg_truncate = cfg_truncate; // @[NV_NVDLA_CACC_calculator_for_check.scala 116:40:@3890.4]
  assign NV_soDLA_CACC_CALC_int8_19_in_data = mac_b2accu_data3; // @[NV_NVDLA_CACC_calculator_for_check.scala 117:35:@3891.4]
  assign NV_soDLA_CACC_CALC_int8_19_in_op = abuf_rd_data[679:646]; // @[NV_NVDLA_CACC_calculator_for_check.scala 118:33:@3892.4]
  assign NV_soDLA_CACC_CALC_int8_19_in_op_valid = calc_in_mask_19 & accu_ctrl_ram_valid; // @[NV_NVDLA_CACC_calculator_for_check.scala 119:39:@3893.4]
  assign NV_soDLA_CACC_CALC_int8_19_in_sel = calc_valid & calc_channel_end; // @[NV_NVDLA_CACC_calculator_for_check.scala 120:34:@3894.4]
  assign NV_soDLA_CACC_CALC_int8_19_in_valid = mac_b2accu_mask[3]; // @[NV_NVDLA_CACC_calculator_for_check.scala 121:36:@3895.4]
  assign NV_soDLA_CACC_CALC_int8_20_reset = nvdla_core_rstn == 1'h0; // @[:@3627.4]
  assign NV_soDLA_CACC_CALC_int8_20_nvdla_core_clk = nvdla_cell_clk; // @[NV_NVDLA_CACC_calculator_for_check.scala 115:42:@3901.4]
  assign NV_soDLA_CACC_CALC_int8_20_cfg_truncate = cfg_truncate; // @[NV_NVDLA_CACC_calculator_for_check.scala 116:40:@3902.4]
  assign NV_soDLA_CACC_CALC_int8_20_in_data = mac_b2accu_data4; // @[NV_NVDLA_CACC_calculator_for_check.scala 117:35:@3903.4]
  assign NV_soDLA_CACC_CALC_int8_20_in_op = abuf_rd_data[713:680]; // @[NV_NVDLA_CACC_calculator_for_check.scala 118:33:@3904.4]
  assign NV_soDLA_CACC_CALC_int8_20_in_op_valid = calc_in_mask_20 & accu_ctrl_ram_valid; // @[NV_NVDLA_CACC_calculator_for_check.scala 119:39:@3905.4]
  assign NV_soDLA_CACC_CALC_int8_20_in_sel = calc_valid & calc_channel_end; // @[NV_NVDLA_CACC_calculator_for_check.scala 120:34:@3906.4]
  assign NV_soDLA_CACC_CALC_int8_20_in_valid = mac_b2accu_mask[4]; // @[NV_NVDLA_CACC_calculator_for_check.scala 121:36:@3907.4]
  assign NV_soDLA_CACC_CALC_int8_21_reset = nvdla_core_rstn == 1'h0; // @[:@3630.4]
  assign NV_soDLA_CACC_CALC_int8_21_nvdla_core_clk = nvdla_cell_clk; // @[NV_NVDLA_CACC_calculator_for_check.scala 115:42:@3913.4]
  assign NV_soDLA_CACC_CALC_int8_21_cfg_truncate = cfg_truncate; // @[NV_NVDLA_CACC_calculator_for_check.scala 116:40:@3914.4]
  assign NV_soDLA_CACC_CALC_int8_21_in_data = mac_b2accu_data5; // @[NV_NVDLA_CACC_calculator_for_check.scala 117:35:@3915.4]
  assign NV_soDLA_CACC_CALC_int8_21_in_op = abuf_rd_data[747:714]; // @[NV_NVDLA_CACC_calculator_for_check.scala 118:33:@3916.4]
  assign NV_soDLA_CACC_CALC_int8_21_in_op_valid = calc_in_mask_21 & accu_ctrl_ram_valid; // @[NV_NVDLA_CACC_calculator_for_check.scala 119:39:@3917.4]
  assign NV_soDLA_CACC_CALC_int8_21_in_sel = calc_valid & calc_channel_end; // @[NV_NVDLA_CACC_calculator_for_check.scala 120:34:@3918.4]
  assign NV_soDLA_CACC_CALC_int8_21_in_valid = mac_b2accu_mask[5]; // @[NV_NVDLA_CACC_calculator_for_check.scala 121:36:@3919.4]
  assign NV_soDLA_CACC_CALC_int8_22_reset = nvdla_core_rstn == 1'h0; // @[:@3633.4]
  assign NV_soDLA_CACC_CALC_int8_22_nvdla_core_clk = nvdla_cell_clk; // @[NV_NVDLA_CACC_calculator_for_check.scala 115:42:@3925.4]
  assign NV_soDLA_CACC_CALC_int8_22_cfg_truncate = cfg_truncate; // @[NV_NVDLA_CACC_calculator_for_check.scala 116:40:@3926.4]
  assign NV_soDLA_CACC_CALC_int8_22_in_data = mac_b2accu_data6; // @[NV_NVDLA_CACC_calculator_for_check.scala 117:35:@3927.4]
  assign NV_soDLA_CACC_CALC_int8_22_in_op = abuf_rd_data[781:748]; // @[NV_NVDLA_CACC_calculator_for_check.scala 118:33:@3928.4]
  assign NV_soDLA_CACC_CALC_int8_22_in_op_valid = calc_in_mask_22 & accu_ctrl_ram_valid; // @[NV_NVDLA_CACC_calculator_for_check.scala 119:39:@3929.4]
  assign NV_soDLA_CACC_CALC_int8_22_in_sel = calc_valid & calc_channel_end; // @[NV_NVDLA_CACC_calculator_for_check.scala 120:34:@3930.4]
  assign NV_soDLA_CACC_CALC_int8_22_in_valid = mac_b2accu_mask[6]; // @[NV_NVDLA_CACC_calculator_for_check.scala 121:36:@3931.4]
  assign NV_soDLA_CACC_CALC_int8_23_reset = nvdla_core_rstn == 1'h0; // @[:@3636.4]
  assign NV_soDLA_CACC_CALC_int8_23_nvdla_core_clk = nvdla_cell_clk; // @[NV_NVDLA_CACC_calculator_for_check.scala 115:42:@3937.4]
  assign NV_soDLA_CACC_CALC_int8_23_cfg_truncate = cfg_truncate; // @[NV_NVDLA_CACC_calculator_for_check.scala 116:40:@3938.4]
  assign NV_soDLA_CACC_CALC_int8_23_in_data = mac_b2accu_data7; // @[NV_NVDLA_CACC_calculator_for_check.scala 117:35:@3939.4]
  assign NV_soDLA_CACC_CALC_int8_23_in_op = abuf_rd_data[815:782]; // @[NV_NVDLA_CACC_calculator_for_check.scala 118:33:@3940.4]
  assign NV_soDLA_CACC_CALC_int8_23_in_op_valid = calc_in_mask_23 & accu_ctrl_ram_valid; // @[NV_NVDLA_CACC_calculator_for_check.scala 119:39:@3941.4]
  assign NV_soDLA_CACC_CALC_int8_23_in_sel = calc_valid & calc_channel_end; // @[NV_NVDLA_CACC_calculator_for_check.scala 120:34:@3942.4]
  assign NV_soDLA_CACC_CALC_int8_23_in_valid = mac_b2accu_mask[7]; // @[NV_NVDLA_CACC_calculator_for_check.scala 121:36:@3943.4]
  assign NV_soDLA_CACC_CALC_int8_24_reset = nvdla_core_rstn == 1'h0; // @[:@3639.4]
  assign NV_soDLA_CACC_CALC_int8_24_nvdla_core_clk = nvdla_cell_clk; // @[NV_NVDLA_CACC_calculator_for_check.scala 115:42:@3949.4]
  assign NV_soDLA_CACC_CALC_int8_24_cfg_truncate = cfg_truncate; // @[NV_NVDLA_CACC_calculator_for_check.scala 116:40:@3950.4]
  assign NV_soDLA_CACC_CALC_int8_24_in_data = mac_b2accu_data8; // @[NV_NVDLA_CACC_calculator_for_check.scala 117:35:@3951.4]
  assign NV_soDLA_CACC_CALC_int8_24_in_op = abuf_rd_data[849:816]; // @[NV_NVDLA_CACC_calculator_for_check.scala 118:33:@3952.4]
  assign NV_soDLA_CACC_CALC_int8_24_in_op_valid = calc_in_mask_24 & accu_ctrl_ram_valid; // @[NV_NVDLA_CACC_calculator_for_check.scala 119:39:@3953.4]
  assign NV_soDLA_CACC_CALC_int8_24_in_sel = calc_valid & calc_channel_end; // @[NV_NVDLA_CACC_calculator_for_check.scala 120:34:@3954.4]
  assign NV_soDLA_CACC_CALC_int8_24_in_valid = mac_b2accu_mask[8]; // @[NV_NVDLA_CACC_calculator_for_check.scala 121:36:@3955.4]
  assign NV_soDLA_CACC_CALC_int8_25_reset = nvdla_core_rstn == 1'h0; // @[:@3642.4]
  assign NV_soDLA_CACC_CALC_int8_25_nvdla_core_clk = nvdla_cell_clk; // @[NV_NVDLA_CACC_calculator_for_check.scala 115:42:@3961.4]
  assign NV_soDLA_CACC_CALC_int8_25_cfg_truncate = cfg_truncate; // @[NV_NVDLA_CACC_calculator_for_check.scala 116:40:@3962.4]
  assign NV_soDLA_CACC_CALC_int8_25_in_data = mac_b2accu_data9; // @[NV_NVDLA_CACC_calculator_for_check.scala 117:35:@3963.4]
  assign NV_soDLA_CACC_CALC_int8_25_in_op = abuf_rd_data[883:850]; // @[NV_NVDLA_CACC_calculator_for_check.scala 118:33:@3964.4]
  assign NV_soDLA_CACC_CALC_int8_25_in_op_valid = calc_in_mask_25 & accu_ctrl_ram_valid; // @[NV_NVDLA_CACC_calculator_for_check.scala 119:39:@3965.4]
  assign NV_soDLA_CACC_CALC_int8_25_in_sel = calc_valid & calc_channel_end; // @[NV_NVDLA_CACC_calculator_for_check.scala 120:34:@3966.4]
  assign NV_soDLA_CACC_CALC_int8_25_in_valid = mac_b2accu_mask[9]; // @[NV_NVDLA_CACC_calculator_for_check.scala 121:36:@3967.4]
  assign NV_soDLA_CACC_CALC_int8_26_reset = nvdla_core_rstn == 1'h0; // @[:@3645.4]
  assign NV_soDLA_CACC_CALC_int8_26_nvdla_core_clk = nvdla_cell_clk; // @[NV_NVDLA_CACC_calculator_for_check.scala 115:42:@3973.4]
  assign NV_soDLA_CACC_CALC_int8_26_cfg_truncate = cfg_truncate; // @[NV_NVDLA_CACC_calculator_for_check.scala 116:40:@3974.4]
  assign NV_soDLA_CACC_CALC_int8_26_in_data = mac_b2accu_data10; // @[NV_NVDLA_CACC_calculator_for_check.scala 117:35:@3975.4]
  assign NV_soDLA_CACC_CALC_int8_26_in_op = abuf_rd_data[917:884]; // @[NV_NVDLA_CACC_calculator_for_check.scala 118:33:@3976.4]
  assign NV_soDLA_CACC_CALC_int8_26_in_op_valid = calc_in_mask_26 & accu_ctrl_ram_valid; // @[NV_NVDLA_CACC_calculator_for_check.scala 119:39:@3977.4]
  assign NV_soDLA_CACC_CALC_int8_26_in_sel = calc_valid & calc_channel_end; // @[NV_NVDLA_CACC_calculator_for_check.scala 120:34:@3978.4]
  assign NV_soDLA_CACC_CALC_int8_26_in_valid = mac_b2accu_mask[10]; // @[NV_NVDLA_CACC_calculator_for_check.scala 121:36:@3979.4]
  assign NV_soDLA_CACC_CALC_int8_27_reset = nvdla_core_rstn == 1'h0; // @[:@3648.4]
  assign NV_soDLA_CACC_CALC_int8_27_nvdla_core_clk = nvdla_cell_clk; // @[NV_NVDLA_CACC_calculator_for_check.scala 115:42:@3985.4]
  assign NV_soDLA_CACC_CALC_int8_27_cfg_truncate = cfg_truncate; // @[NV_NVDLA_CACC_calculator_for_check.scala 116:40:@3986.4]
  assign NV_soDLA_CACC_CALC_int8_27_in_data = mac_b2accu_data11; // @[NV_NVDLA_CACC_calculator_for_check.scala 117:35:@3987.4]
  assign NV_soDLA_CACC_CALC_int8_27_in_op = abuf_rd_data[951:918]; // @[NV_NVDLA_CACC_calculator_for_check.scala 118:33:@3988.4]
  assign NV_soDLA_CACC_CALC_int8_27_in_op_valid = calc_in_mask_27 & accu_ctrl_ram_valid; // @[NV_NVDLA_CACC_calculator_for_check.scala 119:39:@3989.4]
  assign NV_soDLA_CACC_CALC_int8_27_in_sel = calc_valid & calc_channel_end; // @[NV_NVDLA_CACC_calculator_for_check.scala 120:34:@3990.4]
  assign NV_soDLA_CACC_CALC_int8_27_in_valid = mac_b2accu_mask[11]; // @[NV_NVDLA_CACC_calculator_for_check.scala 121:36:@3991.4]
  assign NV_soDLA_CACC_CALC_int8_28_reset = nvdla_core_rstn == 1'h0; // @[:@3651.4]
  assign NV_soDLA_CACC_CALC_int8_28_nvdla_core_clk = nvdla_cell_clk; // @[NV_NVDLA_CACC_calculator_for_check.scala 115:42:@3997.4]
  assign NV_soDLA_CACC_CALC_int8_28_cfg_truncate = cfg_truncate; // @[NV_NVDLA_CACC_calculator_for_check.scala 116:40:@3998.4]
  assign NV_soDLA_CACC_CALC_int8_28_in_data = mac_b2accu_data12; // @[NV_NVDLA_CACC_calculator_for_check.scala 117:35:@3999.4]
  assign NV_soDLA_CACC_CALC_int8_28_in_op = abuf_rd_data[985:952]; // @[NV_NVDLA_CACC_calculator_for_check.scala 118:33:@4000.4]
  assign NV_soDLA_CACC_CALC_int8_28_in_op_valid = calc_in_mask_28 & accu_ctrl_ram_valid; // @[NV_NVDLA_CACC_calculator_for_check.scala 119:39:@4001.4]
  assign NV_soDLA_CACC_CALC_int8_28_in_sel = calc_valid & calc_channel_end; // @[NV_NVDLA_CACC_calculator_for_check.scala 120:34:@4002.4]
  assign NV_soDLA_CACC_CALC_int8_28_in_valid = mac_b2accu_mask[12]; // @[NV_NVDLA_CACC_calculator_for_check.scala 121:36:@4003.4]
  assign NV_soDLA_CACC_CALC_int8_29_reset = nvdla_core_rstn == 1'h0; // @[:@3654.4]
  assign NV_soDLA_CACC_CALC_int8_29_nvdla_core_clk = nvdla_cell_clk; // @[NV_NVDLA_CACC_calculator_for_check.scala 115:42:@4009.4]
  assign NV_soDLA_CACC_CALC_int8_29_cfg_truncate = cfg_truncate; // @[NV_NVDLA_CACC_calculator_for_check.scala 116:40:@4010.4]
  assign NV_soDLA_CACC_CALC_int8_29_in_data = mac_b2accu_data13; // @[NV_NVDLA_CACC_calculator_for_check.scala 117:35:@4011.4]
  assign NV_soDLA_CACC_CALC_int8_29_in_op = abuf_rd_data[1019:986]; // @[NV_NVDLA_CACC_calculator_for_check.scala 118:33:@4012.4]
  assign NV_soDLA_CACC_CALC_int8_29_in_op_valid = calc_in_mask_29 & accu_ctrl_ram_valid; // @[NV_NVDLA_CACC_calculator_for_check.scala 119:39:@4013.4]
  assign NV_soDLA_CACC_CALC_int8_29_in_sel = calc_valid & calc_channel_end; // @[NV_NVDLA_CACC_calculator_for_check.scala 120:34:@4014.4]
  assign NV_soDLA_CACC_CALC_int8_29_in_valid = mac_b2accu_mask[13]; // @[NV_NVDLA_CACC_calculator_for_check.scala 121:36:@4015.4]
  assign NV_soDLA_CACC_CALC_int8_30_reset = nvdla_core_rstn == 1'h0; // @[:@3657.4]
  assign NV_soDLA_CACC_CALC_int8_30_nvdla_core_clk = nvdla_cell_clk; // @[NV_NVDLA_CACC_calculator_for_check.scala 115:42:@4021.4]
  assign NV_soDLA_CACC_CALC_int8_30_cfg_truncate = cfg_truncate; // @[NV_NVDLA_CACC_calculator_for_check.scala 116:40:@4022.4]
  assign NV_soDLA_CACC_CALC_int8_30_in_data = mac_b2accu_data14; // @[NV_NVDLA_CACC_calculator_for_check.scala 117:35:@4023.4]
  assign NV_soDLA_CACC_CALC_int8_30_in_op = abuf_rd_data[1053:1020]; // @[NV_NVDLA_CACC_calculator_for_check.scala 118:33:@4024.4]
  assign NV_soDLA_CACC_CALC_int8_30_in_op_valid = calc_in_mask_30 & accu_ctrl_ram_valid; // @[NV_NVDLA_CACC_calculator_for_check.scala 119:39:@4025.4]
  assign NV_soDLA_CACC_CALC_int8_30_in_sel = calc_valid & calc_channel_end; // @[NV_NVDLA_CACC_calculator_for_check.scala 120:34:@4026.4]
  assign NV_soDLA_CACC_CALC_int8_30_in_valid = mac_b2accu_mask[14]; // @[NV_NVDLA_CACC_calculator_for_check.scala 121:36:@4027.4]
  assign NV_soDLA_CACC_CALC_int8_31_reset = nvdla_core_rstn == 1'h0; // @[:@3660.4]
  assign NV_soDLA_CACC_CALC_int8_31_nvdla_core_clk = nvdla_cell_clk; // @[NV_NVDLA_CACC_calculator_for_check.scala 115:42:@4033.4]
  assign NV_soDLA_CACC_CALC_int8_31_cfg_truncate = cfg_truncate; // @[NV_NVDLA_CACC_calculator_for_check.scala 116:40:@4034.4]
  assign NV_soDLA_CACC_CALC_int8_31_in_data = mac_b2accu_data15; // @[NV_NVDLA_CACC_calculator_for_check.scala 117:35:@4035.4]
  assign NV_soDLA_CACC_CALC_int8_31_in_op = abuf_rd_data[1087:1054]; // @[NV_NVDLA_CACC_calculator_for_check.scala 118:33:@4036.4]
  assign NV_soDLA_CACC_CALC_int8_31_in_op_valid = calc_in_mask_31 & accu_ctrl_ram_valid; // @[NV_NVDLA_CACC_calculator_for_check.scala 119:39:@4037.4]
  assign NV_soDLA_CACC_CALC_int8_31_in_sel = calc_valid & calc_channel_end; // @[NV_NVDLA_CACC_calculator_for_check.scala 120:34:@4038.4]
  assign NV_soDLA_CACC_CALC_int8_31_in_valid = mac_b2accu_mask[15]; // @[NV_NVDLA_CACC_calculator_for_check.scala 121:36:@4039.4]
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
  accu_ctrl_pd_d1 = _RAND_0[12:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_1 = {1{`RANDOM}};
  _T_209 = _RAND_1[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_2 = {1{`RANDOM}};
  _T_211 = _RAND_2[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_3 = {1{`RANDOM}};
  calc_valid = _RAND_3[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_4 = {1{`RANDOM}};
  _T_615 = _RAND_4[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_5 = {1{`RANDOM}};
  _T_622 = _RAND_5[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_6 = {1{`RANDOM}};
  calc_wr_en_out = _RAND_6[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_7 = {1{`RANDOM}};
  _T_629 = _RAND_7[5:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_8 = {1{`RANDOM}};
  calc_addr_out = _RAND_8[5:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_9 = {1{`RANDOM}};
  _T_636 = _RAND_9[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_10 = {1{`RANDOM}};
  calc_dlv_valid_out = _RAND_10[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_11 = {1{`RANDOM}};
  _T_643 = _RAND_11[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_12 = {1{`RANDOM}};
  calc_stripe_end_out = _RAND_12[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_13 = {1{`RANDOM}};
  _T_650 = _RAND_13[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_14 = {1{`RANDOM}};
  calc_layer_end_out = _RAND_14[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_15 = {1{`RANDOM}};
  _T_793 = _RAND_15[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_16 = {1{`RANDOM}};
  _T_795 = _RAND_16[5:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_17 = {34{`RANDOM}};
  _T_828 = _RAND_17[1087:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_18 = {32{`RANDOM}};
  _T_861 = _RAND_18[1023:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_19 = {1{`RANDOM}};
  _T_864 = _RAND_19[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_20 = {1{`RANDOM}};
  _T_867 = _RAND_20[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_21 = {1{`RANDOM}};
  dlv_stripe_end = _RAND_21[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_22 = {1{`RANDOM}};
  dlv_layer_end = _RAND_22[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_23 = {1{`RANDOM}};
  dlv_sat_vld_d1 = _RAND_23[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_24 = {1{`RANDOM}};
  dlv_sat_end_d1 = _RAND_24[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_25 = {1{`RANDOM}};
  dlv_sat_bit_d1_0 = _RAND_25[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_26 = {1{`RANDOM}};
  dlv_sat_bit_d1_1 = _RAND_26[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_27 = {1{`RANDOM}};
  dlv_sat_bit_d1_2 = _RAND_27[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_28 = {1{`RANDOM}};
  dlv_sat_bit_d1_3 = _RAND_28[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_29 = {1{`RANDOM}};
  dlv_sat_bit_d1_4 = _RAND_29[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_30 = {1{`RANDOM}};
  dlv_sat_bit_d1_5 = _RAND_30[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_31 = {1{`RANDOM}};
  dlv_sat_bit_d1_6 = _RAND_31[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_32 = {1{`RANDOM}};
  dlv_sat_bit_d1_7 = _RAND_32[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_33 = {1{`RANDOM}};
  dlv_sat_bit_d1_8 = _RAND_33[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_34 = {1{`RANDOM}};
  dlv_sat_bit_d1_9 = _RAND_34[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_35 = {1{`RANDOM}};
  dlv_sat_bit_d1_10 = _RAND_35[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_36 = {1{`RANDOM}};
  dlv_sat_bit_d1_11 = _RAND_36[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_37 = {1{`RANDOM}};
  dlv_sat_bit_d1_12 = _RAND_37[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_38 = {1{`RANDOM}};
  dlv_sat_bit_d1_13 = _RAND_38[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_39 = {1{`RANDOM}};
  dlv_sat_bit_d1_14 = _RAND_39[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_40 = {1{`RANDOM}};
  dlv_sat_bit_d1_15 = _RAND_40[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_41 = {1{`RANDOM}};
  dlv_sat_bit_d1_16 = _RAND_41[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_42 = {1{`RANDOM}};
  dlv_sat_bit_d1_17 = _RAND_42[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_43 = {1{`RANDOM}};
  dlv_sat_bit_d1_18 = _RAND_43[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_44 = {1{`RANDOM}};
  dlv_sat_bit_d1_19 = _RAND_44[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_45 = {1{`RANDOM}};
  dlv_sat_bit_d1_20 = _RAND_45[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_46 = {1{`RANDOM}};
  dlv_sat_bit_d1_21 = _RAND_46[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_47 = {1{`RANDOM}};
  dlv_sat_bit_d1_22 = _RAND_47[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_48 = {1{`RANDOM}};
  dlv_sat_bit_d1_23 = _RAND_48[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_49 = {1{`RANDOM}};
  dlv_sat_bit_d1_24 = _RAND_49[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_50 = {1{`RANDOM}};
  dlv_sat_bit_d1_25 = _RAND_50[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_51 = {1{`RANDOM}};
  dlv_sat_bit_d1_26 = _RAND_51[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_52 = {1{`RANDOM}};
  dlv_sat_bit_d1_27 = _RAND_52[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_53 = {1{`RANDOM}};
  dlv_sat_bit_d1_28 = _RAND_53[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_54 = {1{`RANDOM}};
  dlv_sat_bit_d1_29 = _RAND_54[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_55 = {1{`RANDOM}};
  dlv_sat_bit_d1_30 = _RAND_55[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_56 = {1{`RANDOM}};
  dlv_sat_bit_d1_31 = _RAND_56[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_57 = {1{`RANDOM}};
  dlv_sat_clr_d1 = _RAND_57[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_58 = {1{`RANDOM}};
  sat_count = _RAND_58[31:0];
  `endif // RANDOMIZE_REG_INIT
  end
`endif // RANDOMIZE
  always @(posedge nvdla_core_clk) begin
    if (_T_134) begin
      accu_ctrl_pd_d1 <= 13'h0;
    end else begin
      if (accu_ctrl_valid) begin
        accu_ctrl_pd_d1 <= accu_ctrl_pd;
      end
    end
    if (_T_134) begin
      _T_209 <= 1'h0;
    end else begin
      _T_209 <= calc_valid_in;
    end
    if (_T_134) begin
      _T_211 <= 1'h0;
    end else begin
      _T_211 <= _T_209;
    end
    if (_T_134) begin
      calc_valid <= 1'h0;
    end else begin
      calc_valid <= _T_211;
    end
    if (_T_134) begin
      _T_615 <= 1'h0;
    end else begin
      _T_615 <= calc_valid;
    end
    if (_T_134) begin
      _T_622 <= 1'h0;
    end else begin
      _T_622 <= calc_wr_en;
    end
    if (_T_134) begin
      calc_wr_en_out <= 1'h0;
    end else begin
      calc_wr_en_out <= _T_622;
    end
    if (_T_134) begin
      _T_629 <= 6'h0;
    end else begin
      if (calc_valid) begin
        _T_629 <= calc_addr;
      end
    end
    if (_T_134) begin
      calc_addr_out <= 6'h0;
    end else begin
      if (_T_615) begin
        calc_addr_out <= _T_629;
      end
    end
    if (_T_134) begin
      _T_636 <= 1'h0;
    end else begin
      _T_636 <= calc_dlv_valid;
    end
    if (_T_134) begin
      calc_dlv_valid_out <= 1'h0;
    end else begin
      calc_dlv_valid_out <= _T_636;
    end
    if (_T_134) begin
      _T_643 <= 1'h0;
    end else begin
      if (calc_dlv_valid) begin
        _T_643 <= calc_stripe_end;
      end
    end
    if (_T_134) begin
      calc_stripe_end_out <= 1'h0;
    end else begin
      if (_T_636) begin
        calc_stripe_end_out <= _T_643;
      end
    end
    if (_T_134) begin
      _T_650 <= 1'h0;
    end else begin
      if (calc_dlv_valid) begin
        _T_650 <= calc_layer_end;
      end
    end
    if (_T_134) begin
      calc_layer_end_out <= 1'h0;
    end else begin
      if (_T_636) begin
        calc_layer_end_out <= _T_650;
      end
    end
    if (_T_134) begin
      _T_793 <= 1'h0;
    end else begin
      _T_793 <= calc_wr_en_out;
    end
    if (calc_wr_en_out) begin
      _T_795 <= calc_addr_out;
    end
    if (calc_wr_en_out) begin
      _T_828 <= _T_826;
    end
    if (calc_dlv_valid_out) begin
      _T_861 <= _T_859;
    end
    if (_T_134) begin
      _T_864 <= 1'h0;
    end else begin
      _T_864 <= calc_dlv_valid_out;
    end
    if (_T_134) begin
      _T_867 <= 1'h0;
    end else begin
      _T_867 <= calc_dlv_valid_out;
    end
    if (_T_134) begin
      dlv_stripe_end <= 1'h0;
    end else begin
      if (calc_dlv_valid_out) begin
        dlv_stripe_end <= calc_stripe_end_out;
      end
    end
    if (_T_134) begin
      dlv_layer_end <= 1'h0;
    end else begin
      if (calc_dlv_valid_out) begin
        dlv_layer_end <= calc_layer_end_out;
      end
    end
    if (_T_134) begin
      dlv_sat_vld_d1 <= 1'h0;
    end else begin
      dlv_sat_vld_d1 <= calc_dlv_valid_out;
    end
    if (_T_134) begin
      dlv_sat_end_d1 <= 1'h1;
    end else begin
      if (calc_dlv_valid_out) begin
        dlv_sat_end_d1 <= dlv_sat_end;
      end
    end
    if (_T_134) begin
      dlv_sat_bit_d1_0 <= 1'h0;
    end else begin
      if (calc_dlv_valid_out) begin
        dlv_sat_bit_d1_0 <= calc_fout_sat_0;
      end
    end
    if (_T_134) begin
      dlv_sat_bit_d1_1 <= 1'h0;
    end else begin
      if (calc_dlv_valid_out) begin
        dlv_sat_bit_d1_1 <= calc_fout_sat_1;
      end
    end
    if (_T_134) begin
      dlv_sat_bit_d1_2 <= 1'h0;
    end else begin
      if (calc_dlv_valid_out) begin
        dlv_sat_bit_d1_2 <= calc_fout_sat_2;
      end
    end
    if (_T_134) begin
      dlv_sat_bit_d1_3 <= 1'h0;
    end else begin
      if (calc_dlv_valid_out) begin
        dlv_sat_bit_d1_3 <= calc_fout_sat_3;
      end
    end
    if (_T_134) begin
      dlv_sat_bit_d1_4 <= 1'h0;
    end else begin
      if (calc_dlv_valid_out) begin
        dlv_sat_bit_d1_4 <= calc_fout_sat_4;
      end
    end
    if (_T_134) begin
      dlv_sat_bit_d1_5 <= 1'h0;
    end else begin
      if (calc_dlv_valid_out) begin
        dlv_sat_bit_d1_5 <= calc_fout_sat_5;
      end
    end
    if (_T_134) begin
      dlv_sat_bit_d1_6 <= 1'h0;
    end else begin
      if (calc_dlv_valid_out) begin
        dlv_sat_bit_d1_6 <= calc_fout_sat_6;
      end
    end
    if (_T_134) begin
      dlv_sat_bit_d1_7 <= 1'h0;
    end else begin
      if (calc_dlv_valid_out) begin
        dlv_sat_bit_d1_7 <= calc_fout_sat_7;
      end
    end
    if (_T_134) begin
      dlv_sat_bit_d1_8 <= 1'h0;
    end else begin
      if (calc_dlv_valid_out) begin
        dlv_sat_bit_d1_8 <= calc_fout_sat_8;
      end
    end
    if (_T_134) begin
      dlv_sat_bit_d1_9 <= 1'h0;
    end else begin
      if (calc_dlv_valid_out) begin
        dlv_sat_bit_d1_9 <= calc_fout_sat_9;
      end
    end
    if (_T_134) begin
      dlv_sat_bit_d1_10 <= 1'h0;
    end else begin
      if (calc_dlv_valid_out) begin
        dlv_sat_bit_d1_10 <= calc_fout_sat_10;
      end
    end
    if (_T_134) begin
      dlv_sat_bit_d1_11 <= 1'h0;
    end else begin
      if (calc_dlv_valid_out) begin
        dlv_sat_bit_d1_11 <= calc_fout_sat_11;
      end
    end
    if (_T_134) begin
      dlv_sat_bit_d1_12 <= 1'h0;
    end else begin
      if (calc_dlv_valid_out) begin
        dlv_sat_bit_d1_12 <= calc_fout_sat_12;
      end
    end
    if (_T_134) begin
      dlv_sat_bit_d1_13 <= 1'h0;
    end else begin
      if (calc_dlv_valid_out) begin
        dlv_sat_bit_d1_13 <= calc_fout_sat_13;
      end
    end
    if (_T_134) begin
      dlv_sat_bit_d1_14 <= 1'h0;
    end else begin
      if (calc_dlv_valid_out) begin
        dlv_sat_bit_d1_14 <= calc_fout_sat_14;
      end
    end
    if (_T_134) begin
      dlv_sat_bit_d1_15 <= 1'h0;
    end else begin
      if (calc_dlv_valid_out) begin
        dlv_sat_bit_d1_15 <= calc_fout_sat_15;
      end
    end
    if (_T_134) begin
      dlv_sat_bit_d1_16 <= 1'h0;
    end else begin
      if (calc_dlv_valid_out) begin
        dlv_sat_bit_d1_16 <= calc_fout_sat_16;
      end
    end
    if (_T_134) begin
      dlv_sat_bit_d1_17 <= 1'h0;
    end else begin
      if (calc_dlv_valid_out) begin
        dlv_sat_bit_d1_17 <= calc_fout_sat_17;
      end
    end
    if (_T_134) begin
      dlv_sat_bit_d1_18 <= 1'h0;
    end else begin
      if (calc_dlv_valid_out) begin
        dlv_sat_bit_d1_18 <= calc_fout_sat_18;
      end
    end
    if (_T_134) begin
      dlv_sat_bit_d1_19 <= 1'h0;
    end else begin
      if (calc_dlv_valid_out) begin
        dlv_sat_bit_d1_19 <= calc_fout_sat_19;
      end
    end
    if (_T_134) begin
      dlv_sat_bit_d1_20 <= 1'h0;
    end else begin
      if (calc_dlv_valid_out) begin
        dlv_sat_bit_d1_20 <= calc_fout_sat_20;
      end
    end
    if (_T_134) begin
      dlv_sat_bit_d1_21 <= 1'h0;
    end else begin
      if (calc_dlv_valid_out) begin
        dlv_sat_bit_d1_21 <= calc_fout_sat_21;
      end
    end
    if (_T_134) begin
      dlv_sat_bit_d1_22 <= 1'h0;
    end else begin
      if (calc_dlv_valid_out) begin
        dlv_sat_bit_d1_22 <= calc_fout_sat_22;
      end
    end
    if (_T_134) begin
      dlv_sat_bit_d1_23 <= 1'h0;
    end else begin
      if (calc_dlv_valid_out) begin
        dlv_sat_bit_d1_23 <= calc_fout_sat_23;
      end
    end
    if (_T_134) begin
      dlv_sat_bit_d1_24 <= 1'h0;
    end else begin
      if (calc_dlv_valid_out) begin
        dlv_sat_bit_d1_24 <= calc_fout_sat_24;
      end
    end
    if (_T_134) begin
      dlv_sat_bit_d1_25 <= 1'h0;
    end else begin
      if (calc_dlv_valid_out) begin
        dlv_sat_bit_d1_25 <= calc_fout_sat_25;
      end
    end
    if (_T_134) begin
      dlv_sat_bit_d1_26 <= 1'h0;
    end else begin
      if (calc_dlv_valid_out) begin
        dlv_sat_bit_d1_26 <= calc_fout_sat_26;
      end
    end
    if (_T_134) begin
      dlv_sat_bit_d1_27 <= 1'h0;
    end else begin
      if (calc_dlv_valid_out) begin
        dlv_sat_bit_d1_27 <= calc_fout_sat_27;
      end
    end
    if (_T_134) begin
      dlv_sat_bit_d1_28 <= 1'h0;
    end else begin
      if (calc_dlv_valid_out) begin
        dlv_sat_bit_d1_28 <= calc_fout_sat_28;
      end
    end
    if (_T_134) begin
      dlv_sat_bit_d1_29 <= 1'h0;
    end else begin
      if (calc_dlv_valid_out) begin
        dlv_sat_bit_d1_29 <= calc_fout_sat_29;
      end
    end
    if (_T_134) begin
      dlv_sat_bit_d1_30 <= 1'h0;
    end else begin
      if (calc_dlv_valid_out) begin
        dlv_sat_bit_d1_30 <= calc_fout_sat_30;
      end
    end
    if (_T_134) begin
      dlv_sat_bit_d1_31 <= 1'h0;
    end else begin
      if (calc_dlv_valid_out) begin
        dlv_sat_bit_d1_31 <= calc_fout_sat_31;
      end
    end
    if (_T_134) begin
      dlv_sat_clr_d1 <= 1'h0;
    end else begin
      dlv_sat_clr_d1 <= dlv_sat_clr;
    end
    if (_T_134) begin
      sat_count <= 32'h0;
    end else begin
      sat_count <= _GEN_112[31:0];
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
// File Name: NV_NVDLA_CACC_calculator.v
// ================================================================
// NVDLA Open Source Project
// 
// Copyright(c) 2016 - 2017 NVIDIA Corporation.  Licensed under the
// NVDLA Open Hardware License; Check "LICENSE" which comes with 
// this distribution for more information.
// ================================================================
// File Name: NV_NVDLA_CACC.h
module NV_NVDLA_CACC_calculator (
   nvdla_core_clk //|< i
  ,nvdla_core_rstn //|< i
  ,abuf_rd_data //|< i
  ,accu_ctrl_pd //|< i
  ,accu_ctrl_ram_valid //|< i
  ,accu_ctrl_valid //|< i
  ,cfg_truncate //|< i
//: for(my $i=0; $i<32/2 ; $i++){
//: print qq(
//: ,mac_a2accu_data${i} //|< i )
//: }
//| eperl: generated_beg (DO NOT EDIT BELOW)

,mac_a2accu_data0 //|< i 
,mac_a2accu_data1 //|< i 
,mac_a2accu_data2 //|< i 
,mac_a2accu_data3 //|< i 
,mac_a2accu_data4 //|< i 
,mac_a2accu_data5 //|< i 
,mac_a2accu_data6 //|< i 
,mac_a2accu_data7 //|< i 
,mac_a2accu_data8 //|< i 
,mac_a2accu_data9 //|< i 
,mac_a2accu_data10 //|< i 
,mac_a2accu_data11 //|< i 
,mac_a2accu_data12 //|< i 
,mac_a2accu_data13 //|< i 
,mac_a2accu_data14 //|< i 
,mac_a2accu_data15 //|< i 
//| eperl: generated_end (DO NOT EDIT ABOVE)
  ,mac_a2accu_mask //|< i
  ,mac_a2accu_mode //|< i
  ,mac_a2accu_pvld //|< i
//: for(my $i=0; $i<32/2 ; $i++){
//: print qq(
//: ,mac_b2accu_data${i} //|< i )
//: }
//| eperl: generated_beg (DO NOT EDIT BELOW)

,mac_b2accu_data0 //|< i 
,mac_b2accu_data1 //|< i 
,mac_b2accu_data2 //|< i 
,mac_b2accu_data3 //|< i 
,mac_b2accu_data4 //|< i 
,mac_b2accu_data5 //|< i 
,mac_b2accu_data6 //|< i 
,mac_b2accu_data7 //|< i 
,mac_b2accu_data8 //|< i 
,mac_b2accu_data9 //|< i 
,mac_b2accu_data10 //|< i 
,mac_b2accu_data11 //|< i 
,mac_b2accu_data12 //|< i 
,mac_b2accu_data13 //|< i 
,mac_b2accu_data14 //|< i 
,mac_b2accu_data15 //|< i 
//| eperl: generated_end (DO NOT EDIT ABOVE)
  ,mac_b2accu_mask //|< i
  ,mac_b2accu_mode //|< i
  ,mac_b2accu_pvld //|< i
  ,nvdla_cell_clk //|< i
  ,abuf_wr_addr //|> o
  ,abuf_wr_data //|> o
  ,abuf_wr_en //|> o
  ,dlv_data //|> o
  ,dlv_mask //|> o
  ,dlv_pd //|> o
  ,dlv_valid //|> o
  ,dp2reg_sat_count //|> o
  );
input nvdla_cell_clk;
input nvdla_core_clk;
input nvdla_core_rstn;
input [34*32 -1:0] abuf_rd_data;
input [12:0] accu_ctrl_pd;
input accu_ctrl_ram_valid;
input accu_ctrl_valid;
input cfg_in_en_mask;
input [4:0] cfg_truncate;
//: for(my $i=0; $i<32/2 ; $i++){
//: print qq(
//: input [22 -1:0] mac_a2accu_data${i}; )
//: }
//| eperl: generated_beg (DO NOT EDIT BELOW)

input [22 -1:0] mac_a2accu_data0; 
input [22 -1:0] mac_a2accu_data1; 
input [22 -1:0] mac_a2accu_data2; 
input [22 -1:0] mac_a2accu_data3; 
input [22 -1:0] mac_a2accu_data4; 
input [22 -1:0] mac_a2accu_data5; 
input [22 -1:0] mac_a2accu_data6; 
input [22 -1:0] mac_a2accu_data7; 
input [22 -1:0] mac_a2accu_data8; 
input [22 -1:0] mac_a2accu_data9; 
input [22 -1:0] mac_a2accu_data10; 
input [22 -1:0] mac_a2accu_data11; 
input [22 -1:0] mac_a2accu_data12; 
input [22 -1:0] mac_a2accu_data13; 
input [22 -1:0] mac_a2accu_data14; 
input [22 -1:0] mac_a2accu_data15; 
//| eperl: generated_end (DO NOT EDIT ABOVE)
input [32/2-1:0] mac_a2accu_mask;
input mac_a2accu_mode;
input mac_a2accu_pvld;
//: for(my $i=0; $i<32/2 ; $i++){
//: print qq(
//: input [22 -1:0] mac_b2accu_data${i}; )
//: }
//| eperl: generated_beg (DO NOT EDIT BELOW)

input [22 -1:0] mac_b2accu_data0; 
input [22 -1:0] mac_b2accu_data1; 
input [22 -1:0] mac_b2accu_data2; 
input [22 -1:0] mac_b2accu_data3; 
input [22 -1:0] mac_b2accu_data4; 
input [22 -1:0] mac_b2accu_data5; 
input [22 -1:0] mac_b2accu_data6; 
input [22 -1:0] mac_b2accu_data7; 
input [22 -1:0] mac_b2accu_data8; 
input [22 -1:0] mac_b2accu_data9; 
input [22 -1:0] mac_b2accu_data10; 
input [22 -1:0] mac_b2accu_data11; 
input [22 -1:0] mac_b2accu_data12; 
input [22 -1:0] mac_b2accu_data13; 
input [22 -1:0] mac_b2accu_data14; 
input [22 -1:0] mac_b2accu_data15; 
//| eperl: generated_end (DO NOT EDIT ABOVE)
input [32/2-1:0] mac_b2accu_mask;
input mac_b2accu_mode;
input mac_b2accu_pvld;
output [5 +1 -1:0] abuf_wr_addr;
output [34*32 -1:0] abuf_wr_data;
output abuf_wr_en;
output [32*32 -1:0] dlv_data;
output dlv_mask;
output [1:0] dlv_pd;
output dlv_valid;
output [31:0] dp2reg_sat_count;
// spyglass disable_block NoWidthInBasedNum-ML
// spyglass disable_block STARC-2.10.1.6
// unpack abuffer read data
//: my $kk=34;
//: for(my $i=0; $i<32 ; $i++){
//: print qq(
//: wire [${kk}-1:0] abuf_in_data_${i} = abuf_rd_data[($i+1)*${kk}-1:$i*${kk}]; )
//: }
//| eperl: generated_beg (DO NOT EDIT BELOW)

wire [34-1:0] abuf_in_data_0 = abuf_rd_data[(0+1)*34-1:0*34]; 
wire [34-1:0] abuf_in_data_1 = abuf_rd_data[(1+1)*34-1:1*34]; 
wire [34-1:0] abuf_in_data_2 = abuf_rd_data[(2+1)*34-1:2*34]; 
wire [34-1:0] abuf_in_data_3 = abuf_rd_data[(3+1)*34-1:3*34]; 
wire [34-1:0] abuf_in_data_4 = abuf_rd_data[(4+1)*34-1:4*34]; 
wire [34-1:0] abuf_in_data_5 = abuf_rd_data[(5+1)*34-1:5*34]; 
wire [34-1:0] abuf_in_data_6 = abuf_rd_data[(6+1)*34-1:6*34]; 
wire [34-1:0] abuf_in_data_7 = abuf_rd_data[(7+1)*34-1:7*34]; 
wire [34-1:0] abuf_in_data_8 = abuf_rd_data[(8+1)*34-1:8*34]; 
wire [34-1:0] abuf_in_data_9 = abuf_rd_data[(9+1)*34-1:9*34]; 
wire [34-1:0] abuf_in_data_10 = abuf_rd_data[(10+1)*34-1:10*34]; 
wire [34-1:0] abuf_in_data_11 = abuf_rd_data[(11+1)*34-1:11*34]; 
wire [34-1:0] abuf_in_data_12 = abuf_rd_data[(12+1)*34-1:12*34]; 
wire [34-1:0] abuf_in_data_13 = abuf_rd_data[(13+1)*34-1:13*34]; 
wire [34-1:0] abuf_in_data_14 = abuf_rd_data[(14+1)*34-1:14*34]; 
wire [34-1:0] abuf_in_data_15 = abuf_rd_data[(15+1)*34-1:15*34]; 
wire [34-1:0] abuf_in_data_16 = abuf_rd_data[(16+1)*34-1:16*34]; 
wire [34-1:0] abuf_in_data_17 = abuf_rd_data[(17+1)*34-1:17*34]; 
wire [34-1:0] abuf_in_data_18 = abuf_rd_data[(18+1)*34-1:18*34]; 
wire [34-1:0] abuf_in_data_19 = abuf_rd_data[(19+1)*34-1:19*34]; 
wire [34-1:0] abuf_in_data_20 = abuf_rd_data[(20+1)*34-1:20*34]; 
wire [34-1:0] abuf_in_data_21 = abuf_rd_data[(21+1)*34-1:21*34]; 
wire [34-1:0] abuf_in_data_22 = abuf_rd_data[(22+1)*34-1:22*34]; 
wire [34-1:0] abuf_in_data_23 = abuf_rd_data[(23+1)*34-1:23*34]; 
wire [34-1:0] abuf_in_data_24 = abuf_rd_data[(24+1)*34-1:24*34]; 
wire [34-1:0] abuf_in_data_25 = abuf_rd_data[(25+1)*34-1:25*34]; 
wire [34-1:0] abuf_in_data_26 = abuf_rd_data[(26+1)*34-1:26*34]; 
wire [34-1:0] abuf_in_data_27 = abuf_rd_data[(27+1)*34-1:27*34]; 
wire [34-1:0] abuf_in_data_28 = abuf_rd_data[(28+1)*34-1:28*34]; 
wire [34-1:0] abuf_in_data_29 = abuf_rd_data[(29+1)*34-1:29*34]; 
wire [34-1:0] abuf_in_data_30 = abuf_rd_data[(30+1)*34-1:30*34]; 
wire [34-1:0] abuf_in_data_31 = abuf_rd_data[(31+1)*34-1:31*34]; 
//| eperl: generated_end (DO NOT EDIT ABOVE)
//1T delay, the same T with data/mask
//: &eperl::flop("-wid 13 -q accu_ctrl_pd_d1 -en accu_ctrl_valid -d accu_ctrl_pd");
//| eperl: generated_beg (DO NOT EDIT BELOW)
reg [12:0] accu_ctrl_pd_d1;
always @(posedge nvdla_core_clk) begin
   if (!nvdla_core_rstn) begin
       accu_ctrl_pd_d1 <= 'b0;
   end else begin
       if ((accu_ctrl_valid) == 1'b1) begin
           accu_ctrl_pd_d1 <= accu_ctrl_pd;
       // VCS coverage off
       end else if ((accu_ctrl_valid) == 1'b0) begin
       end else begin
           accu_ctrl_pd_d1 <= 'bx;
       // VCS coverage on
       end
   end
end

//| eperl: generated_end (DO NOT EDIT ABOVE)
wire calc_valid_in = (mac_b2accu_pvld | mac_a2accu_pvld);
// spyglass disable_block STARC05-3.3.1.4b
//: &eperl::retime("-stage 3 -o calc_valid -i calc_valid_in");
//| eperl: generated_beg (DO NOT EDIT BELOW)
reg  calc_valid_in_d1;
always @(posedge nvdla_core_clk) begin
        calc_valid_in_d1 <= calc_valid_in;
end

reg  calc_valid_in_d2;
always @(posedge nvdla_core_clk) begin
        calc_valid_in_d2 <= calc_valid_in_d1;
end

reg  calc_valid_in_d3;
always @(posedge nvdla_core_clk) begin
        calc_valid_in_d3 <= calc_valid_in_d2;
end

wire  calc_valid;
assign calc_valid = calc_valid_in_d3;


//| eperl: generated_end (DO NOT EDIT ABOVE)
// spyglass enable_block STARC05-3.3.1.4b
// unpack pd form abuffer control
wire [5:0] calc_addr = accu_ctrl_pd_d1[5:0];
wire [2:0] calc_mode = accu_ctrl_pd_d1[8:6];
wire calc_stripe_end = accu_ctrl_pd_d1[9];
wire calc_channel_end = accu_ctrl_pd_d1[10];
wire calc_layer_end = accu_ctrl_pd_d1[11];
wire calc_dlv_elem_mask = accu_ctrl_pd_d1[12];
//: my $kk=22;
//: for(my $i = 0; $i < 32/2; $i ++) {
//: print "wire [${kk}-1:0] calc_elem_${i} = mac_a2accu_data${i}; \n";
//: }
//: for(my $i = 32/2; $i < 32; $i ++) {
//: my $j = $i - 32/2;
//: print "wire [${kk}-1:0] calc_elem_${i} = mac_b2accu_data${j}; \n";
//: }
//| eperl: generated_beg (DO NOT EDIT BELOW)
wire [22-1:0] calc_elem_0 = mac_a2accu_data0; 
wire [22-1:0] calc_elem_1 = mac_a2accu_data1; 
wire [22-1:0] calc_elem_2 = mac_a2accu_data2; 
wire [22-1:0] calc_elem_3 = mac_a2accu_data3; 
wire [22-1:0] calc_elem_4 = mac_a2accu_data4; 
wire [22-1:0] calc_elem_5 = mac_a2accu_data5; 
wire [22-1:0] calc_elem_6 = mac_a2accu_data6; 
wire [22-1:0] calc_elem_7 = mac_a2accu_data7; 
wire [22-1:0] calc_elem_8 = mac_a2accu_data8; 
wire [22-1:0] calc_elem_9 = mac_a2accu_data9; 
wire [22-1:0] calc_elem_10 = mac_a2accu_data10; 
wire [22-1:0] calc_elem_11 = mac_a2accu_data11; 
wire [22-1:0] calc_elem_12 = mac_a2accu_data12; 
wire [22-1:0] calc_elem_13 = mac_a2accu_data13; 
wire [22-1:0] calc_elem_14 = mac_a2accu_data14; 
wire [22-1:0] calc_elem_15 = mac_a2accu_data15; 
wire [22-1:0] calc_elem_16 = mac_b2accu_data0; 
wire [22-1:0] calc_elem_17 = mac_b2accu_data1; 
wire [22-1:0] calc_elem_18 = mac_b2accu_data2; 
wire [22-1:0] calc_elem_19 = mac_b2accu_data3; 
wire [22-1:0] calc_elem_20 = mac_b2accu_data4; 
wire [22-1:0] calc_elem_21 = mac_b2accu_data5; 
wire [22-1:0] calc_elem_22 = mac_b2accu_data6; 
wire [22-1:0] calc_elem_23 = mac_b2accu_data7; 
wire [22-1:0] calc_elem_24 = mac_b2accu_data8; 
wire [22-1:0] calc_elem_25 = mac_b2accu_data9; 
wire [22-1:0] calc_elem_26 = mac_b2accu_data10; 
wire [22-1:0] calc_elem_27 = mac_b2accu_data11; 
wire [22-1:0] calc_elem_28 = mac_b2accu_data12; 
wire [22-1:0] calc_elem_29 = mac_b2accu_data13; 
wire [22-1:0] calc_elem_30 = mac_b2accu_data14; 
wire [22-1:0] calc_elem_31 = mac_b2accu_data15; 

//| eperl: generated_end (DO NOT EDIT ABOVE)
wire [32 -1:0] calc_in_mask = {mac_b2accu_mask, mac_a2accu_mask};
wire [32 -1:0] calc_op_en = calc_in_mask
wire [32 -1:0] calc_op1_vld = calc_in_mask & {32{accu_ctrl_ram_valid}};
wire calc_dlv_valid = calc_valid & calc_channel_end;
wire calc_wr_en = calc_valid & (~calc_channel_end);
//: my $hh= 22-22;
//: my $pp= 34;
//: my $bb= 22;
//: for(my $i = 0; $i <32; $i ++) {
//: if($hh == 0) {
//: print qq(
//: wire [21:0]calc_op0_${i} = {calc_elem_${i}};
//: wire [${pp}-1:0] calc_op1_${i} = abuf_in_data_${i};
//: );
//: }
//: elsif($hh > 0) {
//: print qq(
//: wire [21:0]calc_op0_${i} = {{${hh}{calc_elem_${i}[${bb}-1]}},calc_elem_${i}};
//: wire [${pp}-1:0] calc_op1_${i} = abuf_in_data_${i};
//: );
//: }
//: }
//| eperl: generated_beg (DO NOT EDIT BELOW)

wire [21:0]calc_op0_0 = {calc_elem_0};
wire [34-1:0] calc_op1_0 = abuf_in_data_0;

wire [21:0]calc_op0_1 = {calc_elem_1};
wire [34-1:0] calc_op1_1 = abuf_in_data_1;

wire [21:0]calc_op0_2 = {calc_elem_2};
wire [34-1:0] calc_op1_2 = abuf_in_data_2;

wire [21:0]calc_op0_3 = {calc_elem_3};
wire [34-1:0] calc_op1_3 = abuf_in_data_3;

wire [21:0]calc_op0_4 = {calc_elem_4};
wire [34-1:0] calc_op1_4 = abuf_in_data_4;

wire [21:0]calc_op0_5 = {calc_elem_5};
wire [34-1:0] calc_op1_5 = abuf_in_data_5;

wire [21:0]calc_op0_6 = {calc_elem_6};
wire [34-1:0] calc_op1_6 = abuf_in_data_6;

wire [21:0]calc_op0_7 = {calc_elem_7};
wire [34-1:0] calc_op1_7 = abuf_in_data_7;

wire [21:0]calc_op0_8 = {calc_elem_8};
wire [34-1:0] calc_op1_8 = abuf_in_data_8;

wire [21:0]calc_op0_9 = {calc_elem_9};
wire [34-1:0] calc_op1_9 = abuf_in_data_9;

wire [21:0]calc_op0_10 = {calc_elem_10};
wire [34-1:0] calc_op1_10 = abuf_in_data_10;

wire [21:0]calc_op0_11 = {calc_elem_11};
wire [34-1:0] calc_op1_11 = abuf_in_data_11;

wire [21:0]calc_op0_12 = {calc_elem_12};
wire [34-1:0] calc_op1_12 = abuf_in_data_12;

wire [21:0]calc_op0_13 = {calc_elem_13};
wire [34-1:0] calc_op1_13 = abuf_in_data_13;

wire [21:0]calc_op0_14 = {calc_elem_14};
wire [34-1:0] calc_op1_14 = abuf_in_data_14;

wire [21:0]calc_op0_15 = {calc_elem_15};
wire [34-1:0] calc_op1_15 = abuf_in_data_15;

wire [21:0]calc_op0_16 = {calc_elem_16};
wire [34-1:0] calc_op1_16 = abuf_in_data_16;

wire [21:0]calc_op0_17 = {calc_elem_17};
wire [34-1:0] calc_op1_17 = abuf_in_data_17;

wire [21:0]calc_op0_18 = {calc_elem_18};
wire [34-1:0] calc_op1_18 = abuf_in_data_18;

wire [21:0]calc_op0_19 = {calc_elem_19};
wire [34-1:0] calc_op1_19 = abuf_in_data_19;

wire [21:0]calc_op0_20 = {calc_elem_20};
wire [34-1:0] calc_op1_20 = abuf_in_data_20;

wire [21:0]calc_op0_21 = {calc_elem_21};
wire [34-1:0] calc_op1_21 = abuf_in_data_21;

wire [21:0]calc_op0_22 = {calc_elem_22};
wire [34-1:0] calc_op1_22 = abuf_in_data_22;

wire [21:0]calc_op0_23 = {calc_elem_23};
wire [34-1:0] calc_op1_23 = abuf_in_data_23;

wire [21:0]calc_op0_24 = {calc_elem_24};
wire [34-1:0] calc_op1_24 = abuf_in_data_24;

wire [21:0]calc_op0_25 = {calc_elem_25};
wire [34-1:0] calc_op1_25 = abuf_in_data_25;

wire [21:0]calc_op0_26 = {calc_elem_26};
wire [34-1:0] calc_op1_26 = abuf_in_data_26;

wire [21:0]calc_op0_27 = {calc_elem_27};
wire [34-1:0] calc_op1_27 = abuf_in_data_27;

wire [21:0]calc_op0_28 = {calc_elem_28};
wire [34-1:0] calc_op1_28 = abuf_in_data_28;

wire [21:0]calc_op0_29 = {calc_elem_29};
wire [34-1:0] calc_op1_29 = abuf_in_data_29;

wire [21:0]calc_op0_30 = {calc_elem_30};
wire [34-1:0] calc_op1_30 = abuf_in_data_30;

wire [21:0]calc_op0_31 = {calc_elem_31};
wire [34-1:0] calc_op1_31 = abuf_in_data_31;

//| eperl: generated_end (DO NOT EDIT ABOVE)
// instance int8 adders
wire [32 -1:0] calc_fout_sat;
wire [32 -1:0] calc_pout_vld;
wire [32 -1:0] calc_fout_vld;
//: for(my $i = 0; $i <32; $i ++) {
//: print qq(
//: wire [34 -1:0] calc_pout_${i}_sum;
//: wire [32 -1:0] calc_fout_${i}_sum;
//: )
//: }
//: for(my $i = 0; $i <32; $i ++) {
//: print qq(
//: NV_soDLA_CACC_CALC_int8 u_cell_int8_${i} (
//: .cfg_truncate (cfg_truncate) //|< w
//: ,.in_data (calc_op0_${i}) //|< r
//: ,.in_op (calc_op1_${i}) //|< r
//: ,.in_op_valid (calc_op1_vld[${i}]) //|< r
//: ,.in_sel (calc_dlv_valid) //|< r
//: ,.in_valid (calc_op_en[${i}]) //|< r
//: ,.out_final_data (calc_fout_${i}_sum) //|> w
//: ,.out_final_sat (calc_fout_sat[${i}]) //|> w
//: ,.out_final_valid (calc_fout_vld[${i}]) //|> w
//: ,.out_partial_data (calc_pout_${i}_sum) //|> w
//: ,.out_partial_valid (calc_pout_vld[${i}]) //|> w
//: ,.nvdla_core_clk (nvdla_cell_clk) //|< i
//: ,.reset (nvdla_core_rstn) //|< i
//: );
//: )
//: }
//| eperl: generated_beg (DO NOT EDIT BELOW)

wire [34 -1:0] calc_pout_0_sum;
wire [32 -1:0] calc_fout_0_sum;

wire [34 -1:0] calc_pout_1_sum;
wire [32 -1:0] calc_fout_1_sum;

wire [34 -1:0] calc_pout_2_sum;
wire [32 -1:0] calc_fout_2_sum;

wire [34 -1:0] calc_pout_3_sum;
wire [32 -1:0] calc_fout_3_sum;

wire [34 -1:0] calc_pout_4_sum;
wire [32 -1:0] calc_fout_4_sum;

wire [34 -1:0] calc_pout_5_sum;
wire [32 -1:0] calc_fout_5_sum;

wire [34 -1:0] calc_pout_6_sum;
wire [32 -1:0] calc_fout_6_sum;

wire [34 -1:0] calc_pout_7_sum;
wire [32 -1:0] calc_fout_7_sum;

wire [34 -1:0] calc_pout_8_sum;
wire [32 -1:0] calc_fout_8_sum;

wire [34 -1:0] calc_pout_9_sum;
wire [32 -1:0] calc_fout_9_sum;

wire [34 -1:0] calc_pout_10_sum;
wire [32 -1:0] calc_fout_10_sum;

wire [34 -1:0] calc_pout_11_sum;
wire [32 -1:0] calc_fout_11_sum;

wire [34 -1:0] calc_pout_12_sum;
wire [32 -1:0] calc_fout_12_sum;

wire [34 -1:0] calc_pout_13_sum;
wire [32 -1:0] calc_fout_13_sum;

wire [34 -1:0] calc_pout_14_sum;
wire [32 -1:0] calc_fout_14_sum;

wire [34 -1:0] calc_pout_15_sum;
wire [32 -1:0] calc_fout_15_sum;

wire [34 -1:0] calc_pout_16_sum;
wire [32 -1:0] calc_fout_16_sum;

wire [34 -1:0] calc_pout_17_sum;
wire [32 -1:0] calc_fout_17_sum;

wire [34 -1:0] calc_pout_18_sum;
wire [32 -1:0] calc_fout_18_sum;

wire [34 -1:0] calc_pout_19_sum;
wire [32 -1:0] calc_fout_19_sum;

wire [34 -1:0] calc_pout_20_sum;
wire [32 -1:0] calc_fout_20_sum;

wire [34 -1:0] calc_pout_21_sum;
wire [32 -1:0] calc_fout_21_sum;

wire [34 -1:0] calc_pout_22_sum;
wire [32 -1:0] calc_fout_22_sum;

wire [34 -1:0] calc_pout_23_sum;
wire [32 -1:0] calc_fout_23_sum;

wire [34 -1:0] calc_pout_24_sum;
wire [32 -1:0] calc_fout_24_sum;

wire [34 -1:0] calc_pout_25_sum;
wire [32 -1:0] calc_fout_25_sum;

wire [34 -1:0] calc_pout_26_sum;
wire [32 -1:0] calc_fout_26_sum;

wire [34 -1:0] calc_pout_27_sum;
wire [32 -1:0] calc_fout_27_sum;

wire [34 -1:0] calc_pout_28_sum;
wire [32 -1:0] calc_fout_28_sum;

wire [34 -1:0] calc_pout_29_sum;
wire [32 -1:0] calc_fout_29_sum;

wire [34 -1:0] calc_pout_30_sum;
wire [32 -1:0] calc_fout_30_sum;

wire [34 -1:0] calc_pout_31_sum;
wire [32 -1:0] calc_fout_31_sum;

NV_soDLA_CACC_CALC_int8 u_cell_int8_0 (
.cfg_truncate (cfg_truncate) //|< w
,.in_data (calc_op0_0) //|< r
,.in_op (calc_op1_0) //|< r
,.in_op_valid (calc_op1_vld[0]) //|< r
,.in_sel (calc_dlv_valid) //|< r
,.in_valid (calc_op_en[0]) //|< r
,.out_final_data (calc_fout_0_sum) //|> w
,.out_final_sat (calc_fout_sat[0]) //|> w
,.out_final_valid (calc_fout_vld[0]) //|> w
,.out_partial_data (calc_pout_0_sum) //|> w
,.out_partial_valid (calc_pout_vld[0]) //|> w
,.nvdla_core_clk (nvdla_cell_clk) //|< i
,.reset (nvdla_core_rstn) //|< i
);

NV_soDLA_CACC_CALC_int8 u_cell_int8_1 (
.cfg_truncate (cfg_truncate) //|< w
,.in_data (calc_op0_1) //|< r
,.in_op (calc_op1_1) //|< r
,.in_op_valid (calc_op1_vld[1]) //|< r
,.in_sel (calc_dlv_valid) //|< r
,.in_valid (calc_op_en[1]) //|< r
,.out_final_data (calc_fout_1_sum) //|> w
,.out_final_sat (calc_fout_sat[1]) //|> w
,.out_final_valid (calc_fout_vld[1]) //|> w
,.out_partial_data (calc_pout_1_sum) //|> w
,.out_partial_valid (calc_pout_vld[1]) //|> w
,.nvdla_core_clk (nvdla_cell_clk) //|< i
,.reset (nvdla_core_rstn) //|< i
);

NV_soDLA_CACC_CALC_int8 u_cell_int8_2 (
.cfg_truncate (cfg_truncate) //|< w
,.in_data (calc_op0_2) //|< r
,.in_op (calc_op1_2) //|< r
,.in_op_valid (calc_op1_vld[2]) //|< r
,.in_sel (calc_dlv_valid) //|< r
,.in_valid (calc_op_en[2]) //|< r
,.out_final_data (calc_fout_2_sum) //|> w
,.out_final_sat (calc_fout_sat[2]) //|> w
,.out_final_valid (calc_fout_vld[2]) //|> w
,.out_partial_data (calc_pout_2_sum) //|> w
,.out_partial_valid (calc_pout_vld[2]) //|> w
,.nvdla_core_clk (nvdla_cell_clk) //|< i
,.reset (nvdla_core_rstn) //|< i
);

NV_soDLA_CACC_CALC_int8 u_cell_int8_3 (
.cfg_truncate (cfg_truncate) //|< w
,.in_data (calc_op0_3) //|< r
,.in_op (calc_op1_3) //|< r
,.in_op_valid (calc_op1_vld[3]) //|< r
,.in_sel (calc_dlv_valid) //|< r
,.in_valid (calc_op_en[3]) //|< r
,.out_final_data (calc_fout_3_sum) //|> w
,.out_final_sat (calc_fout_sat[3]) //|> w
,.out_final_valid (calc_fout_vld[3]) //|> w
,.out_partial_data (calc_pout_3_sum) //|> w
,.out_partial_valid (calc_pout_vld[3]) //|> w
,.nvdla_core_clk (nvdla_cell_clk) //|< i
,.reset (nvdla_core_rstn) //|< i
);

NV_soDLA_CACC_CALC_int8 u_cell_int8_4 (
.cfg_truncate (cfg_truncate) //|< w
,.in_data (calc_op0_4) //|< r
,.in_op (calc_op1_4) //|< r
,.in_op_valid (calc_op1_vld[4]) //|< r
,.in_sel (calc_dlv_valid) //|< r
,.in_valid (calc_op_en[4]) //|< r
,.out_final_data (calc_fout_4_sum) //|> w
,.out_final_sat (calc_fout_sat[4]) //|> w
,.out_final_valid (calc_fout_vld[4]) //|> w
,.out_partial_data (calc_pout_4_sum) //|> w
,.out_partial_valid (calc_pout_vld[4]) //|> w
,.nvdla_core_clk (nvdla_cell_clk) //|< i
,.reset (nvdla_core_rstn) //|< i
);

NV_soDLA_CACC_CALC_int8 u_cell_int8_5 (
.cfg_truncate (cfg_truncate) //|< w
,.in_data (calc_op0_5) //|< r
,.in_op (calc_op1_5) //|< r
,.in_op_valid (calc_op1_vld[5]) //|< r
,.in_sel (calc_dlv_valid) //|< r
,.in_valid (calc_op_en[5]) //|< r
,.out_final_data (calc_fout_5_sum) //|> w
,.out_final_sat (calc_fout_sat[5]) //|> w
,.out_final_valid (calc_fout_vld[5]) //|> w
,.out_partial_data (calc_pout_5_sum) //|> w
,.out_partial_valid (calc_pout_vld[5]) //|> w
,.nvdla_core_clk (nvdla_cell_clk) //|< i
,.reset (nvdla_core_rstn) //|< i
);

NV_soDLA_CACC_CALC_int8 u_cell_int8_6 (
.cfg_truncate (cfg_truncate) //|< w
,.in_data (calc_op0_6) //|< r
,.in_op (calc_op1_6) //|< r
,.in_op_valid (calc_op1_vld[6]) //|< r
,.in_sel (calc_dlv_valid) //|< r
,.in_valid (calc_op_en[6]) //|< r
,.out_final_data (calc_fout_6_sum) //|> w
,.out_final_sat (calc_fout_sat[6]) //|> w
,.out_final_valid (calc_fout_vld[6]) //|> w
,.out_partial_data (calc_pout_6_sum) //|> w
,.out_partial_valid (calc_pout_vld[6]) //|> w
,.nvdla_core_clk (nvdla_cell_clk) //|< i
,.reset (nvdla_core_rstn) //|< i
);

NV_soDLA_CACC_CALC_int8 u_cell_int8_7 (
.cfg_truncate (cfg_truncate) //|< w
,.in_data (calc_op0_7) //|< r
,.in_op (calc_op1_7) //|< r
,.in_op_valid (calc_op1_vld[7]) //|< r
,.in_sel (calc_dlv_valid) //|< r
,.in_valid (calc_op_en[7]) //|< r
,.out_final_data (calc_fout_7_sum) //|> w
,.out_final_sat (calc_fout_sat[7]) //|> w
,.out_final_valid (calc_fout_vld[7]) //|> w
,.out_partial_data (calc_pout_7_sum) //|> w
,.out_partial_valid (calc_pout_vld[7]) //|> w
,.nvdla_core_clk (nvdla_cell_clk) //|< i
,.reset (nvdla_core_rstn) //|< i
);

NV_soDLA_CACC_CALC_int8 u_cell_int8_8 (
.cfg_truncate (cfg_truncate) //|< w
,.in_data (calc_op0_8) //|< r
,.in_op (calc_op1_8) //|< r
,.in_op_valid (calc_op1_vld[8]) //|< r
,.in_sel (calc_dlv_valid) //|< r
,.in_valid (calc_op_en[8]) //|< r
,.out_final_data (calc_fout_8_sum) //|> w
,.out_final_sat (calc_fout_sat[8]) //|> w
,.out_final_valid (calc_fout_vld[8]) //|> w
,.out_partial_data (calc_pout_8_sum) //|> w
,.out_partial_valid (calc_pout_vld[8]) //|> w
,.nvdla_core_clk (nvdla_cell_clk) //|< i
,.reset (nvdla_core_rstn) //|< i
);

NV_soDLA_CACC_CALC_int8 u_cell_int8_9 (
.cfg_truncate (cfg_truncate) //|< w
,.in_data (calc_op0_9) //|< r
,.in_op (calc_op1_9) //|< r
,.in_op_valid (calc_op1_vld[9]) //|< r
,.in_sel (calc_dlv_valid) //|< r
,.in_valid (calc_op_en[9]) //|< r
,.out_final_data (calc_fout_9_sum) //|> w
,.out_final_sat (calc_fout_sat[9]) //|> w
,.out_final_valid (calc_fout_vld[9]) //|> w
,.out_partial_data (calc_pout_9_sum) //|> w
,.out_partial_valid (calc_pout_vld[9]) //|> w
,.nvdla_core_clk (nvdla_cell_clk) //|< i
,.reset (nvdla_core_rstn) //|< i
);

NV_soDLA_CACC_CALC_int8 u_cell_int8_10 (
.cfg_truncate (cfg_truncate) //|< w
,.in_data (calc_op0_10) //|< r
,.in_op (calc_op1_10) //|< r
,.in_op_valid (calc_op1_vld[10]) //|< r
,.in_sel (calc_dlv_valid) //|< r
,.in_valid (calc_op_en[10]) //|< r
,.out_final_data (calc_fout_10_sum) //|> w
,.out_final_sat (calc_fout_sat[10]) //|> w
,.out_final_valid (calc_fout_vld[10]) //|> w
,.out_partial_data (calc_pout_10_sum) //|> w
,.out_partial_valid (calc_pout_vld[10]) //|> w
,.nvdla_core_clk (nvdla_cell_clk) //|< i
,.reset (nvdla_core_rstn) //|< i
);

NV_soDLA_CACC_CALC_int8 u_cell_int8_11 (
.cfg_truncate (cfg_truncate) //|< w
,.in_data (calc_op0_11) //|< r
,.in_op (calc_op1_11) //|< r
,.in_op_valid (calc_op1_vld[11]) //|< r
,.in_sel (calc_dlv_valid) //|< r
,.in_valid (calc_op_en[11]) //|< r
,.out_final_data (calc_fout_11_sum) //|> w
,.out_final_sat (calc_fout_sat[11]) //|> w
,.out_final_valid (calc_fout_vld[11]) //|> w
,.out_partial_data (calc_pout_11_sum) //|> w
,.out_partial_valid (calc_pout_vld[11]) //|> w
,.nvdla_core_clk (nvdla_cell_clk) //|< i
,.reset (nvdla_core_rstn) //|< i
);

NV_soDLA_CACC_CALC_int8 u_cell_int8_12 (
.cfg_truncate (cfg_truncate) //|< w
,.in_data (calc_op0_12) //|< r
,.in_op (calc_op1_12) //|< r
,.in_op_valid (calc_op1_vld[12]) //|< r
,.in_sel (calc_dlv_valid) //|< r
,.in_valid (calc_op_en[12]) //|< r
,.out_final_data (calc_fout_12_sum) //|> w
,.out_final_sat (calc_fout_sat[12]) //|> w
,.out_final_valid (calc_fout_vld[12]) //|> w
,.out_partial_data (calc_pout_12_sum) //|> w
,.out_partial_valid (calc_pout_vld[12]) //|> w
,.nvdla_core_clk (nvdla_cell_clk) //|< i
,.reset (nvdla_core_rstn) //|< i
);

NV_soDLA_CACC_CALC_int8 u_cell_int8_13 (
.cfg_truncate (cfg_truncate) //|< w
,.in_data (calc_op0_13) //|< r
,.in_op (calc_op1_13) //|< r
,.in_op_valid (calc_op1_vld[13]) //|< r
,.in_sel (calc_dlv_valid) //|< r
,.in_valid (calc_op_en[13]) //|< r
,.out_final_data (calc_fout_13_sum) //|> w
,.out_final_sat (calc_fout_sat[13]) //|> w
,.out_final_valid (calc_fout_vld[13]) //|> w
,.out_partial_data (calc_pout_13_sum) //|> w
,.out_partial_valid (calc_pout_vld[13]) //|> w
,.nvdla_core_clk (nvdla_cell_clk) //|< i
,.reset (nvdla_core_rstn) //|< i
);

NV_soDLA_CACC_CALC_int8 u_cell_int8_14 (
.cfg_truncate (cfg_truncate) //|< w
,.in_data (calc_op0_14) //|< r
,.in_op (calc_op1_14) //|< r
,.in_op_valid (calc_op1_vld[14]) //|< r
,.in_sel (calc_dlv_valid) //|< r
,.in_valid (calc_op_en[14]) //|< r
,.out_final_data (calc_fout_14_sum) //|> w
,.out_final_sat (calc_fout_sat[14]) //|> w
,.out_final_valid (calc_fout_vld[14]) //|> w
,.out_partial_data (calc_pout_14_sum) //|> w
,.out_partial_valid (calc_pout_vld[14]) //|> w
,.nvdla_core_clk (nvdla_cell_clk) //|< i
,.reset (nvdla_core_rstn) //|< i
);

NV_soDLA_CACC_CALC_int8 u_cell_int8_15 (
.cfg_truncate (cfg_truncate) //|< w
,.in_data (calc_op0_15) //|< r
,.in_op (calc_op1_15) //|< r
,.in_op_valid (calc_op1_vld[15]) //|< r
,.in_sel (calc_dlv_valid) //|< r
,.in_valid (calc_op_en[15]) //|< r
,.out_final_data (calc_fout_15_sum) //|> w
,.out_final_sat (calc_fout_sat[15]) //|> w
,.out_final_valid (calc_fout_vld[15]) //|> w
,.out_partial_data (calc_pout_15_sum) //|> w
,.out_partial_valid (calc_pout_vld[15]) //|> w
,.nvdla_core_clk (nvdla_cell_clk) //|< i
,.reset (nvdla_core_rstn) //|< i
);

NV_soDLA_CACC_CALC_int8 u_cell_int8_16 (
.cfg_truncate (cfg_truncate) //|< w
,.in_data (calc_op0_16) //|< r
,.in_op (calc_op1_16) //|< r
,.in_op_valid (calc_op1_vld[16]) //|< r
,.in_sel (calc_dlv_valid) //|< r
,.in_valid (calc_op_en[16]) //|< r
,.out_final_data (calc_fout_16_sum) //|> w
,.out_final_sat (calc_fout_sat[16]) //|> w
,.out_final_valid (calc_fout_vld[16]) //|> w
,.out_partial_data (calc_pout_16_sum) //|> w
,.out_partial_valid (calc_pout_vld[16]) //|> w
,.nvdla_core_clk (nvdla_cell_clk) //|< i
,.reset (nvdla_core_rstn) //|< i
);

NV_soDLA_CACC_CALC_int8 u_cell_int8_17 (
.cfg_truncate (cfg_truncate) //|< w
,.in_data (calc_op0_17) //|< r
,.in_op (calc_op1_17) //|< r
,.in_op_valid (calc_op1_vld[17]) //|< r
,.in_sel (calc_dlv_valid) //|< r
,.in_valid (calc_op_en[17]) //|< r
,.out_final_data (calc_fout_17_sum) //|> w
,.out_final_sat (calc_fout_sat[17]) //|> w
,.out_final_valid (calc_fout_vld[17]) //|> w
,.out_partial_data (calc_pout_17_sum) //|> w
,.out_partial_valid (calc_pout_vld[17]) //|> w
,.nvdla_core_clk (nvdla_cell_clk) //|< i
,.reset (nvdla_core_rstn) //|< i
);

NV_soDLA_CACC_CALC_int8 u_cell_int8_18 (
.cfg_truncate (cfg_truncate) //|< w
,.in_data (calc_op0_18) //|< r
,.in_op (calc_op1_18) //|< r
,.in_op_valid (calc_op1_vld[18]) //|< r
,.in_sel (calc_dlv_valid) //|< r
,.in_valid (calc_op_en[18]) //|< r
,.out_final_data (calc_fout_18_sum) //|> w
,.out_final_sat (calc_fout_sat[18]) //|> w
,.out_final_valid (calc_fout_vld[18]) //|> w
,.out_partial_data (calc_pout_18_sum) //|> w
,.out_partial_valid (calc_pout_vld[18]) //|> w
,.nvdla_core_clk (nvdla_cell_clk) //|< i
,.reset (nvdla_core_rstn) //|< i
);

NV_soDLA_CACC_CALC_int8 u_cell_int8_19 (
.cfg_truncate (cfg_truncate) //|< w
,.in_data (calc_op0_19) //|< r
,.in_op (calc_op1_19) //|< r
,.in_op_valid (calc_op1_vld[19]) //|< r
,.in_sel (calc_dlv_valid) //|< r
,.in_valid (calc_op_en[19]) //|< r
,.out_final_data (calc_fout_19_sum) //|> w
,.out_final_sat (calc_fout_sat[19]) //|> w
,.out_final_valid (calc_fout_vld[19]) //|> w
,.out_partial_data (calc_pout_19_sum) //|> w
,.out_partial_valid (calc_pout_vld[19]) //|> w
,.nvdla_core_clk (nvdla_cell_clk) //|< i
,.reset (nvdla_core_rstn) //|< i
);

NV_soDLA_CACC_CALC_int8 u_cell_int8_20 (
.cfg_truncate (cfg_truncate) //|< w
,.in_data (calc_op0_20) //|< r
,.in_op (calc_op1_20) //|< r
,.in_op_valid (calc_op1_vld[20]) //|< r
,.in_sel (calc_dlv_valid) //|< r
,.in_valid (calc_op_en[20]) //|< r
,.out_final_data (calc_fout_20_sum) //|> w
,.out_final_sat (calc_fout_sat[20]) //|> w
,.out_final_valid (calc_fout_vld[20]) //|> w
,.out_partial_data (calc_pout_20_sum) //|> w
,.out_partial_valid (calc_pout_vld[20]) //|> w
,.nvdla_core_clk (nvdla_cell_clk) //|< i
,.reset (nvdla_core_rstn) //|< i
);

NV_soDLA_CACC_CALC_int8 u_cell_int8_21 (
.cfg_truncate (cfg_truncate) //|< w
,.in_data (calc_op0_21) //|< r
,.in_op (calc_op1_21) //|< r
,.in_op_valid (calc_op1_vld[21]) //|< r
,.in_sel (calc_dlv_valid) //|< r
,.in_valid (calc_op_en[21]) //|< r
,.out_final_data (calc_fout_21_sum) //|> w
,.out_final_sat (calc_fout_sat[21]) //|> w
,.out_final_valid (calc_fout_vld[21]) //|> w
,.out_partial_data (calc_pout_21_sum) //|> w
,.out_partial_valid (calc_pout_vld[21]) //|> w
,.nvdla_core_clk (nvdla_cell_clk) //|< i
,.reset (nvdla_core_rstn) //|< i
);

NV_soDLA_CACC_CALC_int8 u_cell_int8_22 (
.cfg_truncate (cfg_truncate) //|< w
,.in_data (calc_op0_22) //|< r
,.in_op (calc_op1_22) //|< r
,.in_op_valid (calc_op1_vld[22]) //|< r
,.in_sel (calc_dlv_valid) //|< r
,.in_valid (calc_op_en[22]) //|< r
,.out_final_data (calc_fout_22_sum) //|> w
,.out_final_sat (calc_fout_sat[22]) //|> w
,.out_final_valid (calc_fout_vld[22]) //|> w
,.out_partial_data (calc_pout_22_sum) //|> w
,.out_partial_valid (calc_pout_vld[22]) //|> w
,.nvdla_core_clk (nvdla_cell_clk) //|< i
,.reset (nvdla_core_rstn) //|< i
);

NV_soDLA_CACC_CALC_int8 u_cell_int8_23 (
.cfg_truncate (cfg_truncate) //|< w
,.in_data (calc_op0_23) //|< r
,.in_op (calc_op1_23) //|< r
,.in_op_valid (calc_op1_vld[23]) //|< r
,.in_sel (calc_dlv_valid) //|< r
,.in_valid (calc_op_en[23]) //|< r
,.out_final_data (calc_fout_23_sum) //|> w
,.out_final_sat (calc_fout_sat[23]) //|> w
,.out_final_valid (calc_fout_vld[23]) //|> w
,.out_partial_data (calc_pout_23_sum) //|> w
,.out_partial_valid (calc_pout_vld[23]) //|> w
,.nvdla_core_clk (nvdla_cell_clk) //|< i
,.reset (nvdla_core_rstn) //|< i
);

NV_soDLA_CACC_CALC_int8 u_cell_int8_24 (
.cfg_truncate (cfg_truncate) //|< w
,.in_data (calc_op0_24) //|< r
,.in_op (calc_op1_24) //|< r
,.in_op_valid (calc_op1_vld[24]) //|< r
,.in_sel (calc_dlv_valid) //|< r
,.in_valid (calc_op_en[24]) //|< r
,.out_final_data (calc_fout_24_sum) //|> w
,.out_final_sat (calc_fout_sat[24]) //|> w
,.out_final_valid (calc_fout_vld[24]) //|> w
,.out_partial_data (calc_pout_24_sum) //|> w
,.out_partial_valid (calc_pout_vld[24]) //|> w
,.nvdla_core_clk (nvdla_cell_clk) //|< i
,.reset (nvdla_core_rstn) //|< i
);

NV_soDLA_CACC_CALC_int8 u_cell_int8_25 (
.cfg_truncate (cfg_truncate) //|< w
,.in_data (calc_op0_25) //|< r
,.in_op (calc_op1_25) //|< r
,.in_op_valid (calc_op1_vld[25]) //|< r
,.in_sel (calc_dlv_valid) //|< r
,.in_valid (calc_op_en[25]) //|< r
,.out_final_data (calc_fout_25_sum) //|> w
,.out_final_sat (calc_fout_sat[25]) //|> w
,.out_final_valid (calc_fout_vld[25]) //|> w
,.out_partial_data (calc_pout_25_sum) //|> w
,.out_partial_valid (calc_pout_vld[25]) //|> w
,.nvdla_core_clk (nvdla_cell_clk) //|< i
,.reset (nvdla_core_rstn) //|< i
);

NV_soDLA_CACC_CALC_int8 u_cell_int8_26 (
.cfg_truncate (cfg_truncate) //|< w
,.in_data (calc_op0_26) //|< r
,.in_op (calc_op1_26) //|< r
,.in_op_valid (calc_op1_vld[26]) //|< r
,.in_sel (calc_dlv_valid) //|< r
,.in_valid (calc_op_en[26]) //|< r
,.out_final_data (calc_fout_26_sum) //|> w
,.out_final_sat (calc_fout_sat[26]) //|> w
,.out_final_valid (calc_fout_vld[26]) //|> w
,.out_partial_data (calc_pout_26_sum) //|> w
,.out_partial_valid (calc_pout_vld[26]) //|> w
,.nvdla_core_clk (nvdla_cell_clk) //|< i
,.reset (nvdla_core_rstn) //|< i
);

NV_soDLA_CACC_CALC_int8 u_cell_int8_27 (
.cfg_truncate (cfg_truncate) //|< w
,.in_data (calc_op0_27) //|< r
,.in_op (calc_op1_27) //|< r
,.in_op_valid (calc_op1_vld[27]) //|< r
,.in_sel (calc_dlv_valid) //|< r
,.in_valid (calc_op_en[27]) //|< r
,.out_final_data (calc_fout_27_sum) //|> w
,.out_final_sat (calc_fout_sat[27]) //|> w
,.out_final_valid (calc_fout_vld[27]) //|> w
,.out_partial_data (calc_pout_27_sum) //|> w
,.out_partial_valid (calc_pout_vld[27]) //|> w
,.nvdla_core_clk (nvdla_cell_clk) //|< i
,.reset (nvdla_core_rstn) //|< i
);

NV_soDLA_CACC_CALC_int8 u_cell_int8_28 (
.cfg_truncate (cfg_truncate) //|< w
,.in_data (calc_op0_28) //|< r
,.in_op (calc_op1_28) //|< r
,.in_op_valid (calc_op1_vld[28]) //|< r
,.in_sel (calc_dlv_valid) //|< r
,.in_valid (calc_op_en[28]) //|< r
,.out_final_data (calc_fout_28_sum) //|> w
,.out_final_sat (calc_fout_sat[28]) //|> w
,.out_final_valid (calc_fout_vld[28]) //|> w
,.out_partial_data (calc_pout_28_sum) //|> w
,.out_partial_valid (calc_pout_vld[28]) //|> w
,.nvdla_core_clk (nvdla_cell_clk) //|< i
,.reset (nvdla_core_rstn) //|< i
);

NV_soDLA_CACC_CALC_int8 u_cell_int8_29 (
.cfg_truncate (cfg_truncate) //|< w
,.in_data (calc_op0_29) //|< r
,.in_op (calc_op1_29) //|< r
,.in_op_valid (calc_op1_vld[29]) //|< r
,.in_sel (calc_dlv_valid) //|< r
,.in_valid (calc_op_en[29]) //|< r
,.out_final_data (calc_fout_29_sum) //|> w
,.out_final_sat (calc_fout_sat[29]) //|> w
,.out_final_valid (calc_fout_vld[29]) //|> w
,.out_partial_data (calc_pout_29_sum) //|> w
,.out_partial_valid (calc_pout_vld[29]) //|> w
,.nvdla_core_clk (nvdla_cell_clk) //|< i
,.reset (nvdla_core_rstn) //|< i
);

NV_soDLA_CACC_CALC_int8 u_cell_int8_30 (
.cfg_truncate (cfg_truncate) //|< w
,.in_data (calc_op0_30) //|< r
,.in_op (calc_op1_30) //|< r
,.in_op_valid (calc_op1_vld[30]) //|< r
,.in_sel (calc_dlv_valid) //|< r
,.in_valid (calc_op_en[30]) //|< r
,.out_final_data (calc_fout_30_sum) //|> w
,.out_final_sat (calc_fout_sat[30]) //|> w
,.out_final_valid (calc_fout_vld[30]) //|> w
,.out_partial_data (calc_pout_30_sum) //|> w
,.out_partial_valid (calc_pout_vld[30]) //|> w
,.nvdla_core_clk (nvdla_cell_clk) //|< i
,.reset (nvdla_core_rstn) //|< i
);

NV_soDLA_CACC_CALC_int8 u_cell_int8_31 (
.cfg_truncate (cfg_truncate) //|< w
,.in_data (calc_op0_31) //|< r
,.in_op (calc_op1_31) //|< r
,.in_op_valid (calc_op1_vld[31]) //|< r
,.in_sel (calc_dlv_valid) //|< r
,.in_valid (calc_op_en[31]) //|< r
,.out_final_data (calc_fout_31_sum) //|> w
,.out_final_sat (calc_fout_sat[31]) //|> w
,.out_final_valid (calc_fout_vld[31]) //|> w
,.out_partial_data (calc_pout_31_sum) //|> w
,.out_partial_valid (calc_pout_vld[31]) //|> w
,.nvdla_core_clk (nvdla_cell_clk) //|< i
,.reset (nvdla_core_rstn) //|< i
);

//| eperl: generated_end (DO NOT EDIT ABOVE)
wire calc_valid_d0 = calc_valid;
wire calc_wr_en_d0 = calc_wr_en;
wire [5:0] calc_addr_d0 = calc_addr;
wire calc_dlv_valid_d0 = calc_dlv_valid;
wire calc_stripe_end_d0 = calc_stripe_end;
wire calc_layer_end_d0 = calc_layer_end;
// Latency pipeline to balance with calc cells, signal for both abuffer & dbuffer
//: my $start = 0;
//: for(my $i = $start; $i < $start + 2; $i ++) {
//: my $j = $i + 1;
//: &eperl::flop(" -q  calc_valid_d${j}  -d \"calc_valid_d${i}\" -clk nvdla_core_clk -rst nvdla_core_rstn -rval 0");
//: &eperl::flop(" -q  calc_wr_en_d${j}  -d  \"calc_wr_en_d${i}\" -clk nvdla_core_clk -rst nvdla_core_rstn -rval 0");
//: &eperl::flop("-wid 6 -q  calc_addr_d${j}  -en \"calc_valid_d${i}\" -d  \"calc_addr_d${i}\" -clk nvdla_core_clk -rst nvdla_core_rstn -rval 0");
//: }
//: my $pin = $start + 2;
//: print qq(
//: wire calc_valid_out = calc_valid_d${pin};
//: wire calc_wr_en_out = calc_wr_en_d${pin};
//: wire [5:0] calc_addr_out = calc_addr_d${pin};
//: );
//:
//: for(my $i = $start; $i < $start + 2; $i ++) {
//: my $j = $i + 1;
//: &eperl::flop(" -q  calc_dlv_valid_d${j}  -d \"calc_dlv_valid_d${i}\" -clk nvdla_core_clk -rst nvdla_core_rstn -rval 0");
//: &eperl::flop(" -q  calc_stripe_end_d${j}  -en \"calc_dlv_valid_d${i}\" -d  \"calc_stripe_end_d${i}\" -clk nvdla_core_clk -rst nvdla_core_rstn -rval 0");
//: &eperl::flop(" -q  calc_layer_end_d${j}  -en \"calc_dlv_valid_d${i}\" -d  \"calc_layer_end_d${i} \" -clk nvdla_core_clk -rst nvdla_core_rstn -rval 0");
//: }
//: my $fin = $start + 2;
//: print qq(
//: wire calc_dlv_valid_out = calc_dlv_valid_d${fin};
//: wire calc_stripe_end_out = calc_stripe_end_d${fin};
//: wire calc_layer_end_out = calc_layer_end_d${fin};
//: );
//| eperl: generated_beg (DO NOT EDIT BELOW)
reg  calc_valid_d1;
always @(posedge nvdla_core_clk) begin
   if (!nvdla_core_rstn) begin
       calc_valid_d1 <= 'b0;
   end else begin
       calc_valid_d1 <= calc_valid_d0;
   end
end
reg  calc_wr_en_d1;
always @(posedge nvdla_core_clk) begin
   if (!nvdla_core_rstn) begin
       calc_wr_en_d1 <= 'b0;
   end else begin
       calc_wr_en_d1 <= calc_wr_en_d0;
   end
end
reg [5:0] calc_addr_d1;
always @(posedge nvdla_core_clk) begin
   if (!nvdla_core_rstn) begin
       calc_addr_d1 <= 'b0;
   end else begin
       if ((calc_valid_d0) == 1'b1) begin
           calc_addr_d1 <= calc_addr_d0;
       // VCS coverage off
       end else if ((calc_valid_d0) == 1'b0) begin
       end else begin
           calc_addr_d1 <= 'bx;
       // VCS coverage on
       end
   end
end
reg  calc_valid_d2;
always @(posedge nvdla_core_clk) begin
   if (!nvdla_core_rstn) begin
       calc_valid_d2 <= 'b0;
   end else begin
       calc_valid_d2 <= calc_valid_d1;
   end
end
reg  calc_wr_en_d2;
always @(posedge nvdla_core_clk) begin
   if (!nvdla_core_rstn) begin
       calc_wr_en_d2 <= 'b0;
   end else begin
       calc_wr_en_d2 <= calc_wr_en_d1;
   end
end
reg [5:0] calc_addr_d2;
always @(posedge nvdla_core_clk) begin
   if (!nvdla_core_rstn) begin
       calc_addr_d2 <= 'b0;
   end else begin
       if ((calc_valid_d1) == 1'b1) begin
           calc_addr_d2 <= calc_addr_d1;
       // VCS coverage off
       end else if ((calc_valid_d1) == 1'b0) begin
       end else begin
           calc_addr_d2 <= 'bx;
       // VCS coverage on
       end
   end
end

wire calc_valid_out = calc_valid_d2;
wire calc_wr_en_out = calc_wr_en_d2;
wire [5:0] calc_addr_out = calc_addr_d2;
reg  calc_dlv_valid_d1;
always @(posedge nvdla_core_clk) begin
   if (!nvdla_core_rstn) begin
       calc_dlv_valid_d1 <= 'b0;
   end else begin
       calc_dlv_valid_d1 <= calc_dlv_valid_d0;
   end
end
reg  calc_stripe_end_d1;
always @(posedge nvdla_core_clk) begin
   if (!nvdla_core_rstn) begin
       calc_stripe_end_d1 <= 'b0;
   end else begin
       if ((calc_dlv_valid_d0) == 1'b1) begin
           calc_stripe_end_d1 <= calc_stripe_end_d0;
       // VCS coverage off
       end else if ((calc_dlv_valid_d0) == 1'b0) begin
       end else begin
           calc_stripe_end_d1 <= 'bx;
       // VCS coverage on
       end
   end
end
reg  calc_layer_end_d1;
always @(posedge nvdla_core_clk) begin
   if (!nvdla_core_rstn) begin
       calc_layer_end_d1 <= 'b0;
   end else begin
       if ((calc_dlv_valid_d0) == 1'b1) begin
           calc_layer_end_d1 <= calc_layer_end_d0 ;
       // VCS coverage off
       end else if ((calc_dlv_valid_d0) == 1'b0) begin
       end else begin
           calc_layer_end_d1 <= 'bx;
       // VCS coverage on
       end
   end
end
reg  calc_dlv_valid_d2;
always @(posedge nvdla_core_clk) begin
   if (!nvdla_core_rstn) begin
       calc_dlv_valid_d2 <= 'b0;
   end else begin
       calc_dlv_valid_d2 <= calc_dlv_valid_d1;
   end
end
reg  calc_stripe_end_d2;
always @(posedge nvdla_core_clk) begin
   if (!nvdla_core_rstn) begin
       calc_stripe_end_d2 <= 'b0;
   end else begin
       if ((calc_dlv_valid_d1) == 1'b1) begin
           calc_stripe_end_d2 <= calc_stripe_end_d1;
       // VCS coverage off
       end else if ((calc_dlv_valid_d1) == 1'b0) begin
       end else begin
           calc_stripe_end_d2 <= 'bx;
       // VCS coverage on
       end
   end
end
reg  calc_layer_end_d2;
always @(posedge nvdla_core_clk) begin
   if (!nvdla_core_rstn) begin
       calc_layer_end_d2 <= 'b0;
   end else begin
       if ((calc_dlv_valid_d1) == 1'b1) begin
           calc_layer_end_d2 <= calc_layer_end_d1 ;
       // VCS coverage off
       end else if ((calc_dlv_valid_d1) == 1'b0) begin
       end else begin
           calc_layer_end_d2 <= 'bx;
       // VCS coverage on
       end
   end
end

wire calc_dlv_valid_out = calc_dlv_valid_d2;
wire calc_stripe_end_out = calc_stripe_end_d2;
wire calc_layer_end_out = calc_layer_end_d2;

//| eperl: generated_end (DO NOT EDIT ABOVE)
// Gather of accumulator result
//: my $int8_out = 34;
//: my $final_out = 32;
//: for(my $i=0; $i <32; $i ++) {
//: print qq(
//: wire [${int8_out}-1:0] calc_pout_${i} = ({${int8_out}{calc_pout_vld[${i}]}} & calc_pout_${i}_sum););
//: }
//: for(my $i = 0; $i <32; $i ++) {
//: print qq(
//: wire [${final_out}-1:0] calc_fout_${i} = ({${final_out}{calc_fout_vld[${i}]}} & calc_fout_${i}_sum););
//: }
//| eperl: generated_beg (DO NOT EDIT BELOW)

wire [34-1:0] calc_pout_0 = ({34{calc_pout_vld[0]}} & calc_pout_0_sum);
wire [34-1:0] calc_pout_1 = ({34{calc_pout_vld[1]}} & calc_pout_1_sum);
wire [34-1:0] calc_pout_2 = ({34{calc_pout_vld[2]}} & calc_pout_2_sum);
wire [34-1:0] calc_pout_3 = ({34{calc_pout_vld[3]}} & calc_pout_3_sum);
wire [34-1:0] calc_pout_4 = ({34{calc_pout_vld[4]}} & calc_pout_4_sum);
wire [34-1:0] calc_pout_5 = ({34{calc_pout_vld[5]}} & calc_pout_5_sum);
wire [34-1:0] calc_pout_6 = ({34{calc_pout_vld[6]}} & calc_pout_6_sum);
wire [34-1:0] calc_pout_7 = ({34{calc_pout_vld[7]}} & calc_pout_7_sum);
wire [34-1:0] calc_pout_8 = ({34{calc_pout_vld[8]}} & calc_pout_8_sum);
wire [34-1:0] calc_pout_9 = ({34{calc_pout_vld[9]}} & calc_pout_9_sum);
wire [34-1:0] calc_pout_10 = ({34{calc_pout_vld[10]}} & calc_pout_10_sum);
wire [34-1:0] calc_pout_11 = ({34{calc_pout_vld[11]}} & calc_pout_11_sum);
wire [34-1:0] calc_pout_12 = ({34{calc_pout_vld[12]}} & calc_pout_12_sum);
wire [34-1:0] calc_pout_13 = ({34{calc_pout_vld[13]}} & calc_pout_13_sum);
wire [34-1:0] calc_pout_14 = ({34{calc_pout_vld[14]}} & calc_pout_14_sum);
wire [34-1:0] calc_pout_15 = ({34{calc_pout_vld[15]}} & calc_pout_15_sum);
wire [34-1:0] calc_pout_16 = ({34{calc_pout_vld[16]}} & calc_pout_16_sum);
wire [34-1:0] calc_pout_17 = ({34{calc_pout_vld[17]}} & calc_pout_17_sum);
wire [34-1:0] calc_pout_18 = ({34{calc_pout_vld[18]}} & calc_pout_18_sum);
wire [34-1:0] calc_pout_19 = ({34{calc_pout_vld[19]}} & calc_pout_19_sum);
wire [34-1:0] calc_pout_20 = ({34{calc_pout_vld[20]}} & calc_pout_20_sum);
wire [34-1:0] calc_pout_21 = ({34{calc_pout_vld[21]}} & calc_pout_21_sum);
wire [34-1:0] calc_pout_22 = ({34{calc_pout_vld[22]}} & calc_pout_22_sum);
wire [34-1:0] calc_pout_23 = ({34{calc_pout_vld[23]}} & calc_pout_23_sum);
wire [34-1:0] calc_pout_24 = ({34{calc_pout_vld[24]}} & calc_pout_24_sum);
wire [34-1:0] calc_pout_25 = ({34{calc_pout_vld[25]}} & calc_pout_25_sum);
wire [34-1:0] calc_pout_26 = ({34{calc_pout_vld[26]}} & calc_pout_26_sum);
wire [34-1:0] calc_pout_27 = ({34{calc_pout_vld[27]}} & calc_pout_27_sum);
wire [34-1:0] calc_pout_28 = ({34{calc_pout_vld[28]}} & calc_pout_28_sum);
wire [34-1:0] calc_pout_29 = ({34{calc_pout_vld[29]}} & calc_pout_29_sum);
wire [34-1:0] calc_pout_30 = ({34{calc_pout_vld[30]}} & calc_pout_30_sum);
wire [34-1:0] calc_pout_31 = ({34{calc_pout_vld[31]}} & calc_pout_31_sum);
wire [32-1:0] calc_fout_0 = ({32{calc_fout_vld[0]}} & calc_fout_0_sum);
wire [32-1:0] calc_fout_1 = ({32{calc_fout_vld[1]}} & calc_fout_1_sum);
wire [32-1:0] calc_fout_2 = ({32{calc_fout_vld[2]}} & calc_fout_2_sum);
wire [32-1:0] calc_fout_3 = ({32{calc_fout_vld[3]}} & calc_fout_3_sum);
wire [32-1:0] calc_fout_4 = ({32{calc_fout_vld[4]}} & calc_fout_4_sum);
wire [32-1:0] calc_fout_5 = ({32{calc_fout_vld[5]}} & calc_fout_5_sum);
wire [32-1:0] calc_fout_6 = ({32{calc_fout_vld[6]}} & calc_fout_6_sum);
wire [32-1:0] calc_fout_7 = ({32{calc_fout_vld[7]}} & calc_fout_7_sum);
wire [32-1:0] calc_fout_8 = ({32{calc_fout_vld[8]}} & calc_fout_8_sum);
wire [32-1:0] calc_fout_9 = ({32{calc_fout_vld[9]}} & calc_fout_9_sum);
wire [32-1:0] calc_fout_10 = ({32{calc_fout_vld[10]}} & calc_fout_10_sum);
wire [32-1:0] calc_fout_11 = ({32{calc_fout_vld[11]}} & calc_fout_11_sum);
wire [32-1:0] calc_fout_12 = ({32{calc_fout_vld[12]}} & calc_fout_12_sum);
wire [32-1:0] calc_fout_13 = ({32{calc_fout_vld[13]}} & calc_fout_13_sum);
wire [32-1:0] calc_fout_14 = ({32{calc_fout_vld[14]}} & calc_fout_14_sum);
wire [32-1:0] calc_fout_15 = ({32{calc_fout_vld[15]}} & calc_fout_15_sum);
wire [32-1:0] calc_fout_16 = ({32{calc_fout_vld[16]}} & calc_fout_16_sum);
wire [32-1:0] calc_fout_17 = ({32{calc_fout_vld[17]}} & calc_fout_17_sum);
wire [32-1:0] calc_fout_18 = ({32{calc_fout_vld[18]}} & calc_fout_18_sum);
wire [32-1:0] calc_fout_19 = ({32{calc_fout_vld[19]}} & calc_fout_19_sum);
wire [32-1:0] calc_fout_20 = ({32{calc_fout_vld[20]}} & calc_fout_20_sum);
wire [32-1:0] calc_fout_21 = ({32{calc_fout_vld[21]}} & calc_fout_21_sum);
wire [32-1:0] calc_fout_22 = ({32{calc_fout_vld[22]}} & calc_fout_22_sum);
wire [32-1:0] calc_fout_23 = ({32{calc_fout_vld[23]}} & calc_fout_23_sum);
wire [32-1:0] calc_fout_24 = ({32{calc_fout_vld[24]}} & calc_fout_24_sum);
wire [32-1:0] calc_fout_25 = ({32{calc_fout_vld[25]}} & calc_fout_25_sum);
wire [32-1:0] calc_fout_26 = ({32{calc_fout_vld[26]}} & calc_fout_26_sum);
wire [32-1:0] calc_fout_27 = ({32{calc_fout_vld[27]}} & calc_fout_27_sum);
wire [32-1:0] calc_fout_28 = ({32{calc_fout_vld[28]}} & calc_fout_28_sum);
wire [32-1:0] calc_fout_29 = ({32{calc_fout_vld[29]}} & calc_fout_29_sum);
wire [32-1:0] calc_fout_30 = ({32{calc_fout_vld[30]}} & calc_fout_30_sum);
wire [32-1:0] calc_fout_31 = ({32{calc_fout_vld[31]}} & calc_fout_31_sum);
//| eperl: generated_end (DO NOT EDIT ABOVE)
// to abuffer, 1 pipe
wire [34*32 -1:0] abuf_wr_data_w;
// spyglass disable_block STARC05-3.3.1.4b
//: my $kk=34*32;
//: my $jj=5 +1;
//: for(my $i = 0; $i < 32; $i ++) {
//: print qq (
//: assign abuf_wr_data_w[34*($i+1)-1:34*$i] = calc_pout_${i}; );
//: }
//: &eperl::flop(" -q  abuf_wr_en  -d \"calc_wr_en_out\" -clk nvdla_core_clk -rst nvdla_core_rstn -rval 0");
//: &eperl::flop("-wid ${jj} -q  abuf_wr_addr  -en \"calc_wr_en_out\" -d  \"calc_addr_out[${jj}-1:0]\" -clk nvdla_core_clk -rst nvdla_core_rstn -rval 0");
//: &eperl::flop("-wid ${kk} -q  abuf_wr_data  -en \"calc_wr_en_out\" -d  \"abuf_wr_data_w\" -clk nvdla_core_clk -norst");
//| eperl: generated_beg (DO NOT EDIT BELOW)

assign abuf_wr_data_w[34*(0+1)-1:34*0] = calc_pout_0; 
assign abuf_wr_data_w[34*(1+1)-1:34*1] = calc_pout_1; 
assign abuf_wr_data_w[34*(2+1)-1:34*2] = calc_pout_2; 
assign abuf_wr_data_w[34*(3+1)-1:34*3] = calc_pout_3; 
assign abuf_wr_data_w[34*(4+1)-1:34*4] = calc_pout_4; 
assign abuf_wr_data_w[34*(5+1)-1:34*5] = calc_pout_5; 
assign abuf_wr_data_w[34*(6+1)-1:34*6] = calc_pout_6; 
assign abuf_wr_data_w[34*(7+1)-1:34*7] = calc_pout_7; 
assign abuf_wr_data_w[34*(8+1)-1:34*8] = calc_pout_8; 
assign abuf_wr_data_w[34*(9+1)-1:34*9] = calc_pout_9; 
assign abuf_wr_data_w[34*(10+1)-1:34*10] = calc_pout_10; 
assign abuf_wr_data_w[34*(11+1)-1:34*11] = calc_pout_11; 
assign abuf_wr_data_w[34*(12+1)-1:34*12] = calc_pout_12; 
assign abuf_wr_data_w[34*(13+1)-1:34*13] = calc_pout_13; 
assign abuf_wr_data_w[34*(14+1)-1:34*14] = calc_pout_14; 
assign abuf_wr_data_w[34*(15+1)-1:34*15] = calc_pout_15; 
assign abuf_wr_data_w[34*(16+1)-1:34*16] = calc_pout_16; 
assign abuf_wr_data_w[34*(17+1)-1:34*17] = calc_pout_17; 
assign abuf_wr_data_w[34*(18+1)-1:34*18] = calc_pout_18; 
assign abuf_wr_data_w[34*(19+1)-1:34*19] = calc_pout_19; 
assign abuf_wr_data_w[34*(20+1)-1:34*20] = calc_pout_20; 
assign abuf_wr_data_w[34*(21+1)-1:34*21] = calc_pout_21; 
assign abuf_wr_data_w[34*(22+1)-1:34*22] = calc_pout_22; 
assign abuf_wr_data_w[34*(23+1)-1:34*23] = calc_pout_23; 
assign abuf_wr_data_w[34*(24+1)-1:34*24] = calc_pout_24; 
assign abuf_wr_data_w[34*(25+1)-1:34*25] = calc_pout_25; 
assign abuf_wr_data_w[34*(26+1)-1:34*26] = calc_pout_26; 
assign abuf_wr_data_w[34*(27+1)-1:34*27] = calc_pout_27; 
assign abuf_wr_data_w[34*(28+1)-1:34*28] = calc_pout_28; 
assign abuf_wr_data_w[34*(29+1)-1:34*29] = calc_pout_29; 
assign abuf_wr_data_w[34*(30+1)-1:34*30] = calc_pout_30; 
assign abuf_wr_data_w[34*(31+1)-1:34*31] = calc_pout_31; reg  abuf_wr_en;
always @(posedge nvdla_core_clk) begin
   if (!nvdla_core_rstn) begin
       abuf_wr_en <= 'b0;
   end else begin
       abuf_wr_en <= calc_wr_en_out;
   end
end
reg [5:0] abuf_wr_addr;
always @(posedge nvdla_core_clk) begin
   if (!nvdla_core_rstn) begin
       abuf_wr_addr <= 'b0;
   end else begin
       if ((calc_wr_en_out) == 1'b1) begin
           abuf_wr_addr <= calc_addr_out[6-1:0];
       // VCS coverage off
       end else if ((calc_wr_en_out) == 1'b0) begin
       end else begin
           abuf_wr_addr <= 'bx;
       // VCS coverage on
       end
   end
end
reg [1087:0] abuf_wr_data;
always @(posedge nvdla_core_clk) begin
       if ((calc_wr_en_out) == 1'b1) begin
           abuf_wr_data <= abuf_wr_data_w;
       // VCS coverage off
       end else if ((calc_wr_en_out) == 1'b0) begin
       end else begin
           abuf_wr_data <= 'bx;
       // VCS coverage on
       end
end

//| eperl: generated_end (DO NOT EDIT ABOVE)
// spyglass enable_block STARC05-3.3.1.4b
// to dbuffer, 1 pipe.
wire [32*32 -1:0] dlv_data_w;
// spyglass disable_block STARC05-3.3.1.4b
//: my $kk=32*32;
//: for(my $i = 0; $i < 32; $i ++) {
//: print qq(
//: assign dlv_data_w[32*($i+1)-1:32*$i] = calc_fout_${i};);
//: }
//:
//: &eperl::flop("-wid ${kk} -q  dlv_data  -en \"calc_dlv_valid_out\" -d  \"dlv_data_w\" -clk nvdla_core_clk -norst");
//: &eperl::flop(" -q  dlv_valid  -d \"calc_dlv_valid_out\" -clk nvdla_core_clk -rst nvdla_core_rstn -rval 0");
//: &eperl::flop(" -q  dlv_mask   -d  \"calc_dlv_valid_out\" -clk nvdla_core_clk -rst nvdla_core_rstn -rval 0");
//: &eperl::flop(" -q  dlv_stripe_end  -en \"calc_dlv_valid_out\" -d  \"calc_stripe_end_out\" -clk nvdla_core_clk -rst nvdla_core_rstn -rval 0");
//: &eperl::flop(" -q  dlv_layer_end  -en \"calc_dlv_valid_out\" -d  \"calc_layer_end_out\" -clk nvdla_core_clk -rst nvdla_core_rstn -rval 0");
//| eperl: generated_beg (DO NOT EDIT BELOW)

assign dlv_data_w[32*(0+1)-1:32*0] = calc_fout_0;
assign dlv_data_w[32*(1+1)-1:32*1] = calc_fout_1;
assign dlv_data_w[32*(2+1)-1:32*2] = calc_fout_2;
assign dlv_data_w[32*(3+1)-1:32*3] = calc_fout_3;
assign dlv_data_w[32*(4+1)-1:32*4] = calc_fout_4;
assign dlv_data_w[32*(5+1)-1:32*5] = calc_fout_5;
assign dlv_data_w[32*(6+1)-1:32*6] = calc_fout_6;
assign dlv_data_w[32*(7+1)-1:32*7] = calc_fout_7;
assign dlv_data_w[32*(8+1)-1:32*8] = calc_fout_8;
assign dlv_data_w[32*(9+1)-1:32*9] = calc_fout_9;
assign dlv_data_w[32*(10+1)-1:32*10] = calc_fout_10;
assign dlv_data_w[32*(11+1)-1:32*11] = calc_fout_11;
assign dlv_data_w[32*(12+1)-1:32*12] = calc_fout_12;
assign dlv_data_w[32*(13+1)-1:32*13] = calc_fout_13;
assign dlv_data_w[32*(14+1)-1:32*14] = calc_fout_14;
assign dlv_data_w[32*(15+1)-1:32*15] = calc_fout_15;
assign dlv_data_w[32*(16+1)-1:32*16] = calc_fout_16;
assign dlv_data_w[32*(17+1)-1:32*17] = calc_fout_17;
assign dlv_data_w[32*(18+1)-1:32*18] = calc_fout_18;
assign dlv_data_w[32*(19+1)-1:32*19] = calc_fout_19;
assign dlv_data_w[32*(20+1)-1:32*20] = calc_fout_20;
assign dlv_data_w[32*(21+1)-1:32*21] = calc_fout_21;
assign dlv_data_w[32*(22+1)-1:32*22] = calc_fout_22;
assign dlv_data_w[32*(23+1)-1:32*23] = calc_fout_23;
assign dlv_data_w[32*(24+1)-1:32*24] = calc_fout_24;
assign dlv_data_w[32*(25+1)-1:32*25] = calc_fout_25;
assign dlv_data_w[32*(26+1)-1:32*26] = calc_fout_26;
assign dlv_data_w[32*(27+1)-1:32*27] = calc_fout_27;
assign dlv_data_w[32*(28+1)-1:32*28] = calc_fout_28;
assign dlv_data_w[32*(29+1)-1:32*29] = calc_fout_29;
assign dlv_data_w[32*(30+1)-1:32*30] = calc_fout_30;
assign dlv_data_w[32*(31+1)-1:32*31] = calc_fout_31;reg [1023:0] dlv_data;
always @(posedge nvdla_core_clk) begin
       if ((calc_dlv_valid_out) == 1'b1) begin
           dlv_data <= dlv_data_w;
       // VCS coverage off
       end else if ((calc_dlv_valid_out) == 1'b0) begin
       end else begin
           dlv_data <= 'bx;
       // VCS coverage on
       end
end
reg  dlv_valid;
always @(posedge nvdla_core_clk) begin
   if (!nvdla_core_rstn) begin
       dlv_valid <= 'b0;
   end else begin
       dlv_valid <= calc_dlv_valid_out;
   end
end
reg  dlv_mask;
always @(posedge nvdla_core_clk) begin
   if (!nvdla_core_rstn) begin
       dlv_mask <= 'b0;
   end else begin
       dlv_mask <= calc_dlv_valid_out;
   end
end
reg  dlv_stripe_end;
always @(posedge nvdla_core_clk) begin
   if (!nvdla_core_rstn) begin
       dlv_stripe_end <= 'b0;
   end else begin
       if ((calc_dlv_valid_out) == 1'b1) begin
           dlv_stripe_end <= calc_stripe_end_out;
       // VCS coverage off
       end else if ((calc_dlv_valid_out) == 1'b0) begin
       end else begin
           dlv_stripe_end <= 'bx;
       // VCS coverage on
       end
   end
end
reg  dlv_layer_end;
always @(posedge nvdla_core_clk) begin
   if (!nvdla_core_rstn) begin
       dlv_layer_end <= 'b0;
   end else begin
       if ((calc_dlv_valid_out) == 1'b1) begin
           dlv_layer_end <= calc_layer_end_out;
       // VCS coverage off
       end else if ((calc_dlv_valid_out) == 1'b0) begin
       end else begin
           dlv_layer_end <= 'bx;
       // VCS coverage on
       end
   end
end

//| eperl: generated_end (DO NOT EDIT ABOVE)
// spyglass enable_block STARC05-3.3.1.4b
assign dlv_pd[0] = dlv_stripe_end ;
assign dlv_pd[1] = dlv_layer_end ;
// overflow count
reg dlv_sat_end_d1;
wire [32 -1:0] dlv_sat_bit = calc_fout_sat;
wire dlv_sat_end = calc_layer_end_out & calc_stripe_end_out;
wire dlv_sat_clr = calc_dlv_valid_out & ~dlv_sat_end & dlv_sat_end_d1;
//: my $kk= 32;
//: my $jj= 5;
//: &eperl::flop(" -q  dlv_sat_vld_d1  -d \"calc_dlv_valid_out\" -clk nvdla_core_clk -rst nvdla_core_rstn -rval 0");
//: &eperl::flop("-nodeclare  -q  dlv_sat_end_d1  -en \"calc_dlv_valid_out\" -d  \"dlv_sat_end\" -clk nvdla_core_clk -rst nvdla_core_rstn -rval 1");
//: &eperl::flop(" -wid ${kk} -q  dlv_sat_bit_d1  -en \"calc_dlv_valid_out\" -d  \"dlv_sat_bit\" -clk nvdla_core_clk -rst nvdla_core_rstn -rval 0");
//: &eperl::flop(" -q  dlv_sat_clr_d1  -d \"dlv_sat_clr\" -clk nvdla_core_clk -rst nvdla_core_rstn -rval 0");
//: print "wire [${jj}-1:0] sat_sum = ";
//: for(my $i=0; $i<32 -1 ; $i++){
//: print "dlv_sat_bit_d1[${i}]+";
//: }
//: my $i=32 -1;
//: print "dlv_sat_bit_d1[${i}]; \n";
//| eperl: generated_beg (DO NOT EDIT BELOW)
reg  dlv_sat_vld_d1;
always @(posedge nvdla_core_clk) begin
   if (!nvdla_core_rstn) begin
       dlv_sat_vld_d1 <= 'b0;
   end else begin
       dlv_sat_vld_d1 <= calc_dlv_valid_out;
   end
end
always @(posedge nvdla_core_clk) begin
   if (!nvdla_core_rstn) begin
       dlv_sat_end_d1 <= 1;
   end else begin
       if ((calc_dlv_valid_out) == 1'b1) begin
           dlv_sat_end_d1 <= dlv_sat_end;
       // VCS coverage off
       end else if ((calc_dlv_valid_out) == 1'b0) begin
       end else begin
           dlv_sat_end_d1 <= 'bx;
       // VCS coverage on
       end
   end
end
reg [31:0] dlv_sat_bit_d1;
always @(posedge nvdla_core_clk) begin
   if (!nvdla_core_rstn) begin
       dlv_sat_bit_d1 <= 'b0;
   end else begin
       if ((calc_dlv_valid_out) == 1'b1) begin
           dlv_sat_bit_d1 <= dlv_sat_bit;
       // VCS coverage off
       end else if ((calc_dlv_valid_out) == 1'b0) begin
       end else begin
           dlv_sat_bit_d1 <= 'bx;
       // VCS coverage on
       end
   end
end
reg  dlv_sat_clr_d1;
always @(posedge nvdla_core_clk) begin
   if (!nvdla_core_rstn) begin
       dlv_sat_clr_d1 <= 'b0;
   end else begin
       dlv_sat_clr_d1 <= dlv_sat_clr;
   end
end
wire [5-1:0] sat_sum = dlv_sat_bit_d1[0]+dlv_sat_bit_d1[1]+dlv_sat_bit_d1[2]+dlv_sat_bit_d1[3]+dlv_sat_bit_d1[4]+dlv_sat_bit_d1[5]+dlv_sat_bit_d1[6]+dlv_sat_bit_d1[7]+dlv_sat_bit_d1[8]+dlv_sat_bit_d1[9]+dlv_sat_bit_d1[10]+dlv_sat_bit_d1[11]+dlv_sat_bit_d1[12]+dlv_sat_bit_d1[13]+dlv_sat_bit_d1[14]+dlv_sat_bit_d1[15]+dlv_sat_bit_d1[16]+dlv_sat_bit_d1[17]+dlv_sat_bit_d1[18]+dlv_sat_bit_d1[19]+dlv_sat_bit_d1[20]+dlv_sat_bit_d1[21]+dlv_sat_bit_d1[22]+dlv_sat_bit_d1[23]+dlv_sat_bit_d1[24]+dlv_sat_bit_d1[25]+dlv_sat_bit_d1[26]+dlv_sat_bit_d1[27]+dlv_sat_bit_d1[28]+dlv_sat_bit_d1[29]+dlv_sat_bit_d1[30]+dlv_sat_bit_d1[31]; 

//| eperl: generated_end (DO NOT EDIT ABOVE)
wire [31:0] sat_count_inc;
reg [31:0] sat_count;
wire sat_carry;
wire [31:0] sat_count_w;
wire sat_reg_en;
assign {sat_carry, sat_count_inc[31:0]} = sat_count + sat_sum;
assign sat_count_w = (dlv_sat_clr_d1) ? {24'b0, sat_sum} : sat_carry ? {32{1'b1}} : sat_count_inc;
assign sat_reg_en = dlv_sat_vld_d1 & ((|sat_sum) | dlv_sat_clr_d1);
//: &eperl::flop("-nodeclare -q  sat_count  -en \"sat_reg_en\" -d  \"sat_count_w\" -clk nvdla_core_clk -rst nvdla_core_rstn -rval 0");
//| eperl: generated_beg (DO NOT EDIT BELOW)
always @(posedge nvdla_core_clk) begin
   if (!nvdla_core_rstn) begin
       sat_count <= 'b0;
   end else begin
       if ((sat_reg_en) == 1'b1) begin
           sat_count <= sat_count_w;
       // VCS coverage off
       end else if ((sat_reg_en) == 1'b0) begin
       end else begin
           sat_count <= 'bx;
       // VCS coverage on
       end
   end
end

//| eperl: generated_end (DO NOT EDIT ABOVE)
// spyglass enable_block NoWidthInBasedNum-ML
// spyglass enable_block STARC-2.10.1.6
assign dp2reg_sat_count = sat_count;
endmodule