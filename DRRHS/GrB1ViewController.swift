//
//  GreenDayBlock1ViewController.swift
//  DRRHS
//
//  Created by Sam DuBois on 8/4/17.
//  Copyright © 2017 Holme Computer. All rights reserved.
//

import UIKit

var GrB1classText : String!
var GrB1teacherTextField: String!
var GrB1roomTextField: String!


class GrB1ViewController: UIViewController {

    //IB Outlets for the different textfields
    @IBOutlet weak var classEditTextBox: UITextField!
    @IBOutlet weak var teacherNameTextField: UITextField!
    @IBOutlet weak var roomNumberTextField: UITextField!
    @IBOutlet weak var homeworkView: UIView!
    @IBOutlet weak var homeworkTextField: UITextView!
    
    //IB function to unwind the segue back to what it was before
    @IBAction func saveButton(_ sender: Any) {
        
        
        self.performSegue(withIdentifier: "GRB1Unwind", sender: self)
    
    }
    
    @IBAction func dismissPopUp(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        homeworkView.layer.borderWidth = 5
        homeworkView.layer.borderColor = UIColor(red: (139/255.0), green: (141/255.0), blue: (145/255.0), alpha: 1.0).cgColor
        homeworkView.layer.cornerRadius = 22
        homeworkView.layer.masksToBounds = true
        
        homeworkTextField.layer.borderWidth = 1
        homeworkTextField.layer.borderColor = UIColor(red: (139/255.0), green: (141/255.0), blue: (145/255.0), alpha: 1.0).cgColor
        
        
        homeworkTextField.layer.cornerRadius = 9
        homeworkTextField.layer.masksToBounds = true
        
        
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    //function to segue information back to Green Day ViewController
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        //Information for teacher Class Edit
        if let newClassTextField = classEditTextBox.text {
            GrB1classText = newClassTextField
        }
        if let newTeacherTextField = teacherNameTextField.text {
            GrB1teacherTextField = newTeacherTextField
        }
        if let newRoomNumberTextField = roomNumberTextField.text {
            GrB1roomTextField = newRoomNumberTextField
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
