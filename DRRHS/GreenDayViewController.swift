//
//  GreenDayViewController.swift
//  DRRHS
//
//  Created by Sam DuBois on 8/3/17.
//  Copyright © 2017 Holme Computer. All rights reserved.
//

import UIKit

class GreenDayViewController: UIViewController {

    @IBOutlet weak var blockOne: UIView!
    @IBOutlet weak var blockTwo: UIView!
    @IBOutlet weak var blockThree: UIView!
    @IBOutlet weak var blockFour: UIView!
    @IBOutlet weak var homeworkButton: UIView!
    
//Block 1 Save button
    @IBOutlet weak var B1ClassLabel: UILabel!
    var B1ClassLabelSaved = String()
    @IBOutlet weak var B1TeacherLabel: UILabel!
    var B1TeacherLabelSaved = String()
    @IBOutlet weak var B1RoomLabel: UILabel!
    var B1RoomLabelSaved = String()
    
    
    //This segues to the next view controller
    @IBAction func GRB1(_ sender: UIStoryboardSegue){
        if sender.source is GreenDayBlock1ViewController {
            if let senderVC = sender.source as? GreenDayBlock1ViewController {
                
            //Block 1 Class Label and Core Data Assignment
                B1ClassLabel.text = senderVC.classText
                B1ClassLabelSaved = B1ClassLabel.text!
                
            //Block 1 Teacher Label and Core Data Assignment
                B1TeacherLabel.text = senderVC.teacherTextField
                B1TeacherLabelSaved = B1TeacherLabel.text!
                
            //Block 1 Room label and Core Data Assigment
                B1RoomLabel.text = senderVC.roomTextField
                B1RoomLabelSaved = B1RoomLabel.text!
                
                let B1ClassroomLabelDefault = UserDefaults.standard
                B1ClassroomLabelDefault.setValue(B1ClassLabelSaved, forKey: "B1ClassroomLabel")
                B1ClassroomLabelDefault.synchronize()
                
                let B1TeacherLabelDefault = UserDefaults.standard
                B1TeacherLabelDefault.set(B1TeacherLabelSaved, forKey: "B1TeacherLabel")
                B1TeacherLabelDefault.synchronize()
                
                let B1RoomLabelDefault = UserDefaults.standard
                B1RoomLabelDefault.setValue(B1RoomLabelSaved, forKey: "B1RoomLabel")
                B1RoomLabelDefault.synchronize()
            }
        }
    }
    
    //Block 2 Outlets Save Button
    
    @IBOutlet weak var B2ClassLabel: UILabel!
    var B2ClassLabelSaved = String()
    @IBOutlet weak var B2TeacherLabel: UILabel!
    var B2TeacherLabelSaved = String()
    @IBOutlet weak var B2RoomLabel: UILabel!
    var B2RoomLabelSaved = String()
    
    @IBAction func GRB2(_ sender: UIStoryboardSegue){
        if sender.source is GrB2ViewController {
            if let senderVC = sender.source as? GrB2ViewController {
                //B2 Class Label and Core Data
                B2ClassLabel.text = senderVC.classText
                B2ClassLabelSaved = B2ClassLabel.text!
                
                //B2 Teacher Label and Core Data
                B2TeacherLabel.text = senderVC.teacherText
                B2TeacherLabelSaved = B2TeacherLabel.text!
                
                //B2 Room Label and Core Data
                B2RoomLabel.text = senderVC.roomText
                B2RoomLabelSaved = B2RoomLabel.text!
                
                let B2ClassroomLabelDefault = UserDefaults.standard
                B2ClassroomLabelDefault.setValue(B2ClassLabelSaved, forKey: "B2ClassroomLabel")
                B2ClassroomLabelDefault.synchronize()
                
                let B2TeacherLabelDefault = UserDefaults.standard
                B2TeacherLabelDefault.set(B2TeacherLabelSaved, forKey: "B2TeacherLabel")
                B2TeacherLabelDefault.synchronize()
                
                let B2RoomLabelDefault = UserDefaults.standard
                B2RoomLabelDefault.setValue(B2RoomLabelSaved, forKey: "B2RoomLabel")
                B2RoomLabelDefault.synchronize()
            }
        }
}
    //Block 3 Save Button
    
    @IBOutlet weak var B3ClassLabel: UILabel!
    var B3ClassLabelSaved = String()
    @IBOutlet weak var B3TeacherLabel: UILabel!
    var B3TeacherLabelSaved = String()
    @IBOutlet weak var B3RoomLabel: UILabel!
    var B3RoomLabelSaved = String()
    
