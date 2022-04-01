function main()
  a, b, c = parse.(Int128, readline() |> split)
  println(div((a + b + c), gcd(a, b, c)) - 3)
end
main()
