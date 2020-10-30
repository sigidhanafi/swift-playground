//: Playground - noun: a place where people can play

import UIKit

//// data type
//var str = "Hello, playground"
//let explicitFloat: Float = 1.2
//
//// string
//print("Hello Sigit, berapakah 3 + 2? jawabannya adalah \(3 + 2)")
//let text = """
//    Hoalah dek, "kok urip e penak tenan
//    Yo mugo mugo dinei berkah karo sing Kuoso.
//    Aamiin yaRobb.
//    """
//// array
//var bunga: Array = ["Mawar", "Melati", "Semuanya", "Indah",]
//print("Hello \(bunga[0])")
//
//var emptyArray = [String]()
//
//let indifidualScores = [10, 20, 50, 45, 70, 80, 60]
//
//// for loop array
//var teamScore = 0
//for score in indifidualScores {
//    if score > 50 {
//        teamScore += 3
//    } else {
//        teamScore += 0
//    }
//}
//print("\(teamScore)")
//
//// optional value
//var optionalString: String? = "Hello"
//print(optionalString == nil)
//
//var optionalName: String? = "Sigit Hanafi"
//var greeting = "Hello"
//if let name = optionalName {
//    greeting = "Hello, \(name)"
//} else {
//    greeting = "Hoooo"
//}
//print(greeting)
//
//var nickName: String? = nil
//var fullName: String = "Sigit Hanafi"
//let informalGreeting = "Hi, \(nickName ?? fullName)"
//
//// switch case conditional
//let vegetable: String = "watercress"
//switch vegetable {
//    case "celery":
//        print("Add some raisins and make ants on a log.")
//    case "cucumber", "watercress":
//        print("That would make a good tea sandwich.")
//    case let x where x.hasSuffix("pepper"):
//        print("Is it a spicy \(x)?")
//    default:
//        print("Everything tastes good in soup.")
//}
//
//// for loop dictionary
//let interestingNumbers = [
//    "Prime": [2, 3, 5, 7, 9, 11],
//    "Fibonacci": [1, 1, 2, 3, 5, 8],
//    "Square": [1, 4, 9, 16, 25],
//]
//
//var largest = 0
//for (kind, numbers) in interestingNumbers {
//    for number in numbers {
//        if (number > largest) {
//            largest = number
//        }
//    }
//}
//print("Largest number \(largest)")
//
//// while
//var n = 2
//while n < 50 {
//    n = n * 2
//}
//print("Nilai n: \(n)")
//
//var m = 2
//repeat {
//    m = m * 2
//} while m < 50
//print("Nilai m: \(m)")
//
//// for loop in range
//var total = 0
//for i in 0..<4 {
//    total += i
//}
//print("Nilai total: \(total)")
//
//total = 0
//for i in 0...4 {
//    total += i
//}
//print("Nilai total: \(total)")
//
//
//
//// function
//func greeting(person: String, day: String) -> String {
//    return "Halo \(person), selamat \(day)."
//}
//
//greeting(person: "Sigit", day: "siang")
//
//// no argument label
//func greetingAgain(_ person: String, customLabel day: String) -> String {
//    return "Halo \(person), selamat \(day)."
//}
//
//greetingAgain("Sigit Hanafi", customLabel: "siang")
//
//
//// return multiple value
//func calculateStatisitc(scores: [Int]) -> (min: Int, max: Int, sum: Int) {
//    var min = scores[0]
//    var max = scores[0]
//    var sum = 0
//
//    for score in scores {
//        if score > max {
//            max = score
//        } else if score < min {
//            min = score
//        }
//
//        sum += score
//    }
//
//    return (min, max, sum)
//}
//
//let statistic = calculateStatisitc(scores: [1, 2, 3, 4, 5, 6, 7])
//
//print("min: \(statistic.min)")
//print("max: \(statistic.max)")
//print("sum: \(statistic.sum)")
//
//// nested function
//func returnFifteen() -> Int {
//    var y = 10
//
//    func add () {
//        y += 5
//    }
//
//    add()
//
//    return y
//}
//
//returnFifteen()
//
//// function as first class that can return another function and its value
//func makeIncrementer() -> ((Int) -> Int) {
//    func addOne(number: Int) -> Int {
//        return 1 + number
//    }
//
//    return addOne
//}
//
//var incrementer = makeIncrementer()
//incrementer(7)
//
//// function take another function as parameter
//func hasAnyMatches(list: [Int], condition: (Int) -> Bool) -> Bool {
//    for item in list {
//        if condition(item) {
//            return true
//        }
//    }
//    return false
//}
//
//func lestThanTen(number: Int) -> Bool {
//    return number < 10
//}
//
//var numbers = [1, 3, 5, 7, 8]
//hasAnyMatches(list: numbers, condition: lestThanTen)
//
//
//// class
//class Shape {
//    var numberOfSides = 0
//    var name: String
//    // if using et, instace can't mutate data
//    let lastName: String
//
//    // init=> initializer to set up the class when an instance is created
//    init(name: String) {
//        self.name = name
//        self.lastName = "Hanafi"
//    }
//
//    func simpleDescription() -> String {
//        return "A shape with \(numberOfSides) sides. \(name) \(lastName)"
//    }
//}
//
//// instance of the class
//var shape = Shape(name: "Sigit")
//shape.numberOfSides = 8
////shape.lastName = "Ealaaah"
//var shapeDesc = shape.simpleDescription()
//
//
////print("Max int \(UInt8.max)")
////print("Max int \(UInt8.min)")
//
//func testFor() -> String {
//    let numbers = [1, 2, 3, 5, 6, 7]
//    for item in numbers {
//        if (item == 1) {
//            return "Halo"
//        }
//    }
//    return "Ealah"
//}
//
//testFor()
//
//
////closure example: closure => block of code, that can be called later
//numbers = [1, 2, 3]
//let manipulateNUmberWithClosuse = numbers.map({ (number: Int) -> Int in
//    let result = 2 * number
//    return result
//})
//print("\(manipulateNUmberWithClosuse)")
//
////closure without parenthesis
//let sortedNumbers = numbers.sorted { $0 > $1 }
//print(sortedNumbers)
//
//
//let hola = "1"
//switch(hola)  {
//case "1":
//    print("HOLAAA")
//default:
//    break
//}
//
//for i in 1...8 {
//    if i == 4 {
//        break
//    }
//    print("i = \(i)")
//}
//print("The end")
//
//var currentLevel:Int = 1, finalLevel:Int = 2
//var isLifeAvailable = true
//while (isLifeAvailable) {
//
//    if currentLevel > finalLevel {
//        print("Game Completed. No level remaining")
//        break
//    }
//    //play game and go to next level
//    currentLevel += 1
//    print("next level")
//}
//print("outside of while loop")
//
//
//internal struct PageErrorData {
//    internal let title: String
//    internal let description: String
//    internal let image: String
//    internal let buttonText: String?
//
//    internal init(title: String, description: String, image: String, buttonText: String? = nil) {
//        self.title = title
//        self.description = description
//        self.image = image
//        self.buttonText = buttonText
//    }
//}
//
//let data = PageErrorData(title: "asa", description: "asa", image: "asa")