    @IBAction func GRB3(_ sender: UIStoryboardSegue){
        if sender.source is GrB3ViewController {
            if let senderVC = sender.source as? GrB3ViewController {
                
                //Block 3 Class Label and Core Data
                B3ClassLabel.text = senderVC.classText
                B3ClassLabelSaved = B3ClassLabel.text!
                
                //Block 3 Teacher Label and Core Data
                B3TeacherLabel.text = senderVC.teacherText
                B3TeacherLabelSaved = B3TeacherLabel.text!
                
                //Block 3 Room Label and Core Data
                B3RoomLabel.text = senderVC.roomText
                B3RoomLabelSaved = B3RoomLabel.text!
                
                let B3ClassroomLabelDefault = UserDefaults.standard
                B3ClassroomLabelDefault.setValue(B3ClassLabelSaved, forKey: "B3ClassroomLabel")
                B3ClassroomLabelDefault.synchronize()
                
                let B3TeacherLabelDefault = UserDefaults.standard
                B3TeacherLabelDefault.set(B3TeacherLabelSaved, forKey: "B3TeacherLabel")
                B3TeacherLabelDefault.synchronize()
                
                let B3RoomLabelDefault = UserDefaults.standard
                B3RoomLabelDefault.setValue(B3RoomLabelSaved, forKey: "B3RoomLabel")
                B3RoomLabelDefault.synchronize()
            }
        }
    }
    //Block 4 Save Button
    
    @IBOutlet weak var B4ClassLabel: UILabel!
    var B4ClassLabelSaved = String()
    @IBOutlet weak var B4TeacherLabel: UILabel!
    var B4TeacherLabelSaved = String()
    @IBOutlet weak var B4RoomLabel: UILabel!
    var B4RoomLabelSaved = String()
    
