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
    

    required init?(coder aDecoder: NSCoder) {
        colorS = colorPalette()
        writeColorA = colorS.hexStringToUIColor(hex: "86C0C6")
        writeColorB = colorS.hexStringToUIColor(hex: "FBABA0")
        writeColorC = colorS.hexStringToUIColor(hex: "D2E1A5")
        writeColorD = colorS.hexStringToUIColor(hex: "D4C0D2")
        writeColorE = colorS.hexStringToUIColor(hex: "6D90B0")
        super.init(coder: aDecoder)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
 
        // Do any additional setup after loading the view.
    }
    
   
    @IBAction func changeColorA(_ sender: Any) {
     imageBackground.backgroundColor = writeColorA
    }
  
    @IBAction func changeColorB(_ sender: Any) {
        imageBackground.backgroundColor = writeColorB
    }
    @IBAction func changeColorC(_ sender: Any) {
        imageBackground.backgroundColor = writeColorC

    }
    @IBAction func changeColorD(_ sender: Any) {
        imageBackground.backgroundColor = writeColorD
    }
    @IBAction func changeColorE(_ sender: Any) {
        imageBackground.backgroundColor = writeColorE
    }
    
    @IBAction func changeStyleA(_ sender: Any) {
    
        imageTextField.textColor = UIColor.darkGray
        imageTextField.font = UIFont(name: "tvN EnjoystoriesOTF", size: 25)
        imageTextField.textAlignment = .center
    }
    
    @IBAction func changeStyleB(_ sender: Any) {
        imageTextField.textColor = UIColor.black
        imageTextField.font = UIFont(name: "tvN EnjoystoriesOTF", size: 25)
        imageTextField.textAlignment = .center
    }
    
    @IBAction func changeStyleC(_ sender: Any) {
        imageTextField.textColor = UIColor.white
        imageTextField.font = UIFont(name: "tvN EnjoystoriesOTF", size: 25)
        imageTextField.textAlignment = .center
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
