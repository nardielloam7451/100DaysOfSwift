import Cocoa

//using protocols, which are essentally interfaces/abstact classes!!
protocol Vehicle {
    var name: String { get }
    var currentPassengers: Int { get set } //if you use both get and set, you cannot use constants within swift.
    func estimateTime(for distance: Int) -> Int
    func travel(distance: Int)
}

struct Car: Vehicle {
    let name = "Car"
    var currentPassengers = 1
    func estimateTime(for distance: Int) -> Int {
        distance / 50
    }
    
    func travel(distance: Int) {
        print("I'm driving \(distance)mi")
    }
    
    func openSunroof(){
        print("It's a nice day!")
    }
}

struct Bicycle: Vehicle {
    let name = "Bicycle"
    var currentPassengers = 1
    func estimateTime(for distance: Int) -> Int {
        distance/10
    }
    
    func travel(distance: Int) {
        print("I'm cycling \(distance)mi")
    }
}
//protocols allow us to put the generic type within a function, and as long as they inherit from the protocol, you can use it.
func commute(distance: Int, using vehicle: Vehicle){
    if vehicle.estimateTime(for: distance) > 100{
        print("That's too slow! I'll try a different vehicle.")
    } else {
        vehicle.travel(distance: distance)
    }
}

let car = Car()
commute(distance: 100, using: car)
let bike = Bicycle()
commute(distance: 50, using: bike)

//how to use opaque return types (kind of like generics
func getRandomNumber() -> some Equatable{
    Int.random(in: 1...6)
}

func getRandomBool() -> some Equatable {
    Bool.random()
}

print(getRandomNumber() == getRandomNumber())
let num = getRandomNumber()

//using extensions in swift, which lets us add functionality to the existing types in swift!!
var quote = " The truth is rarely pure and never simple "


extension String {
    func trimmed() -> String {
        self.trimmingCharacters(in: .whitespacesAndNewlines)
    }
    
    mutating func trim(){
        self = self.trimmed()
    }
}
let trimmed = quote.trimmed()
quote.trim()

//creating and using protocol extensions
extension Collection {
    var isNotEmpty: Bool{
        isEmpty == false
    }
}
let guests = ["Mario", "Luigi", "Peach"]

if guests.isNotEmpty{
    print("Guest count: \(guests.count)")
}
