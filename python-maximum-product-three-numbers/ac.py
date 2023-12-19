def max_three(input):
  arr = input
  if (len(input) == 3):
    return input[0]*input[1]*input[2]
  input = sorted(input)
  n = len(input)
  a = input[0]*input[1]*input[n-1]
  b = input[n-1]*input[n-2]*input[n-3]
  if (a > b):
    return a
  return b