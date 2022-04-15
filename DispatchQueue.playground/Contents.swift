import UIKit

// by default, DispatchQueue is serial
// Serial vs Concurent
// Serial => we can guarante the order of the execution
//let queue = DispatchQueue(label: "ios.learn.dispatchqueue")

// Concurent
let queue = DispatchQueue(label: "ios.learn.dispatchqueue", attributes: .concurrent)

// Async
queue.async {
    print("Task 1 started")
    print("Task 1 ended")
}

queue.async {
    print("Task 2 started")
    print("Task 2 ended")
}

// Sync
// Sync will wait the prev process / blocking  to start the next process
queue.sync {
    print("Task 3 started")
    print("Task 3 ended")
}

queue.sync {
    print("Task 4 started")
    print("Task 4 ended")
}
