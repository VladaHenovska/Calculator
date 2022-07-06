//
//  ViewController.swift
//  Calculator
//
//  Created by Vlada Henovska on 7/5/22.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var numberTextLabel: UILabel!
    
    var calculatorBrain = CalculatorBrain()
    var flag = false
    var count = 0
    var array = [0]
    var result = 0
    var operation = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        numberTextLabel.text = ""
    }
    
    @IBAction func operationPressed(_ sender: UIButton) {
        flag = true
        if let number = numberTextLabel.text {
            print("Number button: \(number)")
            if count == 0{
                result = Int(number)!
                count += 1
                operation = sender.currentTitle!
            }else if count != 0{
                switch operation{
                case "+":
                    result += Int(number)!
                case "-":
                    result -= Int(number)!
                default:
                    print("Choose - or + operation")
                }
                print("Result: \(result)")
                numberTextLabel.text = String(result)
                operation = sender.currentTitle!
            }
        }
    }
    
    @IBAction func numberPressed(_ sender: UIButton) {
        if let digit = sender.currentTitle{
            if flag{
                numberTextLabel.text = ""
                numberTextLabel.text?.append(digit)
                flag = false
                
            }else{
                numberTextLabel.text?.append(digit)
            }
        }
    }
    
    @IBAction func calculatePressed(_ sender: UIButton) {
        if let number = numberTextLabel.text{
            result += Int(number)!
        }
        numberTextLabel.text = String(result)
        count = 0
    }
    
}

