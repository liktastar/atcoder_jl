function main()
  s = readline()
  arr = ["dream", "dreamer", "erase", "eraser"]
  while length(s) >= 5
    flag = true
    for word in arr
      if endswith(s, word)
        s = s[1 : end - length(word)]
        flag = false
        break
      end
    end
    if flag
      println("NO")
      return
    end
  end
  println("YES")
end
main()
