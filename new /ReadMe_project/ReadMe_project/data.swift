//
//  date.swift
//  ReadMe_project
//
//  Created by Ji yeon Park on 2017. 2. 7..
//  Copyright © 2017년 Jiyeon park. All rights reserved.
//

import UIKit
struct date {
    
    let date  = Date()
    let formatter = DateFormatter()
}


private let WriteData = SomeClass()

class SomeClass {
    var wData : Array<Array<Any>> = []
    var UIColorArray : Array<Any> = []
    
    class var sharedInstance: SomeClass {
        return WriteData
    }
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

/*class SomeClass {
    static let sharedInstance = SomeClass()
    var wData : Array<Array<Any>> = [[]]
}*/
