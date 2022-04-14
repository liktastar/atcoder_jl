function main()
  n = readline() |> x -> parse(Int, x)
  arr = []
  matrix = []
  for i = 1:n
    push!(matrix, readline() |> split .|> (x -> parse(Int, x)))
    push!(arr, Set())
  end
  m = readline() |> x -> parse(Int, x)
  for i = 1:m
    x, y = readline() |> split .|> (x -> parse(Int, x))
    push!(arr[x], y)
    push!(arr[y], x)
  end

  ans = 10000
  runners = [1:n;]
  while length(runners) > 0
    tmp = 0
    flag = true
    for i = 1:(n-1)
      tmp += matrix[runners[i]][i]
      if runners[i + 1] in arr[runners[i]]
        flag = false
        break
      end
    end
    tmp += matrix[runners[n]][n]
    if flag
      ans = min(ans, tmp)
    end
    runners = next_permutation(runners)
  end
  if ans == 10000
    ans = -1
  end
  println(ans)
end

function next_permutation(arr)
  n = length(arr)

  # step1. find the largest index k s.t. arr[k] < arr[k + 1]
  k = n - 1
  while k >= 1
    if arr[k] < arr[k+1]
      break
    end
    k -= 1
  end
  if k == 0
    return []
  end

  # step2. find the largest index l ( > k) s.t. arr[k] < arr[l]
  l = n
  while l > k
    if arr[k] < arr[l]
      break
    end
    l -= 1
  end

  # step3. swap
  arr[k], arr[l] = arr[l], arr[k]

  # step4. reverse the sequence from arr[k + 1] to arr[n]
  arr[(k+1):n] = reverse(arr[(k+1):n])

  return arr
end

main()
