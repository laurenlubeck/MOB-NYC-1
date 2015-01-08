//
//  FirstViewController.swift
//  Lesson02
//
//  Created by Rudd Taylor on 9/28/14.
//  Copyright (c) 2014 General Assembly. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {
/*
TODO one: hook up a button in interface builder to a new function (to be written) in this class. Also hook up the label to this class. When the button is clicked, the function to be written must make a label say ‘hello world!’ */
    
    @IBOutlet weak var MessageLabel: UILabel!
    @IBOutlet weak var NameTextField: UITextField!
    @IBOutlet weak var AgeTextField: UITextField!

    @IBAction func ButtonClicked(sender: AnyObject) {
         MessageLabel.text = "Hello World!"
   
    
    }

    /*
  TODO two: Connect the ‘name’ and ‘age’ text boxes to this class. Hook up the button to a NEW function (in addition to the function previously defined). That function must look at the string entered in the text box and print out “Hello {name}, you are {age} years old!”
    */
    @IBAction func EnterClicked(sender: AnyObject) {
    println("Hello \(NameTextField), you are \(AgeTextField) years old!")
    }
    
    
    
    
    /* TODO three: Hook up the button to a NEW function (in addition to the two above). Print “You can drink” below the above text if the user is above 21. If they are above 18, print “you can vote”. If they are above 16, print “You can drive”
  */
    @IBAction func NameAgeDescribedClicked(sender: AnyObject) {
    
    var hello = "Hello \(NameTextField)! You are \(AgeTextField) years old!"
        
        if AgeTextField.text.toInt()>=21 {
            println("You can drink")
        }
        if AgeTextField.text.toInt()>=18 {
            println("You can vote")
        }
        if AgeTextField.text.toInt()>=16 {
            println("You can Drive")
        }
    }
   
    
/*
    TODO four: Hook up the button to a NEW function (in additino to the three above). Print “you can drive” if the user is above 16 but below 18. It should print “You can drive and vote” if the user is above 18 but below 21. If the user is above 21, it should print “you can drive, vote and drink (but not at the same time!)”.
*/
  
    @IBAction func AgeNameFinalClick(sender: AnyObject) {
   

    if AgeTextField.text.toInt()>=16 && AgeTextField.text.toInt()<18 {
    println("You can drive")
    } else if
    AgeTextField.text.toInt()>=18 && AgeTextField.text.toInt()<21 {
    println("You can drive and vote")
    } else if
    AgeTextField.text.toInt()>=21 {
    println("You can drive, vote and drink (but not at the same time!)") }
    else {
    println ("No fun for you!")
    }
 }
}
