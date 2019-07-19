//: Playground - noun: a place where people can play

import Foundation

class Human {
    let firstName: String
    var lastName: String
    
    init(firstName: String, lastName: String) {
        self.firstName = firstName
        self.lastName = lastName
    }
    
    convenience init() {
        self.init(firstName: "Sigit", lastName: "Hanafi")
        self.firstName = "asdasdasSigit"
    }
    
    func updateValue() {
        self.firstName = "Update Sigit"
    }
    
//    var setValue: String {
//        get {
//            return ("Halo, \(firstName)")
//        }
//        set (newValue) {
//            firstName = newValue
//        }
//    }
}

//var sigitHanafi = Human(firstName: "Sigit", lastName: "Hanafi")
//print("\(sigitHanafi.firstName)")
//print("\(sigitHanafi.lastName)")
//
////sigitHanafi.setValue = "Seagate"
//print("\(sigitHanafi.firstName)")
//print("\(sigitHanafi.setValue)")

let sigit = Human()
print(sigit.firstName)
