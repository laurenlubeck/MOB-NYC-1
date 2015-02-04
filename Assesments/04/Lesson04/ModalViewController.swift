//
//  ModalViewController.swift
//  Lesson04
//
//  Created by Lauren Lubeck  on 1/29/15.
//  Copyright (c) 2015 General Assembly. All rights reserved.
//

import UIKit

class ModalViewController: UIViewController {
    
    @IBOutlet weak var textField: UITextField!
    var todoViewController:ArrayViewController?
    

    @IBOutlet weak var button: UIButton!
    
    @IBAction func didTapButton(send: AnyObject) { todoViewController?.todos.append(textField.text)
        
        dismissViewControllerAnimated(true, completion: nil)
}
    override func viewDidLoad() {
        // Do any additional steup after loading the view, typical from a nib.
        
        super.viewDidLoad()
    }
    
    override func didReceiveMemoryWarning() {
        
        // Dispose of any resources that can be recreated.
        super.didReceiveMemoryWarning()
    }
}