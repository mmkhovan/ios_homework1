//
//  homework6.swift
//  cmd_tool
//
//  Created by Хованский Михаил on 25.04.2021.
//

import Foundation

enum Wire: String {
    case phase = "фаза"
    case zero = "ноль"
}

class WireProperties {
    let material: Wire
    let section: String
    let length: Int
    let color: String

    init(material: Wire, section: String, length: Int, color: String) {
        self.material = material
        self.section = section
        self.length = length
        self.color = color
    }
}

extension WireProperties {
    var txt: String {
        """
            \(material.rawValue) .  \(section) . \(length) . \(color)
        """
    }
}

struct Queue<T> {
    private var box: [T] = []

    func filter(predicate: (T) -> Bool) -> [T] {
        var tempArr: [T] = []
        for i in box {
            if predicate(i) {
                tempArr.append(i)
            }
        }
        return tempArr
    }

    mutating func pop() -> T? {
        guard  box.count > 0
                else {
            return nil
        }
        return box.removeFirst()
    }

    mutating func push(_ i:T) {
        box.append(i)
    }
}

extension Queue {
    subscript(index: Int) -> T? {
        guard index >= 0 && index < box.count else {
            return nil
        }
        return box[index]
    }
}

var BoxOfWires = Queue<WireProperties>()

BoxOfWires.push(WireProperties(material: .phase, section: "0.5", length: 2, color: "blue"))
BoxOfWires.push(WireProperties(material: .zero, section: "0.3", length: 4, color: "red"))
BoxOfWires.push(WireProperties(material: .zero, section: "0.5", length: 4, color: "green"))
BoxOfWires.push(WireProperties(material: .phase, section: "0.4", length: 5, color: "green-yellow"))
