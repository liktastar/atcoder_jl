function main()
  n, q = readline() |> split .|> (x -> parse(Int, x))
  arr = readline() |> split .|> (x -> parse(Int, x))
  for i = 1:q
    t, x, y = readline() |> split .|> (x -> parse(Int, x))
    if t == 1
      arr[x], arr[y] = arr[y], arr[x]
    elseif t == 2
      tmp = pop!(arr)
      prepend!(arr, tmp)
    else
      println(arr[x])
    end
  end
end
main()
