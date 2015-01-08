//
//  ThirdViewController.swift
//  Lesson02
//
//  Created by Rudd Taylor on 9/28/14.
//  Copyright (c) 2014 General Assembly. All rights reserved.
//

import UIKit

class ThirdViewController: UIViewController {
/*
    TODO six: Hook up the number input text field, button and text label to this class. When the button is pressed, a message should be printed to the label indicating whether the number is even.
*/

    @IBOutlet weak var NumberTextField: UITextField!
    @IBOutlet weak var MessageLabel: UILabel!
    @IBAction func CalculateButtonClicked(sender: AnyObject) {
        
var EvenOddTest = NumberTextField.text.toInt()
       if (EvenOddTest! % 2) == 0 {
                MessageLabel.text = "Number is even"
            } else {
        MessageLabel.text = "Number is odd"
        }
  }
    
}