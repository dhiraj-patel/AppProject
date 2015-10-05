//
//  KaivalYouthViewController.swift
//  BlurrySideBar
//
//  Created by Dhiraj Patel on 8/29/15.
//  Copyright (c) 2015 Dhiraj Patel. All rights reserved.
//

import UIKit

class KaivalYouthViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor.blueColor()
        let myFirstLabel = UILabel()
        let myFirstButton = UIButton()
        myFirstLabel.text = "I made a label on the screen #toogood4you"
        myFirstLabel.font = UIFont(name: "MarkerFelt-Thin", size: 45)
        myFirstLabel.textColor = UIColor.redColor()
        myFirstLabel.textAlignment = .Center
        myFirstLabel.numberOfLines = 5
        myFirstLabel.frame = CGRectMake(15, 54, 300, 500)
        myFirstButton.setTitle("✸", forState: .Normal)
        myFirstButton.setTitleColor(UIColor.blueColor(), forState: .Normal)
        myFirstButton.frame = CGRectMake(15, -50, 300, 500)
        myFirstButton.addTarget(self, action: "pressed:", forControlEvents: .TouchUpInside)
        self.view.addSubview(myFirstLabel)
        self.view.addSubview(myFirstButton)

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    func pressed(sender: UIButton!) {
        var alertView = UIAlertView();
        alertView.addButtonWithTitle("Ok");
        alertView.title = "title";
        alertView.message = "message";
        alertView.show();
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
