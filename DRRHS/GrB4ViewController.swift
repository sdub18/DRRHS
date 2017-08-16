//
//  GrB4ViewController.swift
//  DRRHS
//
//  Created by Sam DuBois on 8/5/17.
//  Copyright © 2017 Holme Computer. All rights reserved.
//

import UIKit

var GrB4classText: String!
var GrB4teacherText: String!
var GrB4roomText: String!

class GrB4ViewController: UIViewController {

    @IBOutlet weak var ClassTextField: UITextField!
    @IBOutlet weak var TeacherTextField: UITextField!
    @IBOutlet weak var RoomTextField: UITextField!
    
    @IBAction func saveButtonIsPressed(_ sender: Any) {
        performSegue(withIdentifier: "GRB4Unwind", sender: self)
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
            GrB4classText = newClassTextField
        }
        if let newTeacherTextField = TeacherTextField.text {
            GrB4teacherText = newTeacherTextField
        }
        if let newRoomNumberTextField = RoomTextField.text {
            GrB4roomText = newRoomNumberTextField
        }
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
