//
//  currencyTextFieldDelegate.swift
//  textFieldTest
//
//  Created by Sarah Al-Matawah on 02/06/2020.
//  Copyright © 2020 Sarah Al-Matawah. All rights reserved.
//

import UIKit
import Foundation

class currencyTextFieldDelegate: NSObject, UITextFieldDelegate {

    var currencyDigit = "0000"
    var currencyText = ""
    
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        
        var newText = textField.text! as NSString
        currencyDigit = newText.replacingCharacters(in: range, with: string)
        
        
        
        return true
    }

}
