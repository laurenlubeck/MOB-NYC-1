//
//  SecondViewController.swift
//  Lesson02
//
//  Created by Rudd Taylor on 9/28/14.
//  Copyright (c) 2014 General Assembly. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    //TODO five: Display the cumulative sum of all numbers added every time the ‘add’ button is pressed. Hook up the label, text box and button to make this work.
<<<<<<< HEAD


    @IBOutlet weak var NumberTextField: UITextField!
    @IBOutlet weak var TotalLabel: UILabel!

    @IBAction func AddButtonClicked(sender: AnyObject) {
 
        if NumberTextField.text.toInt() > 0 {
        let add = NumberTextField.text.toInt()!
        let number = TotalLabel.text?.toInt()
        let answer = number! + add
        return TotalLabel.text = "\(answer)"
} else {
            let answer = TotalLabel.text?.toInt()
return TotalLabel.text = "0"
}
}
}
=======
}
>>>>>>> d0aeb078850e4995d3740540ef89afd5fda678e8
