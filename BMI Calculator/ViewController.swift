//
//  ViewController.swift
//  BMI Calculator
//
//  Created by Ennis Cruz on 2/22/25.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var weightInput: UITextField!
    @IBOutlet weak var heightInput: UITextField!
    @IBOutlet weak var BMIOutput: UITextField!
    @IBOutlet weak var categoryOutput: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, tyoically from a nib.
    }
    
    @IBAction func calcBMI(_ sender: Any ) {
        if let heightStr = heightInput.text {
            if heightStr == "" {
                return
            }
            else {
                if let weightStr = weightInput.text {
                    if weightStr == "" {
                        return
                    }
                    else {
                        if let heightNum = Double(heightStr) {
                            if let weightNum = Double(weightStr) {
                                let BMI: Double = (weightNum) / (heightNum * heightNum)
                                BMIOutput.text = String(BMI)
                                
                                switch BMI {
                                case 1..<15:
                                    categoryOutput.text = "Very severly underweight"
                                case 15...16:
                                    categoryOutput.text = "Severely underwieght"
                                case 16..<18.5:
                                    categoryOutput.text = "Underweight"
                                case 18.5..<25:
                                    categoryOutput.text = "Normal"
                                case 25..<30:
                                    categoryOutput.text = "Overweight"
                                case 30..<35:
                                    categoryOutput.text = "Moderately obese"
                                case 35..<40:
                                    categoryOutput.text = "Severely obese"
                                case 40..<60:
                                    categoryOutput.text = "Very severely obese"
                                default:
                                    return
                                    
                                }
                            }
                        }
                    }
                }
            }
            
        }
        
        
    }
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        self.weightInput.resignFirstResponder()
        self.heightInput.resignFirstResponder()
        return true
    }
    
}
