import Foundation

//struct User: Codable {
//    var name: String
//    var age: Int
//}
//
//do {
//    let user1 = User(name: "Sigit Hanafi", age: 20)
//    let encoder = JSONEncoder()
//    let jsonData = try encoder.encode(user1)
//
//    if let JSONString = String(data: jsonData, encoding: String.Encoding.utf8) {
//        print(JSONString)
//    }
//
//    let decoder = JSONDecoder()
//    let userData = try decoder.decode(User.self, from: jsonData)
//
//    print(userData.name)
//    print(userData.age)
//} catch {
//    print("Woops, error!")
//}

let userJson = "{\"user_data\": {\"first_name\": \"Sigit\", \"last_name\": \"Hanafi\", \"user_age\": 31, \"hobbies\": [{\"name\": \"programming\"}, {\"name\": \"learn to code\"}]}}"
let dataJson = userJson.data(using: .utf8)!

struct User: Codable {
    var userData: Container
    
    private enum CodingKeys: String, CodingKey {
        case userData = "user_data"
    }
}

struct Container: Codable {
    var firstName: String
    var lastName: String
    var userAge: Int
    var hobbies: [Hobby]
    
    private enum CodingKeys: String, CodingKey {
        case firstName = "first_name"
        case lastName = "last_name"
        case userAge = "user_age"
        case hobbies = "hobbies"
    }
    
    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        let firstName = try container.decode(String.self, forKey: CodingKeys.firstName)
        let lastName = try container.decode(String.self, forKey: CodingKeys.lastName)
        let userAge = try container.decode(Int.self, forKey: CodingKeys.userAge)
        let hobbies = try container.decode([Hobby].self, forKey: .hobbies)
        
        self.firstName = firstName
        self.lastName = lastName
        self.userAge = userAge
        self.hobbies = hobbies
    }
    
    func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(firstName, forKey: CodingKeys.firstName)
        try container.encode(lastName, forKey: CodingKeys.lastName)
        try container.encode(userAge, forKey: CodingKeys.userAge)
        try container.encode(hobbies, forKey: .hobbies)
    }
    
    func fullName() -> String {
        return "\(firstName) \(lastName)"
    }
}

struct Hobby: Codable {
    var name: String
}

let decoder = JSONDecoder()
//decoder.keyDecodingStrategy = .convertFromSnakeCase

let encoder = JSONEncoder()

do {
    let userData = try decoder.decode(User.self, from: dataJson)
    print(userData.userData.firstName)
    print(userData.userData.fullName())
    print(userData.userData.hobbies.count)
    
    let userJson2 = try encoder.encode(userData)
    print(userJson2)
    
    if let JSONString = String(data: userJson2, encoding: String.Encoding.utf8) {
        print(JSONString)
    }
} catch {
    print("Woops, Error cuy!")
}

