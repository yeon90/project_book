//
//  singleton.swift
//  ReadMe_project
//
//  Created by Ji yeon Park on 2017. 2. 14..
//  Copyright © 2017년 Jiyeon park. All rights reserved.
//

import UIKit

private let Data = DataStructS()

class DataStructS {
    var wData : Array<DataStruct> = []
    var UIColorArray : Array<Any> = []
    
    var style_textColor = UIColor.black
    var style_font = UIFont(name: "tvN EnjoystoriesOTF", size: 30)
    var style_textAlignment = NSTextAlignment.center
   
    class var sharedInstance: DataStructS{
        return Data
    }
}
