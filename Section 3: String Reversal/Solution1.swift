
/*

Solution 1:
1. Convert input string to Array
2. reverse the array
3. cast it back to String

*/

func reverse(_ input : String) -> String {
  return String(input.reversed())
}

print(reverse("abcd") == "dcba")
print(reverse("  abcd") == "dcba  ")
print(reverse("") == "")
