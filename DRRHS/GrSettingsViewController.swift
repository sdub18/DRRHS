//
//  GrSettingsViewController.swift
//  DRRHS
//
//  Created by Sam DuBois on 8/15/17.
//  Copyright © 2017 Holme Computer. All rights reserved.
//

import UIKit

//BLOCK 1 CORE DATA
var GrB1ClassLabelSaved = String()
var GrB1TeacherLabelSaved = String()
var GrB1RoomLabelSaved = String()

//BLOCK 2 CORE DATA
var GrB2ClassLabelSaved = String()
var GrB2TeacherLabelSaved = String()
var GrB2RoomLabelSaved = String()

//BLOCK 3 CORE DATA
var GrB3ClassLabelSaved = String()
var GrB3TeacherLabelSaved = String()
var GrB3RoomLabelSaved = String()

//BLOCK 4 CORE DATA
var GrB4ClassLabelSaved = String()
var GrB4TeacherLabelSaved = String()
var GrB4RoomLabelSaved = String()

class GrSettingsViewController: UIViewController {
    

//BLOCK 1 SEGUE UNWIND CONTROLLER
    @IBAction func GRB1(_ sender: UIStoryboardSegue){
        if sender.source is GrB1ViewController {
            
            //Block 1 Class Label and Core Data Assignment
            GrB1ClassLabelField = GrB1classText
            GrB1ClassLabelSaved = GrB1ClassLabelField
            
            //Block 1 Teacher Label and Core Data Assignment
            GrB1TeacherLabelField = GrB1teacherTextField
            GrB1TeacherLabelSaved = GrB1TeacherLabelField
            
            //Block 1 Room label and Core Data Assigment
            GrB1RoomLabelField = GrB1roomTextField
            GrB1RoomLabelSaved = GrB1RoomLabelField
            
            let B1ClassroomLabelDefault = UserDefaults.standard
            B1ClassroomLabelDefault.setValue(GrB1ClassLabelSaved, forKey: "B1ClassroomLabel")
            B1ClassroomLabelDefault.synchronize()
            
            let B1TeacherLabelDefault = UserDefaults.standard
            B1TeacherLabelDefault.set(GrB1TeacherLabelSaved, forKey: "B1TeacherLabel")
            B1TeacherLabelDefault.synchronize()
            
            let B1RoomLabelDefault = UserDefaults.standard
            B1RoomLabelDefault.setValue(GrB1RoomLabelSaved, forKey: "B1RoomLabel")
            B1RoomLabelDefault.synchronize()
            }
    }
//BLOCK 2 SEGUE UNWIND CONTROLLER
     @IBAction func GRB2(_ sender: UIStoryboardSegue){
            if sender.source is GrB2ViewController {
                //B2 Class Label and Core Data
                GrB2ClassLabelField = GrB2classText
                GrB2ClassLabelSaved = GrB2ClassLabelField
                
                //B2 Teacher Label and Core Data
                GrB2TeacherLabelField = GrB2teacherText
                GrB2TeacherLabelSaved = GrB2TeacherLabelField
                
                //B2 Room Label and Core Data
                GrB2RoomLabelField = GrB2roomText
                GrB2RoomLabelSaved = GrB2RoomLabelField
                
                let B2ClassroomLabelDefault = UserDefaults.standard
                B2ClassroomLabelDefault.setValue(GrB2ClassLabelSaved, forKey: "B2ClassroomLabel")
                B2ClassroomLabelDefault.synchronize()
                
                let B2TeacherLabelDefault = UserDefaults.standard
                B2TeacherLabelDefault.set(GrB2TeacherLabelSaved, forKey: "B2TeacherLabel")
                B2TeacherLabelDefault.synchronize()
                
                let B2RoomLabelDefault = UserDefaults.standard
                B2RoomLabelDefault.setValue(GrB2RoomLabelSaved, forKey: "B2RoomLabel")
                B2RoomLabelDefault.synchronize()
            }
        }
//BLOCK 3 SEGUE UNWIND CONTROLLER
    @IBAction func GRB3(_ sender: UIStoryboardSegue){
        if sender.source is GrB3ViewController {
                
                //Block 3 Class Label and Core Data
                GrB3ClassLabelField = GrB3classText
                GrB3ClassLabelSaved = GrB3ClassLabelField
                
                //Block 3 Teacher Label and Core Data
                GrB3TeacherLabelField = GrB3teacherText
                GrB3TeacherLabelSaved = GrB3TeacherLabelField
                
                //Block 3 Room Label and Core Data
                GrB3RoomLabelField = GrB3roomText
                GrB3RoomLabelSaved = GrB3RoomLabelField
                
                let B3ClassroomLabelDefault = UserDefaults.standard
                B3ClassroomLabelDefault.setValue(GrB3ClassLabelSaved, forKey: "B3ClassroomLabel")
                B3ClassroomLabelDefault.synchronize()
                
                let B3TeacherLabelDefault = UserDefaults.standard
                B3TeacherLabelDefault.set(GrB3TeacherLabelSaved, forKey: "B3TeacherLabel")
                B3TeacherLabelDefault.synchronize()
                
                let B3RoomLabelDefault = UserDefaults.standard
                B3RoomLabelDefault.setValue(GrB3RoomLabelSaved, forKey: "B3RoomLabel")
                B3RoomLabelDefault.synchronize()
            }
        }
    
//BLOCK 4 SEGUE UNWIND CONTROLLER
    @IBAction func GRB4(_ sender: UIStoryboardSegue){
        if sender.source is GrB4ViewController {
            
            //B4 Class Label and Core Data
            GrB4ClassLabelField = GrB4classText
            GrB4ClassLabelSaved = GrB4ClassLabelField
            
            //B4 Teacher Label and Core Data
            GrB4TeacherLabelField = GrB4teacherText
            GrB4TeacherLabelSaved = GrB4TeacherLabelField
            
            //B4 Room Label and Core Data
            GrB4RoomLabelField = GrB4roomText
            GrB4RoomLabelSaved = GrB4RoomLabelField
            
            let B4ClassroomLabelDefault = UserDefaults.standard
            B4ClassroomLabelDefault.setValue(GrB4ClassLabelSaved, forKey: "B4ClassroomLabel")
            B4ClassroomLabelDefault.synchronize()
            
            let B4TeacherLabelDefault = UserDefaults.standard
            B4TeacherLabelDefault.set(GrB4TeacherLabelSaved, forKey: "B4TeacherLabel")
            B4TeacherLabelDefault.synchronize()
            
            let B4RoomLabelDefault = UserDefaults.standard
            B4RoomLabelDefault.setValue(GrB4RoomLabelSaved, forKey: "B4RoomLabel")
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
