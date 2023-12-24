def contains_duplicate(input)-> bool:
  mp = {}
  for i in input:
    if i in mp:
      return True
    mp[i] = 1
  return False
