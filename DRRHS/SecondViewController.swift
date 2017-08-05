//
//  SecondViewController.swift
//  DRRHS
//
//  Created by Joshua Holme on 7/14/17.
//  Copyright © 2017 Holme Computer. All rights reserved.
//

import UIKit
import TwitterKit

class SecondViewController: TWTRTimelineViewController
{
    
    override func viewDidLoad()
    {
        
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        //Add the Twitter Timeline to the view controller
        let client = TWTRAPIClient()
        self.dataSource = TWTRListTimelineDataSource(listSlug: "DRRHS", listOwnerScreenName: "HolmeComputer", apiClient: client)
    
    }
    
    override func didReceiveMemoryWarning()
    {
        
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    
    }
    
}
