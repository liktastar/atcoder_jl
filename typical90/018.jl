function main()
  t = readline() |> x -> parse(Int, x)
  l, x, y = readline() |> split .|> (x -> parse(Int, x))
  q = readline() |> x -> parse(Int, x)
  for i = 1:q
    e = readline() |> x -> parse(Int, x)
    ey = -l * sin(2π * e / t) / 2
    ez = l * (1 - cos(2π * e / t)) / 2

    a = sqrt((0 - x) ^ 2 + (ey - y) ^ 2 + (ez - 0) ^ 2)
    b = sqrt((0 - x) ^ 2 + (ey - y) ^ 2)
    println(180 * acos(b / a) / π)
  end
end
main()
