//
//  customTip.swift
//  TipCalculatorV2
//
//  Created by Chakane Shegog on 11/28/19.
//  Copyright © 2019 Chakane Shegog. All rights reserved.
//

import UIKit

class customTip: UIViewController {
    var tipPercent: Double = 0.0
    @IBOutlet weak var percentLabel: UITextField!
    var percent = ""
  
    @IBAction func calculateTip(_ sender: Any) {
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
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
