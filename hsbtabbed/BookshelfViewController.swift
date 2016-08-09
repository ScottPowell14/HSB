//
//  BookshelfViewController.swift
//  hsbtabbed
//
//  Created by Scott Powell on 6/15/15.
//  Copyright (c) 2015 Scott Powell. All rights reserved.
//

import UIKit

class BookshelfViewController: UIViewController, UIScrollViewDelegate {

    @IBOutlet var scrollView: UIScrollView!
    var imageView: UIImageView!
    var containerView: UIView!
    
    // transitionName corresponds to the button of the chosen survivor to segue to the Individual Survivor view controller
    var transitionName : String?
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        
        // background image details and formatting
        let image = UIImage(named: "bookshelf.png")!
        imageView = UIImageView(image: image)
        
        //print(image.size)
        
        var yCoord = 60
        var secondRowYCoord = 230
        var bookWidth = 100
        var bookHeight = 130
        
        
        if UIDevice.currentDevice().model == "iPad" {
            imageView.frame = CGRect(origin: CGPoint(x: 0, y: 0), size: CGSize(width: 907, height: 900))
            yCoord = 130
            secondRowYCoord = 408
            bookWidth = 110
            bookHeight = 180
        } else {
            imageView.frame = CGRect(origin: CGPoint(x: 0, y: 0), size: image.size)
        }
        
        // scroll view set up
        scrollView.addSubview(imageView)
        // scroll view is currently not able to scroll on smaller screen sizes -- find out how to fix: look into more examples of using scroll view to scroll large images
        scrollView.contentSize = CGSize(width: 905, height: image.size.height - 75)
        scrollView.directionalLockEnabled = true
        
        
        // view containg buttons set up
        containerView = UIView(frame: CGRect(origin: CGPoint(x: 0, y: 0), size: image.size))
        
        // button design and functionality set up
        
        // button 1 -- Renee Fink (image: ReneeCover.png)
        let bookButton1 = UIButton(frame: CGRect(x: 45, y: yCoord, width: bookWidth, height: bookHeight))
        let bookImage1 = UIImage(named: "Renee Fink Cover.png")
        bookButton1.setBackgroundImage(bookImage1, forState: .Normal)
        bookButton1.layer.shadowColor = UIColor.blackColor().CGColor
        bookButton1.layer.shadowOffset = CGSizeMake(12, 0)
        bookButton1.layer.shadowRadius = 12
        bookButton1.layer.shadowOpacity = 0.95
        bookButton1.addTarget(self, action: "buttonOnePressed", forControlEvents: UIControlEvents.TouchUpInside)
        
        
        // button 2 -- Frank Fischer (image: -)
        let bookButton2 = UIButton(frame: CGRect(x: 45 + 145, y: yCoord, width: bookWidth, height: bookHeight))
        let bookImage2 = UIImage(named: "Frank Fischer Cover.png")
        bookButton2.setBackgroundImage(bookImage2, forState: .Normal)
        bookButton2.layer.shadowColor = UIColor.blackColor().CGColor
        bookButton2.layer.shadowOffset = CGSizeMake(12, 0)
        bookButton2.layer.shadowRadius = 15
        bookButton2.layer.shadowOpacity = 0.95
        bookButton2.addTarget(self, action: "buttonTwoPressed", forControlEvents: UIControlEvents.TouchUpInside)

        // button 3 -- Esther Lederman (image: -)
        let bookButton3 = UIButton(frame: CGRect(x: 45 + 290, y: yCoord, width: bookWidth, height: bookHeight))
        let bookImage3 = UIImage(named: "EstherLedermanCover.png")
        bookButton3.setBackgroundImage(bookImage3, forState: .Normal)
        bookButton3.layer.shadowColor = UIColor.blackColor().CGColor
        bookButton3.layer.shadowOffset = CGSizeMake(12, 0)
        bookButton3.layer.shadowRadius = 15
        bookButton3.layer.shadowOpacity = 0.95
        bookButton3.addTarget(self, action: "buttonThreePressed", forControlEvents: UIControlEvents.TouchUpInside)

        // button 4-- Hal Myers (image: -)
        let bookButton4 = UIButton(frame: CGRect(x: 45 + 435, y: yCoord, width: bookWidth, height: bookHeight))
        let bookImage4 = UIImage(named: "Hal Myers Cover.png")
        bookButton4.setBackgroundImage(bookImage4, forState: .Normal)
        bookButton4.layer.shadowColor = UIColor.blackColor().CGColor
        bookButton4.layer.shadowOffset = CGSizeMake(12, 0)
        bookButton4.layer.shadowRadius = 15
        bookButton4.layer.shadowOpacity = 0.95
        bookButton4.addTarget(self, action: "buttonFourPressed", forControlEvents: UIControlEvents.TouchUpInside)

