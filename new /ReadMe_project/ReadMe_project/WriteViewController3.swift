//
//  WriteViewController3.swift
//  ReadMe_project
//
//  Created by Ji yeon Park on 2017. 2. 7..
//  Copyright © 2017년 Jiyeon park. All rights reserved.
//

import UIKit

class WriteViewController3: UIViewController {
    @IBOutlet weak var mainText: UITextView!
    
    var wData1 : Array<Any>
    var wData2 : Array<Any>
    var wData3 : Array<Any>
    var wData : Array<Array<Any>>
    var dataStructA : DataStruct
    
    required init?(coder aDecoder: NSCoder) {
     
        wData1 = []
        wData2 = []
        wData3 = []
        wData = []
        dataStructA = DataStruct()
        
        super.init(coder: aDecoder)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func saveButtonTouched(_ sender: Any) {
        wData3.append(mainText.text)
       
    
        dataStructA.w1_bookTitle = wData1[0] as! String
        dataStructA.w1_date = wData1[1] as! String
        dataStructA.w1_page = wData1[2] as! String
        dataStructA.w2_imageText = wData2[0] as! String
        dataStructA.w2_background = wData2[1] as! String
        dataStructA.w2_style = wData2[2] as! String
        dataStructA.w3_mainText = wData3[0] as! String
        DataStructS.sharedInstance.wData.append(dataStructA)
        
    }
  
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
