//
//  BackTableVC.swift
//  hsbtabbed
//
//  Created by Scott Powell on 8/13/15.
//  Copyright (c) 2015 Scott Powell. All rights reserved.
//

import Foundation

class BackTableVC: UITableViewController {
    
    var survivorArray = [String]()
    var locationArray = [String]()
    
    override func viewDidLoad() {
        survivorArray = ["Rebecca", "Hal", "Henry", "Robert", "Jessie"]
        locationArray = ["Birth Places", "Camps", "Influential Cities"]
        
    }
    
    //override func tableView(tableView: UITableView, numberOfRows
    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if section == 0 {
            return survivorArray.count
        } else {
            return locationArray.count
        }
    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        var cell = tableView.dequeueReusableCellWithIdentifier("cell", forIndexPath: indexPath) as! UITableViewCell
        
        if indexPath.section == 0 {
            cell.textLabel?.text = survivorArray[indexPath.row]
        } else {
            cell.textLabel?.text = locationArray[indexPath.row]
        }
        
        return cell
    }
    
    override func tableView(tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        if section == 0 {
            return "Survivor Locations"
        } else {
            return "Historical Locations"
        }
    }
    
    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 2
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        var destinationViewController = segue.destinationViewController as! MapViewController
        
        var indexPath : NSIndexPath = self.tableView.indexPathForSelectedRow!
        destinationViewController.viewNumber = indexPath.row
        destinationViewController.sectionNumber = indexPath.section
        //print(indexPath.section)
    }
    
}