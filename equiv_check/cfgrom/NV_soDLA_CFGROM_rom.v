module NV_soDLA_CFGROM_rom( // @[:@3.2]
  input         nvdla_core_clk, // @[:@6.4]
  input         nvdla_core_rstn,
  output [31:0] reg_rd_data, // @[:@6.4]
  input  [11:0] reg_offset, // @[:@6.4]
  input  [31:0] reg_wr_data, // @[:@6.4]
  input         reg_wr_en // @[:@6.4]
);
  wire [31:0] _GEN_0; // @[Mux.scala 46:19:@8.4]
  wire  _T_226; // @[Mux.scala 46:19:@10.4]
  wire [31:0] _T_227; // @[Mux.scala 46:16:@11.4]
  wire  _T_228; // @[Mux.scala 46:19:@12.4]
  wire [31:0] _T_229; // @[Mux.scala 46:16:@13.4]
  wire  _T_230; // @[Mux.scala 46:19:@14.4]
  wire [31:0] _T_231; // @[Mux.scala 46:16:@15.4]
  wire  _T_232; // @[Mux.scala 46:19:@16.4]
  wire [31:0] _T_233; // @[Mux.scala 46:16:@17.4]
  wire  _T_234; // @[Mux.scala 46:19:@18.4]
  wire [31:0] _T_235; // @[Mux.scala 46:16:@19.4]
  wire  _T_236; // @[Mux.scala 46:19:@20.4]
  wire [31:0] _T_237; // @[Mux.scala 46:16:@21.4]
  wire  _T_238; // @[Mux.scala 46:19:@22.4]
  wire [31:0] _T_239; // @[Mux.scala 46:16:@23.4]
  wire  _T_240; // @[Mux.scala 46:19:@24.4]
  wire [31:0] _T_241; // @[Mux.scala 46:16:@25.4]
  wire  _T_242; // @[Mux.scala 46:19:@26.4]
  wire [31:0] _T_243; // @[Mux.scala 46:16:@27.4]
  wire  _T_244; // @[Mux.scala 46:19:@28.4]
  wire [31:0] _T_245; // @[Mux.scala 46:16:@29.4]
  wire  _T_246; // @[Mux.scala 46:19:@30.4]
  wire [31:0] _T_247; // @[Mux.scala 46:16:@31.4]
  wire  _T_248; // @[Mux.scala 46:19:@32.4]
  wire [31:0] _T_249; // @[Mux.scala 46:16:@33.4]
  wire  _T_250; // @[Mux.scala 46:19:@34.4]
  wire [31:0] _T_251; // @[Mux.scala 46:16:@35.4]
  wire  _T_252; // @[Mux.scala 46:19:@36.4]
  wire [31:0] _T_253; // @[Mux.scala 46:16:@37.4]
  wire  _T_254; // @[Mux.scala 46:19:@38.4]
  wire [31:0] _T_255; // @[Mux.scala 46:16:@39.4]
  wire  _T_256; // @[Mux.scala 46:19:@40.4]
  wire [31:0] _T_257; // @[Mux.scala 46:16:@41.4]
  wire  _T_258; // @[Mux.scala 46:19:@42.4]
  wire [31:0] _T_259; // @[Mux.scala 46:16:@43.4]
  wire  _T_260; // @[Mux.scala 46:19:@44.4]
  wire [31:0] _T_261; // @[Mux.scala 46:16:@45.4]
  wire  _T_262; // @[Mux.scala 46:19:@46.4]
  wire [31:0] _T_263; // @[Mux.scala 46:16:@47.4]
  wire  _T_264; // @[Mux.scala 46:19:@48.4]
  wire [31:0] _T_265; // @[Mux.scala 46:16:@49.4]
  wire  _T_266; // @[Mux.scala 46:19:@50.4]
  wire [31:0] _T_267; // @[Mux.scala 46:16:@51.4]
  wire  _T_268; // @[Mux.scala 46:19:@52.4]
  wire [31:0] _T_269; // @[Mux.scala 46:16:@53.4]
  wire  _T_270; // @[Mux.scala 46:19:@54.4]
  wire [31:0] _T_271; // @[Mux.scala 46:16:@55.4]
  wire  _T_272; // @[Mux.scala 46:19:@56.4]
  wire [31:0] _T_273; // @[Mux.scala 46:16:@57.4]
  wire  _T_274; // @[Mux.scala 46:19:@58.4]
  wire [31:0] _T_275; // @[Mux.scala 46:16:@59.4]
  wire  _T_276; // @[Mux.scala 46:19:@60.4]
  wire [31:0] _T_277; // @[Mux.scala 46:16:@61.4]
  wire  _T_278; // @[Mux.scala 46:19:@62.4]
  wire [31:0] _T_279; // @[Mux.scala 46:16:@63.4]
  wire  _T_280; // @[Mux.scala 46:19:@64.4]
  wire [31:0] _T_281; // @[Mux.scala 46:16:@65.4]
  wire  _T_282; // @[Mux.scala 46:19:@66.4]
  wire [31:0] _T_283; // @[Mux.scala 46:16:@67.4]
  wire  _T_284; // @[Mux.scala 46:19:@68.4]
  wire [31:0] _T_285; // @[Mux.scala 46:16:@69.4]
  wire  _T_286; // @[Mux.scala 46:19:@70.4]
  wire [31:0] _T_287; // @[Mux.scala 46:16:@71.4]
  wire  _T_288; // @[Mux.scala 46:19:@72.4]
  wire [31:0] _T_289; // @[Mux.scala 46:16:@73.4]
  wire  _T_290; // @[Mux.scala 46:19:@74.4]
  wire [31:0] _T_291; // @[Mux.scala 46:16:@75.4]
  wire  _T_292; // @[Mux.scala 46:19:@76.4]
  wire [31:0] _T_293; // @[Mux.scala 46:16:@77.4]
  wire  _T_294; // @[Mux.scala 46:19:@78.4]
  wire [31:0] _T_295; // @[Mux.scala 46:16:@79.4]
  wire  _T_296; // @[Mux.scala 46:19:@80.4]
  wire [31:0] _T_297; // @[Mux.scala 46:16:@81.4]
  wire  _T_298; // @[Mux.scala 46:19:@82.4]
  wire [31:0] _T_299; // @[Mux.scala 46:16:@83.4]
  wire  _T_300; // @[Mux.scala 46:19:@84.4]
  wire [31:0] _T_301; // @[Mux.scala 46:16:@85.4]
  wire  _T_302; // @[Mux.scala 46:19:@86.4]
  wire [31:0] _T_303; // @[Mux.scala 46:16:@87.4]
  wire  _T_304; // @[Mux.scala 46:19:@88.4]
  wire [31:0] _T_305; // @[Mux.scala 46:16:@89.4]
  wire  _T_306; // @[Mux.scala 46:19:@90.4]
  wire [31:0] _T_307; // @[Mux.scala 46:16:@91.4]
  wire  _T_308; // @[Mux.scala 46:19:@92.4]
  wire [31:0] _T_309; // @[Mux.scala 46:16:@93.4]
  wire  _T_310; // @[Mux.scala 46:19:@94.4]
  wire [31:0] _T_311; // @[Mux.scala 46:16:@95.4]
  wire  _T_312; // @[Mux.scala 46:19:@96.4]
  wire [31:0] _T_313; // @[Mux.scala 46:16:@97.4]
  wire  _T_314; // @[Mux.scala 46:19:@98.4]
  wire [31:0] _T_315; // @[Mux.scala 46:16:@99.4]
  wire  _T_316; // @[Mux.scala 46:19:@100.4]
  wire [31:0] _T_317; // @[Mux.scala 46:16:@101.4]
  wire  _T_318; // @[Mux.scala 46:19:@102.4]
  wire [31:0] _T_319; // @[Mux.scala 46:16:@103.4]
  wire  _T_320; // @[Mux.scala 46:19:@104.4]
  wire [31:0] _T_321; // @[Mux.scala 46:16:@105.4]
  wire  _T_322; // @[Mux.scala 46:19:@106.4]
  wire [31:0] _T_323; // @[Mux.scala 46:16:@107.4]
  wire  _T_324; // @[Mux.scala 46:19:@108.4]
  wire [31:0] _T_325; // @[Mux.scala 46:16:@109.4]
  wire  _T_326; // @[Mux.scala 46:19:@110.4]
  wire [31:0] _T_327; // @[Mux.scala 46:16:@111.4]
  wire  _T_328; // @[Mux.scala 46:19:@112.4]
  wire [31:0] _T_329; // @[Mux.scala 46:16:@113.4]
  wire  _T_330; // @[Mux.scala 46:19:@114.4]
  wire [31:0] _T_331; // @[Mux.scala 46:16:@115.4]
  wire  _T_332; // @[Mux.scala 46:19:@116.4]
  wire [31:0] _T_333; // @[Mux.scala 46:16:@117.4]
  wire  _T_334; // @[Mux.scala 46:19:@118.4]
  wire [31:0] _T_335; // @[Mux.scala 46:16:@119.4]
  wire  _T_336; // @[Mux.scala 46:19:@120.4]
  wire [31:0] _T_337; // @[Mux.scala 46:16:@121.4]
  wire  _T_338; // @[Mux.scala 46:19:@122.4]
  wire [31:0] _T_339; // @[Mux.scala 46:16:@123.4]
  wire  _T_340; // @[Mux.scala 46:19:@124.4]
  wire [31:0] _T_341; // @[Mux.scala 46:16:@125.4]
  wire  _T_342; // @[Mux.scala 46:19:@126.4]
  wire [31:0] _T_343; // @[Mux.scala 46:16:@127.4]
  wire  _T_344; // @[Mux.scala 46:19:@128.4]
  wire [31:0] _T_345; // @[Mux.scala 46:16:@129.4]
  wire  _T_346; // @[Mux.scala 46:19:@130.4]
  wire [31:0] _T_347; // @[Mux.scala 46:16:@131.4]
  wire  _T_348; // @[Mux.scala 46:19:@132.4]
  wire [31:0] _T_349; // @[Mux.scala 46:16:@133.4]
  wire  _T_350; // @[Mux.scala 46:19:@134.4]
  wire [31:0] _T_351; // @[Mux.scala 46:16:@135.4]
  wire  _T_352; // @[Mux.scala 46:19:@136.4]
  wire [31:0] _T_353; // @[Mux.scala 46:16:@137.4]
  wire  _T_354; // @[Mux.scala 46:19:@138.4]
  wire [31:0] _T_355; // @[Mux.scala 46:16:@139.4]
  wire  _T_356; // @[Mux.scala 46:19:@140.4]
  wire [31:0] _T_357; // @[Mux.scala 46:16:@141.4]
  wire  _T_358; // @[Mux.scala 46:19:@142.4]
  wire [31:0] _T_359; // @[Mux.scala 46:16:@143.4]
  wire  _T_360; // @[Mux.scala 46:19:@144.4]
  wire [31:0] _T_361; // @[Mux.scala 46:16:@145.4]
  wire  _T_362; // @[Mux.scala 46:19:@146.4]
  wire [31:0] _T_363; // @[Mux.scala 46:16:@147.4]
  wire  _T_364; // @[Mux.scala 46:19:@148.4]
  wire [31:0] _T_365; // @[Mux.scala 46:16:@149.4]
  wire  _T_366; // @[Mux.scala 46:19:@150.4]
  wire [31:0] _T_367; // @[Mux.scala 46:16:@151.4]
  wire  _T_368; // @[Mux.scala 46:19:@152.4]
  wire [31:0] _T_369; // @[Mux.scala 46:16:@153.4]
  wire  _T_370; // @[Mux.scala 46:19:@154.4]
  wire [31:0] _T_371; // @[Mux.scala 46:16:@155.4]
  wire  _T_372; // @[Mux.scala 46:19:@156.4]
  wire [31:0] _T_373; // @[Mux.scala 46:16:@157.4]
  wire  _T_374; // @[Mux.scala 46:19:@158.4]
  wire [31:0] _T_375; // @[Mux.scala 46:16:@159.4]
  wire  _T_376; // @[Mux.scala 46:19:@160.4]
  wire [31:0] _T_377; // @[Mux.scala 46:16:@161.4]
  wire  _T_378; // @[Mux.scala 46:19:@162.4]
  wire [31:0] _T_379; // @[Mux.scala 46:16:@163.4]
  wire  _T_380; // @[Mux.scala 46:19:@164.4]
  wire [31:0] _T_381; // @[Mux.scala 46:16:@165.4]
  wire  _T_382; // @[Mux.scala 46:19:@166.4]
  wire [31:0] _T_383; // @[Mux.scala 46:16:@167.4]
  wire  _T_384; // @[Mux.scala 46:19:@168.4]
  wire [31:0] _T_385; // @[Mux.scala 46:16:@169.4]
  wire  _T_386; // @[Mux.scala 46:19:@170.4]
  wire [31:0] _T_387; // @[Mux.scala 46:16:@171.4]
  wire  _T_388; // @[Mux.scala 46:19:@172.4]
  wire [31:0] _T_389; // @[Mux.scala 46:16:@173.4]
  wire  _T_390; // @[Mux.scala 46:19:@174.4]
  wire [31:0] _T_391; // @[Mux.scala 46:16:@175.4]
  wire  _T_392; // @[Mux.scala 46:19:@176.4]
  wire [31:0] _T_393; // @[Mux.scala 46:16:@177.4]
  wire  _T_394; // @[Mux.scala 46:19:@178.4]
  wire [31:0] _T_395; // @[Mux.scala 46:16:@179.4]
  wire  _T_396; // @[Mux.scala 46:19:@180.4]
  wire [31:0] _T_397; // @[Mux.scala 46:16:@181.4]
  wire  _T_398; // @[Mux.scala 46:19:@182.4]
  wire [31:0] _T_399; // @[Mux.scala 46:16:@183.4]
  wire  _T_400; // @[Mux.scala 46:19:@184.4]
  wire [31:0] _T_401; // @[Mux.scala 46:16:@185.4]
  wire  _T_402; // @[Mux.scala 46:19:@186.4]
  wire [31:0] _T_403; // @[Mux.scala 46:16:@187.4]
  wire  _T_404; // @[Mux.scala 46:19:@188.4]
  wire [31:0] _T_405; // @[Mux.scala 46:16:@189.4]
  wire  _T_406; // @[Mux.scala 46:19:@190.4]
  wire [31:0] _T_407; // @[Mux.scala 46:16:@191.4]
  wire  _T_408; // @[Mux.scala 46:19:@192.4]
  wire [31:0] _T_409; // @[Mux.scala 46:16:@193.4]
  wire  _T_410; // @[Mux.scala 46:19:@194.4]
  wire [31:0] _T_411; // @[Mux.scala 46:16:@195.4]
  wire  _T_412; // @[Mux.scala 46:19:@196.4]
  wire [31:0] _T_413; // @[Mux.scala 46:16:@197.4]
  wire  _T_414; // @[Mux.scala 46:19:@198.4]
  wire [31:0] _T_415; // @[Mux.scala 46:16:@199.4]
  wire  _T_416; // @[Mux.scala 46:19:@200.4]
  wire [31:0] _T_417; // @[Mux.scala 46:16:@201.4]
  wire  _T_418; // @[Mux.scala 46:19:@202.4]
  wire [31:0] _T_419; // @[Mux.scala 46:16:@203.4]
  wire  _T_420; // @[Mux.scala 46:19:@204.4]
  wire [31:0] _T_421; // @[Mux.scala 46:16:@205.4]
  wire  _T_422; // @[Mux.scala 46:19:@206.4]
  wire [31:0] _T_423; // @[Mux.scala 46:16:@207.4]
  wire  _T_424; // @[Mux.scala 46:19:@208.4]
  wire [31:0] _T_425; // @[Mux.scala 46:16:@209.4]
  wire  _T_426; // @[Mux.scala 46:19:@210.4]
  wire [31:0] _T_427; // @[Mux.scala 46:16:@211.4]
  wire  _T_428; // @[Mux.scala 46:19:@212.4]
  wire [31:0] _T_429; // @[Mux.scala 46:16:@213.4]
  wire  _T_430; // @[Mux.scala 46:19:@214.4]
  assign _GEN_0 = {{20'd0}, reg_offset}; // @[Mux.scala 46:19:@8.4]
  assign _T_226 = 32'h198 == _GEN_0; // @[Mux.scala 46:19:@10.4]
  assign _T_227 = _T_226 ? 32'h1 : 32'h0; // @[Mux.scala 46:16:@11.4]
  assign _T_228 = 32'h194 == _GEN_0; // @[Mux.scala 46:19:@12.4]
  assign _T_229 = _T_228 ? 32'h10 : _T_227; // @[Mux.scala 46:16:@13.4]
  assign _T_230 = 32'h190 == _GEN_0; // @[Mux.scala 46:19:@14.4]
  assign _T_231 = _T_230 ? 32'h0 : _T_229; // @[Mux.scala 46:16:@15.4]
  assign _T_232 = 32'h18c == _GEN_0; // @[Mux.scala 46:19:@16.4]
  assign _T_233 = _T_232 ? 32'h0 : _T_231; // @[Mux.scala 46:16:@17.4]
  assign _T_234 = 32'h188 == _GEN_0; // @[Mux.scala 46:19:@18.4]
  assign _T_235 = _T_234 ? 32'h10000d : _T_233; // @[Mux.scala 46:16:@19.4]
  assign _T_236 = 32'h184 == _GEN_0; // @[Mux.scala 46:19:@20.4]
  assign _T_237 = _T_236 ? 32'hd : _T_235; // @[Mux.scala 46:16:@21.4]
  assign _T_238 = 32'h180 == _GEN_0; // @[Mux.scala 46:19:@22.4]
  assign _T_239 = _T_238 ? 32'h8 : _T_237; // @[Mux.scala 46:16:@23.4]
  assign _T_240 = 32'h17c == _GEN_0; // @[Mux.scala 46:19:@24.4]
  assign _T_241 = _T_240 ? 32'h0 : _T_239; // @[Mux.scala 46:16:@25.4]
  assign _T_242 = 32'h178 == _GEN_0; // @[Mux.scala 46:19:@26.4]
  assign _T_243 = _T_242 ? 32'h0 : _T_241; // @[Mux.scala 46:16:@27.4]
  assign _T_244 = 32'h174 == _GEN_0; // @[Mux.scala 46:19:@28.4]
  assign _T_245 = _T_244 ? 32'he000c : _T_243; // @[Mux.scala 46:16:@29.4]
  assign _T_246 = 32'h170 == _GEN_0; // @[Mux.scala 46:19:@30.4]
  assign _T_247 = _T_246 ? 32'h1 : _T_245; // @[Mux.scala 46:16:@31.4]
  assign _T_248 = 32'h16c == _GEN_0; // @[Mux.scala 46:19:@32.4]
  assign _T_249 = _T_248 ? 32'h10 : _T_247; // @[Mux.scala 46:16:@33.4]
  assign _T_250 = 32'h168 == _GEN_0; // @[Mux.scala 46:19:@34.4]
  assign _T_251 = _T_250 ? 32'h0 : _T_249; // @[Mux.scala 46:16:@35.4]
  assign _T_252 = 32'h164 == _GEN_0; // @[Mux.scala 46:19:@36.4]
  assign _T_253 = _T_252 ? 32'h0 : _T_251; // @[Mux.scala 46:16:@37.4]
  assign _T_254 = 32'h160 == _GEN_0; // @[Mux.scala 46:19:@38.4]
  assign _T_255 = _T_254 ? 32'h10000b : _T_253; // @[Mux.scala 46:16:@39.4]
  assign _T_256 = 32'h15c == _GEN_0; // @[Mux.scala 46:19:@40.4]
  assign _T_257 = _T_256 ? 32'hb : _T_255; // @[Mux.scala 46:16:@41.4]
  assign _T_258 = 32'h158 == _GEN_0; // @[Mux.scala 46:19:@42.4]
  assign _T_259 = _T_258 ? 32'h8 : _T_257; // @[Mux.scala 46:16:@43.4]
  assign _T_260 = 32'h154 == _GEN_0; // @[Mux.scala 46:19:@44.4]
  assign _T_261 = _T_260 ? 32'h0 : _T_259; // @[Mux.scala 46:16:@45.4]
  assign _T_262 = 32'h150 == _GEN_0; // @[Mux.scala 46:19:@46.4]
  assign _T_263 = _T_262 ? 32'h0 : _T_261; // @[Mux.scala 46:16:@47.4]
  assign _T_264 = 32'h14c == _GEN_0; // @[Mux.scala 46:19:@48.4]
  assign _T_265 = _T_264 ? 32'he000a : _T_263; // @[Mux.scala 46:16:@49.4]
  assign _T_266 = 32'h148 == _GEN_0; // @[Mux.scala 46:19:@50.4]
  assign _T_267 = _T_266 ? 32'h0 : _T_265; // @[Mux.scala 46:16:@51.4]
  assign _T_268 = 32'h144 == _GEN_0; // @[Mux.scala 46:19:@52.4]
  assign _T_269 = _T_268 ? 32'h1 : _T_267; // @[Mux.scala 46:16:@53.4]
  assign _T_270 = 32'h140 == _GEN_0; // @[Mux.scala 46:19:@54.4]
  assign _T_271 = _T_270 ? 32'h1 : _T_269; // @[Mux.scala 46:16:@55.4]
  assign _T_272 = 32'h13c == _GEN_0; // @[Mux.scala 46:19:@56.4]
  assign _T_273 = _T_272 ? 32'h0 : _T_271; // @[Mux.scala 46:16:@57.4]
  assign _T_274 = 32'h138 == _GEN_0; // @[Mux.scala 46:19:@58.4]
  assign _T_275 = _T_274 ? 32'h3 : _T_273; // @[Mux.scala 46:16:@59.4]
  assign _T_276 = 32'h134 == _GEN_0; // @[Mux.scala 46:19:@60.4]
  assign _T_277 = _T_276 ? 32'h10 : _T_275; // @[Mux.scala 46:16:@61.4]
  assign _T_278 = 32'h130 == _GEN_0; // @[Mux.scala 46:19:@62.4]
  assign _T_279 = _T_278 ? 32'h10 : _T_277; // @[Mux.scala 46:16:@63.4]
  assign _T_280 = 32'h12c == _GEN_0; // @[Mux.scala 46:19:@64.4]
  assign _T_281 = _T_280 ? 32'h18 : _T_279; // @[Mux.scala 46:16:@65.4]
  assign _T_282 = 32'h128 == _GEN_0; // @[Mux.scala 46:19:@66.4]
  assign _T_283 = _T_282 ? 32'h0 : _T_281; // @[Mux.scala 46:16:@67.4]
  assign _T_284 = 32'h124 == _GEN_0; // @[Mux.scala 46:19:@68.4]
  assign _T_285 = _T_284 ? 32'h200009 : _T_283; // @[Mux.scala 46:16:@69.4]
  assign _T_286 = 32'h120 == _GEN_0; // @[Mux.scala 46:19:@70.4]
  assign _T_287 = _T_286 ? 32'h9 : _T_285; // @[Mux.scala 46:16:@71.4]
  assign _T_288 = 32'h11c == _GEN_0; // @[Mux.scala 46:19:@72.4]
  assign _T_289 = _T_288 ? 32'h8 : _T_287; // @[Mux.scala 46:16:@73.4]
  assign _T_290 = 32'h118 == _GEN_0; // @[Mux.scala 46:19:@74.4]
  assign _T_291 = _T_290 ? 32'h0 : _T_289; // @[Mux.scala 46:16:@75.4]
  assign _T_292 = 32'h114 == _GEN_0; // @[Mux.scala 46:19:@76.4]
  assign _T_293 = _T_292 ? 32'h0 : _T_291; // @[Mux.scala 46:16:@77.4]
  assign _T_294 = 32'h110 == _GEN_0; // @[Mux.scala 46:19:@78.4]
  assign _T_295 = _T_294 ? 32'he0008 : _T_293; // @[Mux.scala 46:16:@79.4]
  assign _T_296 = 32'h10c == _GEN_0; // @[Mux.scala 46:19:@80.4]
  assign _T_297 = _T_296 ? 32'h0 : _T_295; // @[Mux.scala 46:16:@81.4]
  assign _T_298 = 32'h108 == _GEN_0; // @[Mux.scala 46:19:@82.4]
  assign _T_299 = _T_298 ? 32'h3 : _T_297; // @[Mux.scala 46:16:@83.4]
  assign _T_300 = 32'h104 == _GEN_0; // @[Mux.scala 46:19:@84.4]
  assign _T_301 = _T_300 ? 32'h8 : _T_299; // @[Mux.scala 46:16:@85.4]
  assign _T_302 = 32'h100 == _GEN_0; // @[Mux.scala 46:19:@86.4]
  assign _T_303 = _T_302 ? 32'h8 : _T_301; // @[Mux.scala 46:16:@87.4]
  assign _T_304 = 32'hfc == _GEN_0; // @[Mux.scala 46:19:@88.4]
  assign _T_305 = _T_304 ? 32'h10 : _T_303; // @[Mux.scala 46:16:@89.4]
  assign _T_306 = 32'hf8 == _GEN_0; // @[Mux.scala 46:19:@90.4]
  assign _T_307 = _T_306 ? 32'h10 : _T_305; // @[Mux.scala 46:16:@91.4]
  assign _T_308 = 32'hf4 == _GEN_0; // @[Mux.scala 46:19:@92.4]
  assign _T_309 = _T_308 ? 32'h0 : _T_307; // @[Mux.scala 46:16:@93.4]
  assign _T_310 = 32'hf0 == _GEN_0; // @[Mux.scala 46:19:@94.4]
  assign _T_311 = _T_310 ? 32'h0 : _T_309; // @[Mux.scala 46:16:@95.4]
  assign _T_312 = 32'hec == _GEN_0; // @[Mux.scala 46:19:@96.4]
  assign _T_313 = _T_312 ? 32'h200007 : _T_311; // @[Mux.scala 46:16:@97.4]
  assign _T_314 = 32'he8 == _GEN_0; // @[Mux.scala 46:19:@98.4]
  assign _T_315 = _T_314 ? 32'h3 : _T_313; // @[Mux.scala 46:16:@99.4]
  assign _T_316 = 32'he4 == _GEN_0; // @[Mux.scala 46:19:@100.4]
  assign _T_317 = _T_316 ? 32'h8 : _T_315; // @[Mux.scala 46:16:@101.4]
  assign _T_318 = 32'he0 == _GEN_0; // @[Mux.scala 46:19:@102.4]
  assign _T_319 = _T_318 ? 32'h8 : _T_317; // @[Mux.scala 46:16:@103.4]
  assign _T_320 = 32'hdc == _GEN_0; // @[Mux.scala 46:19:@104.4]
  assign _T_321 = _T_320 ? 32'h10 : _T_319; // @[Mux.scala 46:16:@105.4]
  assign _T_322 = 32'hd8 == _GEN_0; // @[Mux.scala 46:19:@106.4]
  assign _T_323 = _T_322 ? 32'h10 : _T_321; // @[Mux.scala 46:16:@107.4]
  assign _T_324 = 32'hd4 == _GEN_0; // @[Mux.scala 46:19:@108.4]
  assign _T_325 = _T_324 ? 32'h10 : _T_323; // @[Mux.scala 46:16:@109.4]
  assign _T_326 = 32'hd0 == _GEN_0; // @[Mux.scala 46:19:@110.4]
  assign _T_327 = _T_326 ? 32'h0 : _T_325; // @[Mux.scala 46:16:@111.4]
  assign _T_328 = 32'hcc == _GEN_0; // @[Mux.scala 46:19:@112.4]
  assign _T_329 = _T_328 ? 32'h1c0006 : _T_327; // @[Mux.scala 46:16:@113.4]
  assign _T_330 = 32'hc8 == _GEN_0; // @[Mux.scala 46:19:@114.4]
  assign _T_331 = _T_330 ? 32'h3 : _T_329; // @[Mux.scala 46:16:@115.4]
  assign _T_332 = 32'hc4 == _GEN_0; // @[Mux.scala 46:19:@116.4]
  assign _T_333 = _T_332 ? 32'h8 : _T_331; // @[Mux.scala 46:16:@117.4]
  assign _T_334 = 32'hc0 == _GEN_0; // @[Mux.scala 46:19:@118.4]
  assign _T_335 = _T_334 ? 32'h8 : _T_333; // @[Mux.scala 46:16:@119.4]
  assign _T_336 = 32'hbc == _GEN_0; // @[Mux.scala 46:19:@120.4]
  assign _T_337 = _T_336 ? 32'h10 : _T_335; // @[Mux.scala 46:16:@121.4]
  assign _T_338 = 32'hb8 == _GEN_0; // @[Mux.scala 46:19:@122.4]
  assign _T_339 = _T_338 ? 32'h10 : _T_337; // @[Mux.scala 46:16:@123.4]
  assign _T_340 = 32'hb4 == _GEN_0; // @[Mux.scala 46:19:@124.4]
  assign _T_341 = _T_340 ? 32'h10 : _T_339; // @[Mux.scala 46:16:@125.4]
  assign _T_342 = 32'hb0 == _GEN_0; // @[Mux.scala 46:19:@126.4]
  assign _T_343 = _T_342 ? 32'h0 : _T_341; // @[Mux.scala 46:16:@127.4]
  assign _T_344 = 32'hac == _GEN_0; // @[Mux.scala 46:19:@128.4]
  assign _T_345 = _T_344 ? 32'h1c0006 : _T_343; // @[Mux.scala 46:16:@129.4]
  assign _T_346 = 32'ha8 == _GEN_0; // @[Mux.scala 46:19:@130.4]
  assign _T_347 = _T_346 ? 32'h0 : _T_345; // @[Mux.scala 46:16:@131.4]
  assign _T_348 = 32'ha4 == _GEN_0; // @[Mux.scala 46:19:@132.4]
  assign _T_349 = _T_348 ? 32'h3 : _T_347; // @[Mux.scala 46:16:@133.4]
  assign _T_350 = 32'ha0 == _GEN_0; // @[Mux.scala 46:19:@134.4]
  assign _T_351 = _T_350 ? 32'h200 : _T_349; // @[Mux.scala 46:16:@135.4]
  assign _T_352 = 32'h9c == _GEN_0; // @[Mux.scala 46:19:@136.4]
  assign _T_353 = _T_352 ? 32'h8 : _T_351; // @[Mux.scala 46:16:@137.4]
  assign _T_354 = 32'h98 == _GEN_0; // @[Mux.scala 46:19:@138.4]
  assign _T_355 = _T_354 ? 32'h20 : _T_353; // @[Mux.scala 46:16:@139.4]
  assign _T_356 = 32'h94 == _GEN_0; // @[Mux.scala 46:19:@140.4]
  assign _T_357 = _T_356 ? 32'h8 : _T_355; // @[Mux.scala 46:16:@141.4]
  assign _T_358 = 32'h90 == _GEN_0; // @[Mux.scala 46:19:@142.4]
  assign _T_359 = _T_358 ? 32'h8 : _T_357; // @[Mux.scala 46:16:@143.4]
  assign _T_360 = 32'h8c == _GEN_0; // @[Mux.scala 46:19:@144.4]
  assign _T_361 = _T_360 ? 32'h8 : _T_359; // @[Mux.scala 46:16:@145.4]
  assign _T_362 = 32'h88 == _GEN_0; // @[Mux.scala 46:19:@146.4]
  assign _T_363 = _T_362 ? 32'h10 : _T_361; // @[Mux.scala 46:16:@147.4]
  assign _T_364 = 32'h84 == _GEN_0; // @[Mux.scala 46:19:@148.4]
  assign _T_365 = _T_364 ? 32'h10 : _T_363; // @[Mux.scala 46:16:@149.4]
  assign _T_366 = 32'h80 == _GEN_0; // @[Mux.scala 46:19:@150.4]
  assign _T_367 = _T_366 ? 32'h10 : _T_365; // @[Mux.scala 46:16:@151.4]
  assign _T_368 = 32'h7c == _GEN_0; // @[Mux.scala 46:19:@152.4]
  assign _T_369 = _T_368 ? 32'h0 : _T_367; // @[Mux.scala 46:16:@153.4]
  assign _T_370 = 32'h78 == _GEN_0; // @[Mux.scala 46:19:@154.4]
  assign _T_371 = _T_370 ? 32'h300005 : _T_369; // @[Mux.scala 46:16:@155.4]
  assign _T_372 = 32'h74 == _GEN_0; // @[Mux.scala 46:19:@156.4]
  assign _T_373 = _T_372 ? 32'h3 : _T_371; // @[Mux.scala 46:16:@157.4]
  assign _T_374 = 32'h70 == _GEN_0; // @[Mux.scala 46:19:@158.4]
  assign _T_375 = _T_374 ? 32'h200 : _T_373; // @[Mux.scala 46:16:@159.4]
  assign _T_376 = 32'h6c == _GEN_0; // @[Mux.scala 46:19:@160.4]
  assign _T_377 = _T_376 ? 32'h8 : _T_375; // @[Mux.scala 46:16:@161.4]
  assign _T_378 = 32'h68 == _GEN_0; // @[Mux.scala 46:19:@162.4]
  assign _T_379 = _T_378 ? 32'h20 : _T_377; // @[Mux.scala 46:16:@163.4]
  assign _T_380 = 32'h64 == _GEN_0; // @[Mux.scala 46:19:@164.4]
  assign _T_381 = _T_380 ? 32'h0 : _T_379; // @[Mux.scala 46:16:@165.4]
  assign _T_382 = 32'h60 == _GEN_0; // @[Mux.scala 46:19:@166.4]
  assign _T_383 = _T_382 ? 32'h0 : _T_381; // @[Mux.scala 46:16:@167.4]
  assign _T_384 = 32'h5c == _GEN_0; // @[Mux.scala 46:19:@168.4]
  assign _T_385 = _T_384 ? 32'h180004 : _T_383; // @[Mux.scala 46:16:@169.4]
  assign _T_386 = 32'h58 == _GEN_0; // @[Mux.scala 46:19:@170.4]
  assign _T_387 = _T_386 ? 32'h3 : _T_385; // @[Mux.scala 46:16:@171.4]
  assign _T_388 = 32'h54 == _GEN_0; // @[Mux.scala 46:19:@172.4]
  assign _T_389 = _T_388 ? 32'hcfff001 : _T_387; // @[Mux.scala 46:16:@173.4]
  assign _T_390 = 32'h50 == _GEN_0; // @[Mux.scala 46:19:@174.4]
  assign _T_391 = _T_390 ? 32'h0 : _T_389; // @[Mux.scala 46:16:@175.4]
  assign _T_392 = 32'h4c == _GEN_0; // @[Mux.scala 46:19:@176.4]
  assign _T_393 = _T_392 ? 32'h200 : _T_391; // @[Mux.scala 46:16:@177.4]
  assign _T_394 = 32'h48 == _GEN_0; // @[Mux.scala 46:19:@178.4]
  assign _T_395 = _T_394 ? 32'h8 : _T_393; // @[Mux.scala 46:16:@179.4]
  assign _T_396 = 32'h44 == _GEN_0; // @[Mux.scala 46:19:@180.4]
  assign _T_397 = _T_396 ? 32'h20 : _T_395; // @[Mux.scala 46:16:@181.4]
  assign _T_398 = 32'h40 == _GEN_0; // @[Mux.scala 46:19:@182.4]
  assign _T_399 = _T_398 ? 32'h8 : _T_397; // @[Mux.scala 46:16:@183.4]
  assign _T_400 = 32'h3c == _GEN_0; // @[Mux.scala 46:19:@184.4]
  assign _T_401 = _T_400 ? 32'h8 : _T_399; // @[Mux.scala 46:16:@185.4]
  assign _T_402 = 32'h38 == _GEN_0; // @[Mux.scala 46:19:@186.4]
  assign _T_403 = _T_402 ? 32'h8 : _T_401; // @[Mux.scala 46:16:@187.4]
  assign _T_404 = 32'h34 == _GEN_0; // @[Mux.scala 46:19:@188.4]
  assign _T_405 = _T_404 ? 32'h10 : _T_403; // @[Mux.scala 46:16:@189.4]
  assign _T_406 = 32'h30 == _GEN_0; // @[Mux.scala 46:19:@190.4]
  assign _T_407 = _T_406 ? 32'h10 : _T_405; // @[Mux.scala 46:16:@191.4]
  assign _T_408 = 32'h2c == _GEN_0; // @[Mux.scala 46:19:@192.4]
  assign _T_409 = _T_408 ? 32'h10 : _T_407; // @[Mux.scala 46:16:@193.4]
  assign _T_410 = 32'h28 == _GEN_0; // @[Mux.scala 46:19:@194.4]
  assign _T_411 = _T_410 ? 32'h0 : _T_409; // @[Mux.scala 46:16:@195.4]
  assign _T_412 = 32'h24 == _GEN_0; // @[Mux.scala 46:19:@196.4]
  assign _T_413 = _T_412 ? 32'h340003 : _T_411; // @[Mux.scala 46:16:@197.4]
  assign _T_414 = 32'h20 == _GEN_0; // @[Mux.scala 46:19:@198.4]
  assign _T_415 = _T_414 ? 32'h400 : _T_413; // @[Mux.scala 46:16:@199.4]
  assign _T_416 = 32'h1c == _GEN_0; // @[Mux.scala 46:19:@200.4]
  assign _T_417 = _T_416 ? 32'h80 : _T_415; // @[Mux.scala 46:16:@201.4]
  assign _T_418 = 32'h18 == _GEN_0; // @[Mux.scala 46:19:@202.4]
  assign _T_419 = _T_418 ? 32'h32 : _T_417; // @[Mux.scala 46:16:@203.4]
  assign _T_420 = 32'h14 == _GEN_0; // @[Mux.scala 46:19:@204.4]
  assign _T_421 = _T_420 ? 32'h8 : _T_419; // @[Mux.scala 46:16:@205.4]
  assign _T_422 = 32'h10 == _GEN_0; // @[Mux.scala 46:19:@206.4]
  assign _T_423 = _T_422 ? 32'h0 : _T_421; // @[Mux.scala 46:16:@207.4]
  assign _T_424 = 32'hc == _GEN_0; // @[Mux.scala 46:19:@208.4]
  assign _T_425 = _T_424 ? 32'h0 : _T_423; // @[Mux.scala 46:16:@209.4]
  assign _T_426 = 32'h8 == _GEN_0; // @[Mux.scala 46:19:@210.4]
  assign _T_427 = _T_426 ? 32'h180002 : _T_425; // @[Mux.scala 46:16:@211.4]
  assign _T_428 = 32'h4 == _GEN_0; // @[Mux.scala 46:19:@212.4]
  assign _T_429 = _T_428 ? 32'h1 : _T_427; // @[Mux.scala 46:16:@213.4]
  assign _T_430 = 32'h0 == _GEN_0; // @[Mux.scala 46:19:@214.4]
  assign reg_rd_data = _T_430 ? 32'h10001 : _T_429; // @[NV_NVDLA_CFGROM_rom.scala 16:20:@216.4]
endmodule


module NV_NVDLA_CFGROM_rom (
   reg_rd_data
  ,reg_offset
// verilint 498 off
// leda UNUSED_DEC off
  ,reg_wr_data
// verilint 498 on
// leda UNUSED_DEC on
  ,reg_wr_en
  ,nvdla_core_clk
  ,nvdla_core_rstn
  );
output [31:0] reg_rd_data;
input [11:0] reg_offset;
input [31:0] reg_wr_data; //(UNUSED_DEC)
input reg_wr_en;
input nvdla_core_clk;
input nvdla_core_rstn;
//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//// leda FM_2_23 off
//reg arreggen_abort_on_invalid_wr;
//reg arreggen_abort_on_rowr;
//reg arreggen_dump;
//// leda FM_2_23 on
reg [31:0] reg_rd_data;
//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
always @(*) begin
  case (reg_offset)
     (32'h0 & 32'h00000fff): reg_rd_data = 32'h10001 ;
     (32'h4 & 32'h00000fff): reg_rd_data = 32'h1 ;
     (32'h8 & 32'h00000fff): reg_rd_data = 32'h180002 ;
     (32'hc & 32'h00000fff): reg_rd_data = 32'h0 ;
     (32'h10 & 32'h00000fff): reg_rd_data = 32'h0 ;
     (32'h14 & 32'h00000fff): reg_rd_data = 32'h8 ;
     (32'h18 & 32'h00000fff): reg_rd_data = 32'h32 ;
     (32'h1c & 32'h00000fff): reg_rd_data = 32'h80 ;
     (32'h20 & 32'h00000fff): reg_rd_data = 32'h400 ;
     (32'h24 & 32'h00000fff): reg_rd_data = 32'h340003 ;
     (32'h28 & 32'h00000fff): reg_rd_data = 32'h0 ;
     (32'h2c & 32'h00000fff): reg_rd_data = 32'h10 ;
     (32'h30 & 32'h00000fff): reg_rd_data = 32'h10 ;
     (32'h34 & 32'h00000fff): reg_rd_data = 32'h10 ;
     (32'h38 & 32'h00000fff): reg_rd_data = 32'h8 ;
     (32'h3c & 32'h00000fff): reg_rd_data = 32'h8 ;
     (32'h40 & 32'h00000fff): reg_rd_data = 32'h8 ;
     (32'h44 & 32'h00000fff): reg_rd_data = 32'h20 ;
     (32'h48 & 32'h00000fff): reg_rd_data = 32'h8 ;
     (32'h4c & 32'h00000fff): reg_rd_data = 32'h200 ;
     (32'h50 & 32'h00000fff): reg_rd_data = 32'h0 ;
     (32'h54 & 32'h00000fff): reg_rd_data = 32'hcfff001 ;
     (32'h58 & 32'h00000fff): reg_rd_data = 32'h3 ;
     (32'h5c & 32'h00000fff): reg_rd_data = 32'h180004 ;
     (32'h60 & 32'h00000fff): reg_rd_data = 32'h0 ;
     (32'h64 & 32'h00000fff): reg_rd_data = 32'h0 ;
     (32'h68 & 32'h00000fff): reg_rd_data = 32'h20 ;
     (32'h6c & 32'h00000fff): reg_rd_data = 32'h8 ;
     (32'h70 & 32'h00000fff): reg_rd_data = 32'h200 ;
     (32'h74 & 32'h00000fff): reg_rd_data = 32'h3 ;
     (32'h78 & 32'h00000fff): reg_rd_data = 32'h300005 ;
     (32'h7c & 32'h00000fff): reg_rd_data = 32'h0 ;
     (32'h80 & 32'h00000fff): reg_rd_data = 32'h10 ;
     (32'h84 & 32'h00000fff): reg_rd_data = 32'h10 ;
     (32'h88 & 32'h00000fff): reg_rd_data = 32'h10 ;
     (32'h8c & 32'h00000fff): reg_rd_data = 32'h8 ;
     (32'h90 & 32'h00000fff): reg_rd_data = 32'h8 ;
     (32'h94 & 32'h00000fff): reg_rd_data = 32'h8 ;
     (32'h98 & 32'h00000fff): reg_rd_data = 32'h20 ;
     (32'h9c & 32'h00000fff): reg_rd_data = 32'h8 ;
     (32'ha0 & 32'h00000fff): reg_rd_data = 32'h200 ;
     (32'ha4 & 32'h00000fff): reg_rd_data = 32'h3 ;
     (32'ha8 & 32'h00000fff): reg_rd_data = 32'h0 ;
     (32'hac & 32'h00000fff): reg_rd_data = 32'h1c0006 ;
     (32'hb0 & 32'h00000fff): reg_rd_data = 32'h0 ;
     (32'hb4 & 32'h00000fff): reg_rd_data = 32'h10 ;
     (32'hb8 & 32'h00000fff): reg_rd_data = 32'h10 ;
     (32'hbc & 32'h00000fff): reg_rd_data = 32'h10 ;
     (32'hc0 & 32'h00000fff): reg_rd_data = 32'h8 ;
     (32'hc4 & 32'h00000fff): reg_rd_data = 32'h8 ;
     (32'hc8 & 32'h00000fff): reg_rd_data = 32'h3 ;
     (32'hcc & 32'h00000fff): reg_rd_data = 32'h1c0006 ;
     (32'hd0 & 32'h00000fff): reg_rd_data = 32'h0 ;
     (32'hd4 & 32'h00000fff): reg_rd_data = 32'h10 ;
     (32'hd8 & 32'h00000fff): reg_rd_data = 32'h10 ;
     (32'hdc & 32'h00000fff): reg_rd_data = 32'h10 ;
     (32'he0 & 32'h00000fff): reg_rd_data = 32'h8 ;
     (32'he4 & 32'h00000fff): reg_rd_data = 32'h8 ;
     (32'he8 & 32'h00000fff): reg_rd_data = 32'h3 ;
     (32'hec & 32'h00000fff): reg_rd_data = 32'h200007 ;
     (32'hf0 & 32'h00000fff): reg_rd_data = 32'h0 ;
     (32'hf4 & 32'h00000fff): reg_rd_data = 32'h0 ;
     (32'hf8 & 32'h00000fff): reg_rd_data = 32'h10 ;
     (32'hfc & 32'h00000fff): reg_rd_data = 32'h10 ;
     (32'h100 & 32'h00000fff): reg_rd_data = 32'h8 ;
     (32'h104 & 32'h00000fff): reg_rd_data = 32'h8 ;
     (32'h108 & 32'h00000fff): reg_rd_data = 32'h3 ;
     (32'h10c & 32'h00000fff): reg_rd_data = 32'h0 ;
     (32'h110 & 32'h00000fff): reg_rd_data = 32'he0008 ;
     (32'h114 & 32'h00000fff): reg_rd_data = 32'h0 ;
     (32'h118 & 32'h00000fff): reg_rd_data = 32'h0 ;
     (32'h11c & 32'h00000fff): reg_rd_data = 32'h8 ;
     (32'h120 & 32'h00000fff): reg_rd_data = 32'h9 ;
     (32'h124 & 32'h00000fff): reg_rd_data = 32'h200009 ;
     (32'h128 & 32'h00000fff): reg_rd_data = 32'h0 ;
     (32'h12c & 32'h00000fff): reg_rd_data = 32'h18 ;
     (32'h130 & 32'h00000fff): reg_rd_data = 32'h10 ;
     (32'h134 & 32'h00000fff): reg_rd_data = 32'h10 ;
     (32'h138 & 32'h00000fff): reg_rd_data = 32'h3 ;
     (32'h13c & 32'h00000fff): reg_rd_data = 32'h0 ;
     (32'h140 & 32'h00000fff): reg_rd_data = 32'h1 ;
     (32'h144 & 32'h00000fff): reg_rd_data = 32'h1 ;
     (32'h148 & 32'h00000fff): reg_rd_data = 32'h0 ;
     (32'h14c & 32'h00000fff): reg_rd_data = 32'he000a ;
     (32'h150 & 32'h00000fff): reg_rd_data = 32'h0 ;
     (32'h154 & 32'h00000fff): reg_rd_data = 32'h0 ;
     (32'h158 & 32'h00000fff): reg_rd_data = 32'h8 ;
     (32'h15c & 32'h00000fff): reg_rd_data = 32'hb ;
     (32'h160 & 32'h00000fff): reg_rd_data = 32'h10000b ;
     (32'h164 & 32'h00000fff): reg_rd_data = 32'h0 ;
     (32'h168 & 32'h00000fff): reg_rd_data = 32'h0 ;
     (32'h16c & 32'h00000fff): reg_rd_data = 32'h10 ;
     (32'h170 & 32'h00000fff): reg_rd_data = 32'h1 ;
     (32'h174 & 32'h00000fff): reg_rd_data = 32'he000c ;
     (32'h178 & 32'h00000fff): reg_rd_data = 32'h0 ;
     (32'h17c & 32'h00000fff): reg_rd_data = 32'h0 ;
     (32'h180 & 32'h00000fff): reg_rd_data = 32'h8 ;
     (32'h184 & 32'h00000fff): reg_rd_data = 32'hd ;
     (32'h188 & 32'h00000fff): reg_rd_data = 32'h10000d ;
     (32'h18c & 32'h00000fff): reg_rd_data = 32'h0 ;
     (32'h190 & 32'h00000fff): reg_rd_data = 32'h0 ;
     (32'h194 & 32'h00000fff): reg_rd_data = 32'h10 ;
     (32'h198 & 32'h00000fff): reg_rd_data = 32'h1 ;
     (32'h19c & 32'h00000fff): reg_rd_data = 32'h0 ;
    default: reg_rd_data = {32{1'b0}};
  endcase
end
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//// VCS coverage off
//initial begin
// arreggen_dump = $test$plusargs("arreggen_dump_wr");
// arreggen_abort_on_rowr = $test$plusargs("arreggen_abort_on_rowr");
// arreggen_abort_on_invalid_wr = $test$plusargs("arreggen_abort_on_invalid_wr");
// $timeformat(-9, 2, "ns", 15);
//end
//
//always @(posedge nvdla_core_clk) begin
// if (reg_wr_en) begin
// case(reg_offset)
// (32'h088 & 32'h00000fff): begin
// if (arreggen_dump) $display("%t:%m: read-only reg wr: NVDLA_PDP_D_INF_INPUT_NUM_0 = 0x%h", $time, reg_wr_data);
// if (arreggen_abort_on_rowr) begin $display("ERROR: write to read-only register!"); $finish; end
// end
// default: begin
// if (arreggen_dump) $display("%t:%m: reg wr: Unknown register (0x%h) = 0x%h", $time, reg_offset, reg_wr_data);
// if (arreggen_abort_on_invalid_wr) begin $display("ERROR: write to undefined register!"); $finish; end
// end
// endcase
// end
//end
//
//// VCS coverage on
//// synopsys translate_on
endmodule