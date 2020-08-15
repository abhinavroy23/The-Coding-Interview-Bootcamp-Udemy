/*

Solution 2:
1. Create an char array of size 256 and instantiate with zero
2. iterate over the input and increase the value at index which is ascii character of the current char
3. At the end find the max value in char array, the index of max value will be the ascii value of the max char
4. convert the ascii value to char and return the result

*/

func maxChars(_ input : String) -> Character?{
  var charArr : [Int] = Array(repeatElement(0, count: 256))
  
  for char in input {
    charArr[Int(char.asciiValue!)] += 1
  }
  
  var max : Int = 0
  var index : Int = 0
  for (i,val) in charArr.enumerated() {
    if max < val {
      max = val
      index = i
    }
  }
  
  if max != 0 {
    return Character(UnicodeScalar(index)!)
  }
  return nil
}

// Tests
var inputs = ["abccccccdd", "a", "", "ab1c1d1e1f1g1"]
for inp in inputs {
  if let result = maxChars(inp) {
    print(result)
  } else {
    print("No max char found")
  }
}
