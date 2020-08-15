/*

Solution 2:
This solution uses array slicing

1. Instantiate an index variable with 0
2. while index is less than input count slice the array with the given size and increment the index variable
3. append the sliced array to a result array
4. return result array

NOTE: Take care of the last index - where last slice is not equal the the size

*/

func chunk(_ input: [Int],_ size: Int) -> [[Int]] {
  var index: Int = 0
  var result: [[Int]] = []
  while index < input.count {
    let end: Int = (index+size) <= input.count ? (index+size) : input.count
    result.append(Array(input[index..<end]))
    index += size
  }
  
  return result
}

print(chunk([1, 2, 3, 4, 5, 6, 7, 8, 9, 10], 2))
print(chunk([1, 2, 3], 1))
print(chunk([1, 2, 3, 4, 5], 3))
print(chunk([1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13], 5))
