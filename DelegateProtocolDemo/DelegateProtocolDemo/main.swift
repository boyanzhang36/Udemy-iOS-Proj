
// analogy: ~= UITextFieldDelegate
protocol AdvancedLifeSupport {
    func performCPR()
}

// analogy: ~= TextField
class EmergencyCallHandler {
    var delegate: AdvancedLifeSupport?
    
    func assessSituation() {
        print("Can you tell me what happened?")
    }
    
    func medicalEmergency() {
        delegate?.performCPR()
    }
}

// analogy: ~= ViewController
struct Paramedic: AdvancedLifeSupport { // VC1
    
    init(handler: EmergencyCallHandler) {
        handler.delegate = self
    }
    func performCPR() {
        print("The PARAMEDIC does chect compressions...")
    }
}

class Doctor: AdvancedLifeSupport {    // VC2
    init(handler: EmergencyCallHandler) {
        handler.delegate = self
    }
    
    func performCPR() {
        print("The DOCTOR does chect compressions...")
    }
}

//---------------------------------------
let emilio = EmergencyCallHandler()
let pete = Paramedic(handler: emilio)
emilio.assessSituation()
emilio.medicalEmergency()

let dave = Doctor(handler: emilio)
emilio.assessSituation()
emilio.medicalEmergency()
