//
//  WriteViewController2.swift
//  ReadMe_project
//
//  Created by Ji yeon Park on 2017. 2. 7..
//  Copyright © 2017년 Jiyeon park. All rights reserved.
//

import UIKit

class WriteViewController2: UIViewController {

    @IBOutlet weak var imageBackground: UIView!
    @IBOutlet weak var imageTextField: UITextView!
    
    let colorS : colorPalette
    var writeColorA : UIColor
    var writeColorB : UIColor
    var writeColorC : UIColor
    var writeColorD : UIColor
    var writeColorE : UIColor
    var wData1 : Array<Any>
    var wData2 : Array<Any>
    var styleArray : Array<Any>
    var colorArray : Array<Any>
    var styleArrayForWrite : Array<Any>
    required init?(coder aDecoder: NSCoder) {
        colorS = colorPalette()
        writeColorA = colorS.hexStringToUIColor(hex: "86C0C6")
        writeColorB = colorS.hexStringToUIColor(hex: "FBABA0")
        writeColorC = colorS.hexStringToUIColor(hex: "D2E1A5")
        writeColorD = colorS.hexStringToUIColor(hex: "D4C0D2")
        writeColorE = colorS.hexStringToUIColor(hex: "6D90B0")
        wData1 = []
        wData2 = []
        styleArray = []
        colorArray = []
        styleArrayForWrite = []
        super.init(coder: aDecoder)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
   
        // Do any additional setup after loading the view.
    }
    
    @IBAction func changeColorA(_ sender: Any) {
     imageBackground.backgroundColor = writeColorA
     colorArray.append("A")
    }
  
    @IBAction func changeColorB(_ sender: Any) {
        imageBackground.backgroundColor = writeColorB
        colorArray.append("B")
    }
    @IBAction func changeColorC(_ sender: Any) {
        imageBackground.backgroundColor = writeColorC
        colorArray.append("C")
    }
    
    @IBAction func changeColorD(_ sender: Any) {
        imageBackground.backgroundColor = writeColorD
        colorArray.append("D")
    }
    
    @IBAction func changeColorE(_ sender: Any) {
        imageBackground.backgroundColor = writeColorE
        colorArray.append("E")
    }
    
    @IBAction func changeStyleA(_ sender: Any) {
        //colorS.changeToStyleA(imageTextField, style:"A")
        colorS.changeStyle(textField: imageTextField, style: "A")
       
        /*  imageTextField.textColor = UIColor.darkGray
        imageTextField.font = UIFont(name: "tvN EnjoystoriesOTF", size: 30)
        imageTextField.textAlignment = .center
        DataStructS.sharedInstance.style_textColor = imageTextField.textColor!
        DataStructS.sharedInstance.style_font = imageTextField.font
        DataStructS.sharedInstance.style_textAlignment = imageTextField.textAlignment*/
    
        styleArray.append("A")
    }
    
    @IBAction func changeStyleB(_ sender: Any) {
        colorS.changeStyle(textField: imageTextField, style: "B")
        /*
        imageTextField.textColor = UIColor.black
        imageTextField.font = UIFont(name: "tvN EnjoystoriesOTF", size: 30)
        imageTextField.textAlignment = .center
        DataStructS.sharedInstance.style_textColor = imageTextField.textColor!
        DataStructS.sharedInstance.style_font = imageTextField.font
        DataStructS.sharedInstance.style_textAlignment = imageTextField.textAlignment*/
        styleArray.append("B")
    }
    
    @IBAction func changeStyleC(_ sender: Any) {
        colorS.changeStyle(textField: imageTextField, style: "C")
/*
        imageTextField.textColor = UIColor.white
        imageTextField.font = UIFont(name: "tvN EnjoystoriesOTF", size: 30)
        imageTextField.textAlignment = .center
        DataStructS.sharedInstance.style_textColor = imageTextField.textColor!
        DataStructS.sharedInstance.style_font = imageTextField.font
        DataStructS.sharedInstance.style_textAlignment = imageTextField.textAlignment*/
        
        styleArray.append("C")
    }
    
    @IBAction func nextButtonTouched(_ sender: Any) {
        let w3 :  WriteViewController3 = storyboard?.instantiateViewController(withIdentifier:"write3") as! WriteViewController3
        wData2.append(imageTextField.text)
        wData2.append(colorArray.popLast()!)
        wData2.append(styleArray.popLast()!)
        w3.wData1 = wData1
        w3.wData2 = wData2
        DataStructS.sharedInstance.UIColorArray.append(writeColorA)
        DataStructS.sharedInstance.UIColorArray.append(writeColorB)
        DataStructS.sharedInstance.UIColorArray.append(writeColorC)
        DataStructS.sharedInstance.UIColorArray.append(writeColorD)
        DataStructS.sharedInstance.UIColorArray.append(writeColorE)
            
        if let navigation = self.navigationController {
            navigation.pushViewController(w3, animated: true)
        }
        else {
            present(w3, animated: true, completion: nil)
        }
        
        
      
    }
    

    
    
    
    
   // override func didReceiveMemoryWarning() {
   //     super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
 //   }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
