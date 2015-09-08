//
//  UpasanasViewController.swift
//  BlurrySideBar
//
//  Created by Sebastian Cain on 8/29/15.
//  Copyright (c) 2015 Dhiraj Patel. All rights reserved.
//

import UIKit


class UpasanasViewController: UIViewController, UIWebViewDelegate {
    
    @IBOutlet var WebView: UIWebView!
    
    override func viewDidLoad() {
		super.viewDidLoad()
        
        
        var bg = UIImage(named: "background")
        var bgview = UIImageView(image: bg)
        bgview.frame = self.view.frame
        self.view.addSubview(bgview)
        
        var YoutubeLink:String = "https://www.youtube.com/embed/fifAkhFNevk?list=PLCF1BCFBB5E3B0F71"
        let width = 1000
        let height = 500
        let frame = 50
        let Code:NSString = "<iframe width=\(width) height=\(height) src=\(YoutubeLink) frameborder=\(frame) allowfullscreen></iframe>";
        self.WebView.loadHTMLString(Code as String, baseURL: nil)

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
