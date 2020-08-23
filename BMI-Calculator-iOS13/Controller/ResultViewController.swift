//
//  ResultViewController.swift
//  BMI-Calculator-iOS13
//
//  Created by Abdul R. Arraisi on 23/08/20.
//  Copyright © 2020 Abdul R. Arraisi. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {

    var bmiValue: String?
    var bmiAdvice: String?
    var bmiColor: UIColor?
    
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var resultLabel: UILabel!
    @IBOutlet weak var adviceLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        resultLabel.text = bmiValue
        adviceLabel.text = bmiAdvice
        titleLabel.textColor = bmiColor
        resultLabel.textColor = bmiColor
        adviceLabel.textColor = bmiColor
    }
    
    @IBAction func recalculatePressed(_ sender: UIButton) {
        dismiss(animated: true, completion: nil)
    }
}
