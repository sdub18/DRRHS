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
    
        addNavBarImage()
    }
    
    
    func addNavBarImage() {
        
        let navBarController = navigationController!
        
        let image = #imageLiteral(resourceName: "DRNavigationBarLogo")
        let imageView = UIImageView(image: image)
        
        let bannerWidth = navBarController.navigationBar.frame.size.width
        let bannerHeight = navBarController.navigationBar.frame.size.height
        
        let  bannerX = bannerWidth / 2 - image.size.width / 2
        let bannerY = bannerHeight / 2 - image.size.height / 2
        
        imageView.frame = CGRect(x: bannerX, y: bannerY, width: bannerWidth, height: bannerHeight)
        imageView.contentMode = .scaleAspectFit
        
        navigationItem.titleView = imageView
        
    }
    
    override func didReceiveMemoryWarning()
    {
        
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    
    }
    
}
