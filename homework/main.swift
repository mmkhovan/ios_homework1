//
//  homework4.swift
//  cmd_tool
//
//  Created by Хованский Михаил on 22.04.2021.
//

import Foundation


enum Transmission {
    case auto, manual
}

enum EngineState {
    case on, off
}

enum DoorState {
    case open, closed
}

enum TankLevel {
    case full, empty
}

enum Trailer {
    case big, small
}

struct TrunkCar {
    var brand: String
    var Trailer: Trailer
    var TrunkCapacity: Int
    var TrunkFilledCapacity: Int
    var engineCapacity: Int
    var spareWheel: Bool
    var engineState: EngineState
    var doorState: DoorState
    var tankLevel: TankLevel

    mutating func openDoor() {
        doorState = .open
    }

    mutating func closeDoor() {
        doorState = .closed
    }

    mutating func tankLevel(_ tankLevel: TankLevel) {
        self.tankLevel = tankLevel
    }

    mutating func engineState(_ engineState: EngineState) {
        self.engineState = engineState
    }
}


struct SportCar {
    var brand: String
    var yearOfIssue: Int
    var maxSpeed: Int
    var transmission: Transmission
    var parkingSensor: Bool
    var engineState: EngineState
    var doorState: DoorState
    var tankLevel: TankLevel

    mutating func doorState(_ doorState: DoorState) {
        self.doorState = doorState
    }

    mutating func fillTank() {
        tankLevel = .full
    }

    mutating func emptyTank() {
        tankLevel = .empty
    }

    mutating func engineOn() {
        engineState = .on
    }

    mutating func engineoff() {
        engineState = .off
    }

}

var sportCar1 = SportCar(brand: "ferarri", yearOfIssue: 2001, maxSpeed: 370, transmission: .manual, parkingSensor: true, engineState: .on, doorState: .open, tankLevel: .full)

var sportCar2 = SportCar(brand: "porsche", yearOfIssue: 2012, maxSpeed: 350, transmission: .manual, parkingSensor: true, engineState: .on, doorState: .open, tankLevel: .empty)

var trunkCar1 = TrunkCar(brand: "GAZ", Trailer: .big, TrunkCapacity: 500, TrunkFilledCapacity: 250, engineCapacity: 2, spareWheel: true, engineState: .on, doorState: .closed, tankLevel: .full)

var trunkCar2 = TrunkCar(brand: "Volvo", Trailer: .big, TrunkCapacity: 570, TrunkFilledCapacity: 300, engineCapacity: 2, spareWheel: true, engineState: .off, doorState: .closed, tankLevel: .empty)



func PrintSportCarProperties(car: SportCar) {
    print(car.brand, car.yearOfIssue, car.maxSpeed, car.transmission, car.parkingSensor, car.engineState, car.doorState, car.tankLevel)
}

func PrinttrunkCarProperties(car: TrunkCar) {
    print(car.brand, car.Trailer, car.TrunkCapacity, car.TrunkFilledCapacity, car.engineCapacity, car.spareWheel, car.engineState, car.doorState, car.tankLevel)
}
