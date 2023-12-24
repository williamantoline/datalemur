def fizz_buzz_sum(target):
  n = 0
  for i in range(target):
    if i % 3 == 0 or i % 5 == 0:
      n += i
  return n