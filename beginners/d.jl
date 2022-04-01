n = parse(Int, readline())
arr = parse.(Int, readline() |> split)

ans = typemax(Int)
for a in arr
  num = 0
  while a & 1 == 0
    a >>= 1
    num += 1
  end
  global ans = min(ans, num)
end
println(ans)
