function main()
  q = parse(Int, readline())
  arr = []
  for i in 1:q
    t, x = parse.(Int, readline() |> split)
    if t == 1
      prepend!(arr, x)
    elseif t == 2
      append!(arr, x)
    else
      println(arr[x])
    end
  end
end
main()
