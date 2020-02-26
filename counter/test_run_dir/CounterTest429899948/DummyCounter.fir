;buildInfoPackage: chisel3, version: 3.1.7, scalaVersion: 2.12.4, sbtVersion: 1.1.1, builtAtString: 2019-03-20 22:12:35.973, builtAtMillis: 1553119955973
circuit DummyCounter : 
  module DummyCounter : 
    input clock : Clock
    input reset : UInt<1>
    output io : {out : UInt<3>}
    
    node _T_8 = add(io.out, UInt<1>("h01")) @[DummyCounter.scala 7:28]
    node _T_9 = tail(_T_8, 1) @[DummyCounter.scala 7:28]
    reg _T_12 : UInt, clock with : (reset => (reset, UInt<1>("h00"))) @[DummyCounter.scala 7:20]
    _T_12 <= _T_9 @[DummyCounter.scala 7:20]
    io.out <= _T_12 @[DummyCounter.scala 7:10]
    
