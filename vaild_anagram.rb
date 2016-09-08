#5. Valid Anagram
#Skills you might need: [for loop] [String#split] [Array#sort] [Array#length]
#Description:
#Given two strings s and t, write a function to determine if t is an anagram of s.
#給定兩個字串 s 和 t，寫一個 function 判斷兩者是否互為 "anagram"[註一]。
#Note: You may assume the string contains only lowercase alphabets.
#Examples:
#is_anagram("anagram", "nagaram") should return true.
#isAnagram("rat", "car") should return false.
#[註一] 將一個字原有的字母不額外增減而重新排列順序成為另一個字，得到的結果就稱為 "anagram"。

#solution 1
def is_anagram(s, t)
  arr_s = s.split("")
  arr_t = t.split("")
  if arr_s.sort == arr_t.sort
    return true
  end
  return false
end

#solution 2 將分裂開的array 做出一個計分板 hash





