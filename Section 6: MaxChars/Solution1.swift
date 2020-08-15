/*

Solution 1:
1. Take a character map
2. Iterate over the input and check if char is found in char map, if yes increase it's cound otherwise set it as 1
3. In the end iterate over the char map and return the key with the max value

*/

func maxChars(_ input : String) -> Character?{
  var charMap : [Character : Int] = [Character : Int]()
  for char in input {
    if let val = charMap[char] {
      charMap[char] = val + 1
    } else {
      charMap[char] = 1
    }
  }
  
  let first = charMap.first
  var result : Character? = first?.key
  var resultFreq : Int? = first?.value
  charMap.forEach { (key,val) in
    if let freq = resultFreq, freq < val {
      result = key
      resultFreq = val
    }
  }
  
  guard let res = result, let freq = resultFreq else {
    return nil
  }
  return res
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
