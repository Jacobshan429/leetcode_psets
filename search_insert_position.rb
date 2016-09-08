# 3. Search Insert Position
# Difficulty: Medium
# Skills you might need: [for loop]
# Description:
# Given a sorted array and a target value,
#return the index if the target is found. If not, return the index where it would be if it were inserted in order.
# You may assume no duplicates in the array.
# 給定一個排序過的陣列和一個目標值。
# 如果在陣列中找到和目標值相等的元素，
# 則回傳該元素陣列的 index，沒有的話則回傳它應該放在陣列的哪個位置(index)
# Examples:
# search_insert([1,3,5,6], 5) should return 2.
# search_insert([1,3,5,6], 2) should return 1.
# searchInsert([1,3,5,6], 7) should return 4.
# searchInsert([1,3,5,6], 0) should return 0.

def search_insert(nums, target)
  for i in 0..(nums.length-1)
    if target <= nums[i]
      return i
    end
  end
  return nums.length
end