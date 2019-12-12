module nv_ram_rwsthp( // @[:@3.2]
  input          clock, // @[:@4.4]
  input          reset, // @[:@5.4]
  input          io_clk, // @[:@6.4]
  input          io_re, // @[:@6.4]
  input          io_we, // @[:@6.4]
  input          io_byp_sel, // @[:@6.4]
  input          io_ore, // @[:@6.4]
  input  [167:0] io_dbyp, // @[:@6.4]
  input  [5:0]   io_ra, // @[:@6.4]
  input  [5:0]   io_wa, // @[:@6.4]
  input  [31:0]  io_pwrbus_ram_pd, // @[:@6.4]
  input  [167:0] io_di, // @[:@6.4]
  output [167:0] io_dout // @[:@6.4]
);
  reg [167:0] mem [0:59]; // @[nv_ram_rwsthp.scala 34:22:@8.4]
  reg [191:0] _RAND_0;
  wire [167:0] mem_dout_ram_data; // @[nv_ram_rwsthp.scala 34:22:@8.4]
  wire [5:0] mem_dout_ram_addr; // @[nv_ram_rwsthp.scala 34:22:@8.4]
  reg [191:0] _RAND_1;
  wire [167:0] mem__T_29_data; // @[nv_ram_rwsthp.scala 34:22:@8.4]
  wire [5:0] mem__T_29_addr; // @[nv_ram_rwsthp.scala 34:22:@8.4]
  wire  mem__T_29_mask; // @[nv_ram_rwsthp.scala 34:22:@8.4]
  wire  mem__T_29_en; // @[nv_ram_rwsthp.scala 34:22:@8.4]
  reg [167:0] _T_36; // @[nv_ram_rwsthp.scala 44:27:@25.8]
  reg [191:0] _RAND_2;
  wire  _GEN_11; // @[nv_ram_rwsthp.scala 36:14:@9.4]
  reg [5:0] mem_dout_ram_addr_pipe_0;
  reg [31:0] _RAND_3;
  wire  _GEN_14;
  assign mem_dout_ram_addr = mem_dout_ram_addr_pipe_0;
  `ifndef RANDOMIZE_GARBAGE_ASSIGN
  assign mem_dout_ram_data = mem[mem_dout_ram_addr]; // @[nv_ram_rwsthp.scala 34:22:@8.4]
  `else
  assign mem_dout_ram_data = mem_dout_ram_addr >= 6'h3c ? _RAND_1[167:0] : mem[mem_dout_ram_addr]; // @[nv_ram_rwsthp.scala 34:22:@8.4]
  `endif // RANDOMIZE_GARBAGE_ASSIGN
  assign mem__T_29_data = io_di;
  assign mem__T_29_addr = io_wa;
  assign mem__T_29_mask = 1'h1;
  assign mem__T_29_en = io_we;
  assign _GEN_11 = io_we ? 1'h0 : io_re; // @[nv_ram_rwsthp.scala 36:14:@9.4]
  assign io_dout = _T_36; // @[nv_ram_rwsthp.scala 44:17:@27.8]
  assign _GEN_14 = _GEN_11;
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
  _RAND_0 = {6{`RANDOM}};
  `ifdef RANDOMIZE_MEM_INIT
  for (initvar = 0; initvar < 60; initvar = initvar+1)
    mem[initvar] = _RAND_0[167:0];
  `endif // RANDOMIZE_MEM_INIT
  _RAND_1 = {6{`RANDOM}};
  `ifdef RANDOMIZE_REG_INIT
  _RAND_2 = {6{`RANDOM}};
  _T_36 = _RAND_2[167:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_3 = {1{`RANDOM}};
  mem_dout_ram_addr_pipe_0 = _RAND_3[5:0];
  `endif // RANDOMIZE_REG_INIT
  end
`endif // RANDOMIZE
  always @(posedge io_clk) begin
    if(mem__T_29_en & mem__T_29_mask) begin
      mem[mem__T_29_addr] <= mem__T_29_data; // @[nv_ram_rwsthp.scala 34:22:@8.4]
    end
    if (io_byp_sel) begin
      _T_36 <= io_dbyp;
    end else begin
      _T_36 <= mem_dout_ram_data;
    end
    if (_GEN_14) begin
      mem_dout_ram_addr_pipe_0 <= io_ra;
    end
  end
endmodule
