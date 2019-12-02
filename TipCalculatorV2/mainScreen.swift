//
//  mainScreen.swift
//  TipCalculatorV2
//
//  Created by Chakane Shegog on 11/27/19.
//  Copyright © 2019 Chakane Shegog. All rights reserved.
//

import UIKit

class mainScreen: UIViewController {
  
    
    @IBOutlet weak var totalLabel: UITextField!
    @IBOutlet weak var tipLabel: UILabel!
    @IBOutlet weak var grandTotalLabel: UILabel!
    @IBOutlet weak var slider: UISegmentedControl!
    var total0 = 0.00
    var customTip = ""
    var grandTotal = 0.00
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    
    @IBAction func onTap(_ sender: Any) {
        // Takes away the keypad
        view.endEditing(true)
    }
    
    
    @IBAction func calculate(_ sender: Any) {
        if(customTip != ""){
            // Get the bill amount
            let bill = Double(totalLabel.text!) ?? 0

            // Calculate tip and total
            let tip = bill * (Double(customTip)!/100.00)
            total0 = bill + tip

            //totalLabel.text = String(format: "$%.2f", tip)
            tipLabel.text = String(format: "$%.2f", tip)
            grandTotalLabel.text = String(format:"$%.2f", total0)
            

            
        }else {
            // Get the bill amount
            let bill = Double(totalLabel.text!) ?? 0

            // Calculate tip and total
            let tipPercentages = [0.10, 0.15, 0.20, 0.25]
            let tip = bill * tipPercentages[slider.selectedSegmentIndex]
            total0 = bill + tip

            tipLabel.text = String(format: "$%.2f", tip)
            grandTotalLabel.text = String(format:"$%.2f", total0)
            total0 = Double(grandTotalLabel.text!) ?? 0
//            performSegue(withIdentifier: "split", sender: self)
            
        }
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let vc1 = segue.destination as! splitBill
        vc1.total = self.total0
    }
    
    
}
