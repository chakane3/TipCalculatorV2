//
//  customTip.swift
//  TipCalculatorV2
//
//  Created by Chakane Shegog on 11/28/19.
//  Copyright © 2019 Chakane Shegog. All rights reserved.
//

import UIKit

class customTip: UIViewController {
    @IBOutlet weak var percentLabel: UITextField!
    var tipPercent: Double = 0.0
    var percent = ""
    
    @IBAction func customTip(_ sender: Any) {
        self.percent = percentLabel.text!
        performSegue(withIdentifier: "customTipp", sender: self)
    }
    
    
  
   
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let vc = segue.destination as! mainScreen
        vc.customTip = self.percent
    }
    
    
    
    
    
    @IBAction func onTap(_ sender: Any) {
        view.endEditing(true)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

}
