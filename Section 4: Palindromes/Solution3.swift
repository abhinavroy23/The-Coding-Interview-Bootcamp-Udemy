/*

Solution 3:

Advancement on Solution 2 to use forEach function

*/

func isPalindrome(_ input : String) -> Bool{
  for (i, char) in input.enumerated() {
    if char != Array(input)[input.count-1-i]{
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
