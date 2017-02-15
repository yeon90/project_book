//
//  date.swift
//  ReadMe_project
//
//  Created by Ji yeon Park on 2017. 2. 7..
//  Copyright © 2017년 Jiyeon park. All rights reserved.
//

import UIKit

struct colorPalette{
    
    func hexStringToUIColor (hex:String) -> UIColor {
        var cString:String = hex.trimmingCharacters(in: .whitespacesAndNewlines).uppercased()
        
        if (cString.hasPrefix("#")) {
            cString.remove(at: cString.startIndex)
        }
        
        if ((cString.characters.count) != 6) {
            return UIColor.gray
        }
        
        var rgbValue:UInt32 = 0
        Scanner(string: cString).scanHexInt32(&rgbValue)
        
        return UIColor(
            red: CGFloat((rgbValue & 0xFF0000) >> 16) / 255.0,
            green: CGFloat((rgbValue & 0x00FF00) >> 8) / 255.0,
            blue: CGFloat(rgbValue & 0x0000FF) / 255.0,
            alpha: CGFloat(1.0)
        )
    }
    
    
    func changeToUIColor(input : String) -> UIColor {
        var imageBackgroundColor : Any = UIColor.black
        
        if (input == "A" ) {
            imageBackgroundColor = DataStructS.sharedInstance.UIColorArray[0]
        }
        else if (input == "B" ) {
            imageBackgroundColor = DataStructS.sharedInstance.UIColorArray[1]
        }
        else if (input == "C" ) {
            imageBackgroundColor = DataStructS.sharedInstance.UIColorArray[2]
        }
        else if (input == "D" ) {
            imageBackgroundColor = DataStructS.sharedInstance.UIColorArray[3]
        }
        else if (input == "E" ) {
            imageBackgroundColor = DataStructS.sharedInstance.UIColorArray[4]
        }
        
        return imageBackgroundColor as! UIColor
    }
    
    
    func changeStyle (textField : UITextView, style : String) {
        
        if(style == "A") {
            textField.textColor = UIColor.darkGray
            textField.font = UIFont(name: "tvN EnjoystoriesOTF", size: 30)
            textField.textAlignment = NSTextAlignment.center
        }
        else if (style == "B") {
            textField.textColor = UIColor.black
            textField.font = UIFont(name: "tvN EnjoystoriesOTF", size: 30)
            textField.textAlignment = NSTextAlignment.center
        }
        else if (style == "C") {
            textField.textColor = UIColor.white
            textField.font = UIFont(name: "tvN EnjoystoriesOTF", size: 30)
            textField.textAlignment = NSTextAlignment.center
        }
    }
}

struct date {
    
    let date  = Date()
    let formatter = DateFormatter()
}

struct style {
    var Astyle_textColor = UIColor.darkGray
    var Astyle_font = UIFont(name: "tvN EnjoystoriesOTF", size: 30)
    var Astyle_textAlignment = NSTextAlignment.center
    var Bstyle_textColor = UIColor.black
    var Bstyle_font = UIFont(name: "tvN EnjoystoriesOTF", size: 30)
    var Bstyle_textAlignment = NSTextAlignment.center
    var Cstyle_textColor = UIColor.white
    var Cstyle_font = UIFont(name: "tvN EnjoystoriesOTF", size: 30)
    var Cstyle_textAlignment = NSTextAlignment.center
}



/*struct changeToColor {
    let CTVC : ContentsTableViewController
    var imageBackgroundColorA : String = ""
    mutating func changeToColorF() {
      imageBackgroundColorA = "writeColor" + String(describing: CTVC.imageBackgroundColor)
      CTVC.imageBackgroundColorS = imageBackgroundColorA
    }
}*/
