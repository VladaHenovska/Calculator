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
    
    
    mutating func calculate(_ number: String, _ ops: String?){
        
        //Check if there is another number to perform operation
        if count == 0{
            result = Int(number)!
        }else if count != 0{
            switch operation{
            case "+":
                result += Int(number)!
            case "-":
                result -= Int(number)!
            case "×":
                result *= Int(number)!
            case "÷":
                result /= Int(number)!
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
}
