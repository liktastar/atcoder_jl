MOD = 10 ^ 9 + 7
function main()
  l, r = readline() |> split .|> (x -> parse(BigInt, x))
  l_digit = length(string(l))
  r_digit = length(string(r))

  ans = 0
  for digit = l_digit : r_digit
    ans += calc(min_at_digit(digit), max_at_digit(digit))
    ans = mod(ans, MOD)
  end

  ans -= calc(min_at_digit(l_digit), l - 1)
  ans = mod(ans, MOD)

  ans -= calc(r + 1, max_at_digit(r_digit))
  ans = mod(ans, MOD)

  println(ans)
end

function calc(first, last)
  digit = length(string(first))
  tmp = (digit * (first + last) * (last - first + 1)) % MOD
  return (tmp * invmod(2, MOD)) % MOD
end

function min_at_digit(digit)
  return 10 ^ (digit - 1)
end

function max_at_digit(digit)
  return fill("9", digit) |> join |> x -> parse(BigInt, x)
end
main()
