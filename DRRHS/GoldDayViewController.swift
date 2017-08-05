//
//  GoldDayViewController.swift
//  DRRHS
//
//  Created by Sam DuBois on 8/3/17.
//  Copyright © 2017 Holme Computer. All rights reserved.
//

import UIKit

class GoldDayViewController: UIViewController {

    @IBOutlet weak var blockOne: UIView!
    @IBOutlet weak var blockTwo: UIView!
    @IBOutlet weak var blockThree: UIView!
    @IBOutlet weak var blockFour: UIView!
    @IBOutlet weak var homeworkButton: UIView!
    
    //Block 1 Edit and Save Button
    @IBAction func B1EditPressed(_ sender: Any) {
        self.performSegue(withIdentifier: "GoldBlock1Edit", sender: self)
    }
    @IBAction func GOB1(segue:UIStoryboardSegue)
    {
    }
    
    //Block 2 Edit and Save Button
    @IBAction func B2EditPressed(_ sender: Any) {
        self.performSegue(withIdentifier: "GoldBlock2Edit", sender: self)
    }
    @IBAction func GOB2(segue:UIStoryboardSegue)
    {
    }
    
    //Block 3 Edit and Save Button
    @IBAction func B3EditPressed(_ sender: Any) {
        self.performSegue(withIdentifier: "GoldBlock3Edit", sender: self)
    }
    @IBAction func GOB3(segue:UIStoryboardSegue)
    {
    }
    
    //Block 4 Edit and Save Button
    @IBAction func B4EditPressed(_ sender: Any) {
        self.performSegue(withIdentifier: "GoldBlock4Edit", sender: self)
    }
    @IBAction func GOB4(segue:UIStoryboardSegue)
    {
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        //Block 1 Border and Rounded Edges
        blockOne.layer.borderWidth = 2.5
        blockOne.layer.borderColor = UIColor(red: (251/255.0), green: (229/255.0), blue: (8/255.0), alpha: 1.0).cgColor
        blockOne.layer.cornerRadius = 20
        blockOne.layer.masksToBounds = true
        
        //Block 2 Border and Rounded Edges
        blockTwo.layer.borderWidth = 2.5
        blockTwo.layer.borderColor = UIColor(red: (251/255.0), green: (229/255.0), blue: (8/255.0), alpha: 1.0).cgColor
        blockTwo.layer.cornerRadius = 20
        blockTwo.layer.masksToBounds = true
        
        //Block 3 Border and Rounded Edges
        blockThree.layer.borderWidth = 2.5
        blockThree.layer.borderColor = UIColor(red: (251/255.0), green: (229/255.0), blue: (8/255.0), alpha: 1.0).cgColor
        blockThree.layer.cornerRadius = 20
        blockThree.layer.masksToBounds = true
        
        //Block 4 Border and Rounded Edges
        blockFour.layer.borderWidth = 2.5
        blockFour.layer.borderColor = UIColor(red: (251/255.0), green: (229/255.0), blue: (8/255.0), alpha: 1.0).cgColor
        blockFour.layer.cornerRadius = 20
        blockFour.layer.masksToBounds = true
        
        //Homework Button Border and Rounded Edges
        homeworkButton.layer.borderWidth = 2.5
        homeworkButton.layer.borderColor = UIColor(red: (251/255.0), green: (229/255.0), blue: (8/255.0), alpha: 1.0).cgColor
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
