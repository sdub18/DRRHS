//
//  GoB1ViewController.swift
//  DRRHS
//
//  Created by Sam DuBois on 8/5/17.
//  Copyright © 2017 Holme Computer. All rights reserved.
//

import UIKit

var GoB1classText : String!
var GoB1teacherTextField: String!
var GoB1roomTextField: String!


class GoB1ViewController: UIViewController {
    
    //IB Outlets for the different textfields
    @IBOutlet weak var classEditTextBox: UITextField!
    @IBOutlet weak var teacherNameTextField: UITextField!
    @IBOutlet weak var roomNumberTextField: UITextField!
    
    //IB function to unwind the segue back to what it was before
    @IBAction func saveButton(_ sender: Any) {
        
        
        self.performSegue(withIdentifier: "GOB1Unwind", sender: self)
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
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
            GoB1classText = newClassTextField
        }
        if let newTeacherTextField = teacherNameTextField.text {
            GoB1teacherTextField = newTeacherTextField
        }
        if let newRoomNumberTextField = roomNumberTextField.text {
            GoB1roomTextField = newRoomNumberTextField
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

