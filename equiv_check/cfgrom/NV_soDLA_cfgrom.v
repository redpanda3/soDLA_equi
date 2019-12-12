module NV_soDLA_CFGROM_rom( // @[:@3.2]
  output [31:0] io_reg_rd_data, // @[:@6.4]
  input  [11:0] io_reg_offset // @[:@6.4]
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
  assign _GEN_0 = {{20'd0}, io_reg_offset}; // @[Mux.scala 46:19:@8.4]
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
  assign io_reg_rd_data = _T_430 ? 32'h10001 : _T_429; // @[NV_NVDLA_CFGROM_rom.scala 16:20:@216.4]
endmodule
module NV_soDLA_CSB_LOGIC( // @[:@218.2]
  input         reset, // @[:@220.4]
  input         io_clk, // @[:@221.4]
  input         io_csb2dp_req_valid, // @[:@221.4]
  input  [62:0] io_csb2dp_req_bits, // @[:@221.4]
  output        io_csb2dp_resp_valid, // @[:@221.4]
  output [33:0] io_csb2dp_resp_bits, // @[:@221.4]
  input  [31:0] io_reg_rd_data, // @[:@221.4]
  output [11:0] io_reg_offset, // @[:@221.4]
  output        io_reg_wr_en // @[:@221.4]
);
  reg  req_pvld; // @[NV_NVDLA_CSB_LOGIC.scala 46:27:@223.4]
  reg [31:0] _RAND_0;
  reg [62:0] req_pd; // @[NV_NVDLA_CSB_LOGIC.scala 47:25:@224.4]
  reg [63:0] _RAND_1;
  wire [62:0] _GEN_0; // @[NV_NVDLA_CSB_LOGIC.scala 50:30:@226.4]
  wire [21:0] req_addr; // @[NV_NVDLA_CSB_LOGIC.scala 55:26:@229.4]
  wire  req_write; // @[NV_NVDLA_CSB_LOGIC.scala 57:27:@231.4]
  wire  req_nposted; // @[NV_NVDLA_CSB_LOGIC.scala 58:29:@232.4]
  wire [23:0] _T_47; // @[Cat.scala 30:58:@237.4]
  wire  _T_49; // @[NV_NVDLA_CSB_LOGIC.scala 69:32:@242.4]
  wire  reg_rd_en; // @[NV_NVDLA_CSB_LOGIC.scala 69:30:@243.4]
  wire [33:0] csb_rresp_pd_w; // @[Cat.scala 30:58:@245.4]
  reg [33:0] csb2dp_resp_pd_out; // @[NV_NVDLA_CSB_LOGIC.scala 84:37:@248.4]
  reg [63:0] _RAND_2;
  reg  csb2dp_resp_valid_out; // @[NV_NVDLA_CSB_LOGIC.scala 85:40:@249.4]
  reg [31:0] _RAND_3;
  wire  _T_58; // @[NV_NVDLA_CSB_LOGIC.scala 90:28:@254.6]
  wire [33:0] _GEN_1; // @[NV_NVDLA_CSB_LOGIC.scala 90:42:@255.6]
  wire [33:0] _GEN_2; // @[NV_NVDLA_CSB_LOGIC.scala 87:20:@250.4]
  wire  _T_60; // @[NV_NVDLA_CSB_LOGIC.scala 93:59:@259.4]
  assign _GEN_0 = io_csb2dp_req_valid ? io_csb2dp_req_bits : req_pd; // @[NV_NVDLA_CSB_LOGIC.scala 50:30:@226.4]
  assign req_addr = req_pd[21:0]; // @[NV_NVDLA_CSB_LOGIC.scala 55:26:@229.4]
  assign req_write = req_pd[54]; // @[NV_NVDLA_CSB_LOGIC.scala 57:27:@231.4]
  assign req_nposted = req_pd[55]; // @[NV_NVDLA_CSB_LOGIC.scala 58:29:@232.4]
  assign _T_47 = {req_addr,2'h0}; // @[Cat.scala 30:58:@237.4]
  assign _T_49 = ~ req_write; // @[NV_NVDLA_CSB_LOGIC.scala 69:32:@242.4]
  assign reg_rd_en = req_pvld & _T_49; // @[NV_NVDLA_CSB_LOGIC.scala 69:30:@243.4]
  assign csb_rresp_pd_w = {2'h0,io_reg_rd_data}; // @[Cat.scala 30:58:@245.4]
  assign _T_58 = io_reg_wr_en & req_nposted; // @[NV_NVDLA_CSB_LOGIC.scala 90:28:@254.6]
  assign _GEN_1 = _T_58 ? 34'h200000000 : csb2dp_resp_pd_out; // @[NV_NVDLA_CSB_LOGIC.scala 90:42:@255.6]
  assign _GEN_2 = reg_rd_en ? csb_rresp_pd_w : _GEN_1; // @[NV_NVDLA_CSB_LOGIC.scala 87:20:@250.4]
  assign _T_60 = _T_58 | reg_rd_en; // @[NV_NVDLA_CSB_LOGIC.scala 93:59:@259.4]
  assign io_csb2dp_resp_valid = csb2dp_resp_valid_out; // @[NV_NVDLA_CSB_LOGIC.scala 96:26:@262.4]
  assign io_csb2dp_resp_bits = csb2dp_resp_pd_out; // @[NV_NVDLA_CSB_LOGIC.scala 95:25:@261.4]
  assign io_reg_offset = _T_47[11:0]; // @[NV_NVDLA_CSB_LOGIC.scala 66:19:@238.4]
  assign io_reg_wr_en = req_pvld & req_write; // @[NV_NVDLA_CSB_LOGIC.scala 68:18:@241.4]
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
  req_pvld = _RAND_0[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_1 = {2{`RANDOM}};
  req_pd = _RAND_1[62:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_2 = {2{`RANDOM}};
  csb2dp_resp_pd_out = _RAND_2[33:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_3 = {1{`RANDOM}};
  csb2dp_resp_valid_out = _RAND_3[0:0];
  `endif // RANDOMIZE_REG_INIT
  end
`endif // RANDOMIZE
  always @(posedge io_clk) begin
    if (reset) begin
      req_pvld <= 1'h0;
    end else begin
      req_pvld <= io_csb2dp_req_valid;
    end
    if (reset) begin
      req_pd <= 63'h0;
    end else begin
      if (io_csb2dp_req_valid) begin
        req_pd <= io_csb2dp_req_bits;
      end
    end
    if (reset) begin
      csb2dp_resp_pd_out <= 34'h0;
    end else begin
      if (reg_rd_en) begin
        csb2dp_resp_pd_out <= csb_rresp_pd_w;
      end else begin
        if (_T_58) begin
          csb2dp_resp_pd_out <= 34'h200000000;
        end
      end
    end
    if (reset) begin
      csb2dp_resp_valid_out <= 1'h0;
    end else begin
      csb2dp_resp_valid_out <= _T_60;
    end
  end
endmodule
module NV_soDLA_cfgrom( // @[:@264.2]
  input         nvdla_core_clk, // @[:@267.4]
  input         nvdla_core_rstn, // @[:@267.4]
  output        csb2cfgrom_req_prdy, // @[:@267.4]
  input         csb2cfgrom_req_pvld, // @[:@267.4]
  input  [62:0] csb2cfgrom_req_pd, // @[:@267.4]
  output        cfgrom2csb_resp_valid, // @[:@267.4]
  output [33:0] cfgrom2csb_resp_pd // @[:@267.4]
);
  wire [31:0] u_NV_soDLA_CFGROM_rom_io_reg_rd_data; // @[NV_NVDLA_cfgrom.scala 48:39:@273.4]
  wire [11:0] u_NV_soDLA_CFGROM_rom_io_reg_offset; // @[NV_NVDLA_cfgrom.scala 48:39:@273.4]
  wire  csb_logic_reset; // @[NV_NVDLA_cfgrom.scala 61:27:@281.4]
  wire  csb_logic_io_clk; // @[NV_NVDLA_cfgrom.scala 61:27:@281.4]
  wire  csb_logic_io_csb2dp_req_valid; // @[NV_NVDLA_cfgrom.scala 61:27:@281.4]
  wire [62:0] csb_logic_io_csb2dp_req_bits; // @[NV_NVDLA_cfgrom.scala 61:27:@281.4]
  wire  csb_logic_io_csb2dp_resp_valid; // @[NV_NVDLA_cfgrom.scala 61:27:@281.4]
  wire [33:0] csb_logic_io_csb2dp_resp_bits; // @[NV_NVDLA_cfgrom.scala 61:27:@281.4]
  wire [31:0] csb_logic_io_reg_rd_data; // @[NV_NVDLA_cfgrom.scala 61:27:@281.4]
  wire [11:0] csb_logic_io_reg_offset; // @[NV_NVDLA_cfgrom.scala 61:27:@281.4]
  wire  csb_logic_io_reg_wr_en; // @[NV_NVDLA_cfgrom.scala 61:27:@281.4]
  wire [23:0] reg_offset; // @[NV_NVDLA_cfgrom.scala 44:26:@270.4 NV_NVDLA_cfgrom.scala 64:16:@290.4]
  NV_soDLA_CFGROM_rom u_NV_soDLA_CFGROM_rom ( // @[NV_NVDLA_cfgrom.scala 48:39:@273.4]
    .io_reg_rd_data(u_NV_soDLA_CFGROM_rom_io_reg_rd_data),
    .io_reg_offset(u_NV_soDLA_CFGROM_rom_io_reg_offset)
  );
  NV_soDLA_CSB_LOGIC csb_logic ( // @[NV_NVDLA_cfgrom.scala 61:27:@281.4]
    .reset(csb_logic_reset),
    .io_clk(csb_logic_io_clk),
    .io_csb2dp_req_valid(csb_logic_io_csb2dp_req_valid),
    .io_csb2dp_req_bits(csb_logic_io_csb2dp_req_bits),
    .io_csb2dp_resp_valid(csb_logic_io_csb2dp_resp_valid),
    .io_csb2dp_resp_bits(csb_logic_io_csb2dp_resp_bits),
    .io_reg_rd_data(csb_logic_io_reg_rd_data),
    .io_reg_offset(csb_logic_io_reg_offset),
    .io_reg_wr_en(csb_logic_io_reg_wr_en)
  );
  assign reg_offset = {{12'd0}, csb_logic_io_reg_offset}; // @[NV_NVDLA_cfgrom.scala 44:26:@270.4 NV_NVDLA_cfgrom.scala 64:16:@290.4]
  assign csb2cfgrom_req_prdy = 1'h1; // @[NV_NVDLA_cfgrom.scala 63:25:@289.4]
  assign cfgrom2csb_resp_valid = csb_logic_io_csb2dp_resp_valid; // @[NV_NVDLA_cfgrom.scala 63:25:@286.4]
  assign cfgrom2csb_resp_pd = csb_logic_io_csb2dp_resp_bits; // @[NV_NVDLA_cfgrom.scala 63:25:@285.4]
  assign u_NV_soDLA_CFGROM_rom_io_reg_offset = reg_offset[11:0]; // @[NV_NVDLA_cfgrom.scala 51:41:@278.4]
  assign csb_logic_reset = nvdla_core_rstn == 1'h0; // @[:@283.4]
  assign csb_logic_io_clk = nvdla_core_clk; // @[NV_NVDLA_cfgrom.scala 62:22:@284.4]
  assign csb_logic_io_csb2dp_req_valid = csb2cfgrom_req_pvld; // @[NV_NVDLA_cfgrom.scala 63:25:@288.4]
  assign csb_logic_io_csb2dp_req_bits = csb2cfgrom_req_pd; // @[NV_NVDLA_cfgrom.scala 63:25:@287.4]
  assign csb_logic_io_reg_rd_data = u_NV_soDLA_CFGROM_rom_io_reg_rd_data; // @[NV_NVDLA_cfgrom.scala 67:30:@293.4]
endmodule



// ================================================================
// NVDLA Open Source Project
// 
// Copyright(c) 2016 - 2017 NVIDIA Corporation.  Licensed under the
// NVDLA Open Hardware License; Check "LICENSE" which comes with 
// this distribution for more information.
// ================================================================

// File Name: NV_NVDLA_cfgrom.v

`include "simulate_x_tick.vh"
module NV_NVDLA_cfgrom (
   nvdla_core_clk     
  ,nvdla_core_rstn    
  ,csb2cfgrom_req_pd  
  ,csb2cfgrom_req_pvld
  ,csb2cfgrom_req_prdy
  ,cfgrom2csb_resp_pd 
  ,cfgrom2csb_resp_valid
  );

input         nvdla_core_clk;
input         nvdla_core_rstn;
input  [62:0] csb2cfgrom_req_pd;
input         csb2cfgrom_req_pvld;
output        csb2cfgrom_req_prdy;
output [33:0] cfgrom2csb_resp_pd;
output        cfgrom2csb_resp_valid;
/////////////////////////////////////////////
wire          csb_rresp_error;
wire   [33:0] csb_rresp_pd_w;
wire   [31:0] csb_rresp_rdat;
wire          csb_wresp_error;
wire   [33:0] csb_wresp_pd_w;
wire   [31:0] csb_wresp_rdat;
wire   [23:0] reg_offset;
wire   [31:0] reg_rd_data;
wire          reg_rd_en;
wire   [31:0] reg_wr_data;
wire          reg_wr_en;
wire   [21:0] req_addr;
wire    [1:0] req_level;
wire          req_nposted;
wire          req_srcpriv;
wire   [31:0] req_wdat;
wire    [3:0] req_wrbe;
wire          req_write;
reg    [33:0] cfgrom2csb_resp_pd;
reg           cfgrom2csb_resp_valid;
reg    [62:0] req_pd;
reg           req_pvld;
////////////////////////////////////////////////////////////////////////

NV_NVDLA_CFGROM_rom u_NV_NVDLA_CFGROM_rom (
   .reg_rd_data             (reg_rd_data[31:0])
  ,.reg_offset              (reg_offset[11:0]) 
  ,.reg_wr_data             (reg_wr_data[31:0])
  ,.reg_wr_en               (reg_wr_en)        
  ,.nvdla_core_clk          (nvdla_core_clk)      
  ,.nvdla_core_rstn         (nvdla_core_rstn)     
  );
////////////////////////////////////////////////////////////////////////
//                                                                    //
// GENERATE CSB TO REGISTER CONNECTION LOGIC                          //
//                                                                    //
////////////////////////////////////////////////////////////////////////

always @(posedge nvdla_core_clk or negedge nvdla_core_rstn) begin
  if (!nvdla_core_rstn) begin
    req_pvld <= 1'b0;
  end else begin
  req_pvld <= csb2cfgrom_req_pvld;
  end
end
always @(posedge nvdla_core_clk or negedge nvdla_core_rstn) begin
  if (!nvdla_core_rstn) begin
    req_pd <= {63{1'b0}};
  end else begin
  if ((csb2cfgrom_req_pvld) == 1'b1) begin
    req_pd <= csb2cfgrom_req_pd;
  end
  end
end


// PKT_UNPACK_WIRE( csb2xx_16m_be_lvl ,  req_ ,  req_pd )
assign        req_addr[21:0] =     req_pd[21:0];
assign        req_wdat[31:0] =     req_pd[53:22];
assign         req_write  =     req_pd[54];
assign         req_nposted  =     req_pd[55];
assign         req_srcpriv  =     req_pd[56];
assign        req_wrbe[3:0] =     req_pd[60:57];
assign        req_level[1:0] =     req_pd[62:61];

assign csb2cfgrom_req_prdy = 1'b1;


//Address in CSB master is word aligned while address in regfile is byte aligned.
assign reg_offset = {req_addr, 2'b0};
assign reg_wr_data = req_wdat;
assign reg_wr_en = req_pvld & req_write;
assign reg_rd_en = req_pvld & ~req_write;


assign       csb_rresp_pd_w[31:0] =     csb_rresp_rdat[31:0];
assign       csb_rresp_pd_w[32] =     csb_rresp_error ;

assign   csb_rresp_pd_w[33:33] = 1'd0  /* PKT_nvdla_xx2csb_resp_dla_xx2csb_rd_erpt_ID  */ ;

assign       csb_wresp_pd_w[31:0] =     csb_wresp_rdat[31:0];
assign       csb_wresp_pd_w[32] =     csb_wresp_error ;

assign   csb_wresp_pd_w[33:33] = 1'd1  /* PKT_nvdla_xx2csb_resp_dla_xx2csb_wr_erpt_ID  */ ;

assign csb_rresp_rdat = reg_rd_data;
assign csb_rresp_error = 1'b0;
assign csb_wresp_rdat = {32{1'b0}};
assign csb_wresp_error = 1'b0;

always @(posedge nvdla_core_clk or negedge nvdla_core_rstn) begin
  if (!nvdla_core_rstn) begin
    cfgrom2csb_resp_pd <= {34{1'b0}};
  end else begin
    if(reg_rd_en)
    begin
        cfgrom2csb_resp_pd <= csb_rresp_pd_w;
    end
    else if(reg_wr_en & req_nposted)
    begin
        cfgrom2csb_resp_pd <= csb_wresp_pd_w;
    end
  end
end

always @(posedge nvdla_core_clk or negedge nvdla_core_rstn) begin
  if (!nvdla_core_rstn) begin
    cfgrom2csb_resp_valid <= 1'b0;
  end else begin
    cfgrom2csb_resp_valid <= (reg_wr_en & req_nposted) | reg_rd_en;
  end
end


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
input [11:0]  reg_offset;
input [31:0]  reg_wr_data;  //(UNUSED_DEC)
input         reg_wr_en;
input         nvdla_core_clk;
input         nvdla_core_rstn;
//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//// leda FM_2_23 off
//reg           arreggen_abort_on_invalid_wr;
//reg           arreggen_abort_on_rowr;
//reg           arreggen_dump;
//// leda FM_2_23 on
reg    [31:0] reg_rd_data;
//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
always @(*) begin
  case (reg_offset)
     (NVDLA_CFGROM_CFGROM_HW_VERSION_0 & 32'h00000fff): reg_rd_data =  32'h10001 ;
     (NVDLA_CFGROM_CFGROM_GLB_DESC_0 & 32'h00000fff): reg_rd_data =  32'h1 ;
     (NVDLA_CFGROM_CFGROM_CIF_DESC_0 & 32'h00000fff): reg_rd_data =  32'h180002 ;
     (NVDLA_CFGROM_CFGROM_CIF_CAP_INCOMPAT_0 & 32'h00000fff): reg_rd_data =  32'h0 ;
     (NVDLA_CFGROM_CFGROM_CIF_CAP_COMPAT_0 & 32'h00000fff): reg_rd_data =  32'h0 ;
     (NVDLA_CFGROM_CFGROM_CIF_BASE_WIDTH_0 & 32'h00000fff): reg_rd_data =  32'h8 ;
     (NVDLA_CFGROM_CFGROM_CIF_BASE_LATENCY_0 & 32'h00000fff): reg_rd_data =  32'h32 ;
     (NVDLA_CFGROM_CFGROM_CIF_BASE_BURST_LENGTH_MAX_0 & 32'h00000fff): reg_rd_data =  32'h80 ;
     (NVDLA_CFGROM_CFGROM_CIF_BASE_MEM_ADDR_WIDTH_0 & 32'h00000fff): reg_rd_data =  32'h400 ;
     (NVDLA_CFGROM_CFGROM_CDMA_DESC_0 & 32'h00000fff): reg_rd_data =  32'h340003 ;
     (NVDLA_CFGROM_CFGROM_CDMA_CAP_INCOMPAT_0 & 32'h00000fff): reg_rd_data =  32'h0 ;
     (NVDLA_CFGROM_CFGROM_CDMA_CAP_COMPAT_0 & 32'h00000fff): reg_rd_data =  32'h10 ;
     (NVDLA_CFGROM_CFGROM_CDMA_BASE_FEATURE_TYPES_0 & 32'h00000fff): reg_rd_data =  32'h10 ;
     (NVDLA_CFGROM_CFGROM_CDMA_BASE_WEIGHT_TYPES_0 & 32'h00000fff): reg_rd_data =  32'h10 ;
     (NVDLA_CFGROM_CFGROM_CDMA_BASE_ATOMIC_C_0 & 32'h00000fff): reg_rd_data =  32'h8 ;
     (NVDLA_CFGROM_CFGROM_CDMA_BASE_ATOMIC_K_0 & 32'h00000fff): reg_rd_data =  32'h8 ;
     (NVDLA_CFGROM_CFGROM_CDMA_BASE_ATOMIC_M_0 & 32'h00000fff): reg_rd_data =  32'h8 ;
     (NVDLA_CFGROM_CFGROM_CDMA_BASE_CBUF_BANK_NUM_0 & 32'h00000fff): reg_rd_data =  32'h20 ;
     (NVDLA_CFGROM_CFGROM_CDMA_BASE_CBUF_BANK_WIDTH_0 & 32'h00000fff): reg_rd_data =  32'h8 ;
     (NVDLA_CFGROM_CFGROM_CDMA_BASE_CBUF_BANK_DEPTH_0 & 32'h00000fff): reg_rd_data =  32'h200 ;
     (NVDLA_CFGROM_CFGROM_CDMA_MULTI_BATCH_MAX_0 & 32'h00000fff): reg_rd_data =  32'h0 ;
     (NVDLA_CFGROM_CFGROM_CDMA_IMAGE_IN_FORMATS_PACKED_0 & 32'h00000fff): reg_rd_data =  32'hcfff001 ;
     (NVDLA_CFGROM_CFGROM_CDMA_IMAGE_IN_FORMATS_SEMI_0 & 32'h00000fff): reg_rd_data =  32'h3 ;
     (NVDLA_CFGROM_CFGROM_CBUF_DESC_0 & 32'h00000fff): reg_rd_data =  32'h180004 ;
     (NVDLA_CFGROM_CFGROM_CBUF_CAP_INCOMPAT_0 & 32'h00000fff): reg_rd_data =  32'h0 ;
     (NVDLA_CFGROM_CFGROM_CBUF_CAP_COMPAT_0 & 32'h00000fff): reg_rd_data =  32'h0 ;
     (NVDLA_CFGROM_CFGROM_CBUF_BASE_CBUF_BANK_NUM_0 & 32'h00000fff): reg_rd_data =  32'h20 ;
     (NVDLA_CFGROM_CFGROM_CBUF_BASE_CBUF_BANK_WIDTH_0 & 32'h00000fff): reg_rd_data =  32'h8 ;
     (NVDLA_CFGROM_CFGROM_CBUF_BASE_CBUF_BANK_DEPTH_0 & 32'h00000fff): reg_rd_data =  32'h200 ;
     (NVDLA_CFGROM_CFGROM_CBUF_BASE_CDMA_ID_0 & 32'h00000fff): reg_rd_data =  32'h3 ;
     (NVDLA_CFGROM_CFGROM_CSC_DESC_0 & 32'h00000fff): reg_rd_data =  32'h300005 ;
     (NVDLA_CFGROM_CFGROM_CSC_CAP_INCOMPAT_0 & 32'h00000fff): reg_rd_data =  32'h0 ;
     (NVDLA_CFGROM_CFGROM_CSC_CAP_COMPAT_0 & 32'h00000fff): reg_rd_data =  32'h10 ;
     (NVDLA_CFGROM_CFGROM_CSC_BASE_FEATURE_TYPES_0 & 32'h00000fff): reg_rd_data =  32'h10 ;
     (NVDLA_CFGROM_CFGROM_CSC_BASE_WEIGHT_TYPES_0 & 32'h00000fff): reg_rd_data =  32'h10 ;
     (NVDLA_CFGROM_CFGROM_CSC_BASE_ATOMIC_C_0 & 32'h00000fff): reg_rd_data =  32'h8 ;
     (NVDLA_CFGROM_CFGROM_CSC_BASE_ATOMIC_K_0 & 32'h00000fff): reg_rd_data =  32'h8 ;
     (NVDLA_CFGROM_CFGROM_CSC_BASE_ATOMIC_M_0 & 32'h00000fff): reg_rd_data =  32'h8 ;
     (NVDLA_CFGROM_CFGROM_CSC_BASE_CBUF_BANK_NUM_0 & 32'h00000fff): reg_rd_data =  32'h20 ;
     (NVDLA_CFGROM_CFGROM_CSC_BASE_CBUF_BANK_WIDTH_0 & 32'h00000fff): reg_rd_data =  32'h8 ;
     (NVDLA_CFGROM_CFGROM_CSC_BASE_CBUF_BANK_DEPTH_0 & 32'h00000fff): reg_rd_data =  32'h200 ;
     (NVDLA_CFGROM_CFGROM_CSC_BASE_CDMA_ID_0 & 32'h00000fff): reg_rd_data =  32'h3 ;
     (NVDLA_CFGROM_CFGROM_CSC_MULTI_BATCH_MAX_0 & 32'h00000fff): reg_rd_data =  32'h0 ;
     (NVDLA_CFGROM_CFGROM_CMAC_A_DESC_0 & 32'h00000fff): reg_rd_data =  32'h1c0006 ;
     (NVDLA_CFGROM_CFGROM_CMAC_A_CAP_INCOMPAT_0 & 32'h00000fff): reg_rd_data =  32'h0 ;
     (NVDLA_CFGROM_CFGROM_CMAC_A_CAP_COMPAT_0 & 32'h00000fff): reg_rd_data =  32'h10 ;
     (NVDLA_CFGROM_CFGROM_CMAC_A_BASE_FEATURE_TYPES_0 & 32'h00000fff): reg_rd_data =  32'h10 ;
     (NVDLA_CFGROM_CFGROM_CMAC_A_BASE_WEIGHT_TYPES_0 & 32'h00000fff): reg_rd_data =  32'h10 ;
     (NVDLA_CFGROM_CFGROM_CMAC_A_BASE_ATOMIC_C_0 & 32'h00000fff): reg_rd_data =  32'h8 ;
     (NVDLA_CFGROM_CFGROM_CMAC_A_BASE_ATOMIC_K_0 & 32'h00000fff): reg_rd_data =  32'h8 ;
     (NVDLA_CFGROM_CFGROM_CMAC_A_BASE_CDMA_ID_0 & 32'h00000fff): reg_rd_data =  32'h3 ;
     (NVDLA_CFGROM_CFGROM_CMAC_B_DESC_0 & 32'h00000fff): reg_rd_data =  32'h1c0006 ;
     (NVDLA_CFGROM_CFGROM_CMAC_B_CAP_INCOMPAT_0 & 32'h00000fff): reg_rd_data =  32'h0 ;
     (NVDLA_CFGROM_CFGROM_CMAC_B_CAP_COMPAT_0 & 32'h00000fff): reg_rd_data =  32'h10 ;
     (NVDLA_CFGROM_CFGROM_CMAC_B_BASE_FEATURE_TYPES_0 & 32'h00000fff): reg_rd_data =  32'h10 ;
     (NVDLA_CFGROM_CFGROM_CMAC_B_BASE_WEIGHT_TYPES_0 & 32'h00000fff): reg_rd_data =  32'h10 ;
     (NVDLA_CFGROM_CFGROM_CMAC_B_BASE_ATOMIC_C_0 & 32'h00000fff): reg_rd_data =  32'h8 ;
     (NVDLA_CFGROM_CFGROM_CMAC_B_BASE_ATOMIC_K_0 & 32'h00000fff): reg_rd_data =  32'h8 ;
     (NVDLA_CFGROM_CFGROM_CMAC_B_BASE_CDMA_ID_0 & 32'h00000fff): reg_rd_data =  32'h3 ;
     (NVDLA_CFGROM_CFGROM_CACC_DESC_0 & 32'h00000fff): reg_rd_data =  32'h200007 ;
     (NVDLA_CFGROM_CFGROM_CACC_CAP_INCOMPAT_0 & 32'h00000fff): reg_rd_data =  32'h0 ;
     (NVDLA_CFGROM_CFGROM_CACC_CAP_COMPAT_0 & 32'h00000fff): reg_rd_data =  32'h0 ;
     (NVDLA_CFGROM_CFGROM_CACC_BASE_FEATURE_TYPES_0 & 32'h00000fff): reg_rd_data =  32'h10 ;
     (NVDLA_CFGROM_CFGROM_CACC_BASE_WEIGHT_TYPES_0 & 32'h00000fff): reg_rd_data =  32'h10 ;
     (NVDLA_CFGROM_CFGROM_CACC_BASE_ATOMIC_C_0 & 32'h00000fff): reg_rd_data =  32'h8 ;
     (NVDLA_CFGROM_CFGROM_CACC_BASE_ATOMIC_K_0 & 32'h00000fff): reg_rd_data =  32'h8 ;
     (NVDLA_CFGROM_CFGROM_CACC_BASE_CDMA_ID_0 & 32'h00000fff): reg_rd_data =  32'h3 ;
     (NVDLA_CFGROM_CFGROM_CACC_MULTI_BATCH_MAX_0 & 32'h00000fff): reg_rd_data =  32'h0 ;
     (NVDLA_CFGROM_CFGROM_SDP_RDMA_DESC_0 & 32'h00000fff): reg_rd_data =  32'he0008 ;
     (NVDLA_CFGROM_CFGROM_SDP_RDMA_CAP_INCOMPAT_0 & 32'h00000fff): reg_rd_data =  32'h0 ;
     (NVDLA_CFGROM_CFGROM_SDP_RDMA_CAP_COMPAT_0 & 32'h00000fff): reg_rd_data =  32'h0 ;
     (NVDLA_CFGROM_CFGROM_SDP_RDMA_BASE_ATOMIC_M_0 & 32'h00000fff): reg_rd_data =  32'h8 ;
     (NVDLA_CFGROM_CFGROM_SDP_RDMA_BASE_SDP_ID_0 & 32'h00000fff): reg_rd_data =  32'h9 ;
     (NVDLA_CFGROM_CFGROM_SDP_DESC_0 & 32'h00000fff): reg_rd_data =  32'h200009 ;
     (NVDLA_CFGROM_CFGROM_SDP_CAP_INCOMPAT_0 & 32'h00000fff): reg_rd_data =  32'h0 ;
     (NVDLA_CFGROM_CFGROM_SDP_CAP_COMPAT_0 & 32'h00000fff): reg_rd_data =  32'h18 ;
     (NVDLA_CFGROM_CFGROM_SDP_BASE_FEATURE_TYPES_0 & 32'h00000fff): reg_rd_data =  32'h10 ;
     (NVDLA_CFGROM_CFGROM_SDP_BASE_WEIGHT_TYPES_0 & 32'h00000fff): reg_rd_data =  32'h10 ;
     (NVDLA_CFGROM_CFGROM_SDP_BASE_CDMA_ID_0 & 32'h00000fff): reg_rd_data =  32'h3 ;
     (NVDLA_CFGROM_CFGROM_SDP_MULTI_BATCH_MAX_0 & 32'h00000fff): reg_rd_data =  32'h0 ;
     (NVDLA_CFGROM_CFGROM_SDP_BS_THROUGHPUT_0 & 32'h00000fff): reg_rd_data =  32'h1 ;
     (NVDLA_CFGROM_CFGROM_SDP_BN_THROUGHPUT_0 & 32'h00000fff): reg_rd_data =  32'h1 ;
     (NVDLA_CFGROM_CFGROM_SDP_EW_THROUGHPUT_0 & 32'h00000fff): reg_rd_data =  32'h0 ;
     (NVDLA_CFGROM_CFGROM_PDP_RDMA_DESC_0 & 32'h00000fff): reg_rd_data =  32'he000a ;
     (NVDLA_CFGROM_CFGROM_PDP_RDMA_CAP_INCOMPAT_0 & 32'h00000fff): reg_rd_data =  32'h0 ;
     (NVDLA_CFGROM_CFGROM_PDP_RDMA_CAP_COMPAT_0 & 32'h00000fff): reg_rd_data =  32'h0 ;
     (NVDLA_CFGROM_CFGROM_PDP_RDMA_BASE_ATOMIC_M_0 & 32'h00000fff): reg_rd_data =  32'h8 ;
     (NVDLA_CFGROM_CFGROM_PDP_RDMA_BASE_PDP_ID_0 & 32'h00000fff): reg_rd_data =  32'hb ;
     (NVDLA_CFGROM_CFGROM_PDP_DESC_0 & 32'h00000fff): reg_rd_data =  32'h10000b ;
     (NVDLA_CFGROM_CFGROM_PDP_CAP_INCOMPAT_0 & 32'h00000fff): reg_rd_data =  32'h0 ;
     (NVDLA_CFGROM_CFGROM_PDP_CAP_COMPAT_0 & 32'h00000fff): reg_rd_data =  32'h0 ;
     (NVDLA_CFGROM_CFGROM_PDP_BASE_FEATURE_TYPES_0 & 32'h00000fff): reg_rd_data =  32'h10 ;
     (NVDLA_CFGROM_CFGROM_PDP_BASE_THROUGHPUT_0 & 32'h00000fff): reg_rd_data =  32'h1 ;
     (NVDLA_CFGROM_CFGROM_CDP_RDMA_DESC_0 & 32'h00000fff): reg_rd_data =  32'he000c ;
     (NVDLA_CFGROM_CFGROM_CDP_RDMA_CAP_INCOMPAT_0 & 32'h00000fff): reg_rd_data =  32'h0 ;
     (NVDLA_CFGROM_CFGROM_CDP_RDMA_CAP_COMPAT_0 & 32'h00000fff): reg_rd_data =  32'h0 ;
     (NVDLA_CFGROM_CFGROM_CDP_RDMA_BASE_ATOMIC_M_0 & 32'h00000fff): reg_rd_data =  32'h8 ;
     (NVDLA_CFGROM_CFGROM_CDP_RDMA_BASE_CDP_ID_0 & 32'h00000fff): reg_rd_data =  32'hd ;
     (NVDLA_CFGROM_CFGROM_CDP_DESC_0 & 32'h00000fff): reg_rd_data =  32'h10000d ;
     (NVDLA_CFGROM_CFGROM_CDP_CAP_INCOMPAT_0 & 32'h00000fff): reg_rd_data =  32'h0 ;
     (NVDLA_CFGROM_CFGROM_CDP_CAP_COMPAT_0 & 32'h00000fff): reg_rd_data =  32'h0 ;
     (NVDLA_CFGROM_CFGROM_CDP_BASE_FEATURE_TYPES_0 & 32'h00000fff): reg_rd_data =  32'h10 ;
     (NVDLA_CFGROM_CFGROM_CDP_BASE_THROUGHPUT_0 & 32'h00000fff): reg_rd_data =  32'h1 ;
     (NVDLA_CFGROM_CFGROM_END_OF_LIST_0 & 32'h00000fff): reg_rd_data =  32'h0 ;
    default: reg_rd_data = {32{1'b0}};
  endcase
end
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//// VCS coverage off
//initial begin
//  arreggen_dump                  = $test$plusargs("arreggen_dump_wr");
//  arreggen_abort_on_rowr         = $test$plusargs("arreggen_abort_on_rowr");
//  arreggen_abort_on_invalid_wr   = $test$plusargs("arreggen_abort_on_invalid_wr");
//  $timeformat(-9, 2, "ns", 15);
//end
//
//always @(posedge nvdla_core_clk) begin
//  if (reg_wr_en) begin
//    case(reg_offset)
//      (32'h088  & 32'h00000fff): begin
//          if (arreggen_dump) $display("%t:%m: read-only reg wr: NVDLA_PDP_D_INF_INPUT_NUM_0 = 0x%h", $time, reg_wr_data);
//          if (arreggen_abort_on_rowr) begin $display("ERROR: write to read-only register!"); $finish; end
//        end
//      default: begin
//          if (arreggen_dump) $display("%t:%m: reg wr: Unknown register (0x%h) = 0x%h", $time, reg_offset, reg_wr_data);
//          if (arreggen_abort_on_invalid_wr) begin $display("ERROR: write to undefined register!"); $finish; end
//        end
//    endcase
//  end
//end
//
//// VCS coverage on
//// synopsys translate_on

endmodule 




