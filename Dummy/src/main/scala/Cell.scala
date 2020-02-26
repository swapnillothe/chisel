import chisel3._

class Cell extends Module {
  val io = IO(new Bundle {
    val neighbouringCells = Input(Vec(8, UInt(1.W)))
    val previouslyInitialize = Input(Bool())
    val currentState = Input(UInt(1.W))
    val currentStateForNextGen = Output(UInt(1.W))
    val nextGenerationStatus = Output(UInt(1.W))
  })


  private val liveCells = io.neighbouringCells.foldLeft(0.U)((liveCells: UInt, currentCellStatus: UInt) => {
    liveCells + currentCellStatus
  })

  when(!io.previouslyInitialize){
    io.currentStateForNextGen := RegInit(0.U)
  }

  when(io.previouslyInitialize) {
    io.currentStateForNextGen := io.currentState
  }

  io.nextGenerationStatus := io.currentState
}
