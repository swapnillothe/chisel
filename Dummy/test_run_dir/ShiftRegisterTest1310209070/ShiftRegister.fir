;buildInfoPackage: chisel3, version: 3.1.7, scalaVersion: 2.12.4, sbtVersion: 1.1.1, builtAtString: 2019-03-20 22:12:35.973, builtAtMillis: 1553119955973
circuit ShiftRegister : 
  module ShiftRegister : 
    input clock : Clock
    input reset : UInt<1>
    output io : {out : UInt<4>, flip in : UInt<1>}
    
    node _T_10 = dshr(io.out, UInt<1>("h01")) @[ShiftRegister.scala 9:29]
    node _T_12 = eq(io.in, UInt<1>("h00")) @[ShiftRegister.scala 9:49]
    node _T_15 = mux(_T_12, UInt<1>("h00"), UInt<4>("h08")) @[ShiftRegister.scala 9:42]
    node _T_16 = or(_T_10, _T_15) @[ShiftRegister.scala 9:37]
    reg _T_19 : UInt, clock with : (reset => (reset, UInt<1>("h00"))) @[ShiftRegister.scala 9:20]
    _T_19 <= _T_16 @[ShiftRegister.scala 9:20]
    io.out <= _T_19 @[ShiftRegister.scala 9:10]
    
