//
//  ViewController.swift
//  todos02022015
//
//  Created by Lauren Lubeck  on 2/2/15.
//  Copyright (c) 2015 lauren Lubeck. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        // this is the traditional location for look and feel of an app
        
//        var container = UIView(Frame: CGRect(x: 0, y: 0, width: 500, height: 780)
//            container.backgroundColor =
        
        var mainView = UIView(frame: CGRect(x: 0, y: 0, width: 500, height: 780))
        mainView.backgroundColor = UIColor.grayColor()
        
        var userName = UITextField(frame: CGRect(x: 50, y: 100, width: 250, height: 30))
        userName.placeholder = "user name"
        
    
        var password = UITextField(frame: CGRect(x: 50, y: 175, width: 250, height: 30))
         password.placeholder = "password"
        
        var loginButton = UIButton(frame: CGRect(x: 50, y: 250, width: 250, height: 30))
        loginButton.setTitle("Log in", forState:.Normal)
     
        loginButton.addTarget(self,action: "tappedButton",forControlEvents: UIControlEvents.TouchUpInside)
        
        loginButton.addTarget(self,action: "jumpingButton",forControlEvents: UIControlEvents.TouchUpInside)
        
        var label = UILabel(frame: CGRect(x: 50, y: 65, width: 200, height: 60))
        label.text = "Todo Feb 2, 2015"
        label.textColor = UIColor.whiteColor()
        
            
    // add as a subclass of the main view
        self.view.addSubview(mainView)
        mainView.addSubview(userName)
        mainView.addSubview(loginButton)
        mainView.addSubview(password)
        mainView.addSubview(label)
        
    }
    
        func tappedButton() {
            println("it works!")
        }
    
 //   func jumpingButton(){
     //
   // }
    
    
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}

