function main()
  a, b, c = readline() |> split .|> (x -> parse(Int, x))
  base = 1
  for i = 1:b
    base *= c
    if a < base
      println("Yes")
      return
    end
  end
  println("No")
end
main()
