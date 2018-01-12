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

// for loop in range
var total = 0
for i in 0..<4 {
    total += i
}
print("Nilai total: \(total)")

total = 0
for i in 0...4 {
    total += i
}
print("Nilai total: \(total)")



// function
func greeting(person: String, day: String) -> String {
    return "Halo \(person), selamat \(day)."
}

greeting(person: "Sigit", day: "siang")

// no argument label
func greetingAgain(_ person: String, customLabel day: String) -> String {
    return "Halo \(person), selamat \(day)."
}

greetingAgain("Sigit Hanafi", customLabel: "siang")


// return multiple value
func calculateStatisitc(scores: [Int]) -> (min: Int, max: Int, sum: Int) {
    var min = scores[0]
    var max = scores[0]
    var sum = 0
    
    for score in scores {
        if score > max {
            max = score
        } else if score < min {
            min = score
        }
        
        sum += score
    }
    
    return (min, max, sum)
}

let statistic = calculateStatisitc(scores: [1, 2, 3, 4, 5, 6, 7])

print("min: \(statistic.min)")
print("max: \(statistic.max)")
print("sum: \(statistic.sum)")

// nested function
func returnFifteen() -> Int {
    var y = 10
    
    func add () {
        y += 5
    }
    
    add()
    
    return y
}

returnFifteen()

// function as first class that can return another function and its value
func makeIncrementer() -> ((Int) -> Int) {
    func addOne(number: Int) -> Int {
        return 1 + number
    }
    
    return addOne
}

var incrementer = makeIncrementer()
incrementer(7)

// function take another function as parameter
func hasAnyMatches(list: [Int], condition: (Int) -> Bool) -> Bool {
    for item in list {
        if condition(item) {
            return true
        }
    }
    return false
}

func lestThanTen(number: Int) -> Bool {
    return number < 10
}

var numbers = [1, 3, 5, 7, 8]
hasAnyMatches(list: numbers, condition: lestThanTen)
