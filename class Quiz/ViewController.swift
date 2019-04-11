//
//  ViewController.swift
//  class Quiz
//
//  Created by James.Cotter on 4/11/19.
//  Copyright © 2019 James Cotter. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var stepperText: UITextField!
    @IBOutlet weak var stepperOutlet: UIStepper!
    @IBOutlet weak var stepperButtonPressed: UIStepper!
    @IBOutlet weak var punishText: UITextField!
    override func viewDidLoad() {
       
        super.viewDidLoad()
        
        
        // Do any additional setup after loading the view, typically from a nib.
    }
    @IBAction func stepperButtonPressed(_ sender: Any) {stepperText.text = String(Int(stepperOutlet.value))
        var stepNumber = Int(stepperOutlet.value)
        if stepNumber == 100{
            for usefulNumber in 1...100{
                stepNumber = 100 - usefulNumber
                stepperOutlet.value = Double(stepNumber)
                stepperText.text = String(Int(stepperOutlet.value))
            }
        }
    }
    @IBAction func restButtonPressed(_ sender: Any) {
        stepperOutlet.value = 0
        stepperText.text = ""
        punishText.text = ""
    }
    
    @IBAction func enterButtonPressed(_ sender: Any) {
    }
    
    
}
