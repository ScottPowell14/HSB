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
        
        
        if UIDevice.current.model == "iPad" {
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
        scrollView.isDirectionalLockEnabled = true
        
        
        // view containg buttons set up
        containerView = UIView(frame: CGRect(origin: CGPoint(x: 0, y: 0), size: image.size))
        
        // button design and functionality set up
        
        // button 1 -- Renee Fink (image: ReneeCover.png)
        let bookButton1 = UIButton(frame: CGRect(x: 45, y: yCoord, width: bookWidth, height: bookHeight))
        let bookImage1 = UIImage(named: "Renee Fink Cover.png")
        bookButton1.setBackgroundImage(bookImage1, for: UIControlState())
        bookButton1.layer.shadowColor = UIColor.black.cgColor
        bookButton1.layer.shadowOffset = CGSize(width: 12, height: 0)
        bookButton1.layer.shadowRadius = 12
        bookButton1.layer.shadowOpacity = 0.95
        bookButton1.addTarget(self, action: #selector(BookshelfViewController.buttonOnePressed), for: UIControlEvents.touchUpInside)
        
        
        // button 2 -- Frank Fischer (image: -)
        let bookButton2 = UIButton(frame: CGRect(x: 45 + 145, y: yCoord, width: bookWidth, height: bookHeight))
        let bookImage2 = UIImage(named: "Frank Fischer Cover.png")
        bookButton2.setBackgroundImage(bookImage2, for: UIControlState())
        bookButton2.layer.shadowColor = UIColor.black.cgColor
        bookButton2.layer.shadowOffset = CGSize(width: 12, height: 0)
        bookButton2.layer.shadowRadius = 15
        bookButton2.layer.shadowOpacity = 0.95
        bookButton2.addTarget(self, action: #selector(BookshelfViewController.buttonTwoPressed), for: UIControlEvents.touchUpInside)

        // button 3 -- Esther Lederman (image: -)
        let bookButton3 = UIButton(frame: CGRect(x: 45 + 290, y: yCoord, width: bookWidth, height: bookHeight))
        let bookImage3 = UIImage(named: "EstherLedermanCover.png")
        bookButton3.setBackgroundImage(bookImage3, for: UIControlState())
        bookButton3.layer.shadowColor = UIColor.black.cgColor
        bookButton3.layer.shadowOffset = CGSize(width: 12, height: 0)
        bookButton3.layer.shadowRadius = 15
        bookButton3.layer.shadowOpacity = 0.95
        bookButton3.addTarget(self, action: #selector(BookshelfViewController.buttonThreePressed), for: UIControlEvents.touchUpInside)

        // button 4-- Hal Myers (image: -)
        let bookButton4 = UIButton(frame: CGRect(x: 45 + 435, y: yCoord, width: bookWidth, height: bookHeight))
        let bookImage4 = UIImage(named: "Hal Myers Cover.png")
        bookButton4.setBackgroundImage(bookImage4, for: UIControlState())
        bookButton4.layer.shadowColor = UIColor.black.cgColor
        bookButton4.layer.shadowOffset = CGSize(width: 12, height: 0)
        bookButton4.layer.shadowRadius = 15
        bookButton4.layer.shadowOpacity = 0.95
        bookButton4.addTarget(self, action: #selector(BookshelfViewController.buttonFourPressed), for: UIControlEvents.touchUpInside)

        // button 5 -- Henry Landsberger (image: -)
        let bookButton5 = UIButton(frame: CGRect(x: 45 + 580, y: yCoord, width: bookWidth, height: bookHeight))
        let bookImage5 = UIImage(named: "Henry Landsberger Cover.png")
        bookButton5.setBackgroundImage(bookImage5, for: UIControlState())
        bookButton5.layer.shadowColor = UIColor.black.cgColor
        bookButton5.layer.shadowOffset = CGSize(width: 12, height: 0)
        bookButton5.layer.shadowRadius = 15
        bookButton5.layer.shadowOpacity = 0.95
        bookButton5.addTarget(self, action: #selector(BookshelfViewController.buttonFivePressed), for: UIControlEvents.touchUpInside)
        
        // button 6 -- Albrecht Strauss (image: -) last of first row
        let bookButton6 = UIButton(frame: CGRect(x: 45 + 725, y: yCoord, width: bookWidth, height: bookHeight))
        let bookImage6 = UIImage(named: "Albrecht Strauss Cover.png")
        bookButton6.setBackgroundImage(bookImage6, for: UIControlState())
        bookButton6.layer.shadowColor = UIColor.black.cgColor
        bookButton6.layer.shadowOffset = CGSize(width: 12, height: 0)
        bookButton6.layer.shadowRadius = 15
        bookButton6.layer.shadowOpacity = 0.95
        bookButton6.addTarget(self, action: #selector(BookshelfViewController.buttonSixPressed), for: UIControlEvents.touchUpInside)
        

        // button 7 -- Jessie McIntyre (image: -) beginning of second row
        let bookButton7 = UIButton(frame: CGRect(x: 45, y: secondRowYCoord, width: bookWidth, height: bookHeight))
        let bookImage7 = UIImage(named: "Jessie Mcintyre Cover.png")
        bookButton7.setBackgroundImage(bookImage7, for: UIControlState())
        bookButton7.layer.shadowColor = UIColor.black.cgColor
        bookButton7.layer.shadowOffset = CGSize(width: 12, height: 0)
        bookButton7.layer.shadowRadius = 15
        bookButton7.layer.shadowOpacity = 0.95
        bookButton7.addTarget(self, action: #selector(BookshelfViewController.buttonSevenPressed), for: UIControlEvents.touchUpInside)

        // button 8 -- Marianne Roberts (image: -)
        let bookButton8 = UIButton(frame: CGRect(x: 45 + 145, y: secondRowYCoord, width: bookWidth, height: bookHeight))
        let bookImage8 = UIImage(named: "Marianne Roberts Cover.png")
        bookButton8.setBackgroundImage(bookImage8, for: UIControlState())
        bookButton8.layer.shadowColor = UIColor.black.cgColor
        bookButton8.layer.shadowOffset = CGSize(width: 12, height: 0)
        bookButton8.layer.shadowRadius = 15
        bookButton8.layer.shadowOpacity = 0.95
        bookButton8.addTarget(self, action: #selector(BookshelfViewController.buttonEightPressed), for: UIControlEvents.touchUpInside)

        // button 9 -- Marlene Appley (image: -)
        let bookButton9 = UIButton(frame: CGRect(x: 45 + 290, y: secondRowYCoord, width: bookWidth, height: bookHeight))
        let bookImage9 = UIImage(named: "Marlene Appley Cover.png")
        bookButton9.setBackgroundImage(bookImage9, for: UIControlState())
        bookButton9.layer.shadowColor = UIColor.black.cgColor
        bookButton9.layer.shadowOffset = CGSize(width: 12, height: 0)
        bookButton9.layer.shadowRadius = 15
        bookButton9.layer.shadowOpacity = 0.95
        bookButton9.addTarget(self, action: #selector(BookshelfViewController.buttonNinePressed), for: UIControlEvents.touchUpInside)

        // button 10 -- Peter Stein (image: -)
        let bookButton10 = UIButton(frame: CGRect(x: 45 + 435, y: secondRowYCoord, width: bookWidth, height: bookHeight)) // resizing book button for testing from 87 to 100 and 120 to 130. y coord from + 170 to + 160
        let bookImage10 = UIImage(named: "Peter Stein Cover.png")
        bookButton10.setBackgroundImage(bookImage10, for: UIControlState())
        bookButton10.layer.shadowColor = UIColor.black.cgColor
        bookButton10.layer.shadowOffset = CGSize(width: 12, height: 0)
        bookButton10.layer.shadowRadius = 15
        bookButton10.layer.shadowOpacity = 0.95
        bookButton10.addTarget(self, action: #selector(BookshelfViewController.buttonTenPressed), for: UIControlEvents.touchUpInside)

        // button 11 -- Rebecca Hauser (image: -)
        let bookButton11 = UIButton(frame: CGRect(x: 45 + 580, y: secondRowYCoord, width: bookWidth, height: bookHeight))
        let bookImage11 = UIImage(named: "Rebecca Hauser Cover.png")
        bookButton11.setBackgroundImage(bookImage11, for: UIControlState())
        bookButton11.layer.shadowColor = UIColor.black.cgColor
        bookButton11.layer.shadowOffset = CGSize(width: 12, height: 0)
        bookButton11.layer.shadowRadius = 15
        bookButton11.layer.shadowOpacity = 0.95
        bookButton11.addTarget(self, action: #selector(BookshelfViewController.buttonElevenPressed), for: UIControlEvents.touchUpInside)
        
        // button 12 -- Robert Patton (image: -)
        let bookButton12 = UIButton(frame: CGRect(x: 45 + 725, y: secondRowYCoord, width: bookWidth, height: bookHeight))
        let bookImage12 = UIImage(named: "Robert Patton Cover.png")
        bookButton12.setBackgroundImage(bookImage12, for: UIControlState())
        bookButton12.layer.shadowColor = UIColor.black.cgColor
        bookButton12.layer.shadowOffset = CGSize(width: 12, height: 0)
        bookButton12.layer.shadowRadius = 15
        bookButton12.layer.shadowOpacity = 0.95
        bookButton12.addTarget(self, action: #selector(BookshelfViewController.buttonTwelvePressed), for: UIControlEvents.touchUpInside)

        
        
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
        self.performSegue(withIdentifier: "survivorSegue", sender: self)
    }
    
    func buttonTwoPressed() {
        //print("Button Two has been pressed")
        transitionName = "Frank"
        self.performSegue(withIdentifier: "survivorSegue", sender: self)
    }
    
    func buttonThreePressed() {
        //print("Button Three has been pressed")
        transitionName = "Esther"
        self.performSegue(withIdentifier: "survivorSegue", sender: self)
    }
    
    func buttonFourPressed() {
        //print("Button Four has been pressed")
        transitionName = "Hal"
        self.performSegue(withIdentifier: "survivorSegue", sender: self)
    }
    
    func buttonFivePressed() {
        //print("Button Five has been pressed")
        transitionName = "Henry"
        self.performSegue(withIdentifier: "survivorSegue", sender: self)
    }
    
    func buttonSixPressed() {
        //print("Button Six has been pressed")
        transitionName = "Albrecht"
        self.performSegue(withIdentifier: "survivorSegue", sender: self)
    }
    
    func buttonSevenPressed() {
        //print("Button Seven has been pressed")
        transitionName = "Jessie"
        self.performSegue(withIdentifier: "survivorSegue", sender: self)
    }
    
    func buttonEightPressed() {
        //print("Button Eight has been pressed")
        transitionName = "Marianne"
        self.performSegue(withIdentifier: "survivorSegue", sender: self)
    }
    
    func buttonNinePressed() {
        //print("Button Nine has been pressed")
        transitionName = "Marlene"
        self.performSegue(withIdentifier: "survivorSegue", sender: self)
    }
    
    func buttonTenPressed() {
        //print("Button Ten has been pressed")
        transitionName = "Peter"
        self.performSegue(withIdentifier: "survivorSegue", sender: self)
    }
    
    func buttonElevenPressed() {
        //print("Button Eleven has been pressed")
        transitionName = "Rebecca"
        self.performSegue(withIdentifier: "survivorSegue", sender: self)
    }
    
    func buttonTwelvePressed() {
        //print("Button Twelve has been pressed")
        transitionName = "Robert"
        self.performSegue(withIdentifier: "survivorSegue", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let segID = segue.identifier
        
        if segID == "survivorSegue" {
            // this has the next view controller set to PagesViewController and an instance variable of survivorName has been added to that class
            let nextViewController = segue.destination as! PagesViewController
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
