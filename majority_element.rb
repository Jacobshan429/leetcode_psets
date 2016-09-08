#6. Majority Element
#Difficulty: Easy
#Skills you might need: [Array#sort] [Array#length]
#Description:
#Given an array of size n, find the majority element. The majority element is the element that appears more than "n/2" times.
#You may assume that the array is non-empty and the majority element always exist in the array.
#給定一個含有 n 個元素的陣列，請找出它的多數為哪一個元素。出現超過 n / 2 次的元素即為多數。
#你可以假設陣列一定不為空陣列，且陣列中一定存在多數。
#Examples:
#majority_element([0]) should return 0.
#majorityElement([1,1,2,1,3]) should return 1.

def majority_element(nums)
  h_1 = {}
  maj = nums.length / 2
  nums.each do |i|
    if h_1[i]
      h_1[i] += 1
    else
      h_1[i] = 1
    end
  end
  h_1.each do |k,v|
    if v > maj
      return k
    end
  end
end