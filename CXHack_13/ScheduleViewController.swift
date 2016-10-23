//
//  ScheduleViewController.swift
//  CXHack_13
//
//  Created by Edison Lo on 22/10/2016.
//  Copyright © 2016 Edison Lo. All rights reserved.
//

import Foundation
import UIKit
extension UIColor{
    func cGreenColor() -> UIColor{
        return UIColor(red: 62, green: 185, blue: 178, alpha: 1)
    }
    func cDarkGreyColor() -> UIColor{
        return UIColor(red: 180, green: 181, blue: 181, alpha: 1)
    }
    func cLightGreyColor() -> UIColor{
        return UIColor(red: 247, green: 247, blue: 247, alpha: 1)
    }
}
class ScheduleViewController : UIViewController, UITableViewDataSource, UITableViewDelegate, ImageTableViewDelegate{
    
    @IBOutlet weak var dateTableView: UITableView!
    @IBOutlet weak var scheduleTableView: UITableView!
    var numSchedule = 3;
    var loc_list = [String]()
    var loc_text = [[""],["Central","Central","Sai Kung"],["Kowloon","Stanley"],["Aberdeen","The Peak"],["Aberdeen","The Peak"]]
    var day = 1
    
    override func viewDidLoad() {
        super.viewDidLoad()
        dateTableView.delegate = self
        dateTableView.dataSource = self
        scheduleTableView.dataSource = self
        scheduleTableView.delegate = self
        dateTableView.tableFooterView = UIView()
        scheduleTableView.tableFooterView = UIView()
        dateTableView.rowHeight = UITableViewAutomaticDimension
        dateTableView.estimatedRowHeight = 60
        scheduleTableView.rowHeight = UITableViewAutomaticDimension
        scheduleTableView.estimatedRowHeight = 150
        
        var index = NSIndexPath(forRow: 1, inSection: 0)
        dateTableView.selectRowAtIndexPath(index, animated: true, scrollPosition: UITableViewScrollPosition.Middle)
        
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if(tableView == dateTableView){
            return 5;
        }
        if(tableView == scheduleTableView){
            return loc_text[day].count
        }
        return 0
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = self.dateTableView.dequeueReusableCellWithIdentifier("dayCell")! as! DayTableViewCell
        let imageCell = self.scheduleTableView.dequeueReusableCellWithIdentifier("imageTableViewCell")! as! ImageTableViewCell
        if(tableView == dateTableView){
            cell.tag = indexPath.row
            switch(indexPath.row){
            case 0:
                cell.upperLabel.text = "OCT"
                cell.lowerLabel.text = "2016"
            case 1:
                cell.upperLabel.text = "23"
                cell.lowerLabel.text = "SUN"
            case 2:
                cell.upperLabel.text = "24"
                cell.lowerLabel.text = "MON"
            case 3:
                cell.upperLabel.text = "25"
                cell.lowerLabel.text = "TUE"
            case 4:
                cell.upperLabel.text = "26"
                cell.lowerLabel.text = "WED"
            default:
                print("in default")
                cell.upperLabel.text = ""
                cell.lowerLabel.text = ""
                
            }
            return cell
        }else{
            print("hk-\(indexPath.row)")
            imageCell.loc_imageView.contentMode = .ScaleToFill
            imageCell.loc_imageView.image = UIImage(named: "hk-\(indexPath.row)")
            imageCell.locLabel.text = loc_text[day][indexPath.row]
            imageCell.mapBtn.tag = indexPath.row
            imageCell.delegate = self
            let bgColorView = UIView()
            bgColorView.backgroundColor = UIColor.blackColor()
            imageCell.selectedBackgroundView = bgColorView
            /*
            switch(indexPath.row){
            case 0:
                imageCell.loc_imageView.contentMode = .ScaleAspectFill
                imageCell.loc_imageView.image = UIImage(named: "hk")
                imageCell.locLabel.text = ""
            case 1:
                cell.upperLabel.text = "23"
                cell.lowerLabel.text = "SUN"
            case 2:
                cell.upperLabel.text = "24"
                cell.lowerLabel.text = "MON"
            case 3:
                cell.upperLabel.text = "25"
                cell.lowerLabel.text = "TUE"
            case 4:
                cell.upperLabel.text = "26"
                cell.lowerLabel.text = "WED"
            default:
                print("in default")
                cell.upperLabel.text = ""
                cell.lowerLabel.text = ""
                
            }
            */
            return imageCell
        }
        

    }
    
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        if(tableView == dateTableView){
            day = indexPath.row
            //let cell = dateTableView.cellForRowAtIndexPath(indexPath) as! DayTableViewCell
            //print("\(cell.upperLabel.text)")
            //cell.upperLabel.text = "yolo"
            //cell.contentView.backgroundColor = UIColor.blackColor()
            //cell.upperLabel.textColor = UIColor(red: 62, green: 185, blue: 178, alpha: 1)
            //cell.lowerLabel.textColor = UIColor(red: 62, green: 185, blue: 178, alpha: 1)
            //cell.highlightView.backgroundColor = UIColor(red: 62, green: 185, blue: 178, alpha: 1)
            dispatch_async(dispatch_get_main_queue(),{
                /**
                 *  Update UI Thread about the progress
                 */
                //self.dateTableView.reloadData()
                self.scheduleTableView.reloadData()
            })
            print("in table view did select \(indexPath.row)")
        }
    }

    
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    func mapBtnPressed(tag: Int) {
        print("in map btn delegate \(tag)")
        switch(tag){
        case 0:
            print("in map btn pressed 0")
        case 1:
            print("in map btn pressed 1")
        case 2:
            print("in map btn pressed 2")
        default: break
        }
    }
    
}
