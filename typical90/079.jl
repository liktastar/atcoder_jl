function main()
  h, w = readline() |> split .|> (x -> parse(Int, x))
  a_matrix = zeros(Int, h, w)
  b_matrix = zeros(Int, h, w)
  for i = 1:h
    a_matrix[i, :] = readline() |> split .|> (x -> parse(Int, x))
  end
  for i = 1:h
    b_matrix[i, :] = readline() |> split .|> (x -> parse(Int, x))
  end
  ans = 0
  for i = 1:h-1, j = 1:w-1
    diff = b_matrix[i, j] - a_matrix[i, j]
    a_matrix[i, j] += diff
    a_matrix[i+ 1, j] += diff
    a_matrix[i, j+1] += diff
    a_matrix[i+1, j+1] += diff
    ans += abs(diff)
  end
  if a_matrix == b_matrix
    println("Yes")
    println(ans)
  else
    println("No")
  end
end
main()
