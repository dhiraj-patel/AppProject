//
//  ViewController.swift
//  KaivalConnections
//
//  Created by Dhiraj Patel on 8/18/15.
//  Copyright (c) 2015 Dhiraj Patel. All rights reserved.
//

import UIKit

class ViewController: UIViewController, SideBarDelegate {
    
    @IBOutlet weak var imageView: UIImageView!
    var sideBar:SideBar = SideBar()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        sideBar = SideBar(sourceView: self.view, menuItems: ["Home","Upasanas","Bhajans","Stutis","Kaival Youth","About Us","Newsletter","Mandir News","Active Life"])
        sideBar.delegate = self
        
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func sideBarDidSelectButtonAtIndex(index: Int) {
        if index == 1 {
            imageView.backgroundColor = UIColor.redColor()
            imageView.image = nil
        }
        else if index == 2 {
            imageView.backgroundColor = UIColor.clearColor()
            imageView.image = UIImage(named: "background2")
        }
        else if index == 0 {
            imageView.backgroundColor = UIColor.clearColor()
            imageView.image = UIImage(named: "background2")
        }
        
    }
    
}