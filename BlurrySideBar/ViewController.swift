//
//  ViewController.swift
//  KaivalConnections
//
//  Created by Dhiraj Patel on 8/18/15.
//  Copyright (c) 2015 Dhiraj Patel. All rights reserved.
//

import UIKit

class ViewController: UIViewController, SideBarDelegate {
    
    //@IBOutlet weak var imageView: UIImageView!
    var sideBar:SideBar = SideBar()
	
	var containerView = UIView()
	
	var home = HomeViewController()
	var upasanas = UpasanasViewController()
	var bhajans = BhajansViewController()
	var stutis = StutisViewController()
    var kaivalyouth = KaivalYouthViewController()
    var aboutus = AboutUsViewController()
    var newsletter = NewsletterViewController()
    var mandirnews = MandirNewsViewController()
    var activelife = ActiveLifeViewController()
    
    override func viewDidLoad() {
        super.viewDidLoad()
		
		containerView.frame = self.view.frame
		containerView.backgroundColor = UIColor.redColor()
		NSLog("%@", containerView)
		self.view.addSubview(containerView)
        
        sideBar = SideBar(sourceView: self.view, menuItems: ["Home","Upasanas","Bhajans","Stutis","Kaival Youth","About Us","Newsletter","Mandir News","Active Life"])
        sideBar.delegate = self
		
		containerView.addSubview(home.view)
    }
	
    func sideBarDidSelectButtonAtIndex(index: Int) {
        if index == 0 {
			containerView.subviews.map({$0.removeFromSuperview()})
			containerView.addSubview(home.view)
        }
		else if index == 1 {
			containerView.subviews.map({$0.removeFromSuperview()})
			containerView.addSubview(upasanas.view)
        }
		else if index == 2 {
			containerView.subviews.map({$0.removeFromSuperview()})
			containerView.addSubview(bhajans.view)
        }
        else if index == 3 {
            containerView.subviews.map({$0.removeFromSuperview()})
            containerView.addSubview(stutis.view)
        }
        else if index == 4 {
            containerView.subviews.map({$0.removeFromSuperview()})
            containerView.addSubview(kaivalyouth.view)
        }
        else if index == 5 {
            containerView.subviews.map({$0.removeFromSuperview()})
            containerView.addSubview(aboutus.view)
        }
        else if index == 6 {
            containerView.subviews.map({$0.removeFromSuperview()})
            containerView.addSubview(newsletter.view)
        }
        else if index == 7 {
            containerView.subviews.map({$0.removeFromSuperview()})
            containerView.addSubview(mandirnews.view)
        }
        else if index == 8 {
            containerView.subviews.map({$0.removeFromSuperview()})
            containerView.addSubview(activelife.view)
        }
        


        
        
    }
    
}