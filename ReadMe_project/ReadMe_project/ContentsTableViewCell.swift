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
    
    required init?(coder aDecoder: NSCoder) {
        bookTitle.text = ""
        dateLabel.text = ""
        pageLabel.text = ""
        super.init(coder: aDecoder)
        
    }
    
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
