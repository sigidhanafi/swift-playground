//: Playground - noun: a place where people can play

import UIKit

// data type
var str = "Hello, playground"
let explicitFloat: Float = 1.2

// string
print("Hello Sigit, berapakah 3 + 2? jawabannya adalah \(3 + 2)")
let text = """
    Hoalah dek, "kok urip e penak tenan
    Yo mugo mugo dinei berkah karo sing Kuoso.
    Aamiin yaRobb.
    """
// array
var bunga: Array = ["Mawar", "Melati", "Semuanya", "Indah",]
print("Hello \(bunga[0])")

var emptyArray = [String]()

let indifidualScores = [10, 20, 50, 45, 70, 80, 60]

// for loop array
var teamScore = 0
for score in indifidualScores {
    if score > 50 {
        teamScore += 3
    } else {
        teamScore += 0
    }
}
print("\(teamScore)")

// optional value
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

// switch case conditional
let vegetable: String = "watercress"
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

// for loop dictionary
let interestingNumbers = [
    "Prime": [2, 3, 5, 7, 9, 11],
    "Fibonacci": [1, 1, 2, 3, 5, 8],
    "Square": [1, 4, 9, 16, 25],
]

var largest = 0
for (kind, numbers) in interestingNumbers {
    for number in numbers {
        if (number > largest) {
            largest = number
        }
    }
}
print("Largest number \(largest)")

// while
var n = 2
while n < 50 {
    n = n * 2
}
print("Nilai n: \(n)")

var m = 2
repeat {
    m = m * 2
} while m < 50
print("Nilai m: \(m)")
