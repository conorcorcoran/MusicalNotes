//
//  tableViewController.swift
//  MusicalNotes
//
//  Created by 20067633 on 01/12/2016.
//  Copyright © 2016 WIT. All rights reserved.
//

import UIKit

class tableViewController: UIViewController, UITableViewDelegate, UITableViewDataSource{

    @IBOutlet var tableView: UITableView!
    
    //var Strings = ["Violin", "Viola", "Cello", "Double Bass"]
   // var Irish = ["Fiddle", "Tin Whiste", "Uilleann Pipes", "Banjo"]
    var selectedFamily = [String]()
    
    
    var instrumentFamily = [""]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        var family = selectedFamily{
            didSet
            {
              family = selectedFamily
            }
        }

        tableView.dataSource = self
        tableView.delegate = self
        
       }
    
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return selectedFamily.count
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell();
        
        cell.textLabel?.text = selectedFamily[indexPath.row]
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        performSegue(withIdentifier: "tableSegue", sender: selectedFamily[indexPath.row])
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let guest = segue.destination as! DescriptionViewController
        
        guest.instrumentSelected = sender as! String
    }

}
