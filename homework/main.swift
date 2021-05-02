//
//  homework2.swift
//  cmd_tool
//
//  Created by Хованский Михаил on 23.04.2021.
//

import Foundation

/// Task 1
func isEvenNumber(number: Int) -> Bool { number % 2 == 0 }


/// Task 2
func isNumber(_ number: Int, dividedBy divider: Int) -> Bool {
    return number % divider == 0
}

/// Task 3
class SomeArray {
    init() {
        var Arr = [Int]()

        for i in 1...100 {
            Arr.append(i)
        }

        var otherArray = [1...100]

        for item in Arr {
            if isEvenNumber(number: item) || !isNumber(item, dividedBy: 3) {
                if let index = Arr.firstIndex(of: item) {
                    Arr.remove(at: index)
                }
            }
        }

        print(Arr)

        func filterNumbers(number: Int) -> Bool {
            return number % 2 != 0 && number % 3 == 0
        }

        var newArray = Array(1...100).filter { $0 % 2 != 0 && $0 % 3 == 0}
    }
}


/// Task 5
class Fibb {
    init() {
        typealias Fibonaccitype = Decimal

        var fibonacci = [Fibonaccitype]()

        func createNextFibonacciNumber(for array: inout [Fibonaccitype]) {
            switch array.count {
            case 0,1:
                array.append(1)
            default:
                let penultNumber = array[array.count - 2]
                let lastNumber = array[array.count - 1]
                array.append(penultNumber + lastNumber)
            }
        }

        for _ in 1...100 {
            createNextFibonacciNumber(for: &fibonacci)
        }
    }
}
