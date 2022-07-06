//
//  CalculatorBrain.swift
//  Calculator
//
//  Created by Vlada Henovska on 7/5/22.
//

import Foundation

struct CalculatorBrain{
    
    var operation: String?
    var count = 0
    var result = 0
    
    
    mutating func calculate(_ numberStr: String, _ ops: String?){
        var number = Int(numberStr) ?? 0
//Change number sign if "+/-" pressed
        if ops == "+/-"{
            number = -number
        }
//Check if there is another number to perform operation
        if count == 0{
            result = number
        }else if count != 0{
            switch operation{
            case "+":
                result += number
            case "-":
                result -= number
            case "×":
                result *= number
            case "÷":
                result /= number
            case "+/-":
                result = number
            default:
                print("Unknown operation")
            }
        }
        print("Result: \(result)")
        operation = ops
        count += 1
    }
    
    func resultToString() -> String{
        String(result)
    }
    mutating func clearAll(){
        operation = ""
        result = 0
        count = 0
    }
    mutating func clearResult(){
        result = 0
        count = 0
    }
}
