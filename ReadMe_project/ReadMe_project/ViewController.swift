//
//  ViewController.swift
//  ReadMe_project
//
//  Created by Ji yeon Park on 2017. 2. 6..
//  Copyright © 2017년 Jiyeon park. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var bookTitle: UITextField!
    @IBOutlet weak var dateInput: UITextField!
    @IBOutlet weak var pageInput: UITextField!
    var date1 : date
    
    
    required init?(coder aDecoder: NSCoder) {
        date1 = date()
                date1.formatter.dateFormat = "yyyy.MM.dd"
        
        super.init(coder: aDecoder)

    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        bookTitle.placeholder = "책 제목을 입력하세요."
        dateInput.text = date1.formatter.string(from: date1.date)
        pageInput.placeholder = "페이지를 입력하세요."
        
        //     view.addSubview(imageText)
        // Do any additional setup after loading the view, typically from a nib.
    }
    

    func nextButtonTouched () -> [String] {
     
     var dataArrayWrite1 : [String] = []
     let bookTitleS = self.bookTitle.text
     let dateInputS = self.dateInput.text
     let pageInputS = self.pageInput.text
        dataArrayWrite1.append(bookTitleS!)
        dataArrayWrite1.append(dateInputS!)
        dataArrayWrite1.append(pageInputS!)
        return dataArrayWrite1
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

