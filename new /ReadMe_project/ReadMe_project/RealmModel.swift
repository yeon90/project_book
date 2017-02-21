//
//  RealmModel.swift
//  ReadMe_project
//
//  Created by Ji yeon Park on 2017. 2. 21..
//  Copyright © 2017년 Jiyeon park. All rights reserved.
//

import Foundation
import RealmSwift

class DataStructR : Object {
    dynamic var id = 0
    let items = List<inputData>()
    
    override static func primaryKey() -> String? {
    return "id"
    }
}

class inputData : Object {
    dynamic var id = NSUUID().uuidString
    dynamic var w1_bookTitle : String = ""
    dynamic var w1_date : String = ""
    dynamic var w1_page : String = ""
    dynamic var w2_imageText : String = ""
    dynamic var w2_background : String = ""
    dynamic var w2_backgroundimage : UIImage = UIImage()
    dynamic var w2_style : String = ""
    dynamic var w3_mainText : String = ""
    
    override static func primaryKey() -> String? {
        return "id"
    }
}
