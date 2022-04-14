function main()
  a, b = readline() |> split .|> (x -> parse(BigInt, x))
  tmp = lcm(a, b)
  if tmp > 10 ^ 18
    println("Large")
  else
    println(tmp)
  end
end
main()
