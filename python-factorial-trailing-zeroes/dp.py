memo2 = {}
memo5 = {}

def hlp2(n):
  if n % 2:
    return 0
  if n == 2:
    return 1
  if n in memo2:
    return memo2[n]
  memo2[n] = 1 + hlp2(n//2)
  return memo2[n]
    

def hlp5(n):
  if n % 5:
    return 0
  if n == 5:
    return 1
  if n in memo5:
    return memo5[n]
  memo5[n] = 1 + hlp5(n//5)
  return memo5[n]


def trailing_zeroes(n):
  nof2 = 0
  for i in range(2,n+1,2):
    nof2 += hlp2(i)
  nof5 = 0
  for i in range(5,n+4,5):
    nof5 += hlp5(i)
  return min(nof2,nof5)