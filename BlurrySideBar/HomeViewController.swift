//
//  HomeViewController.swift
//  BlurrySideBar
//
//  Created by Sebastian Cain on 8/29/15.
//  Copyright (c) 2015 Dhiraj Patel. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    
		var bg = UIImage(named: "background2")
        var bgview = UIImageView(image: bg)
		bgview.frame = self.view.frame
		self.view.addSubview(bgview)
        
        
        
        
        
        var dynamicLabel: UILabel = UILabel()
        dynamicLabel.frame = CGRectMake(0, 25, self.view.frame.size.width, 21)
        dynamicLabel.backgroundColor = UIColor.orangeColor()
        dynamicLabel.textColor = UIColor.blackColor()
        dynamicLabel.textAlignment = NSTextAlignment.Center
        dynamicLabel.text = "Sat Kaival Saheb"
        dynamicLabel.font = UIFont(name: "Heiti SC", size: 20.0)
        self.view.addSubview(dynamicLabel)
                // Do any additional setup after loading the view.
        
        var myTextField: UITextField = UITextField()
        myTextField.frame = CGRectMake(0, 300, self.view.frame.size.width, 21)
        myTextField.text = "Swipe right to navigate!"
        myTextField.backgroundColor = UIColor.redColor()
        myTextField.textAlignment = NSTextAlignment.Center
        myTextField.font = UIFont(name: "Heiti SC", size: 20.0)
        self.view.addSubview(myTextField)
        
        
        var fbIcon : UIImageView
        fbIcon  = UIImageView(frame:CGRectMake(45, 575,50,50))
        fbIcon.image = UIImage(named:"fbIcon")
        self.view.addSubview(fbIcon)
        
        var twitIcon : UIImageView
        twitIcon  = UIImageView(frame:CGRectMake(120, 575,50,50))
        twitIcon.image = UIImage(named:"twitterIcon")
        self.view.addSubview(twitIcon)
        
        var instaIcon : UIImageView
        instaIcon  = UIImageView(frame:CGRectMake(195, 575,50,50))
        instaIcon.image = UIImage(named:"instaIcon")
        self.view.addSubview(instaIcon)
        
        var youtubeIcon : UIImageView
        youtubeIcon  = UIImageView(frame:CGRectMake(270, 575,50,50))
        youtubeIcon.image = UIImage(named:"youtubeIcon")
        self.view.addSubview(youtubeIcon)
   
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
