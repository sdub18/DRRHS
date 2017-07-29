//
//  BaseTabBarController.swift
//  DRRHS
//
//  Created by Joshua Holme on 7/28/17.
//  Copyright © 2017 Joshua Holme. All rights reserved.
//

import Foundation
import UIKit

class BaseTabBarController: UITabBarController {
    
    @IBInspectable var defaultIndex: Int = 1
    
    override func viewDidLoad() {
        super.viewDidLoad()
        selectedIndex = defaultIndex
    }
    
}
