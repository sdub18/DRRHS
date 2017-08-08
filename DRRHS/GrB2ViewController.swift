//
//  GrB2ViewController.swift
//  DRRHS
//
//  Created by Sam DuBois on 8/5/17.
//  Copyright © 2017 Holme Computer. All rights reserved.
//

import UIKit

class GrB2ViewController: UIViewController {
    
    @IBOutlet weak var ClassTextField: UITextField!
    var classText: String!
    @IBOutlet weak var TeacherTextField: UITextField!
    var teacherText: String!
    @IBOutlet weak var RoomTextField: UITextField!
    var roomText: String!
    
    //Save Button to save Data and exit application (Not back button)
    @IBAction func saveButtonPressed(_ sender: Any) {
        self.performSegue(withIdentifier: "GRB2Unwind", sender: self)

    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        //Information for teacher Class Edit
        if let newClassTextField = ClassTextField.text {
            classText = newClassTextField
        }
        //Information for Teacher Edit
        if let newTeacherTextField = TeacherTextField.text {
            teacherText = newTeacherTextField
        }
        if let newRoomNumberTextField = RoomTextField.text {
            roomText = newRoomNumberTextField
        }

    }

    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
        
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
