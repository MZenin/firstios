//
//  ViewController.swift
//  test
//
//  Created by Максим Зенин on 01.08.2020.
//  Copyright © 2020 Максим Зенин. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()
        mealNameTextField.delegate = self
    }

    @IBOutlet weak var labelMealName: UILabel!
    
    @IBOutlet weak var mealNameTextField: UITextField!
    
    @IBAction func setDefaultLabelText(_ sender: Any) {
        labelMealName.text = "Default text"
        labelMealName.textColor = UIColor.red
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        
        return true
    }
    
    func textFieldDidEndEditing(_ textField: UITextField) {
        labelMealName.text = textField.text
    }
}

