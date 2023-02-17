import Cocoa

class Animal{
    var legs: Int
    
    init(numLegs: Int){
        self.legs = numLegs
    }
}

class Dog: Animal{
    func speak(){
        print("BARK!")
    }
}

class Cat: Animal{
    var isTame: Bool
    
    init(isTame: Bool, numLegs: Int){
        self.isTame = isTame
        super.init(numLegs: numLegs)
    }
    
    func speak(){
        print("Meow")
    }
}

class Corgi: Dog{
    override func speak(){
        print("Yip")
    }
}

class Poodle: Dog{
    override func speak(){
        print("Growl")
    }
}

class Persian: Cat{
    override func speak(){
        print("Screech")
    }
}

class Lion: Cat{
    override func speak(){
        print("Roar")
    }
}

let leo = Lion(isTame: false, numLegs: 4)
leo.speak()
