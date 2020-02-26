circuit DummyCounter : @[:@2.0]
  module DummyCounter : @[:@3.2]
    input clock : Clock @[:@4.4]
    input reset : UInt<1> @[:@5.4]
    output io_out : UInt<2> @[:@6.4]
  
    node _T_9 = add(io_out, UInt<2>("h2")) @[DummyCounter.scala 10:30:@9.6]
    node _T_10 = tail(_T_9, 1) @[DummyCounter.scala 10:30:@10.6]
    reg _T_13 : UInt<2>, clock with :
      reset => (UInt<1>("h0"), _T_13) @[DummyCounter.scala 10:22:@11.6]
    node _T_16 = add(io_out, UInt<1>("h1")) @[DummyCounter.scala 12:30:@17.4]
    node _T_17 = tail(_T_16, 1) @[DummyCounter.scala 12:30:@18.4]
    reg _T_20 : UInt<2>, clock with :
      reset => (UInt<1>("h0"), _T_20) @[DummyCounter.scala 12:22:@19.4]
    io_out <= _T_20 @[DummyCounter.scala 10:12:@13.6 DummyCounter.scala 12:12:@21.4]
    _T_13 <= mux(reset, UInt<1>("h0"), _T_10) @[DummyCounter.scala 10:22:@12.6]
    _T_20 <= mux(reset, UInt<1>("h0"), _T_17) @[DummyCounter.scala 12:22:@20.4]
