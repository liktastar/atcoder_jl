function main()
  h, w = parse.(Int, readline() |> split)

  matrix = zeros(Int, h, w)
  sum_row = zeros(Int, h)
  sum_col = zeros(Int, w)

  for i in 1:h
    arr = readline() |> split
    for j in 1:w
      num = parse(Int, arr[j])
      sum_row[i] += num;
      sum_col[j] += num;
      matrix[i, j] += num
    end
  end

  for i in 1:h
    ans = []
    for j in 1:w
      push!(ans, sum_row[i] + sum_col[j] - matrix[i, j])
    end
    println(join(ans, " "))
  end
end
main()
