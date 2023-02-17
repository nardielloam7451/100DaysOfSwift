import Cocoa

//creating classes within Swift
//still called properties, methods, and you get access to property observers and acesss control
class Game {
    var score = 0 {
        didSet {
            print("Score is now \(score)")
        }
    }
}

var newGame = Game()
newGame.score += 10

//inheritance within Swift
class Employee{
    let hours: Int
    
    init(hours:Int){
        self.hours = hours
    }
    
    func printSummary(){
        print("I work \(hours) hours a day.")
    }
}

class Developer: Employee {
    func work() {
        print("I'm writing code for \(hours) hours.")
    }
    
    override func printSummary() {
        print("I'm a developer who will sometimes work \(hours) hours per day, but other times will spend hours arguing about whether code should be indented with tabs or spaces.")
    }
}

class Manager: Employee {
    func work() {
        print("I'm going to meetings for \(hours) hours.")
    }
}

let robert = Developer(hours: 8)
let david = Manager(hours: 10)
robert.work()
david.work()

robert.printSummary()

//how to add initializers for classes
class Vehicle{
    let isElectric: Bool
    
    init(isElectric: Bool){
        self.isElectric = isElectric
    }
}

class Car: Vehicle{
    let isConvertible: Bool
    
    init(isConvertible: Bool, isElectric: Bool){
        self.isConvertible = isConvertible
        super.init(isElectric: isElectric)
    }
    
}
//how to copy classes
class User {
    var username = "Anonymous"
    
    func copy() -> User{
        let user = User()
        user.username = username
        return user
    }
    
}

var user1 = User()
var user2 = user1

user2.username = "Taylor"

print(user1.username)
print(user2.username)

//can create something called a deep copy, by adding a function called copy to the class

//how to create a deinitalizer for a class
class newUser{
    let id: Int
    
    init(id: Int){
        self.id = id
        print("User \(id): I'm alive!")
    }
    
    deinit {
        print("User \(id): I'm dead!")
    }
}

for i in 1...3{
    let user = newUser(id: i)
    print("User \(user.id): I'm in control!")
}
