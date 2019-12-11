package nvdla

import chisel3._
import chisel3.experimental._
import chisel3.iotesters.Driver

@chiselName
class SO_CLK_gate_power extends Module {
   val io = IO(new Bundle {
        //nvdla core clock
        val clk = Input(Clock())

        //control signal
        val clk_en = Input(Bool())
        val clk_gated = Output(Clock())

    })

    val p_clkgate = Module(new SO_CKLNQD12())
    p_clkgate.io.TE := false.B
    p_clkgate.io.CP := io.clk
    p_clkgate.io.E := io.clk_en
    io.clk_gated := p_clkgate.io.Q
    
}


object SO_CLK_gate_powerDriver extends App {
  chisel3.Driver.execute(args, () => new SO_CLK_gate_power)
}


