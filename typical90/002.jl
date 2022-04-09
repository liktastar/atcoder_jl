function main()
  n = readline() |> x -> parse(Int, x)

  ans = []
  for i = 0:(2^n-1)
    if is_brackets(i, n)
      push!(ans, int_to_brackets(i, n))
    end
  end
  for a in sort(ans)
    println(a)
  end
end

function is_brackets(a, length)
  pair = 0
  for i = 1:length
    if a & 1 == 0
      pair -= 1
    else
      pair += 1
    end
    if pair < 0
      return false
    end
    a >>= 1
  end
  return pair == 0
end

function int_to_brackets(a, length)
  arr = []
  for i = 1:length
    push!(arr, a & 1 == 0 ? ")" : "(")
    a >>= 1
  end
  return join(arr, "")
end

main()
