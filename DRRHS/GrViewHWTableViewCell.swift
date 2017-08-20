//
//  GrViewHWTableViewCell.swift
//  DRRHS
//
//  Created by Sam DuBois on 8/17/17.
//  Copyright © 2017 Joshua Holme. All rights reserved.
//

import UIKit

class GrViewHWTableViewCell: UITableViewCell {

    @IBOutlet weak var ClassNameLabel: UILabel!
    @IBOutlet weak var DueDateLabel: UILabel!
    @IBOutlet weak var HomeworkTextField: UITextView!
    @IBOutlet weak var ClassColor: UIView!
    
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    

}
