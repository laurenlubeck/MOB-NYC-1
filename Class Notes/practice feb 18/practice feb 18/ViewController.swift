//
//  ViewController.swift
//  practice feb 18
//
//  Created by Lauren Lubeck  on 2/18/15.
//  Copyright (c) 2015 lauren Lubeck. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var backgroundSwitch: UISwitch!
    
    @IBOutlet weak var label: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // set up for inital loading, link to function
        self.backgroundSwitch.addTarget(self, action: "didChangeSwitch", forControlEvents: UIControlEvents.ValueChanged)
        
        
        // set default for the switch 3
        self.backgroundSwitch.on = NSUserDefaults.standardUserDefaults().boolForKey("switchIsOn")

        
        // manually refresh label when view loads
        didChangeSwitch()

        
        // to persist an array of something and call it from a plist
        if let path = NSBundle.mainBundle().pathForResource("PropertyList", ofType: "plist") {
            var array = NSArray(contentsOfFile: path)
            println(array)
            array?.writeToFile(path, atomically: true)
        }
    }
    
    
    
    func didChangeSwitch() {
        // print line stating the background switch is on or off, will appear true for on and false for off
        // println(self.backgroundSwitch.on)
        
        
        if self.backgroundSwitch.on {
            // if on make label large font
            self.label.font = UIFont.systemFontOfSize(30)
            
        } else {
            // if off make label small font
            self.label.font = UIFont.systemFontOfSize(10)
            
        }
        
        // to store a boolean value of weather switch is on
        NSUserDefaults.standardUserDefaults().setBool(self.backgroundSwitch.on, forKey: "switchIsOn")
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}

