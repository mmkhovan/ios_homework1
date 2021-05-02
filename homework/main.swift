//
//  homework5.swift
//  cmd_tool
//
//  Created by Хованский Михаил on 22.04.2021.
//

import Foundation

enum EngineState2: String {
    case on = "заведен", off = "заглушен"
}

enum DoorState2: String {
    case open = "открыты", closed = "закрыты"
}

enum TrunkState: String {
    case full = "полная", empty = "половина"
}

enum RoofState: String {
    case full = "установлена", empty = "убрана", half = "заполнена наполовину"
}

enum WindowState: String {
    case open = "открыты", close = "закрыты"
}


protocol Car3: class, CustomStringConvertible {
    var mark: String {get}
    var year: Int {get}
    var km: Double{get set}
    var vehicleWeight: Double {get set}
    var engineState: EngineState2 { get set }
    var windowsState: WindowState {get set}
    var doorState: DoorState2 {get set}
    var roofState: RoofState {get set}
    var trunkState: TrunkState {get set}


    func changeWindowsState(to: WindowState)
    func changeEngineState(to: EngineState2)
    func changeDoorState(to: DoorState2)
}

extension Car3 {
    func changeWindowsState(to: WindowState) {
        windowsState = to
    }

    func changeEngineState(to: EngineState2) {
        engineState = to
    }

    func changeDoorState(to: DoorState2) {
        doorState = to
    }

    var desription: String {
        return "\(mark), \(year), \(km); \(vehicleWeight), \(engineState), \(windowsState),\(doorState)"
    }
}


class SportCars: Car3 {
    var mark: String
    var year: Int
    var km: Double
    var vehicleWeight: Double
    var engineState: EngineState2
    var windowsState: WindowState
    var doorState: DoorState2
    var roofState: RoofState

    init(mark: String, year: Int, km: Double, vehicleWeight: Double,
         engineState: EngineState2,
         windowsState: WindowState, doorState: DoorState2, roofState: RoofState ) {
        self.mark = mark
        self.year = year
        self.km = km
        self.vehicleWeight = vehicleWeight
        self.engineState = engineState
        self.windowsState = windowsState
        self.doorState = doorState
        self.roofState = roofState
    }
    func changeRoofState(to: RoofState){
        roofState = to
    }
}


class TrunkCars: Car3 {
    var mark: String
    var year: Int
    var km: Double
    var vehicleWeight: Double
    var engineState: EngineState2
    var windowsState: WindowState
    var doorState: DoorState2
    var trunkState: TrunkState

    func changeYear(to newYear: Int){
        self.year = newYear
    }

    init(mark: String, year: Int, km: Double, vehicleWeight: Double, engineState: EngineState2, windowsState: WindowState, doorState: DoorState2, trunkState: TrunkState ) {
        self.mark = mark
        self.year = year
        self.km = km
        self.vehicleWeight = vehicleWeight
        self.engineState = engineState
        self.windowsState = windowsState
        self.doorState = doorState
        self.trunkState = trunkState
    }

    func  changeTrunkState(to: TrunkState) {
        trunkState = to
    }

}


extension SportCars {
    var description: String {
        return "\(mark), \(year), \(km); \(vehicleWeight), \(engineState), \(windowsState),\(doorState), \(roofState.rawValue)"
    }
}

extension TrunkCars {
    var description: String {
        return "\(mark), \(year), \(km); \(vehicleWeight), \(engineState), \(windowsState),\(doorState), \(trunkState.rawValue)"

    }
}



var sportcar34 = SportCars(mark: "Volvo", year: 2014, km: 10.12, vehicleWeight: 10.14, engineState: .off, windowsState: .open, doorState: .closed, roofState: .empty)

var sportcar56 = SportCars(mark: "Volvo", year: 2014, km: 10.12, vehicleWeight: 10.14, engineState: .off, windowsState: .open, doorState: .closed, roofState: .full)

var trunkcar34 = TrunkCars(mark: "ZIL", year: 1965, km: 10.12, vehicleWeight: 10.65, engineState: .off, windowsState: .close, doorState: .closed, trunkState: .full)

var trunkcar56 = TrunkCars(mark: "ZIL", year: 1965, km: 10.12, vehicleWeight: 10.65, engineState: .off, windowsState: .close, doorState: .closed, trunkState: .empty)

trunkcar34.changeYear(to: 2021)
trunkcar34.engineState(to: .on)
