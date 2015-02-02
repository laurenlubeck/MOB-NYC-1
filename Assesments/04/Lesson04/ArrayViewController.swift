//
//  ViewController.swift
//  Lesson04
//
//  Created by Rudd Taylor on 9/28/14.
//  Copyright (c) 2014 General Assembly. All rights reserved.
//

import UIKit

class ArrayViewController: UIViewController {

    var todos = ["laundry", "cook dinner", "walk dog"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
    // for line to preserve selection between presentations 
        //self.clearsSelectionOnViewWillAppear = false
        
        //  display an Edit button in the navigation bar for this view controller.
        self.navigationItem.rightBarButtonItem = self.editButtonItem()
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        var destination = segue.destinationViewController as MapViewController
    destination.ArrayViewController = self
    }
    
override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
   override func viewDidAppear(animated: Bool) {
      self.tableView.reloadData()
    }

    
        /*
        TODO one: Add a table view AND a text input box to this view controller, either in code or via the storyboard. Accept keyboard input from the text view when the return key is pressed. Add the string that was entered into the text view into an array of strings (stored in this class).
        */
        
        // MARK: - Table view data source
   
    
  override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
     }
        
        override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return todos.count
      }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("reuseIdentifier", forIndexPath: indexPath) as UITableViewCell
            
         cell.textLabel?.text = todos[indexPath.row]
          return cell
        }
        
        
        /*
        TODO two: Make this class a UITableViewDelegate and UITableViewDataSource that supply the above table view with cells. These cells should correspond to the text entered into the text box. E.g. If the text "one", then "two", then "three" was entered into the text box, there should be three cells in this table view that contain those strings in order.
        */
        
        
    }


