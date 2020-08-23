//
//  CalculatorBrain.swift
//  BMI-Calculator-iOS13
//
//  Created by Abdul R. Arraisi on 23/08/20.
//  Copyright © 2020 Abdul R. Arraisi. All rights reserved.
//

import UIKit

struct CalculatorBrain {
    var bmi: BMI?
    
    func getBMIValue() -> String {
        return String(format: "%.1f", bmi?.bmiValue ?? 0.0)
    }
    
    func getBMIAdvice() -> String {
        return bmi?.bmiAdvice ?? "no advice."
    }
    
    func getBMIColor() -> UIColor {
        return bmi?.bmiColor ?? #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
    }
    
    mutating func calcaulateBMI(height: Float, weight: Float) {
        let bmiValue = weight / pow(height, 2)
        if bmiValue < 18.5 {
            bmi = BMI(bmiValue: bmiValue, bmiAdvice: "Eat More Snack!", bmiColor: #colorLiteral(red: 0.2392156869, green: 0.6745098233, blue: 0.9686274529, alpha: 1))
        } else if bmiValue < 24.9 {
            bmi = BMI(bmiValue: bmiValue, bmiAdvice: "Fit as a Fiddle", bmiColor: #colorLiteral(red: 0.4666666687, green: 0.7647058964, blue: 0.2666666806, alpha: 1))
        } else {
            bmi = BMI(bmiValue: bmiValue, bmiAdvice: "Eat Less Snack!", bmiColor: #colorLiteral(red: 0.9372549057, green: 0.3490196168, blue: 0.1921568662, alpha: 1))
        }
    }
}
