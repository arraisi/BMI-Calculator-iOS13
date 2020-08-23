//
//  ViewController.swift
//  BMI-Calculator-iOS13
//
//  Created by Abdul R. Arraisi on 23/08/20.
//  Copyright © 2020 Abdul R. Arraisi. All rights reserved.
//

import UIKit

class CalculateViewController: UIViewController {
    
    var calculatorBrain = CalculatorBrain()

    @IBOutlet weak var heightLabel: UILabel!
    @IBOutlet weak var weightLabel: UILabel!
    @IBOutlet weak var weightSlider: UISlider!
    @IBOutlet weak var heightSlider: UISlider!

    @IBAction func heightSliderChanged(_ sender: UISlider) {
        let height = String(format: "%.2f", sender.value)
        heightLabel.text = "\(height)m"
    }

    @IBAction func weightSliderChanged(_ sender: UISlider) {
        let weight = String(format: "%.0f", sender.value)
        weightLabel.text = "\(weight)m"
    }
    
    @IBAction func calculatePressed(_ sender: UIButton) {
        calculatorBrain.calcaulateBMI(height: heightSlider.value, weight: weightSlider.value)
        
        performSegue(withIdentifier: "goToResult", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let resultVC = segue.destination as! ResultViewController
        resultVC.bmiValue = calculatorBrain.getBMIValue()
        resultVC.bmiAdvice = calculatorBrain.getBMIAdvice()
        resultVC.bmiColor = calculatorBrain.getBMIColor()
    }
}

