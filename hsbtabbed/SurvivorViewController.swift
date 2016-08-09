//
//  SurvivorViewController.swift
//  hsbtabbed
//
//  Created by Scott Powell on 6/22/15.
//  Copyright (c) 2015 Scott Powell. All rights reserved.
//

import UIKit

class SurvivorViewController: UIViewController {
// view controller for individual survivors
    
    var survivorName : String?
    var dataObject: AnyObject?
    var imageObject: AnyObject?
    var pageCounter: AnyObject?
    var captionObject: AnyObject?
    
    
    @IBOutlet weak var survivorImageView: UIImageView!
    @IBOutlet weak var survivorCaptionLabel: UILabel!
    @IBOutlet weak var survivorTextLabel: UILabel!
    
    
    // this method can be used to add and fill the layout and UI information that will be change from page to page for each survivor (such as the bio or pictures)
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
        
        if UIDevice.currentDevice().model == "iPad" {
            //print("Yup")
            survivorTextLabel.font = UIFont(name: "HelveticaNeue", size: 24)
            survivorCaptionLabel.font = UIFont(name: "HelveticaNeue", size: 24)
        }
        
        
        
        // Formatting for labels
        let pageNumberLabel = UILabel(frame: CGRect(x: 310, y: 575, width: 100, height: 50))
        let pageNumberText = pageCounter as! Int
        pageNumberLabel.text = "Page \(pageNumberText + 1)"
        
        
        // Bio label
        let bioLabel = UILabel(frame: CGRect(x: 25, y: 425, width: 325, height: 200))
        //bioLabel.backgroundColor = UIColor.yellowColor()
        bioLabel.numberOfLines = 10

        // assigning the dataObject that is passed in from the PagesViewController to the label
        let dataText = dataObject as! String
        bioLabel.text = dataText
        bioLabel.font = UIFont(name: "HelveticaNeueThin", size: 16)
        
        survivorTextLabel.text = dataText
        
        // Caption label
        let captionLabel = UILabel(frame: CGRect(x: 25, y: 375, width: 325, height: 50))
        //captionLabel.backgroundColor = UIColor.redColor()
        captionLabel.numberOfLines = 2
        
        let dataCaption = captionObject as! String
        captionLabel.text = dataCaption
        captionLabel.font = UIFont(name: "HelveticaNeueThin", size: 8)
        
        survivorCaptionLabel.text = dataCaption
        
        // Image View
        let imageString = imageObject as! String
        let image = UIImage(named: imageString)!
        let imageView = UIImageView(image: image)
        imageView.frame = CGRect(origin: CGPoint(x: 25, y: 75), size: CGSize(width: 325, height: 290))
        
        survivorImageView.image = image
        
        
        
        //self.view.addSubview(pageNumberLabel)
        //self.view.addSubview(imageView)
        //self.view.addSubview(bioLabel)
        //self.view.addSubview(captionLabel)
        
    }
    
    // this method can be used to add layout features that will be consistent for every survivor (except for survivorName) and across each page of the individual survivor's stories
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view
        
        // Want to figure out how to put Survivor name in the nav bar at the top of the view
        let nameLabel = UILabel(frame: CGRect(x: 10, y: 50, width: 300, height: 50))
        // The survivor names passes thru PagesViewController and is force unwrapped here
        nameLabel.text = "Survivor: \(survivorName!)"
        //self.view.addSubview(nameLabel)
        
        // page-like color as background
        self.view.backgroundColor = UIColor(red: 255/255, green: 250/255, blue: 240/255, alpha: 1.0)
        
        
        
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
