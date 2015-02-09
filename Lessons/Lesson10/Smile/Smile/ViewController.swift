//
//  ViewController.swift
//  Smile
//
//  Created by Rudd Taylor on 2/4/15.
//  Copyright (c) 2015 GA. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var leftEye = UIView()
    var rightEye = UIView()
    var nose = UIView()
    var mouth = UIView()
    
    var constraint: NSLayoutConstraint?
    
    @IBOutlet weak var centerY: NSLayoutConstraint!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        autolayout()
        
    }
    
    func autolayout() {
        
        
        leftEye.setTranslatesAutoresizingMaskIntoConstraints(false)
        rightEye.setTranslatesAutoresizingMaskIntoConstraints(false)
        
        nose.setTranslatesAutoresizingMaskIntoConstraints(false)
        mouth.setTranslatesAutoresizingMaskIntoConstraints(false)
        
        
        view.addSubview(leftEye)
        view.addSubview(rightEye)
        
        view.addSubview(nose)
        view.addSubview(mouth)
        
        leftEye.backgroundColor = UIColor.redColor()
        
        rightEye.backgroundColor = UIColor.orangeColor()
        
        nose.backgroundColor = UIColor.purpleColor()
        
        mouth.backgroundColor = UIColor.yellowColor()
        
        
        view.addConstraint(NSLayoutConstraint(
            item: leftEye,
            attribute: .Top,
            relatedBy: .Equal,
            toItem: view,
            attribute: .Top,
            multiplier: 1.0,
            constant: 0))
        view.addConstraint(NSLayoutConstraint(
            item: leftEye,
            attribute: .CenterX,
            relatedBy: .Equal,
            toItem: view,
            attribute: .CenterX,
            multiplier: 0.5,
            constant: 0))
        view.addConstraint(NSLayoutConstraint(
            item: leftEye,
            attribute: .Width,
            relatedBy: .Equal,
            toItem: nil,
            attribute: NSLayoutAttribute.NotAnAttribute,
            multiplier: 1.0,
            constant: 50))
        view.addConstraint(NSLayoutConstraint(
            item: leftEye,
            attribute: .Height,
            relatedBy: .Equal,
            toItem: nil,
            attribute: NSLayoutAttribute.NotAnAttribute,
            multiplier: 1.0,
            constant: 50))
        
        view.addConstraint(NSLayoutConstraint(
            item: rightEye,
            attribute: .Top,
            relatedBy: .Equal,
            toItem: view,
            attribute: .Top,
            multiplier: 1.0,
            constant: 0))
        view.addConstraint(NSLayoutConstraint(
            item: rightEye,
            attribute: .CenterX,
            relatedBy: .Equal,
            toItem: view,
            attribute: .CenterX,
            multiplier: 0.5,
            constant: 85))
        view.addConstraint(NSLayoutConstraint(
            item: rightEye,
            attribute: .Width,
            relatedBy: .Equal,
            toItem: nil,
            attribute: NSLayoutAttribute.NotAnAttribute,
            multiplier: 1.0,
            constant: 50))
        view.addConstraint(NSLayoutConstraint(
            item: rightEye,
            attribute: .Height,
            relatedBy: .Equal,
            toItem: nil,
            attribute: NSLayoutAttribute.NotAnAttribute,
            multiplier: 1.0,
            constant: 50))
        
        view.addConstraint(NSLayoutConstraint(
            item: nose,
            attribute: .Top,
            relatedBy: .Equal,
            toItem: view,
            attribute: .Top,
            multiplier: 1.0,
            constant: 100))
        view.addConstraint(NSLayoutConstraint(
            item: nose,
            attribute: .CenterX,
            relatedBy: .Equal,
            toItem: view,
            attribute: .CenterX,
            multiplier: 0.5,
            constant: 85))
        view.addConstraint(NSLayoutConstraint(
            item: nose,
            attribute: .Width,
            relatedBy: .Equal,
            toItem: nil,
            attribute: NSLayoutAttribute.NotAnAttribute,
            multiplier: 1.0,
            constant: 50))
        view.addConstraint(NSLayoutConstraint(
            item: nose,
            attribute: .Height,
            relatedBy: .Equal,
            toItem: nil,
            attribute: NSLayoutAttribute.NotAnAttribute,
            multiplier: 1.0,
            constant: 50))
        
        view.addConstraint(NSLayoutConstraint(
            item: mouth,
            attribute: .Top,
            relatedBy: .Equal,
            toItem: view,
            attribute: .Top,
            multiplier: 1.0,
            constant: 200))
        view.addConstraint(NSLayoutConstraint(
            item: mouth,
            attribute: .CenterX,
            relatedBy: .Equal,
            toItem: view,
            attribute: .CenterX,
            multiplier: 0.5,
            constant: 85))
        view.addConstraint(NSLayoutConstraint(
            item: mouth,
            attribute: .Width,
            relatedBy: .Equal,
            toItem: nil,
            attribute: NSLayoutAttribute.NotAnAttribute,
            multiplier: 1.0,
            constant: 150))
        
        constraint = NSLayoutConstraint(
            item: mouth,
            attribute: .Height,
            relatedBy: .Equal,
            toItem: nil,
            attribute: NSLayoutAttribute.NotAnAttribute,
            multiplier: 1.0,
            constant: 50)
        
        view.addConstraint(constraint!)
        
        //leftEye.addGestureRecognizer(UITapGestureRecognizer(target: self, action: "didTap"))
        leftEye.addGestureRecognizer(UITapGestureRecognizer(target: self, action: "didChangeColor"))
        mouth.addGestureRecognizer(UITapGestureRecognizer(target: self, action: "didMoveMouth"))
    }
    
    //    func didTap() {
    //        centerY.constant = centerY.constant + 10
    //        UIView.animateWithDuration(1, animations: { () -> Void in
    //            self.view.layoutIfNeeded()
    //        })
    //    }
    
    func didChangeColor() {
        UIView.animateWithDuration(1, animations: { () -> Void in
            self.leftEye.backgroundColor = UIColor.greenColor()
        })
    }
    
    func didMoveMouth() {
        UIView.animateWithDuration(1, animations: { () -> Void in
            self.constraint!.constant = 200
            self.view.layoutIfNeeded()
            }) { (success) -> Void in
                UIView.animateWithDuration(1,
                    animations: { () -> Void in
                        self.constraint!.constant = 100
                        self.view.layoutIfNeeded()
                        
                    }, completion: {(success) in
                        self.didMoveMouth()
                })
        }
        
    }
    
    func springsAndStrutsLayout() {
        let topMargin: CGFloat = 50
        let size: CGFloat = 15
        var leftEye = UIView(frame: CGRect(x: self.view.frame.size.width/4, y: topMargin, width: size, height: size))
        var rightEye = UIView(frame: CGRect(x: self.view.frame.size.width * 0.75, y: topMargin, width: size, height: size))
        
        leftEye.backgroundColor = UIColor.purpleColor()
        rightEye.backgroundColor = UIColor.orangeColor()
        
        leftEye.autoresizingMask = UIViewAutoresizing.FlexibleRightMargin | UIViewAutoresizing.FlexibleLeftMargin
        rightEye.autoresizingMask = UIViewAutoresizing.FlexibleLeftMargin | UIViewAutoresizing.FlexibleRightMargin
        
        view.addSubview(leftEye)
        view.addSubview(rightEye)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}