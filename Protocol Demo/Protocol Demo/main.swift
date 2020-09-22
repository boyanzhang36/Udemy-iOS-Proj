protocol CanFly {
    func fly()
}

extension CanFly {
    func fly() {
        print("FLYing")
    }
}


class Bird {
    var isFemale = true
    
    func layEgg() {
        if isFemale {
            print("Egg!!!")
        }
    }
}

class Eagle: Bird, CanFly {
    func fly() {
        print("FLY wing")
    }
}

class Penguin: Bird { }

class Plane: CanFly { }

var flyingObjects: [CanFly] = [Eagle(), Plane()]

Eagle().fly()
Plane().fly()
