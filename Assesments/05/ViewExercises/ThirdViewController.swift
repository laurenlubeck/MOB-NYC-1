//
//  ThirdViewController.swift
//  ViewExercises
//
//  Created by Rudd Taylor on 9/9/14.
//  Copyright (c) 2014 Rudd Taylor. All rights reserved.
//

import UIKit
/* TODO:
Build four blue squares, 20 points wide, one in each corner of the screen.
They must stay in their respective corners on device rotation.

Use Autolayout.

Your view should be in self.exerciseView, not self.view
*/

class ThirdViewController: ExerciseViewController {
    
    var box1 = UIView()
    var box2 = UIView()
    var box3 = UIView()
    var box4 = UIView()
    override func viewDidLoad() {
        super.viewDidLoad()
        self.exerciseDescription.text = "View 3"
        self.navigationItem.rightBarButtonItem = UIBarButtonItem(title: "Next", style: .Plain, target: self, action: "next")
       // call autolayout 
        autolayout()
    }
    
    
    
        func autolayout() {
            // mask the autoresizing constraint
            box1.setTranslatesAutoresizingMaskIntoConstraints(false)
            box2.setTranslatesAutoresizingMaskIntoConstraints(false)
            box3.setTranslatesAutoresizingMaskIntoConstraints(false)
            box4.setTranslatesAutoresizingMaskIntoConstraints(false)
    
            // add subview to view
            view.addSubview(box1)
            view.addSubview(box2)
            view.addSubview(box3)
            view.addSubview(box4)
    
            // color the boxes blue
            box1.backgroundColor = UIColor.blueColor()
            box2.backgroundColor = UIColor.blueColor()
            box3.backgroundColor = UIColor.blueColor()
            box4.backgroundColor = UIColor.blueColor()
            
         
            
          //////////////////// CONSTRAINTS FOR BOXES ////////////////////
            
          //////////////////// CONSTRAINTS FOR BOX 1 ////////////////////
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
    
          //////////////////// CONSTRAINTS FOR BOX 2 ////////////////////
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
            
            //////////////////// CONSTRAINTS FOR BOX 3 ////////////////////
            // constraints for box 3 at bottom
            view.addConstraint(NSLayoutConstraint(
                item: box3,
                attribute: .Bottom,
                relatedBy: .Equal,
                toItem: exerciseView,
                attribute: .Bottom,
                multiplier: 1.0,
                constant: -44))
           
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
            
            //////////////////// CONSTRAINTS FOR BOX 4 ////////////////////
            // constraints for box 4 at bottom
            view.addConstraint(NSLayoutConstraint(
                item: box4,
                attribute: .Bottom,
                relatedBy: .Equal,
                toItem: exerciseView,
                attribute: .Bottom,
                multiplier: 1.0,
                constant: -44))
            
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

       }
    
    
    
    
    
    override func shouldAutorotate() -> Bool {
        return true
    }
    
    func next() {
        self.performSegueWithIdentifier("four", sender: nil)
    }

}
