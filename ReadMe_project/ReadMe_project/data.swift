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
    class var sharedInstance: SomeClass {
        return WriteData
    }
}

/*class SomeClass {
    static let sharedInstance = SomeClass()
    var wData : Array<Array<Any>> = [[]]
}*/
