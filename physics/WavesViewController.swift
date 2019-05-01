//
//  WavesViewController.swift
//  physics
//
//  Created by period3 on 4/8/19.
//  Copyright © 2019 period3. All rights reserved.
//

import UIKit

class WavesViewController: UIViewController {
    
    @IBOutlet weak var timeCyclesOut: UIButton!
    @IBOutlet weak var tOut: UIButton!
    @IBOutlet weak var symbolOverTOut: UIButton!
    @IBOutlet weak var smallFOut: UIButton!
    @IBOutlet weak var oneOverTOut: UIButton!
    
    var identify = ""

    override func viewDidLoad()
    {
        super.viewDidLoad()
        
        calculationView.isHidden = true
        variable1.isHidden = true
        variable2.isHidden = true
        variable3.isHidden = true
        variable4.isHidden = true


    }
    
    @IBOutlet weak var variable1: UITextField!
    @IBOutlet weak var variable2: UITextField!
    @IBOutlet weak var variable3: UITextField!
    @IBOutlet weak var variable4: UITextField!
    
    @IBOutlet weak var calculationView: UIView!
    @IBOutlet weak var answerLabel: UILabel!
    
    @IBAction func Ttimecycles(_ sender: Any)
    {
        variable1.isHidden = false
        variable2.isHidden = false
        variable3.isHidden = false
        variable4.isHidden = true
        calculationView.isHidden = false
        identify = "x=y/z"
        timeCyclesOut.isHidden = true
        timeCyclesOut.isEnabled = false
        tOut.isHidden = true
        tOut.isEnabled = false
        symbolOverTOut.isHidden = true
        symbolOverTOut.isEnabled = false
        smallFOut.isHidden = true
        smallFOut.isEnabled = false
        oneOverTOut.isHidden = true
        oneOverTOut.isEnabled = false
    }
    @IBAction func T1f(_ sender: Any)
    {
        variable1.isHidden = false
        variable2.isHidden = false
        variable3.isHidden = false
        variable4.isHidden = true
        calculationView.isHidden = false
        identify = "x=y/z"
        timeCyclesOut.isHidden = true
        timeCyclesOut.isEnabled = false
        tOut.isHidden = true
        tOut.isEnabled = false
        symbolOverTOut.isHidden = true
        symbolOverTOut.isEnabled = false
        smallFOut.isHidden = true
        smallFOut.isEnabled = false
        oneOverTOut.isHidden = true
        oneOverTOut.isEnabled = false
    }
    @IBAction func vsymbolT(_ sender: Any)
    {
        variable1.isHidden = false
        variable2.isHidden = false
        variable3.isHidden = false
        variable4.isHidden = true
        calculationView.isHidden = false
        identify = "x=y/z"
        timeCyclesOut.isHidden = true
        timeCyclesOut.isEnabled = false
        tOut.isHidden = true
        tOut.isEnabled = false
        symbolOverTOut.isHidden = true
        symbolOverTOut.isEnabled = false
        smallFOut.isHidden = true
        smallFOut.isEnabled = false
        oneOverTOut.isHidden = true
        oneOverTOut.isEnabled = false
    }
    @IBAction func fcyclestime(_ sender: Any)
    {
        variable1.isHidden = false
        variable2.isHidden = false
        variable3.isHidden = false
        variable4.isHidden = true
        calculationView.isHidden = false
        identify = "x=y/z"
        timeCyclesOut.isHidden = true
        timeCyclesOut.isEnabled = false
        tOut.isHidden = true
        tOut.isEnabled = false
        symbolOverTOut.isHidden = true
        symbolOverTOut.isEnabled = false
        smallFOut.isHidden = true
        smallFOut.isEnabled = false
        oneOverTOut.isHidden = true
        oneOverTOut.isEnabled = false
    }
    @IBAction func f1T(_ sender: Any)
    {
        variable1.isHidden = false
        variable2.isHidden = false
        variable3.isHidden = false
        variable4.isHidden = true
        calculationView.isHidden = false
        identify = "x=y/z"
        timeCyclesOut.isHidden = true
        timeCyclesOut.isEnabled = false
        tOut.isHidden = true
        tOut.isEnabled = false
        symbolOverTOut.isHidden = true
        symbolOverTOut.isEnabled = false
        smallFOut.isHidden = true
        smallFOut.isEnabled = false
        oneOverTOut.isHidden = true
        oneOverTOut.isEnabled = false
    }
    
    
    
   
    @IBAction func calculateButton(_ sender: UIButton)
    {
        answerLabel.text = String(calculate(variable1: variable1, variable2: variable2, variable3: variable3, variable4: variable4, identifyFunc: identify))
    }
    
}
