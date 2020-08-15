
/*

Simple if else solution

*/


func fizzBuzz(_ input : Int) {
  for i in 1...input {
    if i % 3 == 0 && i % 5 == 0 {
      print("fizzbuzz")
    } else if i % 3 == 0 {
      print("fizz")
    } else if i % 5 == 0{
      print("buzz")
    } else {
      print(i)
    }
  }
}

// Test
fizzBuzz(5)
