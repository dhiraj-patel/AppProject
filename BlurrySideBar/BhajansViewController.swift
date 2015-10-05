//
//  BhajansViewController.swift
//  BlurrySideBar
//
//  Created by Sebastian Cain on 8/29/15.
//  Copyright (c) 2015 Dhiraj Patel. All rights reserved.
//

import UIKit
import AVFoundation

class BhajansViewController: UIViewController {
    
    
        var audio: AVAudioPlayer?
        override func viewDidLoad() {
        super.viewDidLoad()
            
        // play sandhya1
        var secondbutton = UIButton()
        secondbutton.setTitle("play", forState: .Normal)
        secondbutton.setTitleColor(UIColor.blueColor(), forState: .Normal)
        secondbutton.frame = CGRectMake(0, 50, 100, 100)
        secondbutton.addTarget(self, action: "playSandhya1:", forControlEvents: .TouchUpInside)
        self.view.addSubview(secondbutton)
            // stop sandhya1
        var thirdbutton = UIButton()
        thirdbutton.setTitle("stop", forState: .Normal)
        thirdbutton.setTitleColor(UIColor.blueColor(), forState: .Normal)
        thirdbutton.frame = CGRectMake(125, 50, 100, 100)
        thirdbutton.addTarget(self, action: "pauses:", forControlEvents: .TouchUpInside)
        self.view.addSubview(thirdbutton)
            
         // puase sandhya1
        var pausebutton = UIButton()
        pausebutton.setTitle("pause", forState: .Normal)
        pausebutton.setTitleColor(UIColor.blueColor(), forState: .Normal)
        pausebutton.frame = CGRectMake(265, 50, 100, 100)
        pausebutton.addTarget(self, action: "realPause:", forControlEvents: .TouchUpInside)
        self.view.addSubview(pausebutton)
            
            
            
        var chaloPlay = UIButton()
        chaloPlay.setTitle("play", forState: .Normal)
        chaloPlay.setTitleColor(UIColor.blueColor(), forState: .Normal)
        chaloPlay.frame = CGRectMake(0, 150, 100, 100)
        chaloPlay.addTarget(self, action: "playChalo:", forControlEvents: .TouchUpInside)
        self.view.addSubview(chaloPlay)
            
        var chaloStop = UIButton()
        chaloStop.setTitle("stop", forState: .Normal)
        chaloStop.setTitleColor(UIColor.blueColor(), forState: .Normal)
        chaloStop.frame = CGRectMake(125, 150, 100, 100)
        chaloStop.addTarget(self, action: "stopChalo:", forControlEvents: .TouchUpInside)
        self.view.addSubview(chaloStop)
        
        var chaloPause = UIButton()
        chaloPause.setTitle("pause", forState: .Normal)
        chaloPause.setTitleColor(UIColor.blueColor(), forState: .Normal)
        chaloPause.frame = CGRectMake(265, 150, 100, 100)
        chaloPause.addTarget(self, action: "pauseChalo:", forControlEvents: .TouchUpInside)
        self.view.addSubview(chaloPause)
        
        
            
        // in order to add a second button with something differetn create nother button and just changed action: ..... to whatever u want to name 
        // it and make a new func like func pressed but instead of pressed but your selector name 
        

            
            
		self.view.backgroundColor = UIColor.lightGrayColor()
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    var isPlaying = false
    
    
    func playSandhya1() {
        
        let audioFilePath: String = "sandhya.mp3"
        let path: String = NSBundle.mainBundle().resourcePath! + "/" + "sandhya.mp3"
        self.audio = AVAudioPlayer(contentsOfURL: NSURL(fileURLWithPath: path, isDirectory: true), error: nil)
        audio!.play()
        isPlaying = true
        
    }
   
    
    func pauseSandhya1(){
        let audioFilePath: String = "sandhya.mp3"
        let path: String = NSBundle.mainBundle().resourcePath! + "/" + "sandhya.mp3"
        self.audio = AVAudioPlayer(contentsOfURL: NSURL(fileURLWithPath: path, isDirectory: true), error: nil)
        audio!.pause()
        isPlaying = false
    }
    
    func playChalo(){
        
        let audioFilePath: String = "chalosant.mp3"
        let path: String = NSBundle.mainBundle().resourcePath! + "/" + "chalosant.mp3"
        self.audio = AVAudioPlayer(contentsOfURL: NSURL(fileURLWithPath: path, isDirectory: true), error: nil)
        audio!.play()
        isPlaying = true

    }
    
    func stopChalo(){
        
        let audioFilePath: String = "chalosant.mp3"
        let path: String = NSBundle.mainBundle().resourcePath! + "/" + "chalosant.mp3"
        self.audio = AVAudioPlayer(contentsOfURL: NSURL(fileURLWithPath: path, isDirectory: true), error: nil)
        audio!.pause()
        isPlaying = false
    
    }

    
    // BEGINNING OF BUTTON ACTIONS
    
    // BUTTON ACTIONS FOR SANDHYA
    
    
    func playSandhya1(sender: AnyObject) {
        playSandhya1()
        
    }
    
    func pauses(sender:AnyObject){
        pauseSandhya1()
    }
    
    
    
    func realPause(sender:AnyObject){
        
        if (self.audio?.playing == true){
            
            audio!.stop()
            
        }
        else {
            audio!.play()
        }
    
    }
    
// CLOSE BUTTON ACTIONS FOR SANDHYA

// Button Actions for Challo Sant Sajan
    
    func playChalo(sender:AnyObject){
        playChalo()
    }
    
    func stopChalo(sender:AnyObject){
        stopChalo()
    }
    
    func pauseChalo(sender:AnyObject){
        if (self.audio?.playing == true){
            audio!.stop()
        }
        else {
            audio!.play()
        }
    }
    

}
