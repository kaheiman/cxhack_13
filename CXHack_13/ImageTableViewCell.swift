//
//  ImageTableViewCell.swift
//  CXHack_13
//
//  Created by Edison Lo on 22/10/2016.
//  Copyright © 2016 Edison Lo. All rights reserved.
//

import UIKit
protocol ImageTableViewDelegate{
    func mapBtnPressed(tag:Int)
}
class ImageTableViewCell: UITableViewCell {

    @IBOutlet weak var mapBtn: UIButton!
    @IBOutlet weak var locLabel: UILabel!
    @IBOutlet weak var loc_imageView: UIImageView!
    var delegate: ImageTableViewDelegate?
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    @IBAction func mapBtnPressed(sender: UIButton) {
        print("in map btn \(sender.tag)")
        self.delegate?.mapBtnPressed(mapBtn.tag)
    }

}
