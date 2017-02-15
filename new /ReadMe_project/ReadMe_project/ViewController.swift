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
    var dataStructA : DataStruct
    
    required init?(coder aDecoder: NSCoder) {
        date1 = date()
                date1.formatter.dateFormat = "yyyy.MM.dd"
        dataStructA = DataStruct()
        super.init(coder: aDecoder)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        bookTitle.placeholder = "책 제목을 입력하세요."
        dateInput.text = date1.formatter.string(from: date1.date)
        pageInput.placeholder = "페이지를 입력하세요."

        // Do any additional setup after loading the view, typically from a nib.
    }
    
    @IBAction func nextButtonTouched(_ sender: Any) {
        let w2 :  WriteViewController2 = storyboard?.instantiateViewController(withIdentifier:"write2") as! WriteViewController2
        w2.wData1 = write1DataSave()
        if let navigation = self.navigationController {
            navigation.pushViewController(w2, animated: true)
        }
        else {
            present(w2, animated: true, completion: nil)
        }
    }

    func write1DataSave () -> [String] {
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

