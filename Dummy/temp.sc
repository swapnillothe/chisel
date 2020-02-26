val ints = List(1, 2, 4)

val sum = ints.foldLeft(0)((a: Int, b: Int) => {
  a + b
})

println(sum)
