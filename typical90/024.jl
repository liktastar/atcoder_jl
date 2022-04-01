function main()
  n, k = parse.(Int, readline() |> split)
  a_arr = parse.(Int, readline() |> split)
  b_arr = parse.(Int, readline() |> split)

  diff = 0
  for i in 1:n
    diff += abs(a_arr[i] - b_arr[i])
  end

  if diff <= k && iseven(k - diff)
    println("Yes")
  else
    println("No")
  end
end
main()
