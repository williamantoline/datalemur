def two_sum(input: list[int], target: int) -> list[int]:
  n = len(input)
  for i in range(n):
    for j in range(i+1,n):
      if (input[i]+input[j] == target):
        return [i,j]
  return [-1, -1]