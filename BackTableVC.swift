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
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if section == 0 {
            return survivorArray.count
        } else {
            return locationArray.count
        }
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) 
        
        if indexPath.section == 0 {
            cell.textLabel?.text = survivorArray[indexPath.row]
        } else {
            cell.textLabel?.text = locationArray[indexPath.row]
        }
        
        return cell
    }
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        if section == 0 {
            return "Survivor Locations"
        } else {
            return "Historical Locations"
        }
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 2
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let destinationViewController = segue.destination as! MapViewController
        
        var indexPath : IndexPath = self.tableView.indexPathForSelectedRow!
        destinationViewController.viewNumber = indexPath.row
        destinationViewController.sectionNumber = indexPath.section
        //print(indexPath.section)
    }
    
}
