
/*

Solution2:
1. Take two pointers start and end
2. while start < end
3. check if character at start and end are same, if yes start = start + 1, end = end + 1, if no return fasle
4. at the end return true

*/

func isPalindrome(_ input : String) -> Bool{
  var input = Array(input)
  var start: Int = 0
  var end: Int = input.count - 1
  
  while start < end {
    if input[start] == input[end] {
      start += 1
      end -= 1
    }else{
      return false
    }
  }
  return true
}

print(isPalindrome("aba"))
print(isPalindrome(" aba"))
print(isPalindrome("aba "))
print(isPalindrome("greetings"))
print(isPalindrome("1000000001"))
print(isPalindrome("Fish hsif"))
print(isPalindrome("pennep"))
