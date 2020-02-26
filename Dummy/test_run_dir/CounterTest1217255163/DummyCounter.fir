;buildInfoPackage: chisel3, version: 3.1.7, scalaVersion: 2.12.4, sbtVersion: 1.1.1, builtAtString: 2019-03-20 22:12:35.973, builtAtMillis: 1553119955973
circuit DummyCounter : 
  module DummyCounter : 
    input clock : Clock
    input reset : UInt<1>
    output io : {out : UInt<2>}
    
    when UInt<1>("h00") : @[DummyCounter.scala 8:14]
      node _T_9 = add(io.out, UInt<2>("h02")) @[DummyCounter.scala 10:30]
      node _T_10 = tail(_T_9, 1) @[DummyCounter.scala 10:30]
      reg _T_13 : UInt, clock with : (reset => (reset, UInt<1>("h00"))) @[DummyCounter.scala 10:22]
      _T_13 <= _T_10 @[DummyCounter.scala 10:22]
      io.out <= _T_13 @[DummyCounter.scala 10:12]
      skip @[DummyCounter.scala 8:14]
    else : @[DummyCounter.scala 11:14]
      skip @[DummyCounter.scala 11:14]
    node _T_16 = add(io.out, UInt<1>("h01")) @[DummyCounter.scala 12:30]
    node _T_17 = tail(_T_16, 1) @[DummyCounter.scala 12:30]
    reg _T_20 : UInt, clock with : (reset => (reset, UInt<1>("h00"))) @[DummyCounter.scala 12:22]
    _T_20 <= _T_17 @[DummyCounter.scala 12:22]
    io.out <= _T_20 @[DummyCounter.scala 12:12]
    
