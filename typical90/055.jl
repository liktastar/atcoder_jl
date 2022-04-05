function main()
  n, p, q = parse.(Int, readline() |> split)
  arr = parse.(Int, readline() |> split)
  ans = 0
  for i in 1:n
    tmp1 = arr[i] % p
    for j in (i+1):n
      tmp2 = (tmp1 * arr[j]) % p
      for k in (j+1):n
        tmp3 = (tmp2 * arr[k]) % p
        for l in (k+1):n
          tmp4 = (tmp3 * arr[l]) % p
          for m in (l+1):n
            if (tmp4 * arr[m]) % p == q
              ans += 1
            end
          end
        end
      end
    end
  end
  println(ans)
end
main()
