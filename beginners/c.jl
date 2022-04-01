str = readline()
count = 0
for c in str
  if c == '1'
    global count += 1
  end
end
println(count)
