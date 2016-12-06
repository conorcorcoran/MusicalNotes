//
//  DescriptionViewController.swift
//  MusicalNotes
//
//  Created by 20067633 on 01/12/2016.
//  Copyright © 2016 WIT. All rights reserved.
//

import UIKit
import AVFoundation

class DescriptionViewController: UIViewController {
    
    @IBOutlet weak var instrumentImage: UIImageView!
    
    @IBOutlet weak var instrumentName: UILabel!
    
    @IBOutlet weak var instrumentDescription: UITextView!
    
    @IBOutlet weak var famousPlayer: UITextView!
    
    
    @IBOutlet weak var videoView: UIWebView!
    
    @IBAction func play(_ sender: AnyObject)
    {
        player.play()
    }
    
    @IBAction func stop(_ sender: AnyObject)
    {
        player.stop()
    }
    
    var player:AVAudioPlayer = AVAudioPlayer()
    
    
    //Gets the instrument that was selected from table
    var instrumentSelected = "";
 
    override func viewDidLoad() {
        super.viewDidLoad()
       
        //get plist data
        var myDict: NSDictionary?
        if let path = Bundle.main.path(forResource: instrumentSelected, ofType: "plist") {
            myDict = NSDictionary(contentsOfFile: path)
        }
        
        //Assigning value for data for screen
       instrumentName.text =  myDict?.value(forKey: "Name") as! String?
        
       instrumentImage.image = UIImage(named: (instrumentName.text! + ".png"))
        
       instrumentDescription.text = myDict?.value(forKey: "Description") as! String!
        
       famousPlayer.text = myDict?.value(forKey: "Famous Player") as! String
        
        
        

        
        //Video View
        let YouTubeURL = myDict?.value(forKey: "Video") as! String
       
        videoView.allowsInlineMediaPlayback = true
        
        //Video frame for embeded videos
        videoView.loadHTMLString("<iframe width=\"\(videoView.frame.width)\" height=\"\(videoView.frame.height)\" src=\"\(YouTubeURL)?&playsinline=1\" frameborder=\"0\" allowfullscreen></iframe>", baseURL: nil)
        
        
        //AudioPlayer
        
        
        do
          {
            let audioPath = Bundle.main.path(forResource: instrumentName.text, ofType: "mp3")

            try player = AVAudioPlayer(contentsOf: NSURL(fileURLWithPath: audioPath!) as URL)
          }
          catch
          {
                print("error")
          }
            
            
        }
    

    
}
