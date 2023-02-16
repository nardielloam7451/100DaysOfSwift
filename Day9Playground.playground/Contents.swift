import Cocoa

//using closures within swift (assigning functions to variables)
func greetUser() {
    print("Hi there!")
}

greetUser()
var greetCopy = greetUser
greetCopy()

//creating a closure expression
let sayHello = {
    print("Hi there!")
}
sayHello()

//creating a closure that returns a value, and takes in a parameter
let hello = {(name: String) -> String in
    "Hi \(name)!"
}

print(hello("Anthony"))

//copying a function within a closure (don't need a parameter name within the closure, only when using the function directly)
func getUserData(for id: Int) -> String{
    if id == 1989 {
        return "Taylor Swift"
    } else {
        return "Anonymous"
    }
}

let data: (Int) -> String = getUserData
let user = data(1989)
print(user)

//passing in a function to another function.
let team = ["Gloria", "Suzanne", "Piper", "Tiffany", "Tasha"]
let sortedTeam = team.sorted()
print(sortedTeam)

func captainFirstSorted(name1: String, name2: String) -> Bool {
    if name1 == "Suzanne"{
        return true
    } else if name2 == "Suzanne" {
        return false
    }
    return name1 < name2
}

//let captainFirstTeam = team.sorted(by: captainFirstSorted)
//print(captainFirstTeam)

//creating a full closure syntax (looks similar to nested functions within javascript, which thankfully I have experience in)
let captainFirstTeam = team.sorted(by: { (name1:String, name2: String)-> Bool in
    if name1 == "Suzanne"{
        return true
    } else if name2 == "Suzanne" {
        return false
    }
    return name1 < name2
})
print(captainFirstTeam)

//using tricks to reduce the amount of syntax for closures within a swift command.
//when passing in values in to a function with parameters and return types already defined, you can simply remove the definition of the parameters within the closure.
//additionally, you can remove the parameters name, and the in, and use a new syntax called: $0, $1...etc for however many parameters you have.
//finally, you can remove the parenthesis around the value, as it will open up another shorthand syntax
let sorted = team.sorted {
    if $0 == "Suzanne"{
        return true
    } else if $1 == "Suzanne"{
        return false
    }
    return $0 < $1
}
print(captainFirstTeam)

//writing functions that accept functions as parameters
func makeArray(size: Int, using generator: () -> Int) -> [Int]{
    var numbers = [Int]()
    
    for _ in 0..<size{
        let newNumber = generator()
        numbers.append(newNumber)
    }
    return numbers
}

let rolls = makeArray(size: 50){
    Int.random(in: 1...20)
}
print(rolls)

