//
//  emojiTextFieldDelegate.swift
//  textFieldTest
//
//  Created by Sarah Al-Matawah on 02/06/2020.
//  Copyright © 2020 Sarah Al-Matawah. All rights reserved.
//

import UIKit
import Foundation

class emojiTextFieldDelegate: NSObject, UITextFieldDelegate {
    
    var emoji: [String:String] = ["heart":"❤️","fish":"🐟","bird":"🐦","frog":"🐸","bear":"🐻","dog":"🐶","cat":"🐱","mouse":"🐭","hamster":"🐹","fox":"🦊","panda":"🐼"]
    
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        
        
        var newText = textField.text! as NSString
        newText = newText.replacingCharacters(in: range, with: string) as NSString
        print("\n...\(newText)\n")
        print("range: \(range.description)\n")
        print("String: \(string)\n")
        
        var range: NSRange
        var isEmoji = false
        
        for (key, emoji) in emoji {
            range = newText.range(of: key, options: .caseInsensitive)
            if newText.contains(key){
                newText = newText.replacingCharacters(in: range, with: emoji) as NSString
                
            }
            isEmoji = true
        }
        
        if isEmoji {
            textField.text = newText as String
            return false
        } else {
            return true
        }
        
    }
    
    func textFieldDidEndEditing(_ textField: UITextField) {
        print("textFieldDidEndEditing")
    }

    func textFieldDidBeginEditing(_ textField: UITextField) {
        print("textFieldDidBeginEditing")
    }

    func textFieldShouldClear(_ textField: UITextField) -> Bool {
        print("textFieldShouldClear")
        return true
    }

    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        print("textFieldShouldReturn")
        return true
    }

    func textFieldShouldBeginEditing(_ textField: UITextField) -> Bool {
        print("textFieldShouldBeginEditing")
        return true
    }

    func textFieldShouldEndEditing(_ textField: UITextField) -> Bool {
        print("textFieldShouldEndEditing")
        return true
    }
    
    
    
}
