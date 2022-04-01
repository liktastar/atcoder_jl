function main()
  n, y = parse.(Int, readline() |> split)
  for a in 0:n
    for b in 0:(n-a)
      c = n - a - b
      if 10000 * a + 5000 * b + 1000 * c == y
        println("$(a) $(b) $(c)")
        return
      end
    end
  end
  println("-1 -1 -1")
end
main()