        // button 5 -- Henry Landsberger (image: -)
        let bookButton5 = UIButton(frame: CGRect(x: 45 + 580, y: yCoord, width: bookWidth, height: bookHeight))
        let bookImage5 = UIImage(named: "Henry Landsberger Cover.png")
        bookButton5.setBackgroundImage(bookImage5, forState: .Normal)
        bookButton5.layer.shadowColor = UIColor.blackColor().CGColor
        bookButton5.layer.shadowOffset = CGSizeMake(12, 0)
        bookButton5.layer.shadowRadius = 15
        bookButton5.layer.shadowOpacity = 0.95
        bookButton5.addTarget(self, action: "buttonFivePressed", forControlEvents: UIControlEvents.TouchUpInside)
        
        // button 6 -- Albrecht Strauss (image: -) last of first row
        let bookButton6 = UIButton(frame: CGRect(x: 45 + 725, y: yCoord, width: bookWidth, height: bookHeight))
        let bookImage6 = UIImage(named: "Albrecht Strauss Cover.png")
        bookButton6.setBackgroundImage(bookImage6, forState: .Normal)
        bookButton6.layer.shadowColor = UIColor.blackColor().CGColor
        bookButton6.layer.shadowOffset = CGSizeMake(12, 0)
        bookButton6.layer.shadowRadius = 15
        bookButton6.layer.shadowOpacity = 0.95
        bookButton6.addTarget(self, action: "buttonSixPressed", forControlEvents: UIControlEvents.TouchUpInside)
        

        // button 7 -- Jessie McIntyre (image: -) beginning of second row
        let bookButton7 = UIButton(frame: CGRect(x: 45, y: secondRowYCoord, width: bookWidth, height: bookHeight))
        let bookImage7 = UIImage(named: "Jessie Mcintyre Cover.png")
        bookButton7.setBackgroundImage(bookImage7, forState: .Normal)
        bookButton7.layer.shadowColor = UIColor.blackColor().CGColor
        bookButton7.layer.shadowOffset = CGSizeMake(12, 0)
        bookButton7.layer.shadowRadius = 15
        bookButton7.layer.shadowOpacity = 0.95
        bookButton7.addTarget(self, action: "buttonSevenPressed", forControlEvents: UIControlEvents.TouchUpInside)

        // button 8 -- Marianne Roberts (image: -)
        let bookButton8 = UIButton(frame: CGRect(x: 45 + 145, y: secondRowYCoord, width: bookWidth, height: bookHeight))
        let bookImage8 = UIImage(named: "Marianne Roberts Cover.png")
        bookButton8.setBackgroundImage(bookImage8, forState: .Normal)
        bookButton8.layer.shadowColor = UIColor.blackColor().CGColor
        bookButton8.layer.shadowOffset = CGSizeMake(12, 0)
        bookButton8.layer.shadowRadius = 15
        bookButton8.layer.shadowOpacity = 0.95
        bookButton8.addTarget(self, action: "buttonEightPressed", forControlEvents: UIControlEvents.TouchUpInside)

        // button 9 -- Marlene Appley (image: -)
        let bookButton9 = UIButton(frame: CGRect(x: 45 + 290, y: secondRowYCoord, width: bookWidth, height: bookHeight))
        let bookImage9 = UIImage(named: "Marlene Appley Cover.png")
        bookButton9.setBackgroundImage(bookImage9, forState: .Normal)
        bookButton9.layer.shadowColor = UIColor.blackColor().CGColor
        bookButton9.layer.shadowOffset = CGSizeMake(12, 0)
        bookButton9.layer.shadowRadius = 15
        bookButton9.layer.shadowOpacity = 0.95
        bookButton9.addTarget(self, action: "buttonNinePressed", forControlEvents: UIControlEvents.TouchUpInside)

        // button 10 -- Peter Stein (image: -)
        let bookButton10 = UIButton(frame: CGRect(x: 45 + 435, y: secondRowYCoord, width: bookWidth, height: bookHeight)) // resizing book button for testing from 87 to 100 and 120 to 130. y coord from + 170 to + 160
        let bookImage10 = UIImage(named: "Peter Stein Cover.png")
        bookButton10.setBackgroundImage(bookImage10, forState: .Normal)
        bookButton10.layer.shadowColor = UIColor.blackColor().CGColor
        bookButton10.layer.shadowOffset = CGSizeMake(12, 0)
        bookButton10.layer.shadowRadius = 15
        bookButton10.layer.shadowOpacity = 0.95
        bookButton10.addTarget(self, action: "buttonTenPressed", forControlEvents: UIControlEvents.TouchUpInside)

