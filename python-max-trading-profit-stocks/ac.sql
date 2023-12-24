def max_subarray_sum(prices):
  n = len(prices)
  mnid = 0
  mnval = prices[0]
  for i in range(1,n-1):
    if prices[i] < mnval:
      mnval = prices[i]
      mnid = i
  mxid = mnid+1
  mxval = prices[mnid+1]
  for j in range(mnid+1,n):
    if prices[i] > mxval:
      mxval = prices[i]
      mxid = i
  return prices[mxid] - prices[mnid]
