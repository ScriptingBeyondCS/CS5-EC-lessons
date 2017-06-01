//
//  ViewController.swift
//  Tip Calculator
//
//  Created by cssummer17 on 5/26/17.
//  Copyright © 2017 cssummer17. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var amountTextField: UITextField!
    @IBOutlet weak var tipSlider: UISlider!
    @IBOutlet weak var tipAmountLabel: UILabel!
    @IBOutlet weak var peopleSlider: UISlider!
    @IBOutlet weak var peopleLabel: UILabel!
    @IBOutlet weak var totalAmountLabel: UILabel!
    @IBOutlet weak var eachPersonAmountLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

   
    func calculateEverything(){
        let amount = (amountTextField.text! as NSString).doubleValue
        let tipPercent = tipSlider.value
        let tipAmount = amount * Double(tipPercent) / 100
        tipAmountLabel.text = "Tip Amount: $\(tipAmount)"
        
        let numPeople = peopleSlider.value
        peopleLabel.text = "Number of People: \(numPeople)"
        let totalAmount = amount + tipAmount
        totalAmountLabel.text = "Total Amount: \(totalAmount)"
        let amountPerPerson  = totalAmount / Double(numPeople)
        eachPersonAmountLabel.text = "Amount Per Person: \(amountPerPerson)"
    }
    
    
    @IBAction func amountChanged(_ sender: Any) {
        calculateEverything()
    }
    
    @IBAction func tipChanged(_ sender: Any) {
        calculateEverything()
    }
    
    @IBAction func peopleChanged(_ sender: Any) {
        calculateEverything()
    }
   
}

