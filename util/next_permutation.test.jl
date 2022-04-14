using Test
include("./next_permutation.jl")

function main()
  # 0桁
  @test next_permutation([]) == []

  # 1桁
  @test next_permutation([1]) == []

  # 2桁
  @test next_permutation([1, 2]) == [2, 1]
  @test next_permutation([2, 1]) == []

  # 3桁
  arr = [1, 2, 3]
  expected_arr = [
    [1, 3, 2],
    [2, 1, 3],
    [2, 3, 1],
    [3, 1, 2],
    [3, 2, 1],
    []
  ]
  for i = 1:length(expected_arr)
    arr = next_permutation(arr)
    @test arr == expected_arr[i]
  end

  # 4桁 (only count)
  arr = [1, 2, 3, 4]
  count = 0
  while length(arr) > 0
    arr = next_permutation(arr)
    count += 1
  end
  @test count == 24 # 4!

  # 5桁 (only count)
  arr = [1, 2, 3, 4, 5]
  count = 0
  while length(arr) > 0
    arr = next_permutation(arr)
    count += 1
  end
  @test count == 120 # 5!

  # 連番でなくてもOK
  @test next_permutation([-1, 4, 1.5]) == [1.5, -1, 4]

  # 文字も可能
  @test next_permutation(['b', 'c', 'a']) == ['c', 'a', 'b']
end
main()
