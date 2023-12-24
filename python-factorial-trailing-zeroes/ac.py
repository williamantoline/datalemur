def trailing_zeroes(n):
  nof2 = 0
  for i in range(2,n+1,2):
    while (i%2 == 0):
      i //= 2
      nof2+=1
  nof5 = 0
  for i in range(5,n+4,5):
    while (i%5 == 0):
      i //= 5
      nof5+=1
  return min(nof2,nof5)
