import chisel3._

class ShiftRegister extends Module {
  val io = IO(new Bundle {
    val out = Output(UInt(4.W)) // 4 bit - width
    val in = Input(UInt(1.W))  // 1 bit - width
  })

  io.out := RegNext((io.out >> 1.U) | Mux(io.in === 0.U, 0.U, 8.U), 0.U)
}
