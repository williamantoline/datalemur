def intersection(a, b):
  x = []
  for i in a:
    if i in b:
      x.append(i)
  return x
