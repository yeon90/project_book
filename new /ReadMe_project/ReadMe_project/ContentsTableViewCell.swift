//
//  ContentsTableViewCell.swift
//  ReadMe_project
//
//  Created by Ji yeon Park on 2017. 2. 9..
//  Copyright © 2017년 Jiyeon park. All rights reserved.
//

import UIKit

class ContentsTableViewCell: UITableViewCell {

    @IBOutlet weak var bookTitle: UILabel!
    @IBOutlet weak var dateLabel: UILabel!
    @IBOutlet weak var pageLabel: UILabel!
    @IBOutlet weak var imageBackground: UIView!
    @IBOutlet weak var imageText: UITextView!

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
