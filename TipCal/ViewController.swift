//
//  ViewController.swift
//  TipCal
//
//  Created by Gavin Huang on 1/1/20.
//  Copyright © 2020 Gavin Huang. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var tipLabel: UILabel!
    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var billField: UITextField!
    @IBOutlet weak var tipPercentage: UISegmentedControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func onTap(_ sender: Any) {
        print("You just tapped the empty area")
        
        view.endEditing(true)
    }
    
    @IBAction func calculatetips(_ sender: Any) {
        // let is a constant
        // var is a variable
        // get the bill amount
        let bill = Double(billField.text!) ?? 0
        let tipPercentages = [0.15, 0.18, 0.20]
        // calculate the tip total
        let tip = bill * tipPercentages[tipPercentage.selectedSegmentIndex]
        let total =  bill + tip;
        
        // dispplay total
        tipLabel.text = String(format: "$%.2f", tip)
        totalLabel.text = String(format: "$%.2f", total)
        
    }
}

