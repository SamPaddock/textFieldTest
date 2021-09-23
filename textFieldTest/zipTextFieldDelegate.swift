//
//  zipTextFieldDelegate.swift
//  textFieldTest
//
//  Created by Sarah Al-Matawah on 02/06/2020.
//  Copyright © 2020 Sarah Al-Matawah. All rights reserved.
//

import UIKit
import Foundation

class zipTextFieldDelegate: NSObject, UITextFieldDelegate {
    
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        
        var newText = textField.text! as NSString
        newText = newText.replacingCharacters(in: range, with: string) as NSString
        
        if newText.length <= 5 {
            return true
        } else {
            return false
        }
        
        
    }

}
