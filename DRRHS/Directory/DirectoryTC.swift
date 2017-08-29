//
//  DirectoryTC.swift
//  DRRHS
//
//  Created by Joshua Holme on 8/27/17.
//  Copyright © 2017 Joshua Holme. All rights reserved.
//

import UIKit

var name = ""

class DirectoryTC: UITableViewController, UISearchResultsUpdating {
    
    var teachers = ["Mr. Delano", "Mr. Antani", "Mr. Botelho", "Mr. Braga"]
    var filteredTeachers = [String]()
    
    var searchController: UISearchController!
    var resultsController = UITableViewController()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.resultsController.tableView.dataSource = self
        self.resultsController.tableView.delegate = self
        
        self.searchController = UISearchController(searchResultsController: self.resultsController)
        self.tableView.tableHeaderView = self.searchController.searchBar
        self.searchController.searchResultsUpdater = self
        definesPresentationContext = true
        
    }
    
    func updateSearchResults(for searchController: UISearchController) {
        
        self.filteredTeachers = self.teachers.filter{ (teacher:String) -> Bool in
            if teacher.lowercased().contains(self.searchController.searchBar.text!.lowercased())
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
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
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
        
        if tableView == self.tableView
        {
            cell.textLabel?.text = self.teachers[indexPath.row]
        }else
        {
            cell.textLabel?.text = self.filteredTeachers[indexPath.row]
        }
        
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        
        
        if tableView == self.tableView
        {
            name = self.teachers[indexPath.row]
        }else
        {
            name = self.filteredTeachers[indexPath.row]
        }
        
        self.performSegue(withIdentifier: "teacherDetail", sender: self)
        
        
    }
    
}

