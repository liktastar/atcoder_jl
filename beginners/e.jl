a = parse(Int, readline())
b = parse(Int, readline())
c = parse(Int, readline())
x = parse(Int, readline())

ans = 0
for num_a in 0:a
  for num_b in 0:b
    num_c = (x - 500 * num_a - 100 * num_b) / 50
    if 0 <= num_c <= c && 500 * num_a + 100 * num_b + 50 * num_c == x
      global ans += 1
    end
  end
end

println(ans)
