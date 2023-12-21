def largest_prime_factor(target):
  mx = 0
  for i in range(2,target):
    if (i > target):
      break
    if (target % i == 0):
      target /= i
      mx = max(mx, i)
  return mx
