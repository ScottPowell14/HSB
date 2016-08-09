//
//  InfoViewController.swift
//  hsbtabbed
//
//  Created by Scott Powell on 10/23/15.
//  Copyright © 2015 Scott Powell. All rights reserved.
//

import UIKit

class InfoViewController: UIViewController {

    @IBOutlet weak var HSBIcon: UIImageView!
    
    @IBAction func openWebsite(sender: AnyObject) {
        if let url = NSURL(string: "http://www.holocaustspeakersbureau.org/") {
            UIApplication.sharedApplication().openURL(url)
        }
    }
    
    @IBAction func contact(sender: AnyObject) {
        let email = "sharonhalperin88@gmail.com"
        if let url = NSURL(string: "mailto:\(email)") {
            UIApplication.sharedApplication().openURL(url)
        }
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationItem.title = "Information"
        HSBIcon.image = UIImage(named: "HRE")
        
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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