   @IBAction func GRB4(_ sender: UIStoryboardSegue){
    if sender.source is GrB4ViewController {
        if let senderVC = sender.source as? GrB4ViewController {
            
            //B4 Class Label and Core Data
            B4ClassLabel.text = senderVC.classText
            B4ClassLabelSaved = B4ClassLabel.text!
            
            //B4 Teacher Label and Core Data
            B4TeacherLabel.text = senderVC.teacherText
            B4TeacherLabelSaved = B4TeacherLabel.text!
            
            //B4 Room Label and Core Data
            B4RoomLabel.text = senderVC.roomText
            B4RoomLabelSaved = B4RoomLabel.text!
            
            let B4ClassroomLabelDefault = UserDefaults.standard
            B4ClassroomLabelDefault.setValue(B4ClassLabelSaved, forKey: "B4ClassroomLabel")
            B4ClassroomLabelDefault.synchronize()
            
            let B4TeacherLabelDefault = UserDefaults.standard
            B4TeacherLabelDefault.set(B4TeacherLabelSaved, forKey: "B4TeacherLabel")
            B4TeacherLabelDefault.synchronize()
            
            let B4RoomLabelDefault = UserDefaults.standard
            B4RoomLabelDefault.setValue(B4RoomLabelSaved, forKey: "B4RoomLabel")
            B4RoomLabelDefault.synchronize()
            }
        }
    }
    
    
//VIEW DID LOAD!!!!!!!!!!!
    override func viewDidLoad() {
        super.viewDidLoad()

        //Block 1
        blockOne.layer.borderWidth = 2.5
        blockOne.layer.borderColor = UIColor(red: (64/255.0), green: (170/255.0), blue: (72/255.0), alpha: 1.0).cgColor
        blockOne.layer.cornerRadius = 20
        blockOne.layer.masksToBounds = true
        
        
        //The Core Data to Save all of the Info
       let B1ClassroomLabelDefault = UserDefaults.standard
        if (B1ClassroomLabelDefault.value(forKey: "B1ClassroomLabel") != nil){
            B1ClassLabelSaved = (B1ClassroomLabelDefault.value(forKey: "B1ClassroomLabel") as! NSString) as String
            B1ClassLabel.text = B1ClassLabelSaved
        }
        let B1TeacherLabelDefault = UserDefaults.standard
            if (B1TeacherLabelDefault.value(forKey: "B1TeacherLabel") != nil){
                B1TeacherLabelSaved = (B1TeacherLabelDefault.value(forKey: "B1TeacherLabel") as! NSString) as String
                B1TeacherLabel.text = B1TeacherLabelSaved
        }
        let B1RoomLabelDefault = UserDefaults.standard
                if (B1RoomLabelDefault.value(forKey: "B1RoomLabel") != nil){
                    B1RoomLabelSaved = (B1RoomLabelDefault.value(forKey: "B1RoomLabel") as! NSString) as String
                    B1RoomLabel.text = B1RoomLabelSaved
                }
        
//Block 2
        //Aestetics and Design Elements
        blockTwo.layer.borderWidth = 2.5
        blockTwo.layer.borderColor = UIColor(red: (64/255.0), green: (170/255.0), blue: (72/255.0), alpha: 1.0).cgColor
        blockTwo.layer.cornerRadius = 20
        blockThree.layer.masksToBounds = true
        
        //The Core Data to Save all of the Info
        
        //Classroom Core Data
        let B2ClassroomLabelDefault = UserDefaults.standard
        if (B2ClassroomLabelDefault.value(forKey: "B2ClassroomLabel") != nil){
            B2ClassLabelSaved = (B2ClassroomLabelDefault.value(forKey: "B2ClassroomLabel") as! NSString) as String
            B2ClassLabel.text = B2ClassLabelSaved
        }
        
        //Teacher Core Data
        let B2TeacherLabelDefault = UserDefaults.standard
        if (B2TeacherLabelDefault.value(forKey: "B2TeacherLabel") != nil){
            B2TeacherLabelSaved = (B2TeacherLabelDefault.value(forKey: "B2TeacherLabel") as! NSString) as String
            B2TeacherLabel.text = B2TeacherLabelSaved
        }
        
        //Room Core Data
        let B2RoomLabelDefault = UserDefaults.standard
        if (B2RoomLabelDefault.value(forKey: "B2RoomLabel") != nil){
            B2RoomLabelSaved = (B2RoomLabelDefault.value(forKey: "B2RoomLabel") as! NSString) as String
            B2RoomLabel.text = B2RoomLabelSaved
        }
//Block 3
        blockThree.layer.borderWidth = 2.5
        blockThree.layer.borderColor = UIColor(red: (64/255.0), green: (170/255.0), blue: (72/255.0), alpha: 1.0).cgColor
        //Round Corners
        blockThree.layer.cornerRadius = 20
        blockThree.layer.masksToBounds = true
        
        //Classroom Core Data
        let B3ClassroomLabelDefault = UserDefaults.standard
        if (B3ClassroomLabelDefault.value(forKey: "B3ClassroomLabel") != nil){
            B3ClassLabelSaved = (B3ClassroomLabelDefault.value(forKey: "B3ClassroomLabel") as! NSString) as String
            B3ClassLabel.text = B3ClassLabelSaved
        }
        
        //Teacher Core Data
        let B3TeacherLabelDefault = UserDefaults.standard
        if (B3TeacherLabelDefault.value(forKey: "B3TeacherLabel") != nil){
            B3TeacherLabelSaved = (B3TeacherLabelDefault.value(forKey: "B3TeacherLabel") as! NSString) as String
            B3TeacherLabel.text = B3TeacherLabelSaved
        }
        
        //Room Core Data
        let B3RoomLabelDefault = UserDefaults.standard
        if (B3RoomLabelDefault.value(forKey: "B3RoomLabel") != nil){
            B3RoomLabelSaved = (B3RoomLabelDefault.value(forKey: "B3RoomLabel") as! NSString) as String
            B3RoomLabel.text = B3RoomLabelSaved
        }
        
        
//Block 4
        blockFour.layer.borderWidth = 2.5
        blockFour.layer.borderColor = UIColor(red: (64/255.0), green: (170/255.0), blue: (72/255.0), alpha: 1.0).cgColor
        //Round Corners
        blockFour.layer.cornerRadius = 20
        blockFour.layer.masksToBounds = true
        
        //Classroom Core Data:
        let B4ClassroomLabelDefault = UserDefaults.standard
        if (B4ClassroomLabelDefault.value(forKey: "B4ClassroomLabel") != nil){
            B4ClassLabelSaved = (B4ClassroomLabelDefault.value(forKey: "B4ClassroomLabel") as! NSString) as String
            B4ClassLabel.text = B4ClassLabelSaved
        }
        
        //Teacher Core Data:
        let B4TeacherLabelDefault = UserDefaults.standard
        if (B4TeacherLabelDefault.value(forKey: "B4TeacherLabel") != nil){
            B4TeacherLabelSaved = (B4TeacherLabelDefault.value(forKey: "B4TeacherLabel") as! NSString) as String
            B4TeacherLabel.text = B4TeacherLabelSaved
        }
        
        //Room Core Data:
        let B4RoomLabelDefault = UserDefaults.standard
        if (B4RoomLabelDefault.value(forKey: "B4RoomLabel") != nil){
            B4RoomLabelSaved = (B4RoomLabelDefault.value(forKey: "B4RoomLabel") as! NSString) as String
            B4RoomLabel.text = B4RoomLabelSaved
        }
        
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
