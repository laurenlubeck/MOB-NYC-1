//
//  FourthViewController.swift
//  ViewExercises
//
//  Created by Rudd Taylor on 9/9/14.
//  Copyright (c) 2014 Rudd Taylor. All rights reserved.
//

import UIKit

class FourthViewController: ExerciseViewController {

    var blueBox = UIView()
    var purpleLabel = UILabel()
    var redBox = UIView()
    var scrollView = UIScrollView()
    

    override func viewDidLoad() {
        super.viewDidLoad()
        self.exerciseDescription.text = "View 4"
        self.navigationItem.rightBarButtonItem = UIBarButtonItem(title: "Next", style: .Plain, target: self, action: "next")
        scrollView.showsVerticalScrollIndicator = true
        scrollView.scrollEnabled = true
        scrollView.userInteractionEnabled = true
        scrollView.contentSize = view.frame.size
        autolayout()
        
        
    }
        /* TODO:
        Build a scroll view that takes up the entire screen. 
        
        In the scroll view, place a blue box at the top (20px high, 10px horizontal margins with the screen, a very tall (1000+px, width the same as the screen) purple label containing white text in the middle, and a red box at the bottom (20px high, 10px horizontal margins with the screen). The scroll view should scroll the entire height of the content.
        
        Use Autolayout.

        
        Your view should be in self.exerciseView, not self.view.
        */
    
    func autolayout() {
     
        scrollView.setTranslatesAutoresizingMaskIntoConstraints(false)
        view.addSubview(scrollView)
        scrollView.contentSize = CGSize(width: self.view.frame.size.width, height: 1300)
        
        blueBox.setTranslatesAutoresizingMaskIntoConstraints(false)
        scrollView.addSubview(blueBox)
        blueBox.backgroundColor = UIColor.blueColor()
        
        
        
        purpleLabel.setTranslatesAutoresizingMaskIntoConstraints(false)
        scrollView.addSubview(purpleLabel)
        purpleLabel.backgroundColor = UIColor.purpleColor()
        purpleLabel.textColor = UIColor.whiteColor()
        purpleLabel.text = "Just for Practice"


        redBox.setTranslatesAutoresizingMaskIntoConstraints(false)
        scrollView.addSubview(redBox)
        redBox.backgroundColor = UIColor.redColor()
    
        
        // constraints for scroll at top
        view.addConstraint(NSLayoutConstraint(
            item: scrollView,
            attribute: .Top,
            relatedBy: .Equal,
            toItem: exerciseView,
            attribute: .Top,
            multiplier: 1.0,
            constant: 64))
        // constraints for scroll at center
        view.addConstraint(NSLayoutConstraint(
            item: scrollView,
            attribute: .CenterX,
            relatedBy: .Equal,
            toItem: exerciseView,
            attribute: .CenterX,
            multiplier: 1,
            constant: 0))
        // constraints for  scroll width
        view.addConstraint(NSLayoutConstraint(
            item: scrollView,
            attribute: .Width,
            relatedBy: .Equal,
            toItem: exerciseView,
            attribute: .Width,
            multiplier: 1.0,
            constant: 0))
        
        //constraints for scroll height
        view.addConstraint(NSLayoutConstraint(
            item: scrollView,
            attribute: .Height,
            relatedBy: .Equal,
            toItem: exerciseView,
            attribute: .Height,
            multiplier: 1.0,
            constant: 0))
        
        
        
        // constraints for blue box at top
        view.addConstraint(NSLayoutConstraint(
            item: blueBox,
            attribute: .Top,
            relatedBy: .Equal,
            toItem: scrollView,
            attribute: .Top,
            multiplier: 1.0,
            constant: 0))
        // constraints for blue box at center
        view.addConstraint(NSLayoutConstraint(
            item: blueBox,
            attribute: .CenterX,
            relatedBy: .Equal,
            toItem: scrollView,
            attribute: .CenterX,
            multiplier: 1,
            constant: 0))
        // constraints for  blue box width
        view.addConstraint(NSLayoutConstraint(
            item: blueBox,
            attribute: .Width,
            relatedBy: .Equal,
            toItem: nil,
            attribute: NSLayoutAttribute.NotAnAttribute,
            multiplier: 1.0,
            constant: 10))
        
        //constraints for blue box height
        view.addConstraint(NSLayoutConstraint(
            item: blueBox,
            attribute: .Height,
            relatedBy: .Equal,
            toItem: nil,
            attribute: NSLayoutAttribute.NotAnAttribute,
            multiplier: 1.0,
            constant: 20))
        
        
    
        // constraints for purple label below blue box
        view.addConstraint(NSLayoutConstraint(
            item: purpleLabel,
            attribute: .Top,
            relatedBy: .Equal,
            toItem: scrollView,
            attribute: .Top,
            multiplier: 1.0,
            constant: 84))
        // constraints for purple label at center x
        view.addConstraint(NSLayoutConstraint(
            item: purpleLabel,
            attribute: .CenterX,
            relatedBy: .Equal,
            toItem: scrollView,
            attribute: .CenterX,
            multiplier: 1,
            constant: 0))
        // constraints for purple label width
        view.addConstraint(NSLayoutConstraint(
            item: purpleLabel,
            attribute: .Width,
            relatedBy: .Equal,
            toItem: scrollView,
            attribute: .Width,
            multiplier: 1.0,
            constant: 10))
        //constraint for center text
        purpleLabel.textAlignment = NSTextAlignment.Center
        
        
        //constraints for purple label height
        view.addConstraint(NSLayoutConstraint(
            item: purpleLabel,
            attribute: .Height,
            relatedBy: .Equal,
            toItem: nil,
            attribute: NSLayoutAttribute.NotAnAttribute,
            multiplier: 1.0,
            constant: 1000))

        
        // constraints for red box at top
        view.addConstraint(NSLayoutConstraint(
            item: redBox,
            attribute: .Top,
            relatedBy: .Equal,
            toItem: purpleLabel,
            attribute: .Bottom,
            multiplier: 1.0,
            constant: 0))
        // constraints for red box at center
        view.addConstraint(NSLayoutConstraint(
            item: redBox,
            attribute: .CenterX,
            relatedBy: .Equal,
            toItem: scrollView,
            attribute: .CenterX,
            multiplier: 1,
            constant: 0))
        // constraints for  red box width
        view.addConstraint(NSLayoutConstraint(
            item: redBox,
            attribute: .Width,
            relatedBy: .Equal,
            toItem: nil,
            attribute: NSLayoutAttribute.NotAnAttribute,
            multiplier: 1.0,
            constant: 10))
        
        //constraints for red box height
        view.addConstraint(NSLayoutConstraint(
            item: redBox,
            attribute: .Height,
            relatedBy: .Equal,
            toItem: nil,
            attribute: NSLayoutAttribute.NotAnAttribute,
            multiplier: 1.0,
            constant: 20))
        
        
        
    }
    
    
    override func shouldAutorotate() -> Bool {
        return false
    }
    
    override func supportedInterfaceOrientations() -> Int {
        return UIInterfaceOrientation.Portrait.rawValue
    }
    
    func next() {
        self.performSegueWithIdentifier("five", sender: nil)
    }

}