//
//// Array to json
//import Foundation
//
//func convert() -> String {
//    let arr = ["name", "first name"]
//    guard let data = try? JSONSerialization.data(withJSONObject: arr, options: []) else {
//        return ""
//    }
//    
//    return String(data: data, encoding: String.Encoding.utf8) ?? ""
//}
//
//print(convert())
//
//let arr = ["name", "first name"]
//arr.joined(separator: ",")
//
//

//struct Contact {
//    var name: String
//    var position: String
//}
//
//class StateController {
//    var contacts: [Contact] = [
//        Contact(name: "Sigit", position: "SE"),
//        Contact(name: "Bondan", position: "PE"),
//        Contact(name: "Digital", position: "Lead"),
//    ]
//}
//
//class TabOneViewController: UIViewController {
//    var stateController: StateController?
//
//    init(state: StateController) {
//        super.init(nibName: nil, bundle: nil)
//        self.stateController = state
//    }
//
//    required init?(coder aDecoder: NSCoder) {
//        fatalError("init(coder:) has not been implemented")
//    }
//}
//
//class TabTwoViewController: UIViewController {
//    var stateController: StateController?
//
//    init(state: StateController) {
//        super.init(nibName: nil, bundle: nil)
//        self.stateController = state
//    }
//
//    required init?(coder aDecoder: NSCoder) {
//        fatalError("init(coder:) has not been implemented")
//    }
//}
//
//let state = StateController()
//let one = TabOneViewController(state: state)
//let two = TabTwoViewController(state: state)
//
//one.stateController?.contacts[0].name
//two.stateController?.contacts[0].name
//one.stateController?.contacts[0].name = "The Sigit"
//two.stateController?.contacts[0].name

