import Cocoa

protocol Building{
    var rooms: Int { get set }
    var cost: Int { get set }
    var realtor: String { get }
    
    func salesSummary(soldTo: String)
}

struct House: Building{
    var rooms = 8
    var cost = 250_000
    let realtor = "Jake Masters"
    
    func salesSummary(soldTo: String){
        print("\(realtor) sold this lovely house with \(rooms) to \(soldTo) for \(cost)")
    }
}

struct Office: Building{
    var rooms = 250
    var cost = 1_000_000
    let realtor = "Donna Sue"
    
    func salesSummary(soldTo: String){
        print("\(realtor) sold this office building to \(soldTo) for \(cost), who is planning to use it for his startup")
    }
}


let house = House()
house.salesSummary(soldTo: "Jennifer Nardiello")
