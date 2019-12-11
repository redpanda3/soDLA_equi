package nvdla

import chisel3._
import chisel3.experimental._

@chiselName
class NV_BLKBOX_SRC0_X extends Module {
  val io = IO(new Bundle{
      val Y = Output(Bool())
  })

  io.Y := false.B
}
