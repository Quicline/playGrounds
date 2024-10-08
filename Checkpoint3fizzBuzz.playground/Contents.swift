import Cocoa
/*
 fizz buzz.
 
 Your goal is to loop
 from 1 through 100, and for each number:

 If it’s a multiple of 3, print “Fizz”
 If it’s a multiple of 5, print “Buzz”
 If it’s a multiple of 3 and 5, print “FizzBuzz”
 Otherwise, just print the number.

*/

let fizz:Int = 3
let buzz:Int = 5

for i in 1...100 {
    if i.isMultiple(of: fizz) && i.isMultiple(of: buzz) {
        print("FizzBuzz")
    } else if i.isMultiple(of: buzz) {
        print("Buzz")
    } else if i.isMultiple(of: fizz) {
        print("Fizz")
    } else {
        print(i)
    }
}
