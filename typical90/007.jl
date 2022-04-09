function main()
  n = readline() |> x -> parse(Int, x)
  arr = readline() |> split .|> (x -> parse(Int, x)) |> sort
  q = readline() |> x -> parse(Int, x)
  for i = 1:q
    b = readline() |> x -> parse(Int, x)
    range = searchsorted(arr, b)
    diff = typemax(Int)
    if 1 <= range.start <= n
      diff= min(diff, abs(arr[range.start] - b))
    end
    if 1 <= range.stop <= n
      diff= min(diff, abs(arr[range.stop] - b))
    end
    println(diff)
  end
end

main()
