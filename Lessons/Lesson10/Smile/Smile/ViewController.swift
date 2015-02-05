//
//  ViewController.swift
//  Smile
//
//  Created by Lauren Lubeck  on 2/4/15.
//  Copyright (c) 2015 lauren Lubeck. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    // allows you to reference the constraints
    @IBOutlet weak var centerY: NSLayoutConstraint!
    @IBOutlet weak var centerX: NSLayoutConstraint!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        autolayout()
        springsAndStrutsLayout()
    }
    
    
    func autolayout () {
        var lefteye = UIView()
        var righteye = UIView()
        
        lefteye.setTranslatesAutoresizingMaskIntoConstraints(false)
        righteye.setTranslatesAutoresizingMaskIntoConstraints(false)
        
        view.addSubview(lefteye)
        view.addSubview(righteye)
        
        // align left to left of view
        view.addConstraint(NSLayoutConstraint(item: lefteye,
            attribute: NSLayoutAttribute.Left,
            relatedBy: NSLayoutRelation.Equal,
            toItem: view,
            attribute: NSLayoutAttribute.Left,
            multiplier: 1.0,
            constant: 0))
        
        //align left to left top
        view.addConstraint(NSLayoutConstraint(item: lefteye,
            attribute: NSLayoutAttribute.Top,
            relatedBy: NSLayoutRelation.Equal,
            toItem: view,
            attribute: NSLayoutAttribute.Top,
            multiplier: 1.0,
            constant: 0))
        
        //align right to right of view
        view.addConstraint(NSLayoutConstraint(item: righteye,
            attribute: NSLayoutAttribute.Right,
            relatedBy: NSLayoutRelation.Equal,
            toItem: view,
            attribute: NSLayoutAttribute.Right,
            multiplier: 1.0,
            constant: 0))
        
        //align right to right top
        view.addConstraint(NSLayoutConstraint(item: righteye,
            attribute: NSLayoutAttribute.Top,
            relatedBy: NSLayoutRelation.Equal,
            toItem: view,
            attribute: NSLayoutAttribute.Top,
            multiplier: 1.0,
            constant: 0))
        
        
        lefteye.addGestureRecognizer(UITapGestureRecognizer(target: self, action: "didTap"))
        
    }
    
    func didTap() {
        centerY.constant = centerY.constant + 10
        
        UIView.animateWithDuration(1, animations: { () -> Void in
            self.view.layoutIfNeeded()
        })
    }
    
    
    
    func springsAndStrutsLayout() {
        
        
        
        
        // Class Code along
        //
        //                let topMargin: CGFloat = 50
        //                let size: CGFloat = 15
        //
        //                var lefteye = UIView(frame:CGRect(x: self.view.frame.size.width/4, y: topMargin, width: size, height: size))
        //                lefteye.backgroundColor = UIColor.purpleColor()
        //                // this needs to use auto resizing!
        //                lefteye.autoresizingMask = UIViewAutoresizing.FlexibleRightMargin
        //
        //
        //
        //                var righteye = UIView(frame: CGRect(x: self.view.frame.size.width * 0.75, y: topMargin, width: size, height: size))
        //                righteye.backgroundColor = UIColor.orangeColor()
        //                // this needs to use auto resizing!
        //                righteye.autoresizingMask = UIViewAutoresizing.FlexibleLeftMargin
        //
        //
        //                // be sure to load into the screen
        //                view.addSubview(lefteye)
        //                view.addSubview(righteye)
        // }
        //
        //
        //        // to test rotation -> cmd + left or right
        //
        //
        ////Personal coding challenge
        let topMargin: CGFloat = 75
        let size: CGFloat = 25
        let nosesize: CGFloat = 45
        
        
        var lefteye = UIView(frame:CGRect(x: self.view.frame.size.width/4, y: topMargin, width: size, height: size))
        lefteye.backgroundColor = UIColor.redColor()
        lefteye.autoresizingMask = UIViewAutoresizing.FlexibleRightMargin
        
        
        view.addSubview(lefteye)
        
        var righteye = UIView(frame: CGRect(x: self.view.frame.size.width * 0.75, y: topMargin, width: size, height: size))
        righteye.backgroundColor = UIColor.blackColor()
        
        righteye.autoresizingMask = UIViewAutoresizing.FlexibleLeftMargin
        
        
        view.addSubview(righteye)
        
        var nose = UIView(frame:CGRect(x: self.view.frame.size.width/2, y: self.view.frame.size.width/2, width: nosesize, height: nosesize))
        nose.backgroundColor = UIColor.yellowColor()
        nose.autoresizingMask = UIViewAutoresizing.FlexibleWidth
        
        view.addSubview(nose)
        
        var mouth = UIView(frame: CGRect(x: self.view.frame.size.width * 0.75, y: self.view.frame.size.width * 0.75, width: self.view.frame.size.width/2, height: 50))
        mouth.backgroundColor = UIColor.orangeColor()
        view.addSubview(mouth)
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
}

