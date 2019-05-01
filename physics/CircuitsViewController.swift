//
//  CircuitsViewController.swift
//  physics
//
//  Created by period3 on 4/8/19.
//  Copyright © 2019 period3. All rights reserved.
//

import UIKit




class CircuitsViewController: UIViewController {
    
    
    @IBOutlet weak var voltageOut: UIButton!
    @IBOutlet weak var powerOut: UIButton!
    @IBOutlet weak var costOut: UIButton!
    
    
    var identify = ""

    @IBOutlet weak var calculationView: UIView!
    
    
    @IBOutlet weak var variable1: UITextField!
    @IBOutlet weak var variable2: UITextField!
    @IBOutlet weak var variable3: UITextField!
    @IBOutlet weak var variable4: UITextField!
    @IBOutlet weak var answerLabel: UILabel!
    
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        calculationView.isHidden = true
        variable1.isHidden = true
        variable2.isHidden = true
        variable3.isHidden = true
        variable4.isHidden = true


    }
    
    @IBAction func VIR(_ sender: UIButton)
    {
        variable1.placeholder = "Voltage"
        variable2.placeholder = "Current"
        variable3.placeholder = "Resistance"
        variable4.isHidden = true
        variable1.isHidden = false
        variable2.isHidden = false
        variable3.isHidden = false
        calculationView.isHidden = false
        identify = "x=yz"
        costOut.isHidden = true
        costOut.isEnabled = false
        powerOut.isHidden = true
        powerOut.isEnabled = false
        voltageOut.isHidden = true
        voltageOut.isEnabled = false
    }
    
    @IBAction func PCV(_ sender: UIButton)
    {
        variable1.placeholder = "Power"
        variable2.placeholder = "Current"
        variable3.placeholder = "Voltage"
        variable4.isHidden = true
        variable1.isHidden = false
        variable2.isHidden = false
        variable3.isHidden = false
        calculationView.isHidden = false
        identify = "x=yz"
        costOut.isHidden = true
        costOut.isEnabled = false
        powerOut.isHidden = true
        powerOut.isEnabled = false
        voltageOut.isHidden = true
        voltageOut.isEnabled = false
    }
    
    @IBAction func CPPT(_ sender: Any)
    {
        variable1.placeholder = "Cost"
        variable2.placeholder = "Price"
        variable3.placeholder = "Power"
        variable4.placeholder = "Time"
        variable1.isHidden = false
        variable2.isHidden = false
        variable3.isHidden = false
        variable4.isHidden = false
        calculationView.isHidden = false
        identify = "x=yza"
        costOut.isHidden = true
        costOut.isEnabled = false
        powerOut.isHidden = true
        powerOut.isEnabled = false
        voltageOut.isHidden = true
        voltageOut.isEnabled = false
    }
    
    
    @IBAction func calculateButton(_ sender: UIButton)
    {
        var answer: Double!

        answer = calculate(variable1: variable1, variable2: variable2, variable3: variable3, variable4: variable4, identifyFunc: identify)
    }//end of calculateButton
    
    
    
    

}
