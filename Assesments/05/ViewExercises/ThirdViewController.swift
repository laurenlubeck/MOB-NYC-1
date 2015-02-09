//
//  ThirdViewController.swift
//  ViewExercises
//
//  Created by Rudd Taylor on 9/9/14.
//  Copyright (c) 2014 Rudd Taylor. All rights reserved.
//

import UIKit

class ThirdViewController: ExerciseViewController {
    
    var box1 = UIView()
    var box2 = UIView()
    var box3 = UIView()
    var box4 = UIView()
    override func viewDidLoad() {
        super.viewDidLoad()
        self.exerciseDescription.text = "View 3"
        self.navigationItem.rightBarButtonItem = UIBarButtonItem(title: "Next", style: .Plain, target: self, action: "next")
        
        autolayout()
        /* TODO:
        Build four blue squares, 20 points wide, one in each corner of the screen.
        They must stay in their respective corners on device rotation. 
        
        Use Autolayout.
        
        Your view should be in self.exerciseView, not self.view
        */
    }
    
    
    
        func autolayout() {
            box1.setTranslatesAutoresizingMaskIntoConstraints(false)
            box2.setTranslatesAutoresizingMaskIntoConstraints(false)
            box3.setTranslatesAutoresizingMaskIntoConstraints(false)
            box4.setTranslatesAutoresizingMaskIntoConstraints(false)
    
            view.addSubview(box1)
            view.addSubview(box2)
            view.addSubview(box3)
            view.addSubview(box4)
    
            box1.backgroundColor = UIColor.blueColor()
            // redBox.layer.borderWidth = 0.2
            // redBoxBorder.borderColor = UIColor.blackColor().CGColor
    
    
            box2.backgroundColor = UIColor.blueColor()
            // blackBox.layer.borderWidth = 0.2
            // blackBoxBorder.borderColor = UIColor.redColor().CGColor
            
            box3.backgroundColor = UIColor.blueColor()
            box4.backgroundColor = UIColor.blueColor()
            
            
            
            // constraints for box 1 at top
            view.addConstraint(NSLayoutConstraint(
                item: box1,
                attribute: .Top,
                relatedBy: .Equal,
                toItem: exerciseView,
                attribute: .Top,
                multiplier: 1.0,
                constant: 64))
            // constraints for box 1 at left
            view.addConstraint(NSLayoutConstraint(
                item: box1,
                attribute: .Left,
                relatedBy: .Equal,
                toItem: exerciseView,
                attribute: .Left,
                multiplier: 1,
                constant: 0))
            // constraints for  box 1 width
            view.addConstraint(NSLayoutConstraint(
                item: box1,
                attribute: .Width,
                relatedBy: .Equal,
                toItem: nil,
                attribute: NSLayoutAttribute.NotAnAttribute,
                multiplier: 1.0,
                constant: 20.0))
            
            //constraints for box 1 height
            view.addConstraint(NSLayoutConstraint(
                item: box1,
                attribute: .Height,
                relatedBy: .Equal,
                toItem: nil,
                attribute: NSLayoutAttribute.NotAnAttribute,
                multiplier: 1.0,
                constant: 20))
    
            
            // constraints for box 2 at top
            view.addConstraint(NSLayoutConstraint(
                item: box2,
                attribute: .Top,
                relatedBy: .Equal,
                toItem: exerciseView,
                attribute: .Top,
                multiplier: 1.0,
                constant: 64))
            // constraints for box 2 at right
            view.addConstraint(NSLayoutConstraint(
                item: box2,
                attribute: .Right,
                relatedBy: .Equal,
                toItem: exerciseView,
                attribute: .Right,
                multiplier: 1,
                constant: 0))
            // constraints for box 2 width
            view.addConstraint(NSLayoutConstraint(
                item: box2,
                attribute: .Width,
                relatedBy: .Equal,
                toItem: nil,
                attribute: NSLayoutAttribute.NotAnAttribute,
                multiplier: 1.0,
                constant: 20))
            // constraints for box 2 height
            view.addConstraint(NSLayoutConstraint(
                item: box2,
                attribute: .Height,
                relatedBy: .Equal,
                toItem: nil,
                attribute: NSLayoutAttribute.NotAnAttribute,
                multiplier: 1.0,
                constant: 20))
            
            
            // constraints for box 3 at bottom
            view.addConstraint(NSLayoutConstraint(
                item: box3,
                attribute: .Bottom,
                relatedBy: .Equal,
                toItem: exerciseView,
                attribute: .Bottom,
                multiplier: 1.0,
                constant: -45))
            // constraints for box 3 at left
            view.addConstraint(NSLayoutConstraint(
                item: box3,
                attribute: .Left,
                relatedBy: .Equal,
                toItem: exerciseView,
                attribute: .Left,
                multiplier: 1,
                constant: 0))
            // constraints for  box 3 width
            view.addConstraint(NSLayoutConstraint(
                item: box3,
                attribute: .Width,
                relatedBy: .Equal,
                toItem: nil,
                attribute: NSLayoutAttribute.NotAnAttribute,
                multiplier: 1.0,
                constant: 20))
            
            //constraints for box 3 height
            view.addConstraint(NSLayoutConstraint(
                item: box3,
                attribute: .Height,
                relatedBy: .Equal,
                toItem: nil,
                attribute: NSLayoutAttribute.NotAnAttribute,
                multiplier: 1.0,
                constant: 20))
            
            
            // constraints for box 4 at bottom
            view.addConstraint(NSLayoutConstraint(
                item: box4,
                attribute: .Bottom,
                relatedBy: .Equal,
                toItem: exerciseView,
                attribute: .Bottom,
                multiplier: 1.0,
                constant: -45))
            // constraints for box 4 at right
            view.addConstraint(NSLayoutConstraint(
                item: box4,
                attribute: .Right,
                relatedBy: .Equal,
                toItem: exerciseView,
                attribute: .Right,
                multiplier: 1,
                constant: 0))
            // constraints for  box 4 width
            view.addConstraint(NSLayoutConstraint(
                item: box4,
                attribute: .Width,
                relatedBy: .Equal,
                toItem: nil,
                attribute: NSLayoutAttribute.NotAnAttribute,
                multiplier: 1.0,
                constant: 20))
            
            //constraints for box 4 height
            view.addConstraint(NSLayoutConstraint(
                item: box4,
                attribute: .Height,
                relatedBy: .Equal,
                toItem: nil,
                attribute: NSLayoutAttribute.NotAnAttribute,
                multiplier: 1.0,
                constant: 20))
            
    
            self.view.addSubview(box1)
            self.view.addSubview(box2)
            self.view.addSubview(box3)
            self.view.addSubview(box4)
            
       }
    
    
    
    
    
    override func shouldAutorotate() -> Bool {
        return true
    }
    
    func next() {
        self.performSegueWithIdentifier("four", sender: nil)
    }

}
