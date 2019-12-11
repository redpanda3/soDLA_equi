package nvdla

import chisel3._
import chisel3.experimental._
import chisel3.util._

@chiselName
class SO_sync2d_c_pp extends Module {
    val io = IO(new Bundle {
        val clk = Input(Clock())
        val d = Input(Bool())
        val clr_ = Input(Bool())
        val q = Output(Bool())
    })

    val nv_GENERIC_CELL = Module(new SO_p_SSYNC2DO_C_PP())
    nv_GENERIC_CELL.io.d := io.d
    nv_GENERIC_CELL.io.clk := io.clk
    nv_GENERIC_CELL.io.clr_ := io.clr_
    io.q := nv_GENERIC_CELL.io.q
    
}