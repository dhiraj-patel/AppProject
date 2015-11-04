//
//  UpasanasViewController.swift
//  BlurrySideBar
//
//  Created by Sebastian Cain on 8/29/15.
//  Copyright (c) 2015 Dhiraj Patel. All rights reserved.
//

import UIKit
import AVFoundation


class UpasanasViewController: UIViewController, UIWebViewDelegate{
    
    
    var audio: AVAudioPlayer?
    

    override func viewDidLoad() {
		super.viewDidLoad()
        // 	255-239-213
        let myBackColor = UIColor(
            red:1.0,
            green:(253/255.0),
            blue:(208.0/255),
            alpha:1.0
        )
        let myFontColor = UIColor (
            red:(138.0/255),
            green:0.0,
            blue:0.0, 
            alpha:1.0
    )
        
      
        
    
        self.view.backgroundColor = myBackColor
        // background open
        //var bg = UIImage(named: "background")
        //var bgview = UIImageView(image: bg)
        //bgview.frame = self.view.frame
        //self.view.addSubview(bgview)
        // background close
        
        
        // Mangala aarti open
        
        // ▐▐   pause symbol
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        // sandhya aarti open 
        
        // maher karee
        
        // play
        
        
        
    
        
        
        // LABELS FOR EACH AUDIO FILE
    
        var maherLabel: UILabel = UILabel()
        maherLabel.frame = CGRectMake(0, 50, self.view.frame.size.width, 21)
        maherLabel.backgroundColor = myBackColor
        maherLabel.textColor = myFontColor
        maherLabel.textAlignment = NSTextAlignment.Center
        maherLabel.text = "Guru Mahimaa Saakhee"
        maherLabel.font = UIFont(name: "Heiti SC", size: 25.0)
        self.view.addSubview(maherLabel)
    
        

        var avinasheeLabel: UILabel = UILabel()
        avinasheeLabel.frame = CGRectMake(0, 125, self.view.frame.size.width, 21)
        avinasheeLabel.backgroundColor = myBackColor
        avinasheeLabel.textColor = myFontColor
        avinasheeLabel.textAlignment = NSTextAlignment.Center
        avinasheeLabel.text = "Godi Pad"
        avinasheeLabel.font = UIFont(name: "Heiti SC", size: 25.0)
        self.view.addSubview(avinasheeLabel)
        
        var a3Label: UILabel = UILabel()
        a3Label.frame = CGRectMake(0, 200, self.view.frame.size.width, 21)
        a3Label.backgroundColor = myBackColor
        a3Label.textColor = myFontColor
        a3Label.textAlignment = NSTextAlignment.Center
        a3Label.text = "Sandhya Saakhee"
        a3Label.font = UIFont(name: "Heiti SC", size: 25.0)
        self.view.addSubview(a3Label)
        
        var a4Label: UILabel = UILabel()
        a4Label.frame = CGRectMake(0, 275, self.view.frame.size.width, 21)
        a4Label.backgroundColor = myBackColor
        a4Label.textColor = myFontColor
        a4Label.textAlignment = NSTextAlignment.Center
        a4Label.text = "Sandhya Aaratee"
        a4Label.font = UIFont(name: "Heiti SC", size: 25.0)
        self.view.addSubview(a4Label)
        
        var a5Label: UILabel = UILabel()
        a5Label.frame = CGRectMake(0, 350, self.view.frame.size.width, 21)
        a5Label.backgroundColor = myBackColor
        a5Label.textColor = myFontColor
        a5Label.textAlignment = NSTextAlignment.Center
        a5Label.text = "Sandhya Stuti & Jay Vidhi"
        a5Label.font = UIFont(name: "Heiti SC", size: 25.0)
        self.view.addSubview(a5Label)
        
        var a6Label: UILabel = UILabel()
        a6Label.frame = CGRectMake(0, 425, self.view.frame.size.width, 21)
        a6Label.backgroundColor = myBackColor
        a6Label.textColor = myFontColor
        a6Label.textAlignment = NSTextAlignment.Center
        a6Label.text = "Stuti"
        a6Label.font = UIFont(name: "Heiti SC", size: 25.0)
        self.view.addSubview(a6Label)
        
        var a7Label: UILabel = UILabel()
        a7Label.frame = CGRectMake(0, 500, self.view.frame.size.width, 21)
        a7Label.backgroundColor = myBackColor
        a7Label.textColor = myFontColor
        a7Label.textAlignment = NSTextAlignment.Center
        a7Label.text = "Podhan Aaratee"
        a7Label.font = UIFont(name: "Heiti SC", size: 25.0)
        self.view.addSubview(a7Label)

        
    

        

        var sandhya1 = UIButton()
        sandhya1.setTitle("▷", forState: .Normal)
        sandhya1.setTitleColor(UIColor.cyanColor(), forState: .Normal)
        sandhya1.frame = CGRectMake(0, 50, 100, 100)
        sandhya1.addTarget(self, action: "playSandhya1:", forControlEvents: .TouchUpInside)
        self.view.addSubview(sandhya1)
       
        var sandhya1_pause = UIButton()
        sandhya1_pause.setTitle("▐▐", forState: .Normal)
        sandhya1_pause.setTitleColor(UIColor.cyanColor(), forState: .Normal)
        sandhya1_pause.frame = CGRectMake(135, 50, 100, 100)
        sandhya1_pause.addTarget(self, action: "pauseSandhya1:", forControlEvents: .TouchUpInside)
        self.view.addSubview(sandhya1_pause)
        
        var sandhya1_stop = UIButton()
        sandhya1_stop.setTitle("■", forState: .Normal)
        sandhya1_stop.setTitleColor(UIColor.cyanColor(), forState: .Normal)
        sandhya1_stop.frame = CGRectMake(265, 50, 100, 100)
        sandhya1_stop.addTarget(self, action: "stopSandhya1:", forControlEvents: .TouchUpInside)
        self.view.addSubview(sandhya1_stop)
        
        

        // avinashee
        var sandhya2 = UIButton()
        sandhya2.setTitle("▷", forState: .Normal)
        sandhya2.setTitleColor(UIColor.cyanColor(), forState: .Normal)
        sandhya2.frame = CGRectMake(0, 125, 100, 100)
        sandhya2.addTarget(self, action: "playSandhya2:", forControlEvents: .TouchUpInside)
        self.view.addSubview(sandhya2)
        
        var sandhya2_pause = UIButton()
        sandhya2_pause.setTitle("▐▐  ", forState: .Normal)
        sandhya2_pause.setTitleColor(UIColor.cyanColor(), forState: .Normal)
        sandhya2_pause.frame = CGRectMake(135, 125, 100, 100)
        sandhya2_pause.addTarget(self, action: "pauseSandhya2:", forControlEvents: .TouchUpInside)
        self.view.addSubview(sandhya2_pause)
        
        var sandhya2_stop = UIButton()
        sandhya2_stop.setTitle("■", forState: .Normal)
        sandhya2_stop.setTitleColor(UIColor.cyanColor(), forState: .Normal)
        sandhya2_stop.frame = CGRectMake(265, 125, 100, 100)
        sandhya2_stop.addTarget(self, action: "stopSandhya2:", forControlEvents: .TouchUpInside)
        self.view.addSubview(sandhya2_stop)

        // SANDHYA 3
        var sandhya3 = UIButton()
        sandhya3.setTitle("▶", forState: .Normal)
        sandhya3.setTitleColor(UIColor.cyanColor(), forState: .Normal)
        sandhya3.frame = CGRectMake(0, 200, 100, 100)
        sandhya3.addTarget(self, action: "playSandhya3:", forControlEvents: .TouchUpInside)
        self.view.addSubview(sandhya3)
        
        var sandhya3_pause = UIButton()
        sandhya3_pause.setTitle("▐▐  ", forState: .Normal)
        sandhya3_pause.setTitleColor(UIColor.cyanColor(), forState: .Normal)
        sandhya3_pause.frame = CGRectMake(135, 200, 100, 100)
        sandhya3_pause.addTarget(self, action: "pauseSandhya3:", forControlEvents: .TouchUpInside)
        self.view.addSubview(sandhya3_pause)
        
        var sandhya3_stop = UIButton()
        sandhya3_stop.setTitle("■", forState: .Normal)
        sandhya3_stop.setTitleColor(UIColor.cyanColor(), forState: .Normal)
        sandhya3_stop.frame = CGRectMake(265, 200, 100, 100)
        sandhya3_stop.addTarget(self, action: "stopSandhya3:", forControlEvents: .TouchUpInside)
        self.view.addSubview(sandhya3_stop)

        // SANDHYA 4
        var sandhya4 = UIButton()
        sandhya4.setTitle("▶", forState: .Normal)
        sandhya4.setTitleColor(UIColor.cyanColor(), forState: .Normal)
        sandhya4.frame = CGRectMake(0, 275, 100, 100)
        sandhya4.addTarget(self, action: "playSandhya4:", forControlEvents: .TouchUpInside)
        self.view.addSubview(sandhya4)
        
        var sandhya4_pause = UIButton()
        sandhya4_pause.setTitle("▐▐  ", forState: .Normal)
        sandhya4_pause.setTitleColor(UIColor.cyanColor(), forState: .Normal)
        sandhya4_pause.frame = CGRectMake(135, 275, 100, 100)
        sandhya4_pause.addTarget(self, action: "pauseSandhya4:", forControlEvents: .TouchUpInside)
        self.view.addSubview(sandhya4_pause)
        
        var sandhya4_stop = UIButton()
        sandhya4_stop.setTitle("■", forState: .Normal)
        sandhya4_stop.setTitleColor(UIColor.cyanColor(), forState: .Normal)
        sandhya4_stop.frame = CGRectMake(265, 275, 100, 100)
        sandhya4_stop.addTarget(self, action: "stopSandhya4:", forControlEvents: .TouchUpInside)
        self.view.addSubview(sandhya4_stop)
        
        // SANDHYA 5 
        
        var sandhya5 = UIButton()
        sandhya5.setTitle("▶", forState: .Normal)
        sandhya5.setTitleColor(UIColor.cyanColor(), forState: .Normal)
        sandhya5.frame = CGRectMake(0, 350, 100, 100)
        sandhya5.addTarget(self, action: "playSandhya5:", forControlEvents: .TouchUpInside)
        self.view.addSubview(sandhya5)
        
        var sandhya5_pause = UIButton()
        sandhya5_pause.setTitle("▐▐  ", forState: .Normal)
        sandhya5_pause.setTitleColor(UIColor.cyanColor(), forState: .Normal)
        sandhya5_pause.frame = CGRectMake(135, 350, 100, 100)
        sandhya5_pause.addTarget(self, action: "pauseSandhya5:", forControlEvents: .TouchUpInside)
        self.view.addSubview(sandhya5_pause)
        
        var sandhya5_stop = UIButton()
        sandhya5_stop.setTitle("■", forState: .Normal)
        sandhya5_stop.setTitleColor(UIColor.cyanColor(), forState: .Normal)
        sandhya5_stop.frame = CGRectMake(265, 350, 100, 100)
        sandhya5_stop.addTarget(self, action: "stopSandhya5:", forControlEvents: .TouchUpInside)
        self.view.addSubview(sandhya5_stop)

        
        // SANDHYA 6
        var sandhya6 = UIButton()
        sandhya6.setTitle("▶", forState: .Normal)
        sandhya6.setTitleColor(UIColor.cyanColor(), forState: .Normal)
        sandhya6.frame = CGRectMake(0, 425, 100, 100)
        sandhya6.addTarget(self, action: "playSandhya6:", forControlEvents: .TouchUpInside)
        self.view.addSubview(sandhya6)
        
        var sandhya6_pause = UIButton()
        sandhya6_pause.setTitle("▐▐  ", forState: .Normal)
        sandhya6_pause.setTitleColor(UIColor.cyanColor(), forState: .Normal)
        sandhya6_pause.frame = CGRectMake(135, 425, 100, 100)
        sandhya6_pause.addTarget(self, action: "pauseSandhya6:", forControlEvents: .TouchUpInside)
        self.view.addSubview(sandhya6_pause)
        
        var sandhya6_stop = UIButton()
        sandhya6_stop.setTitle("■", forState: .Normal)
        sandhya6_stop.setTitleColor(UIColor.cyanColor(), forState: .Normal)
        sandhya6_stop.frame = CGRectMake(265, 425, 100, 100)
        sandhya6_stop.addTarget(self, action: "stopSandhya6:", forControlEvents: .TouchUpInside)
        self.view.addSubview(sandhya6_stop)
        
        // SANDHYA 7
        var sandhya7 = UIButton()
        sandhya7.setTitle("▶", forState: .Normal)
        sandhya7.setTitleColor(UIColor.cyanColor(), forState: .Normal)
        sandhya7.frame = CGRectMake(0, 500, 100, 100)
        sandhya7.addTarget(self, action: "playSandhya7:", forControlEvents: .TouchUpInside)
        self.view.addSubview(sandhya7)
        
        var sandhya7_pause = UIButton()
        sandhya7_pause.setTitle("▎▎", forState: .Normal)
        sandhya7_pause.setTitleColor(UIColor.cyanColor(), forState: .Normal)
        sandhya7_pause.frame = CGRectMake(135, 500, 100, 100)
        sandhya7_pause.addTarget(self, action: "pauseSandhya7:", forControlEvents: .TouchUpInside)
        self.view.addSubview(sandhya7_pause)
        
        var sandhya7_stop = UIButton()
        sandhya7_stop.setTitle("■", forState: .Normal)
        sandhya7_stop.setTitleColor(UIColor.cyanColor(), forState: .Normal)
        sandhya7_stop.frame = CGRectMake(265, 500, 100, 100)
        sandhya7_stop.addTarget(self, action: "stopSandhya7:", forControlEvents: .TouchUpInside)
        self.view.addSubview(sandhya7_stop)
        
        
        var webV:UIWebView = UIWebView(frame: CGRectMake(0, 350, 50,50))
        webV.loadRequest(NSURLRequest(URL: NSURL(string: "http://www.jogendra.com")!))
        webV.delegate = self;
        self.view.addSubview(webV)
        
        /*
        scrollView = UIScrollView(frame: view.bounds)
        scrollView.autoresizingMask = UIViewAutoresizing.FlexibleWidth | UIViewAutoresizing.FlexibleHeight
        scrollView.addSubview(maherLabel)
        scrollView.addSubview(avinasheeLabel)
        scrollView.addSubview(a3Label)
        scrollView.addSubview(a4Label)
        scrollView.addSubview(a5Label)
        scrollView.addSubview(a6Label)
        scrollView.addSubview(a7Label)
        
        scrollView.addSubview(sandhya1)
        scrollView.addSubview(sandhya1_pause)
        scrollView.addSubview(sandhya1_stop)
        
        scrollView.addSubview(sandhya2)
        scrollView.addSubview(sandhya2_pause)
        scrollView.addSubview(sandhya2_stop)


        scrollView.addSubview(sandhya3)
        scrollView.addSubview(sandhya3_pause)
        scrollView.addSubview(sandhya3_stop)

        scrollView.addSubview(sandhya4)
        scrollView.addSubview(sandhya4_pause)
        scrollView.addSubview(sandhya4_stop)

        scrollView.addSubview(sandhya5)
        scrollView.addSubview(sandhya5_pause)
        scrollView.addSubview(sandhya5_stop)

        scrollView.addSubview(sandhya6)
        scrollView.addSubview(sandhya6_pause)
        scrollView.addSubview(sandhya6_stop)

        scrollView.addSubview(sandhya7)
        scrollView.addSubview(sandhya7_pause)
        scrollView.addSubview(sandhya7_stop)

        
        
        view.addSubview(scrollView)
    */
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // SANDHYA 1 FUNCTIONS
    
    func playSandhya1(sender:AnyObject) {
        
        let audioFilePath: String = "sandhya1.mp3"
        let path: String = NSBundle.mainBundle().resourcePath! + "/" + "sandhya1.mp3"
        self.audio = AVAudioPlayer(contentsOfURL: NSURL(fileURLWithPath: path, isDirectory: true), error: nil)
        audio!.play()
        
    }
    func stopSandhya1(sender:AnyObject){
        audio!.stop()
    }

    func pauseSandhya1(sender:AnyObject){
        
        if (self.audio?.playing == true){
            
            audio!.stop()
            
        }
        else {
            audio!.play()
        }
    }

    // CLOSE SANDHYA 1 FUNCTIONS
    
    // sandhya 2 functions
    
    func playSandhya2(sender:AnyObject){
        
        let audioFilePath: String = "sandhya2.mp3"
        let path: String = NSBundle.mainBundle().resourcePath! + "/" + "sandhya2.mp3"
        self.audio = AVAudioPlayer(contentsOfURL: NSURL(fileURLWithPath: path, isDirectory: true), error: nil)
        audio!.play()

    }
    
    func pauseSandhya2(sender:AnyObject){
        
        if (self.audio?.playing == true){
            
            audio!.stop()
            
        }
        else {
            audio!.play()
        }

    }

    func stopSandhya2(sender: AnyObject){
        audio!.stop()

    }
    
    // SANDHYA 3 FUNCTIONS
    func playSandhya3(sender:AnyObject){
        
        let audioFilePath: String = "sandhya3.mp3"
        let path: String = NSBundle.mainBundle().resourcePath! + "/" + "sandhya3.mp3"
        self.audio = AVAudioPlayer(contentsOfURL: NSURL(fileURLWithPath: path, isDirectory: true), error: nil)
        audio!.play()
        
    }
    
    func pauseSandhya3(sender:AnyObject){
        
        if (self.audio?.playing == true){
            
            audio!.stop()
            
        }
        else {
            audio!.play()
        }
        
    }
    
    func stopSandhya3(sender: AnyObject){
        audio!.stop()
    }
 
    
    // sandhya 4 funcs
    func playSandhya4(sender:AnyObject){
        
        let audioFilePath: String = "sandhya4.mp3"
        let path: String = NSBundle.mainBundle().resourcePath! + "/" + "sandhya4.mp3"
        self.audio = AVAudioPlayer(contentsOfURL: NSURL(fileURLWithPath: path, isDirectory: true), error: nil)
        audio!.play()
        
    }
    
    func pauseSandhya4(sender:AnyObject){
        
        if (self.audio?.playing == true){
            
            audio!.stop()
            
        }
        else {
            audio!.play()
        }
        
    }
    
    func stopSandhya4(sender: AnyObject){
        audio!.stop()
    }
    
    // SANDHYA 5 FUNCTIONS
    func playSandhya5(sender:AnyObject){
        
        let audioFilePath: String = "sandhya5.mp3"
        let path: String = NSBundle.mainBundle().resourcePath! + "/" + "sandhya5.mp3"
        self.audio = AVAudioPlayer(contentsOfURL: NSURL(fileURLWithPath: path, isDirectory: true), error: nil)
        audio!.play()
        
    }
    
    func pauseSandhya5(sender:AnyObject){
        
        if (self.audio?.playing == true){
            
            audio!.stop()
            
        }
        else {
            audio!.play()
        }
        
    }
    
    func stopSandhya5(sender: AnyObject){
        audio!.stop()
    }
    
    // SANDHYA 6 FUNCTIONS
    
    func playSandhya6(sender:AnyObject){
        
        let audioFilePath: String = "sandhya6.mp3"
        let path: String = NSBundle.mainBundle().resourcePath! + "/" + "sandhya6.mp3"
        self.audio = AVAudioPlayer(contentsOfURL: NSURL(fileURLWithPath: path, isDirectory: true), error: nil)
        audio!.play()
        
    }
    
    func pauseSandhya6(sender:AnyObject){
        
        if (self.audio?.playing == true){
            
            audio!.stop()
            
        }
        else {
            audio!.play()
        }
        
    }
    
    func stopSandhya6(sender: AnyObject){
        audio!.stop()
    }
    
    // SANDHYA 7 FUNCTIONS
    
    func playSandhya7(sender:AnyObject){
        
        let audioFilePath: String = "sandhya7.mp3"
        let path: String = NSBundle.mainBundle().resourcePath! + "/" + "sandhya7.mp3"
        self.audio = AVAudioPlayer(contentsOfURL: NSURL(fileURLWithPath: path, isDirectory: true), error: nil)
        audio!.play()
        
    }
    
    func pauseSandhya7(sender:AnyObject){
        
        if (self.audio?.playing == true){
            
            audio!.stop()
            
        }
        else {
            audio!.play()
        }
        
    }
    
    func stopSandhya7(sender: AnyObject){
        audio!.stop()
    }

    

    // Evening Upasana close
    
    
    

}

