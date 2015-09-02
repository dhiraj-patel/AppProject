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
        
        
        
        let testFrame : CGRect = CGRectMake(0,200,320,200)
        var testView : UIView = UIView(frame: testFrame)
        testView.backgroundColor = UIColor(red: 1.5, green: 0, blue: 0.0, alpha: 0.0)
        testView.alpha=0.5
        self.view.addSubview(testView)
        
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
        myTextField.frame = CGRectMake(0, 425, self.view.frame.size.width, 21)
        myTextField.text = "hello world"
        self.view.addSubview(myTextField)
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
