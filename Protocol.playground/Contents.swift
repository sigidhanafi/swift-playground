//: Playground - noun: a place where people can play

protocol ExampleProtocol {
    var simpleDescription: String { get set }
    mutating func adjust()
}

class SimpleClass: ExampleProtocol {
    var simpleDescription: String = "A very simple class"
    var anotherProperty: Int = 69105
    // no need mutation keyword because class can always modify the class
    func adjust() {
        simpleDescription += " Now 100% adjusted."
    }
}

let a = SimpleClass()
a.adjust()
let aDescription = a.simpleDescription


struct SimpleStructure: ExampleProtocol {
    var simpleDescription: String = "A simple structure"
    // need mutating because need to modify properties in our struc
    mutating func adjust() {
        simpleDescription += " (adjusted)"
    }
}

var b = SimpleStructure()
b.adjust()
let bDescription = b.simpleDescription


// use extension
extension Int: ExampleProtocol {
    var simpleDescription: String {
        return "The number \(self)"
    }
    
    mutating func adjust() {
        self += 42
    }
}
print(b.simpleDescription)
