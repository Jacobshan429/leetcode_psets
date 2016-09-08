#7. Remove Duplicates from Sorted Array
#Difficulty: Easy
#Skills you might need: [for loop] [Array#push] [Array#length]
#Description:
#Given a sorted array, remove the duplicates in place such that each element appear only once and return the new length.
#Do not allocate extra space for another array, you must do this in place with constant memory.
#給定一個排序過的陣列，將重複的元素移除使得所有的元素都只出現過一次，並回傳陣列的新長度。
#不能在 function 裡創造一個新陣列，必須利用同一個陣列完成。
#Examples:
#remove_duplicate([1]) should return 1.
#removeDuplicates([1,1,2]) should return 2.

#hint將第一個元素和最後一個元素相比 不同則將第一個移到最後一個。第一個元素一定會移到最後一個。

#solution 1
def remove_duplicates(nums)
  if nums == []
    return nums.length
  else
    l = nums.length
    nums.push(nums[0])
    for i in 1..l-1
      if nums[i] != nums[nums.length-1]
        nums.push(nums[i])
      end
    end
    return nums.shift(l).length
  end
end
nums = [1,1,2,3]
#solution 2
def remove_duplicates(nums)
  i = 0
  while i < nums.length-1
    if nums[i] == nums[i+1]
      nums.delete_at(i)
    else
      i += 1
    end
  end
  return nums.length
end





