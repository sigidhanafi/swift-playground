import UIKit

var greeting = "Hello, playground"


// generic function
// type parameter => <T>
func print<T>(array: [T]) {
    print(array.map{ $0 })
}

let arrayOfInt = [1, 2, 3, 4]
print(array: arrayOfInt)

let arrayOfString = ["Satu", "Dua", "Tiga", "Empat"]
print(array: arrayOfString)

// generic types
// this is non generic version
print("STACK NON GENERIC ====")
struct Stack {
    var array: [Int] = []
    
    init(capacity: Int) {
        array.reserveCapacity(capacity)
    }
    
    mutating func push(element: Int) {
        array.append(element)
    }
    
    mutating func pop() {
        array.popLast()
    }
    
    func description() {
        print(array.map{ $0 })
    }
}

var stack = Stack(capacity: 10)
stack.push(element: 1)
stack.push(element: 2)

stack.push(element: 5)
stack.push(element: 6)
stack.description()

stack.pop()
stack.description()

// generic types
// generic version of stack
print("STACK GENERIC INT ====")
struct StackGeneric<T> {
    var array: [T] = []
    
    init(capacity: Int) {
        array.reserveCapacity(capacity)
    }
    
    mutating func push(element: T) {
        array.append(element)
    }
    
    mutating func pop() {
        array.popLast()
    }
    
    func description() {
        print(array.map{ $0 })
    }
}

// extension of generic
extension StackGeneric {
    var theFirstItem: T? {
        return array.isEmpty ? nil : array[0]
    }
    
    var theLastItem: T? {
        return array.isEmpty ? nil : array[array.count - 1]
    }
}

var stackGeneric = StackGeneric<Int>(capacity: 10)
stackGeneric.push(element: 1)
stackGeneric.push(element: 2)

stackGeneric.push(element: 5)
stackGeneric.push(element: 6)
stackGeneric.description()

stackGeneric.pop()
stackGeneric.description()

stackGeneric.theFirstItem
stackGeneric.theLastItem

print("STACK GENERIC STRING ====")
var stackGenericString = StackGeneric<String>(capacity: 10)
stackGenericString.push(element: "Satu")
stackGenericString.push(element: "Dua")

stackGenericString.push(element: "Lima")
stackGenericString.push(element: "Enam")
stackGenericString.description()

stackGenericString.pop()
stackGenericString.description()



// create some API service with generic

struct Car: Codable {
    var name: String
    var brand: String
    var price: String
}

struct Sales: Codable {
    var name: String
    var position: String
}

class APIService {
    static var shared = APIService()
    
    func requestAPICall<T: Codable>(url: String, returnType: T.Type, completion: @escaping ((Result<T, Error>) -> Void)) {
        let task = URLSession.shared.dataTask(with: URL(string: url)!) { data, urlResponse, error in
            guard let data = data, error == nil else {
                return
            }
            
            var decodedResult: T?
            do {
                decodedResult = try JSONDecoder().decode(T.self, from: data)
            } catch {
                decodedResult = nil
            }
            
            guard let decodedResult = decodedResult else {
                // handle error when request
                // completion(.failure(error))
                return
            }

            
            completion(.success(decodedResult))
        }
        
        task.resume()
    }
}

class ViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // when we need to call get car, with result is Result<Car, Error>
        APIService.shared.requestAPICall(url: "https://api.service.com/getCar", returnType: Car.self) { result in
            switch result {
            case let .success(car):
                print(car.name)
            case let .failure(error):
                print(error.localizedDescription)
            }
        }
        
        // when we need to call get sales
        APIService.shared.requestAPICall(url: "https://api.service.com", returnType: Sales.self) { result in
            switch result {
            case let .success(sales):
                print(sales)
            case let .failure(error):
                print(error)
            }
        }
    }
}

let viewController = ViewController()

//source of learn
//https://www.youtube.com/watch?v=-9H_ZjBBeLo
