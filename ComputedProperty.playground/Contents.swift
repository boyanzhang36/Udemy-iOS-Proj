import Foundation

var pizzaInInches: Int = 10 {
    willSet {
        print(pizzaInInches)
        print(newValue)
    }
    didSet {
        if pizzaInInches >= 18 {
            print("Invalid size specified, pizzaInInches set to 18")
            pizzaInInches = 18
        }
    }
}
pizzaInInches = 28



var numberOfSlices: Int {
    get {
        return pizzaInInches - 4
    }
    set {
        print("numberOfSlices is now \(newValue)")
    }
    
}

numberOfSlices = 12


var w = 1.5
var h = 2.3
var area = 0.0

var bucketsOfPaint : Int {
    get {
        return Int(ceil(w*h/1.5))
    }
    set {
        area = Double(newValue) * 1.5
    }
}

print(bucketsOfPaint)
bucketsOfPaint = 10
print(area)
