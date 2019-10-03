//
//  ViewController.swift
//  CodePath_ChengZ_01
//
//  Created by Cheng Zheng on 9/30/19.
//  Copyright © 2019 codepath. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var billAmtField: UITextField!
    @IBOutlet weak var tipLabel: UILabel!
    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var tipCtrl: UISegmentedControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    @IBAction func onTap(_ sender: Any) {
        view.endEditing(true)
    }
    
    @IBAction func calTip(_ sender: Any) {
        // Get the bill amount
        let billAmt = Double(billAmtField.text!) ?? 0
        
        // Calculate the tip and total
        let tipPercent = [0.1, 0.15, 0.18, 0.2]
        let tip = billAmt * tipPercent[tipCtrl.selectedSegmentIndex]
        let total = billAmt + tip
        
        // Update the tip and total labels
        tipLabel.text = String(format: "$ %.2f", tip)
        totalLabel.text = String(format: "$ %.2f", total)
    }
    
}

