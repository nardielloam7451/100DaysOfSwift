import Cocoa

let opposites = [
    "Mario": "Wario",
    "Luigi": "Waluigi"
]

let peachOpposite = opposites["Peach"]

//unwrapping an optional, which is denoted by the type followed by a quesiton mark. EX: String?
if let marioOpposite = opposites["Mario"] {
    print("Mario's opposite is \(marioOpposite)")
}

var username: String? = nil

if let unwrappedName = username {
    print("We got a user: \(unwrappedName)")
} else {
    print("The optional was empty.")
}

//using guard to unwrap optionals
func printSquare(of number: Int?){
    guard let number = number else{
        print("Missing input")
        return
    }
    
    print("\(number) x \(number) is \(number * number)")
}

printSquare(of: 5)

//using ?? to unwrap optionals
let captains = [
    "Enterprise": "Picard",
    "Voyager": "Janeway",
    "Defiant": "Sisko"
]

let new = captains["Serenity"] ?? "N/A"

let tvShows = ["Archer", "Babylon 5", "Ted Lasso"]
let favorite = tvShows.randomElement() ?? "None"

//using multiple optionals with optional chaining
let names = ["Arya", "Bran", "Robb", "Sansa"]
let chosen = names.randomElement()?.uppercased() ?? "No one"
print("Next in line: \(chosen)")

//calling functions that throw errors that contain optionals

enum UserError: Error {
    case badID, networkFailed
}

func getUser(id: Int) throws -> String{
    throw UserError.networkFailed
}

if let user = try? getUser(id: 23) {
    print("User: \(user)")
}
