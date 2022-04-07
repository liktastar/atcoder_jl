function main()
  n, k = readline() |> split
  for i in 1:parse(Int, k)
    n = parse(Int, n, base = 8) |>
      x -> string(x, base = 9) |>
      x -> replace(x, "8" => "5")
  end
  println(n)
end
main()
