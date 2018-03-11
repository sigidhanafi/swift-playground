//: Playground - noun: a place where people can play

class Human {
    var firstName: String
    var lastName: String
    
    init(firstName: String, lastName: String) {
        self.firstName = firstName
        self.lastName = lastName
    }
    
    var setValue: String {
        get {
            return ("Halo, \(firstName)")
        }
        set (newValue) {
            firstName = newValue
        }
    }
}

var sigitHanafi = Human(firstName: "Sigit", lastName: "Hanafi")
print("\(sigitHanafi.firstName)")
print("\(sigitHanafi.lastName)")

//sigitHanafi.setValue = "Seagate"
print("\(sigitHanafi.firstName)")
print("\(sigitHanafi.setValue)")

