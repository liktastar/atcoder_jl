function main()
  n = parse(Int, readline())
  set = Set()
  for i in 1:n
    user = readline()
    if !(user in set)
      push!(set, user)
      println(i)
    end
  end
end
main()
