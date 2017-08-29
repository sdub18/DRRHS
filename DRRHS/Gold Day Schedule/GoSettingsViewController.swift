//
//  GoSettingsViewController.swift
//  DRRHS
//
//  Created by Sam DuBois on 8/28/17.
//  Copyright © 2017 Joshua Holme. All rights reserved.
//

import UIKit

//BLOCK 1 CORE DATA
var GoB1ClassLabelSaved = String()
var GoB1TeacherLabelSaved = String()
var GoB1RoomLabelSaved = String()

//BLOCK 2 CORE DATA
var GoB2ClassLabelSaved = String()
var GoB2TeacherLabelSaved = String()
var GoB2RoomLabelSaved = String()

//BLOCK 3 CORE DATA
var GoB3ClassLabelSaved = String()
var GoB3TeacherLabelSaved = String()
var GoB3RoomLabelSaved = String()

//BLOCK 4 CORE DATA
var GoB4ClassLabelSaved = String()
var GoB4TeacherLabelSaved = String()
var GoB4RoomLabelSaved = String()

class GoSettingsViewController: UIViewController {
    
    
    //BLOCK 1 SEGUE UNWIND CONTROLLER
    @IBAction func GOB1(_ sender: UIStoryboardSegue){
        if sender.source is GoB1ViewController {
            
            //Block 1 Class Label and Core Data Assignment
            GoB1ClassLabelField = GoB1classText
            GoB1ClassLabelSaved = GoB1ClassLabelField
            
            //Block 1 Teacher Label and Core Data Assignment
            GoB1TeacherLabelField = GoB1teacherTextField
            GoB1TeacherLabelSaved = GoB1TeacherLabelField
            
            //Block 1 Room label and Core Data Assigment
            GoB1RoomLabelField = GoB1roomTextField
            GoB1RoomLabelSaved = GoB1RoomLabelField
            
            let B1ClassroomLabelDefault = UserDefaults.standard
            B1ClassroomLabelDefault.setValue(GoB1ClassLabelSaved, forKey: "B1ClassroomLabel")
            B1ClassroomLabelDefault.synchronize()
            
            let B1TeacherLabelDefault = UserDefaults.standard
            B1TeacherLabelDefault.set(GoB1TeacherLabelSaved, forKey: "B1TeacherLabel")
            B1TeacherLabelDefault.synchronize()
            
            let B1RoomLabelDefault = UserDefaults.standard
            B1RoomLabelDefault.setValue(GoB1RoomLabelSaved, forKey: "B1RoomLabel")
            B1RoomLabelDefault.synchronize()
        }
    }
    //BLOCK 2 SEGUE UNWIND CONTROLLER
    @IBAction func GOB2(_ sender: UIStoryboardSegue){
        if sender.source is GoB2ViewController {
            //B2 Class Label and Core Data
            GoB2ClassLabelField = GoB2classText
            GoB2ClassLabelSaved = GoB2ClassLabelField
            
            //B2 Teacher Label and Core Data
            GoB2TeacherLabelField = GoB2teacherText
            GoB2TeacherLabelSaved = GoB2TeacherLabelField
            
            //B2 Room Label and Core Data
            GoB2RoomLabelField = GoB2roomText
            GoB2RoomLabelSaved = GoB2RoomLabelField
            
            let B2ClassroomLabelDefault = UserDefaults.standard
            B2ClassroomLabelDefault.setValue(GoB2ClassLabelSaved, forKey: "B2ClassroomLabel")
            B2ClassroomLabelDefault.synchronize()
            
            let B2TeacherLabelDefault = UserDefaults.standard
            B2TeacherLabelDefault.set(GoB2TeacherLabelSaved, forKey: "B2TeacherLabel")
            B2TeacherLabelDefault.synchronize()
            
            let B2RoomLabelDefault = UserDefaults.standard
            B2RoomLabelDefault.setValue(GoB2RoomLabelSaved, forKey: "B2RoomLabel")
            B2RoomLabelDefault.synchronize()
        }
    }
    //BLOCK 3 SEGUE UNWIND CONTROLLER
    @IBAction func GOB3(_ sender: UIStoryboardSegue){
        if sender.source is GoB3ViewController {
            
            //Block 3 Class Label and Core Data
            GoB3ClassLabelField = GoB3classText
            GoB3ClassLabelSaved = GoB3ClassLabelField
            
            //Block 3 Teacher Label and Core Data
            GoB3TeacherLabelField = GoB3teacherText
            GoB3TeacherLabelSaved = GoB3TeacherLabelField
            
            //Block 3 Room Label and Core Data
            GoB3RoomLabelField = GoB3roomText
            GoB3RoomLabelSaved = GoB3RoomLabelField
            
            let B3ClassroomLabelDefault = UserDefaults.standard
            B3ClassroomLabelDefault.setValue(GoB3ClassLabelSaved, forKey: "B3ClassroomLabel")
            B3ClassroomLabelDefault.synchronize()
            
            let B3TeacherLabelDefault = UserDefaults.standard
            B3TeacherLabelDefault.set(GoB3TeacherLabelSaved, forKey: "B3TeacherLabel")
            B3TeacherLabelDefault.synchronize()
            
            let B3RoomLabelDefault = UserDefaults.standard
            B3RoomLabelDefault.setValue(GoB3RoomLabelSaved, forKey: "B3RoomLabel")
            B3RoomLabelDefault.synchronize()
        }
    }
    
    //BLOCK 4 SEGUE UNWIND CONTROLLER
    @IBAction func GOB4(_ sender: UIStoryboardSegue){
        if sender.source is GrB4ViewController {
            
            //B4 Class Label and Core Data
            GoB4ClassLabelField = GoB4classText
            GoB4ClassLabelSaved = GoB4ClassLabelField
            
            //B4 Teacher Label and Core Data
            GoB4TeacherLabelField = GoB4teacherText
            GoB4TeacherLabelSaved = GoB4TeacherLabelField
            
            //B4 Room Label and Core Data
            GoB4RoomLabelField = GoB4roomText
            GoB4RoomLabelSaved = GoB4RoomLabelField
            
            let B4ClassroomLabelDefault = UserDefaults.standard
            B4ClassroomLabelDefault.setValue(GoB4ClassLabelSaved, forKey: "B4ClassroomLabel")
            B4ClassroomLabelDefault.synchronize()
            
            let B4TeacherLabelDefault = UserDefaults.standard
            B4TeacherLabelDefault.set(GoB4TeacherLabelSaved, forKey: "B4TeacherLabel")
            B4TeacherLabelDefault.synchronize()
            
            let B4RoomLabelDefault = UserDefaults.standard
            B4RoomLabelDefault.setValue(GoB4RoomLabelSaved, forKey: "B4RoomLabel")
            B4RoomLabelDefault.synchronize()
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
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

