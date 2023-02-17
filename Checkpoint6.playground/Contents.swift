import Cocoa

struct car{
    let model: String
    let seats: Int
    private var ableChangeGear: Bool
    var gear: Int{
        didSet{
            if gear < 1{
                print("Cannot change Gear, as there is no gear less than 1")
                ableChangeGear = false
            } else if gear == 10{
                print("Cannot change Gear, as there is no gear greater than 10")
                ableChangeGear = false
            }else{
                ableChangeGear = true
            }
        }
    }
    
    init(modelName: String, numSeats: Int){
        self.model = modelName
        self.seats = numSeats
        self.ableChangeGear = true
        self.gear = 1;
    }
    
    mutating func changeGears(gearLevel: Int, shift: String){
        if shift.lowercased() == "up"{
            gear += gearLevel
        } else if shift.lowercased() == "down"{
            gear -= gearLevel
        }
        if(ableChangeGear){
            print("Gear level changed to \(gear)")
        } else{
            if shift.lowercased() == "up"{
                gear -= gearLevel
            } else{
                gear += gearLevel
            }
        }
    }
}

var newCar = car(modelName: "Dodge Avenger", numSeats: 4)
newCar.changeGears(gearLevel: 4, shift: "Up")
newCar.changeGears(gearLevel: 5, shift: "down")
newCar.changeGears(gearLevel: 3, shift: "up")
