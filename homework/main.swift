//
//  homework2.swift
//  cmd_tool
//
//  Created by Хованский Михаил on 22.04.2021.
//

import Foundation


class Task1 {
    init() {
          let a = -1.0, b = -5.0, c = 6.0

          var x1 = 0.0
          var x2 = 0.0
          let discriminant = pow(b, 2) - 4 * a * c

    
          if discriminant > 0 {
             x1 = (-b + sqrt(discriminant)) / 2 * a
             x2 = (-b - sqrt(discriminant)) / 2 * a
          } else if discriminant == 0 {
             x1 = -b / (2 * a)
             print("x1 = \(x1)\nx2 = \(x2)")
      }
    }
}

class Task2 {
    init() {
       let sideA = 3.0, sideB = 4.0
       let sideC = sqrt(pow(sideA, 2) + sideB * sideB)
       let perimeter = sideA + sideB + sideC
       let square = (sideA + sideB) / 2

       print(sideC)
       print(perimeter)
       print(square)
      }
}


class Task3 {
    init() {
       var deposit = 10_000.0
       let percent = 10.0
       let years = 5

       let rate = percent / 100


       for _ in 1...years {
         deposit = deposit * (1 + rate)
       }

       deposit = deposit * pow(1 + rate, Double(years))
        
       "Deposit = \(round(deposit * 100) / 100) rub"
        
       String(format: "%.2f", deposit)
  }
}
