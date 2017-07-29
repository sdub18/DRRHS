//
//  SecondViewController.swift
//  DRRHS
//
//  Created by Joshua Holme on 7/14/17.
//  Copyright © 2017 Joshua Holme. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    //Importing Objects
    @IBOutlet var errorLabel: UILabel!
    @IBOutlet weak var myTableView: UITableView!
    
    
    var tweets:[String] = []
    var twitterName = ""
    var profilePictureTemp = UIImage()
    
    //Setting up table view
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
        return tweets.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
    {
        let cell = tableView.dequeueReusableCell(withIdentifier: "twitterCell", for: indexPath) as! TwitterTableViewCell
        
        //Correct &'s
        let tweetsCorrectedForAmpersand = tweets[indexPath.row].replacingOccurrences(of: "&amp;", with: "&")
        
        //Cirrect (')'s
        let tweetsCorrectedForApostrophe = tweetsCorrectedForAmpersand.replacingOccurrences(of: "&#39;", with: "'")
       
        cell.myTextView.text = tweetsCorrectedForApostrophe
        //cell.myTextView.text = tweets[indexPath.row]
        cell.twitterNameLabel.text = twitterName
        cell.profilePictureImageView.image = profilePictureTemp
        return cell
    }
    
    //Autoresize cell
    override func viewWillAppear(_ animated: Bool) {
        myTableView.estimatedRowHeight = 400
        myTableView.rowHeight  = UITableViewAutomaticDimension
        
        
    }
    
    func getInfo(){
        
        let url = URL(string: "https://twitter.com/DRHighSchool")
        
        let task = URLSession.shared.dataTask(with: url!) { (data, response, error) in
            if error != nil
            {
                
                DispatchQueue.main.async
                    {
                        if let errorMessage = error?.localizedDescription
                        {
                            self.errorLabel.text = errorMessage
                        }
                        else
                        {
                            self.errorLabel.text = "There has been an error. Try again."
                        }
                }
                
                
            }
            else
            {
                let webContent:String = String(data: data!, encoding: String.Encoding.utf8)!
                
                
                //Get the name
                var array:[String] = webContent.components(separatedBy: "<title>")
                array = array[1].components(separatedBy: " |")
                let name = array[0]
                print(name)
                array.removeAll()
                
                //Get the profile picture
                array = webContent.components(separatedBy: "data-resolved-url-large=\"")
                array = array[1].components(separatedBy: "\"")
                let profilePicture = array[0]
                print(profilePicture)
                
                //Get the tweets
                array = webContent.components(separatedBy: "data-aria-label-part=\"0\">")
                array.remove(at: 0)
                
                for i in 0...array.count-1
                {
                    let newTweet = array[i].components(separatedBy: "<")
                    
                    //Replace &amp; with &
                    if newTweet[0].contains("&amp;")
                    {
                        
                        newTweet[0].replacingOccurrences(of: "&amp;", with: "&")
                        
                    }
                    
                    array[i] = newTweet[0]
                    
                    
                    
                }
                
                
                
                self.tweets = array
                
                DispatchQueue.main.async
                    {
                        self.twitterName = name
                        self.updateImage(url: profilePicture)
                        self.myTableView.reloadData()
                }
            }
            
        }
        
        task.resume()
        
    }
    
    //Function that gets profile picture data
    func updateImage(url:String)
    {
        let url = URL(string: url)
        
        let task = URLSession.shared.dataTask(with: url!) { (data, response, error) in
            DispatchQueue.main.async
                {
                    self.profilePictureTemp = UIImage(data: data!)!
            }
        }
        task.resume()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        getInfo()
        getInfo()
    }
    
   
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
}
