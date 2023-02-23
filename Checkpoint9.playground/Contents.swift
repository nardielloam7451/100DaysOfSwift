import Cocoa

func randomArray(of numberArray: [Int?]) -> Int{
    let number = numberArray.randomElement()! ?? Int.random(in: 1...100)
    return number
}

let newNumber = randomArray(of: [5, 10, 15, 20])
print(newNumber)

let randNumber = randomArray(of: [nil])
print(randNumber)
