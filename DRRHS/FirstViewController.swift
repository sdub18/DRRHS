//
//  FirstViewController.swift
//  DRRHS
//
//  Created by Joshua Holme on 7/14/17.
//  Copyright © 2017 Joshua Holme. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController
{
    
    
    @IBOutlet weak var greenDay: UIView!
    @IBOutlet weak var goldDay: UIView!
    
    
    @IBAction func segmentedControl(_ sender: Any){
        if (sender as AnyObject).selectedSegmentIndex == 0 {
            UIView.animate(withDuration: 0.5, animations: {
                self.greenDay.alpha = 0
                self.goldDay.alpha = 1
            })
        } else {
            UIView.animate(withDuration: 0.5, animations: {
                self.greenDay.alpha = 1
                self.goldDay.alpha = 0
            })
        }
        
    }
    
    
    
    
}
