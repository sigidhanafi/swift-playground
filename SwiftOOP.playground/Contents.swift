import UIKit

class Music {
    let notes: [String]
    
    init(notes: [String]) {
        self.notes = notes
    }
    
    func prepared() -> String {
        return notes.joined(separator: " ")
    }
}

class Instrument {
    let brand: String
    
    init(brand: String) {
        self.brand = brand
    }
    
    func tune() -> String {
        fatalError("Implement this method for \(brand)")
    }
    
    func play(_ music: Music) -> String {
        return music.prepared()
    }
    
    func perform(_ music: Music) {
        print(tune())
        print(play(music))
    }
}

class Piano: Instrument {
    let hasPedals: Bool
    
    static let whiteKeys = 52
    static let blackKeys = 36
    
    init(brand: String, hasPedals: Bool = false) {
        self.hasPedals = hasPedals
        
        super.init(brand: brand)
    }
    
    override func tune() -> String {
        return "Piano standard tuning for \(brand)."
    }
    
    override func play(_ music: Music) -> String {
      return play(music, usingPedals: hasPedals)
    }
    
    func play(_ music: Music, usingPedals: Bool) -> String {
      let preparedNotes = super.play(music)
      if hasPedals && usingPedals {
        return "Play piano notes \(preparedNotes) with pedals."
      }
      else {
        return "Play piano notes \(preparedNotes) without pedals."
      }
    }
}


// 1
let piano = Piano(brand: "Yamaha", hasPedals: true)
piano.tune()
// 2
let music = Music(notes: ["C", "G", "F"])
piano.play(music, usingPedals: false)
// 3
piano.play(music)
// 4
Piano.whiteKeys
Piano.blackKeys



class Guitar: Instrument {
    let stringGauge: String
    
    init(brand: String, stringGauge: String = "medium") {
        self.stringGauge = stringGauge
        super.init(brand: brand)
    }
}

class AccousticGuitar: Guitar {
    static let numberOfStrings = 6
    static let fretCount = 20
    
    override func tune() -> String {
        return "Tune \(brand) acoustic with E A D G B E"
    }
    
    override func play(_ music: Music) -> String {
        let preparedNotes = super.play(music)
        return "Play folk tune on frets \(preparedNotes)."
    }
}

let rolandGuitar = AccousticGuitar(brand: "Roland")
rolandGuitar.tune()

let rolandMusic = Music(notes: ["C", "G", "C"])
rolandGuitar.play(rolandMusic)

class Amplifier {
    private var _volume: Int
    private(set) var isOn: Bool
    
    init() {
        isOn = false
        _volume = 0
    }
    
    func plugin(){
        isOn = true
    }
    
    func unplug(){
        isOn = false
    }
    
    var volume: Int {
        get {
            return isOn ? _volume : 0
        }
        
        set {
            _volume = min(max(newValue, 0), 10)
        }
    }
}
