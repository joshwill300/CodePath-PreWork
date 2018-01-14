//
//  ViewController.swift
//  Tip_Calculator
//
//  Created by Joshua on 12/28/17.
//  Copyright © 2017 Joshua. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var tipLabel: UILabel!
    @IBOutlet var totalLabel: UILabel!
    @IBOutlet var billField: UITextField!
    @IBOutlet var percentageControl: UISegmentedControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func OnTap(_ sender: Any) {
        view.endEditing(true)
    }
    
    @IBAction func calculateTip(_ sender: Any) {
        let tipPercentages = [0.15, 0.20, 0.25]
        let bill = Double(billField.text!) ?? 0
        let tip = bill * tipPercentages[percentageControl.selectedSegmentIndex]
        let total = bill + tip
        
        tipLabel.text = String(format: "$%.2f" , tip)
        totalLabel.text = String(format: "$%.2f" , total)
        
    }
    
    
}

