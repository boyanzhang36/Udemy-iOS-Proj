

struct MyOptional {
    var property = 123
    func method() {
        print("asdf")
    }
}

let myOptional: MyOptional? = nil


print(myOptional?.property)
 
