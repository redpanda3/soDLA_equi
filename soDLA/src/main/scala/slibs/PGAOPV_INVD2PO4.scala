package nvdla

import chisel3._
import chisel3.experimental._

@chiselName
class SO_PGAOPV_INVD2PO4 extends Module {
  val io = IO(new Bundle {
    val I = Input(Bool())
    val ZN = Output(Bool())
  })
  io.ZN := ~io.I 
}