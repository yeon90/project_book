//
//  colorStruct.swift
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
           imageBackgroundColor = SomeClass.sharedInstance.UIColorArray[0]
        }
        else if (input == "B" ) {
            imageBackgroundColor = SomeClass.sharedInstance.UIColorArray[1]
        }
        else if (input == "C" ) {
            imageBackgroundColor = SomeClass.sharedInstance.UIColorArray[2]
        }
        else if (input == "D" ) {
            imageBackgroundColor = SomeClass.sharedInstance.UIColorArray[3]
        }
        else if (input == "E" ) {
            imageBackgroundColor = SomeClass.sharedInstance.UIColorArray[4]
        }
        
        return imageBackgroundColor as! UIColor
    }
    
    func changeToStyle(input : String) -> Array<Any> {
        var imageTextColor : Any = UIColor.black
        var imageFont : Any = UIFont(name: "tvN EnjoystoriesOTF", size: 30) 
        var imageAlignment : Any = NSTextAlignment.center
        
        var styleS = style()
        
        if (input == "A") {
            imageTextColor = styleS.Astyle_textColor
            imageFont = styleS.Astyle_font
            imageAlignment = styleS.Astyle_textAlignment}
        else if (input == "B") {
            imageTextColor = styleS.Bstyle_textColor
            imageFont = styleS.Bstyle_font
            imageAlignment = styleS.Bstyle_textAlignment
        }
        else if (input == "C") {
            imageTextColor = styleS.Cstyle_textColor
            imageFont = styleS.Cstyle_font
            imageAlignment = styleS.Cstyle_textAlignment
        }
        return [imageTextColor, imageFont, imageAlignment]
        
    }
}

