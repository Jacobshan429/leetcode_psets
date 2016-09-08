# 1. Single Number
# Difficulty: Medium
# Skills you might need: [Array#sort]
# Description:
# Given an array of integers, every element appears twice except for one. Find that single one.˙
# 給定一個包含整數的陣列，所有的元素都重複兩次但有一個例外，找出那個沒有重複的元素。
# Examples:
# single_number( [0, 0, 1, 12, 1] ) should return 12.
# singleNumber( [ 1 ] ) should return 1.

def single_number(nums)
  h_1 ={}
  nums.each do |i|
    if h_1[i]
      h_1[i] += 1
    else
      h_1[i] = 1
    end
  end
  h_1.each do |k, v|
    if v == 1
      return k
    end
  end
end