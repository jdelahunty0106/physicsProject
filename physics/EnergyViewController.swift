//
//  EnergyViewController.swift
//  physics
//
//  Created by period3 on 4/8/19.
//  Copyright © 2019 period3. All rights reserved.
//

import UIKit

class EnergyViewController: UIViewController {
    
    var identify = ""
    @IBOutlet weak var calculationView: UIView!
    
    @IBOutlet weak var variableOne: UITextField!
    @IBOutlet weak var variableTwo: UITextField!
    @IBOutlet weak var variableThree: UITextField!
    @IBOutlet weak var variableFour: UITextField!
    @IBOutlet weak var answerLabel: UILabel!
    
    @IBOutlet weak var workOut: UIButton!
    @IBOutlet weak var kineticOut: UIButton!
    @IBOutlet weak var potentialOut: UIButton!
    
    
    override func viewDidLoad()
    {
        super.viewDidLoad()

        variableOne.isHidden = true
        variableTwo.isHidden = true
        variableThree.isHidden = true
        variableFour.isHidden = true
        
        
    }
    
    @IBAction func WFd(_ sender: Any)
    {
       identify = "x=yz"
        variableOne.placeholder = "Work"
        variableTwo.placeholder = "Force"
        variableThree.placeholder = "Direction"
        calculationView.isHidden = true
        variableOne.isHidden = false
        variableTwo.isHidden = false
        variableThree.isHidden = false
        workOut.isHidden = true
        workOut.isEnabled = false
        kineticOut.isHidden = true
        kineticOut.isEnabled = false
        potentialOut.isHidden = true
        potentialOut.isEnabled = false
    }
    @IBAction func KE(_ sender: Any)
    {
        identify = "kinetic"
        variableOne.placeholder = "Kinetic Energy"
        variableTwo.placeholder = "Mass"
        variableThree.placeholder = "Velocity"
        calculationView.isHidden = true
        variableOne.isHidden = false
        variableTwo.isHidden = false
        variableThree.isHidden = false
        workOut.isHidden = true
        workOut.isEnabled = false
        kineticOut.isHidden = true
        kineticOut.isEnabled = false
        potentialOut.isHidden = true
        potentialOut.isEnabled = false
    }
    @IBAction func PE(_ sender: Any)
    {
        identify = "x=yza"
        variableOne.placeholder = "Potential Energy"
        variableTwo.placeholder = "Mass"
        variableThree.placeholder = "Height"
        calculationView.isHidden = true
        variableOne.isHidden = false
        variableTwo.isHidden = false
        variableThree.isHidden = false
        workOut.isHidden = true
        workOut.isEnabled = false
        kineticOut.isHidden = true
        kineticOut.isEnabled = false
        potentialOut.isHidden = true
        potentialOut.isEnabled = false
    }
    @IBAction func calculateButton(_ sender: Any)
    {
        calculate(variable1: variableOne, variable2: variableTwo, variable3: variableThree, variable4: variableFour, identifyFunc: identify)
    }
    
  

}
