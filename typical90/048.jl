function main()
  n, k = readline() |> split .|> (x -> parse(Int, x))
  arr = []
  for i = 1:n
    a, b = readline() |> split .|> (x -> parse(Int, x))
    push!(arr, b, a - b)
  end
  sort!(arr, rev = true)
  println(sum(arr[1:k]))
end
main()
