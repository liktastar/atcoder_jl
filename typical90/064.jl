function main()
  n, q = readline() |> split .|> (x -> parse(Int, x))
  arr = readline() |> split .|> (x -> parse(Int, x))
  diff = zeros(Int, n - 1)
  ans = 0
  for i = 1:n-1
    diff[i] = arr[i] - arr[i + 1]
    ans += abs(arr[i] - arr[i + 1])
  end
  for i = 1:q
    l, r, v = readline() |> split .|> (x -> parse(Int, x))
    if l != 1
      ans -= abs(diff[l - 1])
      diff[l - 1] -= v
      ans += abs(diff[l - 1])
    end
    if r != n
      ans -= abs(diff[r])
      diff[r] += v
      ans += abs(diff[r])
    end
    println(ans)
  end
end
main()
