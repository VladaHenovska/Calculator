//
//  ViewController.swift
//  Calculator
//
//  Created by Vlada Henovska on 7/5/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var numberTextLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        numberTextLabel.text = ""
    }
    
    @IBAction func operationPressed(_ sender: UIButton) {
        if let operation = sender.currentTitle{
            numberTextLabel.text?.append(operation)
            if operation == "="{
                numberTextLabel.text = ""
            }
        }
        
        
    }
    
    
    @IBAction func numberPressed(_ sender: UIButton) {
        if let digit = sender.currentTitle{
            numberTextLabel.text?.append(digit)
        }
    }
    


}

