//
//  splitBill.swift
//  TipCalculatorV2
//
//  Created by Chakane Shegog on 11/30/19.
//  Copyright © 2019 Chakane Shegog. All rights reserved.
//

import UIKit

class splitBill: UIViewController {
    @IBOutlet weak var amountOfPeople: UITextField!
    @IBOutlet weak var perPerson: UILabel!
    var total = 0.00

    
    
    @IBAction func split(_ sender: Any) {
        let people = Double(amountOfPeople.text!) ?? 0
        perPerson.text = String(format: "$%.2f", (total/people))
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
}
