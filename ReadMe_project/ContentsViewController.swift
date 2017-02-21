//
//  ContentsViewController.swift
//  ReadMe_project
//
//  Created by Ji yeon Park on 2017. 2. 15..
//  Copyright © 2017년 Jiyeon park. All rights reserved.
//

import UIKit

class ContentsViewController: UIViewController {
    
    let colorS : colorPalette
    @IBOutlet weak var bookTitle: UILabel!
    @IBOutlet weak var dateLabel: UILabel!
    @IBOutlet weak var pageLabel: UILabel!
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var imageTextView: UITextView!
    @IBOutlet weak var mainTextView: UITextView!
    var indexPathRow : Int
    
    required init?(coder aDecoder: NSCoder) {
        colorS = colorPalette()
        indexPathRow = 1
      super.init(coder: aDecoder)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        bookTitle.text = String(describing: DataStructS.sharedInstance.wData[indexPathRow].w1_bookTitle)
        dateLabel.text = String(describing: DataStructS.sharedInstance.wData[indexPathRow].w1_date)
        pageLabel.text = String(describing: DataStructS.sharedInstance.wData[indexPathRow].w1_page)
        imageView.backgroundColor = colorS.changeToUIColor(input: String(describing: DataStructS.sharedInstance.wData[indexPathRow].w2_background))
        imageTextView.text = String(describing: DataStructS.sharedInstance.wData[indexPathRow].w2_imageText)
        colorS.changeStyle(textField: imageTextView, style: String(describing: DataStructS.sharedInstance.wData[indexPathRow].w2_style))
        mainTextView.text = String(describing: DataStructS.sharedInstance.wData[indexPathRow].w3_mainText)
        // Do any additional setup after loading the view.
        imageView.image = DataStructS.sharedInstance.wData[indexPathRow].w2_backgroundimage
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func editButtonTouched(_ sender: Any) {
        
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
