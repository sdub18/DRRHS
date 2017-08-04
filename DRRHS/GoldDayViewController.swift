//
//  GoldDayViewController.swift
//  DRRHS
//
//  Created by Sam DuBois on 8/3/17.
//  Copyright © 2017 Joshua Holme. All rights reserved.
//

import UIKit

class GoldDayViewController: UIViewController {

    @IBOutlet weak var blockOne: UIView!
    @IBOutlet weak var blockTwo: UIView!
    @IBOutlet weak var blockThree: UIView!
    @IBOutlet weak var blockFour: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        //Block 1
        blockOne.layer.borderWidth = 5
        blockOne.layer.borderColor = UIColor(red: (64/255.0), green: (170/255.0), blue: (72/255.0), alpha: 1.0).cgColor
        
        //Block 2
        blockTwo.layer.borderWidth = 5
        blockTwo.layer.borderColor = UIColor(red: (64/255.0), green: (170/255.0), blue: (72/255.0), alpha: 1.0).cgColor
        
        //Block 3
        blockThree.layer.borderWidth = 5
        blockThree.layer.borderColor = UIColor(red: (64/255.0), green: (170/255.0), blue: (72/255.0), alpha: 1.0).cgColor
        
        //Block 4
        blockFour.layer.borderWidth = 5
        blockFour.layer.borderColor = UIColor(red: (64/255.0), green: (170/255.0), blue: (72/255.0), alpha: 1.0).cgColor
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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
