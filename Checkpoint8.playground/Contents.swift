import Cocoa

/*

 Your challenge is this: make a protocol that describes a building, adding
 various properties and methods, then create two structs, House and Office, that
 conform to it. Your protocol should require the following:

 1. A property storing how many rooms it has.
 
 2. A property storing the cost as an integer (e.g. 500,000 for a building
 costing $500,000.)
 
 3. A property storing the name of the estate agent responsible for selling the
 building.
 
 4. A method for printing the sales summary of the building, describing what it
 is along with its other properties.
 
*/

protocol Building {
    var rooms: Int { get }
    var cost: Int { get set }
    var realStateAgentName: String { get }
    
}

struct House: Building {
    var rooms: Int
    var cost: Int
    var realStateAgentName = "HomeAgent"
    func summary (){
        print("This house have \(rooms) rooms and the cost it \(cost) and sold by \(realStateAgentName)")
    }
}

struct Office: Building {
    var rooms: Int
    var cost: Int
    var realStateAgentName = "OfficeAgent"
    func summary (){
        print("This office have \(rooms) rooms and the cost it \(cost) and sold by \(realStateAgentName)")
    }
}

extension House {

    init(room: Int, cost: Int) {
    self.rooms = room
    self.cost = cost
    }
}

extension Office {

    init(room: Int, cost: Int) {
    self.rooms = room
    self.cost = cost
    }
}

let H1 = House(room: 3,cost: 437)
let O1 = Office(room: 2,cost: 8_636)
H1.summary()
O1.summary()
