//
//  GoB4ViewController.swift
//  DRRHS
//
//  Created by Sam DuBois on 8/5/17.
//  Copyright © 2017 Holme Computer. All rights reserved.
//

import UIKit

var GoB4classText: String!
var GoB4teacherText: String!
var GoB4roomText: String!

class GoB4ViewController: UIViewController {
    
    @IBOutlet weak var ClassTextField: UITextField!
    @IBOutlet weak var TeacherTextField: UITextField!
    @IBOutlet weak var RoomTextField: UITextField!
    
    @IBAction func saveButtonIsPressed(_ sender: Any) {
        performSegue(withIdentifier: "GOB4Unwind", sender: self)
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
            GoB4classText = newClassTextField
        }
        if let newTeacherTextField = TeacherTextField.text {
            GoB4teacherText = newTeacherTextField
        }
        if let newRoomNumberTextField = RoomTextField.text {
            GoB4roomText = newRoomNumberTextField
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

