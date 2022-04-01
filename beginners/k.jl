function main()
  n = parse(Int, readline())
  (prev_t, prev_x, prev_y) = (0, 0, 0)
  for i in 1:n
    t, x, y = parse.(Int, readline() |> split)
    time = t - prev_t
    dist = abs(x - prev_x) + abs(y - prev_y)
    if time < dist || (time - dist) % 2 == 1
      println("No")
      return
    end
    (prev_t, prev_x, prev_y) = (t, x, y)
  end
  println("Yes")
end
main()
