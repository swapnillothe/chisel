import chisel3.iotesters.{Driver, PeekPokeTester}

class ShiftRegisterTest(dff: ShiftRegister) extends PeekPokeTester(dff) {
  poke(dff.io.in, 1)
  step(1)
  expect(dff.io.out, 8) // 0000 -> 1000
  poke(dff.io.in, 0)
  step(1)
  expect(dff.io.out, 4) // 1000 -> 100
}

object ShiftRegisterTest extends App {
  Driver(() => new ShiftRegister) {
    c => new ShiftRegisterTest(c)
  }
}
