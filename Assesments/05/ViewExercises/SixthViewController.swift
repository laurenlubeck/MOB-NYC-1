//
//  SixthViewController.swift
//  ViewExercises
//
//  Created by Rudd Taylor on 9/9/14.
//  Copyright (c) 2014 Rudd Taylor. All rights reserved.
//

import UIKit

class SixthViewController: ExerciseViewController, UITableViewDelegate, UITableViewDataSource {
    let tableView = UITableView()

    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.exerciseDescription.text = "View 6"
        
        self.tableView.delegate = self
        self.tableView.dataSource = self
        self.exerciseView.addSubview(tableView)
        self.tableView.frame = self.exerciseView.frame
        self.tableView.contentInset = UIEdgeInsetsMake(CGRectGetMaxY(self.navigationController!.navigationBar.frame), 0, 0, 0)
        self.tableView.autoresizingMask = self.exerciseView.autoresizingMask
        
    }

    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 15
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        var cell = tableView.dequeueReusableCellWithIdentifier("Cell") as UITableViewCell?
        
        if (cell == nil) {
            cell = UITableViewCell(style: .Default, reuseIdentifier: "Cell")
        }
        
        var rowLabel = UILabel()
        cell?.addSubview(rowLabel)
        rowLabel.text = "Row: \(indexPath.row)"
        rowLabel.textColor = UIColor.greenColor()
        rowLabel.setTranslatesAutoresizingMaskIntoConstraints(false)
        rowLabel.textAlignment = NSTextAlignment.Center
        
        // constraints for center x
        cell?.addConstraint(NSLayoutConstraint(
            item: rowLabel,
            attribute: .CenterX,
            relatedBy: .Equal,
            toItem: cell?,
            attribute: .CenterX,
            multiplier: 1.0,
            constant: 0))
        // constraints for center y
        cell?.addConstraint(NSLayoutConstraint(
            item: rowLabel,
            attribute: .CenterY,
            relatedBy: .Equal,
            toItem: cell?,
            attribute: .CenterY,
            multiplier: 1.0,
            constant: 0))
        
        // constraints for height
        
        cell?.addConstraint(NSLayoutConstraint(
            item: rowLabel,
            attribute: .Height,
            relatedBy: .Equal,
            toItem: nil,
            attribute: NSLayoutAttribute.NotAnAttribute,
            multiplier: 1.0,
            constant: 20))
        
        // constraints for width
        cell?.addConstraint(NSLayoutConstraint(
            item: rowLabel,
            attribute: .Width,
            relatedBy: .Equal,
            toItem: nil,
            attribute: NSLayoutAttribute.NotAnAttribute,
            multiplier: 1.0,
            constant: 80))

        return cell!
        
    }
    

    
    override func shouldAutorotate() -> Bool {
        return true
    }
}
