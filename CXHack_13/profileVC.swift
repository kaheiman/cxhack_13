
//
//  profileVC.swift
//  CXHack_13
//
//  Created by Edison Lo on 23/10/2016.
//  Copyright © 2016 Edison Lo. All rights reserved.
//

import Foundation
import UIKit
class profileVC : UIViewController, UITableViewDelegate, UITableViewDataSource{
    @IBOutlet weak var lubTableView: UITableView!
    @IBOutlet weak var helpTableView: UITableView!
    @IBOutlet weak var currencyLabel: UILabel!
    var questions = ["Lost Credit Card","Lost Luggage","Change flight"]
    var isToHKD = false
    var qSelected = 0
    var qBoolSelected = false
    override func viewDidLoad() {
        super.viewDidLoad()
        lubTableView.dataSource = self
        lubTableView.delegate = self
        helpTableView.dataSource = self
        helpTableView.delegate = self
    }
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        if(tableView == lubTableView){
            let cell = lubTableView.dequeueReusableCellWithIdentifier("lugTableViewCell", forIndexPath: indexPath)
            if(indexPath.row == 0){
                cell.textLabel!.text = "#123123 is at convery belt 123"
            }
            cell.textLabel!.text = "#123321 is at convery belt 121"
            return cell
        } else {
            let cell = helpTableView.dequeueReusableCellWithIdentifier("helpTableViewCell", forIndexPath: indexPath)
            cell.textLabel!.text = questions[indexPath.row]
            return cell
        }
    }
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if(tableView == lubTableView){
            return 2
        } else {
            return 3
        }
    }
    func tableView(tableView: UITableView, heightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat {
        if(tableView == helpTableView){
            if(qBoolSelected){
                return 80
            }else {
                return 35
            }
        }
        return 35
    }
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        if(tableView == lubTableView){
            performSegueWithIdentifier("showLugInfo", sender: self)
        } else {
            switch(indexPath.row){
            case 0:
                print("in dummy")
                //questions[0] =
            case 1:
                qSelected = 1
            case 2:
                qSelected = 2
            default:
                break
            }
            
        }
    }
    @IBAction func invertCurrencyAction(sender: UIButton) {
        if(!isToHKD){
            currencyLabel.text = "1 HKD to 0.172 CAD"
            isToHKD = true
        } else {
            currencyLabel.text = "1 CAD to 5.817 HKD"
            isToHKD = false
            
        }
    }
}
