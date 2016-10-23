//
//  DayTableViewCell.swift
//  
//
//  Created by Edison Lo on 22/10/2016.
//
//

import UIKit

class DayTableViewCell: UITableViewCell {

    
    @IBOutlet weak var highlightView: UIView!
    @IBOutlet weak var upperLabel: UILabel!
    @IBOutlet weak var lowerLabel: UILabel!
 
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        /*
        let tap = UITapGestureRecognizer(target: self, action: Selector("tapped:"))
        tap.delegate = self
        tapView.addGestureRecognizer(tap)
        */
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
        // Configure the view for the selected state
        //self.contentView.backgroundColor = UIColor().cGreenColor()
        //self.upperLabel.textColor = UIColor().cGreenColor()
    }
    
    
}
