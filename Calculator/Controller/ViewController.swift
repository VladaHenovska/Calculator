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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        numberTextLabel.text = ""
    }
    
    @IBAction func operationPressed(_ sender: UIButton) {
        flag = true
        if let number = numberTextLabel.text, let operation = sender.currentTitle {
            print("Number button: \(number)")
            calculatorBrain.calculate(number, operation)
            numberTextLabel.text = calculatorBrain.resultToString()
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
            calculatorBrain.calculate(number, calculatorBrain.operation)
        }
        numberTextLabel.text = calculatorBrain.resultToString()
        flag = true
        calculatorBrain.clearResult()
    }
    
    @IBAction func ACpressed(_ sender: UIButton) {
        numberTextLabel.text = ""
        calculatorBrain.clearAll()
    }
    
    
}

