//
//  ViewController.swift
//  physics
//
//  Created by period3 on 4/8/19.
//  Copyright © 2019 period3. All rights reserved.
//

import UIKit


extension UIViewController
{
    func calculate(variable1: UITextField, variable2: UITextField, variable3: UITextField, variable4: UITextField, identifyFunc: String) -> Double
   {
    var answerFunc: Double!
    
if variable4.isHidden == true //Run this part if variable4 is not visible
{
    if identifyFunc == "x=yz" //This identifies what kind of equation we are using, in this case it is a basic multiplication equation
    {
        if variable1.text?.isEmpty == true
        {
            if let var2 = Double(variable2.text!)
            {
                if let var3 = Double(variable3.text!)
                {
                    answerFunc = Double(var2 * var3)
                }
            }
        }
        else if variable2.text?.isEmpty == true
        {
            if let var1 = Double(variable1.text!)
            {
                if let var3 = Double(variable3.text!)
                {
                    answerFunc = Double(var1/var3)
                }
            }
        }
        else if variable3.text?.isEmpty == true
        {
            if let var1 = Double(variable1.text!)
            {
                if let var2 = Double(variable2.text!)
                {
                    answerFunc = Double(var1/var2)
                }
            }
        }
    }
    if identifyFunc == "x=y/z" // this is for equations that divide with 3 variables
    {
        if variable1.text?.isEmpty == true
        {
            if let var2 = Double(variable2.text!)
            {
                if let var3 = Double(variable3.text!)
                {
                    answerFunc = Double(var2 / var3)
                }
            }
        }
        else if variable2.text?.isEmpty == true
        {
            if let var1 = Double(variable1.text!)
            {
                if let var3 = Double(variable3.text!)
                {
                    answerFunc = Double(var1 * var3)
                }
            }
        }
        else if variable3.text?.isEmpty == true
        {
            if let var1 = Double(variable1.text!)
            {
                if let var2 = Double(variable2.text!)
                {
                    answerFunc = Double(var2/var1)
                }
            }
        }
    }
}
    else if variable4.isHidden == false
        //Run this part if the fourth variable is visible
    {
if identifyFunc == "x=yza" // this is the same as the first equation but with one more variable, now has 4 variables
{
        if variable1.text?.isEmpty == true
        {
            if let var2 = Double(variable2.text!)
            {
                if let var3 = Double(variable3.text!)
                {
                    if let var4 = Double(variable4.text!)
                    {
                        answerFunc = Double(var2 * var3 * var4)
                    }
                }
            }
        }
        else if variable2.text?.isEmpty == true
        {
            if let var1 = Double(variable1.text!)
            {
                if let var3 = Double(variable3.text!)
                {
                    if let var4 = Double(variable4.text!)
                    {
                        answerFunc = var1/(var4 * var3)
                    }
                }
            }
        }
        else if variable3.text?.isEmpty == true
        {
            if let var1 = Double(variable1.text!)
            {
                if let var2 = Double(variable2.text!)
                {
                    if let var4 = Double(variable4.text!)
                    {
                        answerFunc = var1/(var2 * var4)
                    }
                }
            }
        }
        else if variable4.text?.isEmpty == true
        {
            if let var1 = Double(variable1.text!)
            {
                if let var2 = Double(variable2.text!)
                {
                    if let var3 = Double(variable3.text!)
                    {
                        answerFunc = var1/(var2 * var3)
                    }
                }
            }

        }
}//end of x=yza
    else if identifyFunc == "distanceChange" //This formula is specificlaly for kinematics equation only
    {
        
        if variable1.text?.isEmpty == true
        {
            if let var2 = Double(variable2.text!)
            {
                if let var3 = Double(variable3.text!)
                {
                    if let var4 = Double(variable4.text!)
                    {
                        answerFunc = (var2 * var3) + (0.5 * var4 * (var3 * var3))
                    }
                }
            }
        }
        else if variable2.text?.isEmpty == true
        {
        answerFunc = 01000101
        }
        else if variable3.text?.isEmpty == true
        {
        answerFunc = 01000101
        }
        else if variable4.text?.isEmpty == true
        {
        answerFunc = 01000101
        }
        
        
    }// end of distance change
    else if identifyFunc == "velocityFinal"
    {
        if variable1.text?.isEmpty == true
        {
            if let var2 = Double(variable2.text!)
            {
                if let var3 = Double(variable3.text!)
                {
                    if let var4 = Double(variable4.text!)
                    {
                        answerFunc = Double(var2 + (var3 * var4))
                    }
                }
            }
        }
        else if variable2.text?.isEmpty == true
        {
            if let var1 = Double(variable1.text!)
            {
                if let var3 = Double(variable3.text!)
                {
                    if let var4 = Double(variable4.text!)
                    {
                        answerFunc = var1 - (var3 * var4)
                    }
                }
            }
        }
        else if variable3.text?.isEmpty == true
        {
            if let var1 = Double(variable1.text!)
            {
                if let var2 = Double(variable2.text!)
                {
                    if let var4 = Double(variable4.text!)
                    {
                        answerFunc = (var1 - var2)/var4
                    }
                }
            }
        }
        else if variable4.text?.isEmpty == true
        {
            if let var1 = Double(variable1.text!)
            {
                if let var2 = Double(variable2.text!)
                {
                    if let var3 = Double(variable3.text!)
                    {
                        answerFunc = (var1 - var2)/var3
                    }
                }
            }
            
        }
    }// end of velocity final
        
        
        
}//End of variable4 == hidden false
    return answerFunc
    }
}

class ViewController: UIViewController {

    override func viewDidLoad()
    {
        super.viewDidLoad()
        
        
        
    }


}

