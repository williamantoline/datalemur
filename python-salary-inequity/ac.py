def min_inequity(salaries, n):
  salaries = sorted(salaries)
  ln = len(salaries)
  x = salaries[ln -1]
  for i in range(ln - n):
    x = min(x, salaries[i+n-1] - salaries[i])
  return x
