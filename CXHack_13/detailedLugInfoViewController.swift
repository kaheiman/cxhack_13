//
//  detailedLugInfoViewController.swift
//  CXHack_13
//
//  Created by Edison Lo on 23/10/2016.
//  Copyright © 2016 Edison Lo. All rights reserved.
//

import Foundation
import UIKit
class detailedLugInfoViewController : UIViewController, UITableViewDataSource, UITableViewDelegate{
    @IBOutlet weak var detailedLugInoTableView: UITableView!
    var numLug = 1
    var lugChosen = 0
    var index = 0
    var lugStatus = [[["Started","luggage info received by Cathay Pacific at 07:00A.M. 18 Oct"],["In transit","accpeted by Cathay Pacific at 07:30A.M. 18 Oct"],["In transit","flying with CX333 at 08:00A.M. 18 Oct"],["Arrived","arrived ____ airport at 11:00A.M. 18 Oct"],["Arrived","arrived at convery belt 123 at 11:10A.M. 18 Oct"]], [["Started","luggage info received by Cathay Pacific at 07:00A.M. 18 Oct"],["In transit","accpeted by Cathay Pacific at 07:30A.M. 18 Oct"],["In transit","flying with CX333 at 08:00A.M. 18 Oct"],["Arrived","arrived ____ airport at 11:00A.M. 18 Oct"],["Arrived","arrived at convery belt 123 at 11:10A.M. 18 Oct"]]]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        detailedLugInoTableView.delegate = self
        detailedLugInoTableView.dataSource = self
        detailedLugInoTableView.tableFooterView = UIView()
        print("lugChosen:\(lugChosen)")
        detailedLugInoTableView.rowHeight = UITableViewAutomaticDimension
        detailedLugInoTableView.estimatedRowHeight = 150
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return lugStatus[0].count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = detailedLugInoTableView.dequeueReusableCellWithIdentifier("dLugCell") as! datailedLugInfoTableViewCell
        cell.statusLabel.text = lugStatus[lugChosen][indexPath.row][0]
        cell.detailLabel.text = lugStatus[lugChosen][indexPath.row][1]
       
        
        return cell
    }
    
    
}
