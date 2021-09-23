//
//  colorTextFieldDelegate.swift
//  textFieldTest
//
//  Created by Sarah Al-Matawah on 02/06/2020.
//  Copyright © 2020 Sarah Al-Matawah. All rights reserved.
//

import UIKit
import Foundation

class colorTextFieldDelegate: NSObject, UITextFieldDelegate {

    let colors: [String:UIColor] = [
        "red": UIColor.red,
        "orange":  UIColor.orange,
        "yellow":  UIColor.yellow,
        "green":  UIColor.green,
        "blue":  UIColor.blue,
        "brown":  UIColor.brown,
        "black":  UIColor.black,
        "purple":  UIColor.purple,
        "cyan" : UIColor.cyan,
        "magenta" : UIColor.magenta,
        "white" : UIColor.white
    ]
    
    let randomColor: [UIColor] = [.red, .black, .blue, .brown, .cyan, .gray, .green, .magenta, .orange, .purple, .yellow]
    
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        
        var newText = textField.text! as NSString
        newText = newText.replacingCharacters(in: range, with: string) as NSString
        
//        var range: NSRange
//
//        for (key, emoji) in colors {
//            range = newText.range(of: key, options: .caseInsensitive)
//            if newText.contains(key){
//                textField.textColor = emoji
//            }
//        }
        
        var randomIndex = Int(arc4random() % UInt32(randomColor.count))
        
        textField.textColor = randomColor[randomIndex]
        
        return true
        
        
    }

}
