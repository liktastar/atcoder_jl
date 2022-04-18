function main()
  n = readline() |> x -> parse(Int, x)
  ans = 1
  for i = 1:n
    tmp = readline() |> split .|> (x -> parse(Int, x)) |> sum
    ans *= tmp
    ans %= 10 ^ 9 + 7
  end
  println(ans)
end
main()
