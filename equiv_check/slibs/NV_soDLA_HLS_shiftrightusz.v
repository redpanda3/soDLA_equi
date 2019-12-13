module NV_soDLA_HLS_shiftrightusz( // @[:@3.2]
  input  [48:0] data_in, // @[:@6.4]
  input  [5:0]  shift_num, // @[:@6.4]
  output [31:0] data_out, // @[:@6.4]
  output [34:0] frac_out // @[:@6.4]
);
  wire  shift_sign; // @[NV_NVDLA_HLS_shiftrightusz.scala 33:31:@17.4]
  wire [5:0] _T_23; // @[NV_NVDLA_HLS_shiftrightusz.scala 35:22:@19.4]
  wire [6:0] _T_25; // @[NV_NVDLA_HLS_shiftrightusz.scala 35:36:@20.4]
  wire [5:0] shift_num_abs; // @[NV_NVDLA_HLS_shiftrightusz.scala 35:36:@21.4]
  wire [80:0] _T_32; // @[Cat.scala 30:58:@24.4]
  wire [143:0] _GEN_0; // @[NV_NVDLA_HLS_shiftrightusz.scala 37:61:@25.4]
  wire [143:0] _T_33; // @[NV_NVDLA_HLS_shiftrightusz.scala 37:61:@25.4]
  wire [48:0] data_high; // @[NV_NVDLA_HLS_shiftrightusz.scala 37:78:@26.4]
  wire [31:0] data_shift_l; // @[NV_NVDLA_HLS_shiftrightusz.scala 39:81:@31.4]
  wire  _T_43; // @[NV_NVDLA_HLS_shiftrightusz.scala 41:64:@33.4]
  wire [49:0] _T_44; // @[Cat.scala 30:58:@34.4]
  wire  _T_50; // @[NV_NVDLA_HLS_shiftrightusz.scala 41:81:@36.4]
  wire  left_shift_sat; // @[NV_NVDLA_HLS_shiftrightusz.scala 41:34:@37.4]
  wire [83:0] _T_57; // @[Cat.scala 30:58:@40.4]
  wire [83:0] _T_58; // @[NV_NVDLA_HLS_shiftrightusz.scala 44:65:@41.4]
  wire [48:0] data_shift_r; // @[NV_NVDLA_HLS_shiftrightusz.scala 44:81:@42.4]
  wire [34:0] frac_shift; // @[NV_NVDLA_HLS_shiftrightusz.scala 46:79:@47.4]
  wire  _T_69; // @[NV_NVDLA_HLS_shiftrightusz.scala 48:24:@49.4]
  wire [16:0] _T_70; // @[NV_NVDLA_HLS_shiftrightusz.scala 48:50:@50.4]
  wire  _T_72; // @[NV_NVDLA_HLS_shiftrightusz.scala 48:74:@51.4]
  wire  right_shift_sat; // @[NV_NVDLA_HLS_shiftrightusz.scala 48:36:@52.4]
  wire  _T_79; // @[NV_NVDLA_HLS_shiftrightusz.scala 53:39:@56.4]
  wire [31:0] _T_80; // @[NV_NVDLA_HLS_shiftrightusz.scala 53:110:@57.4]
  wire [31:0] _T_81; // @[NV_NVDLA_HLS_shiftrightusz.scala 53:71:@58.4]
  assign shift_sign = shift_num[5]; // @[NV_NVDLA_HLS_shiftrightusz.scala 33:31:@17.4]
  assign _T_23 = ~ shift_num; // @[NV_NVDLA_HLS_shiftrightusz.scala 35:22:@19.4]
  assign _T_25 = _T_23 + 6'h1; // @[NV_NVDLA_HLS_shiftrightusz.scala 35:36:@20.4]
  assign shift_num_abs = _T_23 + 6'h1; // @[NV_NVDLA_HLS_shiftrightusz.scala 35:36:@21.4]
  assign _T_32 = {32'h0,data_in}; // @[Cat.scala 30:58:@24.4]
  assign _GEN_0 = {{63'd0}, _T_32}; // @[NV_NVDLA_HLS_shiftrightusz.scala 37:61:@25.4]
  assign _T_33 = _GEN_0 << shift_num_abs; // @[NV_NVDLA_HLS_shiftrightusz.scala 37:61:@25.4]
  assign data_high = _T_33[80:32]; // @[NV_NVDLA_HLS_shiftrightusz.scala 37:78:@26.4]
  assign data_shift_l = _T_33[31:0]; // @[NV_NVDLA_HLS_shiftrightusz.scala 39:81:@31.4]
  assign _T_43 = data_shift_l[31]; // @[NV_NVDLA_HLS_shiftrightusz.scala 41:64:@33.4]
  assign _T_44 = {data_high,_T_43}; // @[Cat.scala 30:58:@34.4]
  assign _T_50 = _T_44 != 50'h0; // @[NV_NVDLA_HLS_shiftrightusz.scala 41:81:@36.4]
  assign left_shift_sat = shift_sign & _T_50; // @[NV_NVDLA_HLS_shiftrightusz.scala 41:34:@37.4]
  assign _T_57 = {data_in,35'h0}; // @[Cat.scala 30:58:@40.4]
  assign _T_58 = _T_57 >> shift_num; // @[NV_NVDLA_HLS_shiftrightusz.scala 44:65:@41.4]
  assign data_shift_r = _T_58[83:35]; // @[NV_NVDLA_HLS_shiftrightusz.scala 44:81:@42.4]
  assign frac_shift = _T_58[34:0]; // @[NV_NVDLA_HLS_shiftrightusz.scala 46:79:@47.4]
  assign _T_69 = shift_sign == 1'h0; // @[NV_NVDLA_HLS_shiftrightusz.scala 48:24:@49.4]
  assign _T_70 = data_shift_r[48:32]; // @[NV_NVDLA_HLS_shiftrightusz.scala 48:50:@50.4]
  assign _T_72 = _T_70 != 17'h0; // @[NV_NVDLA_HLS_shiftrightusz.scala 48:74:@51.4]
  assign right_shift_sat = _T_69 & _T_72; // @[NV_NVDLA_HLS_shiftrightusz.scala 48:36:@52.4]
  assign _T_79 = left_shift_sat | right_shift_sat; // @[NV_NVDLA_HLS_shiftrightusz.scala 53:39:@56.4]
  assign _T_80 = data_shift_r[31:0]; // @[NV_NVDLA_HLS_shiftrightusz.scala 53:110:@57.4]
  assign _T_81 = shift_sign ? data_shift_l : _T_80; // @[NV_NVDLA_HLS_shiftrightusz.scala 53:71:@58.4]
  assign data_out = _T_79 ? 32'hffffffff : _T_81; // @[NV_NVDLA_HLS_shiftrightusz.scala 53:17:@60.4]
  assign frac_out = shift_sign ? 35'h0 : frac_shift; // @[NV_NVDLA_HLS_shiftrightusz.scala 54:17:@63.4]
endmodule


// ================================================================
// NVDLA Open Source Project
// 
// Copyright(c) 2016 - 2017 NVIDIA Corporation.  Licensed under the
// NVDLA Open Hardware License; Check "LICENSE" which comes with 
// this distribution for more information.
// ================================================================

// File Name: NV_NVDLA_HLS_shiftrightusz.v

module NV_NVDLA_HLS_shiftrightusz (
   data_in
  ,shift_num
  ,data_out
  ,frac_out
  );

parameter  IN_WIDTH  = 49;
parameter  OUT_WIDTH = 32;
parameter  FRAC_WIDTH = 35;                //suppose FRAC_WIDTH > IN_WIDTH > OUT_WIDTH
parameter  SHIFT_WIDTH   = 6;
parameter  SHIFT_MAX   = 1<<(SHIFT_WIDTH-1);
parameter  HIGH_WIDTH  = SHIFT_MAX+IN_WIDTH-OUT_WIDTH;


input  [IN_WIDTH-1:0]    data_in;                //unsigned int
input  [SHIFT_WIDTH-1:0] shift_num;              //signed int
output [OUT_WIDTH-1:0]   data_out;
output [FRAC_WIDTH-1:0]  frac_out;

wire   [SHIFT_WIDTH-1:0] shift_num_abs;     
wire   [OUT_WIDTH-1:0]   data_shift_l;
wire   [HIGH_WIDTH-1:0]  data_high;
wire   [IN_WIDTH-1:0]    data_shift_r;
wire   [FRAC_WIDTH-1:0]  frac_shift;
wire   [OUT_WIDTH-1:0]   data_max;
wire                     left_shift_sat;
wire                     right_shift_sat;
wire                     shift_sign;


// synoff nets

// monitor nets

// debug nets

// tie high nets

// tie low nets

// no connect nets

// not all bits used nets

// todo nets

    
//shift left
assign  shift_sign = shift_num[SHIFT_WIDTH-1];

assign  shift_num_abs[SHIFT_WIDTH-1:0] = ~shift_num[SHIFT_WIDTH-1:0] + 1;

assign {data_high[((HIGH_WIDTH) - 1):0],data_shift_l[((OUT_WIDTH) - 1):0]} = {{SHIFT_MAX{1'b0}},data_in} << shift_num_abs[((SHIFT_WIDTH) - 1):0];

assign left_shift_sat = shift_sign & {data_high[((HIGH_WIDTH) - 1):0],data_shift_l[OUT_WIDTH-1]} != {(HIGH_WIDTH+1){1'b0}};

//shift right
assign {data_shift_r[((IN_WIDTH) - 1):0],frac_shift[((FRAC_WIDTH) - 1):0]} = {data_in[((IN_WIDTH) - 1):0],{(FRAC_WIDTH){1'b0}}} >> shift_num[((SHIFT_WIDTH) - 1):0];

assign right_shift_sat = !shift_sign & (|data_shift_r[IN_WIDTH-1:OUT_WIDTH]);

assign data_max = {(OUT_WIDTH){1'b1}};

//final out
assign data_out[((OUT_WIDTH) - 1):0]  = (left_shift_sat | right_shift_sat) ? data_max : shift_sign ? data_shift_l[((OUT_WIDTH) - 1):0] :  data_shift_r[((OUT_WIDTH) - 1):0];
assign frac_out[((FRAC_WIDTH) - 1):0] = shift_sign ? {FRAC_WIDTH{1'b0}} : frac_shift[((FRAC_WIDTH) - 1):0];

endmodule // NV_NVDLA_HLS_shiftrightusz


