def has_merge_conflict(pull_requests)-> bool:
  arr = []
  for req in pull_requests:
    arr.append(req)
    if (check_conflict(arr, req)):
      return True
  return False
  
def check_conflict(arr, req)-> bool:
  for ar in arr:
    if ((ar[0] < req[0] and req[0] < ar[1]) or (ar[0] < req[1] and req[1] < ar[1])):
      return True
  return False