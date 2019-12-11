module nv_ram_rws( // @[:@3.2]
  input          io_clk, // @[:@6.4]
  input          io_re, // @[:@6.4]
  input          io_we, // @[:@6.4]
  input  [2:0]   io_ra, // @[:@6.4]
  input  [2:0]   io_wa, // @[:@6.4]
  input  [135:0] io_di, // @[:@6.4]
  output [135:0] io_dout // @[:@6.4]
);
  reg [135:0] _T_21 [0:7]; // @[nv_ram_rws.scala 27:26:@8.4]
  reg [159:0] _RAND_0;
  wire [135:0] _T_21__T_28_data; // @[nv_ram_rws.scala 27:26:@8.4]
  wire [2:0] _T_21__T_28_addr; // @[nv_ram_rws.scala 27:26:@8.4]
  wire [135:0] _T_21__T_22_data; // @[nv_ram_rws.scala 27:26:@8.4]
  wire [2:0] _T_21__T_22_addr; // @[nv_ram_rws.scala 27:26:@8.4]
  wire  _T_21__T_22_mask; // @[nv_ram_rws.scala 27:26:@8.4]
  wire  _T_21__T_22_en; // @[nv_ram_rws.scala 27:26:@8.4]
  wire  _GEN_10; // @[nv_ram_rws.scala 29:18:@9.4]
  reg [2:0] _T_21__T_28_addr_pipe_0;
  reg [31:0] _RAND_1;
  wire  _T_21__T_28_addr_en;
  assign _T_21__T_28_addr = _T_21__T_28_addr_pipe_0;
  assign _T_21__T_28_data = _T_21[_T_21__T_28_addr]; // @[nv_ram_rws.scala 27:26:@8.4]
  assign _T_21__T_22_data = io_di;
  assign _T_21__T_22_addr = io_wa;
  assign _T_21__T_22_mask = 1'h1;
  assign _T_21__T_22_en = io_we;
  assign _GEN_10 = io_we ? 1'h0 : io_re; // @[nv_ram_rws.scala 29:18:@9.4]
  assign io_dout = _T_21__T_28_data; // @[nv_ram_rws.scala 34:17:@23.6]
  assign _T_21__T_28_addr_en = _GEN_10;
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
  _RAND_0 = {5{`RANDOM}};
  `ifdef RANDOMIZE_MEM_INIT
  for (initvar = 0; initvar < 8; initvar = initvar+1)
    _T_21[initvar] = _RAND_0[135:0];
  `endif // RANDOMIZE_MEM_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_1 = {1{`RANDOM}};
  _T_21__T_28_addr_pipe_0 = _RAND_1[2:0];
  `endif // RANDOMIZE_REG_INIT
  end
`endif // RANDOMIZE
  always @(posedge io_clk) begin
    if(_T_21__T_22_en & _T_21__T_22_mask) begin
      _T_21[_T_21__T_22_addr] <= _T_21__T_22_data; // @[nv_ram_rws.scala 27:26:@8.4]
    end
    if (_T_21__T_28_addr_en) begin
      _T_21__T_28_addr_pipe_0 <= io_ra;
    end
  end
endmodule
module NV_NVDLA_CACC_assembly_buffer( // @[:@26.2]
  input          clock, // @[:@27.4]
  input          reset, // @[:@28.4]
  input          io_nvdla_core_clk, // @[:@29.4]
  input          io_abuf_wr_addr_valid, // @[:@29.4]
  input  [2:0]   io_abuf_wr_addr_bits, // @[:@29.4]
  input  [135:0] io_abuf_wr_data, // @[:@29.4]
  input          io_abuf_rd_addr_valid, // @[:@29.4]
  input  [2:0]   io_abuf_rd_addr_bits, // @[:@29.4]
  output [135:0] io_abuf_rd_data, // @[:@29.4]
  input  [31:0]  io_pwrbus_ram_pd // @[:@29.4]
);
  wire  u_accu_abuf_0_io_clk; // @[NV_NVDLA_CACC_assembly_buffer.scala 44:31:@31.4]
  wire  u_accu_abuf_0_io_re; // @[NV_NVDLA_CACC_assembly_buffer.scala 44:31:@31.4]
  wire  u_accu_abuf_0_io_we; // @[NV_NVDLA_CACC_assembly_buffer.scala 44:31:@31.4]
  wire [2:0] u_accu_abuf_0_io_ra; // @[NV_NVDLA_CACC_assembly_buffer.scala 44:31:@31.4]
  wire [2:0] u_accu_abuf_0_io_wa; // @[NV_NVDLA_CACC_assembly_buffer.scala 44:31:@31.4]
  wire [135:0] u_accu_abuf_0_io_di; // @[NV_NVDLA_CACC_assembly_buffer.scala 44:31:@31.4]
  wire [135:0] u_accu_abuf_0_io_dout; // @[NV_NVDLA_CACC_assembly_buffer.scala 44:31:@31.4]
  reg  abuf_rd_en_d1; // @[NV_NVDLA_CACC_assembly_buffer.scala 54:32:@40.4]
  reg [31:0] _RAND_0;
  reg [135:0] _T_40; // @[Reg.scala 11:16:@42.4]
  reg [159:0] _RAND_1;
  nv_ram_rws u_accu_abuf_0 ( // @[NV_NVDLA_CACC_assembly_buffer.scala 44:31:@31.4]
    .io_clk(u_accu_abuf_0_io_clk),
    .io_re(u_accu_abuf_0_io_re),
    .io_we(u_accu_abuf_0_io_we),
    .io_ra(u_accu_abuf_0_io_ra),
    .io_wa(u_accu_abuf_0_io_wa),
    .io_di(u_accu_abuf_0_io_di),
    .io_dout(u_accu_abuf_0_io_dout)
  );
  assign io_abuf_rd_data = _T_40; // @[NV_NVDLA_CACC_assembly_buffer.scala 56:21:@46.4]
  assign u_accu_abuf_0_io_clk = io_nvdla_core_clk; // @[NV_NVDLA_CACC_assembly_buffer.scala 46:26:@34.4]
  assign u_accu_abuf_0_io_re = io_abuf_rd_addr_valid; // @[NV_NVDLA_CACC_assembly_buffer.scala 48:25:@36.4]
  assign u_accu_abuf_0_io_we = io_abuf_wr_addr_valid; // @[NV_NVDLA_CACC_assembly_buffer.scala 49:25:@37.4]
  assign u_accu_abuf_0_io_ra = io_abuf_rd_addr_bits; // @[NV_NVDLA_CACC_assembly_buffer.scala 47:25:@35.4]
  assign u_accu_abuf_0_io_wa = io_abuf_wr_addr_bits; // @[NV_NVDLA_CACC_assembly_buffer.scala 50:25:@38.4]
  assign u_accu_abuf_0_io_di = io_abuf_wr_data; // @[NV_NVDLA_CACC_assembly_buffer.scala 51:25:@39.4]
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
  abuf_rd_en_d1 = _RAND_0[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_1 = {5{`RANDOM}};
  _T_40 = _RAND_1[135:0];
  `endif // RANDOMIZE_REG_INIT
  end
`endif // RANDOMIZE
  always @(posedge io_nvdla_core_clk) begin
    if (reset) begin
      abuf_rd_en_d1 <= 1'h0;
    end else begin
      abuf_rd_en_d1 <= io_abuf_rd_addr_valid;
    end
    if (abuf_rd_en_d1) begin
      _T_40 <= u_accu_abuf_0_io_dout;
    end
  end
endmodule
