//: Playground - noun: a place where people can play

enum PrinterError: Error {
    case outOfPaper
    case noToner
    case onFire
}

func send(job: Int, toPrinter printerName: String) throws -> String {
    if printerName == "Never Has Toner" {
        throw PrinterError.noToner
    } else if (printerName == "Printer is on fire") {
        throw PrinterError.onFire
    } else if (printerName == "Another error") {
        throw PrinterError.outOfPaper
    }
    return "Job sent"
}

do {
    let sendJob = try send(job: 1000, toPrinter: "Never Has Toner")
    print(sendJob)
} catch {
    print("\(error)")
}

do {
    let sendJob = try send(job: 1000, toPrinter: "Printer is on fire")
    print(sendJob)
} catch PrinterError.onFire {
    print("I'll just put this over here, with the rest of fire")
} catch let printerError as PrinterError {
    print("Printer error \(printerError)")
} catch {
    print(error)
}
