;buildInfoPackage: chisel3, version: 3.1.7, scalaVersion: 2.12.4, sbtVersion: 1.1.1, builtAtString: 2019-03-20 22:12:35.973, builtAtMillis: 1553119955973
circuit Cell : 
  module Cell : 
    input clock : Clock
    input reset : UInt<1>
    output io : {flip neighbouringCells : UInt<1>[8], flip previouslyInitialize : UInt<1>, flip currentState : UInt<1>, currentStateForNextGen : UInt<1>, nextGenerationStatus : UInt<1>}
    
    node _T_40 = add(UInt<1>("h00"), io.neighbouringCells[0]) @[Cell.scala 14:15]
    node _T_41 = tail(_T_40, 1) @[Cell.scala 14:15]
    node _T_42 = add(_T_41, io.neighbouringCells[1]) @[Cell.scala 14:15]
    node _T_43 = tail(_T_42, 1) @[Cell.scala 14:15]
    node _T_44 = add(_T_43, io.neighbouringCells[2]) @[Cell.scala 14:15]
    node _T_45 = tail(_T_44, 1) @[Cell.scala 14:15]
    node _T_46 = add(_T_45, io.neighbouringCells[3]) @[Cell.scala 14:15]
    node _T_47 = tail(_T_46, 1) @[Cell.scala 14:15]
    node _T_48 = add(_T_47, io.neighbouringCells[4]) @[Cell.scala 14:15]
    node _T_49 = tail(_T_48, 1) @[Cell.scala 14:15]
    node _T_50 = add(_T_49, io.neighbouringCells[5]) @[Cell.scala 14:15]
    node _T_51 = tail(_T_50, 1) @[Cell.scala 14:15]
    node _T_52 = add(_T_51, io.neighbouringCells[6]) @[Cell.scala 14:15]
    node _T_53 = tail(_T_52, 1) @[Cell.scala 14:15]
    node _T_54 = add(_T_53, io.neighbouringCells[7]) @[Cell.scala 14:15]
    node _T_55 = tail(_T_54, 1) @[Cell.scala 14:15]
    reg _T_58 : UInt, clock with : (reset => (reset, UInt<1>("h00"))) @[Cell.scala 20:39]
    io.currentStateForNextGen <= _T_58 @[Cell.scala 20:29]
    io.nextGenerationStatus <= UInt<1>("h00") @[Cell.scala 21:27]
    
