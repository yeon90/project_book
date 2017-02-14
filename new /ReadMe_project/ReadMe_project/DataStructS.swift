//
//  singleton.swift
//  ReadMe_project
//
//  Created by Ji yeon Park on 2017. 2. 14..
//  Copyright © 2017년 Jiyeon park. All rights reserved.
//

import Foundation

private let Data = DataStructS()

class DataStructS {
    var wData : Array<dataStruct> = []
    class var sharedInstance: DataStructS{
        return Data
    }
}
