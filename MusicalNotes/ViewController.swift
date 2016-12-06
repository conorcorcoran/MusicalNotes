//
//  ViewController.swift
//  MusicalNotes
//
//  Created by 20067633 on 24/11/2016.
//  Copyright © 2016 WIT. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let guest = segue.destination as! tableViewController
        
        guest.instrumentSelected = sender as! String
    }



}

