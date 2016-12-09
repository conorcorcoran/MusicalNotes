//
//  ViewController.swift
//  MusicalNotes
//
//  Created by 20067633 on 24/11/2016.
//  Copyright © 2016 WIT. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var stringsButton: UIButton!
    
    @IBOutlet weak var brassButton: UIButton!
    
    @IBOutlet weak var woodwindButton: UIButton!
    
    @IBOutlet weak var percussionButton: UIButton!
    
    @IBOutlet weak var miscButton: UIButton!
    
    @IBOutlet weak var irishButton: UIButton!
    
    
    
//Arrays of instruments
    var strings = ["Violin", "Viola", "Cello", "Double Bass"]
    var brass = [""]
    var woodwind = [""]
    var percussion = [""]
    var misc = [""]
    var irish = ["Fiddle", "Tin Whistle", "Uilleann Pipes", "Banjo"]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let guest = segue.destination as? tableViewController{
           
            if sender as! UIButton === stringsButton
            {
                guest.selectedFamily = strings
            }
            
            if sender as! UIButton === brassButton
            {
                guest.selectedFamily = brass
            }
            
            if sender as! UIButton === woodwindButton
            {
                guest.selectedFamily = woodwind
            }
            
            if sender as! UIButton === percussionButton
            {
                guest.selectedFamily = percussion
            }
            
            if sender as! UIButton === miscButton
            {
                guest.selectedFamily = misc
            }
            
            if sender as! UIButton === irishButton
            {
                guest.selectedFamily = irish
            }
        }
    }



}

