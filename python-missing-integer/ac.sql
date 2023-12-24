def missing_int(input: list[int])-> int:
  sum = 0
  for i in input:
    sum += i
  n = len(input)
  return (n*n+n)/2 - sum