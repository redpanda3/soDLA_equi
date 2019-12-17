module nv_ram_rwsthp( // @[:@3.2]
  input         clk, // @[:@6.4]
  input         re, // @[:@6.4]
  input         we, // @[:@6.4]
  input         byp_sel, // @[:@6.4]
  input         ore, // @[:@6.4]
  input  [31:0] dbyp, // @[:@6.4]
  input  [4:0]  ra, // @[:@6.4]
  input  [4:0]  wa, // @[:@6.4]
  input  [31:0] pwrbus_ram_pd, // @[:@6.4]
  input  [31:0] di, // @[:@6.4]
  output [31:0] dout // @[:@6.4]
);
  reg [31:0] mem_0; // @[nv_ram_rwsthp.scala 53:14:@8.4]
  reg [31:0] _RAND_0;
  reg [31:0] mem_1; // @[nv_ram_rwsthp.scala 53:14:@8.4]
  reg [31:0] _RAND_1;
  reg [31:0] mem_2; // @[nv_ram_rwsthp.scala 53:14:@8.4]
  reg [31:0] _RAND_2;
  reg [31:0] mem_3; // @[nv_ram_rwsthp.scala 53:14:@8.4]
  reg [31:0] _RAND_3;
  reg [31:0] mem_4; // @[nv_ram_rwsthp.scala 53:14:@8.4]
  reg [31:0] _RAND_4;
  reg [31:0] mem_5; // @[nv_ram_rwsthp.scala 53:14:@8.4]
  reg [31:0] _RAND_5;
  reg [31:0] mem_6; // @[nv_ram_rwsthp.scala 53:14:@8.4]
  reg [31:0] _RAND_6;
  reg [31:0] mem_7; // @[nv_ram_rwsthp.scala 53:14:@8.4]
  reg [31:0] _RAND_7;
  reg [31:0] mem_8; // @[nv_ram_rwsthp.scala 53:14:@8.4]
  reg [31:0] _RAND_8;
  reg [31:0] mem_9; // @[nv_ram_rwsthp.scala 53:14:@8.4]
  reg [31:0] _RAND_9;
  reg [31:0] mem_10; // @[nv_ram_rwsthp.scala 53:14:@8.4]
  reg [31:0] _RAND_10;
  reg [31:0] mem_11; // @[nv_ram_rwsthp.scala 53:14:@8.4]
  reg [31:0] _RAND_11;
  reg [31:0] mem_12; // @[nv_ram_rwsthp.scala 53:14:@8.4]
  reg [31:0] _RAND_12;
  reg [31:0] mem_13; // @[nv_ram_rwsthp.scala 53:14:@8.4]
  reg [31:0] _RAND_13;
  reg [31:0] mem_14; // @[nv_ram_rwsthp.scala 53:14:@8.4]
  reg [31:0] _RAND_14;
  reg [31:0] mem_15; // @[nv_ram_rwsthp.scala 53:14:@8.4]
  reg [31:0] _RAND_15;
  reg [31:0] mem_16; // @[nv_ram_rwsthp.scala 53:14:@8.4]
  reg [31:0] _RAND_16;
  reg [31:0] mem_17; // @[nv_ram_rwsthp.scala 53:14:@8.4]
  reg [31:0] _RAND_17;
  reg [31:0] mem_18; // @[nv_ram_rwsthp.scala 53:14:@8.4]
  reg [31:0] _RAND_18;
  reg [4:0] ra_d; // @[nv_ram_rwsthp.scala 54:15:@9.4]
  reg [31:0] _RAND_19;
  wire [31:0] _GEN_0; // @[nv_ram_rwsthp.scala 57:16:@11.6]
  wire [31:0] _GEN_1; // @[nv_ram_rwsthp.scala 57:16:@11.6]
  wire [31:0] _GEN_2; // @[nv_ram_rwsthp.scala 57:16:@11.6]
  wire [31:0] _GEN_3; // @[nv_ram_rwsthp.scala 57:16:@11.6]
  wire [31:0] _GEN_4; // @[nv_ram_rwsthp.scala 57:16:@11.6]
  wire [31:0] _GEN_5; // @[nv_ram_rwsthp.scala 57:16:@11.6]
  wire [31:0] _GEN_6; // @[nv_ram_rwsthp.scala 57:16:@11.6]
  wire [31:0] _GEN_7; // @[nv_ram_rwsthp.scala 57:16:@11.6]
  wire [31:0] _GEN_8; // @[nv_ram_rwsthp.scala 57:16:@11.6]
  wire [31:0] _GEN_9; // @[nv_ram_rwsthp.scala 57:16:@11.6]
  wire [31:0] _GEN_10; // @[nv_ram_rwsthp.scala 57:16:@11.6]
  wire [31:0] _GEN_11; // @[nv_ram_rwsthp.scala 57:16:@11.6]
  wire [31:0] _GEN_12; // @[nv_ram_rwsthp.scala 57:16:@11.6]
  wire [31:0] _GEN_13; // @[nv_ram_rwsthp.scala 57:16:@11.6]
  wire [31:0] _GEN_14; // @[nv_ram_rwsthp.scala 57:16:@11.6]
  wire [31:0] _GEN_15; // @[nv_ram_rwsthp.scala 57:16:@11.6]
  wire [31:0] _GEN_16; // @[nv_ram_rwsthp.scala 57:16:@11.6]
  wire [31:0] _GEN_17; // @[nv_ram_rwsthp.scala 57:16:@11.6]
  wire [31:0] _GEN_18; // @[nv_ram_rwsthp.scala 57:16:@11.6]
  wire [31:0] _GEN_40; // @[nv_ram_rwsthp.scala 64:27:@16.4]
  wire [31:0] _GEN_41; // @[nv_ram_rwsthp.scala 64:27:@16.4]
  wire [31:0] _GEN_42; // @[nv_ram_rwsthp.scala 64:27:@16.4]
  wire [31:0] _GEN_43; // @[nv_ram_rwsthp.scala 64:27:@16.4]
  wire [31:0] _GEN_44; // @[nv_ram_rwsthp.scala 64:27:@16.4]
  wire [31:0] _GEN_45; // @[nv_ram_rwsthp.scala 64:27:@16.4]
  wire [31:0] _GEN_46; // @[nv_ram_rwsthp.scala 64:27:@16.4]
  wire [31:0] _GEN_47; // @[nv_ram_rwsthp.scala 64:27:@16.4]
  wire [31:0] _GEN_48; // @[nv_ram_rwsthp.scala 64:27:@16.4]
  wire [31:0] _GEN_49; // @[nv_ram_rwsthp.scala 64:27:@16.4]
  wire [31:0] _GEN_50; // @[nv_ram_rwsthp.scala 64:27:@16.4]
  wire [31:0] _GEN_51; // @[nv_ram_rwsthp.scala 64:27:@16.4]
  wire [31:0] _GEN_52; // @[nv_ram_rwsthp.scala 64:27:@16.4]
  wire [31:0] _GEN_53; // @[nv_ram_rwsthp.scala 64:27:@16.4]
  wire [31:0] _GEN_54; // @[nv_ram_rwsthp.scala 64:27:@16.4]
  wire [31:0] _GEN_55; // @[nv_ram_rwsthp.scala 64:27:@16.4]
  wire [31:0] _GEN_56; // @[nv_ram_rwsthp.scala 64:27:@16.4]
  wire [31:0] _GEN_57; // @[nv_ram_rwsthp.scala 64:27:@16.4]
  wire [31:0] fbypass_dout_ram; // @[nv_ram_rwsthp.scala 64:27:@16.4]
  reg [31:0] dout_r; // @[nv_ram_rwsthp.scala 65:17:@17.4]
  reg [31:0] _RAND_20;
  assign _GEN_0 = 5'h0 == wa ? di : mem_0; // @[nv_ram_rwsthp.scala 57:16:@11.6]
  assign _GEN_1 = 5'h1 == wa ? di : mem_1; // @[nv_ram_rwsthp.scala 57:16:@11.6]
  assign _GEN_2 = 5'h2 == wa ? di : mem_2; // @[nv_ram_rwsthp.scala 57:16:@11.6]
  assign _GEN_3 = 5'h3 == wa ? di : mem_3; // @[nv_ram_rwsthp.scala 57:16:@11.6]
  assign _GEN_4 = 5'h4 == wa ? di : mem_4; // @[nv_ram_rwsthp.scala 57:16:@11.6]
  assign _GEN_5 = 5'h5 == wa ? di : mem_5; // @[nv_ram_rwsthp.scala 57:16:@11.6]
  assign _GEN_6 = 5'h6 == wa ? di : mem_6; // @[nv_ram_rwsthp.scala 57:16:@11.6]
  assign _GEN_7 = 5'h7 == wa ? di : mem_7; // @[nv_ram_rwsthp.scala 57:16:@11.6]
  assign _GEN_8 = 5'h8 == wa ? di : mem_8; // @[nv_ram_rwsthp.scala 57:16:@11.6]
  assign _GEN_9 = 5'h9 == wa ? di : mem_9; // @[nv_ram_rwsthp.scala 57:16:@11.6]
  assign _GEN_10 = 5'ha == wa ? di : mem_10; // @[nv_ram_rwsthp.scala 57:16:@11.6]
  assign _GEN_11 = 5'hb == wa ? di : mem_11; // @[nv_ram_rwsthp.scala 57:16:@11.6]
  assign _GEN_12 = 5'hc == wa ? di : mem_12; // @[nv_ram_rwsthp.scala 57:16:@11.6]
  assign _GEN_13 = 5'hd == wa ? di : mem_13; // @[nv_ram_rwsthp.scala 57:16:@11.6]
  assign _GEN_14 = 5'he == wa ? di : mem_14; // @[nv_ram_rwsthp.scala 57:16:@11.6]
  assign _GEN_15 = 5'hf == wa ? di : mem_15; // @[nv_ram_rwsthp.scala 57:16:@11.6]
  assign _GEN_16 = 5'h10 == wa ? di : mem_16; // @[nv_ram_rwsthp.scala 57:16:@11.6]
  assign _GEN_17 = 5'h11 == wa ? di : mem_17; // @[nv_ram_rwsthp.scala 57:16:@11.6]
  assign _GEN_18 = 5'h12 == wa ? di : mem_18; // @[nv_ram_rwsthp.scala 57:16:@11.6]
  assign _GEN_40 = 5'h1 == ra_d ? mem_1 : mem_0; // @[nv_ram_rwsthp.scala 64:27:@16.4]
  assign _GEN_41 = 5'h2 == ra_d ? mem_2 : _GEN_40; // @[nv_ram_rwsthp.scala 64:27:@16.4]
  assign _GEN_42 = 5'h3 == ra_d ? mem_3 : _GEN_41; // @[nv_ram_rwsthp.scala 64:27:@16.4]
  assign _GEN_43 = 5'h4 == ra_d ? mem_4 : _GEN_42; // @[nv_ram_rwsthp.scala 64:27:@16.4]
  assign _GEN_44 = 5'h5 == ra_d ? mem_5 : _GEN_43; // @[nv_ram_rwsthp.scala 64:27:@16.4]
  assign _GEN_45 = 5'h6 == ra_d ? mem_6 : _GEN_44; // @[nv_ram_rwsthp.scala 64:27:@16.4]
  assign _GEN_46 = 5'h7 == ra_d ? mem_7 : _GEN_45; // @[nv_ram_rwsthp.scala 64:27:@16.4]
  assign _GEN_47 = 5'h8 == ra_d ? mem_8 : _GEN_46; // @[nv_ram_rwsthp.scala 64:27:@16.4]
  assign _GEN_48 = 5'h9 == ra_d ? mem_9 : _GEN_47; // @[nv_ram_rwsthp.scala 64:27:@16.4]
  assign _GEN_49 = 5'ha == ra_d ? mem_10 : _GEN_48; // @[nv_ram_rwsthp.scala 64:27:@16.4]
  assign _GEN_50 = 5'hb == ra_d ? mem_11 : _GEN_49; // @[nv_ram_rwsthp.scala 64:27:@16.4]
  assign _GEN_51 = 5'hc == ra_d ? mem_12 : _GEN_50; // @[nv_ram_rwsthp.scala 64:27:@16.4]
  assign _GEN_52 = 5'hd == ra_d ? mem_13 : _GEN_51; // @[nv_ram_rwsthp.scala 64:27:@16.4]
  assign _GEN_53 = 5'he == ra_d ? mem_14 : _GEN_52; // @[nv_ram_rwsthp.scala 64:27:@16.4]
  assign _GEN_54 = 5'hf == ra_d ? mem_15 : _GEN_53; // @[nv_ram_rwsthp.scala 64:27:@16.4]
  assign _GEN_55 = 5'h10 == ra_d ? mem_16 : _GEN_54; // @[nv_ram_rwsthp.scala 64:27:@16.4]
  assign _GEN_56 = 5'h11 == ra_d ? mem_17 : _GEN_55; // @[nv_ram_rwsthp.scala 64:27:@16.4]
  assign _GEN_57 = 5'h12 == ra_d ? mem_18 : _GEN_56; // @[nv_ram_rwsthp.scala 64:27:@16.4]
  assign fbypass_dout_ram = byp_sel ? dbyp : _GEN_57; // @[nv_ram_rwsthp.scala 64:27:@16.4]
  assign dout = dout_r; // @[nv_ram_rwsthp.scala 70:9:@21.4]
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
  mem_0 = _RAND_0[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_1 = {1{`RANDOM}};
  mem_1 = _RAND_1[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_2 = {1{`RANDOM}};
  mem_2 = _RAND_2[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_3 = {1{`RANDOM}};
  mem_3 = _RAND_3[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_4 = {1{`RANDOM}};
  mem_4 = _RAND_4[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_5 = {1{`RANDOM}};
  mem_5 = _RAND_5[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_6 = {1{`RANDOM}};
  mem_6 = _RAND_6[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_7 = {1{`RANDOM}};
  mem_7 = _RAND_7[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_8 = {1{`RANDOM}};
  mem_8 = _RAND_8[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_9 = {1{`RANDOM}};
  mem_9 = _RAND_9[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_10 = {1{`RANDOM}};
  mem_10 = _RAND_10[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_11 = {1{`RANDOM}};
  mem_11 = _RAND_11[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_12 = {1{`RANDOM}};
  mem_12 = _RAND_12[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_13 = {1{`RANDOM}};
  mem_13 = _RAND_13[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_14 = {1{`RANDOM}};
  mem_14 = _RAND_14[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_15 = {1{`RANDOM}};
  mem_15 = _RAND_15[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_16 = {1{`RANDOM}};
  mem_16 = _RAND_16[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_17 = {1{`RANDOM}};
  mem_17 = _RAND_17[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_18 = {1{`RANDOM}};
  mem_18 = _RAND_18[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_19 = {1{`RANDOM}};
  ra_d = _RAND_19[4:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_20 = {1{`RANDOM}};
  dout_r = _RAND_20[31:0];
  `endif // RANDOMIZE_REG_INIT
  end
`endif // RANDOMIZE
  always @(posedge clk) begin
    if (we) begin
      if (5'h0 == wa) begin
        mem_0 <= di;
      end
    end
    if (we) begin
      if (5'h1 == wa) begin
        mem_1 <= di;
      end
    end
    if (we) begin
      if (5'h2 == wa) begin
        mem_2 <= di;
      end
    end
    if (we) begin
      if (5'h3 == wa) begin
        mem_3 <= di;
      end
    end
    if (we) begin
      if (5'h4 == wa) begin
        mem_4 <= di;
      end
    end
    if (we) begin
      if (5'h5 == wa) begin
        mem_5 <= di;
      end
    end
    if (we) begin
      if (5'h6 == wa) begin
        mem_6 <= di;
      end
    end
    if (we) begin
      if (5'h7 == wa) begin
        mem_7 <= di;
      end
    end
    if (we) begin
      if (5'h8 == wa) begin
        mem_8 <= di;
      end
    end
    if (we) begin
      if (5'h9 == wa) begin
        mem_9 <= di;
      end
    end
    if (we) begin
      if (5'ha == wa) begin
        mem_10 <= di;
      end
    end
    if (we) begin
      if (5'hb == wa) begin
        mem_11 <= di;
      end
    end
    if (we) begin
      if (5'hc == wa) begin
        mem_12 <= di;
      end
    end
    if (we) begin
      if (5'hd == wa) begin
        mem_13 <= di;
      end
    end
    if (we) begin
      if (5'he == wa) begin
        mem_14 <= di;
      end
    end
    if (we) begin
      if (5'hf == wa) begin
        mem_15 <= di;
      end
    end
    if (we) begin
      if (5'h10 == wa) begin
        mem_16 <= di;
      end
    end
    if (we) begin
      if (5'h11 == wa) begin
        mem_17 <= di;
      end
    end
    if (we) begin
      if (5'h12 == wa) begin
        mem_18 <= di;
      end
    end
    if (re) begin
      ra_d <= ra;
    end
    if (ore) begin
      if (byp_sel) begin
        dout_r <= dbyp;
      end else begin
        if (5'h12 == ra_d) begin
          dout_r <= mem_18;
        end else begin
          if (5'h11 == ra_d) begin
            dout_r <= mem_17;
          end else begin
            if (5'h10 == ra_d) begin
              dout_r <= mem_16;
            end else begin
              if (5'hf == ra_d) begin
                dout_r <= mem_15;
              end else begin
                if (5'he == ra_d) begin
                  dout_r <= mem_14;
                end else begin
                  if (5'hd == ra_d) begin
                    dout_r <= mem_13;
                  end else begin
                    if (5'hc == ra_d) begin
                      dout_r <= mem_12;
                    end else begin
                      if (5'hb == ra_d) begin
                        dout_r <= mem_11;
                      end else begin
                        if (5'ha == ra_d) begin
                          dout_r <= mem_10;
                        end else begin
                          if (5'h9 == ra_d) begin
                            dout_r <= mem_9;
                          end else begin
                            if (5'h8 == ra_d) begin
                              dout_r <= mem_8;
                            end else begin
                              if (5'h7 == ra_d) begin
                                dout_r <= mem_7;
                              end else begin
                                if (5'h6 == ra_d) begin
                                  dout_r <= mem_6;
                                end else begin
                                  if (5'h5 == ra_d) begin
                                    dout_r <= mem_5;
                                  end else begin
                                    if (5'h4 == ra_d) begin
                                      dout_r <= mem_4;
                                    end else begin
                                      if (5'h3 == ra_d) begin
                                        dout_r <= mem_3;
                                      end else begin
                                        if (5'h2 == ra_d) begin
                                          dout_r <= mem_2;
                                        end else begin
                                          if (5'h1 == ra_d) begin
                                            dout_r <= mem_1;
                                          end else begin
                                            dout_r <= mem_0;
                                          end
                                        end
                                      end
                                    end
                                  end
                                end
                              end
                            end
                          end
                        end
                      end
                    end
                  end
                end
              end
            end
          end
        end
      end
    end
  end
endmodule


module nv_ram_rwsthp_19x32 ( 
		clk,
		ra,
		re,
		ore,
		dout,
		wa,
		we,
		di,
		byp_sel,
		dbyp,
		pwrbus_ram_pd
);

parameter FORCE_CONTENTION_ASSERTION_RESET_ACTIVE=1'b0;

// port list
input			clk;
input	[4:0]	ra;
input			re;
input			ore;
output	[31:0]	dout;
input	[4:0]	wa;
input			we;
input	[31:0]	di;
input			byp_sel;
input	[31:0]	dbyp;
input	[31:0]	pwrbus_ram_pd;

//reg and wire list
reg		[4:0]	ra_d;
wire	[31:0]	dout;
reg		[31:0]	M	[18:0];

always @( posedge clk ) begin
    if (we)
       M[wa] <= di;
end
 
always @( posedge clk ) begin
    if (re) 
       ra_d <= ra;
end

wire	[31:0]	dout_ram = M[ra_d];

wire	[31:0]	fbypass_dout_ram = (byp_sel ? dbyp : dout_ram);

reg		[31:0]	dout_r;
always @( posedge clk ) begin
   if (ore)
       dout_r <= fbypass_dout_ram;
end

assign dout = dout_r;


endmodule