
import Foundation

var thing = 3
thing = 4

func superHero() {
    print("I am batman")
    thing = 5
}

print("original state = \(thing)")
superHero()
print("mutated state = \(thing)")

enum RideCategory: String, CustomStringConvertible {
    case family
    case kids
    case thrill
    case scary
    case relaxing
    case water
    
    var description: String {
        return rawValue
    }
}

typealias Minutes = Double
struct Ride: CustomStringConvertible {
    let name: String
    let categories: Set<RideCategory>
    let waitTime: Minutes
    
    var description: String {
        return "Ride -\"\(name)\", wait: \(waitTime) mins, categories: \(categories)\n"
    }
}

let parkRides = [
  Ride(name: "Raging Rapids",
       categories: [.family, .thrill, .water],
       waitTime: 45.0),
  Ride(name: "Crazy Funhouse", categories: [.family], waitTime: 10.0),
  Ride(name: "Spinning Tea Cups", categories: [.kids], waitTime: 15.0),
  Ride(name: "Spooky Hollow", categories: [.scary], waitTime: 30.0),
  Ride(name: "Thunder Coaster",
       categories: [.family, .thrill],
       waitTime: 60.0),
  Ride(name: "Grand Carousel", categories: [.family, .kids], waitTime: 15.0),
  Ride(name: "Bumper Boats", categories: [.family, .water], waitTime: 25.0),
  Ride(name: "Mountain Railroad",
       categories: [.family, .relaxing],
       waitTime: 0.0)
]

func sortedNamesImp(of rides: [Ride]) -> [String] {
    var sortedRides = rides
    var key: Ride
    
    for i in (0..<sortedRides.count) {
      key = sortedRides[i]

      // 3
      for j in stride(from: i, to: -1, by: -1) {
        if key.name.localizedCompare(sortedRides[j].name) == .orderedAscending {
          sortedRides.remove(at: j + 1)
          sortedRides.insert(key, at: j)
        }
      }
    }

    // 4
    var sortedNames: [String] = []
    for ride in sortedRides {
      sortedNames.append(ride.name)
    }

    return sortedNames
}

let sortedNames1 = sortedNamesImp(of: parkRides)

func testSortedNames(_ names: [String]) {
  let expected = ["Bumper Boats",
                  "Crazy Funhouse",
                  "Grand Carousel",
                  "Mountain Railroad",
                  "Raging Rapids",
                  "Spinning Tea Cups",
                  "Spooky Hollow",
                  "Thunder Coaster"]
  assert(names == expected)
  print("✅ test sorted names = PASS\n-")
}

print(sortedNames1)
testSortedNames(sortedNames1)
