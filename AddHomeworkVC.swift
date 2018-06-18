//
//  AddHomeworkViewController.swift
//  DRRHS
//
//  Created by Sam DuBois on 8/17/17.
//  Copyright © 2017 Joshua Holme. All rights reserved.
//

import UIKit
import CoreData
import UserNotifications
import MobileCoreServices

class AddHomeworkVC: UIViewController, UITextFieldDelegate, UIImagePickerControllerDelegate, UINavigationControllerDelegate
{
    // Some Variables
    var fromDay: String?
    var classTitleLabel = String()
    var currentDate = Date()
    var identity = String()
    var calendar = Calendar.current
    var imageView = UIImage()
    var homework: [Schedule] = []
    
    var dueDate = ""
    
    //Outlets to the different peices on the app
    @IBOutlet weak var TitleLabel: UILabel!
    @IBOutlet weak var BackDrop: UIView!
    @IBOutlet weak var TextField: UITextView!
    @IBOutlet weak var imgField: UIImageView!
    @IBOutlet weak var addBtn: UIButton!
    @IBOutlet weak var useImgBtn: RoundedButton!
    @IBOutlet weak var useTextBtn: RoundedButton!
    @IBOutlet weak var dueDateLbl: UILabel!
    @IBOutlet weak var homeworkLbl: UILabel!
    @IBOutlet weak var datePicker: UIDatePicker!
    
    
    @IBAction func saveButtonPressed(_ sender: Any)
    {
        if dueDate == ""
        {
            let alert = UIAlertController(title: "Uh Oh!", message: "Don't forget to change the due date.", preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: NSLocalizedString("OK", comment: "Default action"), style: .`default`, handler: { _ in
                NSLog("The \"OK\" alert occured.")
            }))
            self.present(alert, animated: true, completion: nil)
        }
        else
        {
            let context = (UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext
            
            let homeworkAssignment = NSEntityDescription.insertNewObject(forEntityName: "Schedule", into: context) as! Schedule
            homeworkAssignment.homework = TextField.text
            homeworkAssignment.dueDate = dueDate
            homeworkAssignment.classTitle = classTitleLabel
            homeworkAssignment.classColor = fromDay
            homeworkAssignment.identityCode = identity
            homeworkAssignment.picture = UIImageJPEGRepresentation(imageView, 1)
            
            //Save the data
            (UIApplication.shared.delegate as! AppDelegate).saveContext()
            
            // Create Notification
            self.performSegue(withIdentifier: "GRHWUnwind", sender: self)
            
            // Pull the necessary information from the core data for the notification
            getCoreData()
            
            // Add Notification Action
            let remindMinutesAction = UNNotificationAction(identifier: "minutes.action", title: "Remind Me in 30 Minutes", options: [])
            let remindHourAction = UNNotificationAction(identifier: "hour.action", title: "Remind Me in 1 Hour", options: [])
            
            // Add Notification Category (this is not employed currently but is in app if needed later, just change category identifier to match notification)
            let homeworkCategory = UNNotificationCategory(identifier: "homework.category", actions: [remindMinutesAction, remindHourAction], intentIdentifiers: [], options: [])
            
            // Send Category to Notification System
            UNUserNotificationCenter.current().setNotificationCategories([homeworkCategory])
            
            // Define the primary notification
            let content = UNMutableNotificationContent()
            let homeworkAmount = homework.count
            var assignments: [String] = []
            var date = DateComponents()
            date.hour = 17
            
            // determine the string of classes in which homework is due for, this will determine if a class is already entered into the array and if so, not readd it to make it appear repetitive, also add an "and" statement at the end to make it appear fluent
            assignments.removeAll()
            for i in 0...homeworkAmount - 1 {
                let task = homework[i]
                
                if assignments.contains(task.classTitle!){
                    if i == homeworkAmount - 1 {
                        assignments.append("and more \(task.classTitle!)")
                    }
                } else {
                    if i == homeworkAmount - 1 {
                        assignments.append("and \(task.classTitle!)")
                    } else {
                        assignments.append(task.classTitle!)
                    }
                }
            }
            // Set characteristics of the notifcation, including Title of notification, as well as the body using the array created earlier.
            content.title = "Homework Reminder"
            content.body = "Don't forget you have \(assignments.description.replacingOccurrences(of: "\"", with: "")) Homework Due Soon".replacingOccurrences(of: "]", with: "").replacingOccurrences(of: "[", with: "")
            content.badge = 1
            content.categoryIdentifier = "homework.category"
            
            // Defines when the notification will fire. This uses a specific time in the day, but can also be set to a specific time after the save button is pressed.
            let trigger = UNCalendarNotificationTrigger(dateMatching: date, repeats: false)
            
            let requestIndentifier = "GoldDayNotification"
            let request = UNNotificationRequest(identifier: requestIndentifier, content: content, trigger: trigger)
            UNUserNotificationCenter.current().add(request, withCompletionHandler: {Error in
                // handle Error here
            })
            
            dismiss(animated: true, completion: nil)
        }
    }
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        generalSetup()
        
        if fromDay == "Green"
        {
            setGreenDay()
        }
        else if fromDay == "Gold"
        {
            setGoldDay()
        }
        
        TextField.layer.borderWidth = 1.5
        TextField.layer.borderColor = UIColor(red: (160/255.0), green: (160/255.0), blue: (160/255.0), alpha: 1.0).cgColor
        //Rounded Corners
        TextField.layer.cornerRadius = 10
        TextField.layer.masksToBounds = true
        
    }

