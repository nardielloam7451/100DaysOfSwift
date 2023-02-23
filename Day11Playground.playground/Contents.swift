import Cocoa

//limiting access to internal data using access control (private, fileprivate(only let classes/structs/functions inside of file use it,  public)
struct BankAccount{
    private var funds = 0
    
    mutating func deposit(amount: Int){
        funds += amount
    }
    
    mutating func withdraw(amount: Int)->Bool{
        if funds > amount{
            funds -= amount
            return true
        } else{
            return false
        }
    }
}

var account = BankAccount()
account.deposit(amount: 100)
let success = account.withdraw(amount:200)

if success{
    print("Withdrew money successfully")
} else{
    print("Not enough money in account to complete transaction")
}

//using static properties and methods in structs
struct School{
    static var studentCount = 0
    
    static func add(student: String){
        print("\(student) joined the school.")
        studentCount += 1
    }
}

School.add(student: "Taylor Swift")
print(School.studentCount)
//as always, you cannot access non-static properties and methods from static contexts, but you can read static methods and properties from the non-static contexts (Self with a capital s is the representation for that)
