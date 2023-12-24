m = {}

def smallest_multiple(target):
  for q in range(2,target+1):
    i = q
    thsm = {}
    p = 2
    x = 0
    while (i > 1):
      if (i % p):
        if (x):
          thsm[p] = x
        p += 1
        x = 0
        continue
      i //= p
      x += 1
    if (x):
      thsm[p] = x
    for i in thsm:
      if i in m:
        m[i] = max(m[i],thsm[i])
      else:
        m[i] = thsm[i]
  
  ans = 1
  for i in m:
    ans *= (i**m[i])
  return ans

