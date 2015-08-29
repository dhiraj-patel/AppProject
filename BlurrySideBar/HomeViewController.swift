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
//		
//		var bg = UIImage(named: "background")
//		var bgview = UIImageView(image: bg)
//		bgview.frame = self.view.frame
//		self.view.addSubview(bgview)

		self.view.backgroundColor = UIColor.darkGrayColor()

        // Do any additional setup after loading the view.
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
