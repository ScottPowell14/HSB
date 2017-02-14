//
//  FourthViewController.swift
//  HSBTabbed
//
//  Created by Scott Powell on 3/16/15.
//  Copyright (c) 2015 Scott Powell. All rights reserved.
//

import UIKit


class FourthViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    // this is the view controller for the discover tab table view controller
    
    let genocideNames = ["Bosnia", "Burma", "Cambodia", "Central African Republic", "Congo", "Rwanda", "South Sudan", "Syria"]
    
    var transitionGenoName : String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return genocideNames.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as UITableViewCell
        cell.textLabel?.text = genocideNames[indexPath.row]
        
        //let imageForCell = UIImage(named: "second")
        //cell.imageView?.image = imageForCell
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return "Locations of Genocides"
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        //
        //print("Selected \(indexPath.row)")
        transitionGenoName = genocideNames[indexPath.row]
        tableView.deselectRow(at: indexPath, animated: true)
        self.performSegue(withIdentifier: "genoSeg", sender: self)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let segID = segue.identifier
        
        if segID == "genoSeg" {
            let nextViewController = segue.destination as! FirstViewController
            nextViewController.currentGenoName = transitionGenoName!
        }
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
