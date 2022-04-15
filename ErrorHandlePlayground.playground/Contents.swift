import UIKit

// handle error with try try? and try

// try catch will use when call function that have thrown
// example:
enum CustomError: Error {
    case invalidUrl
    case emptyUrl
    case other
}

func validateUrl(urlString: String) throws -> Bool {
    guard !urlString.isEmpty else {
        throw CustomError.emptyUrl
    }
    
    guard URL(string: urlString) != nil else {
        throw CustomError.invalidUrl
    }
    
    return true
}

// try
// why we need do catch
// if we are not use do catch, swift will An error was thrown and was not caught // the error not handled
let urlString = ""
do {
    let result = try validateUrl(urlString: urlString)
    print("is url valid? \(result)")
}
catch {
    print("error \(error)")
}

// how about try?
// when use try? the value will be optional value
// when error it will return nill
// when success it will optional value
// and we are no need used do catch

// example
let urlString2 = "http://"
let result = try? validateUrl(urlString: urlString2)
// we need to unwrap the value
if let result = result {
    print("success, url is \(result)")
} else {
    print("error, url is not valid! please fix it!")
}

// how about try!
// if the value is false, and we unwrape it with force unwrape
// the app will crash
// example
let urlString3 = "http://"
let result3 = try! validateUrl(urlString: urlString3)
print(result3)

// the use try! is not recommended
// we should sure that the function will always success
