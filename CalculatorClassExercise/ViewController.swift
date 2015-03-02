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
}

