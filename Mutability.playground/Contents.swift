
var name: String = "Sigit"
print(name)

name = "Hanafi"
print(name)

let age: Int = 20
print(age)

// Cannot assign to value: 'age' is a 'let' constant
// age = 21

struct Person {
    var name = "Sigit"
}

var person1 = Person()
print(person1.name)

// we can change the value
person1.name = "Hanafi"
print(person1.name)

// can I change value property if I make the property is let
struct Person2 {
    let name = "Sigit"
}

var person2 = Person2()
print(person2.name)

// Cannot assign to property: 'name' is a 'let' constant
// person2.name = "Hanafi"


// Now, I want to create let instance from person
let person3 = Person()
print(person3.name)

// Cannot assign to property: 'person3' is a 'let' constant
// So, we can't modify the value from let instatiate
// person3.name = "Hanafi"

class PersonClass1 {
    var name = "Sigit"
}

var personClass1 = PersonClass1()
print(personClass1.name)


personClass1.name = "Hanafi"
print(personClass1.name)

class PersonClass2 {
    let name = "Sigit"
}

var personClass2 = PersonClass2()
print(personClass2.name)

// Cannot assign to property: 'name' is a 'let' constant
// personClass2.name = "Hanafi"

let personClass3 = PersonClass1()
print(personClass3.name)

personClass3.name = "Hanafi"

//let personClass4 = PersonClass2()
//personClass4.name = "Hanafi"
