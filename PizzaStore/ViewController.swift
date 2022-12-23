//
//  ViewController.swift
//  PizzaStore
//
//  Created by Леонид Шелудько on 22.12.2022.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var phoneTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        phoneTextField.keyboardType = .numberPad
    }

    
}

