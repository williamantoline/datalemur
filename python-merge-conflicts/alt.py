def has_merge_conflict(pull_requests)-> bool:
  pull_requests = sorted(pull_requests)
  last = pull_requests[0]
  for i in range(1, len(pull_requests)):
    req = pull_requests[i]
    if (req[0] < last[1]):
      return True
    last = req
  return False