//
//  DynamicsViewController.swift
//  physics
//
//  Created by period3 on 4/8/19.
//  Copyright © 2019 period3. All rights reserved.
//

import UIKit

class DynamicsViewController: UIViewController {

    @IBOutlet weak var fmaOut: UIButton!
    @IBOutlet weak var weightOut: UIButton!
    
    
    
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
    
    @IBAction func calculateButton(_ sender: Any)
    {
        answerLabel.text = String(calculate(variable1: variable1, variable2: variable2, variable3: variable3, variable4: variable4, identifyFunc: identify))
    }
    @IBAction func forcemass(_ sender: Any)
    {
        identify = "x=y/z"
        variable1.isHidden = false
        variable2.isHidden = false
        variable3.isHidden = false
        fmaOut.isHidden = true
        fmaOut.isEnabled = false
        weightOut.isHidden = true
        weightOut.isEnabled = false
    }
    @IBAction func weight(_ sender: Any)
    {
        identify = "x=y/z"
        variable1.isHidden = false
        variable2.isHidden = false
        variable3.isHidden = false
        weightOut.isHidden = true
        weightOut.isEnabled = false
        fmaOut.isHidden = true
        fmaOut.isEnabled = false
    }
    

    @IBOutlet weak var answerLabel: UILabel!
    
    
}
