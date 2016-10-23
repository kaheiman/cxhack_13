//
//  ProfileViewController.swift
//  CXHack_13
//
//  Created by Edison Lo on 22/10/2016.
//  Copyright © 2016 Edison Lo. All rights reserved.
//

import Foundation
import UIKit
class ProfileViewController : UIViewController, UITableViewDelegate, UITableViewDataSource{
    @IBOutlet weak var lugTableView: UITableView!
    @IBOutlet weak var numLugLabel: UILabel!
    var lugChoosen = 0
    //@IBOutlet weak var lugTableViewHeight: NSLayoutConstraint!
    
    var numLug = 2
    var lugNo = ["#123321","#345432"]
    override func viewDidLoad() {
        super.viewDidLoad()
        print("in profile view controller")
        lugTableView.delegate = self
        lugTableView.dataSource = self
        lugTableView.tableFooterView = UIView()
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return numLug
    }
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        if(indexPath.row == 1){
            lugChoosen = 1
        }
        performSegueWithIdentifier("showLugDetails", sender: self)
    }
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = lugTableView.dequeueReusableCellWithIdentifier("lugCell", forIndexPath: indexPath)
        cell.textLabel!.text = "#123123 is at convery belt 123"
        return cell
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if(segue.identifier == "showLugDetails"){
            let destinationVC = segue.destinationViewController as! detailedLugInfoViewController
            destinationVC.lugChosen = self.lugChoosen
        }
    }
    @IBAction func addLugAction(sender: UIButton) {
        print("in add Lug Action")
        /*
        numLugLabel.text = "\(numLug)"
        
        if(numLug != 0){
            
            dispatch_async(dispatch_get_main_queue(),{
                /**
                 *  Update UI Thread about the progress
                 */
                self.numLug = 2
                self.lugTableView.reloadData()
                /*
                self.lugTableViewHeight = NSLayoutConstraint(item: self.lugTableView, attribute:
                    .Height, relatedBy: .Equal, toItem: nil,
                    attribute: NSLayoutAttribute.NotAnAttribute, multiplier: 1.0,
                    constant: 0)*/
            })
        }
        */
    }
}
