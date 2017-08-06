//
//  GreenDayBlock1ViewController.swift
//  DRRHS
//
//  Created by Sam DuBois on 8/4/17.
//  Copyright © 2017 Holme Computer. All rights reserved.
//

import UIKit

class GreenDayBlock1ViewController: UIViewController {

    @IBOutlet weak var classEditTextBox: UITextField!
    var classText: String!
    @IBAction func saveButton(_ sender: Any) {
        self.performSegue(withIdentifier: "GRB1Unwind", sender: self)
    
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.classEditTextBox.delegate = self as? UITextFieldDelegate

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let newClassTextField = classEditTextBox.text {
            classText = newClassTextField
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
