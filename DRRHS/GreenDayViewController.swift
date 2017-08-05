//
//  GreenDayViewController.swift
//  DRRHS
//
//  Created by Sam DuBois on 8/3/17.
//  Copyright © 2017 Joshua Holme. All rights reserved.
//

import UIKit

class GreenDayViewController: UIViewController {

    @IBOutlet weak var blockOne: UIView!
    @IBOutlet weak var blockTwo: UIView!
    @IBOutlet weak var blockThree: UIView!
    @IBOutlet weak var blockFour: UIView!
    @IBOutlet weak var homeworkButton: UIView!
    
    @IBAction func editButtonIsPushed(_ sender: Any) {
        self.performSegue(withIdentifier: "GreenBlock1Edit", sender: self)
    }
    @IBAction func GRB1(segue:UIStoryboardSegue)
    {
        
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        //Block 1
        blockOne.layer.borderWidth = 2.5
        blockOne.layer.borderColor = UIColor(red: (64/255.0), green: (170/255.0), blue: (72/255.0), alpha: 1.0).cgColor
        blockOne.layer.cornerRadius = 20
        blockOne.layer.masksToBounds = true
        
        //Block 2
        blockTwo.layer.borderWidth = 2.5
        blockTwo.layer.borderColor = UIColor(red: (64/255.0), green: (170/255.0), blue: (72/255.0), alpha: 1.0).cgColor
        //Round Corners
        blockTwo.layer.cornerRadius = 20
        blockThree.layer.masksToBounds = true
        
        //Block 3
        blockThree.layer.borderWidth = 2.5
        blockThree.layer.borderColor = UIColor(red: (64/255.0), green: (170/255.0), blue: (72/255.0), alpha: 1.0).cgColor
        //Round Corners
        blockThree.layer.cornerRadius = 20
        blockThree.layer.masksToBounds = true
        
        //Block 4
        blockFour.layer.borderWidth = 2.5
        blockFour.layer.borderColor = UIColor(red: (64/255.0), green: (170/255.0), blue: (72/255.0), alpha: 1.0).cgColor
        //Round Corners
        blockFour.layer.cornerRadius = 20
        blockFour.layer.masksToBounds = true
        
        //Homework Button
        homeworkButton.layer.borderWidth = 2.5
        homeworkButton.layer.borderColor = UIColor(red: (64/255.0), green: (170/255.0), blue: (72/255.0), alpha: 1.0).cgColor
        //Round Corners
        homeworkButton.layer.cornerRadius = 20
        homeworkButton.layer.masksToBounds = true
      
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
