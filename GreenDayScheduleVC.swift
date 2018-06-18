//
//  GreenDayScheduleVC.swift
//  DRRHS
//
//  Created by Holme Computer on 8/3/17.
//  Copyright © 2017 Holme Computer. All rights reserved.
//

import UIKit

class GreenDayScheduleVC: UIViewController
{
    // MARK: - Variables
    let fromDay = "Green"
    var classTitleLabel = ""
    var identity: identity.RawValue!
    @IBOutlet weak var homeworkButton: RoundedButton!
    
    // MARK: - IBOutlets
    
    // Block 1
    @IBOutlet weak var B1ClassLabel: UILabel!
    @IBOutlet weak var B1TeacherLabel: UILabel!
//    @IBOutlet weak var B1RoomLabel: UILabel!
    
    // Block 2 Outlet
    @IBOutlet weak var B2ClassLabel: UILabel!
    @IBOutlet weak var B2TeacherLabel: UILabel!
//    @IBOutlet weak var B2RoomLabel: UILabel!

    // Block 3
    @IBOutlet weak var B3ClassLabel: UILabel!
    @IBOutlet weak var B3TeacherLabel: UILabel!
//    @IBOutlet weak var B3RoomLabel: UILabel!
    
    // Block 4
    @IBOutlet weak var B4ClassLabel: UILabel!
    @IBOutlet weak var B4TeacherLabel: UILabel!
//    @IBOutlet weak var B4RoomLabel: UILabel!
    
    // MARK: - Functions
    override func viewDidLoad()
    {
        super.viewDidLoad()
        homeworkButton.cornerRadius = homeworkButton.frame.height / 3.1
    }

    override func viewWillAppear(_ animated: Bool)
    {
        setUpSchedule()
    }
    
    func setUpSchedule()
    {
        // Block 1
        B1ClassLabel.text = userDataServices.instance.GrB1ClassName
//        B1RoomLabel.text = userDataServices.instance.GrB1RoomNumber
        
        if let teacherNameArray = userDataServices.instance.GrB1Teacher?.components(separatedBy: ",") {
            B1TeacherLabel.text = teacherNameArray[0]
        }
        
        // Block 2
        B2ClassLabel.text = userDataServices.instance.GrB2ClassName
//        B2RoomLabel.text = userDataServices.instance.GrB2RoomNumber
        
        if let teacherNameArray = userDataServices.instance.GrB2Teacher?.components(separatedBy: ",") {
            B2TeacherLabel.text = teacherNameArray[0]
        }
        
        // Block 3
        B3ClassLabel.text = userDataServices.instance.GrB3ClassName
//        B3RoomLabel.text = userDataServices.instance.GrB3RoomNumber
        
        if let teacherNameArray: [String] = userDataServices.instance.GrB3Teacher?.components(separatedBy: ",") {
            B3TeacherLabel.text = teacherNameArray[0]
        }
        
        // Block 4
        B4ClassLabel.text = userDataServices.instance.GrB4ClassName
//        B4RoomLabel.text = userDataServices.instance.GrB4RoomNumber
        
        if let teacherNameArray: [String] = userDataServices.instance.GrB4Teacher?.components(separatedBy: ",") {
            B4TeacherLabel.text = teacherNameArray[0]
        }
    }
    
    func addAlert()
    {
        let alert = UIAlertController(title: "Uh Oh!", message: "You must add a class to this period in order to add homework.", preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: NSLocalizedString("OK", comment: "Default action"), style: .`default`, handler: { _ in
            NSLog("The \"OK\" alert occured.")
        }))
        self.present(alert, animated: true, completion: nil)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?)
    {
        if segue.identifier == TO_ADD_HOMEWORK
        {
            let vc = segue.destination as! AddHomeworkVC
            vc.fromDay = fromDay
            vc.classTitleLabel = classTitleLabel
            vc.identity = identity!
        }
    }
    
    // MARK: - IBActions
    @IBAction func B1AddBtnPressed(_ sender: Any)
    {
        if userDataServices.instance.GrB1ClassName != nil
        {
            classTitleLabel = userDataServices.instance.GrB1ClassName!
            identity = GRB1
            self.performSegue(withIdentifier: TO_ADD_HOMEWORK, sender: self)
        }
        else
        {
            addAlert()
        }
    }
    
    @IBAction func B2AddBtnPressed(_ sender: Any)
    {
        
        if userDataServices.instance.GrB2ClassName != nil
        {
            classTitleLabel = userDataServices.instance.GrB2ClassName!
            identity = GRB2
            self.performSegue(withIdentifier: TO_ADD_HOMEWORK, sender: self)
        }
        else
        {
            addAlert()
        }
        
    }
    
    @IBAction func B3AddBtnPressed(_ sender: Any)
    {
        if userDataServices.instance.GrB3ClassName != nil
        {
            classTitleLabel = userDataServices.instance.GrB3ClassName!
            identity = GRB3
            self.performSegue(withIdentifier: TO_ADD_HOMEWORK, sender: self)
        }
        else
        {
            addAlert()
        }
        
    }
    
    @IBAction func B4AddBtnPressed(_ sender: Any)
    {
        if userDataServices.instance.GrB4ClassName != nil
        {
            classTitleLabel = userDataServices.instance.GrB4ClassName!
            identity = GRB4
            self.performSegue(withIdentifier: TO_ADD_HOMEWORK, sender: self)
        }
        else
        {
            addAlert()
        }
    }
    
    @IBAction func vewHomeworkBtnPressed(_ sender: Any)
    {
        self.performSegue(withIdentifier: TO_VIEW_HOMEWORK, sender: self)
    }
}
