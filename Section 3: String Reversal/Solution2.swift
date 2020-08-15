
/*

Solution 2:
1. Create an empty variable
2. loop on input string
3. variable = currentChar + variable
4. return variable

*/

func reverse(_ input : String) -> String {
  var result : String = ""
  for char in input {
    result = String(char) + result
  }
  return result
}

print(reverse("abcd") == "dcba")
print(reverse("  abcd") == "dcba  ")
print(reverse("") == "")
