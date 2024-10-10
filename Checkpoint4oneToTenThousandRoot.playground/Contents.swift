import Cocoa

/**
 The challenge is this: write a function that accepts an integer from 1 through 10,000, and returns the integer square root of that number. That sounds easy, but there are some catches:

 1.You can’t use Swift’s built-in sqrt() function or similar – you need to find the square root yourself.
 
 2.If the number is less than 1 or greater than 10,000 you should throw an “out of bounds” error.
 
 3.You should only consider integer square roots – don’t worry about the square root of 3 being 1.732, for example.
 
 4.If you can’t find the square root, throw a “no root” error.
 
 As a reminder, if you have number X, the square root of X will be another number that, when multiplied by itself, gives X. So, the square root of 9 is 3, because 3x3 is 9, and the square root of 25 is 5, because 5x5 is 25.
 
 */

enum numberErrors: Error {
    case outOfBounds, noRoot
}

func oneTenThousandSquare(_ number: Int ) throws -> (squareRoot:Int,Int) {
    if number < 1 || number > 10_000 { throw numberErrors.outOfBounds }
    for i in 1...100 {
        var sqrtNumber = i*i
        if sqrtNumber == number {
            return (squareRoot: i, number)
        }
    }
    throw numberErrors.noRoot
}

do {
    let (squareRoot, number) = try oneTenThousandSquare(16)
    print("Square root of \(number) is \(squareRoot)")
} catch numberErrors.outOfBounds {
    print("Out Of Bounds")
} catch numberErrors.noRoot {
    print("No Root")
}

let nu1: Double = 3
let nu2: Double = 2

