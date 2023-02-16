import Cocoa

//providing default values for parameters
func printTimesTables(for number: Int, end: Int = 12){
    for i in 1...end{
        print("\(i) x \(number) is \(i*number)")
    }
}

printTimesTables(for: 5, end: 20)
printTimesTables(for: 8)

//remove for array uses this default value system, which can be nice to help when removing only specific values
var characters = ["Lana", "Pam", "Ray", "Sterling"]
print(characters.count)
characters.removeAll(keepingCapacity: true)
print(characters.count)

//Handling errors in a function
enum PasswordError: Error{
    case short, obvious
}

func checkPassword(_ password: String)throws -> String{
    if password.count < 5 { throw PasswordError.short}
    if password == "12345"{ throw PasswordError.obvious}
    
    if password.count < 8{
        return "OK"
    } else if password.count < 10{
        return "Good"
    } else {
        return "Excellent"
    }
}
//swift needs any function with the throws keyword to have a do-try-catch
do{
    let result = try checkPassword("12345")
    print("Password rating: \(result)")
} catch{
    print("There was an error.")
}

//can also be written by try!, but this should only be used if you are certain that the error condition will never come up, otherwise it will crash
let result = try! checkPassword("ABCDEFGHI")
print("Password rating: \(result)")
