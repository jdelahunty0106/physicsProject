//
//  KinematicsViewController.swift
//  physics
//
//  Created by period3 on 4/8/19.
//  Copyright © 2019 period3. All rights reserved.
//

import UIKit

class KinematicsViewController: UIViewController {
    @IBOutlet weak var equationOne: UIButton!
    @IBOutlet weak var equationTwo: UIButton!
    @IBOutlet weak var equationThree: UIButton!
    @IBOutlet weak var equationFour: UIButton!
    
    
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
    
    @IBOutlet weak var answerLabel: UILabel!
    @IBOutlet weak var calculationView: UIView!
    @IBOutlet weak var variable1: UITextField!
    @IBOutlet weak var variable2: UITextField!
    @IBOutlet weak var variable3: UITextField!
    @IBOutlet weak var variable4: UITextField!
    
    
    @IBAction func calculateButton(_ sender: Any)
    {
        var answer = String(calculate(variable1: variable1, variable2: variable2, variable3: variable3, variable4: variable4, identifyFunc: identify))
        if answer == String(01000101)
        {
            answerLabel.text = "Cannot Solve With The Given Information"
        }
        else
        {
            answerLabel.text = answer
        }
    }
    
    @IBAction func velocityEquation(_ sender: Any)
    {
        identify = "x=y/z"
        variable1.isHidden = false
        variable2.isHidden = false
        variable3.isHidden = false
        variable4.isHidden = true
        variable1.placeholder = "Veloicty"
        variable2.placeholder = "Change tn Distance"
        variable3.placeholder = "Change in Time"
        calculationView.isHidden = false
        equationOne.isHidden = true
        equationOne.isEnabled = false
        equationTwo.isHidden = true
        equationTwo.isEnabled = false
        equationThree.isHidden = true
        equationThree.isEnabled = false
        equationFour.isHidden = true
        equationFour.isEnabled = false
    }
    @IBAction func accelerationEquation(_ sender: Any)
    {
        identify = "x=y/z"
        variable1.isHidden = false
        variable2.isHidden = false
        variable3.isHidden = false
        variable4.isHidden = true
        variable1.placeholder = "Acceleration"
        variable2.placeholder = "Change in Velocity"
        variable3.placeholder = "Change in Time"
        calculationView.isHidden = false
        equationOne.isHidden = true
        equationOne.isEnabled = false
        equationTwo.isHidden = true
        equationTwo.isEnabled = false
        equationThree.isHidden = true
        equationThree.isEnabled = false
        equationFour.isHidden = true
        equationFour.isEnabled = false
    }
    @IBAction func distanceChange(_ sender: Any)
    {
        identify = "distanceChange"
        variable1.isHidden = false
        variable2.isHidden = false
        variable3.isHidden = false
        variable4.isHidden = false
        variable1.placeholder = "Change in Distance"
        variable2.placeholder = "Initial Velocity"
        variable3.placeholder = "Time"
        variable4.placeholder = "Acceleration"
        calculationView.isHidden = false
        equationOne.isHidden = true
        equationOne.isEnabled = false
        equationTwo.isHidden = true
        equationTwo.isEnabled = false
        equationThree.isHidden = true
        equationThree.isEnabled = false
        equationFour.isHidden = true
        equationFour.isEnabled = false
    }
    @IBAction func velocityFinal(_ sender: Any)
    {
        identify = "velocityFinal"
        variable1.isHidden = false
        variable2.isHidden = false
        variable3.isHidden = false
        variable4.isHidden = false
        calculationView.isHidden = false
        variable1.placeholder = "Velocity Final"
        variable2.placeholder = "Initial Velocity"
        variable3.placeholder = "Acceleration"
        variable4.placeholder = "Time"
        equationOne.isHidden = true
        equationOne.isEnabled = false
        equationTwo.isHidden = true
        equationTwo.isEnabled = false
        equationThree.isHidden = true
        equationThree.isEnabled = false
        equationFour.isHidden = true
        equationFour.isEnabled = false
    }
    
}
