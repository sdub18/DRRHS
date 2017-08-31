//
//  DirectoryTC.swift
//  DRRHS
//
//  Created by Joshua Holme on 8/27/17.
//  Copyright © 2017 Joshua Holme. All rights reserved.
//

import UIKit

class DirectoryTC: UITableViewController, UISearchResultsUpdating {
    
    var teachers = [
        Teacher(name:"Brandon Delano", email:"BDelano@drregional.org", roomNumber: "128", website: "drregional.org"),
        Teacher(name:"Joseph Botelho", email:"JBotelho@drregional.org", roomNumber: "220", website: "drregional.org")
    ]
    var filteredTeachers = [Teacher]()
    
    var selectedTeacher = Teacher(name: "", email: "", roomNumber: "", website: "")
    
    var searchController: UISearchController!
    var resultsController = UITableViewController()
    
    override func viewDidLoad()
    {
        
        super.viewDidLoad()
        
        self.resultsController.tableView.dataSource = self
        self.resultsController.tableView.delegate = self
        
        self.searchController = UISearchController(searchResultsController: self.resultsController)
        self.tableView.tableHeaderView = self.searchController.searchBar
        self.searchController.searchResultsUpdater = self
        definesPresentationContext = true
        
        //Add in the DR LOGO on top Bar
        addNavBarImage()
        
    }
    
    func updateSearchResults(for searchController: UISearchController) {
        
        self.filteredTeachers = self.teachers.filter{ (teacher:Teacher) -> Bool in
            
            if teacher.name.lowercased().contains(self.searchController.searchBar.text!.lowercased())
            {
                return true
            }else
            {
                return false
            }
        }
        
        self.resultsController.tableView.reloadData()
        
    }
    
    // MARK: - Table view data source
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
        
        if tableView == self.tableView
        {
            return self.teachers.count
        }else
        {
            return self.filteredTeachers.count
        }
        
    }
    
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
    {
        let cell = UITableViewCell()
        
        let teacher : Teacher
        
        if tableView == self.tableView
        {
            teacher = teachers[indexPath.row]
        }else
        {
            teacher = filteredTeachers[indexPath.row]
        }
        
        cell.textLabel?.text = teacher.name
        
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath)
    {
        let teacher : Teacher
        
        if tableView == self.tableView
        {
            teacher = teachers[indexPath.row]
            selectedTeacher = teacher
        }else
        {
            teacher = filteredTeachers[indexPath.row]
            selectedTeacher = teacher
        }
        
        
        self.performSegue(withIdentifier: "teacherDetail", sender: self)
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?)
    {
        
        let vc = segue.destination as! DirectoryDetailVC
        
        vc.name = selectedTeacher.name
        vc.email = selectedTeacher.email
        vc.roomNumber = selectedTeacher.roomNumber
        vc.website = selectedTeacher.website
        
    }
    
    func addNavBarImage() {
        
        let navBarController = navigationController!
        
        let image = #imageLiteral(resourceName: "DRlogo2")
        let imageView = UIImageView(image: image)
        
        let bannerWidth = navBarController.navigationBar.frame.size.width
        let bannerHeight = navBarController.navigationBar.frame.size.height
        
        let  bannerX = bannerWidth / 2 - image.size.width / 2
        let bannerY = bannerHeight / 2 - image.size.height / 2
        
        imageView.frame = CGRect(x: bannerX, y: bannerY, width: bannerWidth, height: bannerHeight)
        imageView.contentMode = .scaleAspectFit
        
        navigationItem.titleView = imageView
        
    }
    
}