//// delegate
//protocol TabTwoDelegate {
//    func showData(data: String)
//}
//
//class TabOneViewController: UIViewController {
//
//    init() {
//        super.init(nibName: nil, bundle: nil)
//
//        let twoVC = TabTwoViewController()
//        twoVC.delegate = self
//    }
//
//    required init?(coder aDecoder: NSCoder) {
//        fatalError("init(coder:) has not been implemented")
//    }
//
//}
//
//extension TabOneViewController: TabTwoDelegate {
//    func showData(data: String) {
//        print("show data ini tab one")
//        print(data)
//    }
//}
//
//class TabTwoViewController: UIViewController {
//    var delegate: TabTwoDelegate?
//
//    init() {
//        super.init(nibName: nil, bundle: nil)
//
//        print("init tab two")
//        DispatchQueue.main.asyncAfter(deadline: .now() + 1, execute: {
//            self.triggerShow(data: "Halo")
//        })
//    }
//
//    required init?(coder aDecoder: NSCoder) {
//        fatalError("init(coder:) has not been implemented")
//    }
//
//    func triggerShow(data: String) {
//        delegate?.showData(data: data)
//    }
//}
//
//let one = TabOneViewController()


//// with closure
//class TabOneViewController: UIViewController {
//    init() {
//        super.init(nibName: nil, bundle: nil)
//
//        let twoVC = TabTwoViewController()
//        twoVC.showMessageClosure = { message in
//            print("Message \(message)")
//        }
//
//        print("OA")
//    }
//
//    required init?(coder aDecoder: NSCoder) {
//        fatalError("init(coder:) has not been implemented")
//    }
//}
//
//class TabTwoViewController: UIViewController {
//    var showMessageClosure: ((_ message: String) -> Void)?
//
//    init() {
//        super.init(nibName: nil, bundle: nil)
//
//        DispatchQueue.main.asyncAfter(deadline: .now() + 1, execute: {
//            print("Halooo, triggered ya")
//            self.showMessageClosure?("Triggered from two VC")
//        })
//    }
//
//    required init?(coder aDecoder: NSCoder) {
//        fatalError("init(coder:) has not been implemented")
//    }
//}
//
//let one = TabOneViewController()

//class People {
//    var name: String
//
//    init(name: String) {
//        self.name = name
//    }
//}
//
//let sigit = People(name: "Sigit")
//sigit.name = "Sigit Hanafi"

let startDateRange = "2019/11/01 15:08:43"
let dateFormatter = DateFormatter()
dateFormatter.locale = Locale(identifier: "id")
//dateFormatter.timeZone = TimeZone.autoupdatingCurrent
//dateFormatter.calendar = Calendar(identifier: .gregorian)
dateFormatter.dateFormat = "yyyy/MM/dd HH:mm:ss"

dateFormatter.date(from: startDateRange)

