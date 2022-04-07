function main()
  n, m = readline() |> split .|> x -> parse(Int, x)
  arr = zeros(Int, n + 1)
  for i = 1:m
    a, b = readline() |> split .|> x -> parse(Int, x)
    if a > b
      arr[a] += 1
    elseif a < b
      arr[b] += 1
    end
  end

  ans = count(a -> a == 1, arr)
  println(ans)
end
main()
