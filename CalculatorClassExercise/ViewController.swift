//
//  ViewController.swift
//  CalculatorClassExercise
//
//  Created by carlitos on 01/03/15.
//  Copyright (c) 2015 carlitos.cc. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var display: UILabel!
    
    
    var clearDisplayWithNumber:Bool = false
    
    
    @IBAction func appendDigit(sender: UIButton) {
    
        let digit = sender.currentTitle!
        
        if clearDisplayWithNumber{
            display.text = display.text! + digit
        }else
        {
            display.text = digit
            clearDisplayWithNumber = true
        }
        
        //        println("digit = \(digit)")
        
    }
    
    
    var operandStack = Array<Double>()
 

    @IBAction func operate(sender: UIButton) {
        
        let operation = sender.currentTitle!

        if clearDisplayWithNumber{
            enternumber()
        }
        
        switch operation{
            case "×":
              if operandStack.count >= 2{
                    displayValue = operandStack.removeLast() * operandStack.removeLast()
                    enternumber()
                }
        case "−":
            if operandStack.count >= 2{
                displayValue = operandStack.removeLast() - operandStack.removeLast()
                enternumber()
            }
        case "+":
            if operandStack.count >= 2{
                displayValue = operandStack.removeLast() + operandStack.removeLast()
                enternumber()
            }
        case "÷":
            if operandStack.count >= 2{
                displayValue = operandStack.removeLast() / operandStack.removeLast()
                enternumber()
            }
            
         default: break
        }
    }
    
    @IBAction func enternumber() {
        clearDisplayWithNumber  = false
        operandStack.append(displayValue)
        
        println("stack number \(operandStack)")
    }
    
    
    var displayValue: Double{
        get{
            return NSNumberFormatter().numberFromString(display.text!)!.doubleValue
        }
        set{
            display.text = "\(newValue)"
            clearDisplayWithNumber = false
        }
    }
    
}

