//
//  ViewController.swift
//  CXHack_13
//
//  Created by Edison Lo on 22/10/2016.
//  Copyright © 2016 Edison Lo. All rights reserved.
//

import UIKit
import Alamofire
class LoginViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        print("in viewDidLoad")
        let params: Dictionary<String,AnyObject> = [
            "username"               : "testing",
            "password"             : "123456"
        ]
        print(params)
        Alamofire.request(.POST, "http://128.199.183.12/trylogin.php", parameters: params)
            .authenticate(user: "fishermen", password: "fishermen")
            
            /*
             .responseString{
             response in
             print("success:\(response.result.isSuccess)")
             print("data:\(response.result.value)")
             
             }*/
            
            .responseJSON{
                response in
                print(response.data!)
                print(response.result)
                switch response.result{
                case .Success(let JSON):
                    print("Success with JSON: \(JSON)")
                    let response = JSON as! [[String:AnyObject]]
                    print("\(response)")
                    //print("user_dict: \(user_dict)")
                    //self.initUser(response[0])
                    //self.loadingNotification.hideAnimated(true)
                    //dispatch_async(dispatch_get_main_queue()){
                    //  self.performSegueWithIdentifier("showProfile", sender:self)
                    //}
                    //Global.login = true
                    let defaults = NSUserDefaults.standardUserDefaults()
                    //defaults.setValue("loggin", forKey: "\(Global.login)")
                    //defaults.synchronize()
                    
                    //self.performSegueWithIdentifier("goToMyProfile", sender: self)
                    
                case .Failure(let error):
                    //self.loadingNotification.hideAnimated(true)
                    //self.presentAlertView("OK", message: "請輸入正確的手機號碼和密碼")
                    print("request failed with error :\(error)")
                    //self.presentAlertView("OK", message: "Error: Invalid username or password")
                }
                
        }

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

