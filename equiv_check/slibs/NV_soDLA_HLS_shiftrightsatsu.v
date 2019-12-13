module NV_soDLA_HLS_shiftrightsatsu( // @[:@3.2]
  input  [48:0] data_in, // @[:@6.4]
  input  [5:0]  shift_num, // @[:@6.4]
  output [31:0] data_out, // @[:@6.4]
  output        sat_out // @[:@6.4]
);
  wire  data_sign; // @[NV_NVDLA_HLS_shiftrightsatsu.scala 28:28:@17.4]
  wire [48:0] _T_26; // @[Bitwise.scala 72:12:@20.4]
  wire [146:0] _T_33; // @[Cat.scala 30:58:@23.4]
  wire [146:0] _T_34; // @[NV_NVDLA_HLS_shiftrightsatsu.scala 30:87:@24.4]
  wire [48:0] data_shift; // @[NV_NVDLA_HLS_shiftrightsatsu.scala 32:104:@33.4]
  wire  guide; // @[NV_NVDLA_HLS_shiftrightsatsu.scala 34:99:@41.4]
  wire [47:0] stick; // @[NV_NVDLA_HLS_shiftrightsatsu.scala 36:99:@49.4]
  wire  _T_75; // @[NV_NVDLA_HLS_shiftrightsatsu.scala 38:24:@51.4]
  wire  _T_77; // @[NV_NVDLA_HLS_shiftrightsatsu.scala 38:43:@52.4]
  wire  _T_78; // @[NV_NVDLA_HLS_shiftrightsatsu.scala 38:35:@53.4]
  wire  point5; // @[NV_NVDLA_HLS_shiftrightsatsu.scala 38:21:@54.4]
  wire [31:0] _T_80; // @[NV_NVDLA_HLS_shiftrightsatsu.scala 40:30:@56.4]
  wire [31:0] _GEN_0; // @[NV_NVDLA_HLS_shiftrightsatsu.scala 40:47:@57.4]
  wire [32:0] _T_81; // @[NV_NVDLA_HLS_shiftrightsatsu.scala 40:47:@57.4]
  wire [31:0] data_round; // @[NV_NVDLA_HLS_shiftrightsatsu.scala 40:47:@58.4]
  wire [16:0] _T_84; // @[NV_NVDLA_HLS_shiftrightsatsu.scala 42:48:@61.4]
  wire [16:0] _T_85; // @[NV_NVDLA_HLS_shiftrightsatsu.scala 42:74:@62.4]
  wire  _T_87; // @[NV_NVDLA_HLS_shiftrightsatsu.scala 42:74:@63.4]
  wire  _T_88; // @[NV_NVDLA_HLS_shiftrightsatsu.scala 42:36:@64.4]
  wire  _T_89; // @[NV_NVDLA_HLS_shiftrightsatsu.scala 42:34:@65.4]
  wire  _T_93; // @[NV_NVDLA_HLS_shiftrightsatsu.scala 43:75:@68.4]
  wire  _T_94; // @[NV_NVDLA_HLS_shiftrightsatsu.scala 43:35:@69.4]
  wire  _T_95; // @[NV_NVDLA_HLS_shiftrightsatsu.scala 42:81:@70.4]
  wire [30:0] _T_97; // @[NV_NVDLA_HLS_shiftrightsatsu.scala 44:52:@72.4]
  wire [31:0] _T_98; // @[Cat.scala 30:58:@73.4]
  wire [31:0] _T_99; // @[NV_NVDLA_HLS_shiftrightsatsu.scala 44:86:@74.4]
  wire  _T_101; // @[NV_NVDLA_HLS_shiftrightsatsu.scala 44:86:@75.4]
  wire  _T_102; // @[NV_NVDLA_HLS_shiftrightsatsu.scala 44:35:@76.4]
  wire  tru_need_sat; // @[NV_NVDLA_HLS_shiftrightsatsu.scala 43:81:@77.4]
  wire [31:0] data_max; // @[NV_NVDLA_HLS_shiftrightsatsu.scala 46:20:@84.4]
  wire  _T_121; // @[NV_NVDLA_HLS_shiftrightsatsu.scala 48:37:@86.4]
  wire [31:0] _T_127; // @[NV_NVDLA_HLS_shiftrightsatsu.scala 48:81:@88.4]
  assign data_sign = data_in[48]; // @[NV_NVDLA_HLS_shiftrightsatsu.scala 28:28:@17.4]
  assign _T_26 = data_sign ? 49'h1ffffffffffff : 49'h0; // @[Bitwise.scala 72:12:@20.4]
  assign _T_33 = {_T_26,data_in,49'h0}; // @[Cat.scala 30:58:@23.4]
  assign _T_34 = _T_33 >> shift_num; // @[NV_NVDLA_HLS_shiftrightsatsu.scala 30:87:@24.4]
  assign data_shift = _T_34[97:49]; // @[NV_NVDLA_HLS_shiftrightsatsu.scala 32:104:@33.4]
  assign guide = _T_34[48]; // @[NV_NVDLA_HLS_shiftrightsatsu.scala 34:99:@41.4]
  assign stick = _T_34[47:0]; // @[NV_NVDLA_HLS_shiftrightsatsu.scala 36:99:@49.4]
  assign _T_75 = ~ data_sign; // @[NV_NVDLA_HLS_shiftrightsatsu.scala 38:24:@51.4]
  assign _T_77 = stick != 48'h0; // @[NV_NVDLA_HLS_shiftrightsatsu.scala 38:43:@52.4]
  assign _T_78 = _T_75 | _T_77; // @[NV_NVDLA_HLS_shiftrightsatsu.scala 38:35:@53.4]
  assign point5 = guide & _T_78; // @[NV_NVDLA_HLS_shiftrightsatsu.scala 38:21:@54.4]
  assign _T_80 = data_shift[31:0]; // @[NV_NVDLA_HLS_shiftrightsatsu.scala 40:30:@56.4]
  assign _GEN_0 = {{31'd0}, point5}; // @[NV_NVDLA_HLS_shiftrightsatsu.scala 40:47:@57.4]
  assign _T_81 = _T_80 + _GEN_0; // @[NV_NVDLA_HLS_shiftrightsatsu.scala 40:47:@57.4]
  assign data_round = _T_80 + _GEN_0; // @[NV_NVDLA_HLS_shiftrightsatsu.scala 40:47:@58.4]
  assign _T_84 = data_shift[47:31]; // @[NV_NVDLA_HLS_shiftrightsatsu.scala 42:48:@61.4]
  assign _T_85 = ~ _T_84; // @[NV_NVDLA_HLS_shiftrightsatsu.scala 42:74:@62.4]
  assign _T_87 = _T_85 == 17'h0; // @[NV_NVDLA_HLS_shiftrightsatsu.scala 42:74:@63.4]
  assign _T_88 = ~ _T_87; // @[NV_NVDLA_HLS_shiftrightsatsu.scala 42:36:@64.4]
  assign _T_89 = data_sign & _T_88; // @[NV_NVDLA_HLS_shiftrightsatsu.scala 42:34:@65.4]
  assign _T_93 = _T_84 != 17'h0; // @[NV_NVDLA_HLS_shiftrightsatsu.scala 43:75:@68.4]
  assign _T_94 = _T_75 & _T_93; // @[NV_NVDLA_HLS_shiftrightsatsu.scala 43:35:@69.4]
  assign _T_95 = _T_89 | _T_94; // @[NV_NVDLA_HLS_shiftrightsatsu.scala 42:81:@70.4]
  assign _T_97 = data_shift[30:0]; // @[NV_NVDLA_HLS_shiftrightsatsu.scala 44:52:@72.4]
  assign _T_98 = {_T_97,point5}; // @[Cat.scala 30:58:@73.4]
  assign _T_99 = ~ _T_98; // @[NV_NVDLA_HLS_shiftrightsatsu.scala 44:86:@74.4]
  assign _T_101 = _T_99 == 32'h0; // @[NV_NVDLA_HLS_shiftrightsatsu.scala 44:86:@75.4]
  assign _T_102 = _T_75 & _T_101; // @[NV_NVDLA_HLS_shiftrightsatsu.scala 44:35:@76.4]
  assign tru_need_sat = _T_95 | _T_102; // @[NV_NVDLA_HLS_shiftrightsatsu.scala 43:81:@77.4]
  assign data_max = data_sign ? 32'h80000000 : 32'h7fffffff; // @[NV_NVDLA_HLS_shiftrightsatsu.scala 46:20:@84.4]
  assign _T_121 = shift_num >= 6'h31; // @[NV_NVDLA_HLS_shiftrightsatsu.scala 48:37:@86.4]
  assign _T_127 = tru_need_sat ? data_max : data_round; // @[NV_NVDLA_HLS_shiftrightsatsu.scala 48:81:@88.4]
  assign data_out = _T_121 ? 32'h0 : _T_127; // @[NV_NVDLA_HLS_shiftrightsatsu.scala 48:17:@90.4]
  assign sat_out = _T_121 ? 1'h0 : tru_need_sat; // @[NV_NVDLA_HLS_shiftrightsatsu.scala 50:16:@93.4]
endmodule

// ================================================================
// NVDLA Open Source Project
//
// Copyright(c) 2016 - 2017 NVIDIA Corporation. Licensed under the
// NVDLA Open Hardware License; Check "LICENSE" which comes with
// this distribution for more information.
// ================================================================
// File Name: NV_NVDLA_HLS_shiftrightsatsu.v
module NV_NVDLA_HLS_shiftrightsatsu (
   data_in
  ,shift_num
  ,data_out
  ,sat_out
  );
parameter IN_WIDTH = 49;
parameter OUT_WIDTH = 32;
parameter SHIFT_WIDTH = 6;
input [IN_WIDTH-1:0] data_in;
input [SHIFT_WIDTH-1:0] shift_num;
output [OUT_WIDTH-1:0] data_out;
output sat_out;
wire [IN_WIDTH-1:0] data_high;
wire [IN_WIDTH-1:0] data_shift;
wire [IN_WIDTH-2:0] stick;
wire [OUT_WIDTH-1:0] data_max;
wire [OUT_WIDTH-1:0] data_round;
wire data_sign;
wire guide;
wire point5;
wire mon_round_c;
wire tru_need_sat;
// synoff nets
// monitor nets
// debug nets
// tie high nets
// tie low nets
// no connect nets
// not all bits used nets
// todo nets
assign data_sign = data_in[IN_WIDTH-1];
assign {data_high[((IN_WIDTH) - 1):0], data_shift[((IN_WIDTH) - 1):0], guide, stick[((IN_WIDTH-1) - 1):0]} = {{IN_WIDTH{data_sign}},data_in,{IN_WIDTH{1'b0}}} >> shift_num[((SHIFT_WIDTH) - 1):0];
//assign {data_shift[::range(IN_WIDTH)], guide, stick[::range(IN_WIDTH-1)]} = ($signed({data_in,{IN_WIDTH{1'b0}}}) >>> shift_num[::range(SHIFT_WIDTH)]);
assign point5 = guide & (~data_sign | (|stick));
assign {mon_round_c,data_round[((OUT_WIDTH) - 1):0]} = data_shift[((OUT_WIDTH) - 1):0] + point5;
assign tru_need_sat = ( data_sign & ~(&data_shift[IN_WIDTH-2:OUT_WIDTH-1])) |
                      (~data_sign & (|data_shift[IN_WIDTH-2:OUT_WIDTH-1])) |
                      (~data_sign & (&{data_shift[((OUT_WIDTH-1) - 1):0], point5}));
assign data_max = data_sign ? {1'b1, {(OUT_WIDTH-1){1'b0}}} : ~{1'b1, {(OUT_WIDTH-1){1'b0}}};
assign data_out = (shift_num >= IN_WIDTH) ? {(OUT_WIDTH){1'b0}} : tru_need_sat ? data_max : data_round;
assign sat_out = (shift_num >= IN_WIDTH) ? 1'b0: tru_need_sat;
endmodule // NV_NVDLA_HLS_shiftrightsatsu
