//
//  ImageViewController.swift
//  Lesson03
//
//  Created by Lauren Lubeck  on 1/28/15.
//  Copyright (c) 2015 General Assembly. All rights reserved.
//
import UIKit

protocol InfoVCDelegate {
    func infoVCDismissed()
}

class ImageViewController: UIViewController {
    
    
    @IBOutlet weak var sukiPhoto: UIImageView!
    @IBOutlet weak var imageViewButton: UIButton!

    var delegate: InfoVCDelegate?
    
    @IBAction func dismissTapped(sender: AnyObject) {
        delegate?.infoVCDismissed()
        
        self.dismissViewControllerAnimated(true, completion: {print("done!") })
        
    }
    

}
