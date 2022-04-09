function main()
  n, p, q = parse.(Int, readline() |> split)
  arr = parse.(Int, readline() |> split)
  ans = 0
  for i = 1:n, j = (i+1):n, k = (j+1):n, l = (k+1):n, m = (l+1):n
    tmp = 1
    tmp = (tmp * arr[i]) % p
    tmp = (tmp * arr[j]) % p
    tmp = (tmp * arr[k]) % p
    tmp = (tmp * arr[l]) % p
    tmp = (tmp * arr[m]) % p
    if tmp % p == q
      ans += 1
    end
  end
  println(ans)
end
main()
