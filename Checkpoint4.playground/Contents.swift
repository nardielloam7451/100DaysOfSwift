import Cocoa

enum numberError: Error{
    case outOfBounds, noRoot
}

func squareRoot(number: Int)throws -> Int{
    var root = 0
    if number < 1 || number > 10000{
        throw numberError.outOfBounds
    }
    for i in 1...100{
        let result = (i * i)
        if result == number{
           root = i
            return root
        }
    }
    if(root == 0){
        throw numberError.noRoot
    }
}

do{
    let testNumber = 25
    let result = try squareRoot(number: testNumber)
    print("The Square root of \(testNumber) is \(result)")
} catch numberError.noRoot{
    print("The number has no root")
} catch numberError.outOfBounds{
    print("The Number was out of bounds. ")
}
