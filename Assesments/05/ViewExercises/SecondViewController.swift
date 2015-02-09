//
//  SecondViewController.swift
//  ViewExercises
//
//  Created by Rudd Taylor on 9/9/14.
//  Copyright (c) 2014 Rudd Taylor. All rights reserved.
//

import UIKit

class SecondViewController: ExerciseViewController {

    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.exerciseDescription.text = "View 2"
        self.navigationItem.rightBarButtonItem = UIBarButtonItem(title: "Next", style: .Plain, target: self, action: "next")
    springsandStrutsLayout()
        
        /* TODO:
        Build four blue squares, 20 points wide, one in each corner of the screen. 
        They must stay in their respective corners on device rotation. 
        
        Use Springs & Struts.
        
        Your view should be in self.exerciseView, not self.view
        */
    }
  
    func springsandStrutsLayout() {
        let topMargin: CGFloat = 65
        let bottomMargin: CGFloat = 503
        let size: CGFloat = 20
        let width: CGFloat = self.view.frame.size.width
        
        
        // top left box
        var box1 = UIView(frame: CGRect(x: 0, y: topMargin, width: size, height: size))
        box1.backgroundColor = UIColor.blueColor()
        box1.setTranslatesAutoresizingMaskIntoConstraints(false)
        

        
        // bottom left box
        var box2 = UIView(frame: CGRect(x: 0, y: bottomMargin, width: size, height: size))
        box2.backgroundColor = UIColor.blueColor()
        box2.setTranslatesAutoresizingMaskIntoConstraints(false)
        
        // top right box
        var box3 = UIView(frame: CGRect(x: width-size, y: topMargin, width: size, height: size))
        box3.backgroundColor = UIColor.blueColor()
        box3.setTranslatesAutoresizingMaskIntoConstraints(false)
        
        // bottom right box
        var box4 = UIView(frame: CGRect(x: width-size, y: bottomMargin, width: size, height: size))
        box4.backgroundColor = UIColor.blueColor()
        box4.setTranslatesAutoresizingMaskIntoConstraints(false)
        
        
        self.view.addSubview(box1)
        self.view.addSubview(box2)
        self.view.addSubview(box3)
        self.view.addSubview(box4)
        
        
    }
    
    
    
    
    
    override func shouldAutorotate() -> Bool {
        return true
    }
    
    func next() {
        self.performSegueWithIdentifier("three", sender: nil)
    }
}
