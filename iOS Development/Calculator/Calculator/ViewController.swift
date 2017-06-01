//
//  ViewController.swift
//  Calculator
//
//  Created by cssummer17 on 5/30/17.
//  Copyright © 2017 cssummer17. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    @IBOutlet weak var displayLabel: UILabel!
    
    
    
    
    var isFirstNumber = true
    var Op = ""
    var hasOp = false
    var firstNum = 0.0
    var secondNum = 0.0
    var beginFirst = true
    var beginSecond = true
    
    func calculate() -> Double{
        if Op == "/"{
            return firstNum/secondNum
        }
        else if Op == "*"{
            return firstNum*secondNum
        }
        else if Op == "+"{
            return firstNum+secondNum
        }
        else{
            return firstNum-secondNum
        }
        
    }

    
    @IBAction func buttonPress(_ sender: UIButton) {
        let button = sender.titleLabel?.text
        if let text = button{
            switch text{
                
                case "/", "*", "+", "-":
                    if hasOp == true{
                        secondNum = (displayLabel.text! as NSString).doubleValue
                        let result = calculate()
                        displayLabel.text = "\(result)"
                    }
                    Op = text
                    hasOp = true
                    firstNum = (displayLabel.text! as NSString).doubleValue
                    isFirstNumber = false
                    beginFirst = true
                    beginSecond = true
                    
                    break
                
                case "C":
                    displayLabel.text = "0"
                    isFirstNumber = true
                    Op = ""
                    hasOp = false
                    firstNum = 0.0
                    secondNum = 0.0
                    beginFirst = true
                    beginSecond = true
                    break
                
                case "=":
                    secondNum = (displayLabel.text! as NSString).doubleValue
                    let result = calculate()
                    displayLabel.text = "\(result)"
                    hasOp = false
                    firstNum = (displayLabel.text! as NSString).doubleValue
                    break
                
                case "√":
                    let display = (displayLabel.text! as NSString).doubleValue
                    let result = sqrt(display)
                    displayLabel.text = "\(result)"
                    firstNum = (displayLabel.text! as NSString).doubleValue
                    isFirstNumber = false
                    beginFirst = true
                    beginSecond = true
                
                case "+/-":
                    let display = (displayLabel.text! as NSString).doubleValue
                    let result = -display
                    displayLabel.text = "\(result)"

                
                default:
                    if isFirstNumber == true{
                        if beginFirst == true{
                            displayLabel.text = ""
                            displayLabel.text = text
                            beginFirst = false
                        }
                        else{
                            displayLabel.text = "\(displayLabel.text!)\(text)"
                        }

                    }
                    else{
                        if beginSecond == true{
                            displayLabel.text = ""
                            displayLabel.text = text
                            beginSecond = false
                        }
                        else{
                            displayLabel.text = "\(displayLabel.text!)\(text)"
                        }
                
                    }
                    break

            }
            
        }
    }
    
    
}

