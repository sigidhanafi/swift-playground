import Foundation

// async harus escaping
var data: (String) -> Void

func requestData(_ parametes: String, completionHandler: (_ data: String) -> Void) {
    
    completionHandler("Complete")
//    DispatchQueue.main.asyncAfter(deadline: .now() + 1, execute: {
//        completionHandler("Complete")
//    })
}


requestData("Hei Hei") { responseString in
     print(responseString)
}


