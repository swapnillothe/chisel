
import chisel3.iotesters.{Driver, PeekPokeTester}

class CounterTest(c: DummyCounter) extends PeekPokeTester(c) {
  poke(c.io.out, 0)
  step(1)
  expect(c.io.out,1)
  step(1)
  expect(c.io.out,2)
  step(1)
  expect(c.io.out,3)
  step(1)
  expect(c.io.out,0)
  step(1)
  expect(c.io.out,1)
  step(1)
  expect(c.io.out,2)
}

object CounterTest extends App {
  Driver(() => new DummyCounter){
    c => new CounterTest(c)
  }
}
