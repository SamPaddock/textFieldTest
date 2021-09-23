//
//  ViewController.swift
//  textFieldTest
//
//  Created by Sarah Al-Matawah on 02/06/2020.
//  Copyright © 2020 Sarah Al-Matawah. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {
    
    
    
    var colorText = colorTextFieldDelegate()
    var emojiText = emojiTextFieldDelegate()
    var zipText = zipTextFieldDelegate()

    @IBOutlet weak var searchTextField: UITextField!
    @IBOutlet weak var testTextField: UITextField!
    @IBOutlet weak var zipTextField: UITextField!
    @IBOutlet weak var currencyTextField: UITextField!
    @IBOutlet weak var enabledTextField: UITextField!
    @IBOutlet weak var textFieldEnabler: UISwitch!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.

        testTextField.delegate = emojiText
        searchTextField.delegate = colorText
        zipTextField.delegate = zipText
        enabledTextField.delegate = self
        
    }
    
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        if textFieldEnabler.isOn{
            
            var newText = textField.text! as NSString
            newText = newText.replacingCharacters(in: range, with: string) as NSString
            
            return true
        } else {
            return false
        }
    }
    
    

}

