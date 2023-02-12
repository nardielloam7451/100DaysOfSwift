import Cocoa

//making functions within swfit
func showWelcome() {
    print("Welcome to my app!")
    print("Be default This prints out a conversion")
    print("chart from centimeters to inches, but you,")
    print("can also set a custom range if you want.")
}

showWelcome()

let number = 138
if number.isMultiple(of: 2){
    print("Even")
}else{
    print("Odd")
}

let roll = Int.random(in:1...20)

func printTimesTables(number: Int, end: Int){
    for i in 1...end{
        print("\(i) * \(number) is \(i * number)")
    }
}

//swift forces you to list out all parameters when calling a function, which can be nice to showcase what you are filling the parameter with an argument.
printTimesTables(number: 5, end: 20)

//returning values from functions
let root = sqrt(169)
print(root)

//if you only have one single line of code, and your function is primed to return a value, you can remove the return key word, and just have the line of code
func rollDice() -> Int {
    Int.random(in: 1...6)
}

let result = rollDice()
print(result)

//otherwise, you can just use the return keyword like most programming languages
func checkStrings(string1: String, string2: String) -> Bool {
    return string1.sorted() == string2.sorted()
}

print(checkStrings(string1: "bog", string2: "gob"))

func pythagoras(a: Double, b: Double) -> Double {
    let input = a*a + b * b
    let root = sqrt(input)
    return root
}

print(pythagoras(a: 3, b: 4))

//returning multiple values from functions
func getUser() -> [String]{
    ["Taylor", "Swift"]
}

let user = getUser()
print("Name: \(user[0]) \(user[1])")

//can use dictionaries, arrays, and sets, however they tend to not be used in Swift. Instead, they prefer to use Tuples.

func getNewUser() -> (firstName: String, lastName: String){
    ("Kendrick", "Lamar Duckworth")
}
let newUser = getNewUser()
print("Name: \(newUser.firstName) \(newUser.lastName)")

//customizing parameters names
func rollDice(sides: Int, count: Int) -> [Int]{
    var rolls = [Int]()
    
    for _ in 1...count {
        let roll = Int.random(in: 1...sides)
        rolls.append(roll)
    }
    return rolls
}

print(rollDice(sides: 6, count: 100))
//can overload a function name, providing us with the principle of polymorphism
func hireEmployee(name: String) { }
func hireEmployee(title: String) { }
func hireEmployee(location: String) { }

//removing a parameter name: You can add an _ and a space before a parameter name to remove the need to use it when calling the funciton.
func isUppercase(_ string: String) -> Bool{
    string == string.uppercased()
}
let testString = "HELLO, WORLD"
let testResult = isUppercase(testString)
