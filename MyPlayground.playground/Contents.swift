import Cocoa

//Day One Playground Values
var greeting = "Hello, playground"
var name = "Anthony"
name = "Kendra"

let character = "Anthony"
print(character)

//How Strings showcase off the fact they have quotations within them.
let result = "Then he tapped a sign saying \"Belive\" and walked away."

//How to do multi-line strings within Swift
let movie = """
A day in
the life of an
Apple Engineer
"""

//Reading the lenth of a string
print(movie.count)

//Uppercasing a string within Swift
print(result.uppercased())

//using prefix and sufix
print(result.hasPrefix("Then he"))
print(greeting.hasSuffix("playground"))


let score = 10

//When storing really large numbers, swift uses _ in place of the commas. EX:
let reallyBig = 100_000_000

let lowerScore = score - 2
let higherScore = score + 10

var counter = 10
counter = counter + 5
//can also use the compound assignment operator += to add to counter

counter += 5
//Also exists in *=, -=, /=

//getting the multiple of a integer in swift
print(score.isMultiple(of: 5))

//creating a double within swift
let number = 0.1 + 0.2
print(number)

//casting to between a double and an int
let a = 1
let b = 2.0
let c = Double(a) + b

//swift is a strongly typed language, good to know for long-term viability
