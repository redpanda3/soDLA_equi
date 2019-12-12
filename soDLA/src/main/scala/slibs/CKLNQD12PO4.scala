package nvdla

import chisel3._
import chisel3.experimental._
import chisel3.util._

@chiselName
class SO_CKLNQD12PO4 extends Module {
  val io = IO(new Bundle {
    val CP = Input(Clock())
    val TE = Input(Bool())
    val E = Input(Bool())
    val Q = Output(Clock())
  })


  withClock((!io.CP.asUInt.toBool).asClock){
    val qd = RegNext(io.TE|io.E)
    io.Q := (io.CP.asUInt.toBool & qd).asClock 
  }
}

object SO_CKLNQD12PO4Driver extends App {
  chisel3.Driver.execute(args, () => new SO_CKLNQD12PO4())
}
