function main()
  n = parse(Int, readline())
  arr = parse.(Int, readline() |> split)
  ans = 0
  
  sort!(arr, rev = true)
  i = 1
  for a in arr
    ans += a * i
    i *= -1
  end
  println(ans)
end
main()
