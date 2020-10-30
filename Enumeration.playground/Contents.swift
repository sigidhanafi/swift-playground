//: Playground - noun: a place where people can play

enum Rank: Int {
    case ace = 1 // manual assign raw value
    case two, three, four, five, six, seven, eight, nine, ten
    case jack, queen
    case king = 32 // manual assign raw value
    func simpleDescription() -> String {
        switch self {
        case .ace:
            return "ace"
        default:
            return String(self.rawValue)
        }
    }
}

let ace = Rank.ace
let aceRawValue = ace.rawValue

let anotherAce = Rank.jack
let anotherAceRawValue = anotherAce.rawValue

print("\(ace)")
print("\(aceRawValue)")

if (ace.rawValue == anotherAce.rawValue) {
    print("Halooo")
} else {
    print("Hohooo, tidak sama")
}


enum Suit {
    case spades, hearts, diamonds, clubs
    
    func simpleDescription() -> String {
        switch self {
        case .spades:
            return "spades"
        case .hearts:
            return "hearts"
        case .diamonds:
            return "diamonds"
        case .clubs:
            return "clubs"
//         default will only call if we are not spesify test on every case
//        default:
//            return "undefined"
        }
    }
    
    func color() -> String {
        switch self {
        case .spades, .clubs:
            return "black"
        case .hearts, .diamonds: // multiple description
            return "red"
//        default will only call if we are not spesify test on every case
//        default:
//            return "undefined"
        }
    }
}

let hearts = Suit.hearts
let heartsDescription = hearts.simpleDescription()
let color = hearts.color()

// Enum Associate value
enum Activity {
    case bored
    case talking(topic: String)
    case running(where: String)
}

let myActivity = Activity.talking(topic: "Swift")
print(myActivity)

switch myActivity {
case .talking(topic: "Another Thing"):
    print("Topic tentang another thing")
case .talking(topic: "Swift"):
    print("Topic yang diobrolin soal Swift")
default:
    print("Default")
}


// Enum, in traditional, each enum case was only a label for integer value, start from  0
// is we use int on each case, we can access raw value?
// answer:
enum TestInt: Int {
    case one
    case two
}

let myOne = TestInt.one.rawValue
let myTwo = TestInt.two.rawValue

let anotherOne = TestInt.init(rawValue: 3)
// the answer is, yes. it has raw value

// Raw Value. with raw value, we can modify value on each case with string manually. it's called raw Value
enum Airport: String {
    case munich = "MUC"
    case sanFrancisco = "SFO"
    case singapore = "SIN"
}

let myMunich = Airport.munich
// we can construct raw value to case, and it have same value
let myAnotherMunich = Airport.init(rawValue: myMunich.rawValue)


// Associate value, if in london, have multiple airport
enum AnotherAirport: String {
    case munich = "MUC"
    case londonStansted = "STN"
    case londonHeathrow = "LHR"
}
// it's weird, we should use associate value
enum AnotherAirportAssociate {
    case munich
    case london(name: LondonAirport)
}

enum LondonAirport: String {
    case stansted = "STN"
    case heathrow = "HTW"
    case gatwick = "GTK"
}

var airport: AnotherAirportAssociate
var munichAirportName = AnotherAirportAssociate.munich
var stanstedAirportName = AnotherAirportAssociate.london(name: LondonAirport.stansted)

print(stanstedAirportName)

switch stanstedAirportName {
case .london(name: .stansted):
    print("stansted")
default:
    print("default")
}
