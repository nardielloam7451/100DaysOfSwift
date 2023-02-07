import Cocoa

let filename = "paris.jpg"
print(filename.hasSuffix(".jpg"))

let number = 120
print(number.isMultiple(of: 3))

//using booleans directly in swift
let goodDogs = true
var gameOver = false
print(gameOver)
let isMultiple = 120.isMultiple(of: 3)

//does use the standard notation for not: !
gameOver = !gameOver


//can use .toggle to change between true and false
gameOver.toggle()
print(gameOver)

//string concatenation
let firstPart = "Hello, "
let secondPart = "world!"
let greeting = firstPart + secondPart

//string interpolation
let name = "Taylor"
let age = 26
let message = "Hello, my name is \(name) and I'm \(age) years old."
print(message)