        // button 11 -- Rebecca Hauser (image: -)
        let bookButton11 = UIButton(frame: CGRect(x: 45 + 580, y: secondRowYCoord, width: bookWidth, height: bookHeight))
        let bookImage11 = UIImage(named: "Rebecca Hauser Cover.png")
        bookButton11.setBackgroundImage(bookImage11, forState: .Normal)
        bookButton11.layer.shadowColor = UIColor.blackColor().CGColor
        bookButton11.layer.shadowOffset = CGSizeMake(12, 0)
        bookButton11.layer.shadowRadius = 15
        bookButton11.layer.shadowOpacity = 0.95
        bookButton11.addTarget(self, action: "buttonElevenPressed", forControlEvents: UIControlEvents.TouchUpInside)
        
        // button 12 -- Robert Patton (image: -)
        let bookButton12 = UIButton(frame: CGRect(x: 45 + 725, y: secondRowYCoord, width: bookWidth, height: bookHeight))
        let bookImage12 = UIImage(named: "Robert Patton Cover.png")
        bookButton12.setBackgroundImage(bookImage12, forState: .Normal)
        bookButton12.layer.shadowColor = UIColor.blackColor().CGColor
        bookButton12.layer.shadowOffset = CGSizeMake(12, 0)
        bookButton12.layer.shadowRadius = 15
        bookButton12.layer.shadowOpacity = 0.95
        bookButton12.addTarget(self, action: "buttonTwelvePressed", forControlEvents: UIControlEvents.TouchUpInside)

        
        
        // Adding subviews to view hierarchy
        containerView.addSubview(bookButton1)
        containerView.addSubview(bookButton2)
        containerView.addSubview(bookButton3)
        containerView.addSubview(bookButton4)
        containerView.addSubview(bookButton5)
        containerView.addSubview(bookButton6)
        containerView.addSubview(bookButton7)
        containerView.addSubview(bookButton8)
        containerView.addSubview(bookButton9)
        containerView.addSubview(bookButton10)
        containerView.addSubview(bookButton11)
        containerView.addSubview(bookButton12)
        scrollView.addSubview(containerView)
        
        
        
        

        // Do any additional setup after loading the view.
    }
    
    // segue code
    func buttonOnePressed() {
        //print("Button One has been pressed")
        transitionName = "Renee"
        self.performSegueWithIdentifier("survivorSegue", sender: self)
    }
    
    func buttonTwoPressed() {
        //print("Button Two has been pressed")
        transitionName = "Frank"
        self.performSegueWithIdentifier("survivorSegue", sender: self)
    }
    
    func buttonThreePressed() {
        //print("Button Three has been pressed")
        transitionName = "Esther"
        self.performSegueWithIdentifier("survivorSegue", sender: self)
    }
    
    func buttonFourPressed() {
        //print("Button Four has been pressed")
        transitionName = "Hal"
        self.performSegueWithIdentifier("survivorSegue", sender: self)
    }
    
    func buttonFivePressed() {
        //print("Button Five has been pressed")
        transitionName = "Henry"
        self.performSegueWithIdentifier("survivorSegue", sender: self)
    }
    
    func buttonSixPressed() {
        //print("Button Six has been pressed")
        transitionName = "Albrecht"
        self.performSegueWithIdentifier("survivorSegue", sender: self)
    }
    
    func buttonSevenPressed() {
        //print("Button Seven has been pressed")
        transitionName = "Jessie"
        self.performSegueWithIdentifier("survivorSegue", sender: self)
    }
    
    func buttonEightPressed() {
        //print("Button Eight has been pressed")
        transitionName = "Marianne"
        self.performSegueWithIdentifier("survivorSegue", sender: self)
    }
    
    func buttonNinePressed() {
        //print("Button Nine has been pressed")
        transitionName = "Marlene"
        self.performSegueWithIdentifier("survivorSegue", sender: self)
    }
    
    func buttonTenPressed() {
        //print("Button Ten has been pressed")
        transitionName = "Peter"
        self.performSegueWithIdentifier("survivorSegue", sender: self)
    }
    
    func buttonElevenPressed() {
        //print("Button Eleven has been pressed")
        transitionName = "Rebecca"
        self.performSegueWithIdentifier("survivorSegue", sender: self)
    }
    
    func buttonTwelvePressed() {
        //print("Button Twelve has been pressed")
        transitionName = "Robert"
        self.performSegueWithIdentifier("survivorSegue", sender: self)
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        let segID = segue.identifier
        
        if segID == "survivorSegue" {
            // this has the next view controller set to PagesViewController and an instance variable of survivorName has been added to that class
            let nextViewController = segue.destinationViewController as! PagesViewController
            nextViewController.survivorName = transitionName!
        }
        
        if segID == "infoSegue" {
            // do that! -- Not much data being past thru
        }
        
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
