function main()
  n = readline() |> x -> parse(Int, x)
  cnt = 0
  for i = 2:√n
    while n % i == 0
      cnt += 1
      n ÷= i
    end
  end
  if n != 1
    cnt += 1
  end
  println(cnt |> log2 |> ceil |> Int)
end
main()
