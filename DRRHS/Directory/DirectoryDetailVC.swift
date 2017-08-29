//
//  DirectoryDetailVC.swift
//  DRRHS
//
//  Created by Joshua Holme on 8/28/17.
//  Copyright © 2017 Joshua Holme. All rights reserved.
//

import UIKit

class DirectoryDetailVC: UIViewController{
    
    @IBOutlet weak var test: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        test.text = name
        
    }
    
}

