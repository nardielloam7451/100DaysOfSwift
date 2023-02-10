import Cocoa

//using if statements within swift

let examScore = 80.5
let examScore2 = 75.0

if examScore > 80.0{
    print("Great job!")
}

let speed = 88

if speed >= 88 {
    print("Where we're going, we don't need roads.")
}

let percentage = 85
if percentage < 85 {
    print("Sorry, you failed the test.")
}

let ourName = "Dave Listener"
let friendName = "Arnold Rimmer"

if ourName < friendName {
    print("It's \(ourName) vs \(friendName)")
}

if ourName > friendName {
    print("It's \(friendName) vs \(ourName)")
}

var numbers = [1, 2, 3]
numbers.append(4)

if numbers.count > 3 {
    numbers.remove(at: 0)
}

//equality in swift
let country = "Canada"

if country == "Australia"{
    print("G'day!")
}

let name = "David"

if name != "Anonymous"{
    print("Welcome, \(name)")
}

//checking multiple conditions (using if and else if)
let age = 16

if age >= 18{
    print("You can vote in the next election!")
}
else{
    print("Sorry, you're too young to vote. ")
}
//using && and ||
let temp = 25

if temp > 20 && temp < 30{
    print("It's a nice day.")
}

let userAge = 14
let hasParentalConsent = true

if age >= 18 || hasParentalConsent == true {
    print("You can buy the game!")
}

enum TransportOption {
    case airplane, helicopter, bicycle, car, escooter
}

let transport = TransportOption.airplane

if transport == .airplane || transport == .helicopter{
    print("Let's fly!")
} else if transport == .bicycle || transport == .escooter{
    print("Ihope there's a bike path...")
} else{
    print("I'm going to hire a scooter now!")
}

//using switch statements
enum Weather {
    case sun, rain, wind, snow, unknown
}

let forecast = Weather.sun

switch forecast{
case .sun:
    print("It should be a nice day.")
case .rain:
    print("Pack an umbrella.")
case .wind:
    print("Wear something warm")
case .snow:
    print("School is cancelled.")
case .unknown:
    print("Our forecast generator is broken!")
}
//all switches need to have all cases covered, regardless of how many cases that could exist.
//similarly, it does not need a break statement after each case, which is quite nice.
//however, you can use a default case to prevent the covering case.

let place = "Metropolis"
switch place {
case "Gotham":
    print("You're Batman!")
    fallthrough
case "Mega-City One":
    print("You're Judge Dredd!")
    fallthrough
case "Wakanda":
    print("You're Black Panther!")
    fallthrough
default:
    print("Who are you?")
}
//swift does have an ability to force your switch statement to continue checking all other cases after you have officially matched a case, called a fallthrough. When used, it will allow the next case after the fall through to end.

//using ternary conditions in swift, allows us to check a condition, and return one value or another based upon that condition.
let voterAge = 18
let canVote = voterAge >= 18 ? "Yes": "No"
//can use the memomic WTF: What are we checking, What to send back if true, what to send back if false

let hour = 23
print(hour < 12 ? "It's before noon": "It's after noon")

let names = ["Jayne", "Kaylee", "Mal"]
let crewCount = names.isEmpty ? "No one": "\(names.count) people"
print(crewCount)
