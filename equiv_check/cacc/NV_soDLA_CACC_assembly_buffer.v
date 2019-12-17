module nv_ram_rws( // @[:@3.2]
  input           clk, // @[:@6.4]
  input           re, // @[:@6.4]
  input           we, // @[:@6.4]
  input  [5:0]    ra, // @[:@6.4]
  input  [5:0]    wa, // @[:@6.4]
  input  [1087:0] di, // @[:@6.4]
  output [1087:0] dout // @[:@6.4]
);
  reg [1087:0] mem_0; // @[nv_ram_rws.scala 39:18:@8.4]
  reg [1087:0] _RAND_0;
  reg [1087:0] mem_1; // @[nv_ram_rws.scala 39:18:@8.4]
  reg [1087:0] _RAND_1;
  reg [1087:0] mem_2; // @[nv_ram_rws.scala 39:18:@8.4]
  reg [1087:0] _RAND_2;
  reg [1087:0] mem_3; // @[nv_ram_rws.scala 39:18:@8.4]
  reg [1087:0] _RAND_3;
  reg [1087:0] mem_4; // @[nv_ram_rws.scala 39:18:@8.4]
  reg [1087:0] _RAND_4;
  reg [1087:0] mem_5; // @[nv_ram_rws.scala 39:18:@8.4]
  reg [1087:0] _RAND_5;
  reg [1087:0] mem_6; // @[nv_ram_rws.scala 39:18:@8.4]
  reg [1087:0] _RAND_6;
  reg [1087:0] mem_7; // @[nv_ram_rws.scala 39:18:@8.4]
  reg [1087:0] _RAND_7;
  reg [1087:0] mem_8; // @[nv_ram_rws.scala 39:18:@8.4]
  reg [1087:0] _RAND_8;
  reg [1087:0] mem_9; // @[nv_ram_rws.scala 39:18:@8.4]
  reg [1087:0] _RAND_9;
  reg [1087:0] mem_10; // @[nv_ram_rws.scala 39:18:@8.4]
  reg [1087:0] _RAND_10;
  reg [1087:0] mem_11; // @[nv_ram_rws.scala 39:18:@8.4]
  reg [1087:0] _RAND_11;
  reg [1087:0] mem_12; // @[nv_ram_rws.scala 39:18:@8.4]
  reg [1087:0] _RAND_12;
  reg [1087:0] mem_13; // @[nv_ram_rws.scala 39:18:@8.4]
  reg [1087:0] _RAND_13;
  reg [1087:0] mem_14; // @[nv_ram_rws.scala 39:18:@8.4]
  reg [1087:0] _RAND_14;
  reg [1087:0] mem_15; // @[nv_ram_rws.scala 39:18:@8.4]
  reg [1087:0] _RAND_15;
  reg [1087:0] mem_16; // @[nv_ram_rws.scala 39:18:@8.4]
  reg [1087:0] _RAND_16;
  reg [1087:0] mem_17; // @[nv_ram_rws.scala 39:18:@8.4]
  reg [1087:0] _RAND_17;
  reg [1087:0] mem_18; // @[nv_ram_rws.scala 39:18:@8.4]
  reg [1087:0] _RAND_18;
  reg [1087:0] mem_19; // @[nv_ram_rws.scala 39:18:@8.4]
  reg [1087:0] _RAND_19;
  reg [1087:0] mem_20; // @[nv_ram_rws.scala 39:18:@8.4]
  reg [1087:0] _RAND_20;
  reg [1087:0] mem_21; // @[nv_ram_rws.scala 39:18:@8.4]
  reg [1087:0] _RAND_21;
  reg [1087:0] mem_22; // @[nv_ram_rws.scala 39:18:@8.4]
  reg [1087:0] _RAND_22;
  reg [1087:0] mem_23; // @[nv_ram_rws.scala 39:18:@8.4]
  reg [1087:0] _RAND_23;
  reg [1087:0] mem_24; // @[nv_ram_rws.scala 39:18:@8.4]
  reg [1087:0] _RAND_24;
  reg [1087:0] mem_25; // @[nv_ram_rws.scala 39:18:@8.4]
  reg [1087:0] _RAND_25;
  reg [1087:0] mem_26; // @[nv_ram_rws.scala 39:18:@8.4]
  reg [1087:0] _RAND_26;
  reg [1087:0] mem_27; // @[nv_ram_rws.scala 39:18:@8.4]
  reg [1087:0] _RAND_27;
  reg [1087:0] mem_28; // @[nv_ram_rws.scala 39:18:@8.4]
  reg [1087:0] _RAND_28;
  reg [1087:0] mem_29; // @[nv_ram_rws.scala 39:18:@8.4]
  reg [1087:0] _RAND_29;
  reg [1087:0] mem_30; // @[nv_ram_rws.scala 39:18:@8.4]
  reg [1087:0] _RAND_30;
  reg [1087:0] mem_31; // @[nv_ram_rws.scala 39:18:@8.4]
  reg [1087:0] _RAND_31;
  reg [1087:0] mem_32; // @[nv_ram_rws.scala 39:18:@8.4]
  reg [1087:0] _RAND_32;
  reg [1087:0] mem_33; // @[nv_ram_rws.scala 39:18:@8.4]
  reg [1087:0] _RAND_33;
  reg [1087:0] mem_34; // @[nv_ram_rws.scala 39:18:@8.4]
  reg [1087:0] _RAND_34;
  reg [1087:0] mem_35; // @[nv_ram_rws.scala 39:18:@8.4]
  reg [1087:0] _RAND_35;
  reg [1087:0] mem_36; // @[nv_ram_rws.scala 39:18:@8.4]
  reg [1087:0] _RAND_36;
  reg [1087:0] mem_37; // @[nv_ram_rws.scala 39:18:@8.4]
  reg [1087:0] _RAND_37;
  reg [1087:0] mem_38; // @[nv_ram_rws.scala 39:18:@8.4]
  reg [1087:0] _RAND_38;
  reg [1087:0] mem_39; // @[nv_ram_rws.scala 39:18:@8.4]
  reg [1087:0] _RAND_39;
  reg [1087:0] mem_40; // @[nv_ram_rws.scala 39:18:@8.4]
  reg [1087:0] _RAND_40;
  reg [1087:0] mem_41; // @[nv_ram_rws.scala 39:18:@8.4]
  reg [1087:0] _RAND_41;
  reg [1087:0] mem_42; // @[nv_ram_rws.scala 39:18:@8.4]
  reg [1087:0] _RAND_42;
  reg [1087:0] mem_43; // @[nv_ram_rws.scala 39:18:@8.4]
  reg [1087:0] _RAND_43;
  reg [1087:0] mem_44; // @[nv_ram_rws.scala 39:18:@8.4]
  reg [1087:0] _RAND_44;
  reg [1087:0] mem_45; // @[nv_ram_rws.scala 39:18:@8.4]
  reg [1087:0] _RAND_45;
  reg [1087:0] mem_46; // @[nv_ram_rws.scala 39:18:@8.4]
  reg [1087:0] _RAND_46;
  reg [1087:0] mem_47; // @[nv_ram_rws.scala 39:18:@8.4]
  reg [1087:0] _RAND_47;
  reg [1087:0] mem_48; // @[nv_ram_rws.scala 39:18:@8.4]
  reg [1087:0] _RAND_48;
  reg [1087:0] mem_49; // @[nv_ram_rws.scala 39:18:@8.4]
  reg [1087:0] _RAND_49;
  reg [1087:0] mem_50; // @[nv_ram_rws.scala 39:18:@8.4]
  reg [1087:0] _RAND_50;
  reg [1087:0] mem_51; // @[nv_ram_rws.scala 39:18:@8.4]
  reg [1087:0] _RAND_51;
  reg [1087:0] mem_52; // @[nv_ram_rws.scala 39:18:@8.4]
  reg [1087:0] _RAND_52;
  reg [1087:0] mem_53; // @[nv_ram_rws.scala 39:18:@8.4]
  reg [1087:0] _RAND_53;
  reg [1087:0] mem_54; // @[nv_ram_rws.scala 39:18:@8.4]
  reg [1087:0] _RAND_54;
  reg [1087:0] mem_55; // @[nv_ram_rws.scala 39:18:@8.4]
  reg [1087:0] _RAND_55;
  reg [1087:0] mem_56; // @[nv_ram_rws.scala 39:18:@8.4]
  reg [1087:0] _RAND_56;
  reg [1087:0] mem_57; // @[nv_ram_rws.scala 39:18:@8.4]
  reg [1087:0] _RAND_57;
  reg [1087:0] mem_58; // @[nv_ram_rws.scala 39:18:@8.4]
  reg [1087:0] _RAND_58;
  reg [1087:0] mem_59; // @[nv_ram_rws.scala 39:18:@8.4]
  reg [1087:0] _RAND_59;
  reg [1087:0] mem_60; // @[nv_ram_rws.scala 39:18:@8.4]
  reg [1087:0] _RAND_60;
  reg [1087:0] mem_61; // @[nv_ram_rws.scala 39:18:@8.4]
  reg [1087:0] _RAND_61;
  reg [1087:0] mem_62; // @[nv_ram_rws.scala 39:18:@8.4]
  reg [1087:0] _RAND_62;
  reg [1087:0] mem_63; // @[nv_ram_rws.scala 39:18:@8.4]
  reg [1087:0] _RAND_63;
  reg [5:0] ra_d; // @[nv_ram_rws.scala 40:19:@9.4]
  reg [31:0] _RAND_64;
  wire [1087:0] _GEN_0; // @[nv_ram_rws.scala 43:20:@11.6]
  wire [1087:0] _GEN_1; // @[nv_ram_rws.scala 43:20:@11.6]
  wire [1087:0] _GEN_2; // @[nv_ram_rws.scala 43:20:@11.6]
  wire [1087:0] _GEN_3; // @[nv_ram_rws.scala 43:20:@11.6]
  wire [1087:0] _GEN_4; // @[nv_ram_rws.scala 43:20:@11.6]
  wire [1087:0] _GEN_5; // @[nv_ram_rws.scala 43:20:@11.6]
  wire [1087:0] _GEN_6; // @[nv_ram_rws.scala 43:20:@11.6]
  wire [1087:0] _GEN_7; // @[nv_ram_rws.scala 43:20:@11.6]
  wire [1087:0] _GEN_8; // @[nv_ram_rws.scala 43:20:@11.6]
  wire [1087:0] _GEN_9; // @[nv_ram_rws.scala 43:20:@11.6]
  wire [1087:0] _GEN_10; // @[nv_ram_rws.scala 43:20:@11.6]
  wire [1087:0] _GEN_11; // @[nv_ram_rws.scala 43:20:@11.6]
  wire [1087:0] _GEN_12; // @[nv_ram_rws.scala 43:20:@11.6]
  wire [1087:0] _GEN_13; // @[nv_ram_rws.scala 43:20:@11.6]
  wire [1087:0] _GEN_14; // @[nv_ram_rws.scala 43:20:@11.6]
  wire [1087:0] _GEN_15; // @[nv_ram_rws.scala 43:20:@11.6]
  wire [1087:0] _GEN_16; // @[nv_ram_rws.scala 43:20:@11.6]
  wire [1087:0] _GEN_17; // @[nv_ram_rws.scala 43:20:@11.6]
  wire [1087:0] _GEN_18; // @[nv_ram_rws.scala 43:20:@11.6]
  wire [1087:0] _GEN_19; // @[nv_ram_rws.scala 43:20:@11.6]
  wire [1087:0] _GEN_20; // @[nv_ram_rws.scala 43:20:@11.6]
  wire [1087:0] _GEN_21; // @[nv_ram_rws.scala 43:20:@11.6]
  wire [1087:0] _GEN_22; // @[nv_ram_rws.scala 43:20:@11.6]
  wire [1087:0] _GEN_23; // @[nv_ram_rws.scala 43:20:@11.6]
  wire [1087:0] _GEN_24; // @[nv_ram_rws.scala 43:20:@11.6]
  wire [1087:0] _GEN_25; // @[nv_ram_rws.scala 43:20:@11.6]
  wire [1087:0] _GEN_26; // @[nv_ram_rws.scala 43:20:@11.6]
  wire [1087:0] _GEN_27; // @[nv_ram_rws.scala 43:20:@11.6]
  wire [1087:0] _GEN_28; // @[nv_ram_rws.scala 43:20:@11.6]
  wire [1087:0] _GEN_29; // @[nv_ram_rws.scala 43:20:@11.6]
  wire [1087:0] _GEN_30; // @[nv_ram_rws.scala 43:20:@11.6]
  wire [1087:0] _GEN_31; // @[nv_ram_rws.scala 43:20:@11.6]
  wire [1087:0] _GEN_32; // @[nv_ram_rws.scala 43:20:@11.6]
  wire [1087:0] _GEN_33; // @[nv_ram_rws.scala 43:20:@11.6]
  wire [1087:0] _GEN_34; // @[nv_ram_rws.scala 43:20:@11.6]
  wire [1087:0] _GEN_35; // @[nv_ram_rws.scala 43:20:@11.6]
  wire [1087:0] _GEN_36; // @[nv_ram_rws.scala 43:20:@11.6]
  wire [1087:0] _GEN_37; // @[nv_ram_rws.scala 43:20:@11.6]
  wire [1087:0] _GEN_38; // @[nv_ram_rws.scala 43:20:@11.6]
  wire [1087:0] _GEN_39; // @[nv_ram_rws.scala 43:20:@11.6]
  wire [1087:0] _GEN_40; // @[nv_ram_rws.scala 43:20:@11.6]
  wire [1087:0] _GEN_41; // @[nv_ram_rws.scala 43:20:@11.6]
  wire [1087:0] _GEN_42; // @[nv_ram_rws.scala 43:20:@11.6]
  wire [1087:0] _GEN_43; // @[nv_ram_rws.scala 43:20:@11.6]
  wire [1087:0] _GEN_44; // @[nv_ram_rws.scala 43:20:@11.6]
  wire [1087:0] _GEN_45; // @[nv_ram_rws.scala 43:20:@11.6]
  wire [1087:0] _GEN_46; // @[nv_ram_rws.scala 43:20:@11.6]
  wire [1087:0] _GEN_47; // @[nv_ram_rws.scala 43:20:@11.6]
  wire [1087:0] _GEN_48; // @[nv_ram_rws.scala 43:20:@11.6]
  wire [1087:0] _GEN_49; // @[nv_ram_rws.scala 43:20:@11.6]
  wire [1087:0] _GEN_50; // @[nv_ram_rws.scala 43:20:@11.6]
  wire [1087:0] _GEN_51; // @[nv_ram_rws.scala 43:20:@11.6]
  wire [1087:0] _GEN_52; // @[nv_ram_rws.scala 43:20:@11.6]
  wire [1087:0] _GEN_53; // @[nv_ram_rws.scala 43:20:@11.6]
  wire [1087:0] _GEN_54; // @[nv_ram_rws.scala 43:20:@11.6]
  wire [1087:0] _GEN_55; // @[nv_ram_rws.scala 43:20:@11.6]
  wire [1087:0] _GEN_56; // @[nv_ram_rws.scala 43:20:@11.6]
  wire [1087:0] _GEN_57; // @[nv_ram_rws.scala 43:20:@11.6]
  wire [1087:0] _GEN_58; // @[nv_ram_rws.scala 43:20:@11.6]
  wire [1087:0] _GEN_59; // @[nv_ram_rws.scala 43:20:@11.6]
  wire [1087:0] _GEN_60; // @[nv_ram_rws.scala 43:20:@11.6]
  wire [1087:0] _GEN_61; // @[nv_ram_rws.scala 43:20:@11.6]
  wire [1087:0] _GEN_62; // @[nv_ram_rws.scala 43:20:@11.6]
  wire [1087:0] _GEN_63; // @[nv_ram_rws.scala 43:20:@11.6]
  wire [1087:0] _GEN_130; // @[nv_ram_rws.scala 48:13:@16.4]
  wire [1087:0] _GEN_131; // @[nv_ram_rws.scala 48:13:@16.4]
  wire [1087:0] _GEN_132; // @[nv_ram_rws.scala 48:13:@16.4]
  wire [1087:0] _GEN_133; // @[nv_ram_rws.scala 48:13:@16.4]
  wire [1087:0] _GEN_134; // @[nv_ram_rws.scala 48:13:@16.4]
  wire [1087:0] _GEN_135; // @[nv_ram_rws.scala 48:13:@16.4]
  wire [1087:0] _GEN_136; // @[nv_ram_rws.scala 48:13:@16.4]
  wire [1087:0] _GEN_137; // @[nv_ram_rws.scala 48:13:@16.4]
  wire [1087:0] _GEN_138; // @[nv_ram_rws.scala 48:13:@16.4]
  wire [1087:0] _GEN_139; // @[nv_ram_rws.scala 48:13:@16.4]
  wire [1087:0] _GEN_140; // @[nv_ram_rws.scala 48:13:@16.4]
  wire [1087:0] _GEN_141; // @[nv_ram_rws.scala 48:13:@16.4]
  wire [1087:0] _GEN_142; // @[nv_ram_rws.scala 48:13:@16.4]
  wire [1087:0] _GEN_143; // @[nv_ram_rws.scala 48:13:@16.4]
  wire [1087:0] _GEN_144; // @[nv_ram_rws.scala 48:13:@16.4]
  wire [1087:0] _GEN_145; // @[nv_ram_rws.scala 48:13:@16.4]
  wire [1087:0] _GEN_146; // @[nv_ram_rws.scala 48:13:@16.4]
  wire [1087:0] _GEN_147; // @[nv_ram_rws.scala 48:13:@16.4]
  wire [1087:0] _GEN_148; // @[nv_ram_rws.scala 48:13:@16.4]
  wire [1087:0] _GEN_149; // @[nv_ram_rws.scala 48:13:@16.4]
  wire [1087:0] _GEN_150; // @[nv_ram_rws.scala 48:13:@16.4]
  wire [1087:0] _GEN_151; // @[nv_ram_rws.scala 48:13:@16.4]
  wire [1087:0] _GEN_152; // @[nv_ram_rws.scala 48:13:@16.4]
  wire [1087:0] _GEN_153; // @[nv_ram_rws.scala 48:13:@16.4]
  wire [1087:0] _GEN_154; // @[nv_ram_rws.scala 48:13:@16.4]
  wire [1087:0] _GEN_155; // @[nv_ram_rws.scala 48:13:@16.4]
  wire [1087:0] _GEN_156; // @[nv_ram_rws.scala 48:13:@16.4]
  wire [1087:0] _GEN_157; // @[nv_ram_rws.scala 48:13:@16.4]
  wire [1087:0] _GEN_158; // @[nv_ram_rws.scala 48:13:@16.4]
  wire [1087:0] _GEN_159; // @[nv_ram_rws.scala 48:13:@16.4]
  wire [1087:0] _GEN_160; // @[nv_ram_rws.scala 48:13:@16.4]
  wire [1087:0] _GEN_161; // @[nv_ram_rws.scala 48:13:@16.4]
  wire [1087:0] _GEN_162; // @[nv_ram_rws.scala 48:13:@16.4]
  wire [1087:0] _GEN_163; // @[nv_ram_rws.scala 48:13:@16.4]
  wire [1087:0] _GEN_164; // @[nv_ram_rws.scala 48:13:@16.4]
  wire [1087:0] _GEN_165; // @[nv_ram_rws.scala 48:13:@16.4]
  wire [1087:0] _GEN_166; // @[nv_ram_rws.scala 48:13:@16.4]
  wire [1087:0] _GEN_167; // @[nv_ram_rws.scala 48:13:@16.4]
  wire [1087:0] _GEN_168; // @[nv_ram_rws.scala 48:13:@16.4]
  wire [1087:0] _GEN_169; // @[nv_ram_rws.scala 48:13:@16.4]
  wire [1087:0] _GEN_170; // @[nv_ram_rws.scala 48:13:@16.4]
  wire [1087:0] _GEN_171; // @[nv_ram_rws.scala 48:13:@16.4]
  wire [1087:0] _GEN_172; // @[nv_ram_rws.scala 48:13:@16.4]
  wire [1087:0] _GEN_173; // @[nv_ram_rws.scala 48:13:@16.4]
  wire [1087:0] _GEN_174; // @[nv_ram_rws.scala 48:13:@16.4]
  wire [1087:0] _GEN_175; // @[nv_ram_rws.scala 48:13:@16.4]
  wire [1087:0] _GEN_176; // @[nv_ram_rws.scala 48:13:@16.4]
  wire [1087:0] _GEN_177; // @[nv_ram_rws.scala 48:13:@16.4]
  wire [1087:0] _GEN_178; // @[nv_ram_rws.scala 48:13:@16.4]
  wire [1087:0] _GEN_179; // @[nv_ram_rws.scala 48:13:@16.4]
  wire [1087:0] _GEN_180; // @[nv_ram_rws.scala 48:13:@16.4]
  wire [1087:0] _GEN_181; // @[nv_ram_rws.scala 48:13:@16.4]
  wire [1087:0] _GEN_182; // @[nv_ram_rws.scala 48:13:@16.4]
  wire [1087:0] _GEN_183; // @[nv_ram_rws.scala 48:13:@16.4]
  wire [1087:0] _GEN_184; // @[nv_ram_rws.scala 48:13:@16.4]
  wire [1087:0] _GEN_185; // @[nv_ram_rws.scala 48:13:@16.4]
  wire [1087:0] _GEN_186; // @[nv_ram_rws.scala 48:13:@16.4]
  wire [1087:0] _GEN_187; // @[nv_ram_rws.scala 48:13:@16.4]
  wire [1087:0] _GEN_188; // @[nv_ram_rws.scala 48:13:@16.4]
  wire [1087:0] _GEN_189; // @[nv_ram_rws.scala 48:13:@16.4]
  wire [1087:0] _GEN_190; // @[nv_ram_rws.scala 48:13:@16.4]
  wire [1087:0] _GEN_191; // @[nv_ram_rws.scala 48:13:@16.4]
  assign _GEN_0 = 6'h0 == wa ? di : mem_0; // @[nv_ram_rws.scala 43:20:@11.6]
  assign _GEN_1 = 6'h1 == wa ? di : mem_1; // @[nv_ram_rws.scala 43:20:@11.6]
  assign _GEN_2 = 6'h2 == wa ? di : mem_2; // @[nv_ram_rws.scala 43:20:@11.6]
  assign _GEN_3 = 6'h3 == wa ? di : mem_3; // @[nv_ram_rws.scala 43:20:@11.6]
  assign _GEN_4 = 6'h4 == wa ? di : mem_4; // @[nv_ram_rws.scala 43:20:@11.6]
  assign _GEN_5 = 6'h5 == wa ? di : mem_5; // @[nv_ram_rws.scala 43:20:@11.6]
  assign _GEN_6 = 6'h6 == wa ? di : mem_6; // @[nv_ram_rws.scala 43:20:@11.6]
  assign _GEN_7 = 6'h7 == wa ? di : mem_7; // @[nv_ram_rws.scala 43:20:@11.6]
  assign _GEN_8 = 6'h8 == wa ? di : mem_8; // @[nv_ram_rws.scala 43:20:@11.6]
  assign _GEN_9 = 6'h9 == wa ? di : mem_9; // @[nv_ram_rws.scala 43:20:@11.6]
  assign _GEN_10 = 6'ha == wa ? di : mem_10; // @[nv_ram_rws.scala 43:20:@11.6]
  assign _GEN_11 = 6'hb == wa ? di : mem_11; // @[nv_ram_rws.scala 43:20:@11.6]
  assign _GEN_12 = 6'hc == wa ? di : mem_12; // @[nv_ram_rws.scala 43:20:@11.6]
  assign _GEN_13 = 6'hd == wa ? di : mem_13; // @[nv_ram_rws.scala 43:20:@11.6]
  assign _GEN_14 = 6'he == wa ? di : mem_14; // @[nv_ram_rws.scala 43:20:@11.6]
  assign _GEN_15 = 6'hf == wa ? di : mem_15; // @[nv_ram_rws.scala 43:20:@11.6]
  assign _GEN_16 = 6'h10 == wa ? di : mem_16; // @[nv_ram_rws.scala 43:20:@11.6]
  assign _GEN_17 = 6'h11 == wa ? di : mem_17; // @[nv_ram_rws.scala 43:20:@11.6]
  assign _GEN_18 = 6'h12 == wa ? di : mem_18; // @[nv_ram_rws.scala 43:20:@11.6]
  assign _GEN_19 = 6'h13 == wa ? di : mem_19; // @[nv_ram_rws.scala 43:20:@11.6]
  assign _GEN_20 = 6'h14 == wa ? di : mem_20; // @[nv_ram_rws.scala 43:20:@11.6]
  assign _GEN_21 = 6'h15 == wa ? di : mem_21; // @[nv_ram_rws.scala 43:20:@11.6]
  assign _GEN_22 = 6'h16 == wa ? di : mem_22; // @[nv_ram_rws.scala 43:20:@11.6]
  assign _GEN_23 = 6'h17 == wa ? di : mem_23; // @[nv_ram_rws.scala 43:20:@11.6]
  assign _GEN_24 = 6'h18 == wa ? di : mem_24; // @[nv_ram_rws.scala 43:20:@11.6]
  assign _GEN_25 = 6'h19 == wa ? di : mem_25; // @[nv_ram_rws.scala 43:20:@11.6]
  assign _GEN_26 = 6'h1a == wa ? di : mem_26; // @[nv_ram_rws.scala 43:20:@11.6]
  assign _GEN_27 = 6'h1b == wa ? di : mem_27; // @[nv_ram_rws.scala 43:20:@11.6]
  assign _GEN_28 = 6'h1c == wa ? di : mem_28; // @[nv_ram_rws.scala 43:20:@11.6]
  assign _GEN_29 = 6'h1d == wa ? di : mem_29; // @[nv_ram_rws.scala 43:20:@11.6]
  assign _GEN_30 = 6'h1e == wa ? di : mem_30; // @[nv_ram_rws.scala 43:20:@11.6]
  assign _GEN_31 = 6'h1f == wa ? di : mem_31; // @[nv_ram_rws.scala 43:20:@11.6]
  assign _GEN_32 = 6'h20 == wa ? di : mem_32; // @[nv_ram_rws.scala 43:20:@11.6]
  assign _GEN_33 = 6'h21 == wa ? di : mem_33; // @[nv_ram_rws.scala 43:20:@11.6]
  assign _GEN_34 = 6'h22 == wa ? di : mem_34; // @[nv_ram_rws.scala 43:20:@11.6]
  assign _GEN_35 = 6'h23 == wa ? di : mem_35; // @[nv_ram_rws.scala 43:20:@11.6]
  assign _GEN_36 = 6'h24 == wa ? di : mem_36; // @[nv_ram_rws.scala 43:20:@11.6]
  assign _GEN_37 = 6'h25 == wa ? di : mem_37; // @[nv_ram_rws.scala 43:20:@11.6]
  assign _GEN_38 = 6'h26 == wa ? di : mem_38; // @[nv_ram_rws.scala 43:20:@11.6]
  assign _GEN_39 = 6'h27 == wa ? di : mem_39; // @[nv_ram_rws.scala 43:20:@11.6]
  assign _GEN_40 = 6'h28 == wa ? di : mem_40; // @[nv_ram_rws.scala 43:20:@11.6]
  assign _GEN_41 = 6'h29 == wa ? di : mem_41; // @[nv_ram_rws.scala 43:20:@11.6]
  assign _GEN_42 = 6'h2a == wa ? di : mem_42; // @[nv_ram_rws.scala 43:20:@11.6]
  assign _GEN_43 = 6'h2b == wa ? di : mem_43; // @[nv_ram_rws.scala 43:20:@11.6]
  assign _GEN_44 = 6'h2c == wa ? di : mem_44; // @[nv_ram_rws.scala 43:20:@11.6]
  assign _GEN_45 = 6'h2d == wa ? di : mem_45; // @[nv_ram_rws.scala 43:20:@11.6]
  assign _GEN_46 = 6'h2e == wa ? di : mem_46; // @[nv_ram_rws.scala 43:20:@11.6]
  assign _GEN_47 = 6'h2f == wa ? di : mem_47; // @[nv_ram_rws.scala 43:20:@11.6]
  assign _GEN_48 = 6'h30 == wa ? di : mem_48; // @[nv_ram_rws.scala 43:20:@11.6]
  assign _GEN_49 = 6'h31 == wa ? di : mem_49; // @[nv_ram_rws.scala 43:20:@11.6]
  assign _GEN_50 = 6'h32 == wa ? di : mem_50; // @[nv_ram_rws.scala 43:20:@11.6]
  assign _GEN_51 = 6'h33 == wa ? di : mem_51; // @[nv_ram_rws.scala 43:20:@11.6]
  assign _GEN_52 = 6'h34 == wa ? di : mem_52; // @[nv_ram_rws.scala 43:20:@11.6]
  assign _GEN_53 = 6'h35 == wa ? di : mem_53; // @[nv_ram_rws.scala 43:20:@11.6]
  assign _GEN_54 = 6'h36 == wa ? di : mem_54; // @[nv_ram_rws.scala 43:20:@11.6]
  assign _GEN_55 = 6'h37 == wa ? di : mem_55; // @[nv_ram_rws.scala 43:20:@11.6]
  assign _GEN_56 = 6'h38 == wa ? di : mem_56; // @[nv_ram_rws.scala 43:20:@11.6]
  assign _GEN_57 = 6'h39 == wa ? di : mem_57; // @[nv_ram_rws.scala 43:20:@11.6]
  assign _GEN_58 = 6'h3a == wa ? di : mem_58; // @[nv_ram_rws.scala 43:20:@11.6]
  assign _GEN_59 = 6'h3b == wa ? di : mem_59; // @[nv_ram_rws.scala 43:20:@11.6]
  assign _GEN_60 = 6'h3c == wa ? di : mem_60; // @[nv_ram_rws.scala 43:20:@11.6]
  assign _GEN_61 = 6'h3d == wa ? di : mem_61; // @[nv_ram_rws.scala 43:20:@11.6]
  assign _GEN_62 = 6'h3e == wa ? di : mem_62; // @[nv_ram_rws.scala 43:20:@11.6]
  assign _GEN_63 = 6'h3f == wa ? di : mem_63; // @[nv_ram_rws.scala 43:20:@11.6]
  assign _GEN_130 = 6'h1 == ra_d ? mem_1 : mem_0; // @[nv_ram_rws.scala 48:13:@16.4]
  assign _GEN_131 = 6'h2 == ra_d ? mem_2 : _GEN_130; // @[nv_ram_rws.scala 48:13:@16.4]
  assign _GEN_132 = 6'h3 == ra_d ? mem_3 : _GEN_131; // @[nv_ram_rws.scala 48:13:@16.4]
  assign _GEN_133 = 6'h4 == ra_d ? mem_4 : _GEN_132; // @[nv_ram_rws.scala 48:13:@16.4]
  assign _GEN_134 = 6'h5 == ra_d ? mem_5 : _GEN_133; // @[nv_ram_rws.scala 48:13:@16.4]
  assign _GEN_135 = 6'h6 == ra_d ? mem_6 : _GEN_134; // @[nv_ram_rws.scala 48:13:@16.4]
  assign _GEN_136 = 6'h7 == ra_d ? mem_7 : _GEN_135; // @[nv_ram_rws.scala 48:13:@16.4]
  assign _GEN_137 = 6'h8 == ra_d ? mem_8 : _GEN_136; // @[nv_ram_rws.scala 48:13:@16.4]
  assign _GEN_138 = 6'h9 == ra_d ? mem_9 : _GEN_137; // @[nv_ram_rws.scala 48:13:@16.4]
  assign _GEN_139 = 6'ha == ra_d ? mem_10 : _GEN_138; // @[nv_ram_rws.scala 48:13:@16.4]
  assign _GEN_140 = 6'hb == ra_d ? mem_11 : _GEN_139; // @[nv_ram_rws.scala 48:13:@16.4]
  assign _GEN_141 = 6'hc == ra_d ? mem_12 : _GEN_140; // @[nv_ram_rws.scala 48:13:@16.4]
  assign _GEN_142 = 6'hd == ra_d ? mem_13 : _GEN_141; // @[nv_ram_rws.scala 48:13:@16.4]
  assign _GEN_143 = 6'he == ra_d ? mem_14 : _GEN_142; // @[nv_ram_rws.scala 48:13:@16.4]
  assign _GEN_144 = 6'hf == ra_d ? mem_15 : _GEN_143; // @[nv_ram_rws.scala 48:13:@16.4]
  assign _GEN_145 = 6'h10 == ra_d ? mem_16 : _GEN_144; // @[nv_ram_rws.scala 48:13:@16.4]
  assign _GEN_146 = 6'h11 == ra_d ? mem_17 : _GEN_145; // @[nv_ram_rws.scala 48:13:@16.4]
  assign _GEN_147 = 6'h12 == ra_d ? mem_18 : _GEN_146; // @[nv_ram_rws.scala 48:13:@16.4]
  assign _GEN_148 = 6'h13 == ra_d ? mem_19 : _GEN_147; // @[nv_ram_rws.scala 48:13:@16.4]
  assign _GEN_149 = 6'h14 == ra_d ? mem_20 : _GEN_148; // @[nv_ram_rws.scala 48:13:@16.4]
  assign _GEN_150 = 6'h15 == ra_d ? mem_21 : _GEN_149; // @[nv_ram_rws.scala 48:13:@16.4]
  assign _GEN_151 = 6'h16 == ra_d ? mem_22 : _GEN_150; // @[nv_ram_rws.scala 48:13:@16.4]
  assign _GEN_152 = 6'h17 == ra_d ? mem_23 : _GEN_151; // @[nv_ram_rws.scala 48:13:@16.4]
  assign _GEN_153 = 6'h18 == ra_d ? mem_24 : _GEN_152; // @[nv_ram_rws.scala 48:13:@16.4]
  assign _GEN_154 = 6'h19 == ra_d ? mem_25 : _GEN_153; // @[nv_ram_rws.scala 48:13:@16.4]
  assign _GEN_155 = 6'h1a == ra_d ? mem_26 : _GEN_154; // @[nv_ram_rws.scala 48:13:@16.4]
  assign _GEN_156 = 6'h1b == ra_d ? mem_27 : _GEN_155; // @[nv_ram_rws.scala 48:13:@16.4]
  assign _GEN_157 = 6'h1c == ra_d ? mem_28 : _GEN_156; // @[nv_ram_rws.scala 48:13:@16.4]
  assign _GEN_158 = 6'h1d == ra_d ? mem_29 : _GEN_157; // @[nv_ram_rws.scala 48:13:@16.4]
  assign _GEN_159 = 6'h1e == ra_d ? mem_30 : _GEN_158; // @[nv_ram_rws.scala 48:13:@16.4]
  assign _GEN_160 = 6'h1f == ra_d ? mem_31 : _GEN_159; // @[nv_ram_rws.scala 48:13:@16.4]
  assign _GEN_161 = 6'h20 == ra_d ? mem_32 : _GEN_160; // @[nv_ram_rws.scala 48:13:@16.4]
  assign _GEN_162 = 6'h21 == ra_d ? mem_33 : _GEN_161; // @[nv_ram_rws.scala 48:13:@16.4]
  assign _GEN_163 = 6'h22 == ra_d ? mem_34 : _GEN_162; // @[nv_ram_rws.scala 48:13:@16.4]
  assign _GEN_164 = 6'h23 == ra_d ? mem_35 : _GEN_163; // @[nv_ram_rws.scala 48:13:@16.4]
  assign _GEN_165 = 6'h24 == ra_d ? mem_36 : _GEN_164; // @[nv_ram_rws.scala 48:13:@16.4]
  assign _GEN_166 = 6'h25 == ra_d ? mem_37 : _GEN_165; // @[nv_ram_rws.scala 48:13:@16.4]
  assign _GEN_167 = 6'h26 == ra_d ? mem_38 : _GEN_166; // @[nv_ram_rws.scala 48:13:@16.4]
  assign _GEN_168 = 6'h27 == ra_d ? mem_39 : _GEN_167; // @[nv_ram_rws.scala 48:13:@16.4]
  assign _GEN_169 = 6'h28 == ra_d ? mem_40 : _GEN_168; // @[nv_ram_rws.scala 48:13:@16.4]
  assign _GEN_170 = 6'h29 == ra_d ? mem_41 : _GEN_169; // @[nv_ram_rws.scala 48:13:@16.4]
  assign _GEN_171 = 6'h2a == ra_d ? mem_42 : _GEN_170; // @[nv_ram_rws.scala 48:13:@16.4]
  assign _GEN_172 = 6'h2b == ra_d ? mem_43 : _GEN_171; // @[nv_ram_rws.scala 48:13:@16.4]
  assign _GEN_173 = 6'h2c == ra_d ? mem_44 : _GEN_172; // @[nv_ram_rws.scala 48:13:@16.4]
  assign _GEN_174 = 6'h2d == ra_d ? mem_45 : _GEN_173; // @[nv_ram_rws.scala 48:13:@16.4]
  assign _GEN_175 = 6'h2e == ra_d ? mem_46 : _GEN_174; // @[nv_ram_rws.scala 48:13:@16.4]
  assign _GEN_176 = 6'h2f == ra_d ? mem_47 : _GEN_175; // @[nv_ram_rws.scala 48:13:@16.4]
  assign _GEN_177 = 6'h30 == ra_d ? mem_48 : _GEN_176; // @[nv_ram_rws.scala 48:13:@16.4]
  assign _GEN_178 = 6'h31 == ra_d ? mem_49 : _GEN_177; // @[nv_ram_rws.scala 48:13:@16.4]
  assign _GEN_179 = 6'h32 == ra_d ? mem_50 : _GEN_178; // @[nv_ram_rws.scala 48:13:@16.4]
  assign _GEN_180 = 6'h33 == ra_d ? mem_51 : _GEN_179; // @[nv_ram_rws.scala 48:13:@16.4]
  assign _GEN_181 = 6'h34 == ra_d ? mem_52 : _GEN_180; // @[nv_ram_rws.scala 48:13:@16.4]
  assign _GEN_182 = 6'h35 == ra_d ? mem_53 : _GEN_181; // @[nv_ram_rws.scala 48:13:@16.4]
  assign _GEN_183 = 6'h36 == ra_d ? mem_54 : _GEN_182; // @[nv_ram_rws.scala 48:13:@16.4]
  assign _GEN_184 = 6'h37 == ra_d ? mem_55 : _GEN_183; // @[nv_ram_rws.scala 48:13:@16.4]
  assign _GEN_185 = 6'h38 == ra_d ? mem_56 : _GEN_184; // @[nv_ram_rws.scala 48:13:@16.4]
  assign _GEN_186 = 6'h39 == ra_d ? mem_57 : _GEN_185; // @[nv_ram_rws.scala 48:13:@16.4]
  assign _GEN_187 = 6'h3a == ra_d ? mem_58 : _GEN_186; // @[nv_ram_rws.scala 48:13:@16.4]
  assign _GEN_188 = 6'h3b == ra_d ? mem_59 : _GEN_187; // @[nv_ram_rws.scala 48:13:@16.4]
  assign _GEN_189 = 6'h3c == ra_d ? mem_60 : _GEN_188; // @[nv_ram_rws.scala 48:13:@16.4]
  assign _GEN_190 = 6'h3d == ra_d ? mem_61 : _GEN_189; // @[nv_ram_rws.scala 48:13:@16.4]
  assign _GEN_191 = 6'h3e == ra_d ? mem_62 : _GEN_190; // @[nv_ram_rws.scala 48:13:@16.4]
  assign dout = 6'h3f == ra_d ? mem_63 : _GEN_191; // @[nv_ram_rws.scala 48:13:@16.4]
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
  _RAND_0 = {34{`RANDOM}};
  mem_0 = _RAND_0[1087:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_1 = {34{`RANDOM}};
  mem_1 = _RAND_1[1087:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_2 = {34{`RANDOM}};
  mem_2 = _RAND_2[1087:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_3 = {34{`RANDOM}};
  mem_3 = _RAND_3[1087:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_4 = {34{`RANDOM}};
  mem_4 = _RAND_4[1087:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_5 = {34{`RANDOM}};
  mem_5 = _RAND_5[1087:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_6 = {34{`RANDOM}};
  mem_6 = _RAND_6[1087:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_7 = {34{`RANDOM}};
  mem_7 = _RAND_7[1087:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_8 = {34{`RANDOM}};
  mem_8 = _RAND_8[1087:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_9 = {34{`RANDOM}};
  mem_9 = _RAND_9[1087:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_10 = {34{`RANDOM}};
  mem_10 = _RAND_10[1087:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_11 = {34{`RANDOM}};
  mem_11 = _RAND_11[1087:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_12 = {34{`RANDOM}};
  mem_12 = _RAND_12[1087:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_13 = {34{`RANDOM}};
  mem_13 = _RAND_13[1087:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_14 = {34{`RANDOM}};
  mem_14 = _RAND_14[1087:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_15 = {34{`RANDOM}};
  mem_15 = _RAND_15[1087:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_16 = {34{`RANDOM}};
  mem_16 = _RAND_16[1087:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_17 = {34{`RANDOM}};
  mem_17 = _RAND_17[1087:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_18 = {34{`RANDOM}};
  mem_18 = _RAND_18[1087:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_19 = {34{`RANDOM}};
  mem_19 = _RAND_19[1087:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_20 = {34{`RANDOM}};
  mem_20 = _RAND_20[1087:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_21 = {34{`RANDOM}};
  mem_21 = _RAND_21[1087:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_22 = {34{`RANDOM}};
  mem_22 = _RAND_22[1087:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_23 = {34{`RANDOM}};
  mem_23 = _RAND_23[1087:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_24 = {34{`RANDOM}};
  mem_24 = _RAND_24[1087:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_25 = {34{`RANDOM}};
  mem_25 = _RAND_25[1087:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_26 = {34{`RANDOM}};
  mem_26 = _RAND_26[1087:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_27 = {34{`RANDOM}};
  mem_27 = _RAND_27[1087:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_28 = {34{`RANDOM}};
  mem_28 = _RAND_28[1087:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_29 = {34{`RANDOM}};
  mem_29 = _RAND_29[1087:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_30 = {34{`RANDOM}};
  mem_30 = _RAND_30[1087:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_31 = {34{`RANDOM}};
  mem_31 = _RAND_31[1087:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_32 = {34{`RANDOM}};
  mem_32 = _RAND_32[1087:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_33 = {34{`RANDOM}};
  mem_33 = _RAND_33[1087:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_34 = {34{`RANDOM}};
  mem_34 = _RAND_34[1087:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_35 = {34{`RANDOM}};
  mem_35 = _RAND_35[1087:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_36 = {34{`RANDOM}};
  mem_36 = _RAND_36[1087:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_37 = {34{`RANDOM}};
  mem_37 = _RAND_37[1087:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_38 = {34{`RANDOM}};
  mem_38 = _RAND_38[1087:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_39 = {34{`RANDOM}};
  mem_39 = _RAND_39[1087:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_40 = {34{`RANDOM}};
  mem_40 = _RAND_40[1087:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_41 = {34{`RANDOM}};
  mem_41 = _RAND_41[1087:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_42 = {34{`RANDOM}};
  mem_42 = _RAND_42[1087:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_43 = {34{`RANDOM}};
  mem_43 = _RAND_43[1087:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_44 = {34{`RANDOM}};
  mem_44 = _RAND_44[1087:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_45 = {34{`RANDOM}};
  mem_45 = _RAND_45[1087:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_46 = {34{`RANDOM}};
  mem_46 = _RAND_46[1087:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_47 = {34{`RANDOM}};
  mem_47 = _RAND_47[1087:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_48 = {34{`RANDOM}};
  mem_48 = _RAND_48[1087:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_49 = {34{`RANDOM}};
  mem_49 = _RAND_49[1087:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_50 = {34{`RANDOM}};
  mem_50 = _RAND_50[1087:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_51 = {34{`RANDOM}};
  mem_51 = _RAND_51[1087:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_52 = {34{`RANDOM}};
  mem_52 = _RAND_52[1087:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_53 = {34{`RANDOM}};
  mem_53 = _RAND_53[1087:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_54 = {34{`RANDOM}};
  mem_54 = _RAND_54[1087:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_55 = {34{`RANDOM}};
  mem_55 = _RAND_55[1087:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_56 = {34{`RANDOM}};
  mem_56 = _RAND_56[1087:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_57 = {34{`RANDOM}};
  mem_57 = _RAND_57[1087:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_58 = {34{`RANDOM}};
  mem_58 = _RAND_58[1087:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_59 = {34{`RANDOM}};
  mem_59 = _RAND_59[1087:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_60 = {34{`RANDOM}};
  mem_60 = _RAND_60[1087:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_61 = {34{`RANDOM}};
  mem_61 = _RAND_61[1087:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_62 = {34{`RANDOM}};
  mem_62 = _RAND_62[1087:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_63 = {34{`RANDOM}};
  mem_63 = _RAND_63[1087:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_64 = {1{`RANDOM}};
  ra_d = _RAND_64[5:0];
  `endif // RANDOMIZE_REG_INIT
  end
`endif // RANDOMIZE
  always @(posedge clk) begin
    if (we) begin
      if (6'h0 == wa) begin
        mem_0 <= di;
      end
    end
    if (we) begin
      if (6'h1 == wa) begin
        mem_1 <= di;
      end
    end
    if (we) begin
      if (6'h2 == wa) begin
        mem_2 <= di;
      end
    end
    if (we) begin
      if (6'h3 == wa) begin
        mem_3 <= di;
      end
    end
    if (we) begin
      if (6'h4 == wa) begin
        mem_4 <= di;
      end
    end
    if (we) begin
      if (6'h5 == wa) begin
        mem_5 <= di;
      end
    end
    if (we) begin
      if (6'h6 == wa) begin
        mem_6 <= di;
      end
    end
    if (we) begin
      if (6'h7 == wa) begin
        mem_7 <= di;
      end
    end
    if (we) begin
      if (6'h8 == wa) begin
        mem_8 <= di;
      end
    end
    if (we) begin
      if (6'h9 == wa) begin
        mem_9 <= di;
      end
    end
    if (we) begin
      if (6'ha == wa) begin
        mem_10 <= di;
      end
    end
    if (we) begin
      if (6'hb == wa) begin
        mem_11 <= di;
      end
    end
    if (we) begin
      if (6'hc == wa) begin
        mem_12 <= di;
      end
    end
    if (we) begin
      if (6'hd == wa) begin
        mem_13 <= di;
      end
    end
    if (we) begin
      if (6'he == wa) begin
        mem_14 <= di;
      end
    end
    if (we) begin
      if (6'hf == wa) begin
        mem_15 <= di;
      end
    end
    if (we) begin
      if (6'h10 == wa) begin
        mem_16 <= di;
      end
    end
    if (we) begin
      if (6'h11 == wa) begin
        mem_17 <= di;
      end
    end
    if (we) begin
      if (6'h12 == wa) begin
        mem_18 <= di;
      end
    end
    if (we) begin
      if (6'h13 == wa) begin
        mem_19 <= di;
      end
    end
    if (we) begin
      if (6'h14 == wa) begin
        mem_20 <= di;
      end
    end
    if (we) begin
      if (6'h15 == wa) begin
        mem_21 <= di;
      end
    end
    if (we) begin
      if (6'h16 == wa) begin
        mem_22 <= di;
      end
    end
    if (we) begin
      if (6'h17 == wa) begin
        mem_23 <= di;
      end
    end
    if (we) begin
      if (6'h18 == wa) begin
        mem_24 <= di;
      end
    end
    if (we) begin
      if (6'h19 == wa) begin
        mem_25 <= di;
      end
    end
    if (we) begin
      if (6'h1a == wa) begin
        mem_26 <= di;
      end
    end
    if (we) begin
      if (6'h1b == wa) begin
        mem_27 <= di;
      end
    end
    if (we) begin
      if (6'h1c == wa) begin
        mem_28 <= di;
      end
    end
    if (we) begin
      if (6'h1d == wa) begin
        mem_29 <= di;
      end
    end
    if (we) begin
      if (6'h1e == wa) begin
        mem_30 <= di;
      end
    end
    if (we) begin
      if (6'h1f == wa) begin
        mem_31 <= di;
      end
    end
    if (we) begin
      if (6'h20 == wa) begin
        mem_32 <= di;
      end
    end
    if (we) begin
      if (6'h21 == wa) begin
        mem_33 <= di;
      end
    end
    if (we) begin
      if (6'h22 == wa) begin
        mem_34 <= di;
      end
    end
    if (we) begin
      if (6'h23 == wa) begin
        mem_35 <= di;
      end
    end
    if (we) begin
      if (6'h24 == wa) begin
        mem_36 <= di;
      end
    end
    if (we) begin
      if (6'h25 == wa) begin
        mem_37 <= di;
      end
    end
    if (we) begin
      if (6'h26 == wa) begin
        mem_38 <= di;
      end
    end
    if (we) begin
      if (6'h27 == wa) begin
        mem_39 <= di;
      end
    end
    if (we) begin
      if (6'h28 == wa) begin
        mem_40 <= di;
      end
    end
    if (we) begin
      if (6'h29 == wa) begin
        mem_41 <= di;
      end
    end
    if (we) begin
      if (6'h2a == wa) begin
        mem_42 <= di;
      end
    end
    if (we) begin
      if (6'h2b == wa) begin
        mem_43 <= di;
      end
    end
    if (we) begin
      if (6'h2c == wa) begin
        mem_44 <= di;
      end
    end
    if (we) begin
      if (6'h2d == wa) begin
        mem_45 <= di;
      end
    end
    if (we) begin
      if (6'h2e == wa) begin
        mem_46 <= di;
      end
    end
    if (we) begin
      if (6'h2f == wa) begin
        mem_47 <= di;
      end
    end
    if (we) begin
      if (6'h30 == wa) begin
        mem_48 <= di;
      end
    end
    if (we) begin
      if (6'h31 == wa) begin
        mem_49 <= di;
      end
    end
    if (we) begin
      if (6'h32 == wa) begin
        mem_50 <= di;
      end
    end
    if (we) begin
      if (6'h33 == wa) begin
        mem_51 <= di;
      end
    end
    if (we) begin
      if (6'h34 == wa) begin
        mem_52 <= di;
      end
    end
    if (we) begin
      if (6'h35 == wa) begin
        mem_53 <= di;
      end
    end
    if (we) begin
      if (6'h36 == wa) begin
        mem_54 <= di;
      end
    end
    if (we) begin
      if (6'h37 == wa) begin
        mem_55 <= di;
      end
    end
    if (we) begin
      if (6'h38 == wa) begin
        mem_56 <= di;
      end
    end
    if (we) begin
      if (6'h39 == wa) begin
        mem_57 <= di;
      end
    end
    if (we) begin
      if (6'h3a == wa) begin
        mem_58 <= di;
      end
    end
    if (we) begin
      if (6'h3b == wa) begin
        mem_59 <= di;
      end
    end
    if (we) begin
      if (6'h3c == wa) begin
        mem_60 <= di;
      end
    end
    if (we) begin
      if (6'h3d == wa) begin
        mem_61 <= di;
      end
    end
    if (we) begin
      if (6'h3e == wa) begin
        mem_62 <= di;
      end
    end
    if (we) begin
      if (6'h3f == wa) begin
        mem_63 <= di;
      end
    end
    if (re) begin
      ra_d <= ra;
    end
  end
endmodule
module NV_soDLA_CACC_assembly_buffer( // @[:@18.2]
  input           reset, // @[:@20.4]
  input           nvdla_core_clk, // @[:@21.4]
  input           abuf_wr_en, // @[:@21.4]
  input  [5:0]    abuf_wr_addr, // @[:@21.4]
  input  [1087:0] abuf_wr_data, // @[:@21.4]
  input           abuf_rd_en, // @[:@21.4]
  input  [5:0]    abuf_rd_addr , // @[:@21.4]
  output [1087:0] abuf_rd_data, // @[:@21.4]
  input  [31:0]   pwrbus_ram_pd // @[:@21.4]
);
  wire  u_accu_abuf_0_clk; // @[NV_NVDLA_CACC_assembly_buffer.scala 44:31:@23.4]
  wire  u_accu_abuf_0_re; // @[NV_NVDLA_CACC_assembly_buffer.scala 44:31:@23.4]
  wire  u_accu_abuf_0_we; // @[NV_NVDLA_CACC_assembly_buffer.scala 44:31:@23.4]
  wire [5:0] u_accu_abuf_0_ra; // @[NV_NVDLA_CACC_assembly_buffer.scala 44:31:@23.4]
  wire [5:0] u_accu_abuf_0_wa; // @[NV_NVDLA_CACC_assembly_buffer.scala 44:31:@23.4]
  wire [1087:0] u_accu_abuf_0_di; // @[NV_NVDLA_CACC_assembly_buffer.scala 44:31:@23.4]
  wire [1087:0] u_accu_abuf_0_dout; // @[NV_NVDLA_CACC_assembly_buffer.scala 44:31:@23.4]
  reg  abuf_rd_en_d1; // @[NV_NVDLA_CACC_assembly_buffer.scala 54:32:@32.4]
  reg [31:0] _RAND_0;
  reg [1087:0] _T_40; // @[Reg.scala 11:16:@34.4]
  reg [1087:0] _RAND_1;
  nv_ram_rws u_accu_abuf_0 ( // @[NV_NVDLA_CACC_assembly_buffer.scala 44:31:@23.4]
    .clk(u_accu_abuf_0_clk),
    .re(u_accu_abuf_0_re),
    .we(u_accu_abuf_0_we),
    .ra(u_accu_abuf_0_ra),
    .wa(u_accu_abuf_0_wa),
    .di(u_accu_abuf_0_di),
    .dout(u_accu_abuf_0_dout)
  );
  assign abuf_rd_data = _T_40; // @[NV_NVDLA_CACC_assembly_buffer.scala 56:21:@38.4]
  assign u_accu_abuf_0_clk = nvdla_core_clk; // @[NV_NVDLA_CACC_assembly_buffer.scala 46:26:@26.4]
  assign u_accu_abuf_0_re = abuf_rd_en; // @[NV_NVDLA_CACC_assembly_buffer.scala 48:25:@28.4]
  assign u_accu_abuf_0_we = abuf_wr_en; // @[NV_NVDLA_CACC_assembly_buffer.scala 49:25:@29.4]
  assign u_accu_abuf_0_ra = abuf_rd_addr ; // @[NV_NVDLA_CACC_assembly_buffer.scala 47:25:@27.4]
  assign u_accu_abuf_0_wa = abuf_wr_addr; // @[NV_NVDLA_CACC_assembly_buffer.scala 50:25:@30.4]
  assign u_accu_abuf_0_di = abuf_wr_data; // @[NV_NVDLA_CACC_assembly_buffer.scala 51:25:@31.4]
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
  _RAND_1 = {34{`RANDOM}};
  _T_40 = _RAND_1[1087:0];
  `endif // RANDOMIZE_REG_INIT
  end
`endif // RANDOMIZE
  always @(posedge nvdla_core_clk) begin
    if (!reset) begin
      abuf_rd_en_d1 <= 1'h0;
    end else begin
      abuf_rd_en_d1 <= abuf_rd_en;
    end
    if (abuf_rd_en_d1) begin
      _T_40 <= u_accu_abuf_0_dout;
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
// File Name: NV_NVDLA_CACC_assembly_buffer.v
// ================================================================
// NVDLA Open Source Project
// 
// Copyright(c) 2016 - 2017 NVIDIA Corporation.  Licensed under the
// NVDLA Open Hardware License; Check "LICENSE" which comes with 
// this distribution for more information.
// ================================================================
// File Name: NV_NVDLA_CACC.h
module NV_NVDLA_CACC_assembly_buffer (
   nvdla_core_clk //|< i
  ,reset //|< i
  ,abuf_rd_addr //|< i
  ,abuf_rd_en //|< i
  ,abuf_wr_addr //|< i
  ,abuf_wr_data //|< i
  ,abuf_wr_en //|< i
  ,pwrbus_ram_pd //|< i
  ,abuf_rd_data //|> o
  );
input nvdla_core_clk;
input reset;
input [5 +1 -1:0] abuf_rd_addr;
input abuf_rd_en;
input [5 +1 -1:0] abuf_wr_addr;
input [34*32 -1:0] abuf_wr_data;
input abuf_wr_en;
input [31:0] pwrbus_ram_pd;
output [34*32 -1:0] abuf_rd_data;
// spyglass disable_block NoWidthInBasedNum-ML
// instance SRAM
wire [34*32 -1:0] abuf_rd_data_ecc;
wire [5 +1 -1:0] abuf_rd_addr;
//: my $dep= 32*2;
//: my $wid= 34*32;
//: print qq(
//: nv_ram_rws_${dep}x${wid} u_accu_abuf_0 (
//: .clk (nvdla_core_clk) //|< i
//: ,.ra (abuf_rd_addr) //|< i
//: ,.re (abuf_rd_en) //|< i
//: ,.dout (abuf_rd_data_ecc) //|> w
//: ,.wa (abuf_wr_addr) //|< r
//: ,.we (abuf_wr_en) //|< r
//: ,.di (abuf_wr_data) //|< r
//: ,.pwrbus_ram_pd (pwrbus_ram_pd[31:0]) //|< i
//: );
//: );
//| eperl: generated_beg (DO NOT EDIT BELOW)

nv_ram_rws u_accu_abuf_0 (
.clk (nvdla_core_clk) //|< i
,.ra (abuf_rd_addr) //|< i
,.re (abuf_rd_en) //|< i
,.dout (abuf_rd_data_ecc) //|> w
,.wa (abuf_wr_addr) //|< r
,.we (abuf_wr_en) //|< r
,.di (abuf_wr_data) //|< r
);

//| eperl: generated_end (DO NOT EDIT ABOVE)
// 1 pipe for sram read data.
//: &eperl::flop("-q abuf_rd_en_d1 -d \"abuf_rd_en\" -clk nvdla_core_clk -rst reset");
//| eperl: generated_beg (DO NOT EDIT BELOW)
reg  abuf_rd_en_d1;
always @(posedge nvdla_core_clk) begin
   if (!reset) begin
       abuf_rd_en_d1 <= 'b0;
   end else begin
       abuf_rd_en_d1 <= abuf_rd_en;
   end
end

//| eperl: generated_end (DO NOT EDIT ABOVE)
wire [34*32 -1:0] abuf_rd_raw_data = abuf_rd_data_ecc;
// spygalss disable_block STARC-2.10.1.6
// spyglass disable_block STARC05-3.3.1.4b
//: my $kk=34*32;
//: &eperl::flop("-wid ${kk} -norst -q abuf_rd_raw_data_d1 -en \"abuf_rd_en_d1\" -d \"abuf_rd_raw_data\" -clk nvdla_core_clk");
//| eperl: generated_beg (DO NOT EDIT BELOW)
reg [1087:0] abuf_rd_raw_data_d1;
always @(posedge nvdla_core_clk) begin
       if ((abuf_rd_en_d1) == 1'b1) begin
           abuf_rd_raw_data_d1 <= abuf_rd_raw_data;
       // VCS coverage off
       end else if ((abuf_rd_en_d1) == 1'b0) begin
       end else begin
           abuf_rd_raw_data_d1 <= 'bx;
       // VCS coverage on
       end
end

//| eperl: generated_end (DO NOT EDIT ABOVE)
// spyglass enable_block NoWidthInBasedNum-ML
// spyglass enable_block STARC-2.10.1.6
// spyglass enable_block STARC05-3.3.1.4b
assign abuf_rd_data = abuf_rd_raw_data_d1;
endmodule // NV_NVDLA_CACC_assembly_buffer
