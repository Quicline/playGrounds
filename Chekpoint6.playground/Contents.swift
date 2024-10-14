import Cocoa

/*
 
 To check your knowledge, here’s a small task for you: create a struct to store
 information about a car, including its model, number of seats, and current
 gear, then add a method to change gears up or down. Have a think about
 variables and access control: what data should be a variable rather than a
 constant, and what data should be exposed publicly? Should the gear-changing
 method validate its input somehow?

*/


struct Car {
    let model:String
    let nSeats:Int
    private var cGear:Int = 1
    
    init(model: String, nSeats: Int, cGear: Int) {
        self.model = model
        self.nSeats = nSeats
    }
    
    mutating func gearUp() {
        if cGear >= 10 {
            print("You are in the last Gear")
        } else {
            cGear += 1
            print("\(model), \(nSeats) seats in \(cGear) Gear")
        }
    }
    
    mutating func gearDown() {
        if cGear <= 1 {
            print("You are in the lowest Gear")
        } else {
            cGear -= 1
            print("\(model), \(nSeats) seats in \(cGear) Gear")
        }
    }
}

var tayota = Car(model: "Tayota", nSeats: 3, cGear: 1)

print(tayota.gearUp())
print(tayota.gearDown())
print(tayota.gearDown())
