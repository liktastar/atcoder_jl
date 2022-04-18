function main()
  n, l = readline() |> split .|> (x -> parse(Int, x))
  arr = zeros(Int, n + l)
  arr[1] = 1
  arr[l] = 1
  for i = 1:n
    arr[i + 1] = (arr[i + 1] + arr[i]) % (10 ^ 9 + 7)
    arr[i + l] = (arr[i + l] + arr[i]) % (10 ^ 9 + 7)
  end
  println(arr[n])
end
main()
