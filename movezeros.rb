#Given an array nums,
#write a function to move all 0's to the end of it
#while maintaining the relative order of the non-zero elements.
#給入一個含有數字的陣列，寫出一個 function 將所有的 0 都移到陣列的最後面，但同時須保持所有其他非零數字的相對先後順序不變。
#Examples:
#move_zeroes( [0, 1, 0, 3, 12] ) should return [1, 3, 12, 0, 0].
#moveZeroes( [1,2,3,0,0] ) should return [1, 2, 3, 0, 0].


#solution 1
def move_zeroes(nums)
  i = 0
  count = 0
  while i < nums.length
    if nums[i] == 0
      nums.delete_at(i)
      count += 1  #在為0時 i 不變
    else          #在不是0時 i 增加1
      i += 1
    end
  end
  count.times do
    nums.push(0)
  end
  return nums
end

#solution 2
def move_zeroes(nums)





end
