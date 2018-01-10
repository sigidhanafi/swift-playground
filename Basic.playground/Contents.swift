//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

let explicitFloat: Float = 1.2

print("Hello Sigit, berapakah 3 + 2? jawabannya adalah \(3 + 2)")

let text = """
    Hoalah dek, "kok urip e penak tenan
    Yo mugo mugo dinei berkah karo sing Kuoso.
    Aamiin yaRobb.
    """

var bunga: Array = ["Mawar", "Melati", "Semuanya", "Indah",]
print("Hello \(bunga[0])")

var emptyArray = [String]()

let indifidualScores = [10, 20, 50, 45, 70, 80, 60]

var teamScore = 0
for score in indifidualScores {
    if score > 50 {
        teamScore += 3
    } else {
        teamScore += 0
    }
}

print("\(teamScore)")


var optionalString: String? = "Hello"
print(optionalString == nil)

var optionalName: String? = "Sigit Hanafi"
var greeting = "Hello"
if let name = optionalName {
    greeting = "Hello, \(name)"
} else {
    greeting = "Hoooo"
}

print(greeting)

var nickName: String? = nil
var fullName: String = "Sigit Hanafi"
let informalGreeting = "Hi, \(nickName ?? fullName)"


let vegetable: String = "celery"
switch vegetable {
    case "celery":
        print("Add some raisins and make ants on a log.")
    case "cucumber", "watercress":
        print("That would make a good tea sandwich.")
    case let x where x.hasSuffix("pepper"):
        print("Is it a spicy \(x)?")
    default:
        print("Everything tastes good in soup.")
}
