function main()
  h, w = parse.(Int, readline() |> split)
  if h == 1 || w == 1
    println(h * w)
  else
    println(Int(ceil(h / 2) * ceil(w / 2)))
  end
end
main()
