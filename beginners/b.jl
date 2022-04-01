a,b = parse.(Int, readline() |> split)

if a * b % 2 == 0
  println("Even")
else
  println("Odd")
end
