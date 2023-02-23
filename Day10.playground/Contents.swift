import Cocoa

//creating structs
struct Album {
    let title: String
    let artist: String
    let year: Int
    
    func printSummary() {
        print("\(title) (\(year)) by \(artist)")
    }
}

let maadCity = Album(title: "Good kidd mAAd City", artist: "Kendrick Lamar", year: 2012)
let wings = Album(title: "Wings", artist: "BTS", year: 2016)

print(maadCity.title)
print(wings.artist)

maadCity.printSummary()
wings.printSummary()

//when you want to modify data from within a function within the struct, you need to include mutating in front of it, which will restrict whether or not we can call the struct as a constant or only as a variable
struct Employee {
    //these are called the property of the struct
    let name: String
    var vacationRemaining: Int
    
    //method of the struct
    mutating func takeVacation(days: Int){
        if vacationRemaining > days {
            vacationRemaining -= days
            print("I'm going on vacation!")
            print("Days remaining: \(vacationRemaining)")
        } else{
            print("Oops! There aren't enough days remaining.")
        }
    }
}

var archer = Employee(name: "Sterling Archer", vacationRemaining: 14) //instance
archer.takeVacation(days: 5)
print(archer.vacationRemaining)

//computing property values dynamically
struct newEmployee{
    let name: String
    var vacationAllocated = 14
    var vacationTaken = 0
    
    var vacationRemaining: Int {
        get{
            vacationAllocated - vacationTaken
        }
        
        set{//can create getters and setters within a struct to allow us to dynamic program a value for a struct
            vacationAllocated = vacationTaken + newValue
        }
    }
}

var newArcher = newEmployee(name: "Sterling Archer", vacationAllocated: 14)
newArcher.vacationTaken += 4
newArcher.vacationRemaining = 5
print(newArcher.vacationAllocated)

//taking an action when a property changes
struct Game{
    var score = 0{
        didSet{
            print("Score is now \(score)")
        }
    }
}

var game = Game()
game.score += 10
game.score -= 3
game.score += 1

struct App{
    var contacts = [String]() {
        willSet {
            print("Current value is: \(contacts)")
            print("New Value will be: \(newValue)")
        }
        
        didSet{
            print("There are now \(contacts.count) contacts")
            print("Old value was \(oldValue)")
        }
    }
}

var app = App()
app.contacts.append("Adrian E")
app.contacts.append("Allen W")
app.contacts.append("Ish S")

//creating custom initializers for structs
struct Player{
    let name: String
    let number: Int
    
    init(name: String, number: Int){
        self.name = name
        self.number = number
    }
}

let player = Player(name: "Megan R", number: 39)
