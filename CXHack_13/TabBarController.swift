//
//  TabBarController.swift
//  CXHack_13
//
//  Created by Edison Lo on 22/10/2016.
//  Copyright © 2016 Edison Lo. All rights reserved.
//

import Foundation
import UIKit
class tabBarViewController : UITabBarController{
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("in tab bar")
        tabBarItem.imageInsets = UIEdgeInsetsMake(6,0,-6,0)
        self.tabBar.tintColor = UIColor.greenColor()
    }
    
    override func viewDidAppear(animated: Bool) {
        super.viewDidAppear(animated)
        
    }
}
