//
//  FourthViewController.swift
//  Lesson02
//
//  Created by Rudd Taylor on 9/28/14.
//  Copyright (c) 2014 General Assembly. All rights reserved.
//

import UIKit

class FourthViewController: UIViewController {
/*
    TODO seven: Hook up the text input box, label and and a ‘calculate’ button. Create a ‘fibonacci adder’ class with a method ‘fibonacciNumberAtIndex' which takes indexOfFibonacciNumber (an integer).  When the button is pressed, create an instance of that class, call the method, and print out the appropriate fibonacci number of an inputted integer.
    The first fibonacci number is 0, the second is 1, the third is 1, the fourth is two, the fifth is 3, the sixth is 5, etc. The Xth fibonacci number is the sum of the X-1th fibonacci number and the X-2th fibonacci number.
<<<<<<< HEAD

*/
    @IBOutlet weak var EnteredNumber: UITextField!
    
    @IBOutlet weak var MessageLabel: UILabel!
    
    @IBAction func CalculateButton(sender: AnyObject) {
 
 var Number = EnteredNumber.text.toInt()
       if let n = EnteredNumber.text.toInt() {
            var answer = FibonacciAdder().fibNumber(n)
         MessageLabel.text = "\(answer)"
        }
    }
    
    class FibonacciAdder {

    func fibNumber(n: Int) -> Int {
    var n1 = 0
    var n2 = 1
    var n3 = 1
    if n <= 0 {
    return 0
    }
    if n == 1 {
    return n1
    } else if n == 2 {
    return n2
    } else if n == 3 {
    return n3
    } else {
    for counter in 4...n {
    n1 = n2
    n2 = n3
    n3 = n1 + n2
    }
    return n3
    }
    }
    }
}
=======
*/
}
>>>>>>> d0aeb078850e4995d3740540ef89afd5fda678e8
