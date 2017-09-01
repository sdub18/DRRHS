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
        
        //A
        Teacher(name:"Mr. Ascoli", email: "@drregional.org", roomNumber: "TBD", website: "https://sites.google.com/a/drregional.org/mr-ascoli-s-home-page/"),
        Teacher(name:"Mr. Augusto", email: "VAugusto@drregional.org", roomNumber: "222", website: "https://sites.google.com/a/drregional.org/mr-augusto-s-dr-web-page/home"),
        
        
        //B
        Teacher(name:"Mr. Botelho", email:"JBotelho@drregional.org", roomNumber: "220", website: "drregional.org"),
        Teacher(name:"Mr. Biosvert", email: "SBoisvert@drregional.org", roomNumber: "TBD", website: "http://www.drregional.org/dighton-dohobothhigh"),
        Teacher(name:"Mr. Boutin", email: "ABoutin@drregional.org", roomNumber: "301", website: "http://www.drregional.org/dighton-dohobothhigh"),
        Teacher(name:"Ms. Brasier", email: "@drregional.org", roomNumber: "TBD", website: "N/A"),
        Teacher(name:"Ms. Burnham", email: "HBurnham@drregional.org", roomNumber: "504", website: "http://www.drregional.org/dighton-dohobothhigh"),
        
        
        //C
        Teacher(name:"Mrs. Cardea", email: "PCardea@drregional.org", roomNumber: "TBD", website: "http://www.drregional.org/dighton-dohobothhigh "),
        Teacher(name:"Ms. Carol", email: "@drregional.org", roomNumber: "TBD", website: "http://mscarroll301.blogspot.com/"),
        Teacher(name:"Mr. Cowgill", email: "@drregional.org", roomNumber: "TBD", website: "N/A"), 
        Teacher(name:"Ms. Cuthbertson", email: "@drregional.org", roomNumber: "TBD", website: "N/A"),
        
        
        //D
        Teacher(name:"Mrs. De Aguiar", email: "@drregional.org", roomNumber: "TBD", website: "N/A"),
        Teacher(name:"Mr. Delano", email:"BDelano@drregional.org", roomNumber: "128", website: "drregional.org"),
        Teacher(name:"Mr. Demers", email: "DDemers@drregional.org", roomNumber: "TBD", website: "N/A"),
        Teacher(name:"Ms. Deschenes", email: "MDeschenes@drregional.org", roomNumber: "TBD", website: "http://www.drregional.org/dighton-dohobothhigh"),
        Teacher(name:"Ms. DuBois", email: "@drregional.org", roomNumber: "TBD", website: "N/A"),
        
        
        //E
        Teacher(name:"Mrs. Enos", email: "KEnos@drregional.org", roomNumber: "TBD", website: "http://www.drregional.org/dighton-dohobothhigh"),
        
        
        
        //F
        Teacher(name:"Mrs. Feeley", email: "CFeeley@drregional.org", roomNumber: "TBD", website: "https://sites.google.com/a/drregional.org/mrs-feeley/"),
        
        
        
        //G
        Teacher(name:"Mr. Grover", email: "CGover@drregional.org", roomNumber: "227", website: "N/A"),
        
        
        
        //H
        Teacher(name:"Ms. Harwood", email: "JHarwood@drregional.org", roomNumber: "307", website: "N/A"),
        Teacher(name:"Ms. Hatch", email: "@drregional.org", roomNumber: "TBD", website: "N/A"),
        Teacher(name:"Mrs. Hopkins", email: "DHopkins@drregional.org", roomNumber: "227", website: "http://www.drregional.org/dighton-dohobothhigh"),
        
        //I
        Teacher(name:"Mr. Ivatts", email: "KIvatts@drregional.org", roomNumber: "GYM", website: "http://www.drregional.org/dighton-dohobothhigh"),
        
        
        
        //J
        Teacher(name:"Ms. Janove", email: "KJanove@drregional.org", roomNumber: "TBD", website: "https://msjanove.blogspot.com/"),
        
        
        
        //K
        
        
        
        
        //L
        Teacher(name:"Mrs. O’Reilly-LaSalle", email: "ELasalle@drregional.org", roomNumber: " TBD", website: " http://www.drregional.org/dighton-dohobothhigh"),
        Teacher(name:"Mr. Loell", email: "KLoell@drregional.org", roomNumber: "300", website: "https://sites.google.com/a/drregional.org/mr-loell-s-dr-website/"),
        Teacher(name:"Mrs. Loell", email: "@drregional.org", roomNumber: "TBD", website: "https://sites.google.com/a/drregional.org/magistra-madame-loell/home"),
        Teacher(name:"Mrs. Lomba", email: "MLomba@drregional.org", roomNumber: "124", website: "http://www.drregional.org/dighton-dohobothhigh"),
        Teacher(name:"Mr. Lovejoy", email: "SLovejoy@drregional.org", roomNumber: "TBD", website: "http://www.drregional.org/dighton-dohobothhigh"),
        Teacher(name:"Ms. Lundgren", email: "@drregional.org", roomNumber: "TBD", website: "N/A"),
        
        
        //M
        Teacher(name:"Ms. Madsen", email: "PMadsen@drregional.org", roomNumber: "TBD", website: "N/A"),
        Teacher(name:"Ms. Maguire", email: "@drregional.org", roomNumber: "MEDIA CENTER", website: "http://www.drregional.org/dighton-dohobothhigh"),
        Teacher(name:"Ms. McCabe", email: "CMccabe@drregional.org", roomNumber: "TBD", website: "N/A"),
        Teacher(name:"Mr. Morrison", email: "JMorrison@drregional.org", roomNumber: "319", website: "http://www.drregional.org/pages/mr-morrisons-web-page"),
        
        
        //N
        Teacher(name:"Mr. Nardozzi", email: "TNardozzi@drregional.org", roomNumber: "TBD", website: "N/A"),
        
        
        
        //O
        Teacher(name:"Mrs. O’Gara", email: "COgara@drregional.org", roomNumber: "TBD", website: "http://www.drregional.org/dighton-dohobothhigh"),
        Teacher(name:"Mr. O’Leary", email: "KOleary@drregional.org", roomNumber: "GYM", website: "http://www.drregional.org/dighton-dohobothhigh"),
        
        
        
        //P
        Teacher(name:"Mrs. Provonsil", email: "@drregional.org", roomNumber: "TBD", website: "http://www.drregional.org/dighton-dohobothhigh"),
        
        
        
        //Q
        
        
        
        
        //R
        Teacher(name:"Ms. Rozzero", email: "JRozzero@drregional.org", roomNumber: "TBD", website: "N/A"),
        Teacher(name:"Ms. Rutkowski", email: "@drregional.org", roomNumber: "TBD", website: "N/A"),
        
        
        
        //S
        Teacher(name:"Mr. Schifone", email: "@drregional.org", roomNumber: "TBD", website: "N/A"),
        Teacher(name:"Ms. Siachos", email: "ASiachos@drregional.org", roomNumber: "TBD", website: "https://sites.google.com/a/drregional.org/siachos/"),
        Teacher(name:"Ms. Smith", email: "NSmith@drregional.org", roomNumber: "TBD", website: "https://sites.google.com/a/drregional.org/ms-smith-s-math-class/"),
        Teacher(name:"Mr. Stockdale", email: "@drregional.org", roomNumber: "TBD", website: "N/A"),
        
        
        //T
        Teacher(name:"Ms. Tache", email: "@drregional.org", roomNumber: "TBD", website: "N/A"),
        
        
        
        //U
        Teacher(name:"Mrs. Udelle", email: "SUdell@drregional.org", roomNumber: "GYM", website: "http://www.drregional.org/dighton-dohobothhigh"),
        
        
        
        //V
        Teacher(name:"Mrs. Vander Kaaden", email: "jvanderkaaden@drregional.org", roomNumber: "129", website: "http://www.drregional.org/dighton-dohobothhigh"),
        Teacher(name:"Ms. Voccio", email: "KVoccio@drregional.org", roomNumber: "TBD", website: "http://www.drregional.org/dighton-dohobothhigh"),
        
        
        //W
        
        
        
        
        //X
        
        
        
        
        //Y
        
        
        
        
        //Z
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

