//
//  FirstViewController.swift
//  ViewExercises
//
//  Created by Rudd Taylor on 9/9/14.
//  Copyright (c) 2014 Rudd Taylor. All rights reserved.
//

import UIKit

class FirstViewController: ExerciseViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.exerciseDescription.text = "View 1"
        self.navigationItem.rightBarButtonItem = UIBarButtonItem(title: "Next", style: .Plain, target: self, action: "next")
        springsandStrutsLayout()
    }
    
    /* TODO:
    Create a red box (10px tall, the width of the screen) with a black border on the very top of the screen below the nav bar,
    and a black box with a red border on the very bottom of the screen (same dimensions), above the toolbar.
    Use Springs & Struts.
    Your view should be in self.exerciseView, not self.view
    */
    
    
    func springsandStrutsLayout() {
        let topMargin: CGFloat = 64
        let bottomMargin: CGFloat = 513
        let size: CGFloat = 10
        
        
        
        
        // red box
        var redBox = UIView(frame: CGRect(x: 0, y: topMargin, width: self.exerciseView.frame.width, height: size))
        redBox.backgroundColor = UIColor.redColor()
        redBox.layer.borderColor = UIColor.blackColor().CGColor
        redBox.layer.borderWidth = 2
        redBox.setTranslatesAutoresizingMaskIntoConstraints(false)
        
        // blackbox
        var blackBox = UIView(frame: CGRect(x: 0, y: bottomMargin, width: self.exerciseView.frame.width, height: size))
        blackBox.backgroundColor = UIColor.blackColor()
        blackBox.layer.borderColor = UIColor.redColor().CGColor
        blackBox.layer.borderWidth = 2
        blackBox.setTranslatesAutoresizingMaskIntoConstraints(false)
        
        
        self.view.addSubview(redBox)
        self.view.addSubview(blackBox)
        
        
    }
    
    override func shouldAutorotate() -> Bool {
        return true
    }
    
    override func supportedInterfaceOrientations() -> Int {
        return Int(UIInterfaceOrientationMask.Portrait.rawValue)
    }
    
    func next() {
        self.performSegueWithIdentifier("two", sender: nil)
    }
}
