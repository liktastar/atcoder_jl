function main()
  n = parse(Int, readline())
  set = Set()
  for i in 1:n
    push!(set, parse(Int, readline()))
  end
  println(length(set))
end
main()
