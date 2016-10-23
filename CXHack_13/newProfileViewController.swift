//
//  newProfileViewController.swift
//  CXHack_13
//
//  Created by Edison Lo on 23/10/2016.
//  Copyright © 2016 Edison Lo. All rights reserved.
//

import Foundation
import UIKit
class newProfileViewController : UIViewController{
    //, UITableViewDataSource, UITableViewDelegate
    @IBOutlet weak var tableView: UITableView!
    var section_title = ["Flight info","Luggage","Weather","Currency"]
    override func viewDidLoad() {
        super.viewDidLoad()
        //tableView.delegate = self
        //tableView.dataSource = self
    }
    /*
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return section_title.count
    }
    func tableView(tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return section_title[section]
    }
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        switch(indexPath.section){
        case 0:
            //flight info
        case 1:
            //luggage
        case 2:
            //weather
        case 3:
            //currency
        default:
            //impossible
            
        }
    }
    */
}