// Someone Hits The Text Button
    @IBAction func textBtnSelected(_ sender: Any) {
        if fromDay == "Green" {
            useTextBtn.backgroundColor = .DRGreen
        } else {
            useTextBtn.backgroundColor = .DRGold
        }
        
        imgField.isHidden = true
        TextField.isHidden = false
        useTextBtn.setTitleColor(UIColor.white, for: .normal)
        useImgBtn.backgroundColor = UIColor.white
        useImgBtn.setTitleColor(UIColor.darkGray, for: .normal)
    }

// Someone Hits the Image Button
    @IBAction func imageBtnSelected(_ sender: Any) {
        if fromDay == "Green" {
            useImgBtn.backgroundColor = .DRGreen
        } else {
            useImgBtn.backgroundColor = .DRGold
        }
        
        useTextBtn.backgroundColor = UIColor.white
        useTextBtn.setTitleColor(UIColor.darkGray, for: .normal)
        useImgBtn.setTitleColor(UIColor.white, for: .normal)
        
        if UIImagePickerController.isSourceTypeAvailable(UIImagePickerControllerSourceType.camera)
        {
            let imagePicker = UIImagePickerController()
            imagePicker.delegate = self
            imagePicker.sourceType = UIImagePickerControllerSourceType.camera
            imagePicker.mediaTypes = [kUTTypeImage as String]
            imagePicker.allowsEditing = false
            
            self.present(imagePicker, animated: true, completion: nil)
        }
    }
    
// Function that allows Date Picker to work
    @IBAction func dueDateSelected(_ sender: Any)
    {
        let dateFormatter = DateFormatter()
        
        dateFormatter.dateStyle = DateFormatter.Style.short
        dateFormatter.timeStyle = DateFormatter.Style.short
        
        dueDate = dateFormatter.string(from: datePicker.date)
    }

// This function will set the necessary labels required when the view is booted
    override func viewWillAppear(_ animated: Bool)
    {
        TitleLabel.text = "Add \(classTitleLabel) Homework"
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?)
    {
        self.view.endEditing(true)
        
    }
    
// This function sets the parameters for the colors of Green Day
    func setGreenDay() {
        homeworkLbl.textColor = .DRGreen
        dueDateLbl.textColor = .DRGreen
        addBtn.backgroundColor = .DRGreen
        useTextBtn.backgroundColor = .DRGreen
    }
    
// This function sets the parameters for the colors of Gold Day
    func setGoldDay() {
        homeworkLbl.textColor = .DRGold
        dueDateLbl.textColor = .DRGold
        addBtn.backgroundColor = .DRGold
        useTextBtn.backgroundColor = .DRGold
    }
    
// General Setup to make the view look good on multiple platforms
    func generalSetup()
    {
        TextField.sizeToFit()
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool
    {
        self.view.endEditing(true)
        return true
    }
    
    func getCoreData()
    {
        let context = (UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext
        
        do
        {
            homework = try context.fetch(Schedule.fetchRequest())
        }
        catch
        {
            print ("fetching Failed")
        }
    }
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [String : Any])
    {
        let mediaType = info[UIImagePickerControllerMediaType] as! NSString
        
        self.dismiss(animated: true, completion: nil)
        
        if mediaType.isEqual(to: kUTTypeImage as String)
        {
            let image = info[UIImagePickerControllerOriginalImage] as! UIImage
            
            imgField.isHidden = false
            TextField.isHidden = true
            imgField.image = image
            imageView = image
            imgField.contentMode = .scaleAspectFill
            imgField.layer.masksToBounds = true
            imgField.layer.cornerRadius = 15
        }
    }
    
    @objc func image(image: UIImage, didFinishSavingWithError error: NSErrorPointer, contextInfo:UnsafeRawPointer) {
        
        if error != nil {
            let alert = UIAlertController(title: "Save Failed", message: "Failed to save image", preferredStyle: UIAlertControllerStyle.alert)
            
            let cancelAction = UIAlertAction(title: "OK", style: .cancel, handler: nil)
            
            alert.addAction(cancelAction)
            self.present(alert, animated: true, completion: nil)
        }
    }
    
    func imagePickerControllerDidCancel(_ picker: UIImagePickerController)
    {
        self.dismiss(animated: true, completion: nil)
        if fromDay == "Green" {
            useTextBtn.backgroundColor = .DRGreen
        } else {
            useTextBtn.backgroundColor = .DRGold
        }
        
        imgField.isHidden = true
        TextField.isHidden = false
        useTextBtn.setTitleColor(UIColor.white, for: .normal)
        useImgBtn.backgroundColor = UIColor.white
        useImgBtn.setTitleColor(UIColor.darkGray, for: .normal)
        
    }
}
