#Given an array of integers, find if the array contains any duplicates.
#Your function should return true if any value appears at least twice in the array,
#and it should return false if every element is distinct.
#給定一個包含整數的陣列，請判斷陣列中是否存在重複的整數。若有任何一個整數重複出現，請回傳 true，全部都沒有重複請回傳 false。
#solution 1
def contains_duplicate(nums)
  if nums.length > nums.uniq.length
      return true
  else
      return false
  end
end
#solution 2
def contains_duplicate(nums)
  if nums.length == 1 || nums == []
    return false
  end
  nums_sorted = nums.sort
  for i in 0..(nums_sorted.length-2)
    if nums_sorted[i] == nums_sorted[i+1]
      return true
    end
  end
  return false
end
#solution 3
def contains_duplicate(nums)

  hash_1 = {}
  if nums == []
    return false
  end
  nums.each do |i|
    if hash_1[i]
      hash_1[i] += 1
    else
      hash_1[i] = 1
    end
  end
  hash_1.each do |k, v|
    if v > 1
      return true
    end
  end
  return false
end




