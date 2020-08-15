/*

Solution 2:
1. calculate abs value of input
2. Take a 'sum' variable
3. while sum > 0, keep doing sum = sum/10 and keep storing "sum % 10" as string in an array
4. join the array and parse to Int

NOTE: Take care of the sign while returning

*/

func reverseInt(_ input : Int) -> Int{
  let isNegative: Bool = input < 0 ? true : false
  var input = isNegative ? abs(input) : input
  var arr: [String] = [String]()
  var sum: Int = input
  while sum > 0 {
    arr.append(String(sum % 10))
    sum = sum / 10
  }
  let result: Int = Int(arr.joined())!
  return isNegative ? -result : result
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
