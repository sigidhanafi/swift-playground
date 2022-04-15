import UIKit


var debug = true

func debugLog(_ message: @autoclosure () -> String) {
    if debug {
        print("Debug: \(message())")
    }
}

func main() {
    // if use closuer
    // debugLog({ "Halo" })
    
    // if use autoclosuer
    debugLog("Halo")
}

main()

// with autoclosure, we can pass function with variable, closure or constant

// article
// https://medium.com/ios-os-x-development/https-medium-com-pavelgnatyuk-autoclosure-what-why-and-when-swift-641dba585ece
