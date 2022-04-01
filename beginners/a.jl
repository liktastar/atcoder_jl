a = parse(Int, readline())
b,c = parse.(Int, readline() |> split)
s = readline()

println("$(a + b + c) $(s)")
