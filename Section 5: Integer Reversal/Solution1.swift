/*

Solution 1:
1. Convert the absolute int value to String and reverse it
2. Join back together and parse to Int

NOTE: Take care of the - sign while returning

*/

func reverseInt(_ input : Int) -> Int {
  var result = Int(String(String(abs(input)).reversed()))!
  if input < 0 {
    return -result
  }
  return result
}

print(reverseInt(0))
print(reverseInt(5))
print(reverseInt(15))
print(reverseInt(90))
print(reverseInt(2359))
print(reverseInt(-5))
print(reverseInt(-15))
print(reverseInt(-90))
print(reverseInt(-2359))
