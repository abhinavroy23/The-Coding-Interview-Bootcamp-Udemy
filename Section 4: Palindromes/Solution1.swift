
/*

Solution 1:
1. reverse the string
2. match with the original string
3. if they are equal it's a palindrome otherwise not

*/

func isPalindrome(_ input : String) -> Bool{
  return String(input.reversed()) == input
}

print(isPalindrome("aba"))
print(isPalindrome(" aba"))
print(isPalindrome("aba "))
print(isPalindrome("greetings"))
print(isPalindrome("1000000001"))
print(isPalindrome("Fish hsif"))
print(isPalindrome("pennep"))
