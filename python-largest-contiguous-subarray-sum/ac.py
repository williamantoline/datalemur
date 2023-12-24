def max_subarray_sum(input):
  ans = 0
  n = len(input)
  for i in range(n):
    for j in range(i,n):
      res = 0
      for k in range(i,j+1):
        res += input[k]
      ans = max(ans, res)
  return ans