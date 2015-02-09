//
//  FifthViewController.swift
//  ViewExercises
//
//  Created by Rudd Taylor on 9/9/14.
//  Copyright (c) 2014 Rudd Taylor. All rights reserved.
//

import UIKit

/* TODO:
Create a green button with a red border that says ‘Tap me!’ (50px by 50px), center it in the middle of the screen.
Once tapped, the button should animate up 20 pixels and turn red, then immediately back down 20 pixels and turn back to green. It should not be clickable while animating.

Use Autolayout.

Your view should be in self.exerciseView, not self.view
*/


class FifthViewController: ExerciseViewController {
    var button = UIButton()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.exerciseDescription.text = "View 5"
        self.navigationItem.rightBarButtonItem = UIBarButtonItem(title: "Next", style: .Plain, target: self, action: "next")
  
        button.setTranslatesAutoresizingMaskIntoConstraints(false)
        button.backgroundColor = UIColor.greenColor()
        button.layer.borderColor = UIColor.redColor().CGColor
        button.layer.borderWidth = 2

        button.setTitle("Tap me!", forState: UIControlState.Normal)
        button.setTitleColor(UIColor.whiteColor(), forState: UIControlState.Normal)
        
        
        button.addTarget(self,action: "jumpingButton",forControlEvents: UIControlEvents.TouchUpInside)
        
        self.view.addSubview(button)
        autoLayout()

    }
   
    func autoLayout() {
        
        // constraints for button at center X
        view.addConstraint(NSLayoutConstraint(
            item: button,
            attribute: .CenterX,
            relatedBy: .Equal,
            toItem: exerciseView,
            attribute: .CenterX,
            multiplier: 1.0,
            constant: 0))
        // constraints for button at center Y
        view.addConstraint(NSLayoutConstraint(
            item: button,
            attribute: .CenterY,
            relatedBy: .Equal,
            toItem: exerciseView,
            attribute: .CenterY,
            multiplier: 1,
            constant: 0))
        // constraints for  button width
        view.addConstraint(NSLayoutConstraint(
            item: button,
            attribute: .Width,
            relatedBy: .Equal,
            toItem: nil,
            attribute: NSLayoutAttribute.NotAnAttribute,
            multiplier: 1.0,
            constant: 50))
        
        //constraints for button height
        view.addConstraint(NSLayoutConstraint(
            item: button,
            attribute: .Height,
            relatedBy: .Equal,
            toItem: nil,
            attribute: NSLayoutAttribute.NotAnAttribute,
            multiplier: 1.0,
            constant: 50))

    }
    
    
    func jumpingButton() {
        UIView.animateWithDuration(2, animations: { () -> Void in
            self.button.frame.origin.y = self.button.frame.origin.y + 20
            self.button.backgroundColor = UIColor.redColor()
            self.view.layoutIfNeeded()
            })
    jumpingButtonReturn()
    }
    func jumpingButtonReturn() {
        UIView.animateWithDuration(2, animations: { () -> Void in
            self.button.backgroundColor = UIColor.greenColor()
            self.view.layoutIfNeeded()
        })
returnhome()
    }
    
    func returnhome() {
        self.button.frame.origin.y = self.button.frame.origin.y - 20
    }
    
    override func shouldAutorotate() -> Bool {
        return false
    }
    
    override func supportedInterfaceOrientations() -> Int {
        return UIInterfaceOrientation.Portrait.rawValue
    }
    
    func next() {
        self.performSegueWithIdentifier("six", sender: nil)
    }

}
