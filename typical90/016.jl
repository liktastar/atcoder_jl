function main()
  n = readline() |> x -> parse(Int, x)
  a, b, c = readline() |> split .|> (x -> parse(Int, x))
  ans = 10000
  for i = 0:9999, j = 0:(9999 - i)
    tmp = n - a * i - b * j
    if tmp >= 0 && tmp % c == 0
      ans = min(ans, i + j + tmp ÷ c)
    end
  end
  println(ans)
end
main()
