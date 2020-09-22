protocol CanFly {
    func fly()
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

class Penguin: Bird {
    
}

class Plane: CanFly {
    func fly() {
        print("FLYing engine")
    }
}

var flyingObjects: [CanFly] = [Eagle(), Plane()]
