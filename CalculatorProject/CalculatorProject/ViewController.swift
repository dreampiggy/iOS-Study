//
//  ViewController.swift
//  CalculatorProject
//
//  Created by lizhuoli on 15/3/31.
//  Copyright (c) 2015年 lizhuoli. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var userIsInTheMiddleOfTypingNumber = false
    
    var brain = CalculatorBrain()
    
    @IBOutlet weak var display: UILabel!
    @IBAction func appendDigit(sender: UIButton) {
        let digit = sender.currentTitle!
        if userIsInTheMiddleOfTypingNumber{
            display.text = display.text! + digit
        }
        else{
            display.text = digit
            userIsInTheMiddleOfTypingNumber = true
        }
    }
    @IBAction func operate(sender: UIButton) {
        if userIsInTheMiddleOfTypingNumber{
            enter()
        }
        if let operation = sender.currentTitle{
            if let result = brain.performOperation(operation){
                displayValue = result
            }
            else{
                displayValue = nil
            }
        }
    }
    @IBAction func enter() {
        userIsInTheMiddleOfTypingNumber = false
        if let displayValueTrue = displayValue{
            if let result = brain.pushOperand(displayValueTrue){
                displayValue = result
            }
        }
        else{
            displayValue = nil
        }
    }

    var displayValue:Double? {
        get{
            if(display.text == "fuck!"){
                display.text = nil
            }
            if let notNilValue = display.text{
                return NSNumberFormatter().numberFromString(notNilValue)!.doubleValue
            }
            return nil
        }
        set{
            if let myValue = newValue{
                display.text = "\(newValue!)"
            }
            else{
                display.text = "fuck!"
            }
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

