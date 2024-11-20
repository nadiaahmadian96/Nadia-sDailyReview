protocol Drivable {
    func drive()
}

protocol Repairable {
    func repair()
}

struct Car: Drivable, Repairable {
    func drive() { print("Driving...") }
    func repair() { print("Repairing...") }
}

func testVehicle(_ vehicle: Drivable & Repairable) {
    vehicle.drive()
    vehicle.repair()
}

let car = Car()
testVehicle(car)
// Output:
// Driving...
// Repairing...
