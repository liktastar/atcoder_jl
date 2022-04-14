function next_permutation(arr)
  n = length(arr)

  # step1. find the largest index k s.t. arr[k] < arr[k + 1]
  k = n - 1
  while k >= 1
    if arr[k] < arr[k+1]
      break
    end
    k -= 1
  end
  if k <= 0
    return []
  end

  # step2. find the largest index l ( > k) s.t. arr[k] < arr[l]
  l = n
  while l > k
    if arr[k] < arr[l]
      break
    end
    l -= 1
  end

  # step3. swap
  arr[k], arr[l] = arr[l], arr[k]

  # step4. reverse the sequence from arr[k + 1] to arr[n]
  arr[(k+1):n] = reverse(arr[(k+1):n])

  return arr
end
