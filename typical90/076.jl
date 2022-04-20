function main()
  n = readline() |> x -> parse(Int, x)
  arr = readline() |> split .|> (x -> parse(Int, x))
  arr2 = [0]
  piece = 0
  for i = 1:n
    push!(arr2, arr2[end] + arr[i])
    piece += arr[i]
  end
  piece /= 10
  for i = 1:n
    push!(arr2, arr2[end] + arr[i])
  end
  l, r = 1, 1
  while l < 2n + 1 && r < 2n + 1
    tmp = arr2[r] - arr2[l]
    if tmp == piece
      return "Yes"
    elseif tmp < piece
      r += 1
    else
      l += 1
    end
  end
  return "No"
end
println(main())
