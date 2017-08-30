//
//  FirstViewController.swift
//  DRRHS
//
//  Created by Joshua Holme on 7/14/17.
//  Copyright © 2017 Holme Computer. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController
{
    
    //intializes the segmented controller and the container views for the schedule
    @IBOutlet weak var greenDay: UIView!
    @IBOutlet weak var goldDay: UIView!
    @IBOutlet weak var button: UISegmentedControl!
    
    //function used to switch between the two container views using the segmented controller
    //this also changes the color of the segmented controller as the button is pushed
    @IBAction func segmentedControl(_ sender: Any){
        if (sender as AnyObject).selectedSegmentIndex == 0 {
            UIView.animate(withDuration: 0.5, animations: {
                self.greenDay.alpha = 0
                self.goldDay.alpha = 1
                self.button.tintColor = UIColor(red: (64/255.0), green: (170/255.0), blue: (72/255.0), alpha: 1.0)
                
            })
        } else {
            UIView.animate(withDuration: 0.5, animations: {
                self.greenDay.alpha = 1
                self.goldDay.alpha = 0
                self.button.tintColor = UIColor(red: (222/255.0), green: (199/255.0), blue: (2/255.0), alpha: 1.0)
            })
        }
        
    }

    
    
    
    
}
