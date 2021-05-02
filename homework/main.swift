//
//  homework4.swift
//  cmd_tool
//
//  Created by Хованский Михаил on 25.04.2021.
//

import Foundation


enum Engine {
    case on, off
}

enum Window: String {
    case open = "открыто", close = "закрыто"
}

enum roof {
    case installed, removed
}

enum Trunk {
    case up, down
}

enum Door {
    case open, closed
}

class Car {
    let mark: String
    let year: Int
    var km: Double
    var weight: Double
    var engineState1: Engine
    var windowState1: Window
    var doorState1: Door

    init(mark: String, year: Int, km: Double, weight: Double,
         engineState: Engine, windowState: Window, doorState: Door) {
        self.mark = mark
        self.year = year
        self.km = km
        self.weight = weight
        self.engineState1 = engineState
        self.windowState1 = windowState
        self.doorState1 = doorState
    }

    func changeWindowState(to: Window) {}
    func changeEngineState(to: Engine) {}
    func changeDoorState(to: Door) {}
}

class SportCar1: Car {
    var Roof: roof
    init(mark: String, year: Int, km: Double, weight: Double,
         engineState: Engine, windowState: Window, doorState: Door,
         roof: roof) {
        self.Roof = roof
        super.init(mark: mark, year: year, km: km, weight: weight,
                engineState: engineState, windowState: windowState, doorState: doorState)

        func changeRoofState(to: roof) {
            Roof = to
        }

        func alarm_OFF() {
            engineState1 = .on
            windowState1 = .open
            doorState1 = .open
        }

        func alarm_ON() {
            engineState1 = .off
            windowState1 = .close
            doorState1 = .closed

        }



    }
    // переопределение методов
    override func changeWindowState(to: Window) {
        windowState1 = to
    }
    override func changeEngineState(to: Engine) {
        engineState1 = to
    }
    override func changeDoorState(to: Door) {
        doorState1 = to
    }


}


class TrunkCar1: Car {
    var Trunk1: Trunk
    init(mark: String, year: Int, km: Double, weight: Double,
         engineState: Engine, windowState: Window, doorState: Door,
         trunk: Trunk) {
        self.Trunk1 = trunk
        super.init(mark: mark, year: year, km: km, weight: weight,
                engineState: engineState, windowState: windowState, doorState: doorState)

        func changeTrunkState(to: Trunk) {
            Trunk1 = to
        }

        func alarm_OFF() {
            engineState1 = .on
            windowState1 = .open
            doorState1 = .open
            Trunk1 = .up
        }

        func alarm_ON() {
            engineState1 = .off
            windowState1 = .close
            doorState1 = .closed
            Trunk1 = .down

        }
    }
    // переопределение методов
    override func changeWindowState(to: Window) {
        windowState1 = to
    }
    override func changeEngineState(to: Engine) {
        engineState1 = to
    }

}


var sportcar1 = SportCar1(mark: "Volvo", year: 2016, km: 0, weight: 1000, engineState: .off, windowState: .close, doorState: .closed, roof: .installed)
var sportcar2 = SportCar1(mark: "Volvo", year: 2016, km: 0, weight: 1000, engineState: .off, windowState: .close, doorState: .closed, roof: .installed)

var trunkcar1 = TrunkCar1(mark: "ZIL", year: 1965, km: 800000, weight: 8000, engineState: .off, windowState: .close, doorState: .closed, trunk: .down)
var trunkcar2 = TrunkCar1(mark: "MAN", year: 1999, km: 8000, weight: 8000, engineState: .off, windowState: .close, doorState: .closed, trunk: .up)


sportcar1.windowState1.rawValue
sportcar1.engineState1
sportcar1.doorState1

sportcar1.alarm_OFF()

sportcar2.Roof
sportcar2.changeDoorState(to: .removed)


trunkcar1.doorState1
trunkcar1.Trunk
trunkcar1.changeDoorState(to: .open)
trunkcar1.changeTrunkState(to: .open)
trunkcar1.doorState1
trunkcar1.Trunk1

trunkcar2.Trunk1
trunkcar2.km
trunkcar2.changeDoorState(to: .closed)
trunkcar2.km  = 100
trunkcar2.Trunk1
trunkcar2.km
