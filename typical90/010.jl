function main()
  n = parse(Int, readline())
  one = zeros(Int, n + 1)
  two = zeros(Int, n + 1)

  for i in 1:n
    c, p = parse.(Int, readline() |> split)
    one[i + 1] += one[i]
    two[i + 1] += two[i]
    if c == 1
      one[i + 1] += p
    else
      two[i + 1] += p
    end
  end

  q = parse(Int, readline())
  for i in 1:q
    l, r = parse.(Int, readline() |> split)
    println("$(one[r+1] - one[l]) $(two[r+1] - two[l])")
  end
end
main()
