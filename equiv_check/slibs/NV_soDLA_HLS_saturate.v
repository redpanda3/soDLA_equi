module NV_soDLA_HLS_saturate( // @[:@3.2]
  input  [48:0] data_in, // @[:@6.4]
  output [31:0] data_out // @[:@6.4]
);
  wire  data_sign; // @[NV_NVDLA_HLS_saturate.scala 19:28:@11.4]
  wire [16:0] _T_13; // @[NV_NVDLA_HLS_saturate.scala 21:46:@13.4]
  wire [16:0] _T_14; // @[NV_NVDLA_HLS_saturate.scala 21:72:@14.4]
  wire  _T_16; // @[NV_NVDLA_HLS_saturate.scala 21:72:@15.4]
  wire  _T_17; // @[NV_NVDLA_HLS_saturate.scala 21:34:@16.4]
  wire  _T_18; // @[NV_NVDLA_HLS_saturate.scala 21:32:@17.4]
  wire  _T_19; // @[NV_NVDLA_HLS_saturate.scala 21:82:@18.4]
  wire  _T_22; // @[NV_NVDLA_HLS_saturate.scala 21:132:@20.4]
  wire  _T_23; // @[NV_NVDLA_HLS_saturate.scala 21:93:@21.4]
  wire  tru_need_sat; // @[NV_NVDLA_HLS_saturate.scala 21:79:@22.4]
  wire [31:0] data_max; // @[NV_NVDLA_HLS_saturate.scala 23:20:@29.4]
  wire [48:0] _T_41; // @[NV_NVDLA_HLS_saturate.scala 25:23:@31.4]
  assign data_sign = data_in[48]; // @[NV_NVDLA_HLS_saturate.scala 19:28:@11.4]
  assign _T_13 = data_in[47:31]; // @[NV_NVDLA_HLS_saturate.scala 21:46:@13.4]
  assign _T_14 = ~ _T_13; // @[NV_NVDLA_HLS_saturate.scala 21:72:@14.4]
  assign _T_16 = _T_14 == 17'h0; // @[NV_NVDLA_HLS_saturate.scala 21:72:@15.4]
  assign _T_17 = ~ _T_16; // @[NV_NVDLA_HLS_saturate.scala 21:34:@16.4]
  assign _T_18 = data_sign & _T_17; // @[NV_NVDLA_HLS_saturate.scala 21:32:@17.4]
  assign _T_19 = ~ data_sign; // @[NV_NVDLA_HLS_saturate.scala 21:82:@18.4]
  assign _T_22 = _T_13 != 17'h0; // @[NV_NVDLA_HLS_saturate.scala 21:132:@20.4]
  assign _T_23 = _T_19 & _T_22; // @[NV_NVDLA_HLS_saturate.scala 21:93:@21.4]
  assign tru_need_sat = _T_18 | _T_23; // @[NV_NVDLA_HLS_saturate.scala 21:79:@22.4]
  assign data_max = data_sign ? 32'h80000000 : 32'h7fffffff; // @[NV_NVDLA_HLS_saturate.scala 23:20:@29.4]
  assign _T_41 = tru_need_sat ? {{17'd0}, data_max} : data_in; // @[NV_NVDLA_HLS_saturate.scala 25:23:@31.4]
  assign data_out = _T_41[31:0]; // @[NV_NVDLA_HLS_saturate.scala 25:17:@32.4]
endmodule


module NV_NVDLA_HLS_saturate (
   data_in
  ,data_out
  );

parameter  IN_WIDTH  = 49;
parameter  OUT_WIDTH = 32;


input  [IN_WIDTH-1:0]  data_in;
output [OUT_WIDTH-1:0] data_out;

wire   [OUT_WIDTH-1:0] data_max;
wire                   data_sign;
wire                   tru_need_sat;


// synoff nets

// monitor nets

// debug nets

// tie high nets

// tie low nets

// no connect nets

// not all bits used nets

// todo nets

    
assign  data_sign = data_in[IN_WIDTH-1];

assign  tru_need_sat = ( data_sign & ~(&data_in[IN_WIDTH-2:OUT_WIDTH-1])) |
                       (~data_sign &  (|data_in[IN_WIDTH-2:OUT_WIDTH-1]));

assign  data_max = data_sign ? {1'b1, {(OUT_WIDTH-1){1'b0}}} : ~{1'b1, {(OUT_WIDTH-1){1'b0}}};

assign  data_out = tru_need_sat ? data_max : data_in[((OUT_WIDTH) - 1):0];

endmodule // NV_NVDLA_HLS_saturate
