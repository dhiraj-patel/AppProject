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
        
    }
    
}