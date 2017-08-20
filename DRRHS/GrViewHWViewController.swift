//
//  GrViewHomeworkViewController.swift
//  DRRHS
//
//  Created by Sam DuBois on 8/17/17.
//  Copyright © 2017 Joshua Holme. All rights reserved.
//

import UIKit

//Homework Array to store information of Homework
var GrHomeworkAssignments:[String] = []
var GrClassRoomNames:[String] = []
var GrDueDates: [String] = []

class GrViewHWViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBAction func saveButtonPressed(_ sender: Any) {
        self.performSegue(withIdentifier: "GRHWVIEWUnwind", sender: self)
    }
    //outlet to the tableviewCell
    @IBOutlet weak var homeworkTableViewCell: UITableView!
    
    //Function to get number of rows in TableView
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return GrHomeworkAssignments.count
    }
    
    //Function to reference our tableviewCell
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "GrHWCell") as! GrViewHWTableViewCell
        cell.HomeworkTextField.text = GrHomeworkAssignments[indexPath.row]
        cell.ClassNameLabel.text = GrClassRoomNames[indexPath.row]
        cell.DueDateLabel.text = GrDueDates[indexPath.row]
        
        return cell
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewDidAppear(_ animated: Bool) {
        homeworkTableViewCell.reloadData()
    }
    
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == UITableViewCellEditingStyle.delete {
            GrHomeworkAssignments.remove(at: indexPath.row)
            GrClassRoomNames.remove(at: indexPath.row)
            GrDueDates.remove(at: indexPath.row)
            homeworkTableViewCell.reloadData()
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
