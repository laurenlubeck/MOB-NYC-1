// Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"


// springs and structs

// if you want to have one box on the top left corner

var view = UIView(frame: CGRect(x: 0, y: 0, width: 100, height: 100) )

// if you want to put another square below it on the left side
var view2 = UIView(frame: CGRect(x: 0, y: 100, width: 100, height: 100))

// springs are structs explicitly set the frame of the view.  In autolayout this is not autoset


// frame is your position for the view inside the super view  at somepoint the superview represts the entire screen

// AUTO RESIZING MASK: property of a view, represents how the view changes when the superview changes -> this is huge for device rotation <-
    // two applications;
    // these allow us to fix the dimension and say width and height change with supervivew
    // or we can fix a side of a view to the superview

// Auto Resize for the top right corner, when we set frames it is a one time action therefore we must set the frame once for the entire instance with the superview
    // this is called a flexible left

//flexible top meaning it will stay on the