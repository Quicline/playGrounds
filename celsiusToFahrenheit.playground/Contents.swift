import Cocoa

//var greeting = "Hello, playground"

let celsius: Double = 32.0
// Fahrenheit to celsius formula((fahrenheit - 32) * 5) / 9
let celsiusConvertion: Double = ((fahrenheit - 32) * 5) / 9

let fahrenheit: Double = 90.0
// celsius to Fahrenheit formula((celsius * 9) / 5) + 32
let fahrenheitConvertion: Double = ((celsius * 9) / 5) + 32


print("\(fahrenheitConvertion)\("°") Fahrenheit")
print("\(celsiusConvertion)\("°") Celsius")
