function main()
  n, k = readline() |> split .|> (x -> parse(Int, x))
  MOD = 10 ^ 9 + 7
  if n == 1
    println(k)
    return
  end
  ans = (k * (k - 1)) % MOD
  ans *= powermod(k - 2, n - 2, MOD)
  ans %= MOD
  println(ans)
end
main()
