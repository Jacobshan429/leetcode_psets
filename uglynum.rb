#Write a program to check whether a given number is an ugly number.
#Ugly numbers are positive numbers whose prime factors only include 2, 3, 5.
#For example, 6, 8 are ugly while 14 is not ugly since it includes another prime factor 7.
#Note that 1 is typically treated as an ugly number.

#寫一個 function 判斷一個給入的數是否為 "Ugly number"。
#若一個正整數的質因數只包含 2、3 或 5 的話為"Ugly number"，其他則否。
#但 1 須被判定為 "Ugly number"。

def is_ugly(num)
  if num <= 0
    return false
  end
  while num % 2 == 0
    num = num / 2
  end
  while num % 3 == 0
    num = num / 3
  end
  while num % 5 == 0
    num = num / 5
  end
  if num == 1
    return true
  end
  return false
end