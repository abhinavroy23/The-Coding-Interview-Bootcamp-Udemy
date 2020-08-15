/*

Solution 1:
1. Create an empty chuncked array
2. Iterate over the input array and check if last chunk if full, create a new chunk and append otherwise append to the last chunk
3. return chunked array

*/

func chunk(_ input: [Int],_ size: Int) -> [[Int]] {
  var chunked: [[Int]] = []
  
  for val in input {
    if let last = chunked.last, last.count < size {
      chunked[chunked.count - 1].append(val)
    } else {
      chunked.append([val])
    }
  }
  
  return chunked
}

print(chunk([1, 2, 3, 4, 5, 6, 7, 8, 9, 10], 2))
print(chunk([1, 2, 3], 1))
print(chunk([1, 2, 3, 4, 5], 3))
print(chunk([1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13], 5))
