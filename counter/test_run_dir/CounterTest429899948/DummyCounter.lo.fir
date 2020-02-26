circuit DummyCounter : @[:@2.0]
  module DummyCounter : @[:@3.2]
    input clock : Clock @[:@4.4]
    input reset : UInt<1> @[:@5.4]
    output io_out : UInt<3> @[:@6.4]
  
    node _T_8 = add(io_out, UInt<1>("h1")) @[DummyCounter.scala 7:28:@8.4]
    node _T_9 = tail(_T_8, 1) @[DummyCounter.scala 7:28:@9.4]
    reg _T_12 : UInt<3>, clock with :
      reset => (UInt<1>("h0"), _T_12) @[DummyCounter.scala 7:20:@10.4]
    io_out <= _T_12 @[DummyCounter.scala 7:10:@12.4]
    _T_12 <= mux(reset, UInt<1>("h0"), _T_9) @[DummyCounter.scala 7:20:@11.4]
