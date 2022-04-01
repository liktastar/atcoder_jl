n,a,b = parse.(Int, readline() |> split)

ans = 0
for m in 0:n
  tmp_m = m
  sum = 0
  while tmp_m > 0
    sum += rem(tmp_m, 10)
    tmp_m = div(tmp_m, 10)
  end
  if a <= sum <= b
    global ans += m
  end
end

println(ans)
