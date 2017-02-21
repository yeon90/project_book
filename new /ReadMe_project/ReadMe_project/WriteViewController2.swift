//
//  WriteViewController2.swift
//  ReadMe_project
//
//  Created by Ji yeon Park on 2017. 2. 7..
//  Copyright © 2017년 Jiyeon park. All rights reserved.
//

import UIKit

class WriteViewController2: UIViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate{

    @IBOutlet weak var imageBackground: UIView!
    @IBOutlet weak var imageTextField: UITextView!
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var backgroundScrollView: UIScrollView!
    @IBOutlet weak var styleScrollView: UIScrollView!
    
    let colorS : colorPalette
    var writeColorA : UIColor
    var writeColorB : UIColor
    var writeColorC : UIColor
    var writeColorD : UIColor
    var writeColorE : UIColor
    var wData1 : Array<Any>
    var wData2 : Array<Any>
    var styleValue : Any
    var colorValue : Any
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
        styleValue = ""
        colorValue = ""
        styleArrayForWrite = []
        super.init(coder: aDecoder)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
     
        backgroundScrollView.contentSize = CGSize(width: 1000, height: 40)
        styleScrollView.contentSize = CGSize(width: 1000, height: 130)
        
        
        // Do any additional setup after loading the view.
    }
   
   
    @IBAction func galleryButtonTouched(_ sender: Any) {
        let pickerController = UIImagePickerController()
        pickerController.sourceType = .photoLibrary
        pickerController.delegate = self
        present(pickerController, animated: true, completion: nil)
        imageBackground.backgroundColor = UIColor.clear
    }
   
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [String : Any]) {
        if let image = info[UIImagePickerControllerOriginalImage] {

            imageView.image = image as? UIImage
            colorValue = imageView.image
        }
        else {
            print("값이 없음")
        }
        
        picker.dismiss(animated: true, completion: nil)
    }
    
    
    @IBAction func changeColorA(_ sender: Any) {
     imageBackground.backgroundColor = writeColorA
     colorValue = "A"
    }
  
    @IBAction func changeColorB(_ sender: Any) {
        imageBackground.backgroundColor = writeColorB
       colorValue = "B"
    }
    @IBAction func changeColorC(_ sender: Any) {
        imageBackground.backgroundColor = writeColorC
        colorValue = "C"
    }
    
    @IBAction func changeColorD(_ sender: Any) {
        imageBackground.backgroundColor = writeColorD
       colorValue = "D"
    }
    
    @IBAction func changeColorE(_ sender: Any) {
        imageBackground.backgroundColor = writeColorE
        colorValue = "E"
    }
    
    @IBAction func changeStyleA(_ sender: Any) {
        //colorS.changeToStyleA(imageTextField, style:"A")
        colorS.changeStyle(textField: imageTextField, style: "A")
        styleValue = "A"
    }
    
    @IBAction func changeStyleB(_ sender: Any) {
        colorS.changeStyle(textField: imageTextField, style: "B")
        styleValue = "B"
    }
    
    @IBAction func changeStyleC(_ sender: Any) {
        colorS.changeStyle(textField: imageTextField, style: "C")
        styleValue = "B"
    }
    
    
    
    @IBAction func nextButtonTouched(_ sender: Any) {
        let w3 :  WriteViewController3 = storyboard?.instantiateViewController(withIdentifier:"write3") as! WriteViewController3
        wData2.append(imageTextField.text)
        wData2.append(styleValue)
        wData2.append(colorValue)
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
