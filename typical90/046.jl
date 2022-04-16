function main()
  n = readline() |> x -> parse(Int, x)
  matrix = zeros(Int, (3, 46))
  for i = 1:3
    tmp = readline() |> split .|> (x -> parse(Int, x))
    for j = 1:n
      matrix[i, mod46(tmp[j])] += 1
    end
  end
  ans = 0
  for i = 1:46
    for j = 1:46
      k = mod46(46 - i - j)
      ans += *(matrix[1, i], matrix[2, j], matrix[3, k])
    end
  end
  println(ans)
end
function mod46(i)
  ans = mod(i, 46)
  if ans == 0
    return 46
  else
    return ans
  end
end
main()
