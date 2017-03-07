//
//  ViewController.swift
//  TemperatureCalculator
//
//  Created by Shane Noonan on 05/02/2017.
//  Copyright © 2017 Shane Noonan. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var enterLabel: UILabel!
    @IBOutlet var textField: UITextField!
    @IBOutlet var imageView: UIImageView!
    @IBOutlet var outputLabel: UILabel!
    @IBOutlet var segmentControl: UISegmentedControl!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func calculateTemp(_ sender: Any) {
        
        self.resignFirstResponder()
        
        if segmentControl.selectedSegmentIndex == 0 {
            
            let Fahrenheit = Double(textField.text!)
            let Celsius = (Fahrenheit! - 32) / 1.8
            
            let result = String(format: "%4.1f Celsius", Celsius)
            outputLabel.text = result
            
            if Celsius > 120 {
                
                imageView.image = UIImage(named: "Temp9")
            }
            else if Celsius > 100 {
                
                imageView.image = UIImage(named: "Temp8")
            }
            else if Celsius > 80 {
                
                imageView.image = UIImage(named: "Temp7")
            }
            else if Celsius > 60 {
                
                imageView.image = UIImage(named: "Temp6")
            }
            else if Celsius > 40 {
                
                imageView.image = UIImage(named: "Temp5")
            }
            else if Celsius > 20 {
                
                imageView.image = UIImage(named: "Temp4")
            }
            else if Celsius > 0 {
                
                imageView.image = UIImage(named: "Temp3")
            }
            else if Celsius > -20 {
                
                imageView.image = UIImage(named: "Temp2")
            }
            else if Celsius < -20 {
                
                imageView.image = UIImage(named: "Temp1")
            }
            
            
        }
        
        if segmentControl.selectedSegmentIndex == 1 {
            
            let Celsius = Double(textField.text!)
            let Fahrenheit = Celsius! * 1.8 - 32
            
            let result = String(format: "%4.1f Fahrenheit", Fahrenheit)
            outputLabel.text = result
            
            if Fahrenheit > 160 {
                
                imageView.image = UIImage(named: "Temp9")
            }
            else if Fahrenheit > 140 {
                
                imageView.image = UIImage(named: "Temp8")
            }
            else if Fahrenheit > 120 {
                
                imageView.image = UIImage(named: "Temp7")
            }
            else if Fahrenheit > 100 {
                
                imageView.image = UIImage(named: "Temp6")
            }
            else if Fahrenheit > 80 {
                
                imageView.image = UIImage(named: "Temp5")
            }
            else if Fahrenheit > 60 {
                
                imageView.image = UIImage(named: "Temp4")
            }
            else if Fahrenheit > 40 {
                
                imageView.image = UIImage(named: "Temp3")
            }
            else if Fahrenheit > 20 {
                
                imageView.image = UIImage(named: "Temp2")
            }
            else if Fahrenheit < 20 {
                
                imageView.image = UIImage(named: "Temp1")
            }
        }
    }

    @IBAction func switchFormat(_ sender: Any) {
        
        if segmentControl.selectedSegmentIndex == 0 {
            
            enterLabel.text = "Enter Fahrenheit"
            textField.text = ""
            outputLabel.text = "0 Celsius"
        }
        else if segmentControl.selectedSegmentIndex == 1 {
            
            enterLabel.text = "Enter Celsius"
            textField.text = ""
            outputLabel.text = "0 Fahrenheit"
        }
    }
}

