import chisel3.iotesters.{Driver, PeekPokeTester}

class CellTest(cell: Cell) extends PeekPokeTester(cell) {
  poke(cell.io.currentState, 1)
  poke(cell.io.previouslyInitialize, 0)
  step(1)
  expect(cell.io.nextGenerationStatus, 1)
}

object CellTest extends App {
  Driver(() => new Cell) {
    c => new CellTest(c)
  }
}
