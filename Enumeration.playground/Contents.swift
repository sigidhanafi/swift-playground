//: Playground - noun: a place where people can play

enum Rank: Int {
    case ace = 1
    case two, three, four, five, six, seven, eight, nine, ten
    case jack, queen, king
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

