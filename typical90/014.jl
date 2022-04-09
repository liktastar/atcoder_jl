function main()
  n = readline() |> x -> parse(Int, x)
  a_arr = readline() |> split .|> (x -> parse(Int, x)) |> sort
  b_arr = readline() |> split .|> (x -> parse(Int, x)) |> sort
  ans = 0
  for i = 1:n
    ans += abs(a_arr[i] - b_arr[i])
  end
  println(ans)
end
main()
